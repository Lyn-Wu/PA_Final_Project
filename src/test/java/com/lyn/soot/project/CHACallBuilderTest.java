package com.lyn.soot.project;

import com.lyn.soot.InterBaseTest;
import soot.Transformer;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;


public class CHACallBuilderTest extends InterBaseTest {

    @Override
    public List<String> getProcessDirs() {
        return Arrays.asList("target/test-classes/");
    }

    @Override
    public List<String> getExcluded() {
        List<String> excluded = new LinkedList<>(super.getExcluded());
        return excluded;
    }

    @Override
    public String getPhaseNameOfPack() {
        return "wjtp";
    }

    @Override
    public String getPhaseNameOfTransformer() {
        return "wjtp.cg_cha";
    }

    @Override
    public Transformer getTransformer() {
        return new CHACallGraphTransformer("test0.txt");
    }
}
