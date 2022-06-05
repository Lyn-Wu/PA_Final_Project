package com.lyn.soot.project;

import soot.*;
import soot.tagkit.LineNumberTag;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;


public class CHACallGraphTransformer extends SceneTransformer {
    private String file;
    public CHACallGraphTransformer(String filename) {
        file = System.getProperty("user.dir") + File.separator + "output" + File.separator + filename;
    }

   // @Override
   // protected void internalTransform(Body b, String phaseName, Map<String, String> options) {

   // }

    @Override
    protected void internalTransform(String s, Map<String, String> map) {
        CHACallGraph cgBuilder = new CHACallGraph();
        CallGraph cg = new CallGraph();

        cgBuilder.doAnalysis(cg);
        Set<String> reachableMethods = new HashSet<>();
        Set<String> unreachableMethods = new HashSet<>();
        StringBuilder buff1 = new StringBuilder();
        int edges = 0;
        for (SootClass clazz : Scene.v().getApplicationClasses()) {
            for (SootMethod method : clazz.getMethods()) {
                if (cg.reachableContains(method)) {
                    reachableMethods.add(method.getSignature());
                } else  {
                    unreachableMethods.add(method.getSignature());
                }
                edges = edges + cg.getCallOutOf(method).size();
            }
        }

        buff1.append(String.format("#Reachable method: %s\n", reachableMethods.size()));
        for (SootClass clazz : Scene.v().getApplicationClasses()) {
            for (SootMethod method : clazz.getMethods()) {
                String m = method.getSignature().split(":")[1];
                int last = m.length() - 1;
                if (!method.getName().equals("<init>")) {
                    if (m.charAt(last) == '>') {
                        buff1.append(m.substring(0, last));
                    } else {
                        buff1.append(m);
                    }
                    buff1.append("\n");
                }
            }
        }

        buff1.append("\n");
        buff1.append("#Call graph edges: ").append(edges);
        buff1.append("\n");

        for (SootClass clazz : Scene.v().getApplicationClasses()) {
            for (SootMethod method : clazz.getMethods()) {
                Set<Edge> edgeSet = cg.getCallOutOf(method);
                for (Edge callEdge : edgeSet) {
                    buff1.append("Line: ").append(callEdge.getCallSite().getTag(LineNumberTag.IDENTIFIER));
                    String m = method.toString().split(":")[1];
                    int last = m.length() - 1;
                    if (m.charAt(last) == '>') {
                        buff1.append(m.substring(0, last));
                    } else {
                        buff1.append(m);
                    }
                    buff1.append(" -> ");
                    buff1.append(callEdge).append("\n");
                }
            }
        }

        try {
            String fdir = System.getProperty("user.dir") + File.separator + "output";
            File f = new File(fdir);
            if (!f.exists()) {
                f.mkdir();
            }
            BufferedWriter out = new BufferedWriter(new FileWriter(file, true));
            buff1.append("\n");
            out.write(buff1.toString());
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
