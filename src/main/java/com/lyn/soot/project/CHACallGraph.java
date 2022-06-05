package com.lyn.soot.project;

import soot.Hierarchy;
import soot.SootClass;
import soot.SootMethod;
import soot.Unit;
import soot.jimple.*;

import java.util.*;

public class CHACallGraph {
    //  Edge type
    public int INTERFACE = 1;
    public int VIRTUAL = 2;
    public int SPECIAL = 3;
    public int STATIC = 4;
    private Hierarchy cha;
    private CallGraph cg;
    public CHACallGraph() { cha = new Hierarchy(); }

    private int getEdgeType(Unit unit) {
        int edgeType = 0;
        InvokeExpr invokeExpr = ((Stmt) unit).getInvokeExpr();
        if (invokeExpr instanceof InterfaceInvokeExpr) {
            edgeType = INTERFACE;
        } else if (invokeExpr instanceof StaticInvokeExpr) {
            edgeType = STATIC;
        } else if (invokeExpr instanceof VirtualInvokeExpr) {
            edgeType = VIRTUAL;
        } else if (invokeExpr instanceof SpecialInvokeExpr) {
            edgeType = SPECIAL;
        }

        return edgeType;
    }

    public Map<SootMethod, Set<Edge>> getCallerToEnd() { return this.cg.getCallerToEnd(); }

    //  Dispatch function
    /*
     *   1. type of the receiver object (pointed by o): c
     *   2. method signature at the call site: m
     */
    private SootMethod dispatch(SootClass sootClass, SootMethod sootMethod) {
        for (SootMethod method : sootClass.getMethods()) {
            if (!method.isAbstract()) {
                if (method.getName().equals(sootMethod.getName())) {
                   if (method.getParameterCount() == sootMethod.getParameterCount()) {
                       if (method.getParameterCount() == 0) {
                           return method;
                       } else {
                           for (int i = 0; i < method.getParameterCount(); i++) {
                               if (method.getParameterType(i).toQuotedString().equals(sootMethod.getParameterType(i).toQuotedString())) {
                                   return method;
                               }
                           }
                       }
                   }
                }
            }
        }

        SootClass superClass = sootClass.getSuperclassUnsafe();
        return superClass != null ? dispatch(superClass, sootMethod) : null;
    }

    /*
     *  Resolve(cs)
     *  T = {}
     *  m = method signature at cs
     *  if cs is a static call then
     *      T = { m }
     *  if cs is special call then
     *      cm = class type of m
     *      T = { Dispatch(cm, m) }
     *  if cs is a virtual call then
     *      c = declared type of receiver variable at cs
     *      foreach c′ that is a subclass of c or c itself do
     *          add Dispatch(c′ , m) to T
     *  return T
     */
    private Set<SootMethod> resolveCallEndOf(Unit unit) {
        int edgeType = getEdgeType(unit);

        InvokeExpr invokeExpr = ((Stmt) unit).getInvokeExpr();
        SootMethod method = invokeExpr.getMethod();
        SootClass sootClass = method.getDeclaringClass();
        Set<SootMethod> res = new HashSet<>();

        if (edgeType == SPECIAL) {
            SootMethod sootMethod = dispatch(sootClass, method);
            return sootMethod == null ? Collections.emptySet() : Collections.singleton(sootMethod);
        } else if (edgeType == STATIC) {
            return Collections.singleton(method);
        } else {
            List<SootClass> sootClasses;
            if (sootClass.isInterface()) {
                sootClasses = cha.getSubinterfacesOfIncluding(sootClass);
            } else {
                sootClasses = cha.getSubclassesOfIncluding(sootClass);
            }

            for (SootClass c : sootClasses) {
                SootMethod sootMethod = dispatch(c, method);
                if (sootMethod != null) {
                    res.add(sootMethod);
                }
            }
        }

        return res;
    }

    /*
     *  BuildCallGraph(mentry)
     *   WL = [mentry], CG = {}, RM = {}
     *   while WL is not empty do
     *      remove m from WL
     *      if m ∉ RM then
     *          add m to RM
     *          foreach call site cs in m do
     *              T = Resolve (cs)
     *              foreach target method m’ in T do
     *                  add cs à m’ to CG
     *                  add m’ to WL
     *   return CG
     */
    public void doAnalysis(CallGraph cg) {
        this.cg = cg;
        Set<SootMethod> nodes = cg.getMethods();

        //  Use worklist algorithm
        Queue<SootMethod> work_list = new LinkedList<>(nodes);

        while (!work_list.isEmpty()) {
            SootMethod sootMethod = work_list.poll();

            if (sootMethod.hasActiveBody()) {
                Set<Unit> sites = cg.getCallSiteIn(sootMethod);

                for (Unit site: sites) {
                    Set<SootMethod> ends = resolveCallEndOf(site);
                    for (SootMethod end : ends) {
                        if (!cg.reachableContains(end)) {
                            work_list.add(end);
                        }
                        cg.addEdge(site, end, getEdgeType(site));
                    }
                }
            }
        }
    }
}
