package com.cs224.project;

import soot.SootMethod;
import soot.Unit;

import java.util.Objects;

public class Edge {

    private int edgeType;
    private Unit callSite;
    private SootMethod callEnd;

    public Edge(int callType, Unit callSite, SootMethod sootMethod) {
        this.edgeType = callType;
        this.callSite = callSite;
        this.callEnd = sootMethod;
    }

    public int getEdgeType() { return edgeType; }
    public Unit getCallSite() { return callSite; }
    public  SootMethod getCallEnd() { return callEnd; }


    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        String to = callEnd.getSignature();
        String format_to = to.split(":")[1];
        int format_to_last = format_to.length() - 1;
        if (format_to.charAt(format_to_last) == '>') {
            str.append(format_to.substring(0, format_to_last));
        } else {
            str.append(format_to);
        }

        return str.toString();
    }
}
