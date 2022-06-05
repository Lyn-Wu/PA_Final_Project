package com.lyn.soot.project;

import soot.*;
import soot.jimple.Stmt;

import java.util.*;

public class CallGraph {
    private Set<SootMethod> nodes;
    private Set<SootMethod> reachableMethods = new HashSet<>();
    private Map<SootMethod, Set<Edge>> endToCaller = new HashMap<>();
    private Map<SootMethod, Set<Edge>> callerToEnd = new HashMap<>();
    private Map<Unit, SootMethod> toOwner = new HashMap<>();

    public Map<SootMethod, Set<Edge>> getCallerToEnd() { return callerToEnd; }
    public Map<SootMethod, Set<Edge>> getEndToCaller() { return endToCaller; }

    public CallGraph() {
        //  Construct primary call graph
       for (SootClass sootClass : Scene.v().getApplicationClasses()) {
            for (SootMethod method : sootClass.getMethods()) {
                //   Traverse all methods
                if (method.isConcrete()) {
                    Body body = method.retrieveActiveBody();
                    if (body != null) {
                        for (Unit unit : body.getUnits()) {
                            // Add to Set
                            toOwner.put(unit, method);
                        }
                    }
                }
            }
        }
    }

    public Set<SootMethod> getMethods() {
        if (nodes != null) {
            return nodes;
        } else {
            nodes = new HashSet<>();
            for (SootClass sootClass : Scene.v().getApplicationClasses()) {
                for (SootMethod sootMethod : sootClass.getMethods()) {
                    if (sootMethod.getName().equals("main")) {
                        nodes.add(sootMethod);
                    }
                }
            }
        }

        reachableMethods.addAll(nodes);
        return nodes ;
    }

    public Set<Unit> getCallSiteIn(SootMethod sootMethod) {
        Set<Unit> sites = new HashSet<>();
        Body body = sootMethod.getActiveBody();
        if (body != null) {
            for (Unit unit : body.getUnits()) {
                Stmt stmt = (Stmt) unit;
                if (stmt.containsInvokeExpr()) {
                    sites.add(stmt);
                }
            }
        }
        return sites;
    }

    public Set<Edge> getCallInOf(SootMethod sootMethod) {
        Set<Edge> res = endToCaller.computeIfAbsent(sootMethod, m -> new HashSet<>());
        return Collections.unmodifiableSet(res);
    }

    public Set<Edge> getCallOutOf(SootMethod sootMethod) {
        Set<Edge> res = callerToEnd.computeIfAbsent(sootMethod, m -> new HashSet<>());
        return Collections.unmodifiableSet(res);
    }

    public boolean addEdge(Unit site, SootMethod end, int type) {
         reachableMethods.add(end);

         Edge edge = new Edge(type, site, end);

         Set<Edge> callers = endToCaller.computeIfAbsent(end, e -> new HashSet<>());
         Set<Edge> ends = callerToEnd.computeIfAbsent(toOwner.get(site), o -> new HashSet<>());
         ends.add(edge);

         return callers.add(edge);
    }

    public boolean reachableContains(SootMethod sootMethod) { return reachableMethods.contains(sootMethod); }
}
