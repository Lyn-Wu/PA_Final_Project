package com.lyn.soot.project;

import soot.*;
import soot.tagkit.LineNumberTag;

import java.util.*;

public class StackAnalyzer {
    int totalStackSize;
    int MAX_STACK_SIZE = 4 * 4096;
    HashMap<SootMethod, Boolean> visited;
    HashMap<SootMethod, Boolean> visiting;

    HashMap<SootMethod, SootMethod> processor;

    private int getStackSizeOf(SootMethod v) {
        return 0;
    }

    private int graphWalker(CallGraph cg, SootMethod v) {
        //  Return 0, may Safety, -1, Overflow
        visiting.replace(v, visited.get(v), true);
        totalStackSize += getStackSizeOf(v);

        if (totalStackSize >= MAX_STACK_SIZE) {
            System.out.println("[INFO] Detect stack overflow when check: " + v.getName()
                    + " at line " + v.getTag(LineNumberTag.IDENTIFIER));
        }

        SootMethod p;   // Parent
        //  for (SootMethod sootMethod : all neighbors of v) {
        //      if (v == sootMethod && pred(v) != sootMethod) {
        //          System.out.println("[INFO] Detect cycle found, form the calling stack when check: " + sootMethod.getName()
        //                          + " at line " + sootMethod.getTag(LineNumberTag.IDENTIFIER));
        //      }
        //      if (!visited.get(v)) {
        //          set sootMethod parent
        //          graphWalker(cg, sootMethod);
        //      }
        // }
        //
        visited.replace(v, visited.get(v), true);
        visiting.replace(v, visiting.get(v), false);
        return 0;
    }

    public void doStackCheck(CallGraph cg) throws InterruptedException {
        System.out.println("[INFO] Start analyzer.....");
        Thread.sleep(3000);
        System.out.print("[INFO] Initialization....");
        //  All vertices of call graph first marked unvisited.
        visited = new HashMap<>();
        visiting = new HashMap<>();

        SootMethod main = null;
        for (SootClass sootClass : Scene.v().getApplicationClasses()) {
            for (SootMethod sootMethod : sootClass.getMethods()) {
                visited.put(sootMethod, false);
                visited.put(sootMethod, false);
                processor.put(sootMethod, null);
                if (sootMethod.getName().equals("main")) {
                    main = sootMethod;
                }
            }
        }

        //  All processor of vertices are initialized to be null
        totalStackSize = 0;

        Thread.sleep(3000);
        System.out.println("Done");
        System.out.println("[INFO] Analyzing....");
        graphWalker(cg, main);
    }
}
