package com.lyn.soot;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import soot.*;
import soot.options.Options;

import java.util.Arrays;
import java.util.List;

/**
 * Created by liture on 2021/9/20 2:16 上午
 */
public abstract class IntraBaseTest {
    public abstract List<String> getProcessDirs();
    public abstract String getPhaseNameOfPack();
    public abstract String getPhaseNameOfTransformer();
    public abstract Transformer getTransformer();
    public List<String> getExcluded() {
        return Arrays.asList("com.lyn.*");
    }

    @Before
    public void initializeSoot() {
        Options.v().set_whole_program(true);
        Options.v().set_allow_phantom_refs(true);
        Options.v().set_exclude(getExcluded());
        Options.v().set_no_bodies_for_excluded(true);
        Options.v().set_prepend_classpath(true);
        Options.v().set_process_dir(getProcessDirs());
        Options.v().setPhaseOption("jb", "use-original-names:true");
        Options.v().set_keep_line_number(true);
        Options.v().set_output_format(Options.output_format_jimple);
        Scene.v().loadNecessaryClasses();
    }

    @Test
    public void test() {
        String packPhaseName = getPhaseNameOfPack();
        String transformerPhaseName = getPhaseNameOfTransformer();
        Transformer transformer = getTransformer();
        Transform transform = new Transform(transformerPhaseName, transformer);
        PackManager.v().getPack(packPhaseName).add(transform);
        for (SootClass appClazz : Scene.v().getApplicationClasses()) {
            for (SootMethod method : appClazz.getMethods()) {
                if (!method.getName().equals("<init>")) {
                    Body body = method.retrieveActiveBody();
                    PackManager.v().getPack(packPhaseName).apply(body);
                }
            }
        }
    }
}
