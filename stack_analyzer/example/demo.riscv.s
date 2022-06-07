
./demo:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	1141                	addi	sp,sp,-16
   100ea:	4581                	li	a1,0
   100ec:	e022                	sd	s0,0(sp)
   100ee:	e406                	sd	ra,8(sp)
   100f0:	842a                	mv	s0,a0
   100f2:	6af010ef          	jal	ra,11fa0 <__call_exitprocs>
   100f6:	7481b503          	ld	a0,1864(gp) # 1f318 <_global_impure_ptr>
   100fa:	6d3c                	ld	a5,88(a0)
   100fc:	c391                	beqz	a5,10100 <exit+0x18>
   100fe:	9782                	jalr	a5
   10100:	8522                	mv	a0,s0
   10102:	3930a0ef          	jal	ra,1ac94 <_exit>

0000000000010106 <register_fini>:
   10106:	00000793          	li	a5,0
   1010a:	c791                	beqz	a5,10116 <register_fini+0x10>
   1010c:	6549                	lui	a0,0x12
   1010e:	4f850513          	addi	a0,a0,1272 # 124f8 <__libc_fini_array>
   10112:	3ad0806f          	j	18cbe <atexit>
   10116:	8082                	ret

0000000000010118 <_start>:
   10118:	0000f197          	auipc	gp,0xf
   1011c:	ab818193          	addi	gp,gp,-1352 # 1ebd0 <__global_pointer$>
   10120:	77018513          	addi	a0,gp,1904 # 1f340 <_PathLocale>
   10124:	0000f617          	auipc	a2,0xf
   10128:	2ac60613          	addi	a2,a2,684 # 1f3d0 <__BSS_END__>
   1012c:	8e09                	sub	a2,a2,a0
   1012e:	4581                	li	a1,0
   10130:	144000ef          	jal	ra,10274 <memset>
   10134:	00009517          	auipc	a0,0x9
   10138:	b8a50513          	addi	a0,a0,-1142 # 18cbe <atexit>
   1013c:	c519                	beqz	a0,1014a <_start+0x32>
   1013e:	00002517          	auipc	a0,0x2
   10142:	3ba50513          	addi	a0,a0,954 # 124f8 <__libc_fini_array>
   10146:	379080ef          	jal	ra,18cbe <atexit>
   1014a:	0c0000ef          	jal	ra,1020a <__libc_init_array>
   1014e:	4502                	lw	a0,0(sp)
   10150:	002c                	addi	a1,sp,8
   10152:	4601                	li	a2,0
   10154:	08c000ef          	jal	ra,101e0 <main>
   10158:	bf41                	j	100e8 <exit>

000000000001015a <__do_global_dtors_aux>:
   1015a:	1141                	addi	sp,sp,-16
   1015c:	e022                	sd	s0,0(sp)
   1015e:	7a01c783          	lbu	a5,1952(gp) # 1f370 <completed.1>
   10162:	e406                	sd	ra,8(sp)
   10164:	ef91                	bnez	a5,10180 <__do_global_dtors_aux+0x26>
   10166:	00000793          	li	a5,0
   1016a:	cb81                	beqz	a5,1017a <__do_global_dtors_aux+0x20>
   1016c:	6579                	lui	a0,0x1e
   1016e:	1c850513          	addi	a0,a0,456 # 1e1c8 <__FRAME_END__>
   10172:	00000097          	auipc	ra,0x0
   10176:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   1017a:	4785                	li	a5,1
   1017c:	7af18023          	sb	a5,1952(gp) # 1f370 <completed.1>
   10180:	60a2                	ld	ra,8(sp)
   10182:	6402                	ld	s0,0(sp)
   10184:	0141                	addi	sp,sp,16
   10186:	8082                	ret

0000000000010188 <frame_dummy>:
   10188:	00000793          	li	a5,0
   1018c:	cb91                	beqz	a5,101a0 <frame_dummy+0x18>
   1018e:	6579                	lui	a0,0x1e
   10190:	7a818593          	addi	a1,gp,1960 # 1f378 <object.0>
   10194:	1c850513          	addi	a0,a0,456 # 1e1c8 <__FRAME_END__>
   10198:	00000317          	auipc	t1,0x0
   1019c:	00000067          	jr	zero # 0 <exit-0x100e8>
   101a0:	8082                	ret

00000000000101a2 <foo>:
   101a2:	1101                	addi	sp,sp,-32
   101a4:	ec06                	sd	ra,24(sp)
   101a6:	e822                	sd	s0,16(sp)
   101a8:	1000                	addi	s0,sp,32
   101aa:	87aa                	mv	a5,a0
   101ac:	fef42623          	sw	a5,-20(s0)
   101b0:	fec42783          	lw	a5,-20(s0)
   101b4:	2781                	sext.w	a5,a5
   101b6:	cf91                	beqz	a5,101d2 <foo+0x30>
   101b8:	fec42783          	lw	a5,-20(s0)
   101bc:	37fd                	addiw	a5,a5,-1
   101be:	2781                	sext.w	a5,a5
   101c0:	853e                	mv	a0,a5
   101c2:	fe1ff0ef          	jal	ra,101a2 <foo>
   101c6:	87aa                	mv	a5,a0
   101c8:	fec42703          	lw	a4,-20(s0)
   101cc:	9fb9                	addw	a5,a5,a4
   101ce:	2781                	sext.w	a5,a5
   101d0:	a019                	j	101d6 <foo+0x34>
   101d2:	fec42783          	lw	a5,-20(s0)
   101d6:	853e                	mv	a0,a5
   101d8:	60e2                	ld	ra,24(sp)
   101da:	6442                	ld	s0,16(sp)
   101dc:	6105                	addi	sp,sp,32
   101de:	8082                	ret

00000000000101e0 <main>:
   101e0:	1141                	addi	sp,sp,-16
   101e2:	e406                	sd	ra,8(sp)
   101e4:	e022                	sd	s0,0(sp)
   101e6:	0800                	addi	s0,sp,16
   101e8:	06400513          	li	a0,100
   101ec:	fb7ff0ef          	jal	ra,101a2 <foo>
   101f0:	87aa                	mv	a5,a0
   101f2:	85be                	mv	a1,a5
   101f4:	67f1                	lui	a5,0x1c
   101f6:	30078513          	addi	a0,a5,768 # 1c300 <__clzdi2+0x34>
   101fa:	146000ef          	jal	ra,10340 <printf>
   101fe:	4781                	li	a5,0
   10200:	853e                	mv	a0,a5
   10202:	60a2                	ld	ra,8(sp)
   10204:	6402                	ld	s0,0(sp)
   10206:	0141                	addi	sp,sp,16
   10208:	8082                	ret

000000000001020a <__libc_init_array>:
   1020a:	1101                	addi	sp,sp,-32
   1020c:	e822                	sd	s0,16(sp)
   1020e:	e04a                	sd	s2,0(sp)
   10210:	6479                	lui	s0,0x1e
   10212:	6979                	lui	s2,0x1e
   10214:	1cc40793          	addi	a5,s0,460 # 1e1cc <__preinit_array_end>
   10218:	1cc90913          	addi	s2,s2,460 # 1e1cc <__preinit_array_end>
   1021c:	40f90933          	sub	s2,s2,a5
   10220:	ec06                	sd	ra,24(sp)
   10222:	e426                	sd	s1,8(sp)
   10224:	40395913          	srai	s2,s2,0x3
   10228:	00090b63          	beqz	s2,1023e <__libc_init_array+0x34>
   1022c:	1cc40413          	addi	s0,s0,460
   10230:	4481                	li	s1,0
   10232:	601c                	ld	a5,0(s0)
   10234:	0485                	addi	s1,s1,1
   10236:	0421                	addi	s0,s0,8
   10238:	9782                	jalr	a5
   1023a:	fe991ce3          	bne	s2,s1,10232 <__libc_init_array+0x28>
   1023e:	6479                	lui	s0,0x1e
   10240:	6979                	lui	s2,0x1e
   10242:	1d040793          	addi	a5,s0,464 # 1e1d0 <__init_array_start>
   10246:	1e090913          	addi	s2,s2,480 # 1e1e0 <__do_global_dtors_aux_fini_array_entry>
   1024a:	40f90933          	sub	s2,s2,a5
   1024e:	40395913          	srai	s2,s2,0x3
   10252:	00090b63          	beqz	s2,10268 <__libc_init_array+0x5e>
   10256:	1d040413          	addi	s0,s0,464
   1025a:	4481                	li	s1,0
   1025c:	601c                	ld	a5,0(s0)
   1025e:	0485                	addi	s1,s1,1
   10260:	0421                	addi	s0,s0,8
   10262:	9782                	jalr	a5
   10264:	fe991ce3          	bne	s2,s1,1025c <__libc_init_array+0x52>
   10268:	60e2                	ld	ra,24(sp)
   1026a:	6442                	ld	s0,16(sp)
   1026c:	64a2                	ld	s1,8(sp)
   1026e:	6902                	ld	s2,0(sp)
   10270:	6105                	addi	sp,sp,32
   10272:	8082                	ret

0000000000010274 <memset>:
   10274:	433d                	li	t1,15
   10276:	872a                	mv	a4,a0
   10278:	02c37163          	bgeu	t1,a2,1029a <memset+0x26>
   1027c:	00f77793          	andi	a5,a4,15
   10280:	e3c1                	bnez	a5,10300 <memset+0x8c>
   10282:	e1bd                	bnez	a1,102e8 <memset+0x74>
   10284:	ff067693          	andi	a3,a2,-16
   10288:	8a3d                	andi	a2,a2,15
   1028a:	96ba                	add	a3,a3,a4
   1028c:	e30c                	sd	a1,0(a4)
   1028e:	e70c                	sd	a1,8(a4)
   10290:	0741                	addi	a4,a4,16
   10292:	fed76de3          	bltu	a4,a3,1028c <memset+0x18>
   10296:	e211                	bnez	a2,1029a <memset+0x26>
   10298:	8082                	ret
   1029a:	40c306b3          	sub	a3,t1,a2
   1029e:	068a                	slli	a3,a3,0x2
   102a0:	00000297          	auipc	t0,0x0
   102a4:	9696                	add	a3,a3,t0
   102a6:	00a68067          	jr	10(a3)
   102aa:	00b70723          	sb	a1,14(a4)
   102ae:	00b706a3          	sb	a1,13(a4)
   102b2:	00b70623          	sb	a1,12(a4)
   102b6:	00b705a3          	sb	a1,11(a4)
   102ba:	00b70523          	sb	a1,10(a4)
   102be:	00b704a3          	sb	a1,9(a4)
   102c2:	00b70423          	sb	a1,8(a4)
   102c6:	00b703a3          	sb	a1,7(a4)
   102ca:	00b70323          	sb	a1,6(a4)
   102ce:	00b702a3          	sb	a1,5(a4)
   102d2:	00b70223          	sb	a1,4(a4)
   102d6:	00b701a3          	sb	a1,3(a4)
   102da:	00b70123          	sb	a1,2(a4)
   102de:	00b700a3          	sb	a1,1(a4)
   102e2:	00b70023          	sb	a1,0(a4)
   102e6:	8082                	ret
   102e8:	0ff5f593          	zext.b	a1,a1
   102ec:	00859693          	slli	a3,a1,0x8
   102f0:	8dd5                	or	a1,a1,a3
   102f2:	01059693          	slli	a3,a1,0x10
   102f6:	8dd5                	or	a1,a1,a3
   102f8:	02059693          	slli	a3,a1,0x20
   102fc:	8dd5                	or	a1,a1,a3
   102fe:	b759                	j	10284 <memset+0x10>
   10300:	00279693          	slli	a3,a5,0x2
   10304:	00000297          	auipc	t0,0x0
   10308:	9696                	add	a3,a3,t0
   1030a:	8286                	mv	t0,ra
   1030c:	fa2680e7          	jalr	-94(a3)
   10310:	8096                	mv	ra,t0
   10312:	17c1                	addi	a5,a5,-16
   10314:	8f1d                	sub	a4,a4,a5
   10316:	963e                	add	a2,a2,a5
   10318:	f8c371e3          	bgeu	t1,a2,1029a <memset+0x26>
   1031c:	b79d                	j	10282 <memset+0xe>

000000000001031e <_printf_r>:
   1031e:	715d                	addi	sp,sp,-80
   10320:	f032                	sd	a2,32(sp)
   10322:	f436                	sd	a3,40(sp)
   10324:	f83a                	sd	a4,48(sp)
   10326:	fc3e                	sd	a5,56(sp)
   10328:	e0c2                	sd	a6,64(sp)
   1032a:	e4c6                	sd	a7,72(sp)
   1032c:	862e                	mv	a2,a1
   1032e:	690c                	ld	a1,16(a0)
   10330:	1014                	addi	a3,sp,32
   10332:	ec06                	sd	ra,24(sp)
   10334:	e436                	sd	a3,8(sp)
   10336:	036000ef          	jal	ra,1036c <_vfprintf_r>
   1033a:	60e2                	ld	ra,24(sp)
   1033c:	6161                	addi	sp,sp,80
   1033e:	8082                	ret

0000000000010340 <printf>:
   10340:	7581b303          	ld	t1,1880(gp) # 1f328 <_impure_ptr>
   10344:	711d                	addi	sp,sp,-96
   10346:	f832                	sd	a2,48(sp)
   10348:	fc36                	sd	a3,56(sp)
   1034a:	f42e                	sd	a1,40(sp)
   1034c:	e0ba                	sd	a4,64(sp)
   1034e:	e4be                	sd	a5,72(sp)
   10350:	e8c2                	sd	a6,80(sp)
   10352:	ecc6                	sd	a7,88(sp)
   10354:	01033583          	ld	a1,16(t1) # 101a8 <foo+0x6>
   10358:	1034                	addi	a3,sp,40
   1035a:	862a                	mv	a2,a0
   1035c:	851a                	mv	a0,t1
   1035e:	ec06                	sd	ra,24(sp)
   10360:	e436                	sd	a3,8(sp)
   10362:	00a000ef          	jal	ra,1036c <_vfprintf_r>
   10366:	60e2                	ld	ra,24(sp)
   10368:	6125                	addi	sp,sp,96
   1036a:	8082                	ret

000000000001036c <_vfprintf_r>:
   1036c:	d8010113          	addi	sp,sp,-640
   10370:	26113c23          	sd	ra,632(sp)
   10374:	27213023          	sd	s2,608(sp)
   10378:	25413823          	sd	s4,592(sp)
   1037c:	23913423          	sd	s9,552(sp)
   10380:	892e                	mv	s2,a1
   10382:	8cb2                	mv	s9,a2
   10384:	e836                	sd	a3,16(sp)
   10386:	26813823          	sd	s0,624(sp)
   1038a:	26913423          	sd	s1,616(sp)
   1038e:	25313c23          	sd	s3,600(sp)
   10392:	25513423          	sd	s5,584(sp)
   10396:	25613023          	sd	s6,576(sp)
   1039a:	23713c23          	sd	s7,568(sp)
   1039e:	23813823          	sd	s8,560(sp)
   103a2:	23a13023          	sd	s10,544(sp)
   103a6:	21b13c23          	sd	s11,536(sp)
   103aa:	8a2a                	mv	s4,a0
   103ac:	604040ef          	jal	ra,149b0 <_localeconv_r>
   103b0:	611c                	ld	a5,0(a0)
   103b2:	853e                	mv	a0,a5
   103b4:	f8be                	sd	a5,112(sp)
   103b6:	777050ef          	jal	ra,1632c <strlen>
   103ba:	f4aa                	sd	a0,104(sp)
   103bc:	e202                	sd	zero,256(sp)
   103be:	e602                	sd	zero,264(sp)
   103c0:	000a0663          	beqz	s4,103cc <_vfprintf_r+0x60>
   103c4:	050a2783          	lw	a5,80(s4)
   103c8:	5a078863          	beqz	a5,10978 <_vfprintf_r+0x60c>
   103cc:	01091703          	lh	a4,16(s2)
   103d0:	6689                	lui	a3,0x2
   103d2:	03071793          	slli	a5,a4,0x30
   103d6:	93c1                	srli	a5,a5,0x30
   103d8:	00d7f633          	and	a2,a5,a3
   103dc:	e215                	bnez	a2,10400 <_vfprintf_r+0x94>
   103de:	0ac92603          	lw	a2,172(s2)
   103e2:	00d767b3          	or	a5,a4,a3
   103e6:	0107979b          	slliw	a5,a5,0x10
   103ea:	7779                	lui	a4,0xffffe
   103ec:	4107d79b          	sraiw	a5,a5,0x10
   103f0:	177d                	addi	a4,a4,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffdec2f>
   103f2:	8f71                	and	a4,a4,a2
   103f4:	00f91823          	sh	a5,16(s2)
   103f8:	17c2                	slli	a5,a5,0x30
   103fa:	0ae92623          	sw	a4,172(s2)
   103fe:	93c1                	srli	a5,a5,0x30
   10400:	0087f713          	andi	a4,a5,8
   10404:	26070a63          	beqz	a4,10678 <_vfprintf_r+0x30c>
   10408:	01893703          	ld	a4,24(s2)
   1040c:	26070663          	beqz	a4,10678 <_vfprintf_r+0x30c>
   10410:	8be9                	andi	a5,a5,26
   10412:	4729                	li	a4,10
   10414:	26e78f63          	beq	a5,a4,10692 <_vfprintf_r+0x326>
   10418:	67f1                	lui	a5,0x1c
   1041a:	5787b783          	ld	a5,1400(a5) # 1c578 <__clzdi2+0x2ac>
   1041e:	19010b13          	addi	s6,sp,400
   10422:	ea5a                	sd	s6,272(sp)
   10424:	e93e                	sd	a5,144(sp)
   10426:	67f1                	lui	a5,0x1c
   10428:	5887b783          	ld	a5,1416(a5) # 1c588 <__clzdi2+0x2bc>
   1042c:	f202                	sd	zero,288(sp)
   1042e:	10012c23          	sw	zero,280(sp)
   10432:	ed3e                	sd	a5,152(sp)
   10434:	67f1                	lui	a5,0x1c
   10436:	5987b783          	ld	a5,1432(a5) # 1c598 <__clzdi2+0x2cc>
   1043a:	f002                	sd	zero,32(sp)
   1043c:	f402                	sd	zero,40(sp)
   1043e:	f13e                	sd	a5,160(sp)
   10440:	000cc783          	lbu	a5,0(s9)
   10444:	fc82                	sd	zero,120(sp)
   10446:	f082                	sd	zero,96(sp)
   10448:	e102                	sd	zero,128(sp)
   1044a:	e502                	sd	zero,136(sp)
   1044c:	e402                	sd	zero,8(sp)
   1044e:	835a                	mv	t1,s6
   10450:	1c078563          	beqz	a5,1061a <_vfprintf_r+0x2ae>
   10454:	8466                	mv	s0,s9
   10456:	02500713          	li	a4,37
   1045a:	30e78263          	beq	a5,a4,1075e <_vfprintf_r+0x3f2>
   1045e:	00144783          	lbu	a5,1(s0)
   10462:	0405                	addi	s0,s0,1
   10464:	fbfd                	bnez	a5,1045a <_vfprintf_r+0xee>
   10466:	419404bb          	subw	s1,s0,s9
   1046a:	1a048863          	beqz	s1,1061a <_vfprintf_r+0x2ae>
   1046e:	11812783          	lw	a5,280(sp)
   10472:	7712                	ld	a4,288(sp)
   10474:	01933023          	sd	s9,0(t1)
   10478:	2785                	addiw	a5,a5,1
   1047a:	9726                	add	a4,a4,s1
   1047c:	00933423          	sd	s1,8(t1)
   10480:	f23a                	sd	a4,288(sp)
   10482:	10f12c23          	sw	a5,280(sp)
   10486:	0007871b          	sext.w	a4,a5
   1048a:	479d                	li	a5,7
   1048c:	0341                	addi	t1,t1,16
   1048e:	2ce7cf63          	blt	a5,a4,1076c <_vfprintf_r+0x400>
   10492:	6722                	ld	a4,8(sp)
   10494:	00044783          	lbu	a5,0(s0)
   10498:	9f25                	addw	a4,a4,s1
   1049a:	e43a                	sd	a4,8(sp)
   1049c:	16078f63          	beqz	a5,1061a <_vfprintf_r+0x2ae>
   104a0:	67f1                	lui	a5,0x1c
   104a2:	00144e03          	lbu	t3,1(s0)
   104a6:	0c010fa3          	sb	zero,223(sp)
   104aa:	0405                	addi	s0,s0,1
   104ac:	5c7d                	li	s8,-1
   104ae:	4a81                	li	s5,0
   104b0:	4481                	li	s1,0
   104b2:	05a00993          	li	s3,90
   104b6:	36478b93          	addi	s7,a5,868 # 1c364 <__clzdi2+0x98>
   104ba:	4da5                	li	s11,9
   104bc:	0405                	addi	s0,s0,1
   104be:	000e0d1b          	sext.w	s10,t3
   104c2:	02a00693          	li	a3,42
   104c6:	fe0d079b          	addiw	a5,s10,-32
   104ca:	0007871b          	sext.w	a4,a5
   104ce:	04e9e363          	bltu	s3,a4,10514 <_vfprintf_r+0x1a8>
   104d2:	02079713          	slli	a4,a5,0x20
   104d6:	01e75793          	srli	a5,a4,0x1e
   104da:	97de                	add	a5,a5,s7
   104dc:	439c                	lw	a5,0(a5)
   104de:	8782                	jr	a5
   104e0:	4a81                	li	s5,0
   104e2:	00044703          	lbu	a4,0(s0)
   104e6:	002a979b          	slliw	a5,s5,0x2
   104ea:	015787bb          	addw	a5,a5,s5
   104ee:	fd0d0e1b          	addiw	t3,s10,-48
   104f2:	0017979b          	slliw	a5,a5,0x1
   104f6:	fd07061b          	addiw	a2,a4,-48
   104fa:	0405                	addi	s0,s0,1
   104fc:	00fe0abb          	addw	s5,t3,a5
   10500:	00070d1b          	sext.w	s10,a4
   10504:	fccdffe3          	bgeu	s11,a2,104e2 <_vfprintf_r+0x176>
   10508:	fe0d079b          	addiw	a5,s10,-32
   1050c:	0007871b          	sext.w	a4,a5
   10510:	fce9f1e3          	bgeu	s3,a4,104d2 <_vfprintf_r+0x166>
   10514:	100d0363          	beqz	s10,1061a <_vfprintf_r+0x2ae>
   10518:	13a10423          	sb	s10,296(sp)
   1051c:	0c010fa3          	sb	zero,223(sp)
   10520:	4985                	li	s3,1
   10522:	4b85                	li	s7,1
   10524:	12810c93          	addi	s9,sp,296
   10528:	ec02                	sd	zero,24(sp)
   1052a:	4c01                	li	s8,0
   1052c:	e882                	sd	zero,80(sp)
   1052e:	ec82                	sd	zero,88(sp)
   10530:	e482                	sd	zero,72(sp)
   10532:	0024f293          	andi	t0,s1,2
   10536:	00028363          	beqz	t0,1053c <_vfprintf_r+0x1d0>
   1053a:	2989                	addiw	s3,s3,2
   1053c:	0844fd93          	andi	s11,s1,132
   10540:	7792                	ld	a5,288(sp)
   10542:	000d9663          	bnez	s11,1054e <_vfprintf_r+0x1e2>
   10546:	413a86bb          	subw	a3,s5,s3
   1054a:	08d049e3          	bgtz	a3,10ddc <_vfprintf_r+0xa70>
   1054e:	0df14703          	lbu	a4,223(sp)
   10552:	c70d                	beqz	a4,1057c <_vfprintf_r+0x210>
   10554:	11812703          	lw	a4,280(sp)
   10558:	0df10693          	addi	a3,sp,223
   1055c:	00d33023          	sd	a3,0(t1)
   10560:	2705                	addiw	a4,a4,1
   10562:	4685                	li	a3,1
   10564:	0785                	addi	a5,a5,1
   10566:	00d33423          	sd	a3,8(t1)
   1056a:	10e12c23          	sw	a4,280(sp)
   1056e:	0007069b          	sext.w	a3,a4
   10572:	f23e                	sd	a5,288(sp)
   10574:	471d                	li	a4,7
   10576:	0341                	addi	t1,t1,16
   10578:	28d74463          	blt	a4,a3,10800 <_vfprintf_r+0x494>
   1057c:	02028563          	beqz	t0,105a6 <_vfprintf_r+0x23a>
   10580:	11812703          	lw	a4,280(sp)
   10584:	1194                	addi	a3,sp,224
   10586:	00d33023          	sd	a3,0(t1)
   1058a:	2705                	addiw	a4,a4,1
   1058c:	4689                	li	a3,2
   1058e:	0789                	addi	a5,a5,2
   10590:	00d33423          	sd	a3,8(t1)
   10594:	10e12c23          	sw	a4,280(sp)
   10598:	0007069b          	sext.w	a3,a4
   1059c:	f23e                	sd	a5,288(sp)
   1059e:	471d                	li	a4,7
   105a0:	0341                	addi	t1,t1,16
   105a2:	0cd747e3          	blt	a4,a3,10e70 <_vfprintf_r+0xb04>
   105a6:	08000713          	li	a4,128
   105aa:	6eed8263          	beq	s11,a4,10c8e <_vfprintf_r+0x922>
   105ae:	417c0c3b          	subw	s8,s8,s7
   105b2:	77804563          	bgtz	s8,10d1c <_vfprintf_r+0x9b0>
   105b6:	1004f713          	andi	a4,s1,256
   105ba:	60071263          	bnez	a4,10bbe <_vfprintf_r+0x852>
   105be:	11812703          	lw	a4,280(sp)
   105c2:	97de                	add	a5,a5,s7
   105c4:	01933023          	sd	s9,0(t1)
   105c8:	0017069b          	addiw	a3,a4,1
   105cc:	8736                	mv	a4,a3
   105ce:	01733423          	sd	s7,8(t1)
   105d2:	10e12c23          	sw	a4,280(sp)
   105d6:	f23e                	sd	a5,288(sp)
   105d8:	471d                	li	a4,7
   105da:	2ed74363          	blt	a4,a3,108c0 <_vfprintf_r+0x554>
   105de:	0341                	addi	t1,t1,16
   105e0:	8891                	andi	s1,s1,4
   105e2:	c489                	beqz	s1,105ec <_vfprintf_r+0x280>
   105e4:	413a84bb          	subw	s1,s5,s3
   105e8:	08904ee3          	bgtz	s1,10e84 <_vfprintf_r+0xb18>
   105ec:	8756                	mv	a4,s5
   105ee:	013ad363          	bge	s5,s3,105f4 <_vfprintf_r+0x288>
   105f2:	874e                	mv	a4,s3
   105f4:	66a2                	ld	a3,8(sp)
   105f6:	9f35                	addw	a4,a4,a3
   105f8:	e43a                	sd	a4,8(sp)
   105fa:	7a079263          	bnez	a5,10d9e <_vfprintf_r+0xa32>
   105fe:	67e2                	ld	a5,24(sp)
   10600:	10012c23          	sw	zero,280(sp)
   10604:	c789                	beqz	a5,1060e <_vfprintf_r+0x2a2>
   10606:	65e2                	ld	a1,24(sp)
   10608:	8552                	mv	a0,s4
   1060a:	7f7010ef          	jal	ra,12600 <_free_r>
   1060e:	835a                	mv	t1,s6
   10610:	8ca2                	mv	s9,s0
   10612:	000cc783          	lbu	a5,0(s9)
   10616:	e2079fe3          	bnez	a5,10454 <_vfprintf_r+0xe8>
   1061a:	7792                	ld	a5,288(sp)
   1061c:	c399                	beqz	a5,10622 <_vfprintf_r+0x2b6>
   1061e:	31a0106f          	j	11938 <_vfprintf_r+0x15cc>
   10622:	01095783          	lhu	a5,16(s2)
   10626:	0407f793          	andi	a5,a5,64
   1062a:	c399                	beqz	a5,10630 <_vfprintf_r+0x2c4>
   1062c:	5b00106f          	j	11bdc <_vfprintf_r+0x1870>
   10630:	27813083          	ld	ra,632(sp)
   10634:	27013403          	ld	s0,624(sp)
   10638:	6522                	ld	a0,8(sp)
   1063a:	26813483          	ld	s1,616(sp)
   1063e:	26013903          	ld	s2,608(sp)
   10642:	25813983          	ld	s3,600(sp)
   10646:	25013a03          	ld	s4,592(sp)
   1064a:	24813a83          	ld	s5,584(sp)
   1064e:	24013b03          	ld	s6,576(sp)
   10652:	23813b83          	ld	s7,568(sp)
   10656:	23013c03          	ld	s8,560(sp)
   1065a:	22813c83          	ld	s9,552(sp)
   1065e:	22013d03          	ld	s10,544(sp)
   10662:	21813d83          	ld	s11,536(sp)
   10666:	28010113          	addi	sp,sp,640
   1066a:	8082                	ret
   1066c:	0104e493          	ori	s1,s1,16
   10670:	00044e03          	lbu	t3,0(s0)
   10674:	2481                	sext.w	s1,s1
   10676:	b599                	j	104bc <_vfprintf_r+0x150>
   10678:	85ca                	mv	a1,s2
   1067a:	8552                	mv	a0,s4
   1067c:	02d010ef          	jal	ra,11ea8 <__swsetup_r>
   10680:	c119                	beqz	a0,10686 <_vfprintf_r+0x31a>
   10682:	55a0106f          	j	11bdc <_vfprintf_r+0x1870>
   10686:	01095783          	lhu	a5,16(s2)
   1068a:	4729                	li	a4,10
   1068c:	8be9                	andi	a5,a5,26
   1068e:	d8e795e3          	bne	a5,a4,10418 <_vfprintf_r+0xac>
   10692:	01291783          	lh	a5,18(s2)
   10696:	d807c1e3          	bltz	a5,10418 <_vfprintf_r+0xac>
   1069a:	66c2                	ld	a3,16(sp)
   1069c:	8666                	mv	a2,s9
   1069e:	85ca                	mv	a1,s2
   106a0:	8552                	mv	a0,s4
   106a2:	772010ef          	jal	ra,11e14 <__sbprintf>
   106a6:	e42a                	sd	a0,8(sp)
   106a8:	b761                	j	10630 <_vfprintf_r+0x2c4>
   106aa:	0104e493          	ori	s1,s1,16
   106ae:	2481                	sext.w	s1,s1
   106b0:	66c2                	ld	a3,16(sp)
   106b2:	0204f793          	andi	a5,s1,32
   106b6:	00868713          	addi	a4,a3,8 # 2008 <exit-0xe0e0>
   106ba:	22078c63          	beqz	a5,108f2 <_vfprintf_r+0x586>
   106be:	629c                	ld	a5,0(a3)
   106c0:	89be                	mv	s3,a5
   106c2:	2407ca63          	bltz	a5,10916 <_vfprintf_r+0x5aa>
   106c6:	57fd                	li	a5,-1
   106c8:	26fc01e3          	beq	s8,a5,1112a <_vfprintf_r+0xdbe>
   106cc:	f7f4fd93          	andi	s11,s1,-129
   106d0:	e83a                	sd	a4,16(sp)
   106d2:	2d81                	sext.w	s11,s11
   106d4:	6e099863          	bnez	s3,10dc4 <_vfprintf_r+0xa58>
   106d8:	6e0c1963          	bnez	s8,10dca <_vfprintf_r+0xa5e>
   106dc:	84ee                	mv	s1,s11
   106de:	4c01                	li	s8,0
   106e0:	4b81                	li	s7,0
   106e2:	18c10c93          	addi	s9,sp,396
   106e6:	0df14783          	lbu	a5,223(sp)
   106ea:	000b899b          	sext.w	s3,s7
   106ee:	018bd463          	bge	s7,s8,106f6 <_vfprintf_r+0x38a>
   106f2:	000c099b          	sext.w	s3,s8
   106f6:	ec02                	sd	zero,24(sp)
   106f8:	e882                	sd	zero,80(sp)
   106fa:	ec82                	sd	zero,88(sp)
   106fc:	e482                	sd	zero,72(sp)
   106fe:	e2078ae3          	beqz	a5,10532 <_vfprintf_r+0x1c6>
   10702:	2985                	addiw	s3,s3,1
   10704:	b53d                	j	10532 <_vfprintf_r+0x1c6>
   10706:	0104e493          	ori	s1,s1,16
   1070a:	2481                	sext.w	s1,s1
   1070c:	66c2                	ld	a3,16(sp)
   1070e:	0204f793          	andi	a5,s1,32
   10712:	00868713          	addi	a4,a3,8
   10716:	1a078f63          	beqz	a5,108d4 <_vfprintf_r+0x568>
   1071a:	0006b983          	ld	s3,0(a3)
   1071e:	bff4fd93          	andi	s11,s1,-1025
   10722:	2d81                	sext.w	s11,s11
   10724:	e83a                	sd	a4,16(sp)
   10726:	4781                	li	a5,0
   10728:	4701                	li	a4,0
   1072a:	0ce10fa3          	sb	a4,223(sp)
   1072e:	577d                	li	a4,-1
   10730:	1eec0f63          	beq	s8,a4,1092e <_vfprintf_r+0x5c2>
   10734:	f7fdf493          	andi	s1,s11,-129
   10738:	2481                	sext.w	s1,s1
   1073a:	68099163          	bnez	s3,10dbc <_vfprintf_r+0xa50>
   1073e:	440c1363          	bnez	s8,10b84 <_vfprintf_r+0x818>
   10742:	ffd1                	bnez	a5,106de <_vfprintf_r+0x372>
   10744:	001dfb93          	andi	s7,s11,1
   10748:	18c10c93          	addi	s9,sp,396
   1074c:	f80b8de3          	beqz	s7,106e6 <_vfprintf_r+0x37a>
   10750:	03000793          	li	a5,48
   10754:	18f105a3          	sb	a5,395(sp)
   10758:	18b10c93          	addi	s9,sp,395
   1075c:	b769                	j	106e6 <_vfprintf_r+0x37a>
   1075e:	419404bb          	subw	s1,s0,s9
   10762:	d00496e3          	bnez	s1,1046e <_vfprintf_r+0x102>
   10766:	00044783          	lbu	a5,0(s0)
   1076a:	bb0d                	j	1049c <_vfprintf_r+0x130>
   1076c:	0a10                	addi	a2,sp,272
   1076e:	85ca                	mv	a1,s2
   10770:	8552                	mv	a0,s4
   10772:	7ac070ef          	jal	ra,17f1e <__sprint_r>
   10776:	ea0516e3          	bnez	a0,10622 <_vfprintf_r+0x2b6>
   1077a:	835a                	mv	t1,s6
   1077c:	bb19                	j	10492 <_vfprintf_r+0x126>
   1077e:	0084f793          	andi	a5,s1,8
   10782:	180789e3          	beqz	a5,11114 <_vfprintf_r+0xda8>
   10786:	67c2                	ld	a5,16(sp)
   10788:	07bd                	addi	a5,a5,15
   1078a:	ff07f713          	andi	a4,a5,-16
   1078e:	631c                	ld	a5,0(a4)
   10790:	670c                	ld	a1,8(a4)
   10792:	0741                	addi	a4,a4,16
   10794:	e83a                	sd	a4,16(sp)
   10796:	0208                	addi	a0,sp,256
   10798:	ec1a                	sd	t1,24(sp)
   1079a:	e23e                	sd	a5,256(sp)
   1079c:	e62e                	sd	a1,264(sp)
   1079e:	1ca040ef          	jal	ra,14968 <_ldcheck>
   107a2:	d5aa                	sw	a0,232(sp)
   107a4:	4789                	li	a5,2
   107a6:	6362                	ld	t1,24(sp)
   107a8:	50f509e3          	beq	a0,a5,114ba <_vfprintf_r+0x114e>
   107ac:	4785                	li	a5,1
   107ae:	68f500e3          	beq	a0,a5,1162e <_vfprintf_r+0x12c2>
   107b2:	06100793          	li	a5,97
   107b6:	2efd09e3          	beq	s10,a5,112a8 <_vfprintf_r+0xf3c>
   107ba:	04100793          	li	a5,65
   107be:	05800713          	li	a4,88
   107c2:	2efd05e3          	beq	s10,a5,112ac <_vfprintf_r+0xf40>
   107c6:	fdfd7713          	andi	a4,s10,-33
   107ca:	57fd                	li	a5,-1
   107cc:	ecba                	sd	a4,88(sp)
   107ce:	00fc1463          	bne	s8,a5,107d6 <_vfprintf_r+0x46a>
   107d2:	5000106f          	j	11cd2 <_vfprintf_r+0x1966>
   107d6:	04700793          	li	a5,71
   107da:	00f71463          	bne	a4,a5,107e2 <_vfprintf_r+0x476>
   107de:	4e60106f          	j	11cc4 <_vfprintf_r+0x1958>
   107e2:	69b2                	ld	s3,264(sp)
   107e4:	1004e793          	ori	a5,s1,256
   107e8:	f526                	sd	s1,168(sp)
   107ea:	6b92                	ld	s7,256(sp)
   107ec:	2781                	sext.w	a5,a5
   107ee:	0009d463          	bgez	s3,107f6 <_vfprintf_r+0x48a>
   107f2:	15e0106f          	j	11950 <_vfprintf_r+0x15e4>
   107f6:	e582                	sd	zero,200(sp)
   107f8:	84be                	mv	s1,a5
   107fa:	ec02                	sd	zero,24(sp)
   107fc:	2f10006f          	j	112ec <_vfprintf_r+0xf80>
   10800:	0a10                	addi	a2,sp,272
   10802:	85ca                	mv	a1,s2
   10804:	8552                	mv	a0,s4
   10806:	f816                	sd	t0,48(sp)
   10808:	716070ef          	jal	ra,17f1e <__sprint_r>
   1080c:	5a051063          	bnez	a0,10dac <_vfprintf_r+0xa40>
   10810:	7792                	ld	a5,288(sp)
   10812:	72c2                	ld	t0,48(sp)
   10814:	835a                	mv	t1,s6
   10816:	b39d                	j	1057c <_vfprintf_r+0x210>
   10818:	11812683          	lw	a3,280(sp)
   1081c:	00178d13          	addi	s10,a5,1
   10820:	7782                	ld	a5,32(sp)
   10822:	00168b9b          	addiw	s7,a3,1
   10826:	4605                	li	a2,1
   10828:	01933023          	sd	s9,0(t1)
   1082c:	86de                	mv	a3,s7
   1082e:	01030c13          	addi	s8,t1,16
   10832:	7ef65e63          	bge	a2,a5,1102e <_vfprintf_r+0xcc2>
   10836:	4605                	li	a2,1
   10838:	10d12c23          	sw	a3,280(sp)
   1083c:	00c33423          	sd	a2,8(t1)
   10840:	f26a                	sd	s10,288(sp)
   10842:	469d                	li	a3,7
   10844:	3b76c2e3          	blt	a3,s7,113e8 <_vfprintf_r+0x107c>
   10848:	77a6                	ld	a5,104(sp)
   1084a:	7746                	ld	a4,112(sp)
   1084c:	2b85                	addiw	s7,s7,1
   1084e:	9d3e                	add	s10,s10,a5
   10850:	00ec3023          	sd	a4,0(s8)
   10854:	00fc3423          	sd	a5,8(s8)
   10858:	f26a                	sd	s10,288(sp)
   1085a:	11712c23          	sw	s7,280(sp)
   1085e:	469d                	li	a3,7
   10860:	0c41                	addi	s8,s8,16
   10862:	3b76c0e3          	blt	a3,s7,11402 <_vfprintf_r+0x1096>
   10866:	6512                	ld	a0,256(sp)
   10868:	65b2                	ld	a1,264(sp)
   1086a:	4681                	li	a3,0
   1086c:	4601                	li	a2,0
   1086e:	5f40a0ef          	jal	ra,1ae62 <__eqtf2>
   10872:	7782                	ld	a5,32(sp)
   10874:	fff7869b          	addiw	a3,a5,-1
   10878:	7e050463          	beqz	a0,11060 <_vfprintf_r+0xcf4>
   1087c:	2b85                	addiw	s7,s7,1
   1087e:	001c8813          	addi	a6,s9,1
   10882:	865e                	mv	a2,s7
   10884:	9d36                	add	s10,s10,a3
   10886:	010c3023          	sd	a6,0(s8)
   1088a:	00dc3423          	sd	a3,8(s8)
   1088e:	f26a                	sd	s10,288(sp)
   10890:	10c12c23          	sw	a2,280(sp)
   10894:	469d                	li	a3,7
   10896:	0c41                	addi	s8,s8,16
   10898:	7b76c763          	blt	a3,s7,11046 <_vfprintf_r+0xcda>
   1089c:	7766                	ld	a4,120(sp)
   1089e:	1994                	addi	a3,sp,240
   108a0:	001b861b          	addiw	a2,s7,1
   108a4:	01a707b3          	add	a5,a4,s10
   108a8:	00dc3023          	sd	a3,0(s8)
   108ac:	00ec3423          	sd	a4,8(s8)
   108b0:	f23e                	sd	a5,288(sp)
   108b2:	10c12c23          	sw	a2,280(sp)
   108b6:	469d                	li	a3,7
   108b8:	010c0313          	addi	t1,s8,16
   108bc:	d2c6d2e3          	bge	a3,a2,105e0 <_vfprintf_r+0x274>
   108c0:	0a10                	addi	a2,sp,272
   108c2:	85ca                	mv	a1,s2
   108c4:	8552                	mv	a0,s4
   108c6:	658070ef          	jal	ra,17f1e <__sprint_r>
   108ca:	4e051163          	bnez	a0,10dac <_vfprintf_r+0xa40>
   108ce:	7792                	ld	a5,288(sp)
   108d0:	835a                	mv	t1,s6
   108d2:	b339                	j	105e0 <_vfprintf_r+0x274>
   108d4:	0104f793          	andi	a5,s1,16
   108d8:	020799e3          	bnez	a5,1110a <_vfprintf_r+0xd9e>
   108dc:	66c2                	ld	a3,16(sp)
   108de:	0404f793          	andi	a5,s1,64
   108e2:	0006a983          	lw	s3,0(a3)
   108e6:	4c0782e3          	beqz	a5,115aa <_vfprintf_r+0x123e>
   108ea:	19c2                	slli	s3,s3,0x30
   108ec:	0309d993          	srli	s3,s3,0x30
   108f0:	b53d                	j	1071e <_vfprintf_r+0x3b2>
   108f2:	0104f793          	andi	a5,s1,16
   108f6:	7e079e63          	bnez	a5,110f2 <_vfprintf_r+0xd86>
   108fa:	66c2                	ld	a3,16(sp)
   108fc:	0404f793          	andi	a5,s1,64
   10900:	0006a983          	lw	s3,0(a3)
   10904:	4a078be3          	beqz	a5,115ba <_vfprintf_r+0x124e>
   10908:	0109999b          	slliw	s3,s3,0x10
   1090c:	4109d99b          	sraiw	s3,s3,0x10
   10910:	87ce                	mv	a5,s3
   10912:	da07dae3          	bgez	a5,106c6 <_vfprintf_r+0x35a>
   10916:	e83a                	sd	a4,16(sp)
   10918:	02d00713          	li	a4,45
   1091c:	0ce10fa3          	sb	a4,223(sp)
   10920:	577d                	li	a4,-1
   10922:	413009b3          	neg	s3,s3
   10926:	8da6                	mv	s11,s1
   10928:	4785                	li	a5,1
   1092a:	e0ec15e3          	bne	s8,a4,10734 <_vfprintf_r+0x3c8>
   1092e:	4705                	li	a4,1
   10930:	48e78a63          	beq	a5,a4,10dc4 <_vfprintf_r+0xa58>
   10934:	4709                	li	a4,2
   10936:	26e78063          	beq	a5,a4,10b96 <_vfprintf_r+0x82a>
   1093a:	18c10b93          	addi	s7,sp,396
   1093e:	8cde                	mv	s9,s7
   10940:	0079f793          	andi	a5,s3,7
   10944:	03078793          	addi	a5,a5,48
   10948:	fefc8fa3          	sb	a5,-1(s9)
   1094c:	0039d993          	srli	s3,s3,0x3
   10950:	8766                	mv	a4,s9
   10952:	1cfd                	addi	s9,s9,-1
   10954:	fe0996e3          	bnez	s3,10940 <_vfprintf_r+0x5d4>
   10958:	001df693          	andi	a3,s11,1
   1095c:	24068d63          	beqz	a3,10bb6 <_vfprintf_r+0x84a>
   10960:	03000693          	li	a3,48
   10964:	24d78963          	beq	a5,a3,10bb6 <_vfprintf_r+0x84a>
   10968:	1779                	addi	a4,a4,-2
   1096a:	fedc8fa3          	sb	a3,-1(s9)
   1096e:	40eb8bbb          	subw	s7,s7,a4
   10972:	84ee                	mv	s1,s11
   10974:	8cba                	mv	s9,a4
   10976:	bb85                	j	106e6 <_vfprintf_r+0x37a>
   10978:	8552                	mv	a0,s4
   1097a:	357010ef          	jal	ra,124d0 <__sinit>
   1097e:	b4b9                	j	103cc <_vfprintf_r+0x60>
   10980:	67c2                	ld	a5,16(sp)
   10982:	0c010fa3          	sb	zero,223(sp)
   10986:	0007bc83          	ld	s9,0(a5)
   1098a:	00878d93          	addi	s11,a5,8
   1098e:	0a0c8be3          	beqz	s9,11244 <_vfprintf_r+0xed8>
   10992:	57fd                	li	a5,-1
   10994:	36fc0ae3          	beq	s8,a5,11508 <_vfprintf_r+0x119c>
   10998:	8662                	mv	a2,s8
   1099a:	4581                	li	a1,0
   1099c:	8566                	mv	a0,s9
   1099e:	e81a                	sd	t1,16(sp)
   109a0:	0b7040ef          	jal	ra,15256 <memchr>
   109a4:	ec2a                	sd	a0,24(sp)
   109a6:	6342                	ld	t1,16(sp)
   109a8:	e119                	bnez	a0,109ae <_vfprintf_r+0x642>
   109aa:	1a40106f          	j	11b4e <_vfprintf_r+0x17e2>
   109ae:	67e2                	ld	a5,24(sp)
   109b0:	e86e                	sd	s11,16(sp)
   109b2:	ec02                	sd	zero,24(sp)
   109b4:	41978bbb          	subw	s7,a5,s9
   109b8:	0df14783          	lbu	a5,223(sp)
   109bc:	fffbc993          	not	s3,s7
   109c0:	43f9d993          	srai	s3,s3,0x3f
   109c4:	e882                	sd	zero,80(sp)
   109c6:	ec82                	sd	zero,88(sp)
   109c8:	e482                	sd	zero,72(sp)
   109ca:	0179f9b3          	and	s3,s3,s7
   109ce:	4c01                	li	s8,0
   109d0:	d20799e3          	bnez	a5,10702 <_vfprintf_r+0x396>
   109d4:	beb9                	j	10532 <_vfprintf_r+0x1c6>
   109d6:	6742                	ld	a4,16(sp)
   109d8:	0c010fa3          	sb	zero,223(sp)
   109dc:	4985                	li	s3,1
   109de:	431c                	lw	a5,0(a4)
   109e0:	0721                	addi	a4,a4,8
   109e2:	e83a                	sd	a4,16(sp)
   109e4:	12f10423          	sb	a5,296(sp)
   109e8:	4b85                	li	s7,1
   109ea:	12810c93          	addi	s9,sp,296
   109ee:	be2d                	j	10528 <_vfprintf_r+0x1bc>
   109f0:	67c2                	ld	a5,16(sp)
   109f2:	0007aa83          	lw	s5,0(a5)
   109f6:	07a1                	addi	a5,a5,8
   109f8:	6e0ad363          	bgez	s5,110de <_vfprintf_r+0xd72>
   109fc:	41500abb          	negw	s5,s5
   10a00:	e83e                	sd	a5,16(sp)
   10a02:	0044e493          	ori	s1,s1,4
   10a06:	00044e03          	lbu	t3,0(s0)
   10a0a:	2481                	sext.w	s1,s1
   10a0c:	bc45                	j	104bc <_vfprintf_r+0x150>
   10a0e:	02b00793          	li	a5,43
   10a12:	00044e03          	lbu	t3,0(s0)
   10a16:	0cf10fa3          	sb	a5,223(sp)
   10a1a:	b44d                	j	104bc <_vfprintf_r+0x150>
   10a1c:	0804e493          	ori	s1,s1,128
   10a20:	00044e03          	lbu	t3,0(s0)
   10a24:	2481                	sext.w	s1,s1
   10a26:	bc59                	j	104bc <_vfprintf_r+0x150>
   10a28:	00044d03          	lbu	s10,0(s0)
   10a2c:	00140793          	addi	a5,s0,1
   10a30:	00dd1463          	bne	s10,a3,10a38 <_vfprintf_r+0x6cc>
   10a34:	39a0106f          	j	11dce <_vfprintf_r+0x1a62>
   10a38:	fd0d071b          	addiw	a4,s10,-48
   10a3c:	843e                	mv	s0,a5
   10a3e:	4c01                	li	s8,0
   10a40:	a8ede3e3          	bltu	s11,a4,104c6 <_vfprintf_r+0x15a>
   10a44:	00044d03          	lbu	s10,0(s0)
   10a48:	002c179b          	slliw	a5,s8,0x2
   10a4c:	018787bb          	addw	a5,a5,s8
   10a50:	0017979b          	slliw	a5,a5,0x1
   10a54:	00e78c3b          	addw	s8,a5,a4
   10a58:	fd0d071b          	addiw	a4,s10,-48
   10a5c:	0405                	addi	s0,s0,1
   10a5e:	feedf3e3          	bgeu	s11,a4,10a44 <_vfprintf_r+0x6d8>
   10a62:	b495                	j	104c6 <_vfprintf_r+0x15a>
   10a64:	8552                	mv	a0,s4
   10a66:	ec1a                	sd	t1,24(sp)
   10a68:	749030ef          	jal	ra,149b0 <_localeconv_r>
   10a6c:	651c                	ld	a5,8(a0)
   10a6e:	853e                	mv	a0,a5
   10a70:	e53e                	sd	a5,136(sp)
   10a72:	0bb050ef          	jal	ra,1632c <strlen>
   10a76:	87aa                	mv	a5,a0
   10a78:	8552                	mv	a0,s4
   10a7a:	8d3e                	mv	s10,a5
   10a7c:	e13e                	sd	a5,128(sp)
   10a7e:	733030ef          	jal	ra,149b0 <_localeconv_r>
   10a82:	691c                	ld	a5,16(a0)
   10a84:	6362                	ld	t1,24(sp)
   10a86:	00044e03          	lbu	t3,0(s0)
   10a8a:	f0be                	sd	a5,96(sp)
   10a8c:	a20d08e3          	beqz	s10,104bc <_vfprintf_r+0x150>
   10a90:	a20786e3          	beqz	a5,104bc <_vfprintf_r+0x150>
   10a94:	0007c783          	lbu	a5,0(a5)
   10a98:	a20782e3          	beqz	a5,104bc <_vfprintf_r+0x150>
   10a9c:	4004e493          	ori	s1,s1,1024
   10aa0:	2481                	sext.w	s1,s1
   10aa2:	bc29                	j	104bc <_vfprintf_r+0x150>
   10aa4:	0014e493          	ori	s1,s1,1
   10aa8:	00044e03          	lbu	t3,0(s0)
   10aac:	2481                	sext.w	s1,s1
   10aae:	b439                	j	104bc <_vfprintf_r+0x150>
   10ab0:	0df14783          	lbu	a5,223(sp)
   10ab4:	00044e03          	lbu	t3,0(s0)
   10ab8:	a00792e3          	bnez	a5,104bc <_vfprintf_r+0x150>
   10abc:	02000793          	li	a5,32
   10ac0:	0cf10fa3          	sb	a5,223(sp)
   10ac4:	bae5                	j	104bc <_vfprintf_r+0x150>
   10ac6:	0084e493          	ori	s1,s1,8
   10aca:	00044e03          	lbu	t3,0(s0)
   10ace:	2481                	sext.w	s1,s1
   10ad0:	b2f5                	j	104bc <_vfprintf_r+0x150>
   10ad2:	0104ed93          	ori	s11,s1,16
   10ad6:	2d81                	sext.w	s11,s11
   10ad8:	66c2                	ld	a3,16(sp)
   10ada:	020df793          	andi	a5,s11,32
   10ade:	00868713          	addi	a4,a3,8
   10ae2:	5c078863          	beqz	a5,110b2 <_vfprintf_r+0xd46>
   10ae6:	0006b983          	ld	s3,0(a3)
   10aea:	4785                	li	a5,1
   10aec:	e83a                	sd	a4,16(sp)
   10aee:	b92d                	j	10728 <_vfprintf_r+0x3bc>
   10af0:	0204e493          	ori	s1,s1,32
   10af4:	00044e03          	lbu	t3,0(s0)
   10af8:	2481                	sext.w	s1,s1
   10afa:	b2c9                	j	104bc <_vfprintf_r+0x150>
   10afc:	6742                	ld	a4,16(sp)
   10afe:	77e1                	lui	a5,0xffff8
   10b00:	8307c793          	xori	a5,a5,-2000
   10b04:	0ef11023          	sh	a5,224(sp)
   10b08:	00870793          	addi	a5,a4,8
   10b0c:	e83e                	sd	a5,16(sp)
   10b0e:	67f1                	lui	a5,0x1c
   10b10:	32878793          	addi	a5,a5,808 # 1c328 <__clzdi2+0x5c>
   10b14:	0024ed93          	ori	s11,s1,2
   10b18:	f43e                	sd	a5,40(sp)
   10b1a:	00073983          	ld	s3,0(a4)
   10b1e:	2d81                	sext.w	s11,s11
   10b20:	4789                	li	a5,2
   10b22:	07800d13          	li	s10,120
   10b26:	b109                	j	10728 <_vfprintf_r+0x3bc>
   10b28:	66c2                	ld	a3,16(sp)
   10b2a:	0204f793          	andi	a5,s1,32
   10b2e:	6298                	ld	a4,0(a3)
   10b30:	06a1                	addi	a3,a3,8
   10b32:	e836                	sd	a3,16(sp)
   10b34:	5a079a63          	bnez	a5,110e8 <_vfprintf_r+0xd7c>
   10b38:	0104f793          	andi	a5,s1,16
   10b3c:	5a079663          	bnez	a5,110e8 <_vfprintf_r+0xd7c>
   10b40:	0404f793          	andi	a5,s1,64
   10b44:	5c0791e3          	bnez	a5,11906 <_vfprintf_r+0x159a>
   10b48:	2004f493          	andi	s1,s1,512
   10b4c:	67a2                	ld	a5,8(sp)
   10b4e:	e099                	bnez	s1,10b54 <_vfprintf_r+0x7e8>
   10b50:	1880106f          	j	11cd8 <_vfprintf_r+0x196c>
   10b54:	00f70023          	sb	a5,0(a4)
   10b58:	8ca2                	mv	s9,s0
   10b5a:	bc65                	j	10612 <_vfprintf_r+0x2a6>
   10b5c:	00044e03          	lbu	t3,0(s0)
   10b60:	06c00793          	li	a5,108
   10b64:	6afe0e63          	beq	t3,a5,11220 <_vfprintf_r+0xeb4>
   10b68:	0104e493          	ori	s1,s1,16
   10b6c:	2481                	sext.w	s1,s1
   10b6e:	b2b9                	j	104bc <_vfprintf_r+0x150>
   10b70:	00044e03          	lbu	t3,0(s0)
   10b74:	06800793          	li	a5,104
   10b78:	68fe0763          	beq	t3,a5,11206 <_vfprintf_r+0xe9a>
   10b7c:	0404e493          	ori	s1,s1,64
   10b80:	2481                	sext.w	s1,s1
   10b82:	ba2d                	j	104bc <_vfprintf_r+0x150>
   10b84:	4705                	li	a4,1
   10b86:	00e79463          	bne	a5,a4,10b8e <_vfprintf_r+0x822>
   10b8a:	12a0106f          	j	11cb4 <_vfprintf_r+0x1948>
   10b8e:	4709                	li	a4,2
   10b90:	8da6                	mv	s11,s1
   10b92:	dae794e3          	bne	a5,a4,1093a <_vfprintf_r+0x5ce>
   10b96:	18c10b93          	addi	s7,sp,396
   10b9a:	8cde                	mv	s9,s7
   10b9c:	7722                	ld	a4,40(sp)
   10b9e:	00f9f793          	andi	a5,s3,15
   10ba2:	1cfd                	addi	s9,s9,-1
   10ba4:	97ba                	add	a5,a5,a4
   10ba6:	0007c783          	lbu	a5,0(a5)
   10baa:	0049d993          	srli	s3,s3,0x4
   10bae:	00fc8023          	sb	a5,0(s9)
   10bb2:	fe0995e3          	bnez	s3,10b9c <_vfprintf_r+0x830>
   10bb6:	419b8bbb          	subw	s7,s7,s9
   10bba:	84ee                	mv	s1,s11
   10bbc:	b62d                	j	106e6 <_vfprintf_r+0x37a>
   10bbe:	06500713          	li	a4,101
   10bc2:	c5a75be3          	bge	a4,s10,10818 <_vfprintf_r+0x4ac>
   10bc6:	6512                	ld	a0,256(sp)
   10bc8:	65b2                	ld	a1,264(sp)
   10bca:	4601                	li	a2,0
   10bcc:	4681                	li	a3,0
   10bce:	fc3e                	sd	a5,56(sp)
   10bd0:	f81a                	sd	t1,48(sp)
   10bd2:	2900a0ef          	jal	ra,1ae62 <__eqtf2>
   10bd6:	7342                	ld	t1,48(sp)
   10bd8:	77e2                	ld	a5,56(sp)
   10bda:	32051663          	bnez	a0,10f06 <_vfprintf_r+0xb9a>
   10bde:	11812703          	lw	a4,280(sp)
   10be2:	66f1                	lui	a3,0x1c
   10be4:	36068693          	addi	a3,a3,864 # 1c360 <__clzdi2+0x94>
   10be8:	2705                	addiw	a4,a4,1
   10bea:	00d33023          	sd	a3,0(t1)
   10bee:	0785                	addi	a5,a5,1
   10bf0:	4685                	li	a3,1
   10bf2:	00d33423          	sd	a3,8(t1)
   10bf6:	10e12c23          	sw	a4,280(sp)
   10bfa:	0007069b          	sext.w	a3,a4
   10bfe:	f23e                	sd	a5,288(sp)
   10c00:	471d                	li	a4,7
   10c02:	0341                	addi	t1,t1,16
   10c04:	08d748e3          	blt	a4,a3,11494 <_vfprintf_r+0x1128>
   10c08:	572e                	lw	a4,232(sp)
   10c0a:	7682                	ld	a3,32(sp)
   10c0c:	4cd75463          	bge	a4,a3,110d4 <_vfprintf_r+0xd68>
   10c10:	76a6                	ld	a3,104(sp)
   10c12:	11812703          	lw	a4,280(sp)
   10c16:	7646                	ld	a2,112(sp)
   10c18:	97b6                	add	a5,a5,a3
   10c1a:	2705                	addiw	a4,a4,1
   10c1c:	00d33423          	sd	a3,8(t1)
   10c20:	00c33023          	sd	a2,0(t1)
   10c24:	0007069b          	sext.w	a3,a4
   10c28:	10e12c23          	sw	a4,280(sp)
   10c2c:	f23e                	sd	a5,288(sp)
   10c2e:	471d                	li	a4,7
   10c30:	0341                	addi	t1,t1,16
   10c32:	5ed74f63          	blt	a4,a3,11230 <_vfprintf_r+0xec4>
   10c36:	7702                	ld	a4,32(sp)
   10c38:	fff70b9b          	addiw	s7,a4,-1
   10c3c:	9b7052e3          	blez	s7,105e0 <_vfprintf_r+0x274>
   10c40:	68f1                	lui	a7,0x1c
   10c42:	46c1                	li	a3,16
   10c44:	11812703          	lw	a4,280(sp)
   10c48:	5b088d93          	addi	s11,a7,1456 # 1c5b0 <zeroes.0>
   10c4c:	4cc1                	li	s9,16
   10c4e:	4c1d                	li	s8,7
   10c50:	0176c763          	blt	a3,s7,10c5e <_vfprintf_r+0x8f2>
   10c54:	0570006f          	j	114aa <_vfprintf_r+0x113e>
   10c58:	3bc1                	addiw	s7,s7,-16
   10c5a:	057cd8e3          	bge	s9,s7,114aa <_vfprintf_r+0x113e>
   10c5e:	2705                	addiw	a4,a4,1
   10c60:	07c1                	addi	a5,a5,16
   10c62:	01b33023          	sd	s11,0(t1)
   10c66:	01933423          	sd	s9,8(t1)
   10c6a:	f23e                	sd	a5,288(sp)
   10c6c:	10e12c23          	sw	a4,280(sp)
   10c70:	0341                	addi	t1,t1,16
   10c72:	feec53e3          	bge	s8,a4,10c58 <_vfprintf_r+0x8ec>
   10c76:	0a10                	addi	a2,sp,272
   10c78:	85ca                	mv	a1,s2
   10c7a:	8552                	mv	a0,s4
   10c7c:	2a2070ef          	jal	ra,17f1e <__sprint_r>
   10c80:	12051663          	bnez	a0,10dac <_vfprintf_r+0xa40>
   10c84:	7792                	ld	a5,288(sp)
   10c86:	11812703          	lw	a4,280(sp)
   10c8a:	835a                	mv	t1,s6
   10c8c:	b7f1                	j	10c58 <_vfprintf_r+0x8ec>
   10c8e:	413a86bb          	subw	a3,s5,s3
   10c92:	90d05ee3          	blez	a3,105ae <_vfprintf_r+0x242>
   10c96:	68f1                	lui	a7,0x1c
   10c98:	4641                	li	a2,16
   10c9a:	11812703          	lw	a4,280(sp)
   10c9e:	5b088d93          	addi	s11,a7,1456 # 1c5b0 <zeroes.0>
   10ca2:	4f41                	li	t5,16
   10ca4:	4f9d                	li	t6,7
   10ca6:	00d64663          	blt	a2,a3,10cb2 <_vfprintf_r+0x946>
   10caa:	a089                	j	10cec <_vfprintf_r+0x980>
   10cac:	36c1                	addiw	a3,a3,-16
   10cae:	02df5f63          	bge	t5,a3,10cec <_vfprintf_r+0x980>
   10cb2:	2705                	addiw	a4,a4,1
   10cb4:	07c1                	addi	a5,a5,16
   10cb6:	01b33023          	sd	s11,0(t1)
   10cba:	01e33423          	sd	t5,8(t1)
   10cbe:	f23e                	sd	a5,288(sp)
   10cc0:	10e12c23          	sw	a4,280(sp)
   10cc4:	0341                	addi	t1,t1,16
   10cc6:	feefd3e3          	bge	t6,a4,10cac <_vfprintf_r+0x940>
   10cca:	0a10                	addi	a2,sp,272
   10ccc:	85ca                	mv	a1,s2
   10cce:	8552                	mv	a0,s4
   10cd0:	f836                	sd	a3,48(sp)
   10cd2:	24c070ef          	jal	ra,17f1e <__sprint_r>
   10cd6:	e979                	bnez	a0,10dac <_vfprintf_r+0xa40>
   10cd8:	76c2                	ld	a3,48(sp)
   10cda:	4f41                	li	t5,16
   10cdc:	7792                	ld	a5,288(sp)
   10cde:	36c1                	addiw	a3,a3,-16
   10ce0:	11812703          	lw	a4,280(sp)
   10ce4:	835a                	mv	t1,s6
   10ce6:	4f9d                	li	t6,7
   10ce8:	fcdf45e3          	blt	t5,a3,10cb2 <_vfprintf_r+0x946>
   10cec:	2705                	addiw	a4,a4,1
   10cee:	97b6                	add	a5,a5,a3
   10cf0:	00d33423          	sd	a3,8(t1)
   10cf4:	01b33023          	sd	s11,0(t1)
   10cf8:	0007069b          	sext.w	a3,a4
   10cfc:	10e12c23          	sw	a4,280(sp)
   10d00:	f23e                	sd	a5,288(sp)
   10d02:	471d                	li	a4,7
   10d04:	0341                	addi	t1,t1,16
   10d06:	8ad754e3          	bge	a4,a3,105ae <_vfprintf_r+0x242>
   10d0a:	0a10                	addi	a2,sp,272
   10d0c:	85ca                	mv	a1,s2
   10d0e:	8552                	mv	a0,s4
   10d10:	20e070ef          	jal	ra,17f1e <__sprint_r>
   10d14:	ed41                	bnez	a0,10dac <_vfprintf_r+0xa40>
   10d16:	7792                	ld	a5,288(sp)
   10d18:	835a                	mv	t1,s6
   10d1a:	b851                	j	105ae <_vfprintf_r+0x242>
   10d1c:	68f1                	lui	a7,0x1c
   10d1e:	4641                	li	a2,16
   10d20:	11812703          	lw	a4,280(sp)
   10d24:	5b088d93          	addi	s11,a7,1456 # 1c5b0 <zeroes.0>
   10d28:	4ec1                	li	t4,16
   10d2a:	4f1d                	li	t5,7
   10d2c:	01864663          	blt	a2,s8,10d38 <_vfprintf_r+0x9cc>
   10d30:	a83d                	j	10d6e <_vfprintf_r+0xa02>
   10d32:	3c41                	addiw	s8,s8,-16
   10d34:	038edd63          	bge	t4,s8,10d6e <_vfprintf_r+0xa02>
   10d38:	2705                	addiw	a4,a4,1
   10d3a:	07c1                	addi	a5,a5,16
   10d3c:	01b33023          	sd	s11,0(t1)
   10d40:	01d33423          	sd	t4,8(t1)
   10d44:	f23e                	sd	a5,288(sp)
   10d46:	10e12c23          	sw	a4,280(sp)
   10d4a:	0341                	addi	t1,t1,16
   10d4c:	feef53e3          	bge	t5,a4,10d32 <_vfprintf_r+0x9c6>
   10d50:	0a10                	addi	a2,sp,272
   10d52:	85ca                	mv	a1,s2
   10d54:	8552                	mv	a0,s4
   10d56:	1c8070ef          	jal	ra,17f1e <__sprint_r>
   10d5a:	e929                	bnez	a0,10dac <_vfprintf_r+0xa40>
   10d5c:	4ec1                	li	t4,16
   10d5e:	3c41                	addiw	s8,s8,-16
   10d60:	7792                	ld	a5,288(sp)
   10d62:	11812703          	lw	a4,280(sp)
   10d66:	835a                	mv	t1,s6
   10d68:	4f1d                	li	t5,7
   10d6a:	fd8ec7e3          	blt	t4,s8,10d38 <_vfprintf_r+0x9cc>
   10d6e:	0017069b          	addiw	a3,a4,1
   10d72:	97e2                	add	a5,a5,s8
   10d74:	01b33023          	sd	s11,0(t1)
   10d78:	01833423          	sd	s8,8(t1)
   10d7c:	f23e                	sd	a5,288(sp)
   10d7e:	10d12c23          	sw	a3,280(sp)
   10d82:	471d                	li	a4,7
   10d84:	0341                	addi	t1,t1,16
   10d86:	82d758e3          	bge	a4,a3,105b6 <_vfprintf_r+0x24a>
   10d8a:	0a10                	addi	a2,sp,272
   10d8c:	85ca                	mv	a1,s2
   10d8e:	8552                	mv	a0,s4
   10d90:	18e070ef          	jal	ra,17f1e <__sprint_r>
   10d94:	ed01                	bnez	a0,10dac <_vfprintf_r+0xa40>
   10d96:	7792                	ld	a5,288(sp)
   10d98:	835a                	mv	t1,s6
   10d9a:	81dff06f          	j	105b6 <_vfprintf_r+0x24a>
   10d9e:	0a10                	addi	a2,sp,272
   10da0:	85ca                	mv	a1,s2
   10da2:	8552                	mv	a0,s4
   10da4:	17a070ef          	jal	ra,17f1e <__sprint_r>
   10da8:	84050be3          	beqz	a0,105fe <_vfprintf_r+0x292>
   10dac:	67e2                	ld	a5,24(sp)
   10dae:	86078ae3          	beqz	a5,10622 <_vfprintf_r+0x2b6>
   10db2:	85be                	mv	a1,a5
   10db4:	8552                	mv	a0,s4
   10db6:	04b010ef          	jal	ra,12600 <_free_r>
   10dba:	b0a5                	j	10622 <_vfprintf_r+0x2b6>
   10dbc:	4705                	li	a4,1
   10dbe:	8da6                	mv	s11,s1
   10dc0:	b6e79ae3          	bne	a5,a4,10934 <_vfprintf_r+0x5c8>
   10dc4:	47a5                	li	a5,9
   10dc6:	3737e763          	bltu	a5,s3,11134 <_vfprintf_r+0xdc8>
   10dca:	0309899b          	addiw	s3,s3,48
   10dce:	193105a3          	sb	s3,395(sp)
   10dd2:	84ee                	mv	s1,s11
   10dd4:	4b85                	li	s7,1
   10dd6:	18b10c93          	addi	s9,sp,395
   10dda:	b231                	j	106e6 <_vfprintf_r+0x37a>
   10ddc:	68f1                	lui	a7,0x1c
   10dde:	4641                	li	a2,16
   10de0:	11812703          	lw	a4,280(sp)
   10de4:	5a088893          	addi	a7,a7,1440 # 1c5a0 <blanks.1>
   10de8:	4f41                	li	t5,16
   10dea:	439d                	li	t2,7
   10dec:	00d64663          	blt	a2,a3,10df8 <_vfprintf_r+0xa8c>
   10df0:	a0a9                	j	10e3a <_vfprintf_r+0xace>
   10df2:	36c1                	addiw	a3,a3,-16
   10df4:	04df5363          	bge	t5,a3,10e3a <_vfprintf_r+0xace>
   10df8:	2705                	addiw	a4,a4,1
   10dfa:	07c1                	addi	a5,a5,16
   10dfc:	01133023          	sd	a7,0(t1)
   10e00:	01e33423          	sd	t5,8(t1)
   10e04:	f23e                	sd	a5,288(sp)
   10e06:	10e12c23          	sw	a4,280(sp)
   10e0a:	0341                	addi	t1,t1,16
   10e0c:	fee3d3e3          	bge	t2,a4,10df2 <_vfprintf_r+0xa86>
   10e10:	0a10                	addi	a2,sp,272
   10e12:	85ca                	mv	a1,s2
   10e14:	8552                	mv	a0,s4
   10e16:	e0c6                	sd	a7,64(sp)
   10e18:	fc36                	sd	a3,56(sp)
   10e1a:	f816                	sd	t0,48(sp)
   10e1c:	102070ef          	jal	ra,17f1e <__sprint_r>
   10e20:	f551                	bnez	a0,10dac <_vfprintf_r+0xa40>
   10e22:	76e2                	ld	a3,56(sp)
   10e24:	4f41                	li	t5,16
   10e26:	7792                	ld	a5,288(sp)
   10e28:	36c1                	addiw	a3,a3,-16
   10e2a:	11812703          	lw	a4,280(sp)
   10e2e:	6886                	ld	a7,64(sp)
   10e30:	72c2                	ld	t0,48(sp)
   10e32:	835a                	mv	t1,s6
   10e34:	439d                	li	t2,7
   10e36:	fcdf41e3          	blt	t5,a3,10df8 <_vfprintf_r+0xa8c>
   10e3a:	2705                	addiw	a4,a4,1
   10e3c:	97b6                	add	a5,a5,a3
   10e3e:	00d33423          	sd	a3,8(t1)
   10e42:	01133023          	sd	a7,0(t1)
   10e46:	0007069b          	sext.w	a3,a4
   10e4a:	10e12c23          	sw	a4,280(sp)
   10e4e:	f23e                	sd	a5,288(sp)
   10e50:	471d                	li	a4,7
   10e52:	0341                	addi	t1,t1,16
   10e54:	eed75d63          	bge	a4,a3,1054e <_vfprintf_r+0x1e2>
   10e58:	0a10                	addi	a2,sp,272
   10e5a:	85ca                	mv	a1,s2
   10e5c:	8552                	mv	a0,s4
   10e5e:	f816                	sd	t0,48(sp)
   10e60:	0be070ef          	jal	ra,17f1e <__sprint_r>
   10e64:	f521                	bnez	a0,10dac <_vfprintf_r+0xa40>
   10e66:	7792                	ld	a5,288(sp)
   10e68:	72c2                	ld	t0,48(sp)
   10e6a:	835a                	mv	t1,s6
   10e6c:	ee2ff06f          	j	1054e <_vfprintf_r+0x1e2>
   10e70:	0a10                	addi	a2,sp,272
   10e72:	85ca                	mv	a1,s2
   10e74:	8552                	mv	a0,s4
   10e76:	0a8070ef          	jal	ra,17f1e <__sprint_r>
   10e7a:	f90d                	bnez	a0,10dac <_vfprintf_r+0xa40>
   10e7c:	7792                	ld	a5,288(sp)
   10e7e:	835a                	mv	t1,s6
   10e80:	f26ff06f          	j	105a6 <_vfprintf_r+0x23a>
   10e84:	68f1                	lui	a7,0x1c
   10e86:	46c1                	li	a3,16
   10e88:	11812703          	lw	a4,280(sp)
   10e8c:	5a088893          	addi	a7,a7,1440 # 1c5a0 <blanks.1>
   10e90:	4bc1                	li	s7,16
   10e92:	4c1d                	li	s8,7
   10e94:	0096c663          	blt	a3,s1,10ea0 <_vfprintf_r+0xb34>
   10e98:	a081                	j	10ed8 <_vfprintf_r+0xb6c>
   10e9a:	34c1                	addiw	s1,s1,-16
   10e9c:	029bde63          	bge	s7,s1,10ed8 <_vfprintf_r+0xb6c>
   10ea0:	2705                	addiw	a4,a4,1
   10ea2:	07c1                	addi	a5,a5,16
   10ea4:	01133023          	sd	a7,0(t1)
   10ea8:	01733423          	sd	s7,8(t1)
   10eac:	f23e                	sd	a5,288(sp)
   10eae:	10e12c23          	sw	a4,280(sp)
   10eb2:	0341                	addi	t1,t1,16
   10eb4:	feec53e3          	bge	s8,a4,10e9a <_vfprintf_r+0xb2e>
   10eb8:	0a10                	addi	a2,sp,272
   10eba:	85ca                	mv	a1,s2
   10ebc:	8552                	mv	a0,s4
   10ebe:	f846                	sd	a7,48(sp)
   10ec0:	05e070ef          	jal	ra,17f1e <__sprint_r>
   10ec4:	ee0514e3          	bnez	a0,10dac <_vfprintf_r+0xa40>
   10ec8:	34c1                	addiw	s1,s1,-16
   10eca:	7792                	ld	a5,288(sp)
   10ecc:	11812703          	lw	a4,280(sp)
   10ed0:	78c2                	ld	a7,48(sp)
   10ed2:	835a                	mv	t1,s6
   10ed4:	fc9bc6e3          	blt	s7,s1,10ea0 <_vfprintf_r+0xb34>
   10ed8:	0017069b          	addiw	a3,a4,1
   10edc:	97a6                	add	a5,a5,s1
   10ede:	01133023          	sd	a7,0(t1)
   10ee2:	00933423          	sd	s1,8(t1)
   10ee6:	f23e                	sd	a5,288(sp)
   10ee8:	10d12c23          	sw	a3,280(sp)
   10eec:	471d                	li	a4,7
   10eee:	eed75f63          	bge	a4,a3,105ec <_vfprintf_r+0x280>
   10ef2:	0a10                	addi	a2,sp,272
   10ef4:	85ca                	mv	a1,s2
   10ef6:	8552                	mv	a0,s4
   10ef8:	026070ef          	jal	ra,17f1e <__sprint_r>
   10efc:	ea0518e3          	bnez	a0,10dac <_vfprintf_r+0xa40>
   10f00:	7792                	ld	a5,288(sp)
   10f02:	eeaff06f          	j	105ec <_vfprintf_r+0x280>
   10f06:	562e                	lw	a2,232(sp)
   10f08:	50c05a63          	blez	a2,1141c <_vfprintf_r+0x10b0>
   10f0c:	6726                	ld	a4,72(sp)
   10f0e:	7682                	ld	a3,32(sp)
   10f10:	00070b9b          	sext.w	s7,a4
   10f14:	2ae6c063          	blt	a3,a4,111b4 <_vfprintf_r+0xe48>
   10f18:	03705263          	blez	s7,10f3c <_vfprintf_r+0xbd0>
   10f1c:	11812703          	lw	a4,280(sp)
   10f20:	97de                	add	a5,a5,s7
   10f22:	01933023          	sd	s9,0(t1)
   10f26:	0017069b          	addiw	a3,a4,1
   10f2a:	01733423          	sd	s7,8(t1)
   10f2e:	f23e                	sd	a5,288(sp)
   10f30:	10d12c23          	sw	a3,280(sp)
   10f34:	471d                	li	a4,7
   10f36:	0341                	addi	t1,t1,16
   10f38:	0ad74ae3          	blt	a4,a3,117ec <_vfprintf_r+0x1480>
   10f3c:	fffbc713          	not	a4,s7
   10f40:	977d                	srai	a4,a4,0x3f
   10f42:	00ebfbb3          	and	s7,s7,a4
   10f46:	6726                	ld	a4,72(sp)
   10f48:	41770bbb          	subw	s7,a4,s7
   10f4c:	31704863          	bgtz	s7,1125c <_vfprintf_r+0xef0>
   10f50:	66a6                	ld	a3,72(sp)
   10f52:	4004f713          	andi	a4,s1,1024
   10f56:	00dc8c33          	add	s8,s9,a3
   10f5a:	70071f63          	bnez	a4,11678 <_vfprintf_r+0x130c>
   10f5e:	572e                	lw	a4,232(sp)
   10f60:	7682                	ld	a3,32(sp)
   10f62:	00d74663          	blt	a4,a3,10f6e <_vfprintf_r+0xc02>
   10f66:	0014f693          	andi	a3,s1,1
   10f6a:	08068ee3          	beqz	a3,11806 <_vfprintf_r+0x149a>
   10f6e:	7626                	ld	a2,104(sp)
   10f70:	11812683          	lw	a3,280(sp)
   10f74:	75c6                	ld	a1,112(sp)
   10f76:	97b2                	add	a5,a5,a2
   10f78:	2685                	addiw	a3,a3,1
   10f7a:	00c33423          	sd	a2,8(t1)
   10f7e:	00b33023          	sd	a1,0(t1)
   10f82:	0006861b          	sext.w	a2,a3
   10f86:	10d12c23          	sw	a3,280(sp)
   10f8a:	f23e                	sd	a5,288(sp)
   10f8c:	469d                	li	a3,7
   10f8e:	0341                	addi	t1,t1,16
   10f90:	3ac6c3e3          	blt	a3,a2,11b36 <_vfprintf_r+0x17ca>
   10f94:	7682                	ld	a3,32(sp)
   10f96:	00dc8833          	add	a6,s9,a3
   10f9a:	41880bb3          	sub	s7,a6,s8
   10f9e:	9e99                	subw	a3,a3,a4
   10fa0:	000b861b          	sext.w	a2,s7
   10fa4:	00c6d363          	bge	a3,a2,10faa <_vfprintf_r+0xc3e>
   10fa8:	8bb6                	mv	s7,a3
   10faa:	2b81                	sext.w	s7,s7
   10fac:	03705263          	blez	s7,10fd0 <_vfprintf_r+0xc64>
   10fb0:	11812703          	lw	a4,280(sp)
   10fb4:	97de                	add	a5,a5,s7
   10fb6:	01833023          	sd	s8,0(t1)
   10fba:	0017061b          	addiw	a2,a4,1
   10fbe:	01733423          	sd	s7,8(t1)
   10fc2:	f23e                	sd	a5,288(sp)
   10fc4:	10c12c23          	sw	a2,280(sp)
   10fc8:	471d                	li	a4,7
   10fca:	0341                	addi	t1,t1,16
   10fcc:	38c74fe3          	blt	a4,a2,11b6a <_vfprintf_r+0x17fe>
   10fd0:	fffbc713          	not	a4,s7
   10fd4:	977d                	srai	a4,a4,0x3f
   10fd6:	00ebfbb3          	and	s7,s7,a4
   10fda:	41768bbb          	subw	s7,a3,s7
   10fde:	e1705163          	blez	s7,105e0 <_vfprintf_r+0x274>
   10fe2:	68f1                	lui	a7,0x1c
   10fe4:	46c1                	li	a3,16
   10fe6:	11812703          	lw	a4,280(sp)
   10fea:	5b088d93          	addi	s11,a7,1456 # 1c5b0 <zeroes.0>
   10fee:	4cc1                	li	s9,16
   10ff0:	4c1d                	li	s8,7
   10ff2:	0176c663          	blt	a3,s7,10ffe <_vfprintf_r+0xc92>
   10ff6:	a955                	j	114aa <_vfprintf_r+0x113e>
   10ff8:	3bc1                	addiw	s7,s7,-16
   10ffa:	4b7cd863          	bge	s9,s7,114aa <_vfprintf_r+0x113e>
   10ffe:	2705                	addiw	a4,a4,1
   11000:	07c1                	addi	a5,a5,16
   11002:	01b33023          	sd	s11,0(t1)
   11006:	01933423          	sd	s9,8(t1)
   1100a:	f23e                	sd	a5,288(sp)
   1100c:	10e12c23          	sw	a4,280(sp)
   11010:	0341                	addi	t1,t1,16
   11012:	feec53e3          	bge	s8,a4,10ff8 <_vfprintf_r+0xc8c>
   11016:	0a10                	addi	a2,sp,272
   11018:	85ca                	mv	a1,s2
   1101a:	8552                	mv	a0,s4
   1101c:	703060ef          	jal	ra,17f1e <__sprint_r>
   11020:	d80516e3          	bnez	a0,10dac <_vfprintf_r+0xa40>
   11024:	7792                	ld	a5,288(sp)
   11026:	11812703          	lw	a4,280(sp)
   1102a:	835a                	mv	t1,s6
   1102c:	b7f1                	j	10ff8 <_vfprintf_r+0xc8c>
   1102e:	0014f593          	andi	a1,s1,1
   11032:	800592e3          	bnez	a1,10836 <_vfprintf_r+0x4ca>
   11036:	00c33423          	sd	a2,8(t1)
   1103a:	f26a                	sd	s10,288(sp)
   1103c:	11712c23          	sw	s7,280(sp)
   11040:	469d                	li	a3,7
   11042:	8576dde3          	bge	a3,s7,1089c <_vfprintf_r+0x530>
   11046:	0a10                	addi	a2,sp,272
   11048:	85ca                	mv	a1,s2
   1104a:	8552                	mv	a0,s4
   1104c:	6d3060ef          	jal	ra,17f1e <__sprint_r>
   11050:	d4051ee3          	bnez	a0,10dac <_vfprintf_r+0xa40>
   11054:	7d12                	ld	s10,288(sp)
   11056:	11812b83          	lw	s7,280(sp)
   1105a:	8c5a                	mv	s8,s6
   1105c:	841ff06f          	j	1089c <_vfprintf_r+0x530>
   11060:	82d05ee3          	blez	a3,1089c <_vfprintf_r+0x530>
   11064:	68f1                	lui	a7,0x1c
   11066:	4641                	li	a2,16
   11068:	5b088d93          	addi	s11,a7,1456 # 1c5b0 <zeroes.0>
   1106c:	4841                	li	a6,16
   1106e:	4c9d                	li	s9,7
   11070:	00d64663          	blt	a2,a3,1107c <_vfprintf_r+0xd10>
   11074:	a159                	j	114fa <_vfprintf_r+0x118e>
   11076:	36c1                	addiw	a3,a3,-16
   11078:	48d85163          	bge	a6,a3,114fa <_vfprintf_r+0x118e>
   1107c:	2b85                	addiw	s7,s7,1
   1107e:	0d41                	addi	s10,s10,16
   11080:	01bc3023          	sd	s11,0(s8)
   11084:	010c3423          	sd	a6,8(s8)
   11088:	f26a                	sd	s10,288(sp)
   1108a:	11712c23          	sw	s7,280(sp)
   1108e:	0c41                	addi	s8,s8,16
   11090:	ff7cd3e3          	bge	s9,s7,11076 <_vfprintf_r+0xd0a>
   11094:	0a10                	addi	a2,sp,272
   11096:	85ca                	mv	a1,s2
   11098:	8552                	mv	a0,s4
   1109a:	f836                	sd	a3,48(sp)
   1109c:	683060ef          	jal	ra,17f1e <__sprint_r>
   110a0:	d00516e3          	bnez	a0,10dac <_vfprintf_r+0xa40>
   110a4:	7d12                	ld	s10,288(sp)
   110a6:	11812b83          	lw	s7,280(sp)
   110aa:	76c2                	ld	a3,48(sp)
   110ac:	8c5a                	mv	s8,s6
   110ae:	4841                	li	a6,16
   110b0:	b7d9                	j	11076 <_vfprintf_r+0xd0a>
   110b2:	010df793          	andi	a5,s11,16
   110b6:	e3b9                	bnez	a5,110fc <_vfprintf_r+0xd90>
   110b8:	66c2                	ld	a3,16(sp)
   110ba:	040df793          	andi	a5,s11,64
   110be:	0006a983          	lw	s3,0(a3)
   110c2:	4c078363          	beqz	a5,11588 <_vfprintf_r+0x121c>
   110c6:	19c2                	slli	s3,s3,0x30
   110c8:	0309d993          	srli	s3,s3,0x30
   110cc:	e83a                	sd	a4,16(sp)
   110ce:	4785                	li	a5,1
   110d0:	e58ff06f          	j	10728 <_vfprintf_r+0x3bc>
   110d4:	0014f713          	andi	a4,s1,1
   110d8:	d0070463          	beqz	a4,105e0 <_vfprintf_r+0x274>
   110dc:	be15                	j	10c10 <_vfprintf_r+0x8a4>
   110de:	00044e03          	lbu	t3,0(s0)
   110e2:	e83e                	sd	a5,16(sp)
   110e4:	bd8ff06f          	j	104bc <_vfprintf_r+0x150>
   110e8:	67a2                	ld	a5,8(sp)
   110ea:	8ca2                	mv	s9,s0
   110ec:	e31c                	sd	a5,0(a4)
   110ee:	d24ff06f          	j	10612 <_vfprintf_r+0x2a6>
   110f2:	67c2                	ld	a5,16(sp)
   110f4:	639c                	ld	a5,0(a5)
   110f6:	89be                	mv	s3,a5
   110f8:	dcaff06f          	j	106c2 <_vfprintf_r+0x356>
   110fc:	67c2                	ld	a5,16(sp)
   110fe:	e83a                	sd	a4,16(sp)
   11100:	0007b983          	ld	s3,0(a5)
   11104:	4785                	li	a5,1
   11106:	e22ff06f          	j	10728 <_vfprintf_r+0x3bc>
   1110a:	67c2                	ld	a5,16(sp)
   1110c:	0007b983          	ld	s3,0(a5)
   11110:	e0eff06f          	j	1071e <_vfprintf_r+0x3b2>
   11114:	67c2                	ld	a5,16(sp)
   11116:	ec1a                	sd	t1,24(sp)
   11118:	2388                	fld	fa0,0(a5)
   1111a:	07a1                	addi	a5,a5,8
   1111c:	e83e                	sd	a5,16(sp)
   1111e:	6cb0a0ef          	jal	ra,1bfe8 <__extenddftf2>
   11122:	6362                	ld	t1,24(sp)
   11124:	87aa                	mv	a5,a0
   11126:	e70ff06f          	j	10796 <_vfprintf_r+0x42a>
   1112a:	e83a                	sd	a4,16(sp)
   1112c:	47a5                	li	a5,9
   1112e:	8da6                	mv	s11,s1
   11130:	c937fde3          	bgeu	a5,s3,10dca <_vfprintf_r+0xa5e>
   11134:	18c10b93          	addi	s7,sp,396
   11138:	400df713          	andi	a4,s11,1024
   1113c:	f002                	sd	zero,32(sp)
   1113e:	865e                	mv	a2,s7
   11140:	44a9                	li	s1,10
   11142:	46a5                	li	a3,9
   11144:	0ff00893          	li	a7,255
   11148:	a039                	j	11156 <_vfprintf_r+0xdea>
   1114a:	0299d7b3          	divu	a5,s3,s1
   1114e:	a736f4e3          	bgeu	a3,s3,10bb6 <_vfprintf_r+0x84a>
   11152:	89be                	mv	s3,a5
   11154:	8666                	mv	a2,s9
   11156:	7582                	ld	a1,32(sp)
   11158:	fff60c93          	addi	s9,a2,-1
   1115c:	2585                	addiw	a1,a1,1
   1115e:	f02e                	sd	a1,32(sp)
   11160:	0299f7b3          	remu	a5,s3,s1
   11164:	0307879b          	addiw	a5,a5,48
   11168:	fef60fa3          	sb	a5,-1(a2)
   1116c:	df79                	beqz	a4,1114a <_vfprintf_r+0xdde>
   1116e:	7786                	ld	a5,96(sp)
   11170:	0007c783          	lbu	a5,0(a5)
   11174:	fcf59be3          	bne	a1,a5,1114a <_vfprintf_r+0xdde>
   11178:	fd1789e3          	beq	a5,a7,1114a <_vfprintf_r+0xdde>
   1117c:	a336fde3          	bgeu	a3,s3,10bb6 <_vfprintf_r+0x84a>
   11180:	678a                	ld	a5,128(sp)
   11182:	65aa                	ld	a1,136(sp)
   11184:	f83a                	sd	a4,48(sp)
   11186:	40fc8cb3          	sub	s9,s9,a5
   1118a:	863e                	mv	a2,a5
   1118c:	8566                	mv	a0,s9
   1118e:	ec1a                	sd	t1,24(sp)
   11190:	22c050ef          	jal	ra,163bc <strncpy>
   11194:	7706                	ld	a4,96(sp)
   11196:	0299d7b3          	divu	a5,s3,s1
   1119a:	6362                	ld	t1,24(sp)
   1119c:	00174603          	lbu	a2,1(a4)
   111a0:	f002                	sd	zero,32(sp)
   111a2:	46a5                	li	a3,9
   111a4:	00c03633          	snez	a2,a2
   111a8:	9732                	add	a4,a4,a2
   111aa:	f0ba                	sd	a4,96(sp)
   111ac:	0ff00893          	li	a7,255
   111b0:	7742                	ld	a4,48(sp)
   111b2:	b745                	j	11152 <_vfprintf_r+0xde6>
   111b4:	00068b9b          	sext.w	s7,a3
   111b8:	d77042e3          	bgtz	s7,10f1c <_vfprintf_r+0xbb0>
   111bc:	b341                	j	10f3c <_vfprintf_r+0xbd0>
   111be:	8da6                	mv	s11,s1
   111c0:	ba21                	j	10ad8 <_vfprintf_r+0x76c>
   111c2:	67f1                	lui	a5,0x1c
   111c4:	32878793          	addi	a5,a5,808 # 1c328 <__clzdi2+0x5c>
   111c8:	f43e                	sd	a5,40(sp)
   111ca:	66c2                	ld	a3,16(sp)
   111cc:	0204f793          	andi	a5,s1,32
   111d0:	00868713          	addi	a4,a3,8
   111d4:	20078363          	beqz	a5,113da <_vfprintf_r+0x106e>
   111d8:	0006b983          	ld	s3,0(a3)
   111dc:	0014f793          	andi	a5,s1,1
   111e0:	cf81                	beqz	a5,111f8 <_vfprintf_r+0xe8c>
   111e2:	00098b63          	beqz	s3,111f8 <_vfprintf_r+0xe8c>
   111e6:	0024e493          	ori	s1,s1,2
   111ea:	03000793          	li	a5,48
   111ee:	0ef10023          	sb	a5,224(sp)
   111f2:	0fa100a3          	sb	s10,225(sp)
   111f6:	2481                	sext.w	s1,s1
   111f8:	bff4fd93          	andi	s11,s1,-1025
   111fc:	2d81                	sext.w	s11,s11
   111fe:	e83a                	sd	a4,16(sp)
   11200:	4789                	li	a5,2
   11202:	d26ff06f          	j	10728 <_vfprintf_r+0x3bc>
   11206:	2004e493          	ori	s1,s1,512
   1120a:	00144e03          	lbu	t3,1(s0)
   1120e:	2481                	sext.w	s1,s1
   11210:	0405                	addi	s0,s0,1
   11212:	aaaff06f          	j	104bc <_vfprintf_r+0x150>
   11216:	67f1                	lui	a5,0x1c
   11218:	34078793          	addi	a5,a5,832 # 1c340 <__clzdi2+0x74>
   1121c:	f43e                	sd	a5,40(sp)
   1121e:	b775                	j	111ca <_vfprintf_r+0xe5e>
   11220:	0204e493          	ori	s1,s1,32
   11224:	00144e03          	lbu	t3,1(s0)
   11228:	2481                	sext.w	s1,s1
   1122a:	0405                	addi	s0,s0,1
   1122c:	a90ff06f          	j	104bc <_vfprintf_r+0x150>
   11230:	0a10                	addi	a2,sp,272
   11232:	85ca                	mv	a1,s2
   11234:	8552                	mv	a0,s4
   11236:	4e9060ef          	jal	ra,17f1e <__sprint_r>
   1123a:	b60519e3          	bnez	a0,10dac <_vfprintf_r+0xa40>
   1123e:	7792                	ld	a5,288(sp)
   11240:	835a                	mv	t1,s6
   11242:	bad5                	j	10c36 <_vfprintf_r+0x8ca>
   11244:	4799                	li	a5,6
   11246:	000c0b9b          	sext.w	s7,s8
   1124a:	5b87ec63          	bltu	a5,s8,11802 <_vfprintf_r+0x1496>
   1124e:	6871                	lui	a6,0x1c
   11250:	89de                	mv	s3,s7
   11252:	e86e                	sd	s11,16(sp)
   11254:	35880c93          	addi	s9,a6,856 # 1c358 <__clzdi2+0x8c>
   11258:	ad0ff06f          	j	10528 <_vfprintf_r+0x1bc>
   1125c:	68f1                	lui	a7,0x1c
   1125e:	46c1                	li	a3,16
   11260:	11812703          	lw	a4,280(sp)
   11264:	5b088d93          	addi	s11,a7,1456 # 1c5b0 <zeroes.0>
   11268:	4d41                	li	s10,16
   1126a:	4c1d                	li	s8,7
   1126c:	0176c663          	blt	a3,s7,11278 <_vfprintf_r+0xf0c>
   11270:	aee1                	j	11648 <_vfprintf_r+0x12dc>
   11272:	3bc1                	addiw	s7,s7,-16
   11274:	3d7d5a63          	bge	s10,s7,11648 <_vfprintf_r+0x12dc>
   11278:	2705                	addiw	a4,a4,1
   1127a:	07c1                	addi	a5,a5,16
   1127c:	01b33023          	sd	s11,0(t1)
   11280:	01a33423          	sd	s10,8(t1)
   11284:	f23e                	sd	a5,288(sp)
   11286:	10e12c23          	sw	a4,280(sp)
   1128a:	0341                	addi	t1,t1,16
   1128c:	feec53e3          	bge	s8,a4,11272 <_vfprintf_r+0xf06>
   11290:	0a10                	addi	a2,sp,272
   11292:	85ca                	mv	a1,s2
   11294:	8552                	mv	a0,s4
   11296:	489060ef          	jal	ra,17f1e <__sprint_r>
   1129a:	b00519e3          	bnez	a0,10dac <_vfprintf_r+0xa40>
   1129e:	7792                	ld	a5,288(sp)
   112a0:	11812703          	lw	a4,280(sp)
   112a4:	835a                	mv	t1,s6
   112a6:	b7f1                	j	11272 <_vfprintf_r+0xf06>
   112a8:	07800713          	li	a4,120
   112ac:	0024e793          	ori	a5,s1,2
   112b0:	03000693          	li	a3,48
   112b4:	2781                	sext.w	a5,a5
   112b6:	0ee100a3          	sb	a4,225(sp)
   112ba:	0ed10023          	sb	a3,224(sp)
   112be:	06300713          	li	a4,99
   112c2:	f53e                	sd	a5,168(sp)
   112c4:	ec02                	sd	zero,24(sp)
   112c6:	12810c93          	addi	s9,sp,296
   112ca:	6b874a63          	blt	a4,s8,1197e <_vfprintf_r+0x1612>
   112ce:	69b2                	ld	s3,264(sp)
   112d0:	fdfd7793          	andi	a5,s10,-33
   112d4:	1024e493          	ori	s1,s1,258
   112d8:	ecbe                	sd	a5,88(sp)
   112da:	e582                	sd	zero,200(sp)
   112dc:	6b92                	ld	s7,256(sp)
   112de:	2481                	sext.w	s1,s1
   112e0:	6609ca63          	bltz	s3,11954 <_vfprintf_r+0x15e8>
   112e4:	06100793          	li	a5,97
   112e8:	1efd0ce3          	beq	s10,a5,11ce0 <_vfprintf_r+0x1974>
   112ec:	fbfd079b          	addiw	a5,s10,-65
   112f0:	0007869b          	sext.w	a3,a5
   112f4:	02500713          	li	a4,37
   112f8:	00d76c63          	bltu	a4,a3,11310 <_vfprintf_r+0xfa4>
   112fc:	02079713          	slli	a4,a5,0x20
   11300:	01e75793          	srli	a5,a4,0x1e
   11304:	6771                	lui	a4,0x1c
   11306:	4d070713          	addi	a4,a4,1232 # 1c4d0 <__clzdi2+0x204>
   1130a:	97ba                	add	a5,a5,a4
   1130c:	439c                	lw	a5,0(a5)
   1130e:	8782                	jr	a5
   11310:	8de2                	mv	s11,s8
   11312:	4689                	li	a3,2
   11314:	11bc                	addi	a5,sp,232
   11316:	876e                	mv	a4,s11
   11318:	0f810893          	addi	a7,sp,248
   1131c:	0ec10813          	addi	a6,sp,236
   11320:	85de                	mv	a1,s7
   11322:	864e                	mv	a2,s3
   11324:	8552                	mv	a0,s4
   11326:	f01a                	sd	t1,32(sp)
   11328:	031020ef          	jal	ra,13b58 <_ldtoa_r>
   1132c:	6766                	ld	a4,88(sp)
   1132e:	04700793          	li	a5,71
   11332:	7302                	ld	t1,32(sp)
   11334:	8caa                	mv	s9,a0
   11336:	7cf70463          	beq	a4,a5,11afe <_vfprintf_r+0x1792>
   1133a:	04600793          	li	a5,70
   1133e:	01b508b3          	add	a7,a0,s11
   11342:	00f71a63          	bne	a4,a5,11356 <_vfprintf_r+0xfea>
   11346:	00054703          	lbu	a4,0(a0)
   1134a:	03000793          	li	a5,48
   1134e:	64f70463          	beq	a4,a5,11996 <_vfprintf_r+0x162a>
   11352:	572e                	lw	a4,232(sp)
   11354:	98ba                	add	a7,a7,a4
   11356:	4681                	li	a3,0
   11358:	4601                	li	a2,0
   1135a:	855e                	mv	a0,s7
   1135c:	85ce                	mv	a1,s3
   1135e:	f846                	sd	a7,48(sp)
   11360:	f01a                	sd	t1,32(sp)
   11362:	301090ef          	jal	ra,1ae62 <__eqtf2>
   11366:	78c2                	ld	a7,48(sp)
   11368:	7302                	ld	t1,32(sp)
   1136a:	86c6                	mv	a3,a7
   1136c:	e929                	bnez	a0,113be <_vfprintf_r+0x1052>
   1136e:	419687bb          	subw	a5,a3,s9
   11372:	f03e                	sd	a5,32(sp)
   11374:	572e                	lw	a4,232(sp)
   11376:	04700793          	li	a5,71
   1137a:	e4ba                	sd	a4,72(sp)
   1137c:	6766                	ld	a4,88(sp)
   1137e:	24f70963          	beq	a4,a5,115d0 <_vfprintf_r+0x1264>
   11382:	6766                	ld	a4,88(sp)
   11384:	04600793          	li	a5,70
   11388:	4af71163          	bne	a4,a5,1182a <_vfprintf_r+0x14be>
   1138c:	77aa                	ld	a5,168(sp)
   1138e:	6726                	ld	a4,72(sp)
   11390:	8b85                	andi	a5,a5,1
   11392:	00fc67b3          	or	a5,s8,a5
   11396:	20e055e3          	blez	a4,11da0 <_vfprintf_r+0x1a34>
   1139a:	1e079ae3          	bnez	a5,11d8e <_vfprintf_r+0x1a22>
   1139e:	6ba6                	ld	s7,72(sp)
   113a0:	06600d13          	li	s10,102
   113a4:	77aa                	ld	a5,168(sp)
   113a6:	4007f793          	andi	a5,a5,1024
   113aa:	16079be3          	bnez	a5,11d20 <_vfprintf_r+0x19b4>
   113ae:	fffbc993          	not	s3,s7
   113b2:	43f9d993          	srai	s3,s3,0x3f
   113b6:	013bf9b3          	and	s3,s7,s3
   113ba:	2981                	sext.w	s3,s3
   113bc:	aca1                	j	11614 <_vfprintf_r+0x12a8>
   113be:	76ee                	ld	a3,248(sp)
   113c0:	fb16f7e3          	bgeu	a3,a7,1136e <_vfprintf_r+0x1002>
   113c4:	03000713          	li	a4,48
   113c8:	00168793          	addi	a5,a3,1
   113cc:	fdbe                	sd	a5,248(sp)
   113ce:	00e68023          	sb	a4,0(a3)
   113d2:	76ee                	ld	a3,248(sp)
   113d4:	ff16eae3          	bltu	a3,a7,113c8 <_vfprintf_r+0x105c>
   113d8:	bf59                	j	1136e <_vfprintf_r+0x1002>
   113da:	0104f793          	andi	a5,s1,16
   113de:	c3c5                	beqz	a5,1147e <_vfprintf_r+0x1112>
   113e0:	67c2                	ld	a5,16(sp)
   113e2:	0007b983          	ld	s3,0(a5)
   113e6:	bbdd                	j	111dc <_vfprintf_r+0xe70>
   113e8:	0a10                	addi	a2,sp,272
   113ea:	85ca                	mv	a1,s2
   113ec:	8552                	mv	a0,s4
   113ee:	331060ef          	jal	ra,17f1e <__sprint_r>
   113f2:	9a051de3          	bnez	a0,10dac <_vfprintf_r+0xa40>
   113f6:	7d12                	ld	s10,288(sp)
   113f8:	11812b83          	lw	s7,280(sp)
   113fc:	8c5a                	mv	s8,s6
   113fe:	c4aff06f          	j	10848 <_vfprintf_r+0x4dc>
   11402:	0a10                	addi	a2,sp,272
   11404:	85ca                	mv	a1,s2
   11406:	8552                	mv	a0,s4
   11408:	317060ef          	jal	ra,17f1e <__sprint_r>
   1140c:	9a0510e3          	bnez	a0,10dac <_vfprintf_r+0xa40>
   11410:	7d12                	ld	s10,288(sp)
   11412:	11812b83          	lw	s7,280(sp)
   11416:	8c5a                	mv	s8,s6
   11418:	c4eff06f          	j	10866 <_vfprintf_r+0x4fa>
   1141c:	11812703          	lw	a4,280(sp)
   11420:	66f1                	lui	a3,0x1c
   11422:	36068693          	addi	a3,a3,864 # 1c360 <__clzdi2+0x94>
   11426:	2705                	addiw	a4,a4,1
   11428:	00d33023          	sd	a3,0(t1)
   1142c:	0785                	addi	a5,a5,1
   1142e:	4685                	li	a3,1
   11430:	00d33423          	sd	a3,8(t1)
   11434:	10e12c23          	sw	a4,280(sp)
   11438:	0007069b          	sext.w	a3,a4
   1143c:	f23e                	sd	a5,288(sp)
   1143e:	471d                	li	a4,7
   11440:	0341                	addi	t1,t1,16
   11442:	38d74663          	blt	a4,a3,117ce <_vfprintf_r+0x1462>
   11446:	0e061a63          	bnez	a2,1153a <_vfprintf_r+0x11ce>
   1144a:	7682                	ld	a3,32(sp)
   1144c:	0014f713          	andi	a4,s1,1
   11450:	8f55                	or	a4,a4,a3
   11452:	98070763          	beqz	a4,105e0 <_vfprintf_r+0x274>
   11456:	76a6                	ld	a3,104(sp)
   11458:	11812703          	lw	a4,280(sp)
   1145c:	7646                	ld	a2,112(sp)
   1145e:	97b6                	add	a5,a5,a3
   11460:	2705                	addiw	a4,a4,1
   11462:	00d33423          	sd	a3,8(t1)
   11466:	10e12c23          	sw	a4,280(sp)
   1146a:	0007069b          	sext.w	a3,a4
   1146e:	00c33023          	sd	a2,0(t1)
   11472:	f23e                	sd	a5,288(sp)
   11474:	471d                	li	a4,7
   11476:	4ed74763          	blt	a4,a3,11964 <_vfprintf_r+0x15f8>
   1147a:	0341                	addi	t1,t1,16
   1147c:	a0e5                	j	11564 <_vfprintf_r+0x11f8>
   1147e:	66c2                	ld	a3,16(sp)
   11480:	0404f793          	andi	a5,s1,64
   11484:	0006a983          	lw	s3,0(a3)
   11488:	10078a63          	beqz	a5,1159c <_vfprintf_r+0x1230>
   1148c:	19c2                	slli	s3,s3,0x30
   1148e:	0309d993          	srli	s3,s3,0x30
   11492:	b3a9                	j	111dc <_vfprintf_r+0xe70>
   11494:	0a10                	addi	a2,sp,272
   11496:	85ca                	mv	a1,s2
   11498:	8552                	mv	a0,s4
   1149a:	285060ef          	jal	ra,17f1e <__sprint_r>
   1149e:	900517e3          	bnez	a0,10dac <_vfprintf_r+0xa40>
   114a2:	7792                	ld	a5,288(sp)
   114a4:	835a                	mv	t1,s6
   114a6:	f62ff06f          	j	10c08 <_vfprintf_r+0x89c>
   114aa:	0017069b          	addiw	a3,a4,1
   114ae:	8736                	mv	a4,a3
   114b0:	97de                	add	a5,a5,s7
   114b2:	01b33023          	sd	s11,0(t1)
   114b6:	918ff06f          	j	105ce <_vfprintf_r+0x262>
   114ba:	6512                	ld	a0,256(sp)
   114bc:	65b2                	ld	a1,264(sp)
   114be:	4601                	li	a2,0
   114c0:	4681                	li	a3,0
   114c2:	2e7090ef          	jal	ra,1afa8 <__letf2>
   114c6:	6362                	ld	t1,24(sp)
   114c8:	66054263          	bltz	a0,11b2c <_vfprintf_r+0x17c0>
   114cc:	0df14783          	lbu	a5,223(sp)
   114d0:	04700713          	li	a4,71
   114d4:	31a75863          	bge	a4,s10,117e4 <_vfprintf_r+0x1478>
   114d8:	6871                	lui	a6,0x1c
   114da:	31080c93          	addi	s9,a6,784 # 1c310 <__clzdi2+0x44>
   114de:	f7f4f493          	andi	s1,s1,-129
   114e2:	ec02                	sd	zero,24(sp)
   114e4:	e882                	sd	zero,80(sp)
   114e6:	ec82                	sd	zero,88(sp)
   114e8:	e482                	sd	zero,72(sp)
   114ea:	2481                	sext.w	s1,s1
   114ec:	498d                	li	s3,3
   114ee:	4b8d                	li	s7,3
   114f0:	4c01                	li	s8,0
   114f2:	a0079863          	bnez	a5,10702 <_vfprintf_r+0x396>
   114f6:	83cff06f          	j	10532 <_vfprintf_r+0x1c6>
   114fa:	2b85                	addiw	s7,s7,1
   114fc:	865e                	mv	a2,s7
   114fe:	9d36                	add	s10,s10,a3
   11500:	01bc3023          	sd	s11,0(s8)
   11504:	b86ff06f          	j	1088a <_vfprintf_r+0x51e>
   11508:	8566                	mv	a0,s9
   1150a:	f81a                	sd	t1,48(sp)
   1150c:	621040ef          	jal	ra,1632c <strlen>
   11510:	00050b9b          	sext.w	s7,a0
   11514:	0df14783          	lbu	a5,223(sp)
   11518:	fffbc993          	not	s3,s7
   1151c:	43f9d993          	srai	s3,s3,0x3f
   11520:	e86e                	sd	s11,16(sp)
   11522:	ec02                	sd	zero,24(sp)
   11524:	e882                	sd	zero,80(sp)
   11526:	ec82                	sd	zero,88(sp)
   11528:	e482                	sd	zero,72(sp)
   1152a:	7342                	ld	t1,48(sp)
   1152c:	0179f9b3          	and	s3,s3,s7
   11530:	4c01                	li	s8,0
   11532:	9c079863          	bnez	a5,10702 <_vfprintf_r+0x396>
   11536:	ffdfe06f          	j	10532 <_vfprintf_r+0x1c6>
   1153a:	76a6                	ld	a3,104(sp)
   1153c:	11812703          	lw	a4,280(sp)
   11540:	75c6                	ld	a1,112(sp)
   11542:	97b6                	add	a5,a5,a3
   11544:	2705                	addiw	a4,a4,1
   11546:	00d33423          	sd	a3,8(t1)
   1154a:	00b33023          	sd	a1,0(t1)
   1154e:	0007069b          	sext.w	a3,a4
   11552:	10e12c23          	sw	a4,280(sp)
   11556:	f23e                	sd	a5,288(sp)
   11558:	471d                	li	a4,7
   1155a:	0341                	addi	t1,t1,16
   1155c:	40d74463          	blt	a4,a3,11964 <_vfprintf_r+0x15f8>
   11560:	62064863          	bltz	a2,11b90 <_vfprintf_r+0x1824>
   11564:	7702                	ld	a4,32(sp)
   11566:	0016861b          	addiw	a2,a3,1
   1156a:	01933023          	sd	s9,0(t1)
   1156e:	97ba                	add	a5,a5,a4
   11570:	00e33423          	sd	a4,8(t1)
   11574:	f23e                	sd	a5,288(sp)
   11576:	10c12c23          	sw	a2,280(sp)
   1157a:	471d                	li	a4,7
   1157c:	00c74463          	blt	a4,a2,11584 <_vfprintf_r+0x1218>
   11580:	85eff06f          	j	105de <_vfprintf_r+0x272>
   11584:	b3cff06f          	j	108c0 <_vfprintf_r+0x554>
   11588:	200df793          	andi	a5,s11,512
   1158c:	38078f63          	beqz	a5,1192a <_vfprintf_r+0x15be>
   11590:	0ff9f993          	zext.b	s3,s3
   11594:	e83a                	sd	a4,16(sp)
   11596:	4785                	li	a5,1
   11598:	990ff06f          	j	10728 <_vfprintf_r+0x3bc>
   1159c:	2004f793          	andi	a5,s1,512
   115a0:	38078163          	beqz	a5,11922 <_vfprintf_r+0x15b6>
   115a4:	0ff9f993          	zext.b	s3,s3
   115a8:	b915                	j	111dc <_vfprintf_r+0xe70>
   115aa:	2004f793          	andi	a5,s1,512
   115ae:	36078563          	beqz	a5,11918 <_vfprintf_r+0x15ac>
   115b2:	0ff9f993          	zext.b	s3,s3
   115b6:	968ff06f          	j	1071e <_vfprintf_r+0x3b2>
   115ba:	2004f793          	andi	a5,s1,512
   115be:	34078a63          	beqz	a5,11912 <_vfprintf_r+0x15a6>
   115c2:	0189999b          	slliw	s3,s3,0x18
   115c6:	4189d99b          	sraiw	s3,s3,0x18
   115ca:	87ce                	mv	a5,s3
   115cc:	8f6ff06f          	j	106c2 <_vfprintf_r+0x356>
   115d0:	6726                	ld	a4,72(sp)
   115d2:	57f5                	li	a5,-3
   115d4:	24f74763          	blt	a4,a5,11822 <_vfprintf_r+0x14b6>
   115d8:	24ec4563          	blt	s8,a4,11822 <_vfprintf_r+0x14b6>
   115dc:	7782                	ld	a5,32(sp)
   115de:	6726                	ld	a4,72(sp)
   115e0:	60f74263          	blt	a4,a5,11be4 <_vfprintf_r+0x1878>
   115e4:	77aa                	ld	a5,168(sp)
   115e6:	6726                	ld	a4,72(sp)
   115e8:	8b85                	andi	a5,a5,1
   115ea:	8bba                	mv	s7,a4
   115ec:	c781                	beqz	a5,115f4 <_vfprintf_r+0x1288>
   115ee:	77a6                	ld	a5,104(sp)
   115f0:	00e78bbb          	addw	s7,a5,a4
   115f4:	77aa                	ld	a5,168(sp)
   115f6:	4007f793          	andi	a5,a5,1024
   115fa:	c781                	beqz	a5,11602 <_vfprintf_r+0x1296>
   115fc:	67a6                	ld	a5,72(sp)
   115fe:	70f04f63          	bgtz	a5,11d1c <_vfprintf_r+0x19b0>
   11602:	fffbc993          	not	s3,s7
   11606:	43f9d993          	srai	s3,s3,0x3f
   1160a:	013bf9b3          	and	s3,s7,s3
   1160e:	2981                	sext.w	s3,s3
   11610:	06700d13          	li	s10,103
   11614:	e882                	sd	zero,80(sp)
   11616:	ec82                	sd	zero,88(sp)
   11618:	67ae                	ld	a5,200(sp)
   1161a:	4c078a63          	beqz	a5,11aee <_vfprintf_r+0x1782>
   1161e:	02d00793          	li	a5,45
   11622:	0cf10fa3          	sb	a5,223(sp)
   11626:	4c01                	li	s8,0
   11628:	2985                	addiw	s3,s3,1
   1162a:	f09fe06f          	j	10532 <_vfprintf_r+0x1c6>
   1162e:	67b2                	ld	a5,264(sp)
   11630:	3007cb63          	bltz	a5,11946 <_vfprintf_r+0x15da>
   11634:	0df14783          	lbu	a5,223(sp)
   11638:	04700713          	li	a4,71
   1163c:	55a75663          	bge	a4,s10,11b88 <_vfprintf_r+0x181c>
   11640:	6871                	lui	a6,0x1c
   11642:	32080c93          	addi	s9,a6,800 # 1c320 <__clzdi2+0x54>
   11646:	bd61                	j	114de <_vfprintf_r+0x1172>
   11648:	0017069b          	addiw	a3,a4,1
   1164c:	97de                	add	a5,a5,s7
   1164e:	01b33023          	sd	s11,0(t1)
   11652:	01733423          	sd	s7,8(t1)
   11656:	f23e                	sd	a5,288(sp)
   11658:	10d12c23          	sw	a3,280(sp)
   1165c:	471d                	li	a4,7
   1165e:	0341                	addi	t1,t1,16
   11660:	8ed758e3          	bge	a4,a3,10f50 <_vfprintf_r+0xbe4>
   11664:	0a10                	addi	a2,sp,272
   11666:	85ca                	mv	a1,s2
   11668:	8552                	mv	a0,s4
   1166a:	0b5060ef          	jal	ra,17f1e <__sprint_r>
   1166e:	f2051f63          	bnez	a0,10dac <_vfprintf_r+0xa40>
   11672:	7792                	ld	a5,288(sp)
   11674:	835a                	mv	t1,s6
   11676:	b8e9                	j	10f50 <_vfprintf_r+0xbe4>
   11678:	7702                	ld	a4,32(sp)
   1167a:	6ef1                	lui	t4,0x1c
   1167c:	4b9d                	li	s7,7
   1167e:	9766                	add	a4,a4,s9
   11680:	fc3a                	sd	a4,56(sp)
   11682:	6766                	ld	a4,88(sp)
   11684:	4dc1                	li	s11,16
   11686:	5b0e8d13          	addi	s10,t4,1456 # 1c5b0 <zeroes.0>
   1168a:	cb49                	beqz	a4,1171c <_vfprintf_r+0x13b0>
   1168c:	6746                	ld	a4,80(sp)
   1168e:	eb51                	bnez	a4,11722 <_vfprintf_r+0x13b6>
   11690:	7706                	ld	a4,96(sp)
   11692:	177d                	addi	a4,a4,-1
   11694:	f0ba                	sd	a4,96(sp)
   11696:	6766                	ld	a4,88(sp)
   11698:	377d                	addiw	a4,a4,-1
   1169a:	ecba                	sd	a4,88(sp)
   1169c:	668a                	ld	a3,128(sp)
   1169e:	11812703          	lw	a4,280(sp)
   116a2:	662a                	ld	a2,136(sp)
   116a4:	97b6                	add	a5,a5,a3
   116a6:	2705                	addiw	a4,a4,1
   116a8:	00d33423          	sd	a3,8(t1)
   116ac:	00c33023          	sd	a2,0(t1)
   116b0:	f23e                	sd	a5,288(sp)
   116b2:	0007069b          	sext.w	a3,a4
   116b6:	10e12c23          	sw	a4,280(sp)
   116ba:	0341                	addi	t1,t1,16
   116bc:	0cdbce63          	blt	s7,a3,11798 <_vfprintf_r+0x142c>
   116c0:	7706                	ld	a4,96(sp)
   116c2:	00074603          	lbu	a2,0(a4)
   116c6:	7762                	ld	a4,56(sp)
   116c8:	418706b3          	sub	a3,a4,s8
   116cc:	0006859b          	sext.w	a1,a3
   116d0:	0006071b          	sext.w	a4,a2
   116d4:	00b65363          	bge	a2,a1,116da <_vfprintf_r+0x136e>
   116d8:	86ba                	mv	a3,a4
   116da:	2681                	sext.w	a3,a3
   116dc:	02d05663          	blez	a3,11708 <_vfprintf_r+0x139c>
   116e0:	11812703          	lw	a4,280(sp)
   116e4:	97b6                	add	a5,a5,a3
   116e6:	01833023          	sd	s8,0(t1)
   116ea:	0017061b          	addiw	a2,a4,1
   116ee:	00d33423          	sd	a3,8(t1)
   116f2:	f23e                	sd	a5,288(sp)
   116f4:	10c12c23          	sw	a2,280(sp)
   116f8:	0acbca63          	blt	s7,a2,117ac <_vfprintf_r+0x1440>
   116fc:	7706                	ld	a4,96(sp)
   116fe:	0341                	addi	t1,t1,16
   11700:	00074603          	lbu	a2,0(a4)
   11704:	0006071b          	sext.w	a4,a2
   11708:	fff6c593          	not	a1,a3
   1170c:	95fd                	srai	a1,a1,0x3f
   1170e:	8eed                	and	a3,a3,a1
   11710:	9f15                	subw	a4,a4,a3
   11712:	00e04c63          	bgtz	a4,1172a <_vfprintf_r+0x13be>
   11716:	9c32                	add	s8,s8,a2
   11718:	6766                	ld	a4,88(sp)
   1171a:	fb2d                	bnez	a4,1168c <_vfprintf_r+0x1320>
   1171c:	6746                	ld	a4,80(sp)
   1171e:	3c070163          	beqz	a4,11ae0 <_vfprintf_r+0x1774>
   11722:	6746                	ld	a4,80(sp)
   11724:	377d                	addiw	a4,a4,-1
   11726:	e8ba                	sd	a4,80(sp)
   11728:	bf95                	j	1169c <_vfprintf_r+0x1330>
   1172a:	11812683          	lw	a3,280(sp)
   1172e:	00edc663          	blt	s11,a4,1173a <_vfprintf_r+0x13ce>
   11732:	a081                	j	11772 <_vfprintf_r+0x1406>
   11734:	3741                	addiw	a4,a4,-16
   11736:	02edde63          	bge	s11,a4,11772 <_vfprintf_r+0x1406>
   1173a:	2685                	addiw	a3,a3,1
   1173c:	07c1                	addi	a5,a5,16
   1173e:	01a33023          	sd	s10,0(t1)
   11742:	01b33423          	sd	s11,8(t1)
   11746:	f23e                	sd	a5,288(sp)
   11748:	10d12c23          	sw	a3,280(sp)
   1174c:	0341                	addi	t1,t1,16
   1174e:	fedbd3e3          	bge	s7,a3,11734 <_vfprintf_r+0x13c8>
   11752:	0a10                	addi	a2,sp,272
   11754:	85ca                	mv	a1,s2
   11756:	8552                	mv	a0,s4
   11758:	f83a                	sd	a4,48(sp)
   1175a:	7c4060ef          	jal	ra,17f1e <__sprint_r>
   1175e:	e4051763          	bnez	a0,10dac <_vfprintf_r+0xa40>
   11762:	7742                	ld	a4,48(sp)
   11764:	7792                	ld	a5,288(sp)
   11766:	11812683          	lw	a3,280(sp)
   1176a:	3741                	addiw	a4,a4,-16
   1176c:	835a                	mv	t1,s6
   1176e:	fcedc6e3          	blt	s11,a4,1173a <_vfprintf_r+0x13ce>
   11772:	2685                	addiw	a3,a3,1
   11774:	97ba                	add	a5,a5,a4
   11776:	00e33423          	sd	a4,8(t1)
   1177a:	01a33023          	sd	s10,0(t1)
   1177e:	f23e                	sd	a5,288(sp)
   11780:	0006871b          	sext.w	a4,a3
   11784:	10d12c23          	sw	a3,280(sp)
   11788:	38ebc463          	blt	s7,a4,11b10 <_vfprintf_r+0x17a4>
   1178c:	7706                	ld	a4,96(sp)
   1178e:	0341                	addi	t1,t1,16
   11790:	00074603          	lbu	a2,0(a4)
   11794:	9c32                	add	s8,s8,a2
   11796:	b749                	j	11718 <_vfprintf_r+0x13ac>
   11798:	0a10                	addi	a2,sp,272
   1179a:	85ca                	mv	a1,s2
   1179c:	8552                	mv	a0,s4
   1179e:	780060ef          	jal	ra,17f1e <__sprint_r>
   117a2:	e0051563          	bnez	a0,10dac <_vfprintf_r+0xa40>
   117a6:	7792                	ld	a5,288(sp)
   117a8:	835a                	mv	t1,s6
   117aa:	bf19                	j	116c0 <_vfprintf_r+0x1354>
   117ac:	0a10                	addi	a2,sp,272
   117ae:	85ca                	mv	a1,s2
   117b0:	8552                	mv	a0,s4
   117b2:	f836                	sd	a3,48(sp)
   117b4:	76a060ef          	jal	ra,17f1e <__sprint_r>
   117b8:	de051a63          	bnez	a0,10dac <_vfprintf_r+0xa40>
   117bc:	7786                	ld	a5,96(sp)
   117be:	76c2                	ld	a3,48(sp)
   117c0:	835a                	mv	t1,s6
   117c2:	0007c603          	lbu	a2,0(a5)
   117c6:	7792                	ld	a5,288(sp)
   117c8:	0006071b          	sext.w	a4,a2
   117cc:	bf35                	j	11708 <_vfprintf_r+0x139c>
   117ce:	0a10                	addi	a2,sp,272
   117d0:	85ca                	mv	a1,s2
   117d2:	8552                	mv	a0,s4
   117d4:	74a060ef          	jal	ra,17f1e <__sprint_r>
   117d8:	dc051a63          	bnez	a0,10dac <_vfprintf_r+0xa40>
   117dc:	562e                	lw	a2,232(sp)
   117de:	7792                	ld	a5,288(sp)
   117e0:	835a                	mv	t1,s6
   117e2:	b195                	j	11446 <_vfprintf_r+0x10da>
   117e4:	6871                	lui	a6,0x1c
   117e6:	30880c93          	addi	s9,a6,776 # 1c308 <__clzdi2+0x3c>
   117ea:	b9d5                	j	114de <_vfprintf_r+0x1172>
   117ec:	0a10                	addi	a2,sp,272
   117ee:	85ca                	mv	a1,s2
   117f0:	8552                	mv	a0,s4
   117f2:	72c060ef          	jal	ra,17f1e <__sprint_r>
   117f6:	da051b63          	bnez	a0,10dac <_vfprintf_r+0xa40>
   117fa:	7792                	ld	a5,288(sp)
   117fc:	835a                	mv	t1,s6
   117fe:	f3eff06f          	j	10f3c <_vfprintf_r+0xbd0>
   11802:	4b99                	li	s7,6
   11804:	b4a9                	j	1124e <_vfprintf_r+0xee2>
   11806:	7682                	ld	a3,32(sp)
   11808:	00dc8bb3          	add	s7,s9,a3
   1180c:	418b8bb3          	sub	s7,s7,s8
   11810:	9e99                	subw	a3,a3,a4
   11812:	000b861b          	sext.w	a2,s7
   11816:	00c6d363          	bge	a3,a2,1181c <_vfprintf_r+0x14b0>
   1181a:	8bb6                	mv	s7,a3
   1181c:	2b81                	sext.w	s7,s7
   1181e:	fb2ff06f          	j	10fd0 <_vfprintf_r+0xc64>
   11822:	3d79                	addiw	s10,s10,-2
   11824:	fdfd7793          	andi	a5,s10,-33
   11828:	ecbe                	sd	a5,88(sp)
   1182a:	67a6                	ld	a5,72(sp)
   1182c:	65e6                	ld	a1,88(sp)
   1182e:	04100713          	li	a4,65
   11832:	fff7869b          	addiw	a3,a5,-1
   11836:	d5b6                	sw	a3,232(sp)
   11838:	0ffd7793          	zext.b	a5,s10
   1183c:	4601                	li	a2,0
   1183e:	00e59663          	bne	a1,a4,1184a <_vfprintf_r+0x14de>
   11842:	27bd                	addiw	a5,a5,15
   11844:	0ff7f793          	zext.b	a5,a5
   11848:	4605                	li	a2,1
   1184a:	0ef10823          	sb	a5,240(sp)
   1184e:	02b00793          	li	a5,43
   11852:	0006d763          	bgez	a3,11860 <_vfprintf_r+0x14f4>
   11856:	67a6                	ld	a5,72(sp)
   11858:	4685                	li	a3,1
   1185a:	9e9d                	subw	a3,a3,a5
   1185c:	02d00793          	li	a5,45
   11860:	0ef108a3          	sb	a5,241(sp)
   11864:	47a5                	li	a5,9
   11866:	3cd7dc63          	bge	a5,a3,11c3e <_vfprintf_r+0x18d2>
   1186a:	0ff10e93          	addi	t4,sp,255
   1186e:	8676                	mv	a2,t4
   11870:	45a9                	li	a1,10
   11872:	06300793          	li	a5,99
   11876:	02b6e73b          	remw	a4,a3,a1
   1187a:	88b2                	mv	a7,a2
   1187c:	8536                	mv	a0,a3
   1187e:	167d                	addi	a2,a2,-1
   11880:	0307071b          	addiw	a4,a4,48
   11884:	fee88fa3          	sb	a4,-1(a7)
   11888:	02b6c6bb          	divw	a3,a3,a1
   1188c:	fea7c5e3          	blt	a5,a0,11876 <_vfprintf_r+0x150a>
   11890:	0306869b          	addiw	a3,a3,48
   11894:	0ff6f693          	zext.b	a3,a3
   11898:	ffe88793          	addi	a5,a7,-2
   1189c:	fed60fa3          	sb	a3,-1(a2)
   118a0:	55d7f763          	bgeu	a5,t4,11dee <_vfprintf_r+0x1a82>
   118a4:	0f210713          	addi	a4,sp,242
   118a8:	a019                	j	118ae <_vfprintf_r+0x1542>
   118aa:	0007c683          	lbu	a3,0(a5)
   118ae:	00d70023          	sb	a3,0(a4)
   118b2:	0785                	addi	a5,a5,1
   118b4:	0705                	addi	a4,a4,1
   118b6:	ffd79ae3          	bne	a5,t4,118aa <_vfprintf_r+0x153e>
   118ba:	10110793          	addi	a5,sp,257
   118be:	0f210713          	addi	a4,sp,242
   118c2:	411787b3          	sub	a5,a5,a7
   118c6:	97ba                	add	a5,a5,a4
   118c8:	1998                	addi	a4,sp,240
   118ca:	9f99                	subw	a5,a5,a4
   118cc:	fcbe                	sd	a5,120(sp)
   118ce:	77e6                	ld	a5,120(sp)
   118d0:	7682                	ld	a3,32(sp)
   118d2:	4705                	li	a4,1
   118d4:	00f68bbb          	addw	s7,a3,a5
   118d8:	87de                	mv	a5,s7
   118da:	3ed75063          	bge	a4,a3,11cba <_vfprintf_r+0x194e>
   118de:	7726                	ld	a4,104(sp)
   118e0:	00e78bbb          	addw	s7,a5,a4
   118e4:	77aa                	ld	a5,168(sp)
   118e6:	fffbc993          	not	s3,s7
   118ea:	43f9d993          	srai	s3,s3,0x3f
   118ee:	bff7f493          	andi	s1,a5,-1025
   118f2:	2481                	sext.w	s1,s1
   118f4:	013bf9b3          	and	s3,s7,s3
   118f8:	1004e493          	ori	s1,s1,256
   118fc:	2981                	sext.w	s3,s3
   118fe:	e882                	sd	zero,80(sp)
   11900:	ec82                	sd	zero,88(sp)
   11902:	e482                	sd	zero,72(sp)
   11904:	bb11                	j	11618 <_vfprintf_r+0x12ac>
   11906:	67a2                	ld	a5,8(sp)
   11908:	8ca2                	mv	s9,s0
   1190a:	00f71023          	sh	a5,0(a4)
   1190e:	d05fe06f          	j	10612 <_vfprintf_r+0x2a6>
   11912:	87ce                	mv	a5,s3
   11914:	daffe06f          	j	106c2 <_vfprintf_r+0x356>
   11918:	1982                	slli	s3,s3,0x20
   1191a:	0209d993          	srli	s3,s3,0x20
   1191e:	e01fe06f          	j	1071e <_vfprintf_r+0x3b2>
   11922:	1982                	slli	s3,s3,0x20
   11924:	0209d993          	srli	s3,s3,0x20
   11928:	b855                	j	111dc <_vfprintf_r+0xe70>
   1192a:	1982                	slli	s3,s3,0x20
   1192c:	0209d993          	srli	s3,s3,0x20
   11930:	e83a                	sd	a4,16(sp)
   11932:	4785                	li	a5,1
   11934:	df5fe06f          	j	10728 <_vfprintf_r+0x3bc>
   11938:	0a10                	addi	a2,sp,272
   1193a:	85ca                	mv	a1,s2
   1193c:	8552                	mv	a0,s4
   1193e:	5e0060ef          	jal	ra,17f1e <__sprint_r>
   11942:	ce1fe06f          	j	10622 <_vfprintf_r+0x2b6>
   11946:	02d00793          	li	a5,45
   1194a:	0cf10fa3          	sb	a5,223(sp)
   1194e:	b1ed                	j	11638 <_vfprintf_r+0x12cc>
   11950:	ec02                	sd	zero,24(sp)
   11952:	84be                	mv	s1,a5
   11954:	57fd                	li	a5,-1
   11956:	17fe                	slli	a5,a5,0x3f
   11958:	00f9c9b3          	xor	s3,s3,a5
   1195c:	02d00793          	li	a5,45
   11960:	e5be                	sd	a5,200(sp)
   11962:	b249                	j	112e4 <_vfprintf_r+0xf78>
   11964:	0a10                	addi	a2,sp,272
   11966:	85ca                	mv	a1,s2
   11968:	8552                	mv	a0,s4
   1196a:	5b4060ef          	jal	ra,17f1e <__sprint_r>
   1196e:	c2051f63          	bnez	a0,10dac <_vfprintf_r+0xa40>
   11972:	562e                	lw	a2,232(sp)
   11974:	7792                	ld	a5,288(sp)
   11976:	11812683          	lw	a3,280(sp)
   1197a:	835a                	mv	t1,s6
   1197c:	b6d5                	j	11560 <_vfprintf_r+0x11f4>
   1197e:	001c059b          	addiw	a1,s8,1
   11982:	8552                	mv	a0,s4
   11984:	ec1a                	sd	t1,24(sp)
   11986:	272030ef          	jal	ra,14bf8 <_malloc_r>
   1198a:	6362                	ld	t1,24(sp)
   1198c:	8caa                	mv	s9,a0
   1198e:	46050363          	beqz	a0,11df4 <_vfprintf_r+0x1a88>
   11992:	ec2a                	sd	a0,24(sp)
   11994:	ba2d                	j	112ce <_vfprintf_r+0xf62>
   11996:	4601                	li	a2,0
   11998:	4681                	li	a3,0
   1199a:	855e                	mv	a0,s7
   1199c:	85ce                	mv	a1,s3
   1199e:	f846                	sd	a7,48(sp)
   119a0:	f01a                	sd	t1,32(sp)
   119a2:	4c0090ef          	jal	ra,1ae62 <__eqtf2>
   119a6:	7302                	ld	t1,32(sp)
   119a8:	78c2                	ld	a7,48(sp)
   119aa:	9a0504e3          	beqz	a0,11352 <_vfprintf_r+0xfe6>
   119ae:	4785                	li	a5,1
   119b0:	41b7873b          	subw	a4,a5,s11
   119b4:	d5ba                	sw	a4,232(sp)
   119b6:	98ba                	add	a7,a7,a4
   119b8:	ba79                	j	11356 <_vfprintf_r+0xfea>
   119ba:	001c0d9b          	addiw	s11,s8,1
   119be:	4689                	li	a3,2
   119c0:	ba91                	j	11314 <_vfprintf_r+0xfa8>
   119c2:	8de2                	mv	s11,s8
   119c4:	468d                	li	a3,3
   119c6:	b2b9                	j	11314 <_vfprintf_r+0xfa8>
   119c8:	85ce                	mv	a1,s3
   119ca:	855e                	mv	a0,s7
   119cc:	f81a                	sd	t1,48(sp)
   119ce:	6de0a0ef          	jal	ra,1c0ac <__trunctfdf2>
   119d2:	11a8                	addi	a0,sp,232
   119d4:	5f0040ef          	jal	ra,15fc4 <frexp>
   119d8:	6100a0ef          	jal	ra,1bfe8 <__extenddftf2>
   119dc:	768a                	ld	a3,160(sp)
   119de:	4601                	li	a2,0
   119e0:	66e090ef          	jal	ra,1b04e <__multf3>
   119e4:	4601                	li	a2,0
   119e6:	4681                	li	a3,0
   119e8:	8baa                	mv	s7,a0
   119ea:	f02e                	sd	a1,32(sp)
   119ec:	476090ef          	jal	ra,1ae62 <__eqtf2>
   119f0:	7f82                	ld	t6,32(sp)
   119f2:	7342                	ld	t1,48(sp)
   119f4:	e119                	bnez	a0,119fa <_vfprintf_r+0x168e>
   119f6:	4785                	li	a5,1
   119f8:	d5be                	sw	a5,232(sp)
   119fa:	67f1                	lui	a5,0x1c
   119fc:	34078793          	addi	a5,a5,832 # 1c340 <__clzdi2+0x74>
   11a00:	e4be                	sd	a5,72(sp)
   11a02:	020c1793          	slli	a5,s8,0x20
   11a06:	9381                	srli	a5,a5,0x20
   11a08:	0785                	addi	a5,a5,1
   11a0a:	97e6                	add	a5,a5,s9
   11a0c:	f93e                	sd	a5,176(sp)
   11a0e:	018c87bb          	addw	a5,s9,s8
   11a12:	8de6                	mv	s11,s9
   11a14:	c3be                	sw	a5,196(sp)
   11a16:	a829                	j	11a30 <_vfprintf_r+0x16c4>
   11a18:	4601                	li	a2,0
   11a1a:	4681                	li	a3,0
   11a1c:	f01a                	sd	t1,32(sp)
   11a1e:	fc2e                	sd	a1,56(sp)
   11a20:	f82a                	sd	a0,48(sp)
   11a22:	440090ef          	jal	ra,1ae62 <__eqtf2>
   11a26:	77e2                	ld	a5,56(sp)
   11a28:	7302                	ld	t1,32(sp)
   11a2a:	88de                	mv	a7,s7
   11a2c:	8fbe                	mv	t6,a5
   11a2e:	cd31                	beqz	a0,11a8a <_vfprintf_r+0x171e>
   11a30:	66ca                	ld	a3,144(sp)
   11a32:	4601                	li	a2,0
   11a34:	85fe                	mv	a1,t6
   11a36:	855e                	mv	a0,s7
   11a38:	f81a                	sd	t1,48(sp)
   11a3a:	614090ef          	jal	ra,1b04e <__multf3>
   11a3e:	8bae                	mv	s7,a1
   11a40:	f02a                	sd	a0,32(sp)
   11a42:	4be0a0ef          	jal	ra,1bf00 <__fixtfsi>
   11a46:	0005099b          	sext.w	s3,a0
   11a4a:	854e                	mv	a0,s3
   11a4c:	5460a0ef          	jal	ra,1bf92 <__floatsitf>
   11a50:	7782                	ld	a5,32(sp)
   11a52:	86ae                	mv	a3,a1
   11a54:	862a                	mv	a2,a0
   11a56:	85de                	mv	a1,s7
   11a58:	853e                	mv	a0,a5
   11a5a:	41f090ef          	jal	ra,1b678 <__subtf3>
   11a5e:	67a6                	ld	a5,72(sp)
   11a60:	471e                	lw	a4,196(sp)
   11a62:	fd6e                	sd	s11,184(sp)
   11a64:	97ce                	add	a5,a5,s3
   11a66:	0d85                	addi	s11,s11,1
   11a68:	0007c683          	lbu	a3,0(a5)
   11a6c:	41b7073b          	subw	a4,a4,s11
   11a70:	e8ba                	sd	a4,80(sp)
   11a72:	774a                	ld	a4,176(sp)
   11a74:	fedd8fa3          	sb	a3,-1(s11)
   11a78:	e0ae                	sd	a1,64(sp)
   11a7a:	7342                	ld	t1,48(sp)
   11a7c:	87ae                	mv	a5,a1
   11a7e:	88aa                	mv	a7,a0
   11a80:	8baa                	mv	s7,a0
   11a82:	f9b71be3          	bne	a4,s11,11a18 <_vfprintf_r+0x16ac>
   11a86:	577d                	li	a4,-1
   11a88:	e8ba                	sd	a4,80(sp)
   11a8a:	66ea                	ld	a3,152(sp)
   11a8c:	4601                	li	a2,0
   11a8e:	8546                	mv	a0,a7
   11a90:	85be                	mv	a1,a5
   11a92:	f01a                	sd	t1,32(sp)
   11a94:	fc46                	sd	a7,56(sp)
   11a96:	f83e                	sd	a5,48(sp)
   11a98:	46a090ef          	jal	ra,1af02 <__getf2>
   11a9c:	7302                	ld	t1,32(sp)
   11a9e:	1ca04463          	bgtz	a0,11c66 <_vfprintf_r+0x18fa>
   11aa2:	78e2                	ld	a7,56(sp)
   11aa4:	77c2                	ld	a5,48(sp)
   11aa6:	66ea                	ld	a3,152(sp)
   11aa8:	4601                	li	a2,0
   11aaa:	8546                	mv	a0,a7
   11aac:	85be                	mv	a1,a5
   11aae:	3b4090ef          	jal	ra,1ae62 <__eqtf2>
   11ab2:	7302                	ld	t1,32(sp)
   11ab4:	e509                	bnez	a0,11abe <_vfprintf_r+0x1752>
   11ab6:	0019f993          	andi	s3,s3,1
   11aba:	1a099663          	bnez	s3,11c66 <_vfprintf_r+0x18fa>
   11abe:	6746                	ld	a4,80(sp)
   11ac0:	03000693          	li	a3,48
   11ac4:	0017079b          	addiw	a5,a4,1
   11ac8:	97ee                	add	a5,a5,s11
   11aca:	00074763          	bltz	a4,11ad8 <_vfprintf_r+0x176c>
   11ace:	0d85                	addi	s11,s11,1
   11ad0:	fedd8fa3          	sb	a3,-1(s11)
   11ad4:	ffb79de3          	bne	a5,s11,11ace <_vfprintf_r+0x1762>
   11ad8:	419d87bb          	subw	a5,s11,s9
   11adc:	f03e                	sd	a5,32(sp)
   11ade:	b859                	j	11374 <_vfprintf_r+0x1008>
   11ae0:	7702                	ld	a4,32(sp)
   11ae2:	9766                	add	a4,a4,s9
   11ae4:	c7877d63          	bgeu	a4,s8,10f5e <_vfprintf_r+0xbf2>
   11ae8:	8c3a                	mv	s8,a4
   11aea:	c74ff06f          	j	10f5e <_vfprintf_r+0xbf2>
   11aee:	0df14783          	lbu	a5,223(sp)
   11af2:	4c01                	li	s8,0
   11af4:	c399                	beqz	a5,11afa <_vfprintf_r+0x178e>
   11af6:	c0dfe06f          	j	10702 <_vfprintf_r+0x396>
   11afa:	a39fe06f          	j	10532 <_vfprintf_r+0x1c6>
   11afe:	77aa                	ld	a5,168(sp)
   11b00:	01b508b3          	add	a7,a0,s11
   11b04:	8b85                	andi	a5,a5,1
   11b06:	840798e3          	bnez	a5,11356 <_vfprintf_r+0xfea>
   11b0a:	76ee                	ld	a3,248(sp)
   11b0c:	863ff06f          	j	1136e <_vfprintf_r+0x1002>
   11b10:	0a10                	addi	a2,sp,272
   11b12:	85ca                	mv	a1,s2
   11b14:	8552                	mv	a0,s4
   11b16:	408060ef          	jal	ra,17f1e <__sprint_r>
   11b1a:	a8051963          	bnez	a0,10dac <_vfprintf_r+0xa40>
   11b1e:	7786                	ld	a5,96(sp)
   11b20:	835a                	mv	t1,s6
   11b22:	0007c603          	lbu	a2,0(a5)
   11b26:	7792                	ld	a5,288(sp)
   11b28:	9c32                	add	s8,s8,a2
   11b2a:	b6fd                	j	11718 <_vfprintf_r+0x13ac>
   11b2c:	02d00793          	li	a5,45
   11b30:	0cf10fa3          	sb	a5,223(sp)
   11b34:	ba71                	j	114d0 <_vfprintf_r+0x1164>
   11b36:	0a10                	addi	a2,sp,272
   11b38:	85ca                	mv	a1,s2
   11b3a:	8552                	mv	a0,s4
   11b3c:	3e2060ef          	jal	ra,17f1e <__sprint_r>
   11b40:	a6051663          	bnez	a0,10dac <_vfprintf_r+0xa40>
   11b44:	572e                	lw	a4,232(sp)
   11b46:	7792                	ld	a5,288(sp)
   11b48:	835a                	mv	t1,s6
   11b4a:	c4aff06f          	j	10f94 <_vfprintf_r+0xc28>
   11b4e:	0df14783          	lbu	a5,223(sp)
   11b52:	e86e                	sd	s11,16(sp)
   11b54:	e882                	sd	zero,80(sp)
   11b56:	ec82                	sd	zero,88(sp)
   11b58:	e482                	sd	zero,72(sp)
   11b5a:	89e2                	mv	s3,s8
   11b5c:	8be2                	mv	s7,s8
   11b5e:	4c01                	li	s8,0
   11b60:	c399                	beqz	a5,11b66 <_vfprintf_r+0x17fa>
   11b62:	ba1fe06f          	j	10702 <_vfprintf_r+0x396>
   11b66:	9cdfe06f          	j	10532 <_vfprintf_r+0x1c6>
   11b6a:	0a10                	addi	a2,sp,272
   11b6c:	85ca                	mv	a1,s2
   11b6e:	8552                	mv	a0,s4
   11b70:	3ae060ef          	jal	ra,17f1e <__sprint_r>
   11b74:	a2051c63          	bnez	a0,10dac <_vfprintf_r+0xa40>
   11b78:	56ae                	lw	a3,232(sp)
   11b7a:	7702                	ld	a4,32(sp)
   11b7c:	7792                	ld	a5,288(sp)
   11b7e:	835a                	mv	t1,s6
   11b80:	40d706bb          	subw	a3,a4,a3
   11b84:	c4cff06f          	j	10fd0 <_vfprintf_r+0xc64>
   11b88:	6871                	lui	a6,0x1c
   11b8a:	31880c93          	addi	s9,a6,792 # 1c318 <__clzdi2+0x4c>
   11b8e:	ba81                	j	114de <_vfprintf_r+0x1172>
   11b90:	68f1                	lui	a7,0x1c
   11b92:	5741                	li	a4,-16
   11b94:	40c00c3b          	negw	s8,a2
   11b98:	5b088d93          	addi	s11,a7,1456 # 1c5b0 <zeroes.0>
   11b9c:	4bc1                	li	s7,16
   11b9e:	4d1d                	li	s10,7
   11ba0:	00e64663          	blt	a2,a4,11bac <_vfprintf_r+0x1840>
   11ba4:	a0ad                	j	11c0e <_vfprintf_r+0x18a2>
   11ba6:	3c41                	addiw	s8,s8,-16
   11ba8:	078bd363          	bge	s7,s8,11c0e <_vfprintf_r+0x18a2>
   11bac:	2685                	addiw	a3,a3,1
   11bae:	07c1                	addi	a5,a5,16
   11bb0:	01b33023          	sd	s11,0(t1)
   11bb4:	01733423          	sd	s7,8(t1)
   11bb8:	f23e                	sd	a5,288(sp)
   11bba:	10d12c23          	sw	a3,280(sp)
   11bbe:	0341                	addi	t1,t1,16
   11bc0:	fedd53e3          	bge	s10,a3,11ba6 <_vfprintf_r+0x183a>
   11bc4:	0a10                	addi	a2,sp,272
   11bc6:	85ca                	mv	a1,s2
   11bc8:	8552                	mv	a0,s4
   11bca:	354060ef          	jal	ra,17f1e <__sprint_r>
   11bce:	9c051f63          	bnez	a0,10dac <_vfprintf_r+0xa40>
   11bd2:	7792                	ld	a5,288(sp)
   11bd4:	11812683          	lw	a3,280(sp)
   11bd8:	835a                	mv	t1,s6
   11bda:	b7f1                	j	11ba6 <_vfprintf_r+0x183a>
   11bdc:	57fd                	li	a5,-1
   11bde:	e43e                	sd	a5,8(sp)
   11be0:	a51fe06f          	j	10630 <_vfprintf_r+0x2c4>
   11be4:	7702                	ld	a4,32(sp)
   11be6:	77a6                	ld	a5,104(sp)
   11be8:	06700d13          	li	s10,103
   11bec:	00e78bbb          	addw	s7,a5,a4
   11bf0:	6726                	ld	a4,72(sp)
   11bf2:	fae04963          	bgtz	a4,113a4 <_vfprintf_r+0x1038>
   11bf6:	40eb87bb          	subw	a5,s7,a4
   11bfa:	2785                	addiw	a5,a5,1
   11bfc:	00078b9b          	sext.w	s7,a5
   11c00:	fffbc713          	not	a4,s7
   11c04:	977d                	srai	a4,a4,0x3f
   11c06:	8ff9                	and	a5,a5,a4
   11c08:	0007899b          	sext.w	s3,a5
   11c0c:	b421                	j	11614 <_vfprintf_r+0x12a8>
   11c0e:	2685                	addiw	a3,a3,1
   11c10:	97e2                	add	a5,a5,s8
   11c12:	01b33023          	sd	s11,0(t1)
   11c16:	01833423          	sd	s8,8(t1)
   11c1a:	f23e                	sd	a5,288(sp)
   11c1c:	10d12c23          	sw	a3,280(sp)
   11c20:	471d                	li	a4,7
   11c22:	84d75ce3          	bge	a4,a3,1147a <_vfprintf_r+0x110e>
   11c26:	0a10                	addi	a2,sp,272
   11c28:	85ca                	mv	a1,s2
   11c2a:	8552                	mv	a0,s4
   11c2c:	2f2060ef          	jal	ra,17f1e <__sprint_r>
   11c30:	96051e63          	bnez	a0,10dac <_vfprintf_r+0xa40>
   11c34:	7792                	ld	a5,288(sp)
   11c36:	11812683          	lw	a3,280(sp)
   11c3a:	835a                	mv	t1,s6
   11c3c:	b225                	j	11564 <_vfprintf_r+0x11f8>
   11c3e:	0f210713          	addi	a4,sp,242
   11c42:	e619                	bnez	a2,11c50 <_vfprintf_r+0x18e4>
   11c44:	03000793          	li	a5,48
   11c48:	0ef10923          	sb	a5,242(sp)
   11c4c:	0f310713          	addi	a4,sp,243
   11c50:	0306879b          	addiw	a5,a3,48
   11c54:	0c14                	addi	a3,sp,528
   11c56:	40d706b3          	sub	a3,a4,a3
   11c5a:	00f70023          	sb	a5,0(a4)
   11c5e:	1216879b          	addiw	a5,a3,289
   11c62:	fcbe                	sd	a5,120(sp)
   11c64:	b1ad                	j	118ce <_vfprintf_r+0x1562>
   11c66:	77ea                	ld	a5,184(sp)
   11c68:	fdbe                	sd	a5,248(sp)
   11c6a:	67a6                	ld	a5,72(sp)
   11c6c:	fffdc683          	lbu	a3,-1(s11)
   11c70:	00f7c603          	lbu	a2,15(a5)
   11c74:	87ee                	mv	a5,s11
   11c76:	00d61e63          	bne	a2,a3,11c92 <_vfprintf_r+0x1926>
   11c7a:	03000593          	li	a1,48
   11c7e:	feb78fa3          	sb	a1,-1(a5)
   11c82:	77ee                	ld	a5,248(sp)
   11c84:	fff78693          	addi	a3,a5,-1
   11c88:	fdb6                	sd	a3,248(sp)
   11c8a:	fff7c683          	lbu	a3,-1(a5)
   11c8e:	fed608e3          	beq	a2,a3,11c7e <_vfprintf_r+0x1912>
   11c92:	0016861b          	addiw	a2,a3,1
   11c96:	03900593          	li	a1,57
   11c9a:	0ff67613          	zext.b	a2,a2
   11c9e:	00b68563          	beq	a3,a1,11ca8 <_vfprintf_r+0x193c>
   11ca2:	fec78fa3          	sb	a2,-1(a5)
   11ca6:	bd0d                	j	11ad8 <_vfprintf_r+0x176c>
   11ca8:	6726                	ld	a4,72(sp)
   11caa:	00a74603          	lbu	a2,10(a4)
   11cae:	fec78fa3          	sb	a2,-1(a5)
   11cb2:	b51d                	j	11ad8 <_vfprintf_r+0x176c>
   11cb4:	8da6                	mv	s11,s1
   11cb6:	914ff06f          	j	10dca <_vfprintf_r+0xa5e>
   11cba:	772a                	ld	a4,168(sp)
   11cbc:	8b05                	andi	a4,a4,1
   11cbe:	c20703e3          	beqz	a4,118e4 <_vfprintf_r+0x1578>
   11cc2:	b931                	j	118de <_vfprintf_r+0x1572>
   11cc4:	000c0463          	beqz	s8,11ccc <_vfprintf_r+0x1960>
   11cc8:	b1bfe06f          	j	107e2 <_vfprintf_r+0x476>
   11ccc:	4c05                	li	s8,1
   11cce:	b15fe06f          	j	107e2 <_vfprintf_r+0x476>
   11cd2:	4c19                	li	s8,6
   11cd4:	b0ffe06f          	j	107e2 <_vfprintf_r+0x476>
   11cd8:	c31c                	sw	a5,0(a4)
   11cda:	8ca2                	mv	s9,s0
   11cdc:	937fe06f          	j	10612 <_vfprintf_r+0x2a6>
   11ce0:	85ce                	mv	a1,s3
   11ce2:	855e                	mv	a0,s7
   11ce4:	f81a                	sd	t1,48(sp)
   11ce6:	3c60a0ef          	jal	ra,1c0ac <__trunctfdf2>
   11cea:	11a8                	addi	a0,sp,232
   11cec:	2d8040ef          	jal	ra,15fc4 <frexp>
   11cf0:	2f80a0ef          	jal	ra,1bfe8 <__extenddftf2>
   11cf4:	768a                	ld	a3,160(sp)
   11cf6:	4601                	li	a2,0
   11cf8:	356090ef          	jal	ra,1b04e <__multf3>
   11cfc:	4601                	li	a2,0
   11cfe:	4681                	li	a3,0
   11d00:	8baa                	mv	s7,a0
   11d02:	f02e                	sd	a1,32(sp)
   11d04:	15e090ef          	jal	ra,1ae62 <__eqtf2>
   11d08:	7f82                	ld	t6,32(sp)
   11d0a:	7342                	ld	t1,48(sp)
   11d0c:	e119                	bnez	a0,11d12 <_vfprintf_r+0x19a6>
   11d0e:	4785                	li	a5,1
   11d10:	d5be                	sw	a5,232(sp)
   11d12:	67f1                	lui	a5,0x1c
   11d14:	32878793          	addi	a5,a5,808 # 1c328 <__clzdi2+0x5c>
   11d18:	e4be                	sd	a5,72(sp)
   11d1a:	b1e5                	j	11a02 <_vfprintf_r+0x1696>
   11d1c:	06700d13          	li	s10,103
   11d20:	7786                	ld	a5,96(sp)
   11d22:	0ff00713          	li	a4,255
   11d26:	e882                	sd	zero,80(sp)
   11d28:	0007c783          	lbu	a5,0(a5)
   11d2c:	ec82                	sd	zero,88(sp)
   11d2e:	02e78863          	beq	a5,a4,11d5e <_vfprintf_r+0x19f2>
   11d32:	0ff00693          	li	a3,255
   11d36:	6626                	ld	a2,72(sp)
   11d38:	0007871b          	sext.w	a4,a5
   11d3c:	02c7d163          	bge	a5,a2,11d5e <_vfprintf_r+0x19f2>
   11d40:	7586                	ld	a1,96(sp)
   11d42:	40e6073b          	subw	a4,a2,a4
   11d46:	e4ba                	sd	a4,72(sp)
   11d48:	0015c783          	lbu	a5,1(a1)
   11d4c:	cb95                	beqz	a5,11d80 <_vfprintf_r+0x1a14>
   11d4e:	6766                	ld	a4,88(sp)
   11d50:	2705                	addiw	a4,a4,1
   11d52:	ecba                	sd	a4,88(sp)
   11d54:	00158713          	addi	a4,a1,1
   11d58:	f0ba                	sd	a4,96(sp)
   11d5a:	fcd79ee3          	bne	a5,a3,11d36 <_vfprintf_r+0x19ca>
   11d5e:	6766                	ld	a4,88(sp)
   11d60:	67c6                	ld	a5,80(sp)
   11d62:	9fb9                	addw	a5,a5,a4
   11d64:	670a                	ld	a4,128(sp)
   11d66:	02e787bb          	mulw	a5,a5,a4
   11d6a:	017787bb          	addw	a5,a5,s7
   11d6e:	00078b9b          	sext.w	s7,a5
   11d72:	fffbc713          	not	a4,s7
   11d76:	977d                	srai	a4,a4,0x3f
   11d78:	8ff9                	and	a5,a5,a4
   11d7a:	0007899b          	sext.w	s3,a5
   11d7e:	b869                	j	11618 <_vfprintf_r+0x12ac>
   11d80:	6746                	ld	a4,80(sp)
   11d82:	7786                	ld	a5,96(sp)
   11d84:	2705                	addiw	a4,a4,1
   11d86:	0007c783          	lbu	a5,0(a5)
   11d8a:	e8ba                	sd	a4,80(sp)
   11d8c:	b7f9                	j	11d5a <_vfprintf_r+0x19ee>
   11d8e:	77a6                	ld	a5,104(sp)
   11d90:	06600d13          	li	s10,102
   11d94:	00e78bbb          	addw	s7,a5,a4
   11d98:	018b8bbb          	addw	s7,s7,s8
   11d9c:	e08ff06f          	j	113a4 <_vfprintf_r+0x1038>
   11da0:	e799                	bnez	a5,11dae <_vfprintf_r+0x1a42>
   11da2:	4985                	li	s3,1
   11da4:	06600d13          	li	s10,102
   11da8:	4b85                	li	s7,1
   11daa:	86bff06f          	j	11614 <_vfprintf_r+0x12a8>
   11dae:	77a6                	ld	a5,104(sp)
   11db0:	06600d13          	li	s10,102
   11db4:	2785                	addiw	a5,a5,1
   11db6:	018787bb          	addw	a5,a5,s8
   11dba:	00078b9b          	sext.w	s7,a5
   11dbe:	fffbc713          	not	a4,s7
   11dc2:	977d                	srai	a4,a4,0x3f
   11dc4:	8ff9                	and	a5,a5,a4
   11dc6:	0007899b          	sext.w	s3,a5
   11dca:	84bff06f          	j	11614 <_vfprintf_r+0x12a8>
   11dce:	66c2                	ld	a3,16(sp)
   11dd0:	4298                	lw	a4,0(a3)
   11dd2:	00868613          	addi	a2,a3,8
   11dd6:	86ba                	mv	a3,a4
   11dd8:	00075363          	bgez	a4,11dde <_vfprintf_r+0x1a72>
   11ddc:	56fd                	li	a3,-1
   11dde:	00144e03          	lbu	t3,1(s0)
   11de2:	00068c1b          	sext.w	s8,a3
   11de6:	e832                	sd	a2,16(sp)
   11de8:	843e                	mv	s0,a5
   11dea:	ed2fe06f          	j	104bc <_vfprintf_r+0x150>
   11dee:	4789                	li	a5,2
   11df0:	fcbe                	sd	a5,120(sp)
   11df2:	bcf1                	j	118ce <_vfprintf_r+0x1562>
   11df4:	01095783          	lhu	a5,16(s2)
   11df8:	0407e793          	ori	a5,a5,64
   11dfc:	00f91823          	sh	a5,16(s2)
   11e00:	823fe06f          	j	10622 <_vfprintf_r+0x2b6>

0000000000011e04 <vfprintf>:
   11e04:	87aa                	mv	a5,a0
   11e06:	7581b503          	ld	a0,1880(gp) # 1f328 <_impure_ptr>
   11e0a:	86b2                	mv	a3,a2
   11e0c:	862e                	mv	a2,a1
   11e0e:	85be                	mv	a1,a5
   11e10:	d5cfe06f          	j	1036c <_vfprintf_r>

0000000000011e14 <__sbprintf>:
   11e14:	0105d783          	lhu	a5,16(a1)
   11e18:	0ac5ae03          	lw	t3,172(a1)
   11e1c:	0125d303          	lhu	t1,18(a1)
   11e20:	0305b883          	ld	a7,48(a1)
   11e24:	0405b803          	ld	a6,64(a1)
   11e28:	b3010113          	addi	sp,sp,-1232
   11e2c:	9bf5                	andi	a5,a5,-3
   11e2e:	40000713          	li	a4,1024
   11e32:	4c813023          	sd	s0,1216(sp)
   11e36:	00f11823          	sh	a5,16(sp)
   11e3a:	842e                	mv	s0,a1
   11e3c:	191c                	addi	a5,sp,176
   11e3e:	858a                	mv	a1,sp
   11e40:	4a913c23          	sd	s1,1208(sp)
   11e44:	4b213823          	sd	s2,1200(sp)
   11e48:	4c113423          	sd	ra,1224(sp)
   11e4c:	892a                	mv	s2,a0
   11e4e:	d772                	sw	t3,172(sp)
   11e50:	00611923          	sh	t1,18(sp)
   11e54:	f846                	sd	a7,48(sp)
   11e56:	e0c2                	sd	a6,64(sp)
   11e58:	e03e                	sd	a5,0(sp)
   11e5a:	ec3e                	sd	a5,24(sp)
   11e5c:	c63a                	sw	a4,12(sp)
   11e5e:	d03a                	sw	a4,32(sp)
   11e60:	d402                	sw	zero,40(sp)
   11e62:	d0afe0ef          	jal	ra,1036c <_vfprintf_r>
   11e66:	84aa                	mv	s1,a0
   11e68:	02055963          	bgez	a0,11e9a <__sbprintf+0x86>
   11e6c:	01015783          	lhu	a5,16(sp)
   11e70:	0407f793          	andi	a5,a5,64
   11e74:	c799                	beqz	a5,11e82 <__sbprintf+0x6e>
   11e76:	01045783          	lhu	a5,16(s0)
   11e7a:	0407e793          	ori	a5,a5,64
   11e7e:	00f41823          	sh	a5,16(s0)
   11e82:	4c813083          	ld	ra,1224(sp)
   11e86:	4c013403          	ld	s0,1216(sp)
   11e8a:	4b013903          	ld	s2,1200(sp)
   11e8e:	8526                	mv	a0,s1
   11e90:	4b813483          	ld	s1,1208(sp)
   11e94:	4d010113          	addi	sp,sp,1232
   11e98:	8082                	ret
   11e9a:	858a                	mv	a1,sp
   11e9c:	854a                	mv	a0,s2
   11e9e:	356000ef          	jal	ra,121f4 <_fflush_r>
   11ea2:	d569                	beqz	a0,11e6c <__sbprintf+0x58>
   11ea4:	54fd                	li	s1,-1
   11ea6:	b7d9                	j	11e6c <__sbprintf+0x58>

0000000000011ea8 <__swsetup_r>:
   11ea8:	7581b783          	ld	a5,1880(gp) # 1f328 <_impure_ptr>
   11eac:	1101                	addi	sp,sp,-32
   11eae:	e822                	sd	s0,16(sp)
   11eb0:	e426                	sd	s1,8(sp)
   11eb2:	ec06                	sd	ra,24(sp)
   11eb4:	84aa                	mv	s1,a0
   11eb6:	842e                	mv	s0,a1
   11eb8:	c399                	beqz	a5,11ebe <__swsetup_r+0x16>
   11eba:	4bb8                	lw	a4,80(a5)
   11ebc:	cf21                	beqz	a4,11f14 <__swsetup_r+0x6c>
   11ebe:	01041703          	lh	a4,16(s0)
   11ec2:	03071793          	slli	a5,a4,0x30
   11ec6:	00877693          	andi	a3,a4,8
   11eca:	93c1                	srli	a5,a5,0x30
   11ecc:	ceb9                	beqz	a3,11f2a <__swsetup_r+0x82>
   11ece:	6c14                	ld	a3,24(s0)
   11ed0:	cabd                	beqz	a3,11f46 <__swsetup_r+0x9e>
   11ed2:	0017f613          	andi	a2,a5,1
   11ed6:	ce11                	beqz	a2,11ef2 <__swsetup_r+0x4a>
   11ed8:	5010                	lw	a2,32(s0)
   11eda:	00042623          	sw	zero,12(s0)
   11ede:	4501                	li	a0,0
   11ee0:	40c0063b          	negw	a2,a2
   11ee4:	d410                	sw	a2,40(s0)
   11ee6:	ce91                	beqz	a3,11f02 <__swsetup_r+0x5a>
   11ee8:	60e2                	ld	ra,24(sp)
   11eea:	6442                	ld	s0,16(sp)
   11eec:	64a2                	ld	s1,8(sp)
   11eee:	6105                	addi	sp,sp,32
   11ef0:	8082                	ret
   11ef2:	0027f613          	andi	a2,a5,2
   11ef6:	4581                	li	a1,0
   11ef8:	e211                	bnez	a2,11efc <__swsetup_r+0x54>
   11efa:	500c                	lw	a1,32(s0)
   11efc:	c44c                	sw	a1,12(s0)
   11efe:	4501                	li	a0,0
   11f00:	f6e5                	bnez	a3,11ee8 <__swsetup_r+0x40>
   11f02:	0807f793          	andi	a5,a5,128
   11f06:	d3ed                	beqz	a5,11ee8 <__swsetup_r+0x40>
   11f08:	04076713          	ori	a4,a4,64
   11f0c:	00e41823          	sh	a4,16(s0)
   11f10:	557d                	li	a0,-1
   11f12:	bfd9                	j	11ee8 <__swsetup_r+0x40>
   11f14:	853e                	mv	a0,a5
   11f16:	5ba000ef          	jal	ra,124d0 <__sinit>
   11f1a:	01041703          	lh	a4,16(s0)
   11f1e:	03071793          	slli	a5,a4,0x30
   11f22:	00877693          	andi	a3,a4,8
   11f26:	93c1                	srli	a5,a5,0x30
   11f28:	f2dd                	bnez	a3,11ece <__swsetup_r+0x26>
   11f2a:	0107f693          	andi	a3,a5,16
   11f2e:	c2ad                	beqz	a3,11f90 <__swsetup_r+0xe8>
   11f30:	8b91                	andi	a5,a5,4
   11f32:	eb9d                	bnez	a5,11f68 <__swsetup_r+0xc0>
   11f34:	6c14                	ld	a3,24(s0)
   11f36:	00876713          	ori	a4,a4,8
   11f3a:	03071793          	slli	a5,a4,0x30
   11f3e:	00e41823          	sh	a4,16(s0)
   11f42:	93c1                	srli	a5,a5,0x30
   11f44:	f6d9                	bnez	a3,11ed2 <__swsetup_r+0x2a>
   11f46:	2807f613          	andi	a2,a5,640
   11f4a:	20000593          	li	a1,512
   11f4e:	f8b602e3          	beq	a2,a1,11ed2 <__swsetup_r+0x2a>
   11f52:	85a2                	mv	a1,s0
   11f54:	8526                	mv	a0,s1
   11f56:	305020ef          	jal	ra,14a5a <__smakebuf_r>
   11f5a:	01041703          	lh	a4,16(s0)
   11f5e:	6c14                	ld	a3,24(s0)
   11f60:	03071793          	slli	a5,a4,0x30
   11f64:	93c1                	srli	a5,a5,0x30
   11f66:	b7b5                	j	11ed2 <__swsetup_r+0x2a>
   11f68:	6c2c                	ld	a1,88(s0)
   11f6a:	cd81                	beqz	a1,11f82 <__swsetup_r+0xda>
   11f6c:	07440793          	addi	a5,s0,116
   11f70:	00f58763          	beq	a1,a5,11f7e <__swsetup_r+0xd6>
   11f74:	8526                	mv	a0,s1
   11f76:	68a000ef          	jal	ra,12600 <_free_r>
   11f7a:	01041703          	lh	a4,16(s0)
   11f7e:	04043c23          	sd	zero,88(s0)
   11f82:	6c14                	ld	a3,24(s0)
   11f84:	fdb77713          	andi	a4,a4,-37
   11f88:	00042423          	sw	zero,8(s0)
   11f8c:	e014                	sd	a3,0(s0)
   11f8e:	b765                	j	11f36 <__swsetup_r+0x8e>
   11f90:	47a5                	li	a5,9
   11f92:	c09c                	sw	a5,0(s1)
   11f94:	04076713          	ori	a4,a4,64
   11f98:	00e41823          	sh	a4,16(s0)
   11f9c:	557d                	li	a0,-1
   11f9e:	b7a9                	j	11ee8 <__swsetup_r+0x40>

0000000000011fa0 <__call_exitprocs>:
   11fa0:	715d                	addi	sp,sp,-80
   11fa2:	f052                	sd	s4,32(sp)
   11fa4:	7481ba03          	ld	s4,1864(gp) # 1f318 <_global_impure_ptr>
   11fa8:	f84a                	sd	s2,48(sp)
   11faa:	e486                	sd	ra,72(sp)
   11fac:	1f8a3903          	ld	s2,504(s4)
   11fb0:	e0a2                	sd	s0,64(sp)
   11fb2:	fc26                	sd	s1,56(sp)
   11fb4:	f44e                	sd	s3,40(sp)
   11fb6:	ec56                	sd	s5,24(sp)
   11fb8:	e85a                	sd	s6,16(sp)
   11fba:	e45e                	sd	s7,8(sp)
   11fbc:	e062                	sd	s8,0(sp)
   11fbe:	02090863          	beqz	s2,11fee <__call_exitprocs+0x4e>
   11fc2:	8b2a                	mv	s6,a0
   11fc4:	8bae                	mv	s7,a1
   11fc6:	4a85                	li	s5,1
   11fc8:	59fd                	li	s3,-1
   11fca:	00892483          	lw	s1,8(s2)
   11fce:	fff4841b          	addiw	s0,s1,-1
   11fd2:	00044e63          	bltz	s0,11fee <__call_exitprocs+0x4e>
   11fd6:	048e                	slli	s1,s1,0x3
   11fd8:	94ca                	add	s1,s1,s2
   11fda:	020b8663          	beqz	s7,12006 <__call_exitprocs+0x66>
   11fde:	2084b783          	ld	a5,520(s1)
   11fe2:	03778263          	beq	a5,s7,12006 <__call_exitprocs+0x66>
   11fe6:	347d                	addiw	s0,s0,-1
   11fe8:	14e1                	addi	s1,s1,-8
   11fea:	ff3418e3          	bne	s0,s3,11fda <__call_exitprocs+0x3a>
   11fee:	60a6                	ld	ra,72(sp)
   11ff0:	6406                	ld	s0,64(sp)
   11ff2:	74e2                	ld	s1,56(sp)
   11ff4:	7942                	ld	s2,48(sp)
   11ff6:	79a2                	ld	s3,40(sp)
   11ff8:	7a02                	ld	s4,32(sp)
   11ffa:	6ae2                	ld	s5,24(sp)
   11ffc:	6b42                	ld	s6,16(sp)
   11ffe:	6ba2                	ld	s7,8(sp)
   12000:	6c02                	ld	s8,0(sp)
   12002:	6161                	addi	sp,sp,80
   12004:	8082                	ret
   12006:	00892783          	lw	a5,8(s2)
   1200a:	6498                	ld	a4,8(s1)
   1200c:	37fd                	addiw	a5,a5,-1
   1200e:	04878463          	beq	a5,s0,12056 <__call_exitprocs+0xb6>
   12012:	0004b423          	sd	zero,8(s1)
   12016:	db61                	beqz	a4,11fe6 <__call_exitprocs+0x46>
   12018:	31092783          	lw	a5,784(s2)
   1201c:	008a96bb          	sllw	a3,s5,s0
   12020:	00892c03          	lw	s8,8(s2)
   12024:	8ff5                	and	a5,a5,a3
   12026:	2781                	sext.w	a5,a5
   12028:	ef89                	bnez	a5,12042 <__call_exitprocs+0xa2>
   1202a:	9702                	jalr	a4
   1202c:	00892703          	lw	a4,8(s2)
   12030:	1f8a3783          	ld	a5,504(s4)
   12034:	01871463          	bne	a4,s8,1203c <__call_exitprocs+0x9c>
   12038:	fb2787e3          	beq	a5,s2,11fe6 <__call_exitprocs+0x46>
   1203c:	dbcd                	beqz	a5,11fee <__call_exitprocs+0x4e>
   1203e:	893e                	mv	s2,a5
   12040:	b769                	j	11fca <__call_exitprocs+0x2a>
   12042:	31492783          	lw	a5,788(s2)
   12046:	1084b583          	ld	a1,264(s1)
   1204a:	8ff5                	and	a5,a5,a3
   1204c:	2781                	sext.w	a5,a5
   1204e:	e799                	bnez	a5,1205c <__call_exitprocs+0xbc>
   12050:	855a                	mv	a0,s6
   12052:	9702                	jalr	a4
   12054:	bfe1                	j	1202c <__call_exitprocs+0x8c>
   12056:	00892423          	sw	s0,8(s2)
   1205a:	bf75                	j	12016 <__call_exitprocs+0x76>
   1205c:	852e                	mv	a0,a1
   1205e:	9702                	jalr	a4
   12060:	b7f1                	j	1202c <__call_exitprocs+0x8c>

0000000000012062 <__sflush_r>:
   12062:	01059783          	lh	a5,16(a1)
   12066:	7179                	addi	sp,sp,-48
   12068:	f022                	sd	s0,32(sp)
   1206a:	e44e                	sd	s3,8(sp)
   1206c:	f406                	sd	ra,40(sp)
   1206e:	ec26                	sd	s1,24(sp)
   12070:	e84a                	sd	s2,16(sp)
   12072:	0087f693          	andi	a3,a5,8
   12076:	842e                	mv	s0,a1
   12078:	89aa                	mv	s3,a0
   1207a:	ead5                	bnez	a3,1212e <__sflush_r+0xcc>
   1207c:	6705                	lui	a4,0x1
   1207e:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf8e8>
   12082:	4594                	lw	a3,8(a1)
   12084:	8fd9                	or	a5,a5,a4
   12086:	00f59823          	sh	a5,16(a1)
   1208a:	10d05063          	blez	a3,1218a <__sflush_r+0x128>
   1208e:	6438                	ld	a4,72(s0)
   12090:	c759                	beqz	a4,1211e <__sflush_r+0xbc>
   12092:	17c2                	slli	a5,a5,0x30
   12094:	93c1                	srli	a5,a5,0x30
   12096:	6685                	lui	a3,0x1
   12098:	0009a483          	lw	s1,0(s3)
   1209c:	8efd                	and	a3,a3,a5
   1209e:	0009a023          	sw	zero,0(s3)
   120a2:	780c                	ld	a1,48(s0)
   120a4:	e6fd                	bnez	a3,12192 <__sflush_r+0x130>
   120a6:	4601                	li	a2,0
   120a8:	4685                	li	a3,1
   120aa:	854e                	mv	a0,s3
   120ac:	9702                	jalr	a4
   120ae:	57fd                	li	a5,-1
   120b0:	862a                	mv	a2,a0
   120b2:	10f50763          	beq	a0,a5,121c0 <__sflush_r+0x15e>
   120b6:	01045783          	lhu	a5,16(s0)
   120ba:	6438                	ld	a4,72(s0)
   120bc:	780c                	ld	a1,48(s0)
   120be:	8b91                	andi	a5,a5,4
   120c0:	c799                	beqz	a5,120ce <__sflush_r+0x6c>
   120c2:	4414                	lw	a3,8(s0)
   120c4:	6c3c                	ld	a5,88(s0)
   120c6:	8e15                	sub	a2,a2,a3
   120c8:	c399                	beqz	a5,120ce <__sflush_r+0x6c>
   120ca:	583c                	lw	a5,112(s0)
   120cc:	8e1d                	sub	a2,a2,a5
   120ce:	4681                	li	a3,0
   120d0:	854e                	mv	a0,s3
   120d2:	9702                	jalr	a4
   120d4:	57fd                	li	a5,-1
   120d6:	0cf51063          	bne	a0,a5,12196 <__sflush_r+0x134>
   120da:	0009a703          	lw	a4,0(s3)
   120de:	01041783          	lh	a5,16(s0)
   120e2:	cf6d                	beqz	a4,121dc <__sflush_r+0x17a>
   120e4:	46f5                	li	a3,29
   120e6:	00d70563          	beq	a4,a3,120f0 <__sflush_r+0x8e>
   120ea:	46d9                	li	a3,22
   120ec:	0ed71e63          	bne	a4,a3,121e8 <__sflush_r+0x186>
   120f0:	6c14                	ld	a3,24(s0)
   120f2:	777d                	lui	a4,0xfffff
   120f4:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffe042f>
   120f8:	8ff9                	and	a5,a5,a4
   120fa:	00f41823          	sh	a5,16(s0)
   120fe:	00042423          	sw	zero,8(s0)
   12102:	e014                	sd	a3,0(s0)
   12104:	6c2c                	ld	a1,88(s0)
   12106:	0099a023          	sw	s1,0(s3)
   1210a:	c991                	beqz	a1,1211e <__sflush_r+0xbc>
   1210c:	07440793          	addi	a5,s0,116
   12110:	00f58563          	beq	a1,a5,1211a <__sflush_r+0xb8>
   12114:	854e                	mv	a0,s3
   12116:	4ea000ef          	jal	ra,12600 <_free_r>
   1211a:	04043c23          	sd	zero,88(s0)
   1211e:	4501                	li	a0,0
   12120:	70a2                	ld	ra,40(sp)
   12122:	7402                	ld	s0,32(sp)
   12124:	64e2                	ld	s1,24(sp)
   12126:	6942                	ld	s2,16(sp)
   12128:	69a2                	ld	s3,8(sp)
   1212a:	6145                	addi	sp,sp,48
   1212c:	8082                	ret
   1212e:	0185b903          	ld	s2,24(a1)
   12132:	fe0906e3          	beqz	s2,1211e <__sflush_r+0xbc>
   12136:	6184                	ld	s1,0(a1)
   12138:	03079713          	slli	a4,a5,0x30
   1213c:	9341                	srli	a4,a4,0x30
   1213e:	8b0d                	andi	a4,a4,3
   12140:	0125b023          	sd	s2,0(a1)
   12144:	412484bb          	subw	s1,s1,s2
   12148:	4781                	li	a5,0
   1214a:	e311                	bnez	a4,1214e <__sflush_r+0xec>
   1214c:	519c                	lw	a5,32(a1)
   1214e:	c45c                	sw	a5,12(s0)
   12150:	00904663          	bgtz	s1,1215c <__sflush_r+0xfa>
   12154:	b7e9                	j	1211e <__sflush_r+0xbc>
   12156:	992a                	add	s2,s2,a0
   12158:	fc9053e3          	blez	s1,1211e <__sflush_r+0xbc>
   1215c:	603c                	ld	a5,64(s0)
   1215e:	780c                	ld	a1,48(s0)
   12160:	86a6                	mv	a3,s1
   12162:	864a                	mv	a2,s2
   12164:	854e                	mv	a0,s3
   12166:	9782                	jalr	a5
   12168:	9c89                	subw	s1,s1,a0
   1216a:	fea046e3          	bgtz	a0,12156 <__sflush_r+0xf4>
   1216e:	01045783          	lhu	a5,16(s0)
   12172:	70a2                	ld	ra,40(sp)
   12174:	64e2                	ld	s1,24(sp)
   12176:	0407e793          	ori	a5,a5,64
   1217a:	00f41823          	sh	a5,16(s0)
   1217e:	7402                	ld	s0,32(sp)
   12180:	6942                	ld	s2,16(sp)
   12182:	69a2                	ld	s3,8(sp)
   12184:	557d                	li	a0,-1
   12186:	6145                	addi	sp,sp,48
   12188:	8082                	ret
   1218a:	59b8                	lw	a4,112(a1)
   1218c:	f0e041e3          	bgtz	a4,1208e <__sflush_r+0x2c>
   12190:	b779                	j	1211e <__sflush_r+0xbc>
   12192:	6850                	ld	a2,144(s0)
   12194:	b72d                	j	120be <__sflush_r+0x5c>
   12196:	01045783          	lhu	a5,16(s0)
   1219a:	777d                	lui	a4,0xfffff
   1219c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffe042f>
   121a0:	8ff9                	and	a5,a5,a4
   121a2:	6c14                	ld	a3,24(s0)
   121a4:	0107979b          	slliw	a5,a5,0x10
   121a8:	4107d79b          	sraiw	a5,a5,0x10
   121ac:	6705                	lui	a4,0x1
   121ae:	00f41823          	sh	a5,16(s0)
   121b2:	00042423          	sw	zero,8(s0)
   121b6:	e014                	sd	a3,0(s0)
   121b8:	8ff9                	and	a5,a5,a4
   121ba:	d7a9                	beqz	a5,12104 <__sflush_r+0xa2>
   121bc:	e848                	sd	a0,144(s0)
   121be:	b799                	j	12104 <__sflush_r+0xa2>
   121c0:	0009a783          	lw	a5,0(s3)
   121c4:	ee0789e3          	beqz	a5,120b6 <__sflush_r+0x54>
   121c8:	4775                	li	a4,29
   121ca:	00e78563          	beq	a5,a4,121d4 <__sflush_r+0x172>
   121ce:	4759                	li	a4,22
   121d0:	f8e79fe3          	bne	a5,a4,1216e <__sflush_r+0x10c>
   121d4:	0099a023          	sw	s1,0(s3)
   121d8:	4501                	li	a0,0
   121da:	b799                	j	12120 <__sflush_r+0xbe>
   121dc:	777d                	lui	a4,0xfffff
   121de:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffe042f>
   121e2:	6c14                	ld	a3,24(s0)
   121e4:	8ff9                	and	a5,a5,a4
   121e6:	b7d9                	j	121ac <__sflush_r+0x14a>
   121e8:	0407e793          	ori	a5,a5,64
   121ec:	00f41823          	sh	a5,16(s0)
   121f0:	557d                	li	a0,-1
   121f2:	b73d                	j	12120 <__sflush_r+0xbe>

00000000000121f4 <_fflush_r>:
   121f4:	1101                	addi	sp,sp,-32
   121f6:	e822                	sd	s0,16(sp)
   121f8:	ec06                	sd	ra,24(sp)
   121fa:	842a                	mv	s0,a0
   121fc:	c119                	beqz	a0,12202 <_fflush_r+0xe>
   121fe:	493c                	lw	a5,80(a0)
   12200:	cb89                	beqz	a5,12212 <_fflush_r+0x1e>
   12202:	01059783          	lh	a5,16(a1)
   12206:	ef89                	bnez	a5,12220 <_fflush_r+0x2c>
   12208:	60e2                	ld	ra,24(sp)
   1220a:	6442                	ld	s0,16(sp)
   1220c:	4501                	li	a0,0
   1220e:	6105                	addi	sp,sp,32
   12210:	8082                	ret
   12212:	e42e                	sd	a1,8(sp)
   12214:	2bc000ef          	jal	ra,124d0 <__sinit>
   12218:	65a2                	ld	a1,8(sp)
   1221a:	01059783          	lh	a5,16(a1)
   1221e:	d7ed                	beqz	a5,12208 <_fflush_r+0x14>
   12220:	8522                	mv	a0,s0
   12222:	6442                	ld	s0,16(sp)
   12224:	60e2                	ld	ra,24(sp)
   12226:	6105                	addi	sp,sp,32
   12228:	bd2d                	j	12062 <__sflush_r>

000000000001222a <fflush>:
   1222a:	cd1d                	beqz	a0,12268 <fflush+0x3e>
   1222c:	1101                	addi	sp,sp,-32
   1222e:	e822                	sd	s0,16(sp)
   12230:	842a                	mv	s0,a0
   12232:	7581b503          	ld	a0,1880(gp) # 1f328 <_impure_ptr>
   12236:	ec06                	sd	ra,24(sp)
   12238:	c119                	beqz	a0,1223e <fflush+0x14>
   1223a:	493c                	lw	a5,80(a0)
   1223c:	cf91                	beqz	a5,12258 <fflush+0x2e>
   1223e:	01041783          	lh	a5,16(s0)
   12242:	e791                	bnez	a5,1224e <fflush+0x24>
   12244:	60e2                	ld	ra,24(sp)
   12246:	6442                	ld	s0,16(sp)
   12248:	4501                	li	a0,0
   1224a:	6105                	addi	sp,sp,32
   1224c:	8082                	ret
   1224e:	85a2                	mv	a1,s0
   12250:	6442                	ld	s0,16(sp)
   12252:	60e2                	ld	ra,24(sp)
   12254:	6105                	addi	sp,sp,32
   12256:	b531                	j	12062 <__sflush_r>
   12258:	e42a                	sd	a0,8(sp)
   1225a:	276000ef          	jal	ra,124d0 <__sinit>
   1225e:	01041783          	lh	a5,16(s0)
   12262:	6522                	ld	a0,8(sp)
   12264:	d3e5                	beqz	a5,12244 <fflush+0x1a>
   12266:	b7e5                	j	1224e <fflush+0x24>
   12268:	7481b503          	ld	a0,1864(gp) # 1f318 <_global_impure_ptr>
   1226c:	65c9                	lui	a1,0x12
   1226e:	1f458593          	addi	a1,a1,500 # 121f4 <_fflush_r>
   12272:	a58d                	j	128d4 <_fwalk_reent>

0000000000012274 <__fp_lock>:
   12274:	4501                	li	a0,0
   12276:	8082                	ret

0000000000012278 <_cleanup_r>:
   12278:	65e5                	lui	a1,0x19
   1227a:	db258593          	addi	a1,a1,-590 # 18db2 <_fclose_r>
   1227e:	ad99                	j	128d4 <_fwalk_reent>

0000000000012280 <__fp_unlock>:
   12280:	4501                	li	a0,0
   12282:	8082                	ret

0000000000012284 <__sinit.part.0>:
   12284:	7139                	addi	sp,sp,-64
   12286:	67c9                	lui	a5,0x12
   12288:	fc06                	sd	ra,56(sp)
   1228a:	f822                	sd	s0,48(sp)
   1228c:	f426                	sd	s1,40(sp)
   1228e:	f04a                	sd	s2,32(sp)
   12290:	ec4e                	sd	s3,24(sp)
   12292:	e852                	sd	s4,16(sp)
   12294:	e456                	sd	s5,8(sp)
   12296:	e05a                	sd	s6,0(sp)
   12298:	6500                	ld	s0,8(a0)
   1229a:	27878793          	addi	a5,a5,632 # 12278 <_cleanup_r>
   1229e:	ed3c                	sd	a5,88(a0)
   122a0:	53850713          	addi	a4,a0,1336
   122a4:	478d                	li	a5,3
   122a6:	52e53823          	sd	a4,1328(a0)
   122aa:	52f52423          	sw	a5,1320(a0)
   122ae:	52053023          	sd	zero,1312(a0)
   122b2:	4791                	li	a5,4
   122b4:	892a                	mv	s2,a0
   122b6:	c81c                	sw	a5,16(s0)
   122b8:	4621                	li	a2,8
   122ba:	4581                	li	a1,0
   122bc:	0a042623          	sw	zero,172(s0)
   122c0:	00043023          	sd	zero,0(s0)
   122c4:	00043423          	sd	zero,8(s0)
   122c8:	00043c23          	sd	zero,24(s0)
   122cc:	02042023          	sw	zero,32(s0)
   122d0:	02042423          	sw	zero,40(s0)
   122d4:	0a440513          	addi	a0,s0,164
   122d8:	f9dfd0ef          	jal	ra,10274 <memset>
   122dc:	6b59                	lui	s6,0x16
   122de:	01093483          	ld	s1,16(s2)
   122e2:	6ad9                	lui	s5,0x16
   122e4:	6a59                	lui	s4,0x16
   122e6:	69d9                	lui	s3,0x16
   122e8:	0ccb0b13          	addi	s6,s6,204 # 160cc <__sread>
   122ec:	108a8a93          	addi	s5,s5,264 # 16108 <__swrite>
   122f0:	15ca0a13          	addi	s4,s4,348 # 1615c <__sseek>
   122f4:	19e98993          	addi	s3,s3,414 # 1619e <__sclose>
   122f8:	67c1                	lui	a5,0x10
   122fa:	03643c23          	sd	s6,56(s0)
   122fe:	05543023          	sd	s5,64(s0)
   12302:	05443423          	sd	s4,72(s0)
   12306:	05343823          	sd	s3,80(s0)
   1230a:	f800                	sd	s0,48(s0)
   1230c:	07a5                	addi	a5,a5,9 # 10009 <exit-0xdf>
   1230e:	c89c                	sw	a5,16(s1)
   12310:	4621                	li	a2,8
   12312:	4581                	li	a1,0
   12314:	0a04a623          	sw	zero,172(s1)
   12318:	0004b023          	sd	zero,0(s1)
   1231c:	0004b423          	sd	zero,8(s1)
   12320:	0004bc23          	sd	zero,24(s1)
   12324:	0204a023          	sw	zero,32(s1)
   12328:	0204a423          	sw	zero,40(s1)
   1232c:	0a448513          	addi	a0,s1,164
   12330:	f45fd0ef          	jal	ra,10274 <memset>
   12334:	01893403          	ld	s0,24(s2)
   12338:	000207b7          	lui	a5,0x20
   1233c:	0364bc23          	sd	s6,56(s1)
   12340:	0554b023          	sd	s5,64(s1)
   12344:	0544b423          	sd	s4,72(s1)
   12348:	0534b823          	sd	s3,80(s1)
   1234c:	f884                	sd	s1,48(s1)
   1234e:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0xc42>
   12350:	c81c                	sw	a5,16(s0)
   12352:	0a042623          	sw	zero,172(s0)
   12356:	00043023          	sd	zero,0(s0)
   1235a:	00043423          	sd	zero,8(s0)
   1235e:	00043c23          	sd	zero,24(s0)
   12362:	02042023          	sw	zero,32(s0)
   12366:	02042423          	sw	zero,40(s0)
   1236a:	0a440513          	addi	a0,s0,164
   1236e:	4621                	li	a2,8
   12370:	4581                	li	a1,0
   12372:	f03fd0ef          	jal	ra,10274 <memset>
   12376:	70e2                	ld	ra,56(sp)
   12378:	03643c23          	sd	s6,56(s0)
   1237c:	05543023          	sd	s5,64(s0)
   12380:	05443423          	sd	s4,72(s0)
   12384:	05343823          	sd	s3,80(s0)
   12388:	f800                	sd	s0,48(s0)
   1238a:	7442                	ld	s0,48(sp)
   1238c:	4785                	li	a5,1
   1238e:	04f92823          	sw	a5,80(s2)
   12392:	74a2                	ld	s1,40(sp)
   12394:	7902                	ld	s2,32(sp)
   12396:	69e2                	ld	s3,24(sp)
   12398:	6a42                	ld	s4,16(sp)
   1239a:	6aa2                	ld	s5,8(sp)
   1239c:	6b02                	ld	s6,0(sp)
   1239e:	6121                	addi	sp,sp,64
   123a0:	8082                	ret

00000000000123a2 <__sfmoreglue>:
   123a2:	1101                	addi	sp,sp,-32
   123a4:	e426                	sd	s1,8(sp)
   123a6:	0b000793          	li	a5,176
   123aa:	fff5849b          	addiw	s1,a1,-1
   123ae:	02f484b3          	mul	s1,s1,a5
   123b2:	e04a                	sd	s2,0(sp)
   123b4:	892e                	mv	s2,a1
   123b6:	e822                	sd	s0,16(sp)
   123b8:	ec06                	sd	ra,24(sp)
   123ba:	0c848593          	addi	a1,s1,200
   123be:	03b020ef          	jal	ra,14bf8 <_malloc_r>
   123c2:	842a                	mv	s0,a0
   123c4:	cd01                	beqz	a0,123dc <__sfmoreglue+0x3a>
   123c6:	0561                	addi	a0,a0,24
   123c8:	00043023          	sd	zero,0(s0)
   123cc:	01242423          	sw	s2,8(s0)
   123d0:	e808                	sd	a0,16(s0)
   123d2:	0b048613          	addi	a2,s1,176
   123d6:	4581                	li	a1,0
   123d8:	e9dfd0ef          	jal	ra,10274 <memset>
   123dc:	60e2                	ld	ra,24(sp)
   123de:	8522                	mv	a0,s0
   123e0:	6442                	ld	s0,16(sp)
   123e2:	64a2                	ld	s1,8(sp)
   123e4:	6902                	ld	s2,0(sp)
   123e6:	6105                	addi	sp,sp,32
   123e8:	8082                	ret

00000000000123ea <__sfp>:
   123ea:	7179                	addi	sp,sp,-48
   123ec:	ec26                	sd	s1,24(sp)
   123ee:	7481b483          	ld	s1,1864(gp) # 1f318 <_global_impure_ptr>
   123f2:	e84a                	sd	s2,16(sp)
   123f4:	f406                	sd	ra,40(sp)
   123f6:	48bc                	lw	a5,80(s1)
   123f8:	f022                	sd	s0,32(sp)
   123fa:	e44e                	sd	s3,8(sp)
   123fc:	e052                	sd	s4,0(sp)
   123fe:	892a                	mv	s2,a0
   12400:	c3d9                	beqz	a5,12486 <__sfp+0x9c>
   12402:	52048493          	addi	s1,s1,1312
   12406:	0b000993          	li	s3,176
   1240a:	4a11                	li	s4,4
   1240c:	449c                	lw	a5,8(s1)
   1240e:	6880                	ld	s0,16(s1)
   12410:	06f05763          	blez	a5,1247e <__sfp+0x94>
   12414:	37fd                	addiw	a5,a5,-1
   12416:	1782                	slli	a5,a5,0x20
   12418:	9381                	srli	a5,a5,0x20
   1241a:	0785                	addi	a5,a5,1
   1241c:	033787b3          	mul	a5,a5,s3
   12420:	97a2                	add	a5,a5,s0
   12422:	a029                	j	1242c <__sfp+0x42>
   12424:	0b040413          	addi	s0,s0,176
   12428:	04f40b63          	beq	s0,a5,1247e <__sfp+0x94>
   1242c:	01041703          	lh	a4,16(s0)
   12430:	fb75                	bnez	a4,12424 <__sfp+0x3a>
   12432:	77c1                	lui	a5,0xffff0
   12434:	0785                	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffd0c31>
   12436:	0a042623          	sw	zero,172(s0)
   1243a:	00043023          	sd	zero,0(s0)
   1243e:	00043423          	sd	zero,8(s0)
   12442:	c81c                	sw	a5,16(s0)
   12444:	00043c23          	sd	zero,24(s0)
   12448:	02042023          	sw	zero,32(s0)
   1244c:	02042423          	sw	zero,40(s0)
   12450:	4621                	li	a2,8
   12452:	4581                	li	a1,0
   12454:	0a440513          	addi	a0,s0,164
   12458:	e1dfd0ef          	jal	ra,10274 <memset>
   1245c:	04043c23          	sd	zero,88(s0)
   12460:	06042023          	sw	zero,96(s0)
   12464:	06043c23          	sd	zero,120(s0)
   12468:	08042023          	sw	zero,128(s0)
   1246c:	70a2                	ld	ra,40(sp)
   1246e:	8522                	mv	a0,s0
   12470:	7402                	ld	s0,32(sp)
   12472:	64e2                	ld	s1,24(sp)
   12474:	6942                	ld	s2,16(sp)
   12476:	69a2                	ld	s3,8(sp)
   12478:	6a02                	ld	s4,0(sp)
   1247a:	6145                	addi	sp,sp,48
   1247c:	8082                	ret
   1247e:	6080                	ld	s0,0(s1)
   12480:	c419                	beqz	s0,1248e <__sfp+0xa4>
   12482:	84a2                	mv	s1,s0
   12484:	b761                	j	1240c <__sfp+0x22>
   12486:	8526                	mv	a0,s1
   12488:	dfdff0ef          	jal	ra,12284 <__sinit.part.0>
   1248c:	bf9d                	j	12402 <__sfp+0x18>
   1248e:	2d800593          	li	a1,728
   12492:	854a                	mv	a0,s2
   12494:	764020ef          	jal	ra,14bf8 <_malloc_r>
   12498:	842a                	mv	s0,a0
   1249a:	cd19                	beqz	a0,124b8 <__sfp+0xce>
   1249c:	0561                	addi	a0,a0,24
   1249e:	00043023          	sd	zero,0(s0)
   124a2:	01442423          	sw	s4,8(s0)
   124a6:	e808                	sd	a0,16(s0)
   124a8:	2c000613          	li	a2,704
   124ac:	4581                	li	a1,0
   124ae:	dc7fd0ef          	jal	ra,10274 <memset>
   124b2:	e080                	sd	s0,0(s1)
   124b4:	84a2                	mv	s1,s0
   124b6:	bf99                	j	1240c <__sfp+0x22>
   124b8:	0004b023          	sd	zero,0(s1)
   124bc:	47b1                	li	a5,12
   124be:	00f92023          	sw	a5,0(s2)
   124c2:	b76d                	j	1246c <__sfp+0x82>

00000000000124c4 <_cleanup>:
   124c4:	7481b503          	ld	a0,1864(gp) # 1f318 <_global_impure_ptr>
   124c8:	65e5                	lui	a1,0x19
   124ca:	db258593          	addi	a1,a1,-590 # 18db2 <_fclose_r>
   124ce:	a119                	j	128d4 <_fwalk_reent>

00000000000124d0 <__sinit>:
   124d0:	493c                	lw	a5,80(a0)
   124d2:	c391                	beqz	a5,124d6 <__sinit+0x6>
   124d4:	8082                	ret
   124d6:	b37d                	j	12284 <__sinit.part.0>

00000000000124d8 <__sfp_lock_acquire>:
   124d8:	8082                	ret

00000000000124da <__sfp_lock_release>:
   124da:	8082                	ret

00000000000124dc <__sinit_lock_acquire>:
   124dc:	8082                	ret

00000000000124de <__sinit_lock_release>:
   124de:	8082                	ret

00000000000124e0 <__fp_lock_all>:
   124e0:	7581b503          	ld	a0,1880(gp) # 1f328 <_impure_ptr>
   124e4:	65c9                	lui	a1,0x12
   124e6:	27458593          	addi	a1,a1,628 # 12274 <__fp_lock>
   124ea:	a6a5                	j	12852 <_fwalk>

00000000000124ec <__fp_unlock_all>:
   124ec:	7581b503          	ld	a0,1880(gp) # 1f328 <_impure_ptr>
   124f0:	65c9                	lui	a1,0x12
   124f2:	28058593          	addi	a1,a1,640 # 12280 <__fp_unlock>
   124f6:	aeb1                	j	12852 <_fwalk>

00000000000124f8 <__libc_fini_array>:
   124f8:	1101                	addi	sp,sp,-32
   124fa:	e822                	sd	s0,16(sp)
   124fc:	67f9                	lui	a5,0x1e
   124fe:	6479                	lui	s0,0x1e
   12500:	1e078793          	addi	a5,a5,480 # 1e1e0 <__do_global_dtors_aux_fini_array_entry>
   12504:	1e840413          	addi	s0,s0,488 # 1e1e8 <impure_data>
   12508:	8c1d                	sub	s0,s0,a5
   1250a:	e426                	sd	s1,8(sp)
   1250c:	ec06                	sd	ra,24(sp)
   1250e:	40345493          	srai	s1,s0,0x3
   12512:	c881                	beqz	s1,12522 <__libc_fini_array+0x2a>
   12514:	1461                	addi	s0,s0,-8
   12516:	943e                	add	s0,s0,a5
   12518:	601c                	ld	a5,0(s0)
   1251a:	14fd                	addi	s1,s1,-1
   1251c:	1461                	addi	s0,s0,-8
   1251e:	9782                	jalr	a5
   12520:	fce5                	bnez	s1,12518 <__libc_fini_array+0x20>
   12522:	60e2                	ld	ra,24(sp)
   12524:	6442                	ld	s0,16(sp)
   12526:	64a2                	ld	s1,8(sp)
   12528:	6105                	addi	sp,sp,32
   1252a:	8082                	ret

000000000001252c <_malloc_trim_r>:
   1252c:	7179                	addi	sp,sp,-48
   1252e:	e44e                	sd	s3,8(sp)
   12530:	0001f9b7          	lui	s3,0x1f
   12534:	f022                	sd	s0,32(sp)
   12536:	ec26                	sd	s1,24(sp)
   12538:	e84a                	sd	s2,16(sp)
   1253a:	e052                	sd	s4,0(sp)
   1253c:	f406                	sd	ra,40(sp)
   1253e:	8a2e                	mv	s4,a1
   12540:	892a                	mv	s2,a0
   12542:	ad898993          	addi	s3,s3,-1320 # 1ead8 <__malloc_av_>
   12546:	59f020ef          	jal	ra,152e4 <__malloc_lock>
   1254a:	0109b703          	ld	a4,16(s3)
   1254e:	6785                	lui	a5,0x1
   12550:	fdf78413          	addi	s0,a5,-33 # fdf <exit-0xf109>
   12554:	6704                	ld	s1,8(a4)
   12556:	41440433          	sub	s0,s0,s4
   1255a:	98f1                	andi	s1,s1,-4
   1255c:	9426                	add	s0,s0,s1
   1255e:	8031                	srli	s0,s0,0xc
   12560:	147d                	addi	s0,s0,-1
   12562:	0432                	slli	s0,s0,0xc
   12564:	00f44b63          	blt	s0,a5,1257a <_malloc_trim_r+0x4e>
   12568:	4581                	li	a1,0
   1256a:	854a                	mv	a0,s2
   1256c:	223030ef          	jal	ra,15f8e <_sbrk_r>
   12570:	0109b783          	ld	a5,16(s3)
   12574:	97a6                	add	a5,a5,s1
   12576:	00f50e63          	beq	a0,a5,12592 <_malloc_trim_r+0x66>
   1257a:	854a                	mv	a0,s2
   1257c:	56b020ef          	jal	ra,152e6 <__malloc_unlock>
   12580:	70a2                	ld	ra,40(sp)
   12582:	7402                	ld	s0,32(sp)
   12584:	64e2                	ld	s1,24(sp)
   12586:	6942                	ld	s2,16(sp)
   12588:	69a2                	ld	s3,8(sp)
   1258a:	6a02                	ld	s4,0(sp)
   1258c:	4501                	li	a0,0
   1258e:	6145                	addi	sp,sp,48
   12590:	8082                	ret
   12592:	408005b3          	neg	a1,s0
   12596:	854a                	mv	a0,s2
   12598:	1f7030ef          	jal	ra,15f8e <_sbrk_r>
   1259c:	57fd                	li	a5,-1
   1259e:	02f50b63          	beq	a0,a5,125d4 <_malloc_trim_r+0xa8>
   125a2:	0001f7b7          	lui	a5,0x1f
   125a6:	3a878793          	addi	a5,a5,936 # 1f3a8 <__malloc_current_mallinfo>
   125aa:	4398                	lw	a4,0(a5)
   125ac:	0109b683          	ld	a3,16(s3)
   125b0:	8c81                	sub	s1,s1,s0
   125b2:	0014e493          	ori	s1,s1,1
   125b6:	9f01                	subw	a4,a4,s0
   125b8:	854a                	mv	a0,s2
   125ba:	e684                	sd	s1,8(a3)
   125bc:	c398                	sw	a4,0(a5)
   125be:	529020ef          	jal	ra,152e6 <__malloc_unlock>
   125c2:	70a2                	ld	ra,40(sp)
   125c4:	7402                	ld	s0,32(sp)
   125c6:	64e2                	ld	s1,24(sp)
   125c8:	6942                	ld	s2,16(sp)
   125ca:	69a2                	ld	s3,8(sp)
   125cc:	6a02                	ld	s4,0(sp)
   125ce:	4505                	li	a0,1
   125d0:	6145                	addi	sp,sp,48
   125d2:	8082                	ret
   125d4:	4581                	li	a1,0
   125d6:	854a                	mv	a0,s2
   125d8:	1b7030ef          	jal	ra,15f8e <_sbrk_r>
   125dc:	0109b703          	ld	a4,16(s3)
   125e0:	46fd                	li	a3,31
   125e2:	40e507b3          	sub	a5,a0,a4
   125e6:	f8f6dae3          	bge	a3,a5,1257a <_malloc_trim_r+0x4e>
   125ea:	7601b683          	ld	a3,1888(gp) # 1f330 <__malloc_sbrk_base>
   125ee:	0017e793          	ori	a5,a5,1
   125f2:	e71c                	sd	a5,8(a4)
   125f4:	8d15                	sub	a0,a0,a3
   125f6:	0001f6b7          	lui	a3,0x1f
   125fa:	3aa6a423          	sw	a0,936(a3) # 1f3a8 <__malloc_current_mallinfo>
   125fe:	bfb5                	j	1257a <_malloc_trim_r+0x4e>

0000000000012600 <_free_r>:
   12600:	c9e5                	beqz	a1,126f0 <_free_r+0xf0>
   12602:	1101                	addi	sp,sp,-32
   12604:	e822                	sd	s0,16(sp)
   12606:	e426                	sd	s1,8(sp)
   12608:	842e                	mv	s0,a1
   1260a:	84aa                	mv	s1,a0
   1260c:	ec06                	sd	ra,24(sp)
   1260e:	4d7020ef          	jal	ra,152e4 <__malloc_lock>
   12612:	ff843503          	ld	a0,-8(s0)
   12616:	ff040713          	addi	a4,s0,-16
   1261a:	0001f5b7          	lui	a1,0x1f
   1261e:	ffe57793          	andi	a5,a0,-2
   12622:	00f70633          	add	a2,a4,a5
   12626:	ad858593          	addi	a1,a1,-1320 # 1ead8 <__malloc_av_>
   1262a:	6614                	ld	a3,8(a2)
   1262c:	0105b803          	ld	a6,16(a1)
   12630:	9af1                	andi	a3,a3,-4
   12632:	14c80263          	beq	a6,a2,12776 <_free_r+0x176>
   12636:	e614                	sd	a3,8(a2)
   12638:	8905                	andi	a0,a0,1
   1263a:	00d60833          	add	a6,a2,a3
   1263e:	e149                	bnez	a0,126c0 <_free_r+0xc0>
   12640:	ff043303          	ld	t1,-16(s0)
   12644:	00883803          	ld	a6,8(a6)
   12648:	0001f537          	lui	a0,0x1f
   1264c:	40670733          	sub	a4,a4,t1
   12650:	01073883          	ld	a7,16(a4)
   12654:	ae850513          	addi	a0,a0,-1304 # 1eae8 <__malloc_av_+0x10>
   12658:	979a                	add	a5,a5,t1
   1265a:	00187813          	andi	a6,a6,1
   1265e:	0ea88963          	beq	a7,a0,12750 <_free_r+0x150>
   12662:	01873303          	ld	t1,24(a4)
   12666:	0068bc23          	sd	t1,24(a7)
   1266a:	01133823          	sd	a7,16(t1)
   1266e:	14080e63          	beqz	a6,127ca <_free_r+0x1ca>
   12672:	0017e693          	ori	a3,a5,1
   12676:	e714                	sd	a3,8(a4)
   12678:	e21c                	sd	a5,0(a2)
   1267a:	1ff00693          	li	a3,511
   1267e:	08f6e363          	bltu	a3,a5,12704 <_free_r+0x104>
   12682:	838d                	srli	a5,a5,0x3
   12684:	0017869b          	addiw	a3,a5,1
   12688:	0016969b          	slliw	a3,a3,0x1
   1268c:	068e                	slli	a3,a3,0x3
   1268e:	0085b803          	ld	a6,8(a1)
   12692:	96ae                	add	a3,a3,a1
   12694:	6288                	ld	a0,0(a3)
   12696:	4027d61b          	sraiw	a2,a5,0x2
   1269a:	4785                	li	a5,1
   1269c:	00c797b3          	sll	a5,a5,a2
   126a0:	0107e7b3          	or	a5,a5,a6
   126a4:	ff068613          	addi	a2,a3,-16
   126a8:	ef10                	sd	a2,24(a4)
   126aa:	eb08                	sd	a0,16(a4)
   126ac:	e59c                	sd	a5,8(a1)
   126ae:	e298                	sd	a4,0(a3)
   126b0:	ed18                	sd	a4,24(a0)
   126b2:	6442                	ld	s0,16(sp)
   126b4:	60e2                	ld	ra,24(sp)
   126b6:	8526                	mv	a0,s1
   126b8:	64a2                	ld	s1,8(sp)
   126ba:	6105                	addi	sp,sp,32
   126bc:	42b0206f          	j	152e6 <__malloc_unlock>
   126c0:	00883503          	ld	a0,8(a6)
   126c4:	8905                	andi	a0,a0,1
   126c6:	e515                	bnez	a0,126f2 <_free_r+0xf2>
   126c8:	0001f537          	lui	a0,0x1f
   126cc:	97b6                	add	a5,a5,a3
   126ce:	ae850513          	addi	a0,a0,-1304 # 1eae8 <__malloc_av_+0x10>
   126d2:	6a14                	ld	a3,16(a2)
   126d4:	0017e893          	ori	a7,a5,1
   126d8:	00f70833          	add	a6,a4,a5
   126dc:	10a68163          	beq	a3,a0,127de <_free_r+0x1de>
   126e0:	6e10                	ld	a2,24(a2)
   126e2:	ee90                	sd	a2,24(a3)
   126e4:	ea14                	sd	a3,16(a2)
   126e6:	01173423          	sd	a7,8(a4)
   126ea:	00f83023          	sd	a5,0(a6)
   126ee:	b771                	j	1267a <_free_r+0x7a>
   126f0:	8082                	ret
   126f2:	0017e693          	ori	a3,a5,1
   126f6:	fed43c23          	sd	a3,-8(s0)
   126fa:	e21c                	sd	a5,0(a2)
   126fc:	1ff00693          	li	a3,511
   12700:	f8f6f1e3          	bgeu	a3,a5,12682 <_free_r+0x82>
   12704:	0097d693          	srli	a3,a5,0x9
   12708:	4611                	li	a2,4
   1270a:	08d66f63          	bltu	a2,a3,127a8 <_free_r+0x1a8>
   1270e:	0067d693          	srli	a3,a5,0x6
   12712:	0396851b          	addiw	a0,a3,57
   12716:	0015151b          	slliw	a0,a0,0x1
   1271a:	0386861b          	addiw	a2,a3,56
   1271e:	050e                	slli	a0,a0,0x3
   12720:	952e                	add	a0,a0,a1
   12722:	6114                	ld	a3,0(a0)
   12724:	1541                	addi	a0,a0,-16
   12726:	0cd50563          	beq	a0,a3,127f0 <_free_r+0x1f0>
   1272a:	6690                	ld	a2,8(a3)
   1272c:	9a71                	andi	a2,a2,-4
   1272e:	00c7f563          	bgeu	a5,a2,12738 <_free_r+0x138>
   12732:	6a94                	ld	a3,16(a3)
   12734:	fed51be3          	bne	a0,a3,1272a <_free_r+0x12a>
   12738:	6e88                	ld	a0,24(a3)
   1273a:	ef08                	sd	a0,24(a4)
   1273c:	eb14                	sd	a3,16(a4)
   1273e:	6442                	ld	s0,16(sp)
   12740:	e918                	sd	a4,16(a0)
   12742:	60e2                	ld	ra,24(sp)
   12744:	8526                	mv	a0,s1
   12746:	64a2                	ld	s1,8(sp)
   12748:	ee98                	sd	a4,24(a3)
   1274a:	6105                	addi	sp,sp,32
   1274c:	39b0206f          	j	152e6 <__malloc_unlock>
   12750:	0e081c63          	bnez	a6,12848 <_free_r+0x248>
   12754:	6e0c                	ld	a1,24(a2)
   12756:	6a10                	ld	a2,16(a2)
   12758:	96be                	add	a3,a3,a5
   1275a:	6442                	ld	s0,16(sp)
   1275c:	ee0c                	sd	a1,24(a2)
   1275e:	e990                	sd	a2,16(a1)
   12760:	0016e793          	ori	a5,a3,1
   12764:	60e2                	ld	ra,24(sp)
   12766:	e71c                	sd	a5,8(a4)
   12768:	8526                	mv	a0,s1
   1276a:	9736                	add	a4,a4,a3
   1276c:	64a2                	ld	s1,8(sp)
   1276e:	e314                	sd	a3,0(a4)
   12770:	6105                	addi	sp,sp,32
   12772:	3750206f          	j	152e6 <__malloc_unlock>
   12776:	8905                	andi	a0,a0,1
   12778:	96be                	add	a3,a3,a5
   1277a:	e909                	bnez	a0,1278c <_free_r+0x18c>
   1277c:	ff043503          	ld	a0,-16(s0)
   12780:	8f09                	sub	a4,a4,a0
   12782:	6f1c                	ld	a5,24(a4)
   12784:	6b10                	ld	a2,16(a4)
   12786:	96aa                	add	a3,a3,a0
   12788:	ee1c                	sd	a5,24(a2)
   1278a:	eb90                	sd	a2,16(a5)
   1278c:	0016e613          	ori	a2,a3,1
   12790:	7681b783          	ld	a5,1896(gp) # 1f338 <__malloc_trim_threshold>
   12794:	e710                	sd	a2,8(a4)
   12796:	e998                	sd	a4,16(a1)
   12798:	f0f6ede3          	bltu	a3,a5,126b2 <_free_r+0xb2>
   1279c:	7881b583          	ld	a1,1928(gp) # 1f358 <__malloc_top_pad>
   127a0:	8526                	mv	a0,s1
   127a2:	d8bff0ef          	jal	ra,1252c <_malloc_trim_r>
   127a6:	b731                	j	126b2 <_free_r+0xb2>
   127a8:	4651                	li	a2,20
   127aa:	02d67263          	bgeu	a2,a3,127ce <_free_r+0x1ce>
   127ae:	05400613          	li	a2,84
   127b2:	04d66a63          	bltu	a2,a3,12806 <_free_r+0x206>
   127b6:	00c7d693          	srli	a3,a5,0xc
   127ba:	06f6851b          	addiw	a0,a3,111
   127be:	0015151b          	slliw	a0,a0,0x1
   127c2:	06e6861b          	addiw	a2,a3,110
   127c6:	050e                	slli	a0,a0,0x3
   127c8:	bfa1                	j	12720 <_free_r+0x120>
   127ca:	97b6                	add	a5,a5,a3
   127cc:	b719                	j	126d2 <_free_r+0xd2>
   127ce:	05c6851b          	addiw	a0,a3,92
   127d2:	0015151b          	slliw	a0,a0,0x1
   127d6:	05b6861b          	addiw	a2,a3,91
   127da:	050e                	slli	a0,a0,0x3
   127dc:	b791                	j	12720 <_free_r+0x120>
   127de:	f598                	sd	a4,40(a1)
   127e0:	f198                	sd	a4,32(a1)
   127e2:	ef08                	sd	a0,24(a4)
   127e4:	eb08                	sd	a0,16(a4)
   127e6:	01173423          	sd	a7,8(a4)
   127ea:	00f83023          	sd	a5,0(a6)
   127ee:	b5d1                	j	126b2 <_free_r+0xb2>
   127f0:	0085b803          	ld	a6,8(a1)
   127f4:	4026561b          	sraiw	a2,a2,0x2
   127f8:	4785                	li	a5,1
   127fa:	00c797b3          	sll	a5,a5,a2
   127fe:	0107e7b3          	or	a5,a5,a6
   12802:	e59c                	sd	a5,8(a1)
   12804:	bf1d                	j	1273a <_free_r+0x13a>
   12806:	15400613          	li	a2,340
   1280a:	00d66c63          	bltu	a2,a3,12822 <_free_r+0x222>
   1280e:	00f7d693          	srli	a3,a5,0xf
   12812:	0786851b          	addiw	a0,a3,120
   12816:	0015151b          	slliw	a0,a0,0x1
   1281a:	0776861b          	addiw	a2,a3,119
   1281e:	050e                	slli	a0,a0,0x3
   12820:	b701                	j	12720 <_free_r+0x120>
   12822:	55400613          	li	a2,1364
   12826:	00d66c63          	bltu	a2,a3,1283e <_free_r+0x23e>
   1282a:	0127d693          	srli	a3,a5,0x12
   1282e:	07d6851b          	addiw	a0,a3,125
   12832:	0015151b          	slliw	a0,a0,0x1
   12836:	07c6861b          	addiw	a2,a3,124
   1283a:	050e                	slli	a0,a0,0x3
   1283c:	b5d5                	j	12720 <_free_r+0x120>
   1283e:	7f000513          	li	a0,2032
   12842:	07e00613          	li	a2,126
   12846:	bde9                	j	12720 <_free_r+0x120>
   12848:	0017e693          	ori	a3,a5,1
   1284c:	e714                	sd	a3,8(a4)
   1284e:	e21c                	sd	a5,0(a2)
   12850:	b58d                	j	126b2 <_free_r+0xb2>

0000000000012852 <_fwalk>:
   12852:	715d                	addi	sp,sp,-80
   12854:	f84a                	sd	s2,48(sp)
   12856:	f44e                	sd	s3,40(sp)
   12858:	f052                	sd	s4,32(sp)
   1285a:	ec56                	sd	s5,24(sp)
   1285c:	e85a                	sd	s6,16(sp)
   1285e:	e45e                	sd	s7,8(sp)
   12860:	e486                	sd	ra,72(sp)
   12862:	e0a2                	sd	s0,64(sp)
   12864:	fc26                	sd	s1,56(sp)
   12866:	8a2e                	mv	s4,a1
   12868:	52050913          	addi	s2,a0,1312
   1286c:	4b01                	li	s6,0
   1286e:	0b000a93          	li	s5,176
   12872:	4b85                	li	s7,1
   12874:	59fd                	li	s3,-1
   12876:	00892783          	lw	a5,8(s2)
   1287a:	01093403          	ld	s0,16(s2)
   1287e:	02f05b63          	blez	a5,128b4 <_fwalk+0x62>
   12882:	fff7849b          	addiw	s1,a5,-1
   12886:	1482                	slli	s1,s1,0x20
   12888:	9081                	srli	s1,s1,0x20
   1288a:	0485                	addi	s1,s1,1
   1288c:	035484b3          	mul	s1,s1,s5
   12890:	94a2                	add	s1,s1,s0
   12892:	01045783          	lhu	a5,16(s0)
   12896:	00fbfb63          	bgeu	s7,a5,128ac <_fwalk+0x5a>
   1289a:	01241783          	lh	a5,18(s0)
   1289e:	8522                	mv	a0,s0
   128a0:	01378663          	beq	a5,s3,128ac <_fwalk+0x5a>
   128a4:	9a02                	jalr	s4
   128a6:	01656b33          	or	s6,a0,s6
   128aa:	2b01                	sext.w	s6,s6
   128ac:	0b040413          	addi	s0,s0,176
   128b0:	fe8491e3          	bne	s1,s0,12892 <_fwalk+0x40>
   128b4:	00093903          	ld	s2,0(s2)
   128b8:	fa091fe3          	bnez	s2,12876 <_fwalk+0x24>
   128bc:	60a6                	ld	ra,72(sp)
   128be:	6406                	ld	s0,64(sp)
   128c0:	74e2                	ld	s1,56(sp)
   128c2:	7942                	ld	s2,48(sp)
   128c4:	79a2                	ld	s3,40(sp)
   128c6:	7a02                	ld	s4,32(sp)
   128c8:	6ae2                	ld	s5,24(sp)
   128ca:	6ba2                	ld	s7,8(sp)
   128cc:	855a                	mv	a0,s6
   128ce:	6b42                	ld	s6,16(sp)
   128d0:	6161                	addi	sp,sp,80
   128d2:	8082                	ret

00000000000128d4 <_fwalk_reent>:
   128d4:	715d                	addi	sp,sp,-80
   128d6:	f84a                	sd	s2,48(sp)
   128d8:	f44e                	sd	s3,40(sp)
   128da:	f052                	sd	s4,32(sp)
   128dc:	ec56                	sd	s5,24(sp)
   128de:	e85a                	sd	s6,16(sp)
   128e0:	e45e                	sd	s7,8(sp)
   128e2:	e062                	sd	s8,0(sp)
   128e4:	e486                	sd	ra,72(sp)
   128e6:	e0a2                	sd	s0,64(sp)
   128e8:	fc26                	sd	s1,56(sp)
   128ea:	8c2a                	mv	s8,a0
   128ec:	8a2e                	mv	s4,a1
   128ee:	52050913          	addi	s2,a0,1312
   128f2:	4b01                	li	s6,0
   128f4:	0b000a93          	li	s5,176
   128f8:	4b85                	li	s7,1
   128fa:	59fd                	li	s3,-1
   128fc:	00892783          	lw	a5,8(s2)
   12900:	01093403          	ld	s0,16(s2)
   12904:	02f05c63          	blez	a5,1293c <_fwalk_reent+0x68>
   12908:	fff7849b          	addiw	s1,a5,-1
   1290c:	1482                	slli	s1,s1,0x20
   1290e:	9081                	srli	s1,s1,0x20
   12910:	0485                	addi	s1,s1,1
   12912:	035484b3          	mul	s1,s1,s5
   12916:	94a2                	add	s1,s1,s0
   12918:	01045783          	lhu	a5,16(s0)
   1291c:	00fbfc63          	bgeu	s7,a5,12934 <_fwalk_reent+0x60>
   12920:	01241783          	lh	a5,18(s0)
   12924:	85a2                	mv	a1,s0
   12926:	8562                	mv	a0,s8
   12928:	01378663          	beq	a5,s3,12934 <_fwalk_reent+0x60>
   1292c:	9a02                	jalr	s4
   1292e:	01656b33          	or	s6,a0,s6
   12932:	2b01                	sext.w	s6,s6
   12934:	0b040413          	addi	s0,s0,176
   12938:	fe8490e3          	bne	s1,s0,12918 <_fwalk_reent+0x44>
   1293c:	00093903          	ld	s2,0(s2)
   12940:	fa091ee3          	bnez	s2,128fc <_fwalk_reent+0x28>
   12944:	60a6                	ld	ra,72(sp)
   12946:	6406                	ld	s0,64(sp)
   12948:	74e2                	ld	s1,56(sp)
   1294a:	7942                	ld	s2,48(sp)
   1294c:	79a2                	ld	s3,40(sp)
   1294e:	7a02                	ld	s4,32(sp)
   12950:	6ae2                	ld	s5,24(sp)
   12952:	6ba2                	ld	s7,8(sp)
   12954:	6c02                	ld	s8,0(sp)
   12956:	855a                	mv	a0,s6
   12958:	6b42                	ld	s6,16(sp)
   1295a:	6161                	addi	sp,sp,80
   1295c:	8082                	ret

000000000001295e <eshdn1>:
   1295e:	00450693          	addi	a3,a0,4
   12962:	4781                	li	a5,0
   12964:	0569                	addi	a0,a0,26
   12966:	7861                	lui	a6,0xffff8
   12968:	a811                	j	1297c <eshdn1+0x1e>
   1296a:	0017979b          	slliw	a5,a5,0x1
   1296e:	00e69023          	sh	a4,0(a3)
   12972:	17c2                	slli	a5,a5,0x30
   12974:	0689                	addi	a3,a3,2
   12976:	93c1                	srli	a5,a5,0x30
   12978:	02d50863          	beq	a0,a3,129a8 <eshdn1+0x4a>
   1297c:	0006d703          	lhu	a4,0(a3)
   12980:	00177613          	andi	a2,a4,1
   12984:	c219                	beqz	a2,1298a <eshdn1+0x2c>
   12986:	0017e793          	ori	a5,a5,1
   1298a:	8305                	srli	a4,a4,0x1
   1298c:	0027f613          	andi	a2,a5,2
   12990:	010765b3          	or	a1,a4,a6
   12994:	da79                	beqz	a2,1296a <eshdn1+0xc>
   12996:	0017979b          	slliw	a5,a5,0x1
   1299a:	00b69023          	sh	a1,0(a3)
   1299e:	17c2                	slli	a5,a5,0x30
   129a0:	0689                	addi	a3,a3,2
   129a2:	93c1                	srli	a5,a5,0x30
   129a4:	fcd51ce3          	bne	a0,a3,1297c <eshdn1+0x1e>
   129a8:	8082                	ret

00000000000129aa <eshup1>:
   129aa:	01850693          	addi	a3,a0,24
   129ae:	4701                	li	a4,0
   129b0:	0509                	addi	a0,a0,2
   129b2:	a811                	j	129c6 <eshup1+0x1c>
   129b4:	0017171b          	slliw	a4,a4,0x1
   129b8:	00f69023          	sh	a5,0(a3)
   129bc:	1742                	slli	a4,a4,0x30
   129be:	16f9                	addi	a3,a3,-2
   129c0:	9341                	srli	a4,a4,0x30
   129c2:	02d50b63          	beq	a0,a3,129f8 <eshup1+0x4e>
   129c6:	0006d783          	lhu	a5,0(a3)
   129ca:	00f7d613          	srli	a2,a5,0xf
   129ce:	0017979b          	slliw	a5,a5,0x1
   129d2:	c219                	beqz	a2,129d8 <eshup1+0x2e>
   129d4:	00176713          	ori	a4,a4,1
   129d8:	17c2                	slli	a5,a5,0x30
   129da:	93c1                	srli	a5,a5,0x30
   129dc:	00277613          	andi	a2,a4,2
   129e0:	0017e593          	ori	a1,a5,1
   129e4:	da61                	beqz	a2,129b4 <eshup1+0xa>
   129e6:	0017171b          	slliw	a4,a4,0x1
   129ea:	00b69023          	sh	a1,0(a3)
   129ee:	1742                	slli	a4,a4,0x30
   129f0:	16f9                	addi	a3,a3,-2
   129f2:	9341                	srli	a4,a4,0x30
   129f4:	fcd519e3          	bne	a0,a3,129c6 <eshup1+0x1c>
   129f8:	8082                	ret

00000000000129fa <m16m>:
   129fa:	1101                	addi	sp,sp,-32
   129fc:	6e41                	lui	t3,0x10
   129fe:	00011b23          	sh	zero,22(sp)
   12a02:	00011c23          	sh	zero,24(sp)
   12a06:	05e1                	addi	a1,a1,24
   12a08:	083c                	addi	a5,sp,24
   12a0a:	00410813          	addi	a6,sp,4
   12a0e:	1e7d                	addi	t3,t3,-1 # ffff <exit-0xe9>
   12a10:	0005d703          	lhu	a4,0(a1)
   12a14:	17f9                	addi	a5,a5,-2
   12a16:	15f9                	addi	a1,a1,-2
   12a18:	c705                	beqz	a4,12a40 <m16m+0x46>
   12a1a:	02a70733          	mul	a4,a4,a0
   12a1e:	0027d883          	lhu	a7,2(a5)
   12a22:	0007d303          	lhu	t1,0(a5)
   12a26:	01c776b3          	and	a3,a4,t3
   12a2a:	96c6                	add	a3,a3,a7
   12a2c:	8341                	srli	a4,a4,0x10
   12a2e:	0106d893          	srli	a7,a3,0x10
   12a32:	971a                	add	a4,a4,t1
   12a34:	9746                	add	a4,a4,a7
   12a36:	00e79023          	sh	a4,0(a5)
   12a3a:	00d79123          	sh	a3,2(a5)
   12a3e:	8341                	srli	a4,a4,0x10
   12a40:	fee79f23          	sh	a4,-2(a5)
   12a44:	fd0796e3          	bne	a5,a6,12a10 <m16m+0x16>
   12a48:	0611                	addi	a2,a2,4
   12a4a:	01a10693          	addi	a3,sp,26
   12a4e:	0007d703          	lhu	a4,0(a5)
   12a52:	0789                	addi	a5,a5,2
   12a54:	0609                	addi	a2,a2,2
   12a56:	fee61f23          	sh	a4,-2(a2)
   12a5a:	fed79ae3          	bne	a5,a3,12a4e <m16m+0x54>
   12a5e:	6105                	addi	sp,sp,32
   12a60:	8082                	ret

0000000000012a62 <emovo.constprop.0>:
   12a62:	00055703          	lhu	a4,0(a0)
   12a66:	00255783          	lhu	a5,2(a0)
   12a6a:	c319                	beqz	a4,12a70 <emovo.constprop.0+0xe>
   12a6c:	6721                	lui	a4,0x8
   12a6e:	8fd9                	or	a5,a5,a4
   12a70:	00f59923          	sh	a5,18(a1)
   12a74:	00255703          	lhu	a4,2(a0)
   12a78:	67a1                	lui	a5,0x8
   12a7a:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   12a7c:	00f70f63          	beq	a4,a5,12a9a <emovo.constprop.0+0x38>
   12a80:	00650793          	addi	a5,a0,6
   12a84:	05c1                	addi	a1,a1,16
   12a86:	0561                	addi	a0,a0,24
   12a88:	0007d703          	lhu	a4,0(a5)
   12a8c:	0789                	addi	a5,a5,2
   12a8e:	15f9                	addi	a1,a1,-2
   12a90:	00e59123          	sh	a4,2(a1)
   12a94:	fea79ae3          	bne	a5,a0,12a88 <emovo.constprop.0+0x26>
   12a98:	8082                	ret
   12a9a:	00650793          	addi	a5,a0,6
   12a9e:	0569                	addi	a0,a0,26
   12aa0:	0007d703          	lhu	a4,0(a5)
   12aa4:	0789                	addi	a5,a5,2
   12aa6:	e31d                	bnez	a4,12acc <emovo.constprop.0+0x6a>
   12aa8:	fea79ce3          	bne	a5,a0,12aa0 <emovo.constprop.0+0x3e>
   12aac:	01258713          	addi	a4,a1,18
   12ab0:	87ae                	mv	a5,a1
   12ab2:	0789                	addi	a5,a5,2
   12ab4:	fe079f23          	sh	zero,-2(a5)
   12ab8:	fef71de3          	bne	a4,a5,12ab2 <emovo.constprop.0+0x50>
   12abc:	0125d783          	lhu	a5,18(a1)
   12ac0:	6721                	lui	a4,0x8
   12ac2:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   12ac4:	8fd9                	or	a5,a5,a4
   12ac6:	00f59923          	sh	a5,18(a1)
   12aca:	8082                	ret
   12acc:	01058713          	addi	a4,a1,16
   12ad0:	87ae                	mv	a5,a1
   12ad2:	0789                	addi	a5,a5,2
   12ad4:	fe079f23          	sh	zero,-2(a5)
   12ad8:	fef71de3          	bne	a4,a5,12ad2 <emovo.constprop.0+0x70>
   12adc:	77f1                	lui	a5,0xffffc
   12ade:	00f59823          	sh	a5,16(a1)
   12ae2:	77e1                	lui	a5,0xffff8
   12ae4:	fff7c793          	not	a5,a5
   12ae8:	00f59923          	sh	a5,18(a1)
   12aec:	8082                	ret

0000000000012aee <enormlz>:
   12aee:	00455783          	lhu	a5,4(a0)
   12af2:	1101                	addi	sp,sp,-32
   12af4:	e426                	sd	s1,8(sp)
   12af6:	ec06                	sd	ra,24(sp)
   12af8:	e822                	sd	s0,16(sp)
   12afa:	e04a                	sd	s2,0(sp)
   12afc:	84aa                	mv	s1,a0
   12afe:	efc9                	bnez	a5,12b98 <enormlz+0xaa>
   12b00:	00655703          	lhu	a4,6(a0)
   12b04:	4401                	li	s0,0
   12b06:	00f75793          	srli	a5,a4,0xf
   12b0a:	e3c1                	bnez	a5,12b8a <enormlz+0x9c>
   12b0c:	01a50693          	addi	a3,a0,26
   12b10:	0a000613          	li	a2,160
   12b14:	e31d                	bnez	a4,12b3a <enormlz+0x4c>
   12b16:	00648793          	addi	a5,s1,6
   12b1a:	a019                	j	12b20 <enormlz+0x32>
   12b1c:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd8c30>
   12b20:	0789                	addi	a5,a5,2
   12b22:	fee79e23          	sh	a4,-4(a5)
   12b26:	fed79be3          	bne	a5,a3,12b1c <enormlz+0x2e>
   12b2a:	00049c23          	sh	zero,24(s1)
   12b2e:	2441                	addiw	s0,s0,16
   12b30:	04c40d63          	beq	s0,a2,12b8a <enormlz+0x9c>
   12b34:	0064d703          	lhu	a4,6(s1)
   12b38:	df79                	beqz	a4,12b16 <enormlz+0x28>
   12b3a:	f0077793          	andi	a5,a4,-256
   12b3e:	eb8d                	bnez	a5,12b70 <enormlz+0x82>
   12b40:	01848513          	addi	a0,s1,24
   12b44:	00248593          	addi	a1,s1,2
   12b48:	4781                	li	a5,0
   12b4a:	872a                	mv	a4,a0
   12b4c:	00075683          	lhu	a3,0(a4)
   12b50:	1779                	addi	a4,a4,-2
   12b52:	0086961b          	slliw	a2,a3,0x8
   12b56:	8fd1                	or	a5,a5,a2
   12b58:	00f71123          	sh	a5,2(a4)
   12b5c:	0086d793          	srli	a5,a3,0x8
   12b60:	feb716e3          	bne	a4,a1,12b4c <enormlz+0x5e>
   12b64:	0064d703          	lhu	a4,6(s1)
   12b68:	2421                	addiw	s0,s0,8
   12b6a:	f0077793          	andi	a5,a4,-256
   12b6e:	dfe9                	beqz	a5,12b48 <enormlz+0x5a>
   12b70:	0a000913          	li	s2,160
   12b74:	a801                	j	12b84 <enormlz+0x96>
   12b76:	2405                	addiw	s0,s0,1
   12b78:	e33ff0ef          	jal	ra,129aa <eshup1>
   12b7c:	00894763          	blt	s2,s0,12b8a <enormlz+0x9c>
   12b80:	0064d703          	lhu	a4,6(s1)
   12b84:	833d                	srli	a4,a4,0xf
   12b86:	8526                	mv	a0,s1
   12b88:	d77d                	beqz	a4,12b76 <enormlz+0x88>
   12b8a:	60e2                	ld	ra,24(sp)
   12b8c:	8522                	mv	a0,s0
   12b8e:	6442                	ld	s0,16(sp)
   12b90:	64a2                	ld	s1,8(sp)
   12b92:	6902                	ld	s2,0(sp)
   12b94:	6105                	addi	sp,sp,32
   12b96:	8082                	ret
   12b98:	f007f713          	andi	a4,a5,-256
   12b9c:	4401                	li	s0,0
   12b9e:	e705                	bnez	a4,12bc6 <enormlz+0xd8>
   12ba0:	f6f00913          	li	s2,-145
   12ba4:	a801                	j	12bb4 <enormlz+0xc6>
   12ba6:	347d                	addiw	s0,s0,-1
   12ba8:	db7ff0ef          	jal	ra,1295e <eshdn1>
   12bac:	fd240fe3          	beq	s0,s2,12b8a <enormlz+0x9c>
   12bb0:	0044d783          	lhu	a5,4(s1)
   12bb4:	8526                	mv	a0,s1
   12bb6:	fbe5                	bnez	a5,12ba6 <enormlz+0xb8>
   12bb8:	60e2                	ld	ra,24(sp)
   12bba:	8522                	mv	a0,s0
   12bbc:	6442                	ld	s0,16(sp)
   12bbe:	64a2                	ld	s1,8(sp)
   12bc0:	6902                	ld	s2,0(sp)
   12bc2:	6105                	addi	sp,sp,32
   12bc4:	8082                	ret
   12bc6:	00450693          	addi	a3,a0,4
   12bca:	01a50593          	addi	a1,a0,26
   12bce:	4701                	li	a4,0
   12bd0:	a019                	j	12bd6 <enormlz+0xe8>
   12bd2:	0006d783          	lhu	a5,0(a3)
   12bd6:	0087d61b          	srliw	a2,a5,0x8
   12bda:	8f51                	or	a4,a4,a2
   12bdc:	0087979b          	slliw	a5,a5,0x8
   12be0:	00e69023          	sh	a4,0(a3)
   12be4:	03079713          	slli	a4,a5,0x30
   12be8:	0689                	addi	a3,a3,2
   12bea:	9341                	srli	a4,a4,0x30
   12bec:	fed593e3          	bne	a1,a3,12bd2 <enormlz+0xe4>
   12bf0:	0044d783          	lhu	a5,4(s1)
   12bf4:	5461                	li	s0,-8
   12bf6:	b76d                	j	12ba0 <enormlz+0xb2>

0000000000012bf8 <eshift.part.0>:
   12bf8:	7179                	addi	sp,sp,-48
   12bfa:	f022                	sd	s0,32(sp)
   12bfc:	ec26                	sd	s1,24(sp)
   12bfe:	f406                	sd	ra,40(sp)
   12c00:	e84a                	sd	s2,16(sp)
   12c02:	e44e                	sd	s3,8(sp)
   12c04:	84ae                	mv	s1,a1
   12c06:	842a                	mv	s0,a0
   12c08:	0605cb63          	bltz	a1,12c7e <eshift.part.0+0x86>
   12c0c:	47bd                	li	a5,15
   12c0e:	862e                	mv	a2,a1
   12c10:	0511                	addi	a0,a0,4
   12c12:	01840693          	addi	a3,s0,24
   12c16:	45bd                	li	a1,15
   12c18:	0297d063          	bge	a5,s1,12c38 <eshift.part.0+0x40>
   12c1c:	87aa                	mv	a5,a0
   12c1e:	0027d703          	lhu	a4,2(a5)
   12c22:	0789                	addi	a5,a5,2
   12c24:	fee79f23          	sh	a4,-2(a5)
   12c28:	fef69be3          	bne	a3,a5,12c1e <eshift.part.0+0x26>
   12c2c:	00041c23          	sh	zero,24(s0)
   12c30:	3641                	addiw	a2,a2,-16
   12c32:	fec5c5e3          	blt	a1,a2,12c1c <eshift.part.0+0x24>
   12c36:	88bd                	andi	s1,s1,15
   12c38:	479d                	li	a5,7
   12c3a:	0297d463          	bge	a5,s1,12c62 <eshift.part.0+0x6a>
   12c3e:	01840713          	addi	a4,s0,24
   12c42:	00240593          	addi	a1,s0,2
   12c46:	4781                	li	a5,0
   12c48:	00075683          	lhu	a3,0(a4)
   12c4c:	1779                	addi	a4,a4,-2
   12c4e:	0086961b          	slliw	a2,a3,0x8
   12c52:	8fd1                	or	a5,a5,a2
   12c54:	00f71123          	sh	a5,2(a4)
   12c58:	0086d793          	srli	a5,a3,0x8
   12c5c:	fee596e3          	bne	a1,a4,12c48 <eshift.part.0+0x50>
   12c60:	34e1                	addiw	s1,s1,-8
   12c62:	c491                	beqz	s1,12c6e <eshift.part.0+0x76>
   12c64:	34fd                	addiw	s1,s1,-1
   12c66:	8522                	mv	a0,s0
   12c68:	d43ff0ef          	jal	ra,129aa <eshup1>
   12c6c:	fce5                	bnez	s1,12c64 <eshift.part.0+0x6c>
   12c6e:	70a2                	ld	ra,40(sp)
   12c70:	7402                	ld	s0,32(sp)
   12c72:	64e2                	ld	s1,24(sp)
   12c74:	6942                	ld	s2,16(sp)
   12c76:	69a2                	ld	s3,8(sp)
   12c78:	4501                	li	a0,0
   12c7a:	6145                	addi	sp,sp,48
   12c7c:	8082                	ret
   12c7e:	57c5                	li	a5,-15
   12c80:	40b0093b          	negw	s2,a1
   12c84:	06f5db63          	bge	a1,a5,12cfa <eshift.part.0+0x102>
   12c88:	01850593          	addi	a1,a0,24
   12c8c:	4981                	li	s3,0
   12c8e:	00450693          	addi	a3,a0,4
   12c92:	463d                	li	a2,15
   12c94:	01845703          	lhu	a4,24(s0)
   12c98:	87ae                	mv	a5,a1
   12c9a:	00e9e9b3          	or	s3,s3,a4
   12c9e:	ffe7d703          	lhu	a4,-2(a5)
   12ca2:	17f9                	addi	a5,a5,-2
   12ca4:	00e79123          	sh	a4,2(a5)
   12ca8:	fed79be3          	bne	a5,a3,12c9e <eshift.part.0+0xa6>
   12cac:	00041223          	sh	zero,4(s0)
   12cb0:	3941                	addiw	s2,s2,-16
   12cb2:	ff2641e3          	blt	a2,s2,12c94 <eshift.part.0+0x9c>
   12cb6:	5941                	li	s2,-16
   12cb8:	5745                	li	a4,-15
   12cba:	4099093b          	subw	s2,s2,s1
   12cbe:	4781                	li	a5,0
   12cc0:	06e4cb63          	blt	s1,a4,12d36 <eshift.part.0+0x13e>
   12cc4:	00f9093b          	addw	s2,s2,a5
   12cc8:	479d                	li	a5,7
   12cca:	0327ce63          	blt	a5,s2,12d06 <eshift.part.0+0x10e>
   12cce:	00090d63          	beqz	s2,12ce8 <eshift.part.0+0xf0>
   12cd2:	01845783          	lhu	a5,24(s0)
   12cd6:	397d                	addiw	s2,s2,-1
   12cd8:	8522                	mv	a0,s0
   12cda:	8b85                	andi	a5,a5,1
   12cdc:	00f9e9b3          	or	s3,s3,a5
   12ce0:	c7fff0ef          	jal	ra,1295e <eshdn1>
   12ce4:	fe0917e3          	bnez	s2,12cd2 <eshift.part.0+0xda>
   12ce8:	70a2                	ld	ra,40(sp)
   12cea:	7402                	ld	s0,32(sp)
   12cec:	64e2                	ld	s1,24(sp)
   12cee:	6942                	ld	s2,16(sp)
   12cf0:	01303533          	snez	a0,s3
   12cf4:	69a2                	ld	s3,8(sp)
   12cf6:	6145                	addi	sp,sp,48
   12cf8:	8082                	ret
   12cfa:	57e5                	li	a5,-7
   12cfc:	4981                	li	s3,0
   12cfe:	00450693          	addi	a3,a0,4
   12d02:	fcf5d8e3          	bge	a1,a5,12cd2 <eshift.part.0+0xda>
   12d06:	01844783          	lbu	a5,24(s0)
   12d0a:	01a40593          	addi	a1,s0,26
   12d0e:	00f9e9b3          	or	s3,s3,a5
   12d12:	4781                	li	a5,0
   12d14:	0006d703          	lhu	a4,0(a3)
   12d18:	0689                	addi	a3,a3,2
   12d1a:	0087561b          	srliw	a2,a4,0x8
   12d1e:	8fd1                	or	a5,a5,a2
   12d20:	0087171b          	slliw	a4,a4,0x8
   12d24:	fef69f23          	sh	a5,-2(a3)
   12d28:	03071793          	slli	a5,a4,0x30
   12d2c:	93c1                	srli	a5,a5,0x30
   12d2e:	feb693e3          	bne	a3,a1,12d14 <eshift.part.0+0x11c>
   12d32:	3961                	addiw	s2,s2,-8
   12d34:	bf69                	j	12cce <eshift.part.0+0xd6>
   12d36:	ff097793          	andi	a5,s2,-16
   12d3a:	40f007bb          	negw	a5,a5
   12d3e:	00f9093b          	addw	s2,s2,a5
   12d42:	479d                	li	a5,7
   12d44:	f927d5e3          	bge	a5,s2,12cce <eshift.part.0+0xd6>
   12d48:	bf7d                	j	12d06 <eshift.part.0+0x10e>

0000000000012d4a <emovi>:
   12d4a:	01255783          	lhu	a5,18(a0)
   12d4e:	6621                	lui	a2,0x8
   12d50:	167d                	addi	a2,a2,-1 # 7fff <exit-0x80e9>
   12d52:	00f7d79b          	srliw	a5,a5,0xf
   12d56:	40f007bb          	negw	a5,a5
   12d5a:	00f59023          	sh	a5,0(a1)
   12d5e:	01255683          	lhu	a3,18(a0)
   12d62:	01050793          	addi	a5,a0,16
   12d66:	00458713          	addi	a4,a1,4
   12d6a:	8ef1                	and	a3,a3,a2
   12d6c:	00d59123          	sh	a3,2(a1)
   12d70:	0006881b          	sext.w	a6,a3
   12d74:	02c68263          	beq	a3,a2,12d98 <emovi+0x4e>
   12d78:	00658713          	addi	a4,a1,6
   12d7c:	00059223          	sh	zero,4(a1)
   12d80:	1579                	addi	a0,a0,-2
   12d82:	0007d683          	lhu	a3,0(a5)
   12d86:	17f9                	addi	a5,a5,-2
   12d88:	0709                	addi	a4,a4,2
   12d8a:	fed71f23          	sh	a3,-2(a4)
   12d8e:	fef51ae3          	bne	a0,a5,12d82 <emovi+0x38>
   12d92:	00059c23          	sh	zero,24(a1)
   12d96:	8082                	ret
   12d98:	01255683          	lhu	a3,18(a0)
   12d9c:	0106f6b3          	and	a3,a3,a6
   12da0:	01069b63          	bne	a3,a6,12db6 <emovi+0x6c>
   12da4:	01250813          	addi	a6,a0,18
   12da8:	86aa                	mv	a3,a0
   12daa:	0006d603          	lhu	a2,0(a3)
   12dae:	0689                	addi	a3,a3,2
   12db0:	ea11                	bnez	a2,12dc4 <emovi+0x7a>
   12db2:	ff069ce3          	bne	a3,a6,12daa <emovi+0x60>
   12db6:	05e9                	addi	a1,a1,26
   12db8:	0709                	addi	a4,a4,2
   12dba:	fe071f23          	sh	zero,-2(a4)
   12dbe:	fee59de3          	bne	a1,a4,12db8 <emovi+0x6e>
   12dc2:	8082                	ret
   12dc4:	00658713          	addi	a4,a1,6
   12dc8:	00059223          	sh	zero,4(a1)
   12dcc:	1571                	addi	a0,a0,-4
   12dce:	0007d683          	lhu	a3,0(a5)
   12dd2:	17f9                	addi	a5,a5,-2
   12dd4:	0709                	addi	a4,a4,2
   12dd6:	fed71f23          	sh	a3,-2(a4)
   12dda:	fea79ae3          	bne	a5,a0,12dce <emovi+0x84>
   12dde:	8082                	ret

0000000000012de0 <ecmp>:
   12de0:	01255783          	lhu	a5,18(a0)
   12de4:	715d                	addi	sp,sp,-80
   12de6:	e0a2                	sd	s0,64(sp)
   12de8:	fff7c793          	not	a5,a5
   12dec:	e486                	sd	ra,72(sp)
   12dee:	03179713          	slli	a4,a5,0x31
   12df2:	842e                	mv	s0,a1
   12df4:	eb11                	bnez	a4,12e08 <ecmp+0x28>
   12df6:	01250693          	addi	a3,a0,18
   12dfa:	87aa                	mv	a5,a0
   12dfc:	0007d703          	lhu	a4,0(a5)
   12e00:	0789                	addi	a5,a5,2
   12e02:	eb25                	bnez	a4,12e72 <ecmp+0x92>
   12e04:	fed79ce3          	bne	a5,a3,12dfc <ecmp+0x1c>
   12e08:	01245783          	lhu	a5,18(s0)
   12e0c:	fff7c793          	not	a5,a5
   12e10:	03179713          	slli	a4,a5,0x31
   12e14:	c331                	beqz	a4,12e58 <ecmp+0x78>
   12e16:	858a                	mv	a1,sp
   12e18:	f33ff0ef          	jal	ra,12d4a <emovi>
   12e1c:	100c                	addi	a1,sp,32
   12e1e:	8522                	mv	a0,s0
   12e20:	f2bff0ef          	jal	ra,12d4a <emovi>
   12e24:	00015583          	lhu	a1,0(sp)
   12e28:	02015783          	lhu	a5,32(sp)
   12e2c:	04b78863          	beq	a5,a1,12e7c <ecmp+0x9c>
   12e30:	00210793          	addi	a5,sp,2
   12e34:	02210713          	addi	a4,sp,34
   12e38:	0830                	addi	a2,sp,24
   12e3a:	0007d683          	lhu	a3,0(a5)
   12e3e:	0789                	addi	a5,a5,2
   12e40:	eea5                	bnez	a3,12eb8 <ecmp+0xd8>
   12e42:	00075683          	lhu	a3,0(a4)
   12e46:	0709                	addi	a4,a4,2
   12e48:	eaa5                	bnez	a3,12eb8 <ecmp+0xd8>
   12e4a:	fef618e3          	bne	a2,a5,12e3a <ecmp+0x5a>
   12e4e:	4501                	li	a0,0
   12e50:	60a6                	ld	ra,72(sp)
   12e52:	6406                	ld	s0,64(sp)
   12e54:	6161                	addi	sp,sp,80
   12e56:	8082                	ret
   12e58:	87a2                	mv	a5,s0
   12e5a:	0007d703          	lhu	a4,0(a5)
   12e5e:	01240693          	addi	a3,s0,18
   12e62:	0789                	addi	a5,a5,2
   12e64:	e719                	bnez	a4,12e72 <ecmp+0x92>
   12e66:	fad788e3          	beq	a5,a3,12e16 <ecmp+0x36>
   12e6a:	0007d703          	lhu	a4,0(a5)
   12e6e:	0789                	addi	a5,a5,2
   12e70:	db7d                	beqz	a4,12e66 <ecmp+0x86>
   12e72:	60a6                	ld	ra,72(sp)
   12e74:	6406                	ld	s0,64(sp)
   12e76:	5579                	li	a0,-2
   12e78:	6161                	addi	sp,sp,80
   12e7a:	8082                	ret
   12e7c:	4505                	li	a0,1
   12e7e:	e1a9                	bnez	a1,12ec0 <ecmp+0xe0>
   12e80:	00215603          	lhu	a2,2(sp)
   12e84:	02215683          	lhu	a3,34(sp)
   12e88:	00210713          	addi	a4,sp,2
   12e8c:	02210793          	addi	a5,sp,34
   12e90:	182c                	addi	a1,sp,56
   12e92:	0789                	addi	a5,a5,2
   12e94:	0709                	addi	a4,a4,2
   12e96:	00d61c63          	bne	a2,a3,12eae <ecmp+0xce>
   12e9a:	fab78ae3          	beq	a5,a1,12e4e <ecmp+0x6e>
   12e9e:	00075603          	lhu	a2,0(a4)
   12ea2:	0007d683          	lhu	a3,0(a5)
   12ea6:	0709                	addi	a4,a4,2
   12ea8:	0789                	addi	a5,a5,2
   12eaa:	fed608e3          	beq	a2,a3,12e9a <ecmp+0xba>
   12eae:	fac6e1e3          	bltu	a3,a2,12e50 <ecmp+0x70>
   12eb2:	40a0053b          	negw	a0,a0
   12eb6:	bf69                	j	12e50 <ecmp+0x70>
   12eb8:	4505                	li	a0,1
   12eba:	d9d9                	beqz	a1,12e50 <ecmp+0x70>
   12ebc:	557d                	li	a0,-1
   12ebe:	bf49                	j	12e50 <ecmp+0x70>
   12ec0:	557d                	li	a0,-1
   12ec2:	bf7d                	j	12e80 <ecmp+0xa0>

0000000000012ec4 <emdnorm>:
   12ec4:	715d                	addi	sp,sp,-80
   12ec6:	e0a2                	sd	s0,64(sp)
   12ec8:	fc26                	sd	s1,56(sp)
   12eca:	f84a                	sd	s2,48(sp)
   12ecc:	f44e                	sd	s3,40(sp)
   12ece:	f052                	sd	s4,32(sp)
   12ed0:	ec56                	sd	s5,24(sp)
   12ed2:	8936                	mv	s2,a3
   12ed4:	84be                	mv	s1,a5
   12ed6:	e486                	sd	ra,72(sp)
   12ed8:	e85a                	sd	s6,16(sp)
   12eda:	e45e                	sd	s7,8(sp)
   12edc:	842a                	mv	s0,a0
   12ede:	89ae                	mv	s3,a1
   12ee0:	8a32                	mv	s4,a2
   12ee2:	8aba                	mv	s5,a4
   12ee4:	c0bff0ef          	jal	ra,12aee <enormlz>
   12ee8:	09000793          	li	a5,144
   12eec:	40a90933          	sub	s2,s2,a0
   12ef0:	10a7dc63          	bge	a5,a0,13008 <emdnorm+0x144>
   12ef4:	67a1                	lui	a5,0x8
   12ef6:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x80ea>
   12ef8:	1f27dd63          	bge	a5,s2,130f2 <emdnorm+0x22e>
   12efc:	1c0a8b63          	beqz	s5,130d2 <emdnorm+0x20e>
   12f00:	0044aa83          	lw	s5,4(s1)
   12f04:	4094                	lw	a3,0(s1)
   12f06:	01a48713          	addi	a4,s1,26
   12f0a:	03448793          	addi	a5,s1,52
   12f0e:	23568463          	beq	a3,s5,13136 <emdnorm+0x272>
   12f12:	0709                	addi	a4,a4,2
   12f14:	fe071f23          	sh	zero,-2(a4)
   12f18:	fef71de3          	bne	a4,a5,12f12 <emdnorm+0x4e>
   12f1c:	03800793          	li	a5,56
   12f20:	28fa8363          	beq	s5,a5,131a6 <emdnorm+0x2e2>
   12f24:	1157d163          	bge	a5,s5,13026 <emdnorm+0x162>
   12f28:	04000793          	li	a5,64
   12f2c:	22fa8b63          	beq	s5,a5,13162 <emdnorm+0x29e>
   12f30:	07100793          	li	a5,113
   12f34:	28fa9363          	bne	s5,a5,131ba <emdnorm+0x2f6>
   12f38:	6721                	lui	a4,0x8
   12f3a:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   12f3c:	6591                	lui	a1,0x4
   12f3e:	4b51                	li	s6,20
   12f40:	4ba9                	li	s7,10
   12f42:	67a1                	lui	a5,0x8
   12f44:	4629                	li	a2,10
   12f46:	00860693          	addi	a3,a2,8
   12f4a:	0686                	slli	a3,a3,0x1
   12f4c:	00e49a23          	sh	a4,20(s1)
   12f50:	0174a423          	sw	s7,8(s1)
   12f54:	00b49b23          	sh	a1,22(s1)
   12f58:	00f49c23          	sh	a5,24(s1)
   12f5c:	c4d0                	sw	a2,12(s1)
   12f5e:	00d48733          	add	a4,s1,a3
   12f62:	00f71523          	sh	a5,10(a4)
   12f66:	0154a023          	sw	s5,0(s1)
   12f6a:	9b22                	add	s6,s6,s0
   12f6c:	1d205c63          	blez	s2,13144 <emdnorm+0x280>
   12f70:	000b5703          	lhu	a4,0(s6)
   12f74:	0144d683          	lhu	a3,20(s1)
   12f78:	08f00793          	li	a5,143
   12f7c:	00d77633          	and	a2,a4,a3
   12f80:	0557c163          	blt	a5,s5,12fc2 <emdnorm+0xfe>
   12f84:	001b879b          	addiw	a5,s7,1
   12f88:	45b1                	li	a1,12
   12f8a:	02f5cc63          	blt	a1,a5,12fc2 <emdnorm+0xfe>
   12f8e:	472d                	li	a4,11
   12f90:	4177073b          	subw	a4,a4,s7
   12f94:	1702                	slli	a4,a4,0x20
   12f96:	9301                	srli	a4,a4,0x20
   12f98:	975e                	add	a4,a4,s7
   12f9a:	0786                	slli	a5,a5,0x1
   12f9c:	0706                	slli	a4,a4,0x1
   12f9e:	00440693          	addi	a3,s0,4
   12fa2:	97a2                	add	a5,a5,s0
   12fa4:	9736                	add	a4,a4,a3
   12fa6:	0007d683          	lhu	a3,0(a5) # 8000 <exit-0x80e8>
   12faa:	c299                	beqz	a3,12fb0 <emdnorm+0xec>
   12fac:	00166613          	ori	a2,a2,1
   12fb0:	00079023          	sh	zero,0(a5)
   12fb4:	0789                	addi	a5,a5,2
   12fb6:	fee798e3          	bne	a5,a4,12fa6 <emdnorm+0xe2>
   12fba:	000b5703          	lhu	a4,0(s6)
   12fbe:	0144d683          	lhu	a3,20(s1)
   12fc2:	fff6c693          	not	a3,a3
   12fc6:	8f75                	and	a4,a4,a3
   12fc8:	00eb1023          	sh	a4,0(s6)
   12fcc:	0164d783          	lhu	a5,22(s1)
   12fd0:	00c7f733          	and	a4,a5,a2
   12fd4:	eb51                	bnez	a4,13068 <emdnorm+0x1a4>
   12fd6:	0d205d63          	blez	s2,130b0 <emdnorm+0x1ec>
   12fda:	00445783          	lhu	a5,4(s0)
   12fde:	1a079463          	bnez	a5,13186 <emdnorm+0x2c2>
   12fe2:	67a1                	lui	a5,0x8
   12fe4:	00041c23          	sh	zero,24(s0)
   12fe8:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x80ea>
   12fea:	0f27c663          	blt	a5,s2,130d6 <emdnorm+0x212>
   12fee:	01241123          	sh	s2,2(s0)
   12ff2:	60a6                	ld	ra,72(sp)
   12ff4:	6406                	ld	s0,64(sp)
   12ff6:	74e2                	ld	s1,56(sp)
   12ff8:	7942                	ld	s2,48(sp)
   12ffa:	79a2                	ld	s3,40(sp)
   12ffc:	7a02                	ld	s4,32(sp)
   12ffe:	6ae2                	ld	s5,24(sp)
   13000:	6b42                	ld	s6,16(sp)
   13002:	6ba2                	ld	s7,8(sp)
   13004:	6161                	addi	sp,sp,80
   13006:	8082                	ret
   13008:	10095c63          	bgez	s2,13120 <emdnorm+0x25c>
   1300c:	f7000793          	li	a5,-144
   13010:	0ef95a63          	bge	s2,a5,13104 <emdnorm+0x240>
   13014:	00240793          	addi	a5,s0,2
   13018:	0469                	addi	s0,s0,26
   1301a:	0789                	addi	a5,a5,2
   1301c:	fe079f23          	sh	zero,-2(a5)
   13020:	fe879de3          	bne	a5,s0,1301a <emdnorm+0x156>
   13024:	b7f9                	j	12ff2 <emdnorm+0x12e>
   13026:	47e1                	li	a5,24
   13028:	14fa8563          	beq	s5,a5,13172 <emdnorm+0x2ae>
   1302c:	03500793          	li	a5,53
   13030:	18fa9563          	bne	s5,a5,131ba <emdnorm+0x2f6>
   13034:	6785                	lui	a5,0x1
   13036:	7ff00713          	li	a4,2047
   1303a:	40000593          	li	a1,1024
   1303e:	4b31                	li	s6,12
   13040:	4b99                	li	s7,6
   13042:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf8e8>
   13046:	4619                	li	a2,6
   13048:	bdfd                	j	12f46 <emdnorm+0x82>
   1304a:	0144d703          	lhu	a4,20(s1)
   1304e:	000b5603          	lhu	a2,0(s6)
   13052:	fff74793          	not	a5,a4
   13056:	8ff1                	and	a5,a5,a2
   13058:	00fb1023          	sh	a5,0(s6)
   1305c:	0164d783          	lhu	a5,22(s1)
   13060:	8e79                	and	a2,a2,a4
   13062:	00c7f733          	and	a4,a5,a2
   13066:	cf21                	beqz	a4,130be <emdnorm+0x1fa>
   13068:	00c79d63          	bne	a5,a2,13082 <emdnorm+0x1be>
   1306c:	12099a63          	bnez	s3,131a0 <emdnorm+0x2dc>
   13070:	44dc                	lw	a5,12(s1)
   13072:	0184d703          	lhu	a4,24(s1)
   13076:	0786                	slli	a5,a5,0x1
   13078:	97a2                	add	a5,a5,s0
   1307a:	0007d783          	lhu	a5,0(a5)
   1307e:	8ff9                	and	a5,a5,a4
   13080:	dbb9                	beqz	a5,12fd6 <emdnorm+0x112>
   13082:	03248613          	addi	a2,s1,50
   13086:	01840693          	addi	a3,s0,24
   1308a:	04f1                	addi	s1,s1,28
   1308c:	4781                	li	a5,0
   1308e:	00065703          	lhu	a4,0(a2)
   13092:	0006d583          	lhu	a1,0(a3)
   13096:	16f9                	addi	a3,a3,-2
   13098:	1679                	addi	a2,a2,-2
   1309a:	972e                	add	a4,a4,a1
   1309c:	973e                	add	a4,a4,a5
   1309e:	01075793          	srli	a5,a4,0x10
   130a2:	00e69123          	sh	a4,2(a3)
   130a6:	8b85                	andi	a5,a5,1
   130a8:	fec493e3          	bne	s1,a2,1308e <emdnorm+0x1ca>
   130ac:	f32047e3          	bgtz	s2,12fda <emdnorm+0x116>
   130b0:	09000793          	li	a5,144
   130b4:	00fa8563          	beq	s5,a5,130be <emdnorm+0x1fa>
   130b8:	8522                	mv	a0,s0
   130ba:	8f1ff0ef          	jal	ra,129aa <eshup1>
   130be:	00445783          	lhu	a5,4(s0)
   130c2:	e3f1                	bnez	a5,13186 <emdnorm+0x2c2>
   130c4:	00041c23          	sh	zero,24(s0)
   130c8:	f20953e3          	bgez	s2,12fee <emdnorm+0x12a>
   130cc:	00041123          	sh	zero,2(s0)
   130d0:	b70d                	j	12ff2 <emdnorm+0x12e>
   130d2:	00041c23          	sh	zero,24(s0)
   130d6:	77e1                	lui	a5,0xffff8
   130d8:	fff7c793          	not	a5,a5
   130dc:	00f41123          	sh	a5,2(s0)
   130e0:	00440793          	addi	a5,s0,4
   130e4:	0461                	addi	s0,s0,24
   130e6:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd8c30>
   130ea:	0789                	addi	a5,a5,2
   130ec:	fe879de3          	bne	a5,s0,130e6 <emdnorm+0x222>
   130f0:	b709                	j	12ff2 <emdnorm+0x12e>
   130f2:	00240793          	addi	a5,s0,2
   130f6:	0469                	addi	s0,s0,26
   130f8:	0789                	addi	a5,a5,2
   130fa:	fe079f23          	sh	zero,-2(a5)
   130fe:	fef41de3          	bne	s0,a5,130f8 <emdnorm+0x234>
   13102:	bdc5                	j	12ff2 <emdnorm+0x12e>
   13104:	0009059b          	sext.w	a1,s2
   13108:	8522                	mv	a0,s0
   1310a:	aefff0ef          	jal	ra,12bf8 <eshift.part.0>
   1310e:	c111                	beqz	a0,13112 <emdnorm+0x24e>
   13110:	4985                	li	s3,1
   13112:	de0a97e3          	bnez	s5,12f00 <emdnorm+0x3c>
   13116:	00041c23          	sh	zero,24(s0)
   1311a:	00041123          	sh	zero,2(s0)
   1311e:	bdd1                	j	12ff2 <emdnorm+0x12e>
   13120:	ec0a81e3          	beqz	s5,12fe2 <emdnorm+0x11e>
   13124:	0044aa83          	lw	s5,4(s1)
   13128:	4094                	lw	a3,0(s1)
   1312a:	01a48713          	addi	a4,s1,26
   1312e:	03448793          	addi	a5,s1,52
   13132:	df5690e3          	bne	a3,s5,12f12 <emdnorm+0x4e>
   13136:	0084ab83          	lw	s7,8(s1)
   1313a:	001b9b13          	slli	s6,s7,0x1
   1313e:	9b22                	add	s6,s6,s0
   13140:	e32048e3          	bgtz	s2,12f70 <emdnorm+0xac>
   13144:	09000793          	li	a5,144
   13148:	f0fa81e3          	beq	s5,a5,1304a <emdnorm+0x186>
   1314c:	01845783          	lhu	a5,24(s0)
   13150:	8522                	mv	a0,s0
   13152:	8b85                	andi	a5,a5,1
   13154:	00f9e7b3          	or	a5,s3,a5
   13158:	0007899b          	sext.w	s3,a5
   1315c:	803ff0ef          	jal	ra,1295e <eshdn1>
   13160:	bd01                	j	12f70 <emdnorm+0xac>
   13162:	6741                	lui	a4,0x10
   13164:	177d                	addi	a4,a4,-1 # ffff <exit-0xe9>
   13166:	65a1                	lui	a1,0x8
   13168:	4b39                	li	s6,14
   1316a:	4b9d                	li	s7,7
   1316c:	4785                	li	a5,1
   1316e:	4619                	li	a2,6
   13170:	bbd9                	j	12f46 <emdnorm+0x82>
   13172:	0ff00713          	li	a4,255
   13176:	08000593          	li	a1,128
   1317a:	4b21                	li	s6,8
   1317c:	4b91                	li	s7,4
   1317e:	10000793          	li	a5,256
   13182:	4611                	li	a2,4
   13184:	b3c9                	j	12f46 <emdnorm+0x82>
   13186:	8522                	mv	a0,s0
   13188:	fd6ff0ef          	jal	ra,1295e <eshdn1>
   1318c:	67a1                	lui	a5,0x8
   1318e:	0905                	addi	s2,s2,1
   13190:	00041c23          	sh	zero,24(s0)
   13194:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x80ea>
   13196:	f527c0e3          	blt	a5,s2,130d6 <emdnorm+0x212>
   1319a:	f20949e3          	bltz	s2,130cc <emdnorm+0x208>
   1319e:	bd81                	j	12fee <emdnorm+0x12a>
   131a0:	ee0a01e3          	beqz	s4,13082 <emdnorm+0x1be>
   131a4:	bd0d                	j	12fd6 <emdnorm+0x112>
   131a6:	0ff00713          	li	a4,255
   131aa:	08000593          	li	a1,128
   131ae:	4b31                	li	s6,12
   131b0:	4b99                	li	s7,6
   131b2:	10000793          	li	a5,256
   131b6:	4619                	li	a2,6
   131b8:	b379                	j	12f46 <emdnorm+0x82>
   131ba:	6741                	lui	a4,0x10
   131bc:	177d                	addi	a4,a4,-1 # ffff <exit-0xe9>
   131be:	65a1                	lui	a1,0x8
   131c0:	4b61                	li	s6,24
   131c2:	4bb1                	li	s7,12
   131c4:	4785                	li	a5,1
   131c6:	462d                	li	a2,11
   131c8:	bbbd                	j	12f46 <emdnorm+0x82>

00000000000131ca <eiremain>:
   131ca:	711d                	addi	sp,sp,-96
   131cc:	e0ca                	sd	s2,64(sp)
   131ce:	fc4e                	sd	s3,56(sp)
   131d0:	892e                	mv	s2,a1
   131d2:	00255983          	lhu	s3,2(a0)
   131d6:	ec86                	sd	ra,88(sp)
   131d8:	e8a2                	sd	s0,80(sp)
   131da:	e4a6                	sd	s1,72(sp)
   131dc:	f852                	sd	s4,48(sp)
   131de:	84b2                	mv	s1,a2
   131e0:	ec5e                	sd	s7,24(sp)
   131e2:	f456                	sd	s5,40(sp)
   131e4:	f05a                	sd	s6,32(sp)
   131e6:	e862                	sd	s8,16(sp)
   131e8:	e466                	sd	s9,8(sp)
   131ea:	e06a                	sd	s10,0(sp)
   131ec:	8baa                	mv	s7,a0
   131ee:	901ff0ef          	jal	ra,12aee <enormlz>
   131f2:	00295403          	lhu	s0,2(s2)
   131f6:	87aa                	mv	a5,a0
   131f8:	854a                	mv	a0,s2
   131fa:	40f989b3          	sub	s3,s3,a5
   131fe:	03448a13          	addi	s4,s1,52
   13202:	8edff0ef          	jal	ra,12aee <enormlz>
   13206:	8c09                	sub	s0,s0,a0
   13208:	04e48713          	addi	a4,s1,78
   1320c:	87d2                	mv	a5,s4
   1320e:	0789                	addi	a5,a5,2
   13210:	fe079f23          	sh	zero,-2(a5)
   13214:	fee79de3          	bne	a5,a4,1320e <eiremain+0x44>
   13218:	07344a63          	blt	s0,s3,1328c <eiremain+0xc2>
   1321c:	004b8b13          	addi	s6,s7,4
   13220:	00490a93          	addi	s5,s2,4
   13224:	01ab8c13          	addi	s8,s7,26
   13228:	00290d13          	addi	s10,s2,2
   1322c:	8756                	mv	a4,s5
   1322e:	87da                	mv	a5,s6
   13230:	0007d603          	lhu	a2,0(a5)
   13234:	00075683          	lhu	a3,0(a4)
   13238:	0789                	addi	a5,a5,2
   1323a:	0709                	addi	a4,a4,2
   1323c:	06d61c63          	bne	a2,a3,132b4 <eiremain+0xea>
   13240:	ff8798e3          	bne	a5,s8,13230 <eiremain+0x66>
   13244:	018b8613          	addi	a2,s7,24
   13248:	01890713          	addi	a4,s2,24
   1324c:	4681                	li	a3,0
   1324e:	00075783          	lhu	a5,0(a4)
   13252:	00065583          	lhu	a1,0(a2)
   13256:	1779                	addi	a4,a4,-2
   13258:	8f95                	sub	a5,a5,a3
   1325a:	8f8d                	sub	a5,a5,a1
   1325c:	0107d693          	srli	a3,a5,0x10
   13260:	00f71123          	sh	a5,2(a4)
   13264:	8a85                	andi	a3,a3,1
   13266:	1679                	addi	a2,a2,-2
   13268:	feed13e3          	bne	s10,a4,1324e <eiremain+0x84>
   1326c:	4c85                	li	s9,1
   1326e:	8552                	mv	a0,s4
   13270:	f3aff0ef          	jal	ra,129aa <eshup1>
   13274:	04c4d783          	lhu	a5,76(s1)
   13278:	147d                	addi	s0,s0,-1
   1327a:	854a                	mv	a0,s2
   1327c:	00fce7b3          	or	a5,s9,a5
   13280:	04f49623          	sh	a5,76(s1)
   13284:	f26ff0ef          	jal	ra,129aa <eshup1>
   13288:	fb3452e3          	bge	s0,s3,1322c <eiremain+0x62>
   1328c:	86a2                	mv	a3,s0
   1328e:	6446                	ld	s0,80(sp)
   13290:	60e6                	ld	ra,88(sp)
   13292:	79e2                	ld	s3,56(sp)
   13294:	7a42                	ld	s4,48(sp)
   13296:	7aa2                	ld	s5,40(sp)
   13298:	7b02                	ld	s6,32(sp)
   1329a:	6be2                	ld	s7,24(sp)
   1329c:	6c42                	ld	s8,16(sp)
   1329e:	6ca2                	ld	s9,8(sp)
   132a0:	6d02                	ld	s10,0(sp)
   132a2:	87a6                	mv	a5,s1
   132a4:	854a                	mv	a0,s2
   132a6:	64a6                	ld	s1,72(sp)
   132a8:	6906                	ld	s2,64(sp)
   132aa:	4701                	li	a4,0
   132ac:	4601                	li	a2,0
   132ae:	4581                	li	a1,0
   132b0:	6125                	addi	sp,sp,96
   132b2:	b909                	j	12ec4 <emdnorm>
   132b4:	4c81                	li	s9,0
   132b6:	fac6ece3          	bltu	a3,a2,1326e <eiremain+0xa4>
   132ba:	b769                	j	13244 <eiremain+0x7a>

00000000000132bc <e113toe.isra.0>:
   132bc:	7179                	addi	sp,sp,-48
   132be:	f022                	sd	s0,32(sp)
   132c0:	f406                	sd	ra,40(sp)
   132c2:	842e                	mv	s0,a1
   132c4:	878a                	mv	a5,sp
   132c6:	01a10713          	addi	a4,sp,26
   132ca:	0789                	addi	a5,a5,2
   132cc:	fe079f23          	sh	zero,-2(a5)
   132d0:	fee79de3          	bne	a5,a4,132ca <e113toe.isra.0+0xe>
   132d4:	00e55783          	lhu	a5,14(a0)
   132d8:	6721                	lui	a4,0x8
   132da:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   132dc:	03079693          	slli	a3,a5,0x30
   132e0:	96fd                	srai	a3,a3,0x3f
   132e2:	00d11023          	sh	a3,0(sp)
   132e6:	00e7f6b3          	and	a3,a5,a4
   132ea:	8636                	mv	a2,a3
   132ec:	04e68363          	beq	a3,a4,13332 <e113toe.isra.0+0x76>
   132f0:	00e50793          	addi	a5,a0,14
   132f4:	00d11123          	sh	a3,2(sp)
   132f8:	00610713          	addi	a4,sp,6
   132fc:	ffe7d683          	lhu	a3,-2(a5)
   13300:	17f9                	addi	a5,a5,-2
   13302:	0709                	addi	a4,a4,2
   13304:	fed71f23          	sh	a3,-2(a4)
   13308:	fef51ae3          	bne	a0,a5,132fc <e113toe.isra.0+0x40>
   1330c:	ea19                	bnez	a2,13322 <e113toe.isra.0+0x66>
   1330e:	00011223          	sh	zero,4(sp)
   13312:	85a2                	mv	a1,s0
   13314:	850a                	mv	a0,sp
   13316:	f4cff0ef          	jal	ra,12a62 <emovo.constprop.0>
   1331a:	70a2                	ld	ra,40(sp)
   1331c:	7402                	ld	s0,32(sp)
   1331e:	6145                	addi	sp,sp,48
   13320:	8082                	ret
   13322:	4785                	li	a5,1
   13324:	55fd                	li	a1,-1
   13326:	850a                	mv	a0,sp
   13328:	00f11223          	sh	a5,4(sp)
   1332c:	8cdff0ef          	jal	ra,12bf8 <eshift.part.0>
   13330:	b7cd                	j	13312 <e113toe.isra.0+0x56>
   13332:	87aa                	mv	a5,a0
   13334:	00e50693          	addi	a3,a0,14
   13338:	0007d703          	lhu	a4,0(a5)
   1333c:	0789                	addi	a5,a5,2
   1333e:	ef21                	bnez	a4,13396 <e113toe.isra.0+0xda>
   13340:	fef69ce3          	bne	a3,a5,13338 <e113toe.isra.0+0x7c>
   13344:	01440713          	addi	a4,s0,20
   13348:	87a2                	mv	a5,s0
   1334a:	0789                	addi	a5,a5,2
   1334c:	fe079f23          	sh	zero,-2(a5)
   13350:	fee79de3          	bne	a5,a4,1334a <e113toe.isra.0+0x8e>
   13354:	01240713          	addi	a4,s0,18
   13358:	87a2                	mv	a5,s0
   1335a:	0789                	addi	a5,a5,2
   1335c:	fe079f23          	sh	zero,-2(a5)
   13360:	fef71de3          	bne	a4,a5,1335a <e113toe.isra.0+0x9e>
   13364:	01245783          	lhu	a5,18(s0)
   13368:	66a1                	lui	a3,0x8
   1336a:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   1336c:	8fd5                	or	a5,a5,a3
   1336e:	17c2                	slli	a5,a5,0x30
   13370:	93c1                	srli	a5,a5,0x30
   13372:	00f41923          	sh	a5,18(s0)
   13376:	00e51683          	lh	a3,14(a0)
   1337a:	fa06d0e3          	bgez	a3,1331a <e113toe.isra.0+0x5e>
   1337e:	86a2                	mv	a3,s0
   13380:	0006d603          	lhu	a2,0(a3)
   13384:	0689                	addi	a3,a3,2
   13386:	fa51                	bnez	a2,1331a <e113toe.isra.0+0x5e>
   13388:	fed71ce3          	bne	a4,a3,13380 <e113toe.isra.0+0xc4>
   1338c:	7761                	lui	a4,0xffff8
   1338e:	8fb9                	xor	a5,a5,a4
   13390:	00f41923          	sh	a5,18(s0)
   13394:	b759                	j	1331a <e113toe.isra.0+0x5e>
   13396:	01040713          	addi	a4,s0,16
   1339a:	87a2                	mv	a5,s0
   1339c:	0789                	addi	a5,a5,2
   1339e:	fe079f23          	sh	zero,-2(a5)
   133a2:	fee79de3          	bne	a5,a4,1339c <e113toe.isra.0+0xe0>
   133a6:	77f1                	lui	a5,0xffffc
   133a8:	00f41823          	sh	a5,16(s0)
   133ac:	77e1                	lui	a5,0xffff8
   133ae:	fff7c793          	not	a5,a5
   133b2:	00f41923          	sh	a5,18(s0)
   133b6:	b795                	j	1331a <e113toe.isra.0+0x5e>

00000000000133b8 <ediv>:
   133b8:	01255783          	lhu	a5,18(a0)
   133bc:	7115                	addi	sp,sp,-224
   133be:	e9a2                	sd	s0,208(sp)
   133c0:	fff7c793          	not	a5,a5
   133c4:	e5a6                	sd	s1,200(sp)
   133c6:	e1ca                	sd	s2,192(sp)
   133c8:	fd4e                	sd	s3,184(sp)
   133ca:	ed86                	sd	ra,216(sp)
   133cc:	f952                	sd	s4,176(sp)
   133ce:	f556                	sd	s5,168(sp)
   133d0:	f15a                	sd	s6,160(sp)
   133d2:	ed5e                	sd	s7,152(sp)
   133d4:	e962                	sd	s8,144(sp)
   133d6:	e566                	sd	s9,136(sp)
   133d8:	e16a                	sd	s10,128(sp)
   133da:	fcee                	sd	s11,120(sp)
   133dc:	03179713          	slli	a4,a5,0x31
   133e0:	84aa                	mv	s1,a0
   133e2:	89ae                	mv	s3,a1
   133e4:	8432                	mv	s0,a2
   133e6:	8936                	mv	s2,a3
   133e8:	eb19                	bnez	a4,133fe <ediv+0x46>
   133ea:	01250693          	addi	a3,a0,18
   133ee:	87aa                	mv	a5,a0
   133f0:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd8c30>
   133f4:	0789                	addi	a5,a5,2
   133f6:	22071a63          	bnez	a4,1362a <ediv+0x272>
   133fa:	fed79be3          	bne	a5,a3,133f0 <ediv+0x38>
   133fe:	0129d783          	lhu	a5,18(s3)
   13402:	fff7c793          	not	a5,a5
   13406:	03179713          	slli	a4,a5,0x31
   1340a:	eb19                	bnez	a4,13420 <ediv+0x68>
   1340c:	01298693          	addi	a3,s3,18
   13410:	87ce                	mv	a5,s3
   13412:	0007d703          	lhu	a4,0(a5)
   13416:	0789                	addi	a5,a5,2
   13418:	22071463          	bnez	a4,13640 <ediv+0x288>
   1341c:	fed79be3          	bne	a5,a3,13412 <ediv+0x5a>
   13420:	6a75                	lui	s4,0x1d
   13422:	8a8a0593          	addi	a1,s4,-1880 # 1c8a8 <ezero>
   13426:	8526                	mv	a0,s1
   13428:	9b9ff0ef          	jal	ra,12de0 <ecmp>
   1342c:	22050563          	beqz	a0,13656 <ediv+0x29e>
   13430:	0124d603          	lhu	a2,18(s1)
   13434:	0129d703          	lhu	a4,18(s3)
   13438:	67a1                	lui	a5,0x8
   1343a:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   1343c:	00f67533          	and	a0,a2,a5
   13440:	00f775b3          	and	a1,a4,a5
   13444:	06f51a63          	bne	a0,a5,134b8 <ediv+0x100>
   13448:	01248813          	addi	a6,s1,18
   1344c:	87a6                	mv	a5,s1
   1344e:	0007d683          	lhu	a3,0(a5)
   13452:	0789                	addi	a5,a5,2
   13454:	e2a5                	bnez	a3,134b4 <ediv+0xfc>
   13456:	ff079ce3          	bne	a5,a6,1344e <ediv+0x96>
   1345a:	67a1                	lui	a5,0x8
   1345c:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   1345e:	20f59663          	bne	a1,a5,1366a <ediv+0x2b2>
   13462:	01298693          	addi	a3,s3,18
   13466:	87ce                	mv	a5,s3
   13468:	0007d583          	lhu	a1,0(a5)
   1346c:	0789                	addi	a5,a5,2
   1346e:	36059163          	bnez	a1,137d0 <ediv+0x418>
   13472:	fed79be3          	bne	a5,a3,13468 <ediv+0xb0>
   13476:	01040713          	addi	a4,s0,16
   1347a:	87a2                	mv	a5,s0
   1347c:	0789                	addi	a5,a5,2
   1347e:	fe079f23          	sh	zero,-2(a5)
   13482:	fee79de3          	bne	a5,a4,1347c <ediv+0xc4>
   13486:	77f1                	lui	a5,0xffffc
   13488:	00f41823          	sh	a5,16(s0)
   1348c:	77e1                	lui	a5,0xffff8
   1348e:	fff7c793          	not	a5,a5
   13492:	00f41923          	sh	a5,18(s0)
   13496:	60ee                	ld	ra,216(sp)
   13498:	644e                	ld	s0,208(sp)
   1349a:	64ae                	ld	s1,200(sp)
   1349c:	690e                	ld	s2,192(sp)
   1349e:	79ea                	ld	s3,184(sp)
   134a0:	7a4a                	ld	s4,176(sp)
   134a2:	7aaa                	ld	s5,168(sp)
   134a4:	7b0a                	ld	s6,160(sp)
   134a6:	6bea                	ld	s7,152(sp)
   134a8:	6c4a                	ld	s8,144(sp)
   134aa:	6caa                	ld	s9,136(sp)
   134ac:	6d0a                	ld	s10,128(sp)
   134ae:	7de6                	ld	s11,120(sp)
   134b0:	612d                	addi	sp,sp,224
   134b2:	8082                	ret
   134b4:	67a1                	lui	a5,0x8
   134b6:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   134b8:	1cf58163          	beq	a1,a5,1367a <ediv+0x2c2>
   134bc:	8526                	mv	a0,s1
   134be:	080c                	addi	a1,sp,16
   134c0:	88bff0ef          	jal	ra,12d4a <emovi>
   134c4:	180c                	addi	a1,sp,48
   134c6:	854e                	mv	a0,s3
   134c8:	883ff0ef          	jal	ra,12d4a <emovi>
   134cc:	03215a83          	lhu	s5,50(sp)
   134d0:	01215483          	lhu	s1,18(sp)
   134d4:	200a8963          	beqz	s5,136e6 <ediv+0x32e>
   134d8:	e456                	sd	s5,8(sp)
   134da:	8726                	mv	a4,s1
   134dc:	e026                	sd	s1,0(sp)
   134de:	085c                	addi	a5,sp,20
   134e0:	1034                	addi	a3,sp,40
   134e2:	ef09                	bnez	a4,134fc <ediv+0x144>
   134e4:	2af68e63          	beq	a3,a5,137a0 <ediv+0x3e8>
   134e8:	0007d703          	lhu	a4,0(a5)
   134ec:	0789                	addi	a5,a5,2
   134ee:	db7d                	beqz	a4,134e4 <ediv+0x12c>
   134f0:	0808                	addi	a0,sp,16
   134f2:	dfcff0ef          	jal	ra,12aee <enormlz>
   134f6:	40a487b3          	sub	a5,s1,a0
   134fa:	e03e                	sd	a5,0(sp)
   134fc:	5742                	lw	a4,48(sp)
   134fe:	03890a93          	addi	s5,s2,56
   13502:	87d6                	mv	a5,s5
   13504:	02e92a23          	sw	a4,52(s2)
   13508:	04e90493          	addi	s1,s2,78
   1350c:	0789                	addi	a5,a5,2
   1350e:	fe079f23          	sh	zero,-2(a5)
   13512:	fef49de3          	bne	s1,a5,1350c <ediv+0x154>
   13516:	1808                	addi	a0,sp,48
   13518:	c46ff0ef          	jal	ra,1295e <eshdn1>
   1351c:	01615b03          	lhu	s6,22(sp)
   13520:	69c1                	lui	s3,0x10
   13522:	04810c13          	addi	s8,sp,72
   13526:	010b1a13          	slli	s4,s6,0x10
   1352a:	416a0a33          	sub	s4,s4,s6
   1352e:	03210c93          	addi	s9,sp,50
   13532:	19fd                	addi	s3,s3,-1 # ffff <exit-0xe9>
   13534:	06a10d13          	addi	s10,sp,106
   13538:	05210d93          	addi	s11,sp,82
   1353c:	03415783          	lhu	a5,52(sp)
   13540:	03615703          	lhu	a4,54(sp)
   13544:	8bce                	mv	s7,s3
   13546:	07c2                	slli	a5,a5,0x10
   13548:	97ba                	add	a5,a5,a4
   1354a:	00fa6863          	bltu	s4,a5,1355a <ediv+0x1a2>
   1354e:	0367d7b3          	divu	a5,a5,s6
   13552:	03079b93          	slli	s7,a5,0x30
   13556:	030bdb93          	srli	s7,s7,0x30
   1355a:	0890                	addi	a2,sp,80
   1355c:	080c                	addi	a1,sp,16
   1355e:	855e                	mv	a0,s7
   13560:	c9aff0ef          	jal	ra,129fa <m16m>
   13564:	1858                	addi	a4,sp,52
   13566:	08dc                	addi	a5,sp,84
   13568:	0007d603          	lhu	a2,0(a5)
   1356c:	00075683          	lhu	a3,0(a4) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd8c30>
   13570:	0789                	addi	a5,a5,2
   13572:	0709                	addi	a4,a4,2
   13574:	18d61b63          	bne	a2,a3,1370a <ediv+0x352>
   13578:	ffa798e3          	bne	a5,s10,13568 <ediv+0x1b0>
   1357c:	4781                	li	a5,0
   1357e:	10b4                	addi	a3,sp,104
   13580:	8662                	mv	a2,s8
   13582:	00065703          	lhu	a4,0(a2)
   13586:	0006d583          	lhu	a1,0(a3)
   1358a:	1679                	addi	a2,a2,-2
   1358c:	8f1d                	sub	a4,a4,a5
   1358e:	8f0d                	sub	a4,a4,a1
   13590:	01075793          	srli	a5,a4,0x10
   13594:	00e61123          	sh	a4,2(a2)
   13598:	8b85                	andi	a5,a5,1
   1359a:	16f9                	addi	a3,a3,-2
   1359c:	ff9613e3          	bne	a2,s9,13582 <ediv+0x1ca>
   135a0:	017a9023          	sh	s7,0(s5)
   135a4:	185c                	addi	a5,sp,52
   135a6:	0027d703          	lhu	a4,2(a5)
   135aa:	0789                	addi	a5,a5,2
   135ac:	fee79f23          	sh	a4,-2(a5)
   135b0:	ff879be3          	bne	a5,s8,135a6 <ediv+0x1ee>
   135b4:	04011423          	sh	zero,72(sp)
   135b8:	0a89                	addi	s5,s5,2
   135ba:	f95491e3          	bne	s1,s5,1353c <ediv+0x184>
   135be:	4701                	li	a4,0
   135c0:	185c                	addi	a5,sp,52
   135c2:	04a10613          	addi	a2,sp,74
   135c6:	0007d683          	lhu	a3,0(a5)
   135ca:	0789                	addi	a5,a5,2
   135cc:	8f55                	or	a4,a4,a3
   135ce:	fec79ce3          	bne	a5,a2,135c6 <ediv+0x20e>
   135d2:	2701                	sext.w	a4,a4
   135d4:	00e035b3          	snez	a1,a4
   135d8:	181c                	addi	a5,sp,48
   135da:	03490713          	addi	a4,s2,52
   135de:	00075683          	lhu	a3,0(a4)
   135e2:	0789                	addi	a5,a5,2
   135e4:	0709                	addi	a4,a4,2
   135e6:	fed79f23          	sh	a3,-2(a5)
   135ea:	fef61ae3          	bne	a2,a5,135de <ediv+0x226>
   135ee:	67a2                	ld	a5,8(sp)
   135f0:	6702                	ld	a4,0(sp)
   135f2:	6691                	lui	a3,0x4
   135f4:	16fd                	addi	a3,a3,-1 # 3fff <exit-0xc0e9>
   135f6:	40e78ab3          	sub	s5,a5,a4
   135fa:	1808                	addi	a0,sp,48
   135fc:	87ca                	mv	a5,s2
   135fe:	04000713          	li	a4,64
   13602:	96d6                	add	a3,a3,s5
   13604:	4601                	li	a2,0
   13606:	8bfff0ef          	jal	ra,12ec4 <emdnorm>
   1360a:	03015703          	lhu	a4,48(sp)
   1360e:	01015783          	lhu	a5,16(sp)
   13612:	85a2                	mv	a1,s0
   13614:	1808                	addi	a0,sp,48
   13616:	8f99                	sub	a5,a5,a4
   13618:	00f037b3          	snez	a5,a5
   1361c:	40f007bb          	negw	a5,a5
   13620:	02f11823          	sh	a5,48(sp)
   13624:	c3eff0ef          	jal	ra,12a62 <emovo.constprop.0>
   13628:	b5bd                	j	13496 <ediv+0xde>
   1362a:	01448713          	addi	a4,s1,20
   1362e:	0004d783          	lhu	a5,0(s1)
   13632:	0489                	addi	s1,s1,2
   13634:	0409                	addi	s0,s0,2
   13636:	fef41f23          	sh	a5,-2(s0)
   1363a:	fee49ae3          	bne	s1,a4,1362e <ediv+0x276>
   1363e:	bda1                	j	13496 <ediv+0xde>
   13640:	01440713          	addi	a4,s0,20
   13644:	0009d783          	lhu	a5,0(s3)
   13648:	0409                	addi	s0,s0,2
   1364a:	0989                	addi	s3,s3,2
   1364c:	fef41f23          	sh	a5,-2(s0)
   13650:	fee41ae3          	bne	s0,a4,13644 <ediv+0x28c>
   13654:	b589                	j	13496 <ediv+0xde>
   13656:	8a8a0593          	addi	a1,s4,-1880
   1365a:	854e                	mv	a0,s3
   1365c:	f84ff0ef          	jal	ra,12de0 <ecmp>
   13660:	dc0518e3          	bnez	a0,13430 <ediv+0x78>
   13664:	bd09                	j	13476 <ediv+0xbe>
   13666:	e4080be3          	beqz	a6,134bc <ediv+0x104>
   1366a:	01440793          	addi	a5,s0,20
   1366e:	0409                	addi	s0,s0,2
   13670:	fe041f23          	sh	zero,-2(s0)
   13674:	fef41de3          	bne	s0,a5,1366e <ediv+0x2b6>
   13678:	bd39                	j	13496 <ediv+0xde>
   1367a:	4801                	li	a6,0
   1367c:	01298693          	addi	a3,s3,18
   13680:	87ce                	mv	a5,s3
   13682:	0007d583          	lhu	a1,0(a5)
   13686:	0789                	addi	a5,a5,2
   13688:	fdf9                	bnez	a1,13666 <ediv+0x2ae>
   1368a:	fed79ce3          	bne	a5,a3,13682 <ediv+0x2ca>
   1368e:	67a1                	lui	a5,0x8
   13690:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   13692:	04f50163          	beq	a0,a5,136d4 <ediv+0x31c>
   13696:	823d                	srli	a2,a2,0xf
   13698:	0009d783          	lhu	a5,0(s3)
   1369c:	0989                	addi	s3,s3,2
   1369e:	12079563          	bnez	a5,137c8 <ediv+0x410>
   136a2:	fed99be3          	bne	s3,a3,13698 <ediv+0x2e0>
   136a6:	00f75793          	srli	a5,a4,0xf
   136aa:	8fb1                	xor	a5,a5,a2
   136ac:	00f7979b          	slliw	a5,a5,0xf
   136b0:	00f41923          	sh	a5,18(s0)
   136b4:	01240713          	addi	a4,s0,18
   136b8:	87a2                	mv	a5,s0
   136ba:	0789                	addi	a5,a5,2
   136bc:	fe079f23          	sh	zero,-2(a5)
   136c0:	fef71de3          	bne	a4,a5,136ba <ediv+0x302>
   136c4:	01245783          	lhu	a5,18(s0)
   136c8:	6721                	lui	a4,0x8
   136ca:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   136cc:	8fd9                	or	a5,a5,a4
   136ce:	00f41923          	sh	a5,18(s0)
   136d2:	b3d1                	j	13496 <ediv+0xde>
   136d4:	01248593          	addi	a1,s1,18
   136d8:	0004d783          	lhu	a5,0(s1)
   136dc:	0489                	addi	s1,s1,2
   136de:	e7fd                	bnez	a5,137cc <ediv+0x414>
   136e0:	feb49ce3          	bne	s1,a1,136d8 <ediv+0x320>
   136e4:	bf4d                	j	13696 <ediv+0x2de>
   136e6:	185c                	addi	a5,sp,52
   136e8:	04810c13          	addi	s8,sp,72
   136ec:	0afc0263          	beq	s8,a5,13790 <ediv+0x3d8>
   136f0:	0007d703          	lhu	a4,0(a5)
   136f4:	0789                	addi	a5,a5,2
   136f6:	db7d                	beqz	a4,136ec <ediv+0x334>
   136f8:	1808                	addi	a0,sp,48
   136fa:	bf4ff0ef          	jal	ra,12aee <enormlz>
   136fe:	40a007b3          	neg	a5,a0
   13702:	01215703          	lhu	a4,18(sp)
   13706:	e43e                	sd	a5,8(sp)
   13708:	bbd1                	j	134dc <ediv+0x124>
   1370a:	e6c6f9e3          	bgeu	a3,a2,1357c <ediv+0x1c4>
   1370e:	fffb879b          	addiw	a5,s7,-1
   13712:	03079893          	slli	a7,a5,0x30
   13716:	0308d893          	srli	a7,a7,0x30
   1371a:	4681                	li	a3,0
   1371c:	1030                	addi	a2,sp,40
   1371e:	10b8                	addi	a4,sp,104
   13720:	00075783          	lhu	a5,0(a4)
   13724:	00065583          	lhu	a1,0(a2)
   13728:	1779                	addi	a4,a4,-2
   1372a:	8f95                	sub	a5,a5,a3
   1372c:	8f8d                	sub	a5,a5,a1
   1372e:	0107d693          	srli	a3,a5,0x10
   13732:	00f71123          	sh	a5,2(a4)
   13736:	8a85                	andi	a3,a3,1
   13738:	1679                	addi	a2,a2,-2
   1373a:	ffb713e3          	bne	a4,s11,13720 <ediv+0x368>
   1373e:	1858                	addi	a4,sp,52
   13740:	08dc                	addi	a5,sp,84
   13742:	0007d603          	lhu	a2,0(a5)
   13746:	00075683          	lhu	a3,0(a4)
   1374a:	0789                	addi	a5,a5,2
   1374c:	0709                	addi	a4,a4,2
   1374e:	00d61663          	bne	a2,a3,1375a <ediv+0x3a2>
   13752:	ffa798e3          	bne	a5,s10,13742 <ediv+0x38a>
   13756:	8bc6                	mv	s7,a7
   13758:	b515                	j	1357c <ediv+0x1c4>
   1375a:	fec6fee3          	bgeu	a3,a2,13756 <ediv+0x39e>
   1375e:	ffeb851b          	addiw	a0,s7,-2
   13762:	03051b93          	slli	s7,a0,0x30
   13766:	030bdb93          	srli	s7,s7,0x30
   1376a:	4681                	li	a3,0
   1376c:	1030                	addi	a2,sp,40
   1376e:	10b8                	addi	a4,sp,104
   13770:	00075783          	lhu	a5,0(a4)
   13774:	00065583          	lhu	a1,0(a2)
   13778:	1779                	addi	a4,a4,-2
   1377a:	8f95                	sub	a5,a5,a3
   1377c:	8f8d                	sub	a5,a5,a1
   1377e:	0107d693          	srli	a3,a5,0x10
   13782:	00f71123          	sh	a5,2(a4)
   13786:	8a85                	andi	a3,a3,1
   13788:	1679                	addi	a2,a2,-2
   1378a:	ffb713e3          	bne	a4,s11,13770 <ediv+0x3b8>
   1378e:	b3fd                	j	1357c <ediv+0x1c4>
   13790:	01440793          	addi	a5,s0,20
   13794:	0409                	addi	s0,s0,2
   13796:	fe041f23          	sh	zero,-2(s0)
   1379a:	fef41de3          	bne	s0,a5,13794 <ediv+0x3dc>
   1379e:	b9e5                	j	13496 <ediv+0xde>
   137a0:	01015683          	lhu	a3,16(sp)
   137a4:	03015603          	lhu	a2,48(sp)
   137a8:	01240713          	addi	a4,s0,18
   137ac:	87a2                	mv	a5,s0
   137ae:	8e91                	sub	a3,a3,a2
   137b0:	00d036b3          	snez	a3,a3
   137b4:	00f6969b          	slliw	a3,a3,0xf
   137b8:	00d41923          	sh	a3,18(s0)
   137bc:	0789                	addi	a5,a5,2
   137be:	fe079f23          	sh	zero,-2(a5)
   137c2:	fef71de3          	bne	a4,a5,137bc <ediv+0x404>
   137c6:	bdfd                	j	136c4 <ediv+0x30c>
   137c8:	4781                	li	a5,0
   137ca:	b5c5                	j	136aa <ediv+0x2f2>
   137cc:	4601                	li	a2,0
   137ce:	b5e9                	j	13698 <ediv+0x2e0>
   137d0:	4805                	li	a6,1
   137d2:	b57d                	j	13680 <ediv+0x2c8>

00000000000137d4 <emul>:
   137d4:	7131                	addi	sp,sp,-192
   137d6:	f526                	sd	s1,168(sp)
   137d8:	84aa                	mv	s1,a0
   137da:	01255503          	lhu	a0,18(a0)
   137de:	6721                	lui	a4,0x8
   137e0:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   137e2:	f922                	sd	s0,176(sp)
   137e4:	f14a                	sd	s2,160(sp)
   137e6:	e952                	sd	s4,144(sp)
   137e8:	fd06                	sd	ra,184(sp)
   137ea:	ed4e                	sd	s3,152(sp)
   137ec:	e556                	sd	s5,136(sp)
   137ee:	e15a                	sd	s6,128(sp)
   137f0:	fcde                	sd	s7,120(sp)
   137f2:	f8e2                	sd	s8,112(sp)
   137f4:	f4e6                	sd	s9,104(sp)
   137f6:	00e57833          	and	a6,a0,a4
   137fa:	892e                	mv	s2,a1
   137fc:	8432                	mv	s0,a2
   137fe:	8a36                	mv	s4,a3
   13800:	00e81b63          	bne	a6,a4,13816 <emul+0x42>
   13804:	01248993          	addi	s3,s1,18
   13808:	8726                	mv	a4,s1
   1380a:	00075603          	lhu	a2,0(a4)
   1380e:	0709                	addi	a4,a4,2
   13810:	e67d                	bnez	a2,138fe <emul+0x12a>
   13812:	ff371ce3          	bne	a4,s3,1380a <emul+0x36>
   13816:	01295603          	lhu	a2,18(s2)
   1381a:	67a1                	lui	a5,0x8
   1381c:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   1381e:	00f675b3          	and	a1,a2,a5
   13822:	06f58c63          	beq	a1,a5,1389a <emul+0xc6>
   13826:	10f81363          	bne	a6,a5,1392c <emul+0x158>
   1382a:	01248993          	addi	s3,s1,18
   1382e:	87a6                	mv	a5,s1
   13830:	0007d703          	lhu	a4,0(a5)
   13834:	0789                	addi	a5,a5,2
   13836:	1c071b63          	bnez	a4,13a0c <emul+0x238>
   1383a:	fef99be3          	bne	s3,a5,13830 <emul+0x5c>
   1383e:	65f5                	lui	a1,0x1d
   13840:	8a858593          	addi	a1,a1,-1880 # 1c8a8 <ezero>
   13844:	854a                	mv	a0,s2
   13846:	d9aff0ef          	jal	ra,12de0 <ecmp>
   1384a:	1a050063          	beqz	a0,139ea <emul+0x216>
   1384e:	01295603          	lhu	a2,18(s2)
   13852:	67a1                	lui	a5,0x8
   13854:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   13856:	00f675b3          	and	a1,a2,a5
   1385a:	1af58d63          	beq	a1,a5,13a14 <emul+0x240>
   1385e:	0124d503          	lhu	a0,18(s1)
   13862:	00f57733          	and	a4,a0,a5
   13866:	0cf71363          	bne	a4,a5,1392c <emul+0x158>
   1386a:	87a6                	mv	a5,s1
   1386c:	0007d703          	lhu	a4,0(a5)
   13870:	0789                	addi	a5,a5,2
   13872:	0e071a63          	bnez	a4,13966 <emul+0x192>
   13876:	fef99be3          	bne	s3,a5,1386c <emul+0x98>
   1387a:	0004d783          	lhu	a5,0(s1)
   1387e:	0489                	addi	s1,s1,2
   13880:	28079e63          	bnez	a5,13b1c <emul+0x348>
   13884:	ff349be3          	bne	s1,s3,1387a <emul+0xa6>
   13888:	00f55713          	srli	a4,a0,0xf
   1388c:	67a1                	lui	a5,0x8
   1388e:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   13890:	10f59b63          	bne	a1,a5,139a6 <emul+0x1d2>
   13894:	01290693          	addi	a3,s2,18
   13898:	a201                	j	13998 <emul+0x1c4>
   1389a:	01290693          	addi	a3,s2,18
   1389e:	874a                	mv	a4,s2
   138a0:	00075783          	lhu	a5,0(a4)
   138a4:	0709                	addi	a4,a4,2
   138a6:	12079763          	bnez	a5,139d4 <emul+0x200>
   138aa:	fee69be3          	bne	a3,a4,138a0 <emul+0xcc>
   138ae:	67a1                	lui	a5,0x8
   138b0:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   138b2:	f6f80ce3          	beq	a6,a5,1382a <emul+0x56>
   138b6:	87ca                	mv	a5,s2
   138b8:	0007d703          	lhu	a4,0(a5)
   138bc:	0789                	addi	a5,a5,2
   138be:	28071163          	bnez	a4,13b40 <emul+0x36c>
   138c2:	fef69be3          	bne	a3,a5,138b8 <emul+0xe4>
   138c6:	65f5                	lui	a1,0x1d
   138c8:	8a858593          	addi	a1,a1,-1880 # 1c8a8 <ezero>
   138cc:	8526                	mv	a0,s1
   138ce:	d12ff0ef          	jal	ra,12de0 <ecmp>
   138d2:	10050c63          	beqz	a0,139ea <emul+0x216>
   138d6:	0124d503          	lhu	a0,18(s1)
   138da:	01295603          	lhu	a2,18(s2)
   138de:	67a1                	lui	a5,0x8
   138e0:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   138e2:	00f576b3          	and	a3,a0,a5
   138e6:	00f67733          	and	a4,a2,a5
   138ea:	8836                	mv	a6,a3
   138ec:	0007059b          	sext.w	a1,a4
   138f0:	06f69d63          	bne	a3,a5,1396a <emul+0x196>
   138f4:	01248993          	addi	s3,s1,18
   138f8:	0007059b          	sext.w	a1,a4
   138fc:	b7bd                	j	1386a <emul+0x96>
   138fe:	01440713          	addi	a4,s0,20
   13902:	0004d783          	lhu	a5,0(s1)
   13906:	0409                	addi	s0,s0,2
   13908:	0489                	addi	s1,s1,2
   1390a:	fef41f23          	sh	a5,-2(s0)
   1390e:	fee41ae3          	bne	s0,a4,13902 <emul+0x12e>
   13912:	70ea                	ld	ra,184(sp)
   13914:	744a                	ld	s0,176(sp)
   13916:	74aa                	ld	s1,168(sp)
   13918:	790a                	ld	s2,160(sp)
   1391a:	69ea                	ld	s3,152(sp)
   1391c:	6a4a                	ld	s4,144(sp)
   1391e:	6aaa                	ld	s5,136(sp)
   13920:	6b0a                	ld	s6,128(sp)
   13922:	7be6                	ld	s7,120(sp)
   13924:	7c46                	ld	s8,112(sp)
   13926:	7ca6                	ld	s9,104(sp)
   13928:	6129                	addi	sp,sp,192
   1392a:	8082                	ret
   1392c:	8526                	mv	a0,s1
   1392e:	858a                	mv	a1,sp
   13930:	c1aff0ef          	jal	ra,12d4a <emovi>
   13934:	100c                	addi	a1,sp,32
   13936:	854a                	mv	a0,s2
   13938:	c12ff0ef          	jal	ra,12d4a <emovi>
   1393c:	00215483          	lhu	s1,2(sp)
   13940:	02215983          	lhu	s3,34(sp)
   13944:	e8f9                	bnez	s1,13a1a <emul+0x246>
   13946:	005c                	addi	a5,sp,4
   13948:	0834                	addi	a3,sp,24
   1394a:	1cf68b63          	beq	a3,a5,13b20 <emul+0x34c>
   1394e:	0007d703          	lhu	a4,0(a5)
   13952:	0789                	addi	a5,a5,2
   13954:	db7d                	beqz	a4,1394a <emul+0x176>
   13956:	850a                	mv	a0,sp
   13958:	996ff0ef          	jal	ra,12aee <enormlz>
   1395c:	02215703          	lhu	a4,34(sp)
   13960:	40a004b3          	neg	s1,a0
   13964:	a865                	j	13a1c <emul+0x248>
   13966:	6821                	lui	a6,0x8
   13968:	187d                	addi	a6,a6,-1 # 7fff <exit-0x80e9>
   1396a:	67a1                	lui	a5,0x8
   1396c:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   1396e:	faf59fe3          	bne	a1,a5,1392c <emul+0x158>
   13972:	01290693          	addi	a3,s2,18
   13976:	87ca                	mv	a5,s2
   13978:	0007d703          	lhu	a4,0(a5)
   1397c:	0789                	addi	a5,a5,2
   1397e:	f75d                	bnez	a4,1392c <emul+0x158>
   13980:	fed79ce3          	bne	a5,a3,13978 <emul+0x1a4>
   13984:	67a1                	lui	a5,0x8
   13986:	2801                	sext.w	a6,a6
   13988:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   1398a:	00f55713          	srli	a4,a0,0xf
   1398e:	01248993          	addi	s3,s1,18
   13992:	85c2                	mv	a1,a6
   13994:	eef803e3          	beq	a6,a5,1387a <emul+0xa6>
   13998:	00095783          	lhu	a5,0(s2)
   1399c:	0909                	addi	s2,s2,2
   1399e:	16079d63          	bnez	a5,13b18 <emul+0x344>
   139a2:	fed91be3          	bne	s2,a3,13998 <emul+0x1c4>
   139a6:	00f65793          	srli	a5,a2,0xf
   139aa:	8fb9                	xor	a5,a5,a4
   139ac:	00f7979b          	slliw	a5,a5,0xf
   139b0:	00f41923          	sh	a5,18(s0)
   139b4:	01240713          	addi	a4,s0,18
   139b8:	87a2                	mv	a5,s0
   139ba:	0789                	addi	a5,a5,2
   139bc:	fe079f23          	sh	zero,-2(a5)
   139c0:	fee79de3          	bne	a5,a4,139ba <emul+0x1e6>
   139c4:	01245783          	lhu	a5,18(s0)
   139c8:	6721                	lui	a4,0x8
   139ca:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   139cc:	8fd9                	or	a5,a5,a4
   139ce:	00f41923          	sh	a5,18(s0)
   139d2:	b781                	j	13912 <emul+0x13e>
   139d4:	01490713          	addi	a4,s2,20
   139d8:	00095783          	lhu	a5,0(s2)
   139dc:	0909                	addi	s2,s2,2
   139de:	0409                	addi	s0,s0,2
   139e0:	fef41f23          	sh	a5,-2(s0)
   139e4:	fee91ae3          	bne	s2,a4,139d8 <emul+0x204>
   139e8:	b72d                	j	13912 <emul+0x13e>
   139ea:	01040713          	addi	a4,s0,16
   139ee:	87a2                	mv	a5,s0
   139f0:	0789                	addi	a5,a5,2
   139f2:	fe079f23          	sh	zero,-2(a5)
   139f6:	fee79de3          	bne	a5,a4,139f0 <emul+0x21c>
   139fa:	77f1                	lui	a5,0xffffc
   139fc:	00f41823          	sh	a5,16(s0)
   13a00:	77e1                	lui	a5,0xffff8
   13a02:	fff7c793          	not	a5,a5
   13a06:	00f41923          	sh	a5,18(s0)
   13a0a:	b721                	j	13912 <emul+0x13e>
   13a0c:	67a1                	lui	a5,0x8
   13a0e:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   13a10:	e4f59de3          	bne	a1,a5,1386a <emul+0x96>
   13a14:	01290693          	addi	a3,s2,18
   13a18:	bd79                	j	138b6 <emul+0xe2>
   13a1a:	874e                	mv	a4,s3
   13a1c:	894e                	mv	s2,s3
   13a1e:	105c                	addi	a5,sp,36
   13a20:	1834                	addi	a3,sp,56
   13a22:	ef11                	bnez	a4,13a3e <emul+0x26a>
   13a24:	10d78663          	beq	a5,a3,13b30 <emul+0x35c>
   13a28:	0007d703          	lhu	a4,0(a5)
   13a2c:	0789                	addi	a5,a5,2
   13a2e:	db7d                	beqz	a4,13a24 <emul+0x250>
   13a30:	1008                	addi	a0,sp,32
   13a32:	8bcff0ef          	jal	ra,12aee <enormlz>
   13a36:	02215703          	lhu	a4,34(sp)
   13a3a:	40a98933          	sub	s2,s3,a0
   13a3e:	02015783          	lhu	a5,32(sp)
   13a42:	038a0993          	addi	s3,s4,56
   13a46:	02ea1b23          	sh	a4,54(s4)
   13a4a:	02fa1a23          	sh	a5,52(s4)
   13a4e:	04ea0713          	addi	a4,s4,78
   13a52:	87ce                	mv	a5,s3
   13a54:	00079023          	sh	zero,0(a5)
   13a58:	0789                	addi	a5,a5,2
   13a5a:	fee79de3          	bne	a5,a4,13a54 <emul+0x280>
   13a5e:	04ca0c13          	addi	s8,s4,76
   13a62:	4b81                	li	s7,0
   13a64:	01810a93          	addi	s5,sp,24
   13a68:	00410c93          	addi	s9,sp,4
   13a6c:	04210b13          	addi	s6,sp,66
   13a70:	000ad503          	lhu	a0,0(s5)
   13a74:	1af9                	addi	s5,s5,-2
   13a76:	e935                	bnez	a0,13aea <emul+0x316>
   13a78:	04ca5783          	lhu	a5,76(s4)
   13a7c:	8762                	mv	a4,s8
   13a7e:	00fbebb3          	or	s7,s7,a5
   13a82:	ffe75603          	lhu	a2,-2(a4)
   13a86:	1779                	addi	a4,a4,-2
   13a88:	00c71123          	sh	a2,2(a4)
   13a8c:	fee99be3          	bne	s3,a4,13a82 <emul+0x2ae>
   13a90:	020a1c23          	sh	zero,56(s4)
   13a94:	fd9a9ee3          	bne	s5,s9,13a70 <emul+0x29c>
   13a98:	034a0713          	addi	a4,s4,52
   13a9c:	101c                	addi	a5,sp,32
   13a9e:	03a10613          	addi	a2,sp,58
   13aa2:	00075683          	lhu	a3,0(a4)
   13aa6:	0789                	addi	a5,a5,2
   13aa8:	0709                	addi	a4,a4,2
   13aaa:	fed79f23          	sh	a3,-2(a5)
   13aae:	fec79ae3          	bne	a5,a2,13aa2 <emul+0x2ce>
   13ab2:	76f1                	lui	a3,0xffffc
   13ab4:	94ca                	add	s1,s1,s2
   13ab6:	0689                	addi	a3,a3,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffdcc32>
   13ab8:	85de                	mv	a1,s7
   13aba:	1008                	addi	a0,sp,32
   13abc:	87d2                	mv	a5,s4
   13abe:	04000713          	li	a4,64
   13ac2:	96a6                	add	a3,a3,s1
   13ac4:	4601                	li	a2,0
   13ac6:	bfeff0ef          	jal	ra,12ec4 <emdnorm>
   13aca:	02015703          	lhu	a4,32(sp)
   13ace:	00015783          	lhu	a5,0(sp)
   13ad2:	85a2                	mv	a1,s0
   13ad4:	1008                	addi	a0,sp,32
   13ad6:	8f99                	sub	a5,a5,a4
   13ad8:	00f037b3          	snez	a5,a5
   13adc:	40f007bb          	negw	a5,a5
   13ae0:	02f11023          	sh	a5,32(sp)
   13ae4:	f7ffe0ef          	jal	ra,12a62 <emovo.constprop.0>
   13ae8:	b52d                	j	13912 <emul+0x13e>
   13aea:	0090                	addi	a2,sp,64
   13aec:	100c                	addi	a1,sp,32
   13aee:	f0dfe0ef          	jal	ra,129fa <m16m>
   13af2:	8562                	mv	a0,s8
   13af4:	4581                	li	a1,0
   13af6:	08b0                	addi	a2,sp,88
   13af8:	00055783          	lhu	a5,0(a0)
   13afc:	00065703          	lhu	a4,0(a2)
   13b00:	1579                	addi	a0,a0,-2
   13b02:	1679                	addi	a2,a2,-2
   13b04:	973e                	add	a4,a4,a5
   13b06:	972e                	add	a4,a4,a1
   13b08:	01075593          	srli	a1,a4,0x10
   13b0c:	00e51123          	sh	a4,2(a0)
   13b10:	8985                	andi	a1,a1,1
   13b12:	ff6613e3          	bne	a2,s6,13af8 <emul+0x324>
   13b16:	b78d                	j	13a78 <emul+0x2a4>
   13b18:	4781                	li	a5,0
   13b1a:	bd41                	j	139aa <emul+0x1d6>
   13b1c:	4701                	li	a4,0
   13b1e:	b3bd                	j	1388c <emul+0xb8>
   13b20:	01440793          	addi	a5,s0,20
   13b24:	0409                	addi	s0,s0,2
   13b26:	fe041f23          	sh	zero,-2(s0)
   13b2a:	fef41de3          	bne	s0,a5,13b24 <emul+0x350>
   13b2e:	b3d5                	j	13912 <emul+0x13e>
   13b30:	01440793          	addi	a5,s0,20
   13b34:	0409                	addi	s0,s0,2
   13b36:	fe041f23          	sh	zero,-2(s0)
   13b3a:	fef41de3          	bne	s0,a5,13b34 <emul+0x360>
   13b3e:	bbd1                	j	13912 <emul+0x13e>
   13b40:	0124d503          	lhu	a0,18(s1)
   13b44:	67a1                	lui	a5,0x8
   13b46:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   13b48:	00f575b3          	and	a1,a0,a5
   13b4c:	01248993          	addi	s3,s1,18
   13b50:	882e                	mv	a6,a1
   13b52:	e2f592e3          	bne	a1,a5,13976 <emul+0x1a2>
   13b56:	bb11                	j	1386a <emul+0x96>

0000000000013b58 <_ldtoa_r>:
   13b58:	d9010113          	addi	sp,sp,-624
   13b5c:	09100313          	li	t1,145
   13b60:	f4b2                	sd	a2,104(sp)
   13b62:	06053e03          	ld	t3,96(a0)
   13b66:	02031613          	slli	a2,t1,0x20
   13b6a:	167d                	addi	a2,a2,-1
   13b6c:	ec3e                	sd	a5,24(sp)
   13b6e:	09000793          	li	a5,144
   13b72:	26813023          	sd	s0,608(sp)
   13b76:	23513c23          	sd	s5,568(sp)
   13b7a:	23713423          	sd	s7,552(sp)
   13b7e:	26113423          	sd	ra,616(sp)
   13b82:	24913c23          	sd	s1,600(sp)
   13b86:	25213823          	sd	s2,592(sp)
   13b8a:	25313423          	sd	s3,584(sp)
   13b8e:	25413023          	sd	s4,576(sp)
   13b92:	23613823          	sd	s6,560(sp)
   13b96:	23813023          	sd	s8,544(sp)
   13b9a:	21913c23          	sd	s9,536(sp)
   13b9e:	21a13823          	sd	s10,528(sp)
   13ba2:	21b13423          	sd	s11,520(sp)
   13ba6:	f0ae                	sd	a1,96(sp)
   13ba8:	fb32                	sd	a2,432(sp)
   13baa:	e43a                	sd	a4,8(sp)
   13bac:	f046                	sd	a7,32(sp)
   13bae:	e83e                	sd	a5,16(sp)
   13bb0:	8aaa                	mv	s5,a0
   13bb2:	8bb6                	mv	s7,a3
   13bb4:	8442                	mv	s0,a6
   13bb6:	020e0263          	beqz	t3,13bda <_ldtoa_r+0x82>
   13bba:	5538                	lw	a4,104(a0)
   13bbc:	4785                	li	a5,1
   13bbe:	85f2                	mv	a1,t3
   13bc0:	00e797bb          	sllw	a5,a5,a4
   13bc4:	00fe2623          	sw	a5,12(t3)
   13bc8:	00ee2423          	sw	a4,8(t3)
   13bcc:	77e010ef          	jal	ra,1534a <_Bfree>
   13bd0:	1b412783          	lw	a5,436(sp)
   13bd4:	060ab023          	sd	zero,96(s5)
   13bd8:	e83e                	sd	a5,16(sp)
   13bda:	090c                	addi	a1,sp,144
   13bdc:	1088                	addi	a0,sp,96
   13bde:	edeff0ef          	jal	ra,132bc <e113toe.isra.0>
   13be2:	0a215683          	lhu	a3,162(sp)
   13be6:	67a1                	lui	a5,0x8
   13be8:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   13bea:	00f6f5b3          	and	a1,a3,a5
   13bee:	00f59c63          	bne	a1,a5,13c06 <_ldtoa_r+0xae>
   13bf2:	091c                	addi	a5,sp,144
   13bf4:	0a210613          	addi	a2,sp,162
   13bf8:	0007d703          	lhu	a4,0(a5)
   13bfc:	0789                	addi	a5,a5,2
   13bfe:	0e0714e3          	bnez	a4,144e6 <_ldtoa_r+0x98e>
   13c02:	fec79be3          	bne	a5,a2,13bf8 <_ldtoa_r+0xa0>
   13c06:	82bd                	srli	a3,a3,0xf
   13c08:	c014                	sw	a3,0(s0)
   13c0a:	478d                	li	a5,3
   13c0c:	68fb8163          	beq	s7,a5,1428e <_ldtoa_r+0x736>
   13c10:	47d1                	li	a5,20
   13c12:	e03e                	sd	a5,0(sp)
   13c14:	0c0b9ce3          	bnez	s7,144ec <_ldtoa_r+0x994>
   13c18:	67a1                	lui	a5,0x8
   13c1a:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   13c1c:	00f59c63          	bne	a1,a5,13c34 <_ldtoa_r+0xdc>
   13c20:	091c                	addi	a5,sp,144
   13c22:	0a210693          	addi	a3,sp,162
   13c26:	0007d703          	lhu	a4,0(a5)
   13c2a:	0789                	addi	a5,a5,2
   13c2c:	6c071263          	bnez	a4,142f0 <_ldtoa_r+0x798>
   13c30:	fed79be3          	bne	a5,a3,13c26 <_ldtoa_r+0xce>
   13c34:	09000793          	li	a5,144
   13c38:	1af12a23          	sw	a5,436(sp)
   13c3c:	1918                	addi	a4,sp,176
   13c3e:	091c                	addi	a5,sp,144
   13c40:	1150                	addi	a2,sp,164
   13c42:	0007d683          	lhu	a3,0(a5)
   13c46:	0789                	addi	a5,a5,2
   13c48:	0709                	addi	a4,a4,2
   13c4a:	fed71f23          	sh	a3,-2(a4)
   13c4e:	fec79ae3          	bne	a5,a2,13c42 <_ldtoa_r+0xea>
   13c52:	0c215603          	lhu	a2,194(sp)
   13c56:	f402                	sd	zero,40(sp)
   13c58:	00f65793          	srli	a5,a2,0xf
   13c5c:	40079463          	bnez	a5,14064 <_ldtoa_r+0x50c>
   13c60:	6d71                	lui	s10,0x1c
   13c62:	4681                	li	a3,0
   13c64:	099c                	addi	a5,sp,208
   13c66:	788d0713          	addi	a4,s10,1928 # 1c788 <eone>
   13c6a:	0e410c13          	addi	s8,sp,228
   13c6e:	a019                	j	13c74 <_ldtoa_r+0x11c>
   13c70:	00075683          	lhu	a3,0(a4)
   13c74:	0789                	addi	a5,a5,2
   13c76:	fed79f23          	sh	a3,-2(a5)
   13c7a:	0709                	addi	a4,a4,2
   13c7c:	ff879ae3          	bne	a5,s8,13c70 <_ldtoa_r+0x118>
   13c80:	10060363          	beqz	a2,13d86 <_ldtoa_r+0x22e>
   13c84:	67a1                	lui	a5,0x8
   13c86:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   13c88:	1af605e3          	beq	a2,a5,14632 <_ldtoa_r+0xada>
   13c8c:	0c011783          	lh	a5,192(sp)
   13c90:	2007d3e3          	bgez	a5,14696 <_ldtoa_r+0xb3e>
   13c94:	190c                	addi	a1,sp,176
   13c96:	788d0513          	addi	a0,s10,1928
   13c9a:	946ff0ef          	jal	ra,12de0 <ecmp>
   13c9e:	0e050e63          	beqz	a0,13d9a <_ldtoa_r+0x242>
   13ca2:	66054363          	bltz	a0,14308 <_ldtoa_r+0x7b0>
   13ca6:	0c215783          	lhu	a5,194(sp)
   13caa:	260794e3          	bnez	a5,14712 <_ldtoa_r+0xbba>
   13cae:	0c011783          	lh	a5,192(sp)
   13cb2:	3607c3e3          	bltz	a5,14818 <_ldtoa_r+0xcc0>
   13cb6:	67f1                	lui	a5,0x1c
   13cb8:	7a078793          	addi	a5,a5,1952 # 1c7a0 <etens>
   13cbc:	6df5                	lui	s11,0x1d
   13cbe:	4481                	li	s1,0
   13cc0:	e4be                	sd	a5,72(sp)
   13cc2:	1b010a13          	addi	s4,sp,432
   13cc6:	890d8d93          	addi	s11,s11,-1904 # 1c890 <etens+0xf0>
   13cca:	1910                	addi	a2,sp,176
   13ccc:	86d2                	mv	a3,s4
   13cce:	85b2                	mv	a1,a2
   13cd0:	856e                	mv	a0,s11
   13cd2:	b03ff0ef          	jal	ra,137d4 <emul>
   13cd6:	0c011783          	lh	a5,192(sp)
   13cda:	34fd                	addiw	s1,s1,-1
   13cdc:	fe07d7e3          	bgez	a5,13cca <_ldtoa_r+0x172>
   13ce0:	0a00                	addi	s0,sp,272
   13ce2:	12810993          	addi	s3,sp,296
   13ce6:	8722                	mv	a4,s0
   13ce8:	191c                	addi	a5,sp,176
   13cea:	01d0                	addi	a2,sp,196
   13cec:	0007d683          	lhu	a3,0(a5)
   13cf0:	0789                	addi	a5,a5,2
   13cf2:	0709                	addi	a4,a4,2
   13cf4:	fed71f23          	sh	a3,-2(a4)
   13cf8:	fec79ae3          	bne	a5,a2,13cec <_ldtoa_r+0x194>
   13cfc:	6771                	lui	a4,0x1c
   13cfe:	4681                	li	a3,0
   13d00:	099c                	addi	a5,sp,208
   13d02:	78870713          	addi	a4,a4,1928 # 1c788 <eone>
   13d06:	a019                	j	13d0c <_ldtoa_r+0x1b4>
   13d08:	00075683          	lhu	a3,0(a4)
   13d0c:	0789                	addi	a5,a5,2
   13d0e:	fed79f23          	sh	a3,-2(a5)
   13d12:	0709                	addi	a4,a4,2
   13d14:	ff879ae3          	bne	a5,s8,13d08 <_ldtoa_r+0x1b0>
   13d18:	6971                	lui	s2,0x1c
   13d1a:	68090913          	addi	s2,s2,1664 # 1c680 <emtens>
   13d1e:	6da6                	ld	s11,72(sp)
   13d20:	7b7d                	lui	s6,0xfffff
   13d22:	0f090c13          	addi	s8,s2,240
   13d26:	a019                	j	13d2c <_ldtoa_r+0x1d4>
   13d28:	0951                	addi	s2,s2,20
   13d2a:	0dd1                	addi	s11,s11,20
   13d2c:	85a2                	mv	a1,s0
   13d2e:	788d0513          	addi	a0,s10,1928
   13d32:	8aeff0ef          	jal	ra,12de0 <ecmp>
   13d36:	02a05e63          	blez	a0,13d72 <_ldtoa_r+0x21a>
   13d3a:	85a2                	mv	a1,s0
   13d3c:	854a                	mv	a0,s2
   13d3e:	8a2ff0ef          	jal	ra,12de0 <ecmp>
   13d42:	02054063          	bltz	a0,13d62 <_ldtoa_r+0x20a>
   13d46:	86d2                	mv	a3,s4
   13d48:	8622                	mv	a2,s0
   13d4a:	85a2                	mv	a1,s0
   13d4c:	856e                	mv	a0,s11
   13d4e:	a87ff0ef          	jal	ra,137d4 <emul>
   13d52:	0990                	addi	a2,sp,208
   13d54:	86d2                	mv	a3,s4
   13d56:	85b2                	mv	a1,a2
   13d58:	856e                	mv	a0,s11
   13d5a:	a7bff0ef          	jal	ra,137d4 <emul>
   13d5e:	009b04bb          	addw	s1,s6,s1
   13d62:	01fb579b          	srliw	a5,s6,0x1f
   13d66:	016787bb          	addw	a5,a5,s6
   13d6a:	4017db1b          	sraiw	s6,a5,0x1
   13d6e:	fb891de3          	bne	s2,s8,13d28 <_ldtoa_r+0x1d0>
   13d72:	0990                	addi	a2,sp,208
   13d74:	86d2                	mv	a3,s4
   13d76:	788d0593          	addi	a1,s10,1928
   13d7a:	8532                	mv	a0,a2
   13d7c:	e3cff0ef          	jal	ra,133b8 <ediv>
   13d80:	17010913          	addi	s2,sp,368
   13d84:	a01d                	j	13daa <_ldtoa_r+0x252>
   13d86:	191c                	addi	a5,sp,176
   13d88:	0c210693          	addi	a3,sp,194
   13d8c:	0007d703          	lhu	a4,0(a5)
   13d90:	f00712e3          	bnez	a4,13c94 <_ldtoa_r+0x13c>
   13d94:	0789                	addi	a5,a5,2
   13d96:	fed79be3          	bne	a5,a3,13d8c <_ldtoa_r+0x234>
   13d9a:	4481                	li	s1,0
   13d9c:	17010913          	addi	s2,sp,368
   13da0:	1b010a13          	addi	s4,sp,432
   13da4:	0a00                	addi	s0,sp,272
   13da6:	12810993          	addi	s3,sp,296
   13daa:	85a2                	mv	a1,s0
   13dac:	0988                	addi	a0,sp,208
   13dae:	f9dfe0ef          	jal	ra,12d4a <emovi>
   13db2:	0998                	addi	a4,sp,208
   13db4:	87a2                	mv	a5,s0
   13db6:	0007d683          	lhu	a3,0(a5)
   13dba:	0789                	addi	a5,a5,2
   13dbc:	0709                	addi	a4,a4,2
   13dbe:	fed71f23          	sh	a3,-2(a4)
   13dc2:	ff379ae3          	bne	a5,s3,13db6 <_ldtoa_r+0x25e>
   13dc6:	85a2                	mv	a1,s0
   13dc8:	1908                	addi	a0,sp,176
   13dca:	0e011423          	sh	zero,232(sp)
   13dce:	f7dfe0ef          	jal	ra,12d4a <emovi>
   13dd2:	191c                	addi	a5,sp,176
   13dd4:	00045703          	lhu	a4,0(s0)
   13dd8:	0409                	addi	s0,s0,2
   13dda:	0789                	addi	a5,a5,2
   13ddc:	fee79f23          	sh	a4,-2(a5)
   13de0:	ff341ae3          	bne	s0,s3,13dd4 <_ldtoa_r+0x27c>
   13de4:	8652                	mv	a2,s4
   13de6:	190c                	addi	a1,sp,176
   13de8:	0988                	addi	a0,sp,208
   13dea:	0c011423          	sh	zero,200(sp)
   13dee:	bdcff0ef          	jal	ra,131ca <eiremain>
   13df2:	1fc15b03          	lhu	s6,508(sp)
   13df6:	6475                	lui	s0,0x1d
   13df8:	100b1863          	bnez	s6,13f08 <_ldtoa_r+0x3b0>
   13dfc:	0c810d93          	addi	s11,sp,200
   13e00:	0b210993          	addi	s3,sp,178
   13e04:	0f210d13          	addi	s10,sp,242
   13e08:	8a840593          	addi	a1,s0,-1880 # 1c8a8 <ezero>
   13e0c:	1908                	addi	a0,sp,176
   13e0e:	fd3fe0ef          	jal	ra,12de0 <ecmp>
   13e12:	c97d                	beqz	a0,13f08 <_ldtoa_r+0x3b0>
   13e14:	4681                	li	a3,0
   13e16:	866e                	mv	a2,s11
   13e18:	00065783          	lhu	a5,0(a2)
   13e1c:	00f7d593          	srli	a1,a5,0xf
   13e20:	c199                	beqz	a1,13e26 <_ldtoa_r+0x2ce>
   13e22:	0016e693          	ori	a3,a3,1
   13e26:	0017979b          	slliw	a5,a5,0x1
   13e2a:	17c2                	slli	a5,a5,0x30
   13e2c:	0026f593          	andi	a1,a3,2
   13e30:	93c1                	srli	a5,a5,0x30
   13e32:	c199                	beqz	a1,13e38 <_ldtoa_r+0x2e0>
   13e34:	0017e793          	ori	a5,a5,1
   13e38:	0016969b          	slliw	a3,a3,0x1
   13e3c:	00f61023          	sh	a5,0(a2)
   13e40:	16c2                	slli	a3,a3,0x30
   13e42:	1679                	addi	a2,a2,-2
   13e44:	92c1                	srli	a3,a3,0x30
   13e46:	fd3619e3          	bne	a2,s3,13e18 <_ldtoa_r+0x2c0>
   13e4a:	1994                	addi	a3,sp,240
   13e4c:	191c                	addi	a5,sp,176
   13e4e:	0007d603          	lhu	a2,0(a5)
   13e52:	0789                	addi	a5,a5,2
   13e54:	0689                	addi	a3,a3,2
   13e56:	fec69f23          	sh	a2,-2(a3)
   13e5a:	ffb79ae3          	bne	a5,s11,13e4e <_ldtoa_r+0x2f6>
   13e5e:	10011423          	sh	zero,264(sp)
   13e62:	4681                	li	a3,0
   13e64:	0230                	addi	a2,sp,264
   13e66:	00065783          	lhu	a5,0(a2)
   13e6a:	00f7d593          	srli	a1,a5,0xf
   13e6e:	c199                	beqz	a1,13e74 <_ldtoa_r+0x31c>
   13e70:	0016e693          	ori	a3,a3,1
   13e74:	0017979b          	slliw	a5,a5,0x1
   13e78:	17c2                	slli	a5,a5,0x30
   13e7a:	0026f593          	andi	a1,a3,2
   13e7e:	93c1                	srli	a5,a5,0x30
   13e80:	c199                	beqz	a1,13e86 <_ldtoa_r+0x32e>
   13e82:	0017e793          	ori	a5,a5,1
   13e86:	0016969b          	slliw	a3,a3,0x1
   13e8a:	00f61023          	sh	a5,0(a2)
   13e8e:	16c2                	slli	a3,a3,0x30
   13e90:	1679                	addi	a2,a2,-2
   13e92:	92c1                	srli	a3,a3,0x30
   13e94:	fda619e3          	bne	a2,s10,13e66 <_ldtoa_r+0x30e>
   13e98:	4681                	li	a3,0
   13e9a:	0230                	addi	a2,sp,264
   13e9c:	00065783          	lhu	a5,0(a2)
   13ea0:	00f7d593          	srli	a1,a5,0xf
   13ea4:	c199                	beqz	a1,13eaa <_ldtoa_r+0x352>
   13ea6:	0016e693          	ori	a3,a3,1
   13eaa:	0017979b          	slliw	a5,a5,0x1
   13eae:	17c2                	slli	a5,a5,0x30
   13eb0:	0026f593          	andi	a1,a3,2
   13eb4:	93c1                	srli	a5,a5,0x30
   13eb6:	c199                	beqz	a1,13ebc <_ldtoa_r+0x364>
   13eb8:	0017e793          	ori	a5,a5,1
   13ebc:	0016969b          	slliw	a3,a3,0x1
   13ec0:	00f61023          	sh	a5,0(a2)
   13ec4:	16c2                	slli	a3,a3,0x30
   13ec6:	1679                	addi	a2,a2,-2
   13ec8:	92c1                	srli	a3,a3,0x30
   13eca:	fda619e3          	bne	a2,s10,13e9c <_ldtoa_r+0x344>
   13ece:	4581                	li	a1,0
   13ed0:	866e                	mv	a2,s11
   13ed2:	0234                	addi	a3,sp,264
   13ed4:	00065503          	lhu	a0,0(a2)
   13ed8:	0006d783          	lhu	a5,0(a3)
   13edc:	1679                	addi	a2,a2,-2
   13ede:	16f9                	addi	a3,a3,-2
   13ee0:	97aa                	add	a5,a5,a0
   13ee2:	97ae                	add	a5,a5,a1
   13ee4:	0107d593          	srli	a1,a5,0x10
   13ee8:	00f61123          	sh	a5,2(a2)
   13eec:	8985                	andi	a1,a1,1
   13eee:	ffa693e3          	bne	a3,s10,13ed4 <_ldtoa_r+0x37c>
   13ef2:	8652                	mv	a2,s4
   13ef4:	190c                	addi	a1,sp,176
   13ef6:	0988                	addi	a0,sp,208
   13ef8:	ad2ff0ef          	jal	ra,131ca <eiremain>
   13efc:	1fc15783          	lhu	a5,508(sp)
   13f00:	34fd                	addiw	s1,s1,-1
   13f02:	f00783e3          	beqz	a5,13e08 <_ldtoa_r+0x2b0>
   13f06:	8b3e                	mv	s6,a5
   13f08:	7722                	ld	a4,40(sp)
   13f0a:	02d00793          	li	a5,45
   13f0e:	e319                	bnez	a4,13f14 <_ldtoa_r+0x3bc>
   13f10:	02000793          	li	a5,32
   13f14:	16f10823          	sb	a5,368(sp)
   13f18:	470d                	li	a4,3
   13f1a:	6782                	ld	a5,0(sp)
   13f1c:	00eb9363          	bne	s7,a4,13f22 <_ldtoa_r+0x3ca>
   13f20:	9fa5                	addw	a5,a5,s1
   13f22:	02a00713          	li	a4,42
   13f26:	0007841b          	sext.w	s0,a5
   13f2a:	00f75463          	bge	a4,a5,13f32 <_ldtoa_r+0x3da>
   13f2e:	02a00413          	li	s0,42
   13f32:	4729                	li	a4,10
   13f34:	38eb0b63          	beq	s6,a4,142ca <_ldtoa_r+0x772>
   13f38:	030b0b1b          	addiw	s6,s6,48 # fffffffffffff030 <__BSS_END__+0xfffffffffffdfc60>
   13f3c:	02e00713          	li	a4,46
   13f40:	176108a3          	sb	s6,369(sp)
   13f44:	16e10923          	sb	a4,370(sp)
   13f48:	1207c663          	bltz	a5,14074 <_ldtoa_r+0x51c>
   13f4c:	17310c13          	addi	s8,sp,371
   13f50:	4c81                	li	s9,0
   13f52:	0f010b13          	addi	s6,sp,240
   13f56:	0c810d93          	addi	s11,sp,200
   13f5a:	0b210993          	addi	s3,sp,178
   13f5e:	0f210d13          	addi	s10,sp,242
   13f62:	4601                	li	a2,0
   13f64:	85ee                	mv	a1,s11
   13f66:	0005d783          	lhu	a5,0(a1)
   13f6a:	00f7d513          	srli	a0,a5,0xf
   13f6e:	c119                	beqz	a0,13f74 <_ldtoa_r+0x41c>
   13f70:	00166613          	ori	a2,a2,1
   13f74:	0017979b          	slliw	a5,a5,0x1
   13f78:	17c2                	slli	a5,a5,0x30
   13f7a:	00267513          	andi	a0,a2,2
   13f7e:	93c1                	srli	a5,a5,0x30
   13f80:	c119                	beqz	a0,13f86 <_ldtoa_r+0x42e>
   13f82:	0017e793          	ori	a5,a5,1
   13f86:	0016161b          	slliw	a2,a2,0x1
   13f8a:	00f59023          	sh	a5,0(a1)
   13f8e:	1642                	slli	a2,a2,0x30
   13f90:	15f9                	addi	a1,a1,-2
   13f92:	9241                	srli	a2,a2,0x30
   13f94:	fd3599e3          	bne	a1,s3,13f66 <_ldtoa_r+0x40e>
   13f98:	865a                	mv	a2,s6
   13f9a:	191c                	addi	a5,sp,176
   13f9c:	0007d583          	lhu	a1,0(a5)
   13fa0:	0789                	addi	a5,a5,2
   13fa2:	0609                	addi	a2,a2,2
   13fa4:	feb61f23          	sh	a1,-2(a2)
   13fa8:	ffb79ae3          	bne	a5,s11,13f9c <_ldtoa_r+0x444>
   13fac:	10011423          	sh	zero,264(sp)
   13fb0:	4601                	li	a2,0
   13fb2:	022c                	addi	a1,sp,264
   13fb4:	0005d783          	lhu	a5,0(a1)
   13fb8:	00f7d513          	srli	a0,a5,0xf
   13fbc:	c119                	beqz	a0,13fc2 <_ldtoa_r+0x46a>
   13fbe:	00166613          	ori	a2,a2,1
   13fc2:	0017979b          	slliw	a5,a5,0x1
   13fc6:	17c2                	slli	a5,a5,0x30
   13fc8:	00267513          	andi	a0,a2,2
   13fcc:	93c1                	srli	a5,a5,0x30
   13fce:	c119                	beqz	a0,13fd4 <_ldtoa_r+0x47c>
   13fd0:	0017e793          	ori	a5,a5,1
   13fd4:	0016161b          	slliw	a2,a2,0x1
   13fd8:	00f59023          	sh	a5,0(a1)
   13fdc:	1642                	slli	a2,a2,0x30
   13fde:	15f9                	addi	a1,a1,-2
   13fe0:	9241                	srli	a2,a2,0x30
   13fe2:	fda599e3          	bne	a1,s10,13fb4 <_ldtoa_r+0x45c>
   13fe6:	4601                	li	a2,0
   13fe8:	022c                	addi	a1,sp,264
   13fea:	0005d783          	lhu	a5,0(a1)
   13fee:	00f7d513          	srli	a0,a5,0xf
   13ff2:	c119                	beqz	a0,13ff8 <_ldtoa_r+0x4a0>
   13ff4:	00166613          	ori	a2,a2,1
   13ff8:	0017979b          	slliw	a5,a5,0x1
   13ffc:	17c2                	slli	a5,a5,0x30
   13ffe:	00267513          	andi	a0,a2,2
   14002:	93c1                	srli	a5,a5,0x30
   14004:	c119                	beqz	a0,1400a <_ldtoa_r+0x4b2>
   14006:	0017e793          	ori	a5,a5,1
   1400a:	0016161b          	slliw	a2,a2,0x1
   1400e:	00f59023          	sh	a5,0(a1)
   14012:	1642                	slli	a2,a2,0x30
   14014:	15f9                	addi	a1,a1,-2
   14016:	9241                	srli	a2,a2,0x30
   14018:	fda599e3          	bne	a1,s10,13fea <_ldtoa_r+0x492>
   1401c:	4501                	li	a0,0
   1401e:	85ee                	mv	a1,s11
   14020:	0230                	addi	a2,sp,264
   14022:	0005d883          	lhu	a7,0(a1)
   14026:	00065783          	lhu	a5,0(a2)
   1402a:	15f9                	addi	a1,a1,-2
   1402c:	1679                	addi	a2,a2,-2
   1402e:	97c6                	add	a5,a5,a7
   14030:	97aa                	add	a5,a5,a0
   14032:	0107d513          	srli	a0,a5,0x10
   14036:	00f59123          	sh	a5,2(a1)
   1403a:	8905                	andi	a0,a0,1
   1403c:	ffa613e3          	bne	a2,s10,14022 <_ldtoa_r+0x4ca>
   14040:	8652                	mv	a2,s4
   14042:	190c                	addi	a1,sp,176
   14044:	0988                	addi	a0,sp,208
   14046:	984ff0ef          	jal	ra,131ca <eiremain>
   1404a:	1fc15603          	lhu	a2,508(sp)
   1404e:	001c0793          	addi	a5,s8,1
   14052:	2c85                	addiw	s9,s9,1
   14054:	0306059b          	addiw	a1,a2,48
   14058:	feb78fa3          	sb	a1,-1(a5)
   1405c:	03944263          	blt	s0,s9,14080 <_ldtoa_r+0x528>
   14060:	8c3e                	mv	s8,a5
   14062:	b701                	j	13f62 <_ldtoa_r+0x40a>
   14064:	1646                	slli	a2,a2,0x31
   14066:	67c1                	lui	a5,0x10
   14068:	9245                	srli	a2,a2,0x31
   1406a:	17fd                	addi	a5,a5,-1 # ffff <exit-0xe9>
   1406c:	0cc11123          	sh	a2,194(sp)
   14070:	f43e                	sd	a5,40(sp)
   14072:	b6fd                	j	13c60 <_ldtoa_r+0x108>
   14074:	1fc15603          	lhu	a2,508(sp)
   14078:	17210c13          	addi	s8,sp,370
   1407c:	17310793          	addi	a5,sp,371
   14080:	4711                	li	a4,4
   14082:	04c75663          	bge	a4,a2,140ce <_ldtoa_r+0x576>
   14086:	4715                	li	a4,5
   14088:	62e60363          	beq	a2,a4,146ae <_ldtoa_r+0xb56>
   1408c:	ffe7c703          	lbu	a4,-2(a5)
   14090:	ffe78693          	addi	a3,a5,-2
   14094:	07f77613          	andi	a2,a4,127
   14098:	8732                	mv	a4,a2
   1409a:	02044563          	bltz	s0,140c4 <_ldtoa_r+0x56c>
   1409e:	02e00593          	li	a1,46
   140a2:	03800513          	li	a0,56
   140a6:	03000893          	li	a7,48
   140aa:	5ab60663          	beq	a2,a1,14656 <_ldtoa_r+0xafe>
   140ae:	5ce55063          	bge	a0,a4,1466e <_ldtoa_r+0xb16>
   140b2:	fff6c783          	lbu	a5,-1(a3)
   140b6:	01168023          	sb	a7,0(a3)
   140ba:	16fd                	addi	a3,a3,-1
   140bc:	07f7f613          	andi	a2,a5,127
   140c0:	8732                	mv	a4,a2
   140c2:	b7e5                	j	140aa <_ldtoa_r+0x552>
   140c4:	03100713          	li	a4,49
   140c8:	fee78f23          	sb	a4,-2(a5)
   140cc:	2485                	addiw	s1,s1,1
   140ce:	65f1                	lui	a1,0x1c
   140d0:	8626                	mv	a2,s1
   140d2:	5e858593          	addi	a1,a1,1512 # 1c5e8 <zeroes.0+0x38>
   140d6:	8562                	mv	a0,s8
   140d8:	7ab010ef          	jal	ra,16082 <sprintf>
   140dc:	0a215783          	lhu	a5,162(sp)
   140e0:	6742                	ld	a4,16(sp)
   140e2:	1c912023          	sw	s1,448(sp)
   140e6:	fff7c793          	not	a5,a5
   140ea:	1ae12a23          	sw	a4,436(sp)
   140ee:	03179713          	slli	a4,a5,0x31
   140f2:	14070163          	beqz	a4,14234 <_ldtoa_r+0x6dc>
   140f6:	66e2                	ld	a3,24(sp)
   140f8:	17014703          	lbu	a4,368(sp)
   140fc:	0014879b          	addiw	a5,s1,1
   14100:	c29c                	sw	a5,0(a3)
   14102:	87ca                	mv	a5,s2
   14104:	c70d                	beqz	a4,1412e <_ldtoa_r+0x5d6>
   14106:	02e00693          	li	a3,46
   1410a:	18d70e63          	beq	a4,a3,142a6 <_ldtoa_r+0x74e>
   1410e:	0017c703          	lbu	a4,1(a5)
   14112:	0785                	addi	a5,a5,1
   14114:	fb7d                	bnez	a4,1410a <_ldtoa_r+0x5b2>
   14116:	04500693          	li	a3,69
   1411a:	00f96563          	bltu	s2,a5,14124 <_ldtoa_r+0x5cc>
   1411e:	a801                	j	1412e <_ldtoa_r+0x5d6>
   14120:	01278763          	beq	a5,s2,1412e <_ldtoa_r+0x5d6>
   14124:	fff7c703          	lbu	a4,-1(a5)
   14128:	17fd                	addi	a5,a5,-1
   1412a:	fed71be3          	bne	a4,a3,14120 <_ldtoa_r+0x5c8>
   1412e:	00078023          	sb	zero,0(a5)
   14132:	87ca                	mv	a5,s2
   14134:	02000693          	li	a3,32
   14138:	02d00613          	li	a2,45
   1413c:	0007c703          	lbu	a4,0(a5)
   14140:	00d70463          	beq	a4,a3,14148 <_ldtoa_r+0x5f0>
   14144:	00c71463          	bne	a4,a2,1414c <_ldtoa_r+0x5f4>
   14148:	0785                	addi	a5,a5,1
   1414a:	bfcd                	j	1413c <_ldtoa_r+0x5e4>
   1414c:	844a                	mv	s0,s2
   1414e:	a021                	j	14156 <_ldtoa_r+0x5fe>
   14150:	0007c703          	lbu	a4,0(a5)
   14154:	8436                	mv	s0,a3
   14156:	00e40023          	sb	a4,0(s0)
   1415a:	00140693          	addi	a3,s0,1
   1415e:	0785                	addi	a5,a5,1
   14160:	fb65                	bnez	a4,14150 <_ldtoa_r+0x5f8>
   14162:	4789                	li	a5,2
   14164:	fff44683          	lbu	a3,-1(s0)
   14168:	0efb8663          	beq	s7,a5,14254 <_ldtoa_r+0x6fc>
   1416c:	6702                	ld	a4,0(sp)
   1416e:	87ba                	mv	a5,a4
   14170:	00975363          	bge	a4,s1,14176 <_ldtoa_r+0x61e>
   14174:	87a6                	mv	a5,s1
   14176:	03000613          	li	a2,48
   1417a:	0007871b          	sext.w	a4,a5
   1417e:	02c69463          	bne	a3,a2,141a6 <_ldtoa_r+0x64e>
   14182:	412407b3          	sub	a5,s0,s2
   14186:	02f75063          	bge	a4,a5,141a6 <_ldtoa_r+0x64e>
   1418a:	03000693          	li	a3,48
   1418e:	a029                	j	14198 <_ldtoa_r+0x640>
   14190:	412407b3          	sub	a5,s0,s2
   14194:	00f75963          	bge	a4,a5,141a6 <_ldtoa_r+0x64e>
   14198:	ffe44783          	lbu	a5,-2(s0)
   1419c:	fe040fa3          	sb	zero,-1(s0)
   141a0:	147d                	addi	s0,s0,-1
   141a2:	fed787e3          	beq	a5,a3,14190 <_ldtoa_r+0x638>
   141a6:	478d                	li	a5,3
   141a8:	0cfb8063          	beq	s7,a5,14268 <_ldtoa_r+0x710>
   141ac:	67a2                	ld	a5,8(sp)
   141ae:	060aa423          	sw	zero,104(s5)
   141b2:	0097899b          	addiw	s3,a5,9
   141b6:	47fd                	li	a5,31
   141b8:	0d37f963          	bgeu	a5,s3,1428a <_ldtoa_r+0x732>
   141bc:	4705                	li	a4,1
   141be:	4791                	li	a5,4
   141c0:	0017979b          	slliw	a5,a5,0x1
   141c4:	01c78693          	addi	a3,a5,28
   141c8:	0007059b          	sext.w	a1,a4
   141cc:	2705                	addiw	a4,a4,1
   141ce:	fed9f9e3          	bgeu	s3,a3,141c0 <_ldtoa_r+0x668>
   141d2:	06baa423          	sw	a1,104(s5)
   141d6:	8556                	mv	a0,s5
   141d8:	110010ef          	jal	ra,152e8 <_Balloc>
   141dc:	84aa                	mv	s1,a0
   141de:	68050263          	beqz	a0,14862 <_ldtoa_r+0xd0a>
   141e2:	06aab023          	sd	a0,96(s5)
   141e6:	85ca                	mv	a1,s2
   141e8:	0a8020ef          	jal	ra,16290 <strcpy>
   141ec:	7702                	ld	a4,32(sp)
   141ee:	c709                	beqz	a4,141f8 <_ldtoa_r+0x6a0>
   141f0:	412407b3          	sub	a5,s0,s2
   141f4:	97a6                	add	a5,a5,s1
   141f6:	e31c                	sd	a5,0(a4)
   141f8:	26813083          	ld	ra,616(sp)
   141fc:	26013403          	ld	s0,608(sp)
   14200:	25013903          	ld	s2,592(sp)
   14204:	24813983          	ld	s3,584(sp)
   14208:	24013a03          	ld	s4,576(sp)
   1420c:	23813a83          	ld	s5,568(sp)
   14210:	23013b03          	ld	s6,560(sp)
   14214:	22813b83          	ld	s7,552(sp)
   14218:	22013c03          	ld	s8,544(sp)
   1421c:	21813c83          	ld	s9,536(sp)
   14220:	21013d03          	ld	s10,528(sp)
   14224:	20813d83          	ld	s11,520(sp)
   14228:	8526                	mv	a0,s1
   1422a:	25813483          	ld	s1,600(sp)
   1422e:	27010113          	addi	sp,sp,624
   14232:	8082                	ret
   14234:	091c                	addi	a5,sp,144
   14236:	0a210693          	addi	a3,sp,162
   1423a:	0007d703          	lhu	a4,0(a5)
   1423e:	0789                	addi	a5,a5,2
   14240:	42071b63          	bnez	a4,14676 <_ldtoa_r+0xb1e>
   14244:	fed79be3          	bne	a5,a3,1423a <_ldtoa_r+0x6e2>
   14248:	6762                	ld	a4,24(sp)
   1424a:	6789                	lui	a5,0x2
   1424c:	70f78793          	addi	a5,a5,1807 # 270f <exit-0xd9d9>
   14250:	c31c                	sw	a5,0(a4)
   14252:	b5c5                	j	14132 <_ldtoa_r+0x5da>
   14254:	03000793          	li	a5,48
   14258:	f4f69ae3          	bne	a3,a5,141ac <_ldtoa_r+0x654>
   1425c:	412407b3          	sub	a5,s0,s2
   14260:	4705                	li	a4,1
   14262:	f2f744e3          	blt	a4,a5,1418a <_ldtoa_r+0x632>
   14266:	b799                	j	141ac <_ldtoa_r+0x654>
   14268:	6782                	ld	a5,0(sp)
   1426a:	9cbd                	addw	s1,s1,a5
   1426c:	3a04c463          	bltz	s1,14614 <_ldtoa_r+0xabc>
   14270:	67e2                	ld	a5,24(sp)
   14272:	6722                	ld	a4,8(sp)
   14274:	439c                	lw	a5,0(a5)
   14276:	9fb9                	addw	a5,a5,a4
   14278:	e43e                	sd	a5,8(sp)
   1427a:	67a2                	ld	a5,8(sp)
   1427c:	060aa423          	sw	zero,104(s5)
   14280:	0037899b          	addiw	s3,a5,3
   14284:	47fd                	li	a5,31
   14286:	f337ebe3          	bltu	a5,s3,141bc <_ldtoa_r+0x664>
   1428a:	4581                	li	a1,0
   1428c:	b7a9                	j	141d6 <_ldtoa_r+0x67e>
   1428e:	67a2                	ld	a5,8(sp)
   14290:	02a00713          	li	a4,42
   14294:	8cbe                	mv	s9,a5
   14296:	00f75463          	bge	a4,a5,1429e <_ldtoa_r+0x746>
   1429a:	02a00c93          	li	s9,42
   1429e:	000c879b          	sext.w	a5,s9
   142a2:	e03e                	sd	a5,0(sp)
   142a4:	ba95                	j	13c18 <_ldtoa_r+0xc0>
   142a6:	0007c703          	lbu	a4,0(a5)
   142aa:	e60706e3          	beqz	a4,14116 <_ldtoa_r+0x5be>
   142ae:	0017c703          	lbu	a4,1(a5)
   142b2:	0785                	addi	a5,a5,1
   142b4:	fee78fa3          	sb	a4,-1(a5)
   142b8:	e4070fe3          	beqz	a4,14116 <_ldtoa_r+0x5be>
   142bc:	0017c703          	lbu	a4,1(a5)
   142c0:	0785                	addi	a5,a5,1
   142c2:	fee78fa3          	sb	a4,-1(a5)
   142c6:	f765                	bnez	a4,142ae <_ldtoa_r+0x756>
   142c8:	b5b9                	j	14116 <_ldtoa_r+0x5be>
   142ca:	03100713          	li	a4,49
   142ce:	16e108a3          	sb	a4,369(sp)
   142d2:	02e00713          	li	a4,46
   142d6:	16e10923          	sb	a4,370(sp)
   142da:	2485                	addiw	s1,s1,1
   142dc:	20f05063          	blez	a5,144dc <_ldtoa_r+0x984>
   142e0:	03000793          	li	a5,48
   142e4:	16f109a3          	sb	a5,371(sp)
   142e8:	347d                	addiw	s0,s0,-1
   142ea:	17410c13          	addi	s8,sp,372
   142ee:	b18d                	j	13f50 <_ldtoa_r+0x3f8>
   142f0:	17010913          	addi	s2,sp,368
   142f4:	65f1                	lui	a1,0x1c
   142f6:	65058593          	addi	a1,a1,1616 # 1c650 <zeroes.0+0xa0>
   142fa:	854a                	mv	a0,s2
   142fc:	6489                	lui	s1,0x2
   142fe:	585010ef          	jal	ra,16082 <sprintf>
   14302:	70f48493          	addi	s1,s1,1807 # 270f <exit-0xd9d9>
   14306:	bbd9                	j	140dc <_ldtoa_r+0x584>
   14308:	0f010b13          	addi	s6,sp,240
   1430c:	875a                	mv	a4,s6
   1430e:	191c                	addi	a5,sp,176
   14310:	01d0                	addi	a2,sp,196
   14312:	0007d683          	lhu	a3,0(a5)
   14316:	0789                	addi	a5,a5,2
   14318:	0709                	addi	a4,a4,2
   1431a:	fed71f23          	sh	a3,-2(a4)
   1431e:	fec79ae3          	bne	a5,a2,14312 <_ldtoa_r+0x7ba>
   14322:	67f1                	lui	a5,0x1c
   14324:	7a078713          	addi	a4,a5,1952 # 1c7a0 <etens>
   14328:	6791                	lui	a5,0x4
   1432a:	08e78793          	addi	a5,a5,142 # 408e <exit-0xc05a>
   1432e:	10f11123          	sh	a5,258(sp)
   14332:	67f5                	lui	a5,0x1d
   14334:	8a478793          	addi	a5,a5,-1884 # 1c8a4 <etens+0x104>
   14338:	e0be                	sd	a5,64(sp)
   1433a:	67a1                	lui	a5,0x8
   1433c:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x80e9>
   1433e:	f83e                	sd	a5,48(sp)
   14340:	77f1                	lui	a5,0xffffc
   14342:	2789                	addiw	a5,a5,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffdcc32>
   14344:	de3e                	sw	a5,60(sp)
   14346:	67f1                	lui	a5,0x1c
   14348:	65878793          	addi	a5,a5,1624 # 1c658 <bmask>
   1434c:	e4ba                	sd	a4,72(sp)
   1434e:	4dc1                	li	s11,16
   14350:	4481                	li	s1,0
   14352:	0a070993          	addi	s3,a4,160
   14356:	17010913          	addi	s2,sp,368
   1435a:	1b010a13          	addi	s4,sp,432
   1435e:	0a00                	addi	s0,sp,272
   14360:	0e210c93          	addi	s9,sp,226
   14364:	e8be                	sd	a5,80(sp)
   14366:	86d2                	mv	a3,s4
   14368:	0990                	addi	a2,sp,208
   1436a:	85da                	mv	a1,s6
   1436c:	854e                	mv	a0,s3
   1436e:	84aff0ef          	jal	ra,133b8 <ediv>
   14372:	18b8                	addi	a4,sp,120
   14374:	099c                	addi	a5,sp,208
   14376:	0007d683          	lhu	a3,0(a5)
   1437a:	0789                	addi	a5,a5,2
   1437c:	0709                	addi	a4,a4,2
   1437e:	fed71f23          	sh	a3,-2(a4)
   14382:	ff879ae3          	bne	a5,s8,14376 <_ldtoa_r+0x81e>
   14386:	77c2                	ld	a5,48(sp)
   14388:	08a15503          	lhu	a0,138(sp)
   1438c:	00f57e33          	and	t3,a0,a5
   14390:	57f2                	lw	a5,60(sp)
   14392:	00fe07bb          	addw	a5,t3,a5
   14396:	8e3e                	mv	t3,a5
   14398:	28f05563          	blez	a5,14622 <_ldtoa_r+0xaca>
   1439c:	09000593          	li	a1,144
   143a0:	9d9d                	subw	a1,a1,a5
   143a2:	8722                	mv	a4,s0
   143a4:	18bc                	addi	a5,sp,120
   143a6:	0170                	addi	a2,sp,140
   143a8:	0007d683          	lhu	a3,0(a5)
   143ac:	0789                	addi	a5,a5,2
   143ae:	0709                	addi	a4,a4,2
   143b0:	fed71f23          	sh	a3,-2(a4)
   143b4:	fec79ae3          	bne	a5,a2,143a8 <_ldtoa_r+0x850>
   143b8:	04b05a63          	blez	a1,1440c <_ldtoa_r+0x8b4>
   143bc:	47bd                	li	a5,15
   143be:	8722                	mv	a4,s0
   143c0:	02b7d963          	bge	a5,a1,143f2 <_ldtoa_r+0x89a>
   143c4:	08000693          	li	a3,128
   143c8:	41c686bb          	subw	a3,a3,t3
   143cc:	0046d69b          	srliw	a3,a3,0x4
   143d0:	0016871b          	addiw	a4,a3,1
   143d4:	0706                	slli	a4,a4,0x1
   143d6:	9722                	add	a4,a4,s0
   143d8:	87a2                	mv	a5,s0
   143da:	0789                	addi	a5,a5,2
   143dc:	fe079f23          	sh	zero,-2(a5)
   143e0:	fee79de3          	bne	a5,a4,143da <_ldtoa_r+0x882>
   143e4:	08000593          	li	a1,128
   143e8:	41c585bb          	subw	a1,a1,t3
   143ec:	0046969b          	slliw	a3,a3,0x4
   143f0:	9d95                	subw	a1,a1,a3
   143f2:	66c6                	ld	a3,80(sp)
   143f4:	00159793          	slli	a5,a1,0x1
   143f8:	97b6                	add	a5,a5,a3
   143fa:	0007d783          	lhu	a5,0(a5)
   143fe:	00075683          	lhu	a3,0(a4)
   14402:	8ff5                	and	a5,a5,a3
   14404:	00f71023          	sh	a5,0(a4)
   14408:	813d                	srli	a0,a0,0xf
   1440a:	e565                	bnez	a0,144f2 <_ldtoa_r+0x99a>
   1440c:	099c                	addi	a5,sp,208
   1440e:	8722                	mv	a4,s0
   14410:	0007d603          	lhu	a2,0(a5)
   14414:	00075683          	lhu	a3,0(a4)
   14418:	02d61263          	bne	a2,a3,1443c <_ldtoa_r+0x8e4>
   1441c:	0789                	addi	a5,a5,2
   1441e:	0709                	addi	a4,a4,2
   14420:	fefc98e3          	bne	s9,a5,14410 <_ldtoa_r+0x8b8>
   14424:	875a                	mv	a4,s6
   14426:	099c                	addi	a5,sp,208
   14428:	0007d683          	lhu	a3,0(a5)
   1442c:	0789                	addi	a5,a5,2
   1442e:	0709                	addi	a4,a4,2
   14430:	fed71f23          	sh	a3,-2(a4)
   14434:	ff879ae3          	bne	a5,s8,14428 <_ldtoa_r+0x8d0>
   14438:	009d84bb          	addw	s1,s11,s1
   1443c:	6786                	ld	a5,64(sp)
   1443e:	09d1                	addi	s3,s3,20
   14440:	001ddd93          	srli	s11,s11,0x1
   14444:	f2f991e3          	bne	s3,a5,14366 <_ldtoa_r+0x80e>
   14448:	10215783          	lhu	a5,258(sp)
   1444c:	0c215703          	lhu	a4,194(sp)
   14450:	0250                	addi	a2,sp,260
   14452:	9fb9                	addw	a5,a5,a4
   14454:	7771                	lui	a4,0xffffc
   14456:	f727071b          	addiw	a4,a4,-142 # ffffffffffffbf72 <__BSS_END__+0xfffffffffffdcba2>
   1445a:	9fb9                	addw	a5,a5,a4
   1445c:	10f11123          	sh	a5,258(sp)
   14460:	1918                	addi	a4,sp,176
   14462:	87da                	mv	a5,s6
   14464:	0007d683          	lhu	a3,0(a5)
   14468:	0789                	addi	a5,a5,2
   1446a:	0709                	addi	a4,a4,2
   1446c:	fed71f23          	sh	a3,-2(a4)
   14470:	fec79ae3          	bne	a5,a2,14464 <_ldtoa_r+0x90c>
   14474:	6771                	lui	a4,0x1c
   14476:	4681                	li	a3,0
   14478:	099c                	addi	a5,sp,208
   1447a:	78870713          	addi	a4,a4,1928 # 1c788 <eone>
   1447e:	a019                	j	14484 <_ldtoa_r+0x92c>
   14480:	00075683          	lhu	a3,0(a4)
   14484:	0789                	addi	a5,a5,2
   14486:	fed79f23          	sh	a3,-2(a5)
   1448a:	0709                	addi	a4,a4,2
   1448c:	ff879ae3          	bne	a5,s8,14480 <_ldtoa_r+0x928>
   14490:	6df5                	lui	s11,0x1d
   14492:	6ca6                	ld	s9,72(sp)
   14494:	6d05                	lui	s10,0x1
   14496:	890d8d93          	addi	s11,s11,-1904 # 1c890 <etens+0xf0>
   1449a:	a031                	j	144a6 <_ldtoa_r+0x94e>
   1449c:	001d5d13          	srli	s10,s10,0x1
   144a0:	1bbc8763          	beq	s9,s11,1464e <_ldtoa_r+0xaf6>
   144a4:	0cd1                	addi	s9,s9,20
   144a6:	85da                	mv	a1,s6
   144a8:	856e                	mv	a0,s11
   144aa:	937fe0ef          	jal	ra,12de0 <ecmp>
   144ae:	1aa04063          	bgtz	a0,1464e <_ldtoa_r+0xaf6>
   144b2:	85da                	mv	a1,s6
   144b4:	8566                	mv	a0,s9
   144b6:	92bfe0ef          	jal	ra,12de0 <ecmp>
   144ba:	fea041e3          	bgtz	a0,1449c <_ldtoa_r+0x944>
   144be:	86d2                	mv	a3,s4
   144c0:	865a                	mv	a2,s6
   144c2:	85da                	mv	a1,s6
   144c4:	8566                	mv	a0,s9
   144c6:	ef3fe0ef          	jal	ra,133b8 <ediv>
   144ca:	0990                	addi	a2,sp,208
   144cc:	86d2                	mv	a3,s4
   144ce:	85b2                	mv	a1,a2
   144d0:	8566                	mv	a0,s9
   144d2:	b02ff0ef          	jal	ra,137d4 <emul>
   144d6:	009d04bb          	addw	s1,s10,s1
   144da:	b7c9                	j	1449c <_ldtoa_r+0x944>
   144dc:	17310c13          	addi	s8,sp,371
   144e0:	be0797e3          	bnez	a5,140ce <_ldtoa_r+0x576>
   144e4:	b4b5                	j	13f50 <_ldtoa_r+0x3f8>
   144e6:	4681                	li	a3,0
   144e8:	f20ff06f          	j	13c08 <_ldtoa_r+0xb0>
   144ec:	67a2                	ld	a5,8(sp)
   144ee:	37fd                	addiw	a5,a5,-1
   144f0:	b345                	j	14290 <_ldtoa_r+0x738>
   144f2:	18bc                	addi	a5,sp,120
   144f4:	8722                	mv	a4,s0
   144f6:	08a10593          	addi	a1,sp,138
   144fa:	a029                	j	14504 <_ldtoa_r+0x9ac>
   144fc:	0789                	addi	a5,a5,2
   144fe:	0709                	addi	a4,a4,2
   14500:	f0b786e3          	beq	a5,a1,1440c <_ldtoa_r+0x8b4>
   14504:	0007d603          	lhu	a2,0(a5)
   14508:	00075683          	lhu	a3,0(a4)
   1450c:	fed608e3          	beq	a2,a3,144fc <_ldtoa_r+0x9a4>
   14510:	12215783          	lhu	a5,290(sp)
   14514:	7742                	ld	a4,48(sp)
   14516:	8ff9                	and	a5,a5,a4
   14518:	2ce78b63          	beq	a5,a4,147ee <_ldtoa_r+0xc96>
   1451c:	1a0c                	addi	a1,sp,304
   1451e:	788d0513          	addi	a0,s10,1928 # 1788 <exit-0xe960>
   14522:	829fe0ef          	jal	ra,12d4a <emovi>
   14526:	0a8c                	addi	a1,sp,336
   14528:	8522                	mv	a0,s0
   1452a:	821fe0ef          	jal	ra,12d4a <emovi>
   1452e:	13015703          	lhu	a4,304(sp)
   14532:	15215603          	lhu	a2,338(sp)
   14536:	13215e03          	lhu	t3,306(sp)
   1453a:	fff74713          	not	a4,a4
   1453e:	1742                	slli	a4,a4,0x30
   14540:	9341                	srli	a4,a4,0x30
   14542:	12e11823          	sh	a4,304(sp)
   14546:	40ce05b3          	sub	a1,t3,a2
   1454a:	86b2                	mv	a3,a2
   1454c:	04b05e63          	blez	a1,145a8 <_ldtoa_r+0xa50>
   14550:	85ca                	mv	a1,s2
   14552:	0a94                	addi	a3,sp,336
   14554:	12bc                	addi	a5,sp,360
   14556:	0006d503          	lhu	a0,0(a3)
   1455a:	0689                	addi	a3,a3,2
   1455c:	0589                	addi	a1,a1,2
   1455e:	fea59f23          	sh	a0,-2(a1)
   14562:	fef69ae3          	bne	a3,a5,14556 <_ldtoa_r+0x9fe>
   14566:	18011423          	sh	zero,392(sp)
   1456a:	0a94                	addi	a3,sp,336
   1456c:	1a0c                	addi	a1,sp,304
   1456e:	a019                	j	14574 <_ldtoa_r+0xa1c>
   14570:	0005d703          	lhu	a4,0(a1)
   14574:	0689                	addi	a3,a3,2
   14576:	fee69f23          	sh	a4,-2(a3)
   1457a:	0589                	addi	a1,a1,2
   1457c:	fef69ae3          	bne	a3,a5,14570 <_ldtoa_r+0xa18>
   14580:	16011423          	sh	zero,360(sp)
   14584:	1a18                	addi	a4,sp,304
   14586:	87ca                	mv	a5,s2
   14588:	0328                	addi	a0,sp,392
   1458a:	0007d683          	lhu	a3,0(a5)
   1458e:	0789                	addi	a5,a5,2
   14590:	0709                	addi	a4,a4,2
   14592:	fed71f23          	sh	a3,-2(a4)
   14596:	fea79ae3          	bne	a5,a0,1458a <_ldtoa_r+0xa32>
   1459a:	15215683          	lhu	a3,338(sp)
   1459e:	41c605b3          	sub	a1,a2,t3
   145a2:	14011423          	sh	zero,328(sp)
   145a6:	8636                	mv	a2,a3
   145a8:	28058163          	beqz	a1,1482a <_ldtoa_r+0xcd2>
   145ac:	ecb6                	sd	a3,88(sp)
   145ae:	f6f00793          	li	a5,-145
   145b2:	04f5cc63          	blt	a1,a5,1460a <_ldtoa_r+0xab2>
   145b6:	2581                	sext.w	a1,a1
   145b8:	1a08                	addi	a0,sp,304
   145ba:	e3efe0ef          	jal	ra,12bf8 <eshift.part.0>
   145be:	66e6                	ld	a3,88(sp)
   145c0:	85aa                	mv	a1,a0
   145c2:	12bc                	addi	a5,sp,360
   145c4:	02b8                	addi	a4,sp,328
   145c6:	13015503          	lhu	a0,304(sp)
   145ca:	15015603          	lhu	a2,336(sp)
   145ce:	2cc50e63          	beq	a0,a2,148aa <_ldtoa_r+0xd52>
   145d2:	4e01                	li	t3,0
   145d4:	15210513          	addi	a0,sp,338
   145d8:	0007d603          	lhu	a2,0(a5)
   145dc:	00075e83          	lhu	t4,0(a4)
   145e0:	17f9                	addi	a5,a5,-2
   145e2:	41c60633          	sub	a2,a2,t3
   145e6:	41d60633          	sub	a2,a2,t4
   145ea:	01065e13          	srli	t3,a2,0x10
   145ee:	00c79123          	sh	a2,2(a5)
   145f2:	001e7e13          	andi	t3,t3,1
   145f6:	1779                	addi	a4,a4,-2
   145f8:	fea790e3          	bne	a5,a0,145d8 <_ldtoa_r+0xa80>
   145fc:	4605                	li	a2,1
   145fe:	87d2                	mv	a5,s4
   14600:	04000713          	li	a4,64
   14604:	0a88                	addi	a0,sp,336
   14606:	8bffe0ef          	jal	ra,12ec4 <emdnorm>
   1460a:	85a2                	mv	a1,s0
   1460c:	0a88                	addi	a0,sp,336
   1460e:	c54fe0ef          	jal	ra,12a62 <emovo.constprop.0>
   14612:	bbed                	j	1440c <_ldtoa_r+0x8b4>
   14614:	67e2                	ld	a5,24(sp)
   14616:	16010823          	sb	zero,368(sp)
   1461a:	844a                	mv	s0,s2
   1461c:	0007a023          	sw	zero,0(a5)
   14620:	b9a9                	j	1427a <_ldtoa_r+0x722>
   14622:	87a2                	mv	a5,s0
   14624:	1258                	addi	a4,sp,292
   14626:	0789                	addi	a5,a5,2
   14628:	fe079f23          	sh	zero,-2(a5)
   1462c:	fee79de3          	bne	a5,a4,14626 <_ldtoa_r+0xace>
   14630:	bbe1                	j	14408 <_ldtoa_r+0x8b0>
   14632:	77a2                	ld	a5,40(sp)
   14634:	17010913          	addi	s2,sp,368
   14638:	cfdd                	beqz	a5,146f6 <_ldtoa_r+0xb9e>
   1463a:	65f1                	lui	a1,0x1c
   1463c:	5c058593          	addi	a1,a1,1472 # 1c5c0 <zeroes.0+0x10>
   14640:	854a                	mv	a0,s2
   14642:	6489                	lui	s1,0x2
   14644:	23f010ef          	jal	ra,16082 <sprintf>
   14648:	70f48493          	addi	s1,s1,1807 # 270f <exit-0xd9d9>
   1464c:	bc41                	j	140dc <_ldtoa_r+0x584>
   1464e:	12810993          	addi	s3,sp,296
   14652:	f58ff06f          	j	13daa <_ldtoa_r+0x252>
   14656:	fff6c783          	lbu	a5,-1(a3)
   1465a:	03800713          	li	a4,56
   1465e:	0af77663          	bgeu	a4,a5,1470a <_ldtoa_r+0xbb2>
   14662:	03100793          	li	a5,49
   14666:	2485                	addiw	s1,s1,1
   14668:	fef68fa3          	sb	a5,-1(a3)
   1466c:	b48d                	j	140ce <_ldtoa_r+0x576>
   1466e:	2605                	addiw	a2,a2,1
   14670:	00c68023          	sb	a2,0(a3)
   14674:	bca9                	j	140ce <_ldtoa_r+0x576>
   14676:	091c                	addi	a5,sp,144
   14678:	0a210693          	addi	a3,sp,162
   1467c:	a019                	j	14682 <_ldtoa_r+0xb2a>
   1467e:	a6d78ce3          	beq	a5,a3,140f6 <_ldtoa_r+0x59e>
   14682:	0007d703          	lhu	a4,0(a5)
   14686:	0789                	addi	a5,a5,2
   14688:	db7d                	beqz	a4,1467e <_ldtoa_r+0xb26>
   1468a:	6762                	ld	a4,24(sp)
   1468c:	6789                	lui	a5,0x2
   1468e:	70f78793          	addi	a5,a5,1807 # 270f <exit-0xd9d9>
   14692:	c31c                	sw	a5,0(a4)
   14694:	bc79                	j	14132 <_ldtoa_r+0x5da>
   14696:	17010913          	addi	s2,sp,368
   1469a:	65f1                	lui	a1,0x1c
   1469c:	5e058593          	addi	a1,a1,1504 # 1c5e0 <zeroes.0+0x30>
   146a0:	854a                	mv	a0,s2
   146a2:	6489                	lui	s1,0x2
   146a4:	1df010ef          	jal	ra,16082 <sprintf>
   146a8:	70f48493          	addi	s1,s1,1807 # 270f <exit-0xd9d9>
   146ac:	bc05                	j	140dc <_ldtoa_r+0x584>
   146ae:	098c                	addi	a1,sp,208
   146b0:	1908                	addi	a0,sp,176
   146b2:	f43e                	sd	a5,40(sp)
   146b4:	baefe0ef          	jal	ra,12a62 <emovo.constprop.0>
   146b8:	65f5                	lui	a1,0x1d
   146ba:	8a858593          	addi	a1,a1,-1880 # 1c8a8 <ezero>
   146be:	0988                	addi	a0,sp,208
   146c0:	f20fe0ef          	jal	ra,12de0 <ecmp>
   146c4:	77a2                	ld	a5,40(sp)
   146c6:	9c0513e3          	bnez	a0,1408c <_ldtoa_r+0x534>
   146ca:	a00442e3          	bltz	s0,140ce <_ldtoa_r+0x576>
   146ce:	ffe7c703          	lbu	a4,-2(a5)
   146d2:	fd270693          	addi	a3,a4,-46
   146d6:	0016b693          	seqz	a3,a3
   146da:	fff6c693          	not	a3,a3
   146de:	96e2                	add	a3,a3,s8
   146e0:	0006c683          	lbu	a3,0(a3)
   146e4:	8a85                	andi	a3,a3,1
   146e6:	9e0684e3          	beqz	a3,140ce <_ldtoa_r+0x576>
   146ea:	07f77613          	andi	a2,a4,127
   146ee:	ffe78693          	addi	a3,a5,-2
   146f2:	8732                	mv	a4,a2
   146f4:	b26d                	j	1409e <_ldtoa_r+0x546>
   146f6:	65f1                	lui	a1,0x1c
   146f8:	5d058593          	addi	a1,a1,1488 # 1c5d0 <zeroes.0+0x20>
   146fc:	854a                	mv	a0,s2
   146fe:	6489                	lui	s1,0x2
   14700:	183010ef          	jal	ra,16082 <sprintf>
   14704:	70f48493          	addi	s1,s1,1807 # 270f <exit-0xd9d9>
   14708:	bad1                	j	140dc <_ldtoa_r+0x584>
   1470a:	2785                	addiw	a5,a5,1
   1470c:	fef68fa3          	sb	a5,-1(a3)
   14710:	ba7d                	j	140ce <_ldtoa_r+0x576>
   14712:	0a00                	addi	s0,sp,272
   14714:	85a2                	mv	a1,s0
   14716:	1908                	addi	a0,sp,176
   14718:	e32fe0ef          	jal	ra,12d4a <emovi>
   1471c:	6791                	lui	a5,0x4
   1471e:	4481                	li	s1,0
   14720:	12810993          	addi	s3,sp,296
   14724:	10810913          	addi	s2,sp,264
   14728:	11210a13          	addi	s4,sp,274
   1472c:	ffe78b13          	addi	s6,a5,-2 # 3ffe <exit-0xc0ea>
   14730:	fd500d93          	li	s11,-43
   14734:	12815783          	lhu	a5,296(sp)
   14738:	8b9d                	andi	a5,a5,7
   1473a:	efd1                	bnez	a5,147d6 <_ldtoa_r+0xc7e>
   1473c:	1998                	addi	a4,sp,240
   1473e:	87a2                	mv	a5,s0
   14740:	0007d683          	lhu	a3,0(a5)
   14744:	0789                	addi	a5,a5,2
   14746:	0709                	addi	a4,a4,2
   14748:	fed71f23          	sh	a3,-2(a4)
   1474c:	ff379ae3          	bne	a5,s3,14740 <_ldtoa_r+0xbe8>
   14750:	1988                	addi	a0,sp,240
   14752:	10011423          	sh	zero,264(sp)
   14756:	a08fe0ef          	jal	ra,1295e <eshdn1>
   1475a:	1988                	addi	a0,sp,240
   1475c:	a02fe0ef          	jal	ra,1295e <eshdn1>
   14760:	4601                	li	a2,0
   14762:	86ca                	mv	a3,s2
   14764:	874e                	mv	a4,s3
   14766:	0006d583          	lhu	a1,0(a3)
   1476a:	00075783          	lhu	a5,0(a4)
   1476e:	16f9                	addi	a3,a3,-2
   14770:	1779                	addi	a4,a4,-2
   14772:	97ae                	add	a5,a5,a1
   14774:	97b2                	add	a5,a5,a2
   14776:	0107d613          	srli	a2,a5,0x10
   1477a:	00f69123          	sh	a5,2(a3)
   1477e:	8a05                	andi	a2,a2,1
   14780:	ff4713e3          	bne	a4,s4,14766 <_ldtoa_r+0xc0e>
   14784:	0f215783          	lhu	a5,242(sp)
   14788:	0f415703          	lhu	a4,244(sp)
   1478c:	278d                	addiw	a5,a5,3
   1478e:	0ef11923          	sh	a5,242(sp)
   14792:	cf01                	beqz	a4,147aa <_ldtoa_r+0xc52>
   14794:	1988                	addi	a0,sp,240
   14796:	9c8fe0ef          	jal	ra,1295e <eshdn1>
   1479a:	0f215783          	lhu	a5,242(sp)
   1479e:	0f415703          	lhu	a4,244(sp)
   147a2:	2785                	addiw	a5,a5,1
   147a4:	0ef11923          	sh	a5,242(sp)
   147a8:	f775                	bnez	a4,14794 <_ldtoa_r+0xc3c>
   147aa:	10815783          	lhu	a5,264(sp)
   147ae:	e785                	bnez	a5,147d6 <_ldtoa_r+0xc7e>
   147b0:	0f215783          	lhu	a5,242(sp)
   147b4:	02fb6163          	bltu	s6,a5,147d6 <_ldtoa_r+0xc7e>
   147b8:	8722                	mv	a4,s0
   147ba:	199c                	addi	a5,sp,240
   147bc:	0007d683          	lhu	a3,0(a5)
   147c0:	0789                	addi	a5,a5,2
   147c2:	0709                	addi	a4,a4,2
   147c4:	fed71f23          	sh	a3,-2(a4)
   147c8:	ff279ae3          	bne	a5,s2,147bc <_ldtoa_r+0xc64>
   147cc:	12011423          	sh	zero,296(sp)
   147d0:	34fd                	addiw	s1,s1,-1
   147d2:	f7b491e3          	bne	s1,s11,14734 <_ldtoa_r+0xbdc>
   147d6:	190c                	addi	a1,sp,176
   147d8:	8522                	mv	a0,s0
   147da:	a88fe0ef          	jal	ra,12a62 <emovo.constprop.0>
   147de:	67f1                	lui	a5,0x1c
   147e0:	7a078793          	addi	a5,a5,1952 # 1c7a0 <etens>
   147e4:	e4be                	sd	a5,72(sp)
   147e6:	1b010a13          	addi	s4,sp,432
   147ea:	cfcff06f          	j	13ce6 <_ldtoa_r+0x18e>
   147ee:	87a2                	mv	a5,s0
   147f0:	0007d703          	lhu	a4,0(a5)
   147f4:	0789                	addi	a5,a5,2
   147f6:	c0071be3          	bnez	a4,1440c <_ldtoa_r+0x8b4>
   147fa:	12210713          	addi	a4,sp,290
   147fe:	fee799e3          	bne	a5,a4,147f0 <_ldtoa_r+0xc98>
   14802:	87a2                	mv	a5,s0
   14804:	0007d703          	lhu	a4,0(a5)
   14808:	0789                	addi	a5,a5,2
   1480a:	d00719e3          	bnez	a4,1451c <_ldtoa_r+0x9c4>
   1480e:	12210713          	addi	a4,sp,290
   14812:	fee799e3          	bne	a5,a4,14804 <_ldtoa_r+0xcac>
   14816:	bedd                	j	1440c <_ldtoa_r+0x8b4>
   14818:	67f1                	lui	a5,0x1c
   1481a:	7a078793          	addi	a5,a5,1952 # 1c7a0 <etens>
   1481e:	4481                	li	s1,0
   14820:	e4be                	sd	a5,72(sp)
   14822:	1b010a13          	addi	s4,sp,432
   14826:	cbaff06f          	j	13ce0 <_ldtoa_r+0x188>
   1482a:	0ad8                	addi	a4,sp,340
   1482c:	1a5c                	addi	a5,sp,308
   1482e:	0007d503          	lhu	a0,0(a5)
   14832:	00075583          	lhu	a1,0(a4)
   14836:	0789                	addi	a5,a5,2
   14838:	0709                	addi	a4,a4,2
   1483a:	04b51063          	bne	a0,a1,1487a <_ldtoa_r+0xd22>
   1483e:	14a10593          	addi	a1,sp,330
   14842:	feb796e3          	bne	a5,a1,1482e <_ldtoa_r+0xcd6>
   14846:	13015703          	lhu	a4,304(sp)
   1484a:	15015783          	lhu	a5,336(sp)
   1484e:	02f70c63          	beq	a4,a5,14886 <_ldtoa_r+0xd2e>
   14852:	87a2                	mv	a5,s0
   14854:	1258                	addi	a4,sp,292
   14856:	0789                	addi	a5,a5,2
   14858:	fe079f23          	sh	zero,-2(a5)
   1485c:	fee79de3          	bne	a5,a4,14856 <_ldtoa_r+0xcfe>
   14860:	b675                	j	1440c <_ldtoa_r+0x8b4>
   14862:	66f1                	lui	a3,0x1c
   14864:	6585                	lui	a1,0x1
   14866:	6571                	lui	a0,0x1c
   14868:	5f068693          	addi	a3,a3,1520 # 1c5f0 <zeroes.0+0x40>
   1486c:	4601                	li	a2,0
   1486e:	b6e58593          	addi	a1,a1,-1170 # b6e <exit-0xf57a>
   14872:	60850513          	addi	a0,a0,1544 # 1c608 <zeroes.0+0x58>
   14876:	400040ef          	jal	ra,18c76 <__assert_func>
   1487a:	04a5ec63          	bltu	a1,a0,148d2 <_ldtoa_r+0xd7a>
   1487e:	4581                	li	a1,0
   14880:	12bc                	addi	a5,sp,360
   14882:	02b8                	addi	a4,sp,328
   14884:	b389                	j	145c6 <_ldtoa_r+0xa6e>
   14886:	8736                	mv	a4,a3
   14888:	e689                	bnez	a3,14892 <_ldtoa_r+0xd3a>
   1488a:	15611783          	lh	a5,342(sp)
   1488e:	0807db63          	bgez	a5,14924 <_ldtoa_r+0xdcc>
   14892:	15210713          	addi	a4,sp,338
   14896:	12bc                	addi	a5,sp,360
   14898:	00075583          	lhu	a1,0(a4)
   1489c:	e1e9                	bnez	a1,1495e <_ldtoa_r+0xe06>
   1489e:	0709                	addi	a4,a4,2
   148a0:	fee79ce3          	bne	a5,a4,14898 <_ldtoa_r+0xd40>
   148a4:	14c11923          	sh	a2,338(sp)
   148a8:	b38d                	j	1460a <_ldtoa_r+0xab2>
   148aa:	4501                	li	a0,0
   148ac:	13210e13          	addi	t3,sp,306
   148b0:	0007de83          	lhu	t4,0(a5)
   148b4:	00075603          	lhu	a2,0(a4)
   148b8:	17f9                	addi	a5,a5,-2
   148ba:	1779                	addi	a4,a4,-2
   148bc:	9676                	add	a2,a2,t4
   148be:	962a                	add	a2,a2,a0
   148c0:	01065513          	srli	a0,a2,0x10
   148c4:	00c79123          	sh	a2,2(a5)
   148c8:	8905                	andi	a0,a0,1
   148ca:	ffc713e3          	bne	a4,t3,148b0 <_ldtoa_r+0xd58>
   148ce:	4601                	li	a2,0
   148d0:	b33d                	j	145fe <_ldtoa_r+0xaa6>
   148d2:	864a                	mv	a2,s2
   148d4:	0a98                	addi	a4,sp,336
   148d6:	12bc                	addi	a5,sp,360
   148d8:	00075583          	lhu	a1,0(a4)
   148dc:	0709                	addi	a4,a4,2
   148de:	0609                	addi	a2,a2,2
   148e0:	feb61f23          	sh	a1,-2(a2)
   148e4:	fef71ae3          	bne	a4,a5,148d8 <_ldtoa_r+0xd80>
   148e8:	18011423          	sh	zero,392(sp)
   148ec:	0a8c                	addi	a1,sp,336
   148ee:	1a10                	addi	a2,sp,304
   148f0:	02b8                	addi	a4,sp,328
   148f2:	00065503          	lhu	a0,0(a2)
   148f6:	0609                	addi	a2,a2,2
   148f8:	0589                	addi	a1,a1,2
   148fa:	fea59f23          	sh	a0,-2(a1)
   148fe:	fee61ae3          	bne	a2,a4,148f2 <_ldtoa_r+0xd9a>
   14902:	16011423          	sh	zero,360(sp)
   14906:	1a10                	addi	a2,sp,304
   14908:	85ca                	mv	a1,s2
   1490a:	0328                	addi	a0,sp,392
   1490c:	0005de03          	lhu	t3,0(a1)
   14910:	0589                	addi	a1,a1,2
   14912:	0609                	addi	a2,a2,2
   14914:	ffc61f23          	sh	t3,-2(a2)
   14918:	fea59ae3          	bne	a1,a0,1490c <_ldtoa_r+0xdb4>
   1491c:	14011423          	sh	zero,328(sp)
   14920:	4581                	li	a1,0
   14922:	b155                	j	145c6 <_ldtoa_r+0xa6e>
   14924:	12b4                	addi	a3,sp,360
   14926:	15210513          	addi	a0,sp,338
   1492a:	0006d783          	lhu	a5,0(a3)
   1492e:	00f7d613          	srli	a2,a5,0xf
   14932:	c219                	beqz	a2,14938 <_ldtoa_r+0xde0>
   14934:	00176713          	ori	a4,a4,1
   14938:	0017979b          	slliw	a5,a5,0x1
   1493c:	17c2                	slli	a5,a5,0x30
   1493e:	00277613          	andi	a2,a4,2
   14942:	93c1                	srli	a5,a5,0x30
   14944:	c219                	beqz	a2,1494a <_ldtoa_r+0xdf2>
   14946:	0017e793          	ori	a5,a5,1
   1494a:	0017171b          	slliw	a4,a4,0x1
   1494e:	00f69023          	sh	a5,0(a3)
   14952:	1742                	slli	a4,a4,0x30
   14954:	16f9                	addi	a3,a3,-2
   14956:	9341                	srli	a4,a4,0x30
   14958:	fca699e3          	bne	a3,a0,1492a <_ldtoa_r+0xdd2>
   1495c:	b17d                	j	1460a <_ldtoa_r+0xab2>
   1495e:	00168613          	addi	a2,a3,1
   14962:	14c11923          	sh	a2,338(sp)
   14966:	b155                	j	1460a <_ldtoa_r+0xab2>

0000000000014968 <_ldcheck>:
   14968:	6118                	ld	a4,0(a0)
   1496a:	651c                	ld	a5,8(a0)
   1496c:	7139                	addi	sp,sp,-64
   1496e:	850a                	mv	a0,sp
   14970:	080c                	addi	a1,sp,16
   14972:	e03a                	sd	a4,0(sp)
   14974:	e43e                	sd	a5,8(sp)
   14976:	fc06                	sd	ra,56(sp)
   14978:	945fe0ef          	jal	ra,132bc <e113toe.isra.0>
   1497c:	02215783          	lhu	a5,34(sp)
   14980:	4501                	li	a0,0
   14982:	fff7c793          	not	a5,a5
   14986:	03179713          	slli	a4,a5,0x31
   1498a:	eb19                	bnez	a4,149a0 <_ldcheck+0x38>
   1498c:	081c                	addi	a5,sp,16
   1498e:	02210693          	addi	a3,sp,34
   14992:	0007d703          	lhu	a4,0(a5)
   14996:	0789                	addi	a5,a5,2
   14998:	e719                	bnez	a4,149a6 <_ldcheck+0x3e>
   1499a:	fed79ce3          	bne	a5,a3,14992 <_ldcheck+0x2a>
   1499e:	4509                	li	a0,2
   149a0:	70e2                	ld	ra,56(sp)
   149a2:	6121                	addi	sp,sp,64
   149a4:	8082                	ret
   149a6:	4505                	li	a0,1
   149a8:	bfe5                	j	149a0 <_ldcheck+0x38>

00000000000149aa <__localeconv_l>:
   149aa:	10050513          	addi	a0,a0,256
   149ae:	8082                	ret

00000000000149b0 <_localeconv_r>:
   149b0:	e6018513          	addi	a0,gp,-416 # 1ea30 <__global_locale+0x100>
   149b4:	8082                	ret

00000000000149b6 <localeconv>:
   149b6:	e6018513          	addi	a0,gp,-416 # 1ea30 <__global_locale+0x100>
   149ba:	8082                	ret

00000000000149bc <_setlocale_r>:
   149bc:	1101                	addi	sp,sp,-32
   149be:	ec06                	sd	ra,24(sp)
   149c0:	e822                	sd	s0,16(sp)
   149c2:	e426                	sd	s1,8(sp)
   149c4:	c20d                	beqz	a2,149e6 <_setlocale_r+0x2a>
   149c6:	65f5                	lui	a1,0x1d
   149c8:	8c858593          	addi	a1,a1,-1848 # 1c8c8 <ezero+0x20>
   149cc:	8532                	mv	a0,a2
   149ce:	8432                	mv	s0,a2
   149d0:	7d6010ef          	jal	ra,161a6 <strcmp>
   149d4:	64f5                	lui	s1,0x1d
   149d6:	e911                	bnez	a0,149ea <_setlocale_r+0x2e>
   149d8:	8c048513          	addi	a0,s1,-1856 # 1c8c0 <ezero+0x18>
   149dc:	60e2                	ld	ra,24(sp)
   149de:	6442                	ld	s0,16(sp)
   149e0:	64a2                	ld	s1,8(sp)
   149e2:	6105                	addi	sp,sp,32
   149e4:	8082                	ret
   149e6:	64f5                	lui	s1,0x1d
   149e8:	bfc5                	j	149d8 <_setlocale_r+0x1c>
   149ea:	8c048593          	addi	a1,s1,-1856 # 1c8c0 <ezero+0x18>
   149ee:	8522                	mv	a0,s0
   149f0:	7b6010ef          	jal	ra,161a6 <strcmp>
   149f4:	d175                	beqz	a0,149d8 <_setlocale_r+0x1c>
   149f6:	65f1                	lui	a1,0x1c
   149f8:	35058593          	addi	a1,a1,848 # 1c350 <__clzdi2+0x84>
   149fc:	8522                	mv	a0,s0
   149fe:	7a8010ef          	jal	ra,161a6 <strcmp>
   14a02:	d979                	beqz	a0,149d8 <_setlocale_r+0x1c>
   14a04:	4501                	li	a0,0
   14a06:	bfd9                	j	149dc <_setlocale_r+0x20>

0000000000014a08 <__locale_mb_cur_max>:
   14a08:	ec01c503          	lbu	a0,-320(gp) # 1ea90 <__global_locale+0x160>
   14a0c:	8082                	ret

0000000000014a0e <setlocale>:
   14a0e:	1101                	addi	sp,sp,-32
   14a10:	ec06                	sd	ra,24(sp)
   14a12:	e822                	sd	s0,16(sp)
   14a14:	e426                	sd	s1,8(sp)
   14a16:	c18d                	beqz	a1,14a38 <setlocale+0x2a>
   14a18:	842e                	mv	s0,a1
   14a1a:	65f5                	lui	a1,0x1d
   14a1c:	8c858593          	addi	a1,a1,-1848 # 1c8c8 <ezero+0x20>
   14a20:	8522                	mv	a0,s0
   14a22:	784010ef          	jal	ra,161a6 <strcmp>
   14a26:	64f5                	lui	s1,0x1d
   14a28:	e911                	bnez	a0,14a3c <setlocale+0x2e>
   14a2a:	8c048513          	addi	a0,s1,-1856 # 1c8c0 <ezero+0x18>
   14a2e:	60e2                	ld	ra,24(sp)
   14a30:	6442                	ld	s0,16(sp)
   14a32:	64a2                	ld	s1,8(sp)
   14a34:	6105                	addi	sp,sp,32
   14a36:	8082                	ret
   14a38:	64f5                	lui	s1,0x1d
   14a3a:	bfc5                	j	14a2a <setlocale+0x1c>
   14a3c:	8c048593          	addi	a1,s1,-1856 # 1c8c0 <ezero+0x18>
   14a40:	8522                	mv	a0,s0
   14a42:	764010ef          	jal	ra,161a6 <strcmp>
   14a46:	d175                	beqz	a0,14a2a <setlocale+0x1c>
   14a48:	65f1                	lui	a1,0x1c
   14a4a:	35058593          	addi	a1,a1,848 # 1c350 <__clzdi2+0x84>
   14a4e:	8522                	mv	a0,s0
   14a50:	756010ef          	jal	ra,161a6 <strcmp>
   14a54:	d979                	beqz	a0,14a2a <setlocale+0x1c>
   14a56:	4501                	li	a0,0
   14a58:	bfd9                	j	14a2e <setlocale+0x20>

0000000000014a5a <__smakebuf_r>:
   14a5a:	0105d783          	lhu	a5,16(a1)
   14a5e:	7135                	addi	sp,sp,-160
   14a60:	e922                	sd	s0,144(sp)
   14a62:	ed06                	sd	ra,152(sp)
   14a64:	e526                	sd	s1,136(sp)
   14a66:	e14a                	sd	s2,128(sp)
   14a68:	fcce                	sd	s3,120(sp)
   14a6a:	f8d2                	sd	s4,112(sp)
   14a6c:	0027f713          	andi	a4,a5,2
   14a70:	842e                	mv	s0,a1
   14a72:	cf19                	beqz	a4,14a90 <__smakebuf_r+0x36>
   14a74:	07758793          	addi	a5,a1,119
   14a78:	e19c                	sd	a5,0(a1)
   14a7a:	ed9c                	sd	a5,24(a1)
   14a7c:	4785                	li	a5,1
   14a7e:	d19c                	sw	a5,32(a1)
   14a80:	60ea                	ld	ra,152(sp)
   14a82:	644a                	ld	s0,144(sp)
   14a84:	64aa                	ld	s1,136(sp)
   14a86:	690a                	ld	s2,128(sp)
   14a88:	79e6                	ld	s3,120(sp)
   14a8a:	7a46                	ld	s4,112(sp)
   14a8c:	610d                	addi	sp,sp,160
   14a8e:	8082                	ret
   14a90:	01259583          	lh	a1,18(a1)
   14a94:	84aa                	mv	s1,a0
   14a96:	0605c863          	bltz	a1,14b06 <__smakebuf_r+0xac>
   14a9a:	0030                	addi	a2,sp,8
   14a9c:	554040ef          	jal	ra,18ff0 <_fstat_r>
   14aa0:	06054163          	bltz	a0,14b02 <__smakebuf_r+0xa8>
   14aa4:	4932                	lw	s2,12(sp)
   14aa6:	67bd                	lui	a5,0xf
   14aa8:	6985                	lui	s3,0x1
   14aaa:	00f97933          	and	s2,s2,a5
   14aae:	6789                	lui	a5,0x2
   14ab0:	40f90933          	sub	s2,s2,a5
   14ab4:	00193913          	seqz	s2,s2
   14ab8:	40000a13          	li	s4,1024
   14abc:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf8e8>
   14ac0:	85d2                	mv	a1,s4
   14ac2:	8526                	mv	a0,s1
   14ac4:	134000ef          	jal	ra,14bf8 <_malloc_r>
   14ac8:	01041783          	lh	a5,16(s0)
   14acc:	c939                	beqz	a0,14b22 <__smakebuf_r+0xc8>
   14ace:	6749                	lui	a4,0x12
   14ad0:	27870713          	addi	a4,a4,632 # 12278 <_cleanup_r>
   14ad4:	ecb8                	sd	a4,88(s1)
   14ad6:	0807e793          	ori	a5,a5,128
   14ada:	00f41823          	sh	a5,16(s0)
   14ade:	e008                	sd	a0,0(s0)
   14ae0:	ec08                	sd	a0,24(s0)
   14ae2:	03442023          	sw	s4,32(s0)
   14ae6:	06091163          	bnez	s2,14b48 <__smakebuf_r+0xee>
   14aea:	0137e7b3          	or	a5,a5,s3
   14aee:	60ea                	ld	ra,152(sp)
   14af0:	00f41823          	sh	a5,16(s0)
   14af4:	644a                	ld	s0,144(sp)
   14af6:	64aa                	ld	s1,136(sp)
   14af8:	690a                	ld	s2,128(sp)
   14afa:	79e6                	ld	s3,120(sp)
   14afc:	7a46                	ld	s4,112(sp)
   14afe:	610d                	addi	sp,sp,160
   14b00:	8082                	ret
   14b02:	01045783          	lhu	a5,16(s0)
   14b06:	0807f793          	andi	a5,a5,128
   14b0a:	4901                	li	s2,0
   14b0c:	cb95                	beqz	a5,14b40 <__smakebuf_r+0xe6>
   14b0e:	04000a13          	li	s4,64
   14b12:	85d2                	mv	a1,s4
   14b14:	8526                	mv	a0,s1
   14b16:	0e2000ef          	jal	ra,14bf8 <_malloc_r>
   14b1a:	01041783          	lh	a5,16(s0)
   14b1e:	4981                	li	s3,0
   14b20:	f55d                	bnez	a0,14ace <__smakebuf_r+0x74>
   14b22:	2007f713          	andi	a4,a5,512
   14b26:	ff29                	bnez	a4,14a80 <__smakebuf_r+0x26>
   14b28:	9bf1                	andi	a5,a5,-4
   14b2a:	0027e793          	ori	a5,a5,2
   14b2e:	07740713          	addi	a4,s0,119
   14b32:	00f41823          	sh	a5,16(s0)
   14b36:	4785                	li	a5,1
   14b38:	e018                	sd	a4,0(s0)
   14b3a:	ec18                	sd	a4,24(s0)
   14b3c:	d01c                	sw	a5,32(s0)
   14b3e:	b789                	j	14a80 <__smakebuf_r+0x26>
   14b40:	40000a13          	li	s4,1024
   14b44:	4981                	li	s3,0
   14b46:	bfad                	j	14ac0 <__smakebuf_r+0x66>
   14b48:	01241583          	lh	a1,18(s0)
   14b4c:	8526                	mv	a0,s1
   14b4e:	00b040ef          	jal	ra,19358 <_isatty_r>
   14b52:	e501                	bnez	a0,14b5a <__smakebuf_r+0x100>
   14b54:	01041783          	lh	a5,16(s0)
   14b58:	bf49                	j	14aea <__smakebuf_r+0x90>
   14b5a:	01045783          	lhu	a5,16(s0)
   14b5e:	9bf1                	andi	a5,a5,-4
   14b60:	0017e793          	ori	a5,a5,1
   14b64:	0107979b          	slliw	a5,a5,0x10
   14b68:	4107d79b          	sraiw	a5,a5,0x10
   14b6c:	bfbd                	j	14aea <__smakebuf_r+0x90>

0000000000014b6e <__swhatbuf_r>:
   14b6e:	7175                	addi	sp,sp,-144
   14b70:	e122                	sd	s0,128(sp)
   14b72:	842e                	mv	s0,a1
   14b74:	01259583          	lh	a1,18(a1)
   14b78:	fca6                	sd	s1,120(sp)
   14b7a:	f8ca                	sd	s2,112(sp)
   14b7c:	e506                	sd	ra,136(sp)
   14b7e:	84b2                	mv	s1,a2
   14b80:	8936                	mv	s2,a3
   14b82:	0205cc63          	bltz	a1,14bba <__swhatbuf_r+0x4c>
   14b86:	0030                	addi	a2,sp,8
   14b88:	468040ef          	jal	ra,18ff0 <_fstat_r>
   14b8c:	02054763          	bltz	a0,14bba <__swhatbuf_r+0x4c>
   14b90:	47b2                	lw	a5,12(sp)
   14b92:	673d                	lui	a4,0xf
   14b94:	60aa                	ld	ra,136(sp)
   14b96:	8ff9                	and	a5,a5,a4
   14b98:	6709                	lui	a4,0x2
   14b9a:	8f99                	sub	a5,a5,a4
   14b9c:	640a                	ld	s0,128(sp)
   14b9e:	0017b793          	seqz	a5,a5
   14ba2:	00f92023          	sw	a5,0(s2)
   14ba6:	40000713          	li	a4,1024
   14baa:	e098                	sd	a4,0(s1)
   14bac:	6505                	lui	a0,0x1
   14bae:	74e6                	ld	s1,120(sp)
   14bb0:	7946                	ld	s2,112(sp)
   14bb2:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf8e8>
   14bb6:	6149                	addi	sp,sp,144
   14bb8:	8082                	ret
   14bba:	01045783          	lhu	a5,16(s0)
   14bbe:	0807f793          	andi	a5,a5,128
   14bc2:	cf91                	beqz	a5,14bde <__swhatbuf_r+0x70>
   14bc4:	60aa                	ld	ra,136(sp)
   14bc6:	640a                	ld	s0,128(sp)
   14bc8:	4781                	li	a5,0
   14bca:	00f92023          	sw	a5,0(s2)
   14bce:	04000713          	li	a4,64
   14bd2:	e098                	sd	a4,0(s1)
   14bd4:	7946                	ld	s2,112(sp)
   14bd6:	74e6                	ld	s1,120(sp)
   14bd8:	4501                	li	a0,0
   14bda:	6149                	addi	sp,sp,144
   14bdc:	8082                	ret
   14bde:	60aa                	ld	ra,136(sp)
   14be0:	640a                	ld	s0,128(sp)
   14be2:	4781                	li	a5,0
   14be4:	00f92023          	sw	a5,0(s2)
   14be8:	40000713          	li	a4,1024
   14bec:	e098                	sd	a4,0(s1)
   14bee:	7946                	ld	s2,112(sp)
   14bf0:	74e6                	ld	s1,120(sp)
   14bf2:	4501                	li	a0,0
   14bf4:	6149                	addi	sp,sp,144
   14bf6:	8082                	ret

0000000000014bf8 <_malloc_r>:
   14bf8:	711d                	addi	sp,sp,-96
   14bfa:	e4a6                	sd	s1,72(sp)
   14bfc:	e0ca                	sd	s2,64(sp)
   14bfe:	ec86                	sd	ra,88(sp)
   14c00:	e8a2                	sd	s0,80(sp)
   14c02:	fc4e                	sd	s3,56(sp)
   14c04:	f852                	sd	s4,48(sp)
   14c06:	f456                	sd	s5,40(sp)
   14c08:	f05a                	sd	s6,32(sp)
   14c0a:	ec5e                	sd	s7,24(sp)
   14c0c:	e862                	sd	s8,16(sp)
   14c0e:	e466                	sd	s9,8(sp)
   14c10:	01758493          	addi	s1,a1,23
   14c14:	02e00793          	li	a5,46
   14c18:	892a                	mv	s2,a0
   14c1a:	0497e863          	bltu	a5,s1,14c6a <_malloc_r+0x72>
   14c1e:	02000793          	li	a5,32
   14c22:	1eb7e663          	bltu	a5,a1,14e0e <_malloc_r+0x216>
   14c26:	6be000ef          	jal	ra,152e4 <__malloc_lock>
   14c2a:	02000493          	li	s1,32
   14c2e:	05000793          	li	a5,80
   14c32:	4611                	li	a2,4
   14c34:	0001f9b7          	lui	s3,0x1f
   14c38:	ad898993          	addi	s3,s3,-1320 # 1ead8 <__malloc_av_>
   14c3c:	97ce                	add	a5,a5,s3
   14c3e:	6780                	ld	s0,8(a5)
   14c40:	ff078713          	addi	a4,a5,-16 # 1ff0 <exit-0xe0f8>
   14c44:	1ee40663          	beq	s0,a4,14e30 <_malloc_r+0x238>
   14c48:	641c                	ld	a5,8(s0)
   14c4a:	6c14                	ld	a3,24(s0)
   14c4c:	6810                	ld	a2,16(s0)
   14c4e:	9bf1                	andi	a5,a5,-4
   14c50:	97a2                	add	a5,a5,s0
   14c52:	6798                	ld	a4,8(a5)
   14c54:	ee14                	sd	a3,24(a2)
   14c56:	ea90                	sd	a2,16(a3)
   14c58:	00176713          	ori	a4,a4,1
   14c5c:	854a                	mv	a0,s2
   14c5e:	e798                	sd	a4,8(a5)
   14c60:	686000ef          	jal	ra,152e6 <__malloc_unlock>
   14c64:	01040513          	addi	a0,s0,16
   14c68:	a27d                	j	14e16 <_malloc_r+0x21e>
   14c6a:	800007b7          	lui	a5,0x80000
   14c6e:	98c1                	andi	s1,s1,-16
   14c70:	fff7c793          	not	a5,a5
   14c74:	1897ed63          	bltu	a5,s1,14e0e <_malloc_r+0x216>
   14c78:	18b4eb63          	bltu	s1,a1,14e0e <_malloc_r+0x216>
   14c7c:	668000ef          	jal	ra,152e4 <__malloc_lock>
   14c80:	1f700793          	li	a5,503
   14c84:	3a97f563          	bgeu	a5,s1,1502e <_malloc_r+0x436>
   14c88:	0094d793          	srli	a5,s1,0x9
   14c8c:	28078163          	beqz	a5,14f0e <_malloc_r+0x316>
   14c90:	4711                	li	a4,4
   14c92:	30f76563          	bltu	a4,a5,14f9c <_malloc_r+0x3a4>
   14c96:	0064d793          	srli	a5,s1,0x6
   14c9a:	0397861b          	addiw	a2,a5,57 # ffffffff80000039 <__BSS_END__+0xffffffff7ffe0c69>
   14c9e:	0016169b          	slliw	a3,a2,0x1
   14ca2:	0387851b          	addiw	a0,a5,56
   14ca6:	068e                	slli	a3,a3,0x3
   14ca8:	0001f9b7          	lui	s3,0x1f
   14cac:	ad898993          	addi	s3,s3,-1320 # 1ead8 <__malloc_av_>
   14cb0:	96ce                	add	a3,a3,s3
   14cb2:	6680                	ld	s0,8(a3)
   14cb4:	16c1                	addi	a3,a3,-16
   14cb6:	18868163          	beq	a3,s0,14e38 <_malloc_r+0x240>
   14cba:	45fd                	li	a1,31
   14cbc:	a031                	j	14cc8 <_malloc_r+0xd0>
   14cbe:	28075963          	bgez	a4,14f50 <_malloc_r+0x358>
   14cc2:	6c00                	ld	s0,24(s0)
   14cc4:	16868a63          	beq	a3,s0,14e38 <_malloc_r+0x240>
   14cc8:	641c                	ld	a5,8(s0)
   14cca:	9bf1                	andi	a5,a5,-4
   14ccc:	40978733          	sub	a4,a5,s1
   14cd0:	fee5d7e3          	bge	a1,a4,14cbe <_malloc_r+0xc6>
   14cd4:	0209b403          	ld	s0,32(s3)
   14cd8:	0001f837          	lui	a6,0x1f
   14cdc:	ae880813          	addi	a6,a6,-1304 # 1eae8 <__malloc_av_+0x10>
   14ce0:	862a                	mv	a2,a0
   14ce2:	17041363          	bne	s0,a6,14e48 <_malloc_r+0x250>
   14ce6:	0089b783          	ld	a5,8(s3)
   14cea:	4026571b          	sraiw	a4,a2,0x2
   14cee:	4585                	li	a1,1
   14cf0:	00e595b3          	sll	a1,a1,a4
   14cf4:	1ab7fa63          	bgeu	a5,a1,14ea8 <_malloc_r+0x2b0>
   14cf8:	0109b403          	ld	s0,16(s3)
   14cfc:	00843a83          	ld	s5,8(s0)
   14d00:	ffcafa93          	andi	s5,s5,-4
   14d04:	009ae763          	bltu	s5,s1,14d12 <_malloc_r+0x11a>
   14d08:	409a87b3          	sub	a5,s5,s1
   14d0c:	477d                	li	a4,31
   14d0e:	22f74263          	blt	a4,a5,14f32 <_malloc_r+0x33a>
   14d12:	76018b93          	addi	s7,gp,1888 # 1f330 <__malloc_sbrk_base>
   14d16:	7881ba03          	ld	s4,1928(gp) # 1f358 <__malloc_top_pad>
   14d1a:	000bb703          	ld	a4,0(s7)
   14d1e:	57fd                	li	a5,-1
   14d20:	01540c33          	add	s8,s0,s5
   14d24:	9a26                	add	s4,s4,s1
   14d26:	3af70263          	beq	a4,a5,150ca <_malloc_r+0x4d2>
   14d2a:	6785                	lui	a5,0x1
   14d2c:	07fd                	addi	a5,a5,31 # 101f <exit-0xf0c9>
   14d2e:	9a3e                	add	s4,s4,a5
   14d30:	77fd                	lui	a5,0xfffff
   14d32:	00fa7a33          	and	s4,s4,a5
   14d36:	85d2                	mv	a1,s4
   14d38:	854a                	mv	a0,s2
   14d3a:	254010ef          	jal	ra,15f8e <_sbrk_r>
   14d3e:	57fd                	li	a5,-1
   14d40:	8b2a                	mv	s6,a0
   14d42:	30f50b63          	beq	a0,a5,15058 <_malloc_r+0x460>
   14d46:	31856763          	bltu	a0,s8,15054 <_malloc_r+0x45c>
   14d4a:	7d818c93          	addi	s9,gp,2008 # 1f3a8 <__malloc_current_mallinfo>
   14d4e:	000ca703          	lw	a4,0(s9)
   14d52:	014707bb          	addw	a5,a4,s4
   14d56:	00fca023          	sw	a5,0(s9)
   14d5a:	86be                	mv	a3,a5
   14d5c:	3eac0a63          	beq	s8,a0,15150 <_malloc_r+0x558>
   14d60:	000bb703          	ld	a4,0(s7)
   14d64:	57fd                	li	a5,-1
   14d66:	40f70163          	beq	a4,a5,15168 <_malloc_r+0x570>
   14d6a:	418b07b3          	sub	a5,s6,s8
   14d6e:	9fb5                	addw	a5,a5,a3
   14d70:	00fca023          	sw	a5,0(s9)
   14d74:	00fb7c13          	andi	s8,s6,15
   14d78:	360c0763          	beqz	s8,150e6 <_malloc_r+0x4ee>
   14d7c:	6785                	lui	a5,0x1
   14d7e:	418b0b33          	sub	s6,s6,s8
   14d82:	01078b93          	addi	s7,a5,16 # 1010 <exit-0xf0d8>
   14d86:	0b41                	addi	s6,s6,16
   14d88:	418b8bb3          	sub	s7,s7,s8
   14d8c:	9a5a                	add	s4,s4,s6
   14d8e:	17fd                	addi	a5,a5,-1
   14d90:	414b8bb3          	sub	s7,s7,s4
   14d94:	00fbfbb3          	and	s7,s7,a5
   14d98:	85de                	mv	a1,s7
   14d9a:	854a                	mv	a0,s2
   14d9c:	1f2010ef          	jal	ra,15f8e <_sbrk_r>
   14da0:	57fd                	li	a5,-1
   14da2:	40f50863          	beq	a0,a5,151b2 <_malloc_r+0x5ba>
   14da6:	41650533          	sub	a0,a0,s6
   14daa:	000b871b          	sext.w	a4,s7
   14dae:	01750a33          	add	s4,a0,s7
   14db2:	000ca783          	lw	a5,0(s9)
   14db6:	0169b823          	sd	s6,16(s3)
   14dba:	001a6a13          	ori	s4,s4,1
   14dbe:	9fb9                	addw	a5,a5,a4
   14dc0:	00fca023          	sw	a5,0(s9)
   14dc4:	014b3423          	sd	s4,8(s6)
   14dc8:	3b340363          	beq	s0,s3,1516e <_malloc_r+0x576>
   14dcc:	467d                	li	a2,31
   14dce:	3b567263          	bgeu	a2,s5,15172 <_malloc_r+0x57a>
   14dd2:	6414                	ld	a3,8(s0)
   14dd4:	fe8a8713          	addi	a4,s5,-24
   14dd8:	9b41                	andi	a4,a4,-16
   14dda:	8a85                	andi	a3,a3,1
   14ddc:	8ed9                	or	a3,a3,a4
   14dde:	e414                	sd	a3,8(s0)
   14de0:	45a5                	li	a1,9
   14de2:	00e406b3          	add	a3,s0,a4
   14de6:	e68c                	sd	a1,8(a3)
   14de8:	ea8c                	sd	a1,16(a3)
   14dea:	3ce66a63          	bltu	a2,a4,151be <_malloc_r+0x5c6>
   14dee:	008b3a03          	ld	s4,8(s6)
   14df2:	845a                	mv	s0,s6
   14df4:	77818713          	addi	a4,gp,1912 # 1f348 <__malloc_max_sbrked_mem>
   14df8:	6314                	ld	a3,0(a4)
   14dfa:	00f6f363          	bgeu	a3,a5,14e00 <_malloc_r+0x208>
   14dfe:	e31c                	sd	a5,0(a4)
   14e00:	78018713          	addi	a4,gp,1920 # 1f350 <__malloc_max_total_mem>
   14e04:	6314                	ld	a3,0(a4)
   14e06:	24f6fd63          	bgeu	a3,a5,15060 <_malloc_r+0x468>
   14e0a:	e31c                	sd	a5,0(a4)
   14e0c:	ac91                	j	15060 <_malloc_r+0x468>
   14e0e:	47b1                	li	a5,12
   14e10:	00f92023          	sw	a5,0(s2)
   14e14:	4501                	li	a0,0
   14e16:	60e6                	ld	ra,88(sp)
   14e18:	6446                	ld	s0,80(sp)
   14e1a:	64a6                	ld	s1,72(sp)
   14e1c:	6906                	ld	s2,64(sp)
   14e1e:	79e2                	ld	s3,56(sp)
   14e20:	7a42                	ld	s4,48(sp)
   14e22:	7aa2                	ld	s5,40(sp)
   14e24:	7b02                	ld	s6,32(sp)
   14e26:	6be2                	ld	s7,24(sp)
   14e28:	6c42                	ld	s8,16(sp)
   14e2a:	6ca2                	ld	s9,8(sp)
   14e2c:	6125                	addi	sp,sp,96
   14e2e:	8082                	ret
   14e30:	6f80                	ld	s0,24(a5)
   14e32:	2609                	addiw	a2,a2,2
   14e34:	e0879ae3          	bne	a5,s0,14c48 <_malloc_r+0x50>
   14e38:	0209b403          	ld	s0,32(s3)
   14e3c:	0001f837          	lui	a6,0x1f
   14e40:	ae880813          	addi	a6,a6,-1304 # 1eae8 <__malloc_av_+0x10>
   14e44:	eb0401e3          	beq	s0,a6,14ce6 <_malloc_r+0xee>
   14e48:	641c                	ld	a5,8(s0)
   14e4a:	46fd                	li	a3,31
   14e4c:	9bf1                	andi	a5,a5,-4
   14e4e:	40978733          	sub	a4,a5,s1
   14e52:	1ae6c763          	blt	a3,a4,15000 <_malloc_r+0x408>
   14e56:	0309b423          	sd	a6,40(s3)
   14e5a:	0309b023          	sd	a6,32(s3)
   14e5e:	0a075f63          	bgez	a4,14f1c <_malloc_r+0x324>
   14e62:	1ff00713          	li	a4,511
   14e66:	0ef76863          	bltu	a4,a5,14f56 <_malloc_r+0x35e>
   14e6a:	838d                	srli	a5,a5,0x3
   14e6c:	0017871b          	addiw	a4,a5,1
   14e70:	0017171b          	slliw	a4,a4,0x1
   14e74:	070e                	slli	a4,a4,0x3
   14e76:	0089b503          	ld	a0,8(s3)
   14e7a:	974e                	add	a4,a4,s3
   14e7c:	630c                	ld	a1,0(a4)
   14e7e:	4027d69b          	sraiw	a3,a5,0x2
   14e82:	4785                	li	a5,1
   14e84:	00d797b3          	sll	a5,a5,a3
   14e88:	8fc9                	or	a5,a5,a0
   14e8a:	ff070693          	addi	a3,a4,-16 # 1ff0 <exit-0xe0f8>
   14e8e:	ec14                	sd	a3,24(s0)
   14e90:	e80c                	sd	a1,16(s0)
   14e92:	00f9b423          	sd	a5,8(s3)
   14e96:	e300                	sd	s0,0(a4)
   14e98:	ed80                	sd	s0,24(a1)
   14e9a:	4026571b          	sraiw	a4,a2,0x2
   14e9e:	4585                	li	a1,1
   14ea0:	00e595b3          	sll	a1,a1,a4
   14ea4:	e4b7eae3          	bltu	a5,a1,14cf8 <_malloc_r+0x100>
   14ea8:	00f5f733          	and	a4,a1,a5
   14eac:	ef01                	bnez	a4,14ec4 <_malloc_r+0x2cc>
   14eae:	0586                	slli	a1,a1,0x1
   14eb0:	9a71                	andi	a2,a2,-4
   14eb2:	00f5f733          	and	a4,a1,a5
   14eb6:	2611                	addiw	a2,a2,4
   14eb8:	e711                	bnez	a4,14ec4 <_malloc_r+0x2cc>
   14eba:	0586                	slli	a1,a1,0x1
   14ebc:	00f5f733          	and	a4,a1,a5
   14ec0:	2611                	addiw	a2,a2,4
   14ec2:	df65                	beqz	a4,14eba <_malloc_r+0x2c2>
   14ec4:	48fd                	li	a7,31
   14ec6:	0016031b          	addiw	t1,a2,1
   14eca:	0013131b          	slliw	t1,t1,0x1
   14ece:	030e                	slli	t1,t1,0x3
   14ed0:	1341                	addi	t1,t1,-16
   14ed2:	934e                	add	t1,t1,s3
   14ed4:	851a                	mv	a0,t1
   14ed6:	6d1c                	ld	a5,24(a0)
   14ed8:	8e32                	mv	t3,a2
   14eda:	0ef50263          	beq	a0,a5,14fbe <_malloc_r+0x3c6>
   14ede:	6798                	ld	a4,8(a5)
   14ee0:	843e                	mv	s0,a5
   14ee2:	6f9c                	ld	a5,24(a5)
   14ee4:	9b71                	andi	a4,a4,-4
   14ee6:	409706b3          	sub	a3,a4,s1
   14eea:	0ed8c163          	blt	a7,a3,14fcc <_malloc_r+0x3d4>
   14eee:	fe06c6e3          	bltz	a3,14eda <_malloc_r+0x2e2>
   14ef2:	9722                	add	a4,a4,s0
   14ef4:	6714                	ld	a3,8(a4)
   14ef6:	6810                	ld	a2,16(s0)
   14ef8:	854a                	mv	a0,s2
   14efa:	0016e693          	ori	a3,a3,1
   14efe:	e714                	sd	a3,8(a4)
   14f00:	ee1c                	sd	a5,24(a2)
   14f02:	eb90                	sd	a2,16(a5)
   14f04:	3e2000ef          	jal	ra,152e6 <__malloc_unlock>
   14f08:	01040513          	addi	a0,s0,16
   14f0c:	b729                	j	14e16 <_malloc_r+0x21e>
   14f0e:	40000693          	li	a3,1024
   14f12:	04000613          	li	a2,64
   14f16:	03f00513          	li	a0,63
   14f1a:	b379                	j	14ca8 <_malloc_r+0xb0>
   14f1c:	97a2                	add	a5,a5,s0
   14f1e:	6798                	ld	a4,8(a5)
   14f20:	854a                	mv	a0,s2
   14f22:	00176713          	ori	a4,a4,1
   14f26:	e798                	sd	a4,8(a5)
   14f28:	3be000ef          	jal	ra,152e6 <__malloc_unlock>
   14f2c:	01040513          	addi	a0,s0,16
   14f30:	b5dd                	j	14e16 <_malloc_r+0x21e>
   14f32:	0014e713          	ori	a4,s1,1
   14f36:	e418                	sd	a4,8(s0)
   14f38:	94a2                	add	s1,s1,s0
   14f3a:	0099b823          	sd	s1,16(s3)
   14f3e:	0017e793          	ori	a5,a5,1
   14f42:	854a                	mv	a0,s2
   14f44:	e49c                	sd	a5,8(s1)
   14f46:	3a0000ef          	jal	ra,152e6 <__malloc_unlock>
   14f4a:	01040513          	addi	a0,s0,16
   14f4e:	b5e1                	j	14e16 <_malloc_r+0x21e>
   14f50:	6c14                	ld	a3,24(s0)
   14f52:	6810                	ld	a2,16(s0)
   14f54:	b9f5                	j	14c50 <_malloc_r+0x58>
   14f56:	0097d713          	srli	a4,a5,0x9
   14f5a:	4691                	li	a3,4
   14f5c:	0ee6f263          	bgeu	a3,a4,15040 <_malloc_r+0x448>
   14f60:	46d1                	li	a3,20
   14f62:	1ae6e263          	bltu	a3,a4,15106 <_malloc_r+0x50e>
   14f66:	05c7059b          	addiw	a1,a4,92
   14f6a:	0015959b          	slliw	a1,a1,0x1
   14f6e:	05b7069b          	addiw	a3,a4,91
   14f72:	058e                	slli	a1,a1,0x3
   14f74:	95ce                	add	a1,a1,s3
   14f76:	6198                	ld	a4,0(a1)
   14f78:	15c1                	addi	a1,a1,-16
   14f7a:	14e58b63          	beq	a1,a4,150d0 <_malloc_r+0x4d8>
   14f7e:	6714                	ld	a3,8(a4)
   14f80:	9af1                	andi	a3,a3,-4
   14f82:	00d7f563          	bgeu	a5,a3,14f8c <_malloc_r+0x394>
   14f86:	6b18                	ld	a4,16(a4)
   14f88:	fee59be3          	bne	a1,a4,14f7e <_malloc_r+0x386>
   14f8c:	6f0c                	ld	a1,24(a4)
   14f8e:	0089b783          	ld	a5,8(s3)
   14f92:	ec0c                	sd	a1,24(s0)
   14f94:	e818                	sd	a4,16(s0)
   14f96:	e980                	sd	s0,16(a1)
   14f98:	ef00                	sd	s0,24(a4)
   14f9a:	b701                	j	14e9a <_malloc_r+0x2a2>
   14f9c:	4751                	li	a4,20
   14f9e:	0cf77f63          	bgeu	a4,a5,1507c <_malloc_r+0x484>
   14fa2:	05400713          	li	a4,84
   14fa6:	16f76e63          	bltu	a4,a5,15122 <_malloc_r+0x52a>
   14faa:	00c4d793          	srli	a5,s1,0xc
   14fae:	06f7861b          	addiw	a2,a5,111
   14fb2:	0016169b          	slliw	a3,a2,0x1
   14fb6:	06e7851b          	addiw	a0,a5,110
   14fba:	068e                	slli	a3,a3,0x3
   14fbc:	b1f5                	j	14ca8 <_malloc_r+0xb0>
   14fbe:	2e05                	addiw	t3,t3,1
   14fc0:	003e7793          	andi	a5,t3,3
   14fc4:	0541                	addi	a0,a0,16
   14fc6:	cbe1                	beqz	a5,15096 <_malloc_r+0x49e>
   14fc8:	6d1c                	ld	a5,24(a0)
   14fca:	bf01                	j	14eda <_malloc_r+0x2e2>
   14fcc:	6810                	ld	a2,16(s0)
   14fce:	0014e593          	ori	a1,s1,1
   14fd2:	e40c                	sd	a1,8(s0)
   14fd4:	ee1c                	sd	a5,24(a2)
   14fd6:	eb90                	sd	a2,16(a5)
   14fd8:	94a2                	add	s1,s1,s0
   14fda:	0299b423          	sd	s1,40(s3)
   14fde:	0299b023          	sd	s1,32(s3)
   14fe2:	0016e793          	ori	a5,a3,1
   14fe6:	0104bc23          	sd	a6,24(s1)
   14fea:	0104b823          	sd	a6,16(s1)
   14fee:	e49c                	sd	a5,8(s1)
   14ff0:	9722                	add	a4,a4,s0
   14ff2:	854a                	mv	a0,s2
   14ff4:	e314                	sd	a3,0(a4)
   14ff6:	2f0000ef          	jal	ra,152e6 <__malloc_unlock>
   14ffa:	01040513          	addi	a0,s0,16
   14ffe:	bd21                	j	14e16 <_malloc_r+0x21e>
   15000:	0014e693          	ori	a3,s1,1
   15004:	e414                	sd	a3,8(s0)
   15006:	94a2                	add	s1,s1,s0
   15008:	0299b423          	sd	s1,40(s3)
   1500c:	0299b023          	sd	s1,32(s3)
   15010:	00176693          	ori	a3,a4,1
   15014:	0104bc23          	sd	a6,24(s1)
   15018:	0104b823          	sd	a6,16(s1)
   1501c:	e494                	sd	a3,8(s1)
   1501e:	97a2                	add	a5,a5,s0
   15020:	854a                	mv	a0,s2
   15022:	e398                	sd	a4,0(a5)
   15024:	2c2000ef          	jal	ra,152e6 <__malloc_unlock>
   15028:	01040513          	addi	a0,s0,16
   1502c:	b3ed                	j	14e16 <_malloc_r+0x21e>
   1502e:	0034d613          	srli	a2,s1,0x3
   15032:	0016079b          	addiw	a5,a2,1
   15036:	0017979b          	slliw	a5,a5,0x1
   1503a:	2601                	sext.w	a2,a2
   1503c:	078e                	slli	a5,a5,0x3
   1503e:	bedd                	j	14c34 <_malloc_r+0x3c>
   15040:	0067d713          	srli	a4,a5,0x6
   15044:	0397059b          	addiw	a1,a4,57
   15048:	0015959b          	slliw	a1,a1,0x1
   1504c:	0387069b          	addiw	a3,a4,56
   15050:	058e                	slli	a1,a1,0x3
   15052:	b70d                	j	14f74 <_malloc_r+0x37c>
   15054:	0f340563          	beq	s0,s3,1513e <_malloc_r+0x546>
   15058:	0109b403          	ld	s0,16(s3)
   1505c:	00843a03          	ld	s4,8(s0)
   15060:	ffca7a13          	andi	s4,s4,-4
   15064:	409a07b3          	sub	a5,s4,s1
   15068:	009a6563          	bltu	s4,s1,15072 <_malloc_r+0x47a>
   1506c:	477d                	li	a4,31
   1506e:	ecf742e3          	blt	a4,a5,14f32 <_malloc_r+0x33a>
   15072:	854a                	mv	a0,s2
   15074:	272000ef          	jal	ra,152e6 <__malloc_unlock>
   15078:	4501                	li	a0,0
   1507a:	bb71                	j	14e16 <_malloc_r+0x21e>
   1507c:	05c7861b          	addiw	a2,a5,92
   15080:	0016169b          	slliw	a3,a2,0x1
   15084:	05b7851b          	addiw	a0,a5,91
   15088:	068e                	slli	a3,a3,0x3
   1508a:	b939                	j	14ca8 <_malloc_r+0xb0>
   1508c:	01033783          	ld	a5,16(t1)
   15090:	367d                	addiw	a2,a2,-1
   15092:	16679c63          	bne	a5,t1,1520a <_malloc_r+0x612>
   15096:	00367793          	andi	a5,a2,3
   1509a:	1341                	addi	t1,t1,-16
   1509c:	fbe5                	bnez	a5,1508c <_malloc_r+0x494>
   1509e:	0089b703          	ld	a4,8(s3)
   150a2:	fff5c793          	not	a5,a1
   150a6:	8ff9                	and	a5,a5,a4
   150a8:	00f9b423          	sd	a5,8(s3)
   150ac:	0586                	slli	a1,a1,0x1
   150ae:	c4b7e5e3          	bltu	a5,a1,14cf8 <_malloc_r+0x100>
   150b2:	c40583e3          	beqz	a1,14cf8 <_malloc_r+0x100>
   150b6:	00f5f733          	and	a4,a1,a5
   150ba:	e711                	bnez	a4,150c6 <_malloc_r+0x4ce>
   150bc:	0586                	slli	a1,a1,0x1
   150be:	00f5f733          	and	a4,a1,a5
   150c2:	2e11                	addiw	t3,t3,4
   150c4:	df65                	beqz	a4,150bc <_malloc_r+0x4c4>
   150c6:	8672                	mv	a2,t3
   150c8:	bbfd                	j	14ec6 <_malloc_r+0x2ce>
   150ca:	020a0a13          	addi	s4,s4,32
   150ce:	b1a5                	j	14d36 <_malloc_r+0x13e>
   150d0:	0089b503          	ld	a0,8(s3)
   150d4:	4026d69b          	sraiw	a3,a3,0x2
   150d8:	4785                	li	a5,1
   150da:	00d797b3          	sll	a5,a5,a3
   150de:	8fc9                	or	a5,a5,a0
   150e0:	00f9b423          	sd	a5,8(s3)
   150e4:	b57d                	j	14f92 <_malloc_r+0x39a>
   150e6:	014b0bb3          	add	s7,s6,s4
   150ea:	41700bb3          	neg	s7,s7
   150ee:	1bd2                	slli	s7,s7,0x34
   150f0:	034bdb93          	srli	s7,s7,0x34
   150f4:	85de                	mv	a1,s7
   150f6:	854a                	mv	a0,s2
   150f8:	697000ef          	jal	ra,15f8e <_sbrk_r>
   150fc:	57fd                	li	a5,-1
   150fe:	4701                	li	a4,0
   15100:	caf513e3          	bne	a0,a5,14da6 <_malloc_r+0x1ae>
   15104:	b17d                	j	14db2 <_malloc_r+0x1ba>
   15106:	05400693          	li	a3,84
   1510a:	06e6e863          	bltu	a3,a4,1517a <_malloc_r+0x582>
   1510e:	00c7d713          	srli	a4,a5,0xc
   15112:	06f7059b          	addiw	a1,a4,111
   15116:	0015959b          	slliw	a1,a1,0x1
   1511a:	06e7069b          	addiw	a3,a4,110
   1511e:	058e                	slli	a1,a1,0x3
   15120:	bd91                	j	14f74 <_malloc_r+0x37c>
   15122:	15400713          	li	a4,340
   15126:	06f76863          	bltu	a4,a5,15196 <_malloc_r+0x59e>
   1512a:	00f4d793          	srli	a5,s1,0xf
   1512e:	0787861b          	addiw	a2,a5,120
   15132:	0016169b          	slliw	a3,a2,0x1
   15136:	0777851b          	addiw	a0,a5,119
   1513a:	068e                	slli	a3,a3,0x3
   1513c:	b6b5                	j	14ca8 <_malloc_r+0xb0>
   1513e:	7d818c93          	addi	s9,gp,2008 # 1f3a8 <__malloc_current_mallinfo>
   15142:	000ca783          	lw	a5,0(s9)
   15146:	014786bb          	addw	a3,a5,s4
   1514a:	00dca023          	sw	a3,0(s9)
   1514e:	b909                	j	14d60 <_malloc_r+0x168>
   15150:	034c1713          	slli	a4,s8,0x34
   15154:	c00716e3          	bnez	a4,14d60 <_malloc_r+0x168>
   15158:	0109b403          	ld	s0,16(s3)
   1515c:	9a56                	add	s4,s4,s5
   1515e:	001a6a13          	ori	s4,s4,1
   15162:	01443423          	sd	s4,8(s0)
   15166:	b179                	j	14df4 <_malloc_r+0x1fc>
   15168:	016bb023          	sd	s6,0(s7)
   1516c:	b121                	j	14d74 <_malloc_r+0x17c>
   1516e:	845a                	mv	s0,s6
   15170:	b151                	j	14df4 <_malloc_r+0x1fc>
   15172:	4785                	li	a5,1
   15174:	00fb3423          	sd	a5,8(s6)
   15178:	bded                	j	15072 <_malloc_r+0x47a>
   1517a:	15400693          	li	a3,340
   1517e:	04e6ec63          	bltu	a3,a4,151d6 <_malloc_r+0x5de>
   15182:	00f7d713          	srli	a4,a5,0xf
   15186:	0787059b          	addiw	a1,a4,120
   1518a:	0015959b          	slliw	a1,a1,0x1
   1518e:	0777069b          	addiw	a3,a4,119
   15192:	058e                	slli	a1,a1,0x3
   15194:	b3c5                	j	14f74 <_malloc_r+0x37c>
   15196:	55400713          	li	a4,1364
   1519a:	04f76c63          	bltu	a4,a5,151f2 <_malloc_r+0x5fa>
   1519e:	0124d793          	srli	a5,s1,0x12
   151a2:	07d7861b          	addiw	a2,a5,125
   151a6:	0016169b          	slliw	a3,a2,0x1
   151aa:	07c7851b          	addiw	a0,a5,124
   151ae:	068e                	slli	a3,a3,0x3
   151b0:	bce5                	j	14ca8 <_malloc_r+0xb0>
   151b2:	1c41                	addi	s8,s8,-16
   151b4:	9a62                	add	s4,s4,s8
   151b6:	416a0a33          	sub	s4,s4,s6
   151ba:	4701                	li	a4,0
   151bc:	bedd                	j	14db2 <_malloc_r+0x1ba>
   151be:	01040593          	addi	a1,s0,16
   151c2:	854a                	mv	a0,s2
   151c4:	c3cfd0ef          	jal	ra,12600 <_free_r>
   151c8:	0109b403          	ld	s0,16(s3)
   151cc:	000ca783          	lw	a5,0(s9)
   151d0:	00843a03          	ld	s4,8(s0)
   151d4:	b105                	j	14df4 <_malloc_r+0x1fc>
   151d6:	55400693          	li	a3,1364
   151da:	02e6e363          	bltu	a3,a4,15200 <_malloc_r+0x608>
   151de:	0127d713          	srli	a4,a5,0x12
   151e2:	07d7059b          	addiw	a1,a4,125
   151e6:	0015959b          	slliw	a1,a1,0x1
   151ea:	07c7069b          	addiw	a3,a4,124
   151ee:	058e                	slli	a1,a1,0x3
   151f0:	b351                	j	14f74 <_malloc_r+0x37c>
   151f2:	7f000693          	li	a3,2032
   151f6:	07f00613          	li	a2,127
   151fa:	07e00513          	li	a0,126
   151fe:	b46d                	j	14ca8 <_malloc_r+0xb0>
   15200:	7f000593          	li	a1,2032
   15204:	07e00693          	li	a3,126
   15208:	b3b5                	j	14f74 <_malloc_r+0x37c>
   1520a:	0089b783          	ld	a5,8(s3)
   1520e:	bd79                	j	150ac <_malloc_r+0x4b4>

0000000000015210 <_mbtowc_r>:
   15210:	e481b783          	ld	a5,-440(gp) # 1ea18 <__global_locale+0xe8>
   15214:	8782                	jr	a5

0000000000015216 <__ascii_mbtowc>:
   15216:	c999                	beqz	a1,1522c <__ascii_mbtowc+0x16>
   15218:	c61d                	beqz	a2,15246 <__ascii_mbtowc+0x30>
   1521a:	ca95                	beqz	a3,1524e <__ascii_mbtowc+0x38>
   1521c:	00064783          	lbu	a5,0(a2)
   15220:	c19c                	sw	a5,0(a1)
   15222:	00064503          	lbu	a0,0(a2)
   15226:	00a03533          	snez	a0,a0
   1522a:	8082                	ret
   1522c:	1141                	addi	sp,sp,-16
   1522e:	006c                	addi	a1,sp,12
   15230:	ce09                	beqz	a2,1524a <__ascii_mbtowc+0x34>
   15232:	c285                	beqz	a3,15252 <__ascii_mbtowc+0x3c>
   15234:	00064783          	lbu	a5,0(a2)
   15238:	c19c                	sw	a5,0(a1)
   1523a:	00064503          	lbu	a0,0(a2)
   1523e:	00a03533          	snez	a0,a0
   15242:	0141                	addi	sp,sp,16
   15244:	8082                	ret
   15246:	4501                	li	a0,0
   15248:	8082                	ret
   1524a:	4501                	li	a0,0
   1524c:	bfdd                	j	15242 <__ascii_mbtowc+0x2c>
   1524e:	5579                	li	a0,-2
   15250:	8082                	ret
   15252:	5579                	li	a0,-2
   15254:	b7fd                	j	15242 <__ascii_mbtowc+0x2c>

0000000000015256 <memchr>:
   15256:	00757793          	andi	a5,a0,7
   1525a:	0ff5f693          	zext.b	a3,a1
   1525e:	c395                	beqz	a5,15282 <memchr+0x2c>
   15260:	fff60793          	addi	a5,a2,-1
   15264:	c605                	beqz	a2,1528c <memchr+0x36>
   15266:	567d                	li	a2,-1
   15268:	a801                	j	15278 <memchr+0x22>
   1526a:	0505                	addi	a0,a0,1
   1526c:	00757713          	andi	a4,a0,7
   15270:	cb11                	beqz	a4,15284 <memchr+0x2e>
   15272:	17fd                	addi	a5,a5,-1
   15274:	00c78c63          	beq	a5,a2,1528c <memchr+0x36>
   15278:	00054703          	lbu	a4,0(a0)
   1527c:	fed717e3          	bne	a4,a3,1526a <memchr+0x14>
   15280:	8082                	ret
   15282:	87b2                	mv	a5,a2
   15284:	471d                	li	a4,7
   15286:	00f76f63          	bltu	a4,a5,152a4 <memchr+0x4e>
   1528a:	e399                	bnez	a5,15290 <memchr+0x3a>
   1528c:	4501                	li	a0,0
   1528e:	8082                	ret
   15290:	97aa                	add	a5,a5,a0
   15292:	a021                	j	1529a <memchr+0x44>
   15294:	0505                	addi	a0,a0,1
   15296:	fea78be3          	beq	a5,a0,1528c <memchr+0x36>
   1529a:	00054703          	lbu	a4,0(a0)
   1529e:	fed71be3          	bne	a4,a3,15294 <memchr+0x3e>
   152a2:	8082                	ret
   152a4:	0ff5f593          	zext.b	a1,a1
   152a8:	00859613          	slli	a2,a1,0x8
   152ac:	8e4d                	or	a2,a2,a1
   152ae:	01061713          	slli	a4,a2,0x10
   152b2:	8f51                	or	a4,a4,a2
   152b4:	7181b883          	ld	a7,1816(gp) # 1f2e8 <__SDATA_BEGIN__>
   152b8:	7201b803          	ld	a6,1824(gp) # 1f2f0 <__SDATA_BEGIN__+0x8>
   152bc:	02071593          	slli	a1,a4,0x20
   152c0:	8dd9                	or	a1,a1,a4
   152c2:	431d                	li	t1,7
   152c4:	6118                	ld	a4,0(a0)
   152c6:	8f2d                	xor	a4,a4,a1
   152c8:	01170633          	add	a2,a4,a7
   152cc:	fff74713          	not	a4,a4
   152d0:	8f71                	and	a4,a4,a2
   152d2:	01077733          	and	a4,a4,a6
   152d6:	ff4d                	bnez	a4,15290 <memchr+0x3a>
   152d8:	17e1                	addi	a5,a5,-8
   152da:	0521                	addi	a0,a0,8
   152dc:	fef364e3          	bltu	t1,a5,152c4 <memchr+0x6e>
   152e0:	fbc5                	bnez	a5,15290 <memchr+0x3a>
   152e2:	b76d                	j	1528c <memchr+0x36>

00000000000152e4 <__malloc_lock>:
   152e4:	8082                	ret

00000000000152e6 <__malloc_unlock>:
   152e6:	8082                	ret

00000000000152e8 <_Balloc>:
   152e8:	7d3c                	ld	a5,120(a0)
   152ea:	1101                	addi	sp,sp,-32
   152ec:	e822                	sd	s0,16(sp)
   152ee:	e426                	sd	s1,8(sp)
   152f0:	ec06                	sd	ra,24(sp)
   152f2:	e04a                	sd	s2,0(sp)
   152f4:	842a                	mv	s0,a0
   152f6:	84ae                	mv	s1,a1
   152f8:	c385                	beqz	a5,15318 <_Balloc+0x30>
   152fa:	00349713          	slli	a4,s1,0x3
   152fe:	97ba                	add	a5,a5,a4
   15300:	6388                	ld	a0,0(a5)
   15302:	c50d                	beqz	a0,1532c <_Balloc+0x44>
   15304:	6118                	ld	a4,0(a0)
   15306:	e398                	sd	a4,0(a5)
   15308:	00053823          	sd	zero,16(a0)
   1530c:	60e2                	ld	ra,24(sp)
   1530e:	6442                	ld	s0,16(sp)
   15310:	64a2                	ld	s1,8(sp)
   15312:	6902                	ld	s2,0(sp)
   15314:	6105                	addi	sp,sp,32
   15316:	8082                	ret
   15318:	04100613          	li	a2,65
   1531c:	45a1                	li	a1,8
   1531e:	1ad030ef          	jal	ra,18cca <_calloc_r>
   15322:	fc28                	sd	a0,120(s0)
   15324:	87aa                	mv	a5,a0
   15326:	f971                	bnez	a0,152fa <_Balloc+0x12>
   15328:	4501                	li	a0,0
   1532a:	b7cd                	j	1530c <_Balloc+0x24>
   1532c:	4905                	li	s2,1
   1532e:	0099163b          	sllw	a2,s2,s1
   15332:	8932                	mv	s2,a2
   15334:	061d                	addi	a2,a2,7
   15336:	060a                	slli	a2,a2,0x2
   15338:	4585                	li	a1,1
   1533a:	8522                	mv	a0,s0
   1533c:	18f030ef          	jal	ra,18cca <_calloc_r>
   15340:	d565                	beqz	a0,15328 <_Balloc+0x40>
   15342:	c504                	sw	s1,8(a0)
   15344:	01252623          	sw	s2,12(a0)
   15348:	b7c1                	j	15308 <_Balloc+0x20>

000000000001534a <_Bfree>:
   1534a:	c981                	beqz	a1,1535a <_Bfree+0x10>
   1534c:	4598                	lw	a4,8(a1)
   1534e:	7d3c                	ld	a5,120(a0)
   15350:	070e                	slli	a4,a4,0x3
   15352:	97ba                	add	a5,a5,a4
   15354:	6398                	ld	a4,0(a5)
   15356:	e198                	sd	a4,0(a1)
   15358:	e38c                	sd	a1,0(a5)
   1535a:	8082                	ret

000000000001535c <__multadd>:
   1535c:	7179                	addi	sp,sp,-48
   1535e:	ec26                	sd	s1,24(sp)
   15360:	49c4                	lw	s1,20(a1)
   15362:	6341                	lui	t1,0x10
   15364:	f022                	sd	s0,32(sp)
   15366:	e84a                	sd	s2,16(sp)
   15368:	e44e                	sd	s3,8(sp)
   1536a:	f406                	sd	ra,40(sp)
   1536c:	e052                	sd	s4,0(sp)
   1536e:	892e                	mv	s2,a1
   15370:	89aa                	mv	s3,a0
   15372:	8436                	mv	s0,a3
   15374:	01858813          	addi	a6,a1,24
   15378:	4881                	li	a7,0
   1537a:	137d                	addi	t1,t1,-1 # ffff <exit-0xe9>
   1537c:	00082783          	lw	a5,0(a6)
   15380:	0811                	addi	a6,a6,4
   15382:	2885                	addiw	a7,a7,1
   15384:	0067f733          	and	a4,a5,t1
   15388:	02c7073b          	mulw	a4,a4,a2
   1538c:	0107d69b          	srliw	a3,a5,0x10
   15390:	02c686bb          	mulw	a3,a3,a2
   15394:	008707bb          	addw	a5,a4,s0
   15398:	0107d71b          	srliw	a4,a5,0x10
   1539c:	00f377b3          	and	a5,t1,a5
   153a0:	9eb9                	addw	a3,a3,a4
   153a2:	0106971b          	slliw	a4,a3,0x10
   153a6:	9fb9                	addw	a5,a5,a4
   153a8:	fef82e23          	sw	a5,-4(a6)
   153ac:	0106d41b          	srliw	s0,a3,0x10
   153b0:	fc98c6e3          	blt	a7,s1,1537c <__multadd+0x20>
   153b4:	cc09                	beqz	s0,153ce <__multadd+0x72>
   153b6:	00c92783          	lw	a5,12(s2)
   153ba:	02f4d363          	bge	s1,a5,153e0 <__multadd+0x84>
   153be:	00448793          	addi	a5,s1,4
   153c2:	078a                	slli	a5,a5,0x2
   153c4:	97ca                	add	a5,a5,s2
   153c6:	c780                	sw	s0,8(a5)
   153c8:	2485                	addiw	s1,s1,1
   153ca:	00992a23          	sw	s1,20(s2)
   153ce:	70a2                	ld	ra,40(sp)
   153d0:	7402                	ld	s0,32(sp)
   153d2:	64e2                	ld	s1,24(sp)
   153d4:	69a2                	ld	s3,8(sp)
   153d6:	6a02                	ld	s4,0(sp)
   153d8:	854a                	mv	a0,s2
   153da:	6942                	ld	s2,16(sp)
   153dc:	6145                	addi	sp,sp,48
   153de:	8082                	ret
   153e0:	00892583          	lw	a1,8(s2)
   153e4:	854e                	mv	a0,s3
   153e6:	2585                	addiw	a1,a1,1
   153e8:	f01ff0ef          	jal	ra,152e8 <_Balloc>
   153ec:	8a2a                	mv	s4,a0
   153ee:	cd1d                	beqz	a0,1542c <__multadd+0xd0>
   153f0:	01492603          	lw	a2,20(s2)
   153f4:	01090593          	addi	a1,s2,16
   153f8:	0541                	addi	a0,a0,16
   153fa:	0609                	addi	a2,a2,2
   153fc:	060a                	slli	a2,a2,0x2
   153fe:	7cd030ef          	jal	ra,193ca <memcpy>
   15402:	00892703          	lw	a4,8(s2)
   15406:	0789b783          	ld	a5,120(s3)
   1540a:	070e                	slli	a4,a4,0x3
   1540c:	97ba                	add	a5,a5,a4
   1540e:	6398                	ld	a4,0(a5)
   15410:	00e93023          	sd	a4,0(s2)
   15414:	0127b023          	sd	s2,0(a5)
   15418:	00448793          	addi	a5,s1,4
   1541c:	8952                	mv	s2,s4
   1541e:	078a                	slli	a5,a5,0x2
   15420:	97ca                	add	a5,a5,s2
   15422:	c780                	sw	s0,8(a5)
   15424:	2485                	addiw	s1,s1,1
   15426:	00992a23          	sw	s1,20(s2)
   1542a:	b755                	j	153ce <__multadd+0x72>
   1542c:	66f1                	lui	a3,0x1c
   1542e:	6575                	lui	a0,0x1d
   15430:	5f068693          	addi	a3,a3,1520 # 1c5f0 <zeroes.0+0x40>
   15434:	4601                	li	a2,0
   15436:	0b500593          	li	a1,181
   1543a:	8d850513          	addi	a0,a0,-1832 # 1c8d8 <ezero+0x30>
   1543e:	039030ef          	jal	ra,18c76 <__assert_func>

0000000000015442 <__s2b>:
   15442:	7139                	addi	sp,sp,-64
   15444:	f822                	sd	s0,48(sp)
   15446:	f426                	sd	s1,40(sp)
   15448:	f04a                	sd	s2,32(sp)
   1544a:	ec4e                	sd	s3,24(sp)
   1544c:	e852                	sd	s4,16(sp)
   1544e:	84b6                	mv	s1,a3
   15450:	842e                	mv	s0,a1
   15452:	26a1                	addiw	a3,a3,8
   15454:	45a5                	li	a1,9
   15456:	fc06                	sd	ra,56(sp)
   15458:	e456                	sd	s5,8(sp)
   1545a:	e05a                	sd	s6,0(sp)
   1545c:	47a5                	li	a5,9
   1545e:	02b6c6bb          	divw	a3,a3,a1
   15462:	892a                	mv	s2,a0
   15464:	89b2                	mv	s3,a2
   15466:	8a3a                	mv	s4,a4
   15468:	0a97d363          	bge	a5,s1,1550e <__s2b+0xcc>
   1546c:	4785                	li	a5,1
   1546e:	4581                	li	a1,0
   15470:	0017979b          	slliw	a5,a5,0x1
   15474:	2585                	addiw	a1,a1,1
   15476:	fed7cde3          	blt	a5,a3,15470 <__s2b+0x2e>
   1547a:	854a                	mv	a0,s2
   1547c:	e6dff0ef          	jal	ra,152e8 <_Balloc>
   15480:	85aa                	mv	a1,a0
   15482:	c941                	beqz	a0,15512 <__s2b+0xd0>
   15484:	4785                	li	a5,1
   15486:	c95c                	sw	a5,20(a0)
   15488:	01452c23          	sw	s4,24(a0)
   1548c:	47a5                	li	a5,9
   1548e:	0737dd63          	bge	a5,s3,15508 <__s2b+0xc6>
   15492:	02099793          	slli	a5,s3,0x20
   15496:	00940b13          	addi	s6,s0,9
   1549a:	9381                	srli	a5,a5,0x20
   1549c:	00098a9b          	sext.w	s5,s3
   154a0:	943e                	add	s0,s0,a5
   154a2:	8a5a                	mv	s4,s6
   154a4:	000a4683          	lbu	a3,0(s4)
   154a8:	4629                	li	a2,10
   154aa:	854a                	mv	a0,s2
   154ac:	fd06869b          	addiw	a3,a3,-48
   154b0:	eadff0ef          	jal	ra,1535c <__multadd>
   154b4:	0a05                	addi	s4,s4,1
   154b6:	85aa                	mv	a1,a0
   154b8:	fe8a16e3          	bne	s4,s0,154a4 <__s2b+0x62>
   154bc:	3ae1                	addiw	s5,s5,-8
   154be:	1a82                	slli	s5,s5,0x20
   154c0:	020ada93          	srli	s5,s5,0x20
   154c4:	015b0433          	add	s0,s6,s5
   154c8:	0299d563          	bge	s3,s1,154f2 <__s2b+0xb0>
   154cc:	34fd                	addiw	s1,s1,-1
   154ce:	413484bb          	subw	s1,s1,s3
   154d2:	1482                	slli	s1,s1,0x20
   154d4:	9081                	srli	s1,s1,0x20
   154d6:	0485                	addi	s1,s1,1
   154d8:	94a2                	add	s1,s1,s0
   154da:	00044683          	lbu	a3,0(s0)
   154de:	4629                	li	a2,10
   154e0:	854a                	mv	a0,s2
   154e2:	fd06869b          	addiw	a3,a3,-48
   154e6:	e77ff0ef          	jal	ra,1535c <__multadd>
   154ea:	0405                	addi	s0,s0,1
   154ec:	85aa                	mv	a1,a0
   154ee:	fe9416e3          	bne	s0,s1,154da <__s2b+0x98>
   154f2:	70e2                	ld	ra,56(sp)
   154f4:	7442                	ld	s0,48(sp)
   154f6:	74a2                	ld	s1,40(sp)
   154f8:	7902                	ld	s2,32(sp)
   154fa:	69e2                	ld	s3,24(sp)
   154fc:	6a42                	ld	s4,16(sp)
   154fe:	6aa2                	ld	s5,8(sp)
   15500:	6b02                	ld	s6,0(sp)
   15502:	852e                	mv	a0,a1
   15504:	6121                	addi	sp,sp,64
   15506:	8082                	ret
   15508:	0429                	addi	s0,s0,10
   1550a:	49a5                	li	s3,9
   1550c:	bf75                	j	154c8 <__s2b+0x86>
   1550e:	4581                	li	a1,0
   15510:	b7ad                	j	1547a <__s2b+0x38>
   15512:	66f1                	lui	a3,0x1c
   15514:	6575                	lui	a0,0x1d
   15516:	5f068693          	addi	a3,a3,1520 # 1c5f0 <zeroes.0+0x40>
   1551a:	4601                	li	a2,0
   1551c:	0ce00593          	li	a1,206
   15520:	8d850513          	addi	a0,a0,-1832 # 1c8d8 <ezero+0x30>
   15524:	752030ef          	jal	ra,18c76 <__assert_func>

0000000000015528 <__hi0bits>:
   15528:	7741                	lui	a4,0xffff0
   1552a:	8f69                	and	a4,a4,a0
   1552c:	87aa                	mv	a5,a0
   1552e:	4501                	li	a0,0
   15530:	e701                	bnez	a4,15538 <__hi0bits+0x10>
   15532:	0107979b          	slliw	a5,a5,0x10
   15536:	4541                	li	a0,16
   15538:	ff000737          	lui	a4,0xff000
   1553c:	8f7d                	and	a4,a4,a5
   1553e:	e701                	bnez	a4,15546 <__hi0bits+0x1e>
   15540:	0087979b          	slliw	a5,a5,0x8
   15544:	2521                	addiw	a0,a0,8
   15546:	f0000737          	lui	a4,0xf0000
   1554a:	8f7d                	and	a4,a4,a5
   1554c:	e701                	bnez	a4,15554 <__hi0bits+0x2c>
   1554e:	0047979b          	slliw	a5,a5,0x4
   15552:	2511                	addiw	a0,a0,4
   15554:	c0000737          	lui	a4,0xc0000
   15558:	8f7d                	and	a4,a4,a5
   1555a:	e701                	bnez	a4,15562 <__hi0bits+0x3a>
   1555c:	0027979b          	slliw	a5,a5,0x2
   15560:	2509                	addiw	a0,a0,2
   15562:	0007c663          	bltz	a5,1556e <__hi0bits+0x46>
   15566:	83f9                	srli	a5,a5,0x1e
   15568:	8b85                	andi	a5,a5,1
   1556a:	2505                	addiw	a0,a0,1
   1556c:	c391                	beqz	a5,15570 <__hi0bits+0x48>
   1556e:	8082                	ret
   15570:	02000513          	li	a0,32
   15574:	8082                	ret

0000000000015576 <__lo0bits>:
   15576:	411c                	lw	a5,0(a0)
   15578:	872a                	mv	a4,a0
   1557a:	0077f693          	andi	a3,a5,7
   1557e:	863e                	mv	a2,a5
   15580:	ce81                	beqz	a3,15598 <__lo0bits+0x22>
   15582:	0017f693          	andi	a3,a5,1
   15586:	4501                	li	a0,0
   15588:	ee9d                	bnez	a3,155c6 <__lo0bits+0x50>
   1558a:	8a09                	andi	a2,a2,2
   1558c:	ce25                	beqz	a2,15604 <__lo0bits+0x8e>
   1558e:	0017d79b          	srliw	a5,a5,0x1
   15592:	c31c                	sw	a5,0(a4)
   15594:	4505                	li	a0,1
   15596:	8082                	ret
   15598:	03079693          	slli	a3,a5,0x30
   1559c:	92c1                	srli	a3,a3,0x30
   1559e:	4501                	li	a0,0
   155a0:	cab9                	beqz	a3,155f6 <__lo0bits+0x80>
   155a2:	0ff7f693          	zext.b	a3,a5
   155a6:	c2a9                	beqz	a3,155e8 <__lo0bits+0x72>
   155a8:	00f7f693          	andi	a3,a5,15
   155ac:	c69d                	beqz	a3,155da <__lo0bits+0x64>
   155ae:	0037f693          	andi	a3,a5,3
   155b2:	ce89                	beqz	a3,155cc <__lo0bits+0x56>
   155b4:	0017f693          	andi	a3,a5,1
   155b8:	ea81                	bnez	a3,155c8 <__lo0bits+0x52>
   155ba:	0017d79b          	srliw	a5,a5,0x1
   155be:	2505                	addiw	a0,a0,1
   155c0:	e781                	bnez	a5,155c8 <__lo0bits+0x52>
   155c2:	02000513          	li	a0,32
   155c6:	8082                	ret
   155c8:	c31c                	sw	a5,0(a4)
   155ca:	8082                	ret
   155cc:	0027d79b          	srliw	a5,a5,0x2
   155d0:	0017f693          	andi	a3,a5,1
   155d4:	2509                	addiw	a0,a0,2
   155d6:	faed                	bnez	a3,155c8 <__lo0bits+0x52>
   155d8:	b7cd                	j	155ba <__lo0bits+0x44>
   155da:	0047d79b          	srliw	a5,a5,0x4
   155de:	0037f693          	andi	a3,a5,3
   155e2:	2511                	addiw	a0,a0,4
   155e4:	fae1                	bnez	a3,155b4 <__lo0bits+0x3e>
   155e6:	b7dd                	j	155cc <__lo0bits+0x56>
   155e8:	0087d79b          	srliw	a5,a5,0x8
   155ec:	00f7f693          	andi	a3,a5,15
   155f0:	2521                	addiw	a0,a0,8
   155f2:	fed5                	bnez	a3,155ae <__lo0bits+0x38>
   155f4:	b7dd                	j	155da <__lo0bits+0x64>
   155f6:	0107d79b          	srliw	a5,a5,0x10
   155fa:	0ff7f693          	zext.b	a3,a5
   155fe:	4541                	li	a0,16
   15600:	f6c5                	bnez	a3,155a8 <__lo0bits+0x32>
   15602:	b7dd                	j	155e8 <__lo0bits+0x72>
   15604:	0027d79b          	srliw	a5,a5,0x2
   15608:	c31c                	sw	a5,0(a4)
   1560a:	4509                	li	a0,2
   1560c:	8082                	ret

000000000001560e <__i2b>:
   1560e:	7d3c                	ld	a5,120(a0)
   15610:	1101                	addi	sp,sp,-32
   15612:	e822                	sd	s0,16(sp)
   15614:	e426                	sd	s1,8(sp)
   15616:	ec06                	sd	ra,24(sp)
   15618:	842a                	mv	s0,a0
   1561a:	84ae                	mv	s1,a1
   1561c:	cf91                	beqz	a5,15638 <__i2b+0x2a>
   1561e:	6788                	ld	a0,8(a5)
   15620:	cd1d                	beqz	a0,1565e <__i2b+0x50>
   15622:	6118                	ld	a4,0(a0)
   15624:	e798                	sd	a4,8(a5)
   15626:	60e2                	ld	ra,24(sp)
   15628:	6442                	ld	s0,16(sp)
   1562a:	4785                	li	a5,1
   1562c:	1782                	slli	a5,a5,0x20
   1562e:	cd04                	sw	s1,24(a0)
   15630:	e91c                	sd	a5,16(a0)
   15632:	64a2                	ld	s1,8(sp)
   15634:	6105                	addi	sp,sp,32
   15636:	8082                	ret
   15638:	04100613          	li	a2,65
   1563c:	45a1                	li	a1,8
   1563e:	68c030ef          	jal	ra,18cca <_calloc_r>
   15642:	fc28                	sd	a0,120(s0)
   15644:	87aa                	mv	a5,a0
   15646:	fd61                	bnez	a0,1561e <__i2b+0x10>
   15648:	66f1                	lui	a3,0x1c
   1564a:	6575                	lui	a0,0x1d
   1564c:	5f068693          	addi	a3,a3,1520 # 1c5f0 <zeroes.0+0x40>
   15650:	4601                	li	a2,0
   15652:	14000593          	li	a1,320
   15656:	8d850513          	addi	a0,a0,-1832 # 1c8d8 <ezero+0x30>
   1565a:	61c030ef          	jal	ra,18c76 <__assert_func>
   1565e:	02400613          	li	a2,36
   15662:	4585                	li	a1,1
   15664:	8522                	mv	a0,s0
   15666:	664030ef          	jal	ra,18cca <_calloc_r>
   1566a:	dd79                	beqz	a0,15648 <__i2b+0x3a>
   1566c:	4785                	li	a5,1
   1566e:	1786                	slli	a5,a5,0x21
   15670:	0785                	addi	a5,a5,1
   15672:	e51c                	sd	a5,8(a0)
   15674:	bf4d                	j	15626 <__i2b+0x18>

0000000000015676 <__multiply>:
   15676:	7179                	addi	sp,sp,-48
   15678:	e84a                	sd	s2,16(sp)
   1567a:	e44e                	sd	s3,8(sp)
   1567c:	01462903          	lw	s2,20(a2)
   15680:	0145a983          	lw	s3,20(a1)
   15684:	ec26                	sd	s1,24(sp)
   15686:	e052                	sd	s4,0(sp)
   15688:	f406                	sd	ra,40(sp)
   1568a:	f022                	sd	s0,32(sp)
   1568c:	8a2e                	mv	s4,a1
   1568e:	84b2                	mv	s1,a2
   15690:	0129c763          	blt	s3,s2,1569e <__multiply+0x28>
   15694:	87ca                	mv	a5,s2
   15696:	84ae                	mv	s1,a1
   15698:	894e                	mv	s2,s3
   1569a:	8a32                	mv	s4,a2
   1569c:	89be                	mv	s3,a5
   1569e:	44dc                	lw	a5,12(s1)
   156a0:	0139043b          	addw	s0,s2,s3
   156a4:	448c                	lw	a1,8(s1)
   156a6:	0087d363          	bge	a5,s0,156ac <__multiply+0x36>
   156aa:	2585                	addiw	a1,a1,1
   156ac:	c3dff0ef          	jal	ra,152e8 <_Balloc>
   156b0:	14050b63          	beqz	a0,15806 <__multiply+0x190>
   156b4:	01850313          	addi	t1,a0,24
   156b8:	00241893          	slli	a7,s0,0x2
   156bc:	989a                	add	a7,a7,t1
   156be:	879a                	mv	a5,t1
   156c0:	01137763          	bgeu	t1,a7,156ce <__multiply+0x58>
   156c4:	0007a023          	sw	zero,0(a5)
   156c8:	0791                	addi	a5,a5,4
   156ca:	ff17ede3          	bltu	a5,a7,156c4 <__multiply+0x4e>
   156ce:	018a0813          	addi	a6,s4,24
   156d2:	00299e13          	slli	t3,s3,0x2
   156d6:	01848e93          	addi	t4,s1,24
   156da:	00291593          	slli	a1,s2,0x2
   156de:	9e42                	add	t3,t3,a6
   156e0:	95f6                	add	a1,a1,t4
   156e2:	0fc87963          	bgeu	a6,t3,157d4 <__multiply+0x15e>
   156e6:	01948793          	addi	a5,s1,25
   156ea:	4f11                	li	t5,4
   156ec:	10f5f663          	bgeu	a1,a5,157f8 <__multiply+0x182>
   156f0:	66c1                	lui	a3,0x10
   156f2:	16fd                	addi	a3,a3,-1 # ffff <exit-0xe9>
   156f4:	a809                	j	15706 <__multiply+0x90>
   156f6:	0102d29b          	srliw	t0,t0,0x10
   156fa:	06029b63          	bnez	t0,15770 <__multiply+0xfa>
   156fe:	0811                	addi	a6,a6,4
   15700:	0311                	addi	t1,t1,4
   15702:	0dc87963          	bgeu	a6,t3,157d4 <__multiply+0x15e>
   15706:	00082283          	lw	t0,0(a6)
   1570a:	00d2f3b3          	and	t2,t0,a3
   1570e:	fe0384e3          	beqz	t2,156f6 <__multiply+0x80>
   15712:	829a                	mv	t0,t1
   15714:	8ff6                	mv	t6,t4
   15716:	4481                	li	s1,0
   15718:	000fa703          	lw	a4,0(t6)
   1571c:	0002a603          	lw	a2,0(t0) # 10304 <memset+0x90>
   15720:	0291                	addi	t0,t0,4
   15722:	00d777b3          	and	a5,a4,a3
   15726:	027787bb          	mulw	a5,a5,t2
   1572a:	0107571b          	srliw	a4,a4,0x10
   1572e:	00d67933          	and	s2,a2,a3
   15732:	0106561b          	srliw	a2,a2,0x10
   15736:	0f91                	addi	t6,t6,4
   15738:	0277073b          	mulw	a4,a4,t2
   1573c:	012787bb          	addw	a5,a5,s2
   15740:	9fa5                	addw	a5,a5,s1
   15742:	0107d49b          	srliw	s1,a5,0x10
   15746:	8ff5                	and	a5,a5,a3
   15748:	9f31                	addw	a4,a4,a2
   1574a:	9f25                	addw	a4,a4,s1
   1574c:	0107161b          	slliw	a2,a4,0x10
   15750:	8fd1                	or	a5,a5,a2
   15752:	fef2ae23          	sw	a5,-4(t0)
   15756:	0107549b          	srliw	s1,a4,0x10
   1575a:	fabfefe3          	bltu	t6,a1,15718 <__multiply+0xa2>
   1575e:	01e307b3          	add	a5,t1,t5
   15762:	c384                	sw	s1,0(a5)
   15764:	00082283          	lw	t0,0(a6)
   15768:	0102d29b          	srliw	t0,t0,0x10
   1576c:	f80289e3          	beqz	t0,156fe <__multiply+0x88>
   15770:	00032603          	lw	a2,0(t1)
   15774:	839a                	mv	t2,t1
   15776:	8ff6                	mv	t6,t4
   15778:	84b2                	mv	s1,a2
   1577a:	4701                	li	a4,0
   1577c:	000fa783          	lw	a5,0(t6)
   15780:	0104d99b          	srliw	s3,s1,0x10
   15784:	8e75                	and	a2,a2,a3
   15786:	8ff5                	and	a5,a5,a3
   15788:	025787bb          	mulw	a5,a5,t0
   1578c:	0043a483          	lw	s1,4(t2)
   15790:	0391                	addi	t2,t2,4
   15792:	0f91                	addi	t6,t6,4
   15794:	00d4f933          	and	s2,s1,a3
   15798:	013787bb          	addw	a5,a5,s3
   1579c:	9fb9                	addw	a5,a5,a4
   1579e:	0107971b          	slliw	a4,a5,0x10
   157a2:	8e59                	or	a2,a2,a4
   157a4:	fec3ae23          	sw	a2,-4(t2)
   157a8:	ffefd703          	lhu	a4,-2(t6)
   157ac:	0107d79b          	srliw	a5,a5,0x10
   157b0:	0257073b          	mulw	a4,a4,t0
   157b4:	0127073b          	addw	a4,a4,s2
   157b8:	9fb9                	addw	a5,a5,a4
   157ba:	0007861b          	sext.w	a2,a5
   157be:	0107d71b          	srliw	a4,a5,0x10
   157c2:	fabfede3          	bltu	t6,a1,1577c <__multiply+0x106>
   157c6:	01e307b3          	add	a5,t1,t5
   157ca:	c390                	sw	a2,0(a5)
   157cc:	0811                	addi	a6,a6,4
   157ce:	0311                	addi	t1,t1,4
   157d0:	f3c86be3          	bltu	a6,t3,15706 <__multiply+0x90>
   157d4:	00804563          	bgtz	s0,157de <__multiply+0x168>
   157d8:	a039                	j	157e6 <__multiply+0x170>
   157da:	347d                	addiw	s0,s0,-1
   157dc:	c409                	beqz	s0,157e6 <__multiply+0x170>
   157de:	ffc8a783          	lw	a5,-4(a7)
   157e2:	18f1                	addi	a7,a7,-4
   157e4:	dbfd                	beqz	a5,157da <__multiply+0x164>
   157e6:	70a2                	ld	ra,40(sp)
   157e8:	c940                	sw	s0,20(a0)
   157ea:	7402                	ld	s0,32(sp)
   157ec:	64e2                	ld	s1,24(sp)
   157ee:	6942                	ld	s2,16(sp)
   157f0:	69a2                	ld	s3,8(sp)
   157f2:	6a02                	ld	s4,0(sp)
   157f4:	6145                	addi	sp,sp,48
   157f6:	8082                	ret
   157f8:	409587b3          	sub	a5,a1,s1
   157fc:	179d                	addi	a5,a5,-25
   157fe:	9bf1                	andi	a5,a5,-4
   15800:	00478f13          	addi	t5,a5,4
   15804:	b5f5                	j	156f0 <__multiply+0x7a>
   15806:	66f1                	lui	a3,0x1c
   15808:	6575                	lui	a0,0x1d
   1580a:	5f068693          	addi	a3,a3,1520 # 1c5f0 <zeroes.0+0x40>
   1580e:	4601                	li	a2,0
   15810:	15d00593          	li	a1,349
   15814:	8d850513          	addi	a0,a0,-1832 # 1c8d8 <ezero+0x30>
   15818:	45e030ef          	jal	ra,18c76 <__assert_func>

000000000001581c <__pow5mult>:
   1581c:	7179                	addi	sp,sp,-48
   1581e:	f022                	sd	s0,32(sp)
   15820:	e84a                	sd	s2,16(sp)
   15822:	e44e                	sd	s3,8(sp)
   15824:	f406                	sd	ra,40(sp)
   15826:	ec26                	sd	s1,24(sp)
   15828:	00367793          	andi	a5,a2,3
   1582c:	8432                	mv	s0,a2
   1582e:	89aa                	mv	s3,a0
   15830:	892e                	mv	s2,a1
   15832:	ebb5                	bnez	a5,158a6 <__pow5mult+0x8a>
   15834:	8409                	srai	s0,s0,0x2
   15836:	c421                	beqz	s0,1587e <__pow5mult+0x62>
   15838:	0709b483          	ld	s1,112(s3)
   1583c:	c0c9                	beqz	s1,158be <__pow5mult+0xa2>
   1583e:	00147793          	andi	a5,s0,1
   15842:	eb89                	bnez	a5,15854 <__pow5mult+0x38>
   15844:	8405                	srai	s0,s0,0x1
   15846:	cc05                	beqz	s0,1587e <__pow5mult+0x62>
   15848:	6088                	ld	a0,0(s1)
   1584a:	c131                	beqz	a0,1588e <__pow5mult+0x72>
   1584c:	84aa                	mv	s1,a0
   1584e:	00147793          	andi	a5,s0,1
   15852:	dbed                	beqz	a5,15844 <__pow5mult+0x28>
   15854:	8626                	mv	a2,s1
   15856:	85ca                	mv	a1,s2
   15858:	854e                	mv	a0,s3
   1585a:	e1dff0ef          	jal	ra,15676 <__multiply>
   1585e:	04090263          	beqz	s2,158a2 <__pow5mult+0x86>
   15862:	00892703          	lw	a4,8(s2)
   15866:	0789b783          	ld	a5,120(s3)
   1586a:	8405                	srai	s0,s0,0x1
   1586c:	070e                	slli	a4,a4,0x3
   1586e:	97ba                	add	a5,a5,a4
   15870:	6398                	ld	a4,0(a5)
   15872:	00e93023          	sd	a4,0(s2)
   15876:	0127b023          	sd	s2,0(a5)
   1587a:	892a                	mv	s2,a0
   1587c:	f471                	bnez	s0,15848 <__pow5mult+0x2c>
   1587e:	70a2                	ld	ra,40(sp)
   15880:	7402                	ld	s0,32(sp)
   15882:	64e2                	ld	s1,24(sp)
   15884:	69a2                	ld	s3,8(sp)
   15886:	854a                	mv	a0,s2
   15888:	6942                	ld	s2,16(sp)
   1588a:	6145                	addi	sp,sp,48
   1588c:	8082                	ret
   1588e:	8626                	mv	a2,s1
   15890:	85a6                	mv	a1,s1
   15892:	854e                	mv	a0,s3
   15894:	de3ff0ef          	jal	ra,15676 <__multiply>
   15898:	e088                	sd	a0,0(s1)
   1589a:	00053023          	sd	zero,0(a0)
   1589e:	84aa                	mv	s1,a0
   158a0:	b77d                	j	1584e <__pow5mult+0x32>
   158a2:	892a                	mv	s2,a0
   158a4:	b745                	j	15844 <__pow5mult+0x28>
   158a6:	37fd                	addiw	a5,a5,-1
   158a8:	6775                	lui	a4,0x1d
   158aa:	a3870713          	addi	a4,a4,-1480 # 1ca38 <p05.0>
   158ae:	078a                	slli	a5,a5,0x2
   158b0:	97ba                	add	a5,a5,a4
   158b2:	4390                	lw	a2,0(a5)
   158b4:	4681                	li	a3,0
   158b6:	aa7ff0ef          	jal	ra,1535c <__multadd>
   158ba:	892a                	mv	s2,a0
   158bc:	bfa5                	j	15834 <__pow5mult+0x18>
   158be:	4585                	li	a1,1
   158c0:	854e                	mv	a0,s3
   158c2:	a27ff0ef          	jal	ra,152e8 <_Balloc>
   158c6:	84aa                	mv	s1,a0
   158c8:	c919                	beqz	a0,158de <__pow5mult+0xc2>
   158ca:	27100793          	li	a5,625
   158ce:	cd1c                	sw	a5,24(a0)
   158d0:	4785                	li	a5,1
   158d2:	c95c                	sw	a5,20(a0)
   158d4:	06a9b823          	sd	a0,112(s3)
   158d8:	00053023          	sd	zero,0(a0)
   158dc:	b78d                	j	1583e <__pow5mult+0x22>
   158de:	66f1                	lui	a3,0x1c
   158e0:	6575                	lui	a0,0x1d
   158e2:	5f068693          	addi	a3,a3,1520 # 1c5f0 <zeroes.0+0x40>
   158e6:	4601                	li	a2,0
   158e8:	14000593          	li	a1,320
   158ec:	8d850513          	addi	a0,a0,-1832 # 1c8d8 <ezero+0x30>
   158f0:	386030ef          	jal	ra,18c76 <__assert_func>

00000000000158f4 <__lshift>:
   158f4:	7139                	addi	sp,sp,-64
   158f6:	f04a                	sd	s2,32(sp)
   158f8:	0145a903          	lw	s2,20(a1)
   158fc:	45dc                	lw	a5,12(a1)
   158fe:	e456                	sd	s5,8(sp)
   15900:	40565a9b          	sraiw	s5,a2,0x5
   15904:	012a893b          	addw	s2,s5,s2
   15908:	f822                	sd	s0,48(sp)
   1590a:	f426                	sd	s1,40(sp)
   1590c:	ec4e                	sd	s3,24(sp)
   1590e:	e852                	sd	s4,16(sp)
   15910:	e05a                	sd	s6,0(sp)
   15912:	fc06                	sd	ra,56(sp)
   15914:	0019049b          	addiw	s1,s2,1
   15918:	842e                	mv	s0,a1
   1591a:	8a32                	mv	s4,a2
   1591c:	458c                	lw	a1,8(a1)
   1591e:	89aa                	mv	s3,a0
   15920:	40565b13          	srai	s6,a2,0x5
   15924:	0097d763          	bge	a5,s1,15932 <__lshift+0x3e>
   15928:	0017979b          	slliw	a5,a5,0x1
   1592c:	2585                	addiw	a1,a1,1
   1592e:	fe97cde3          	blt	a5,s1,15928 <__lshift+0x34>
   15932:	854e                	mv	a0,s3
   15934:	9b5ff0ef          	jal	ra,152e8 <_Balloc>
   15938:	c969                	beqz	a0,15a0a <__lshift+0x116>
   1593a:	01850693          	addi	a3,a0,24
   1593e:	03605563          	blez	s6,15968 <__lshift+0x74>
   15942:	fffa871b          	addiw	a4,s5,-1
   15946:	02071793          	slli	a5,a4,0x20
   1594a:	01e7d713          	srli	a4,a5,0x1e
   1594e:	0771                	addi	a4,a4,28
   15950:	972a                	add	a4,a4,a0
   15952:	87b6                	mv	a5,a3
   15954:	0791                	addi	a5,a5,4
   15956:	fe07ae23          	sw	zero,-4(a5)
   1595a:	fee79de3          	bne	a5,a4,15954 <__lshift+0x60>
   1595e:	020a9793          	slli	a5,s5,0x20
   15962:	01e7da93          	srli	s5,a5,0x1e
   15966:	96d6                	add	a3,a3,s5
   15968:	01442883          	lw	a7,20(s0)
   1596c:	01840793          	addi	a5,s0,24
   15970:	01fa7613          	andi	a2,s4,31
   15974:	088a                	slli	a7,a7,0x2
   15976:	98be                	add	a7,a7,a5
   15978:	ca35                	beqz	a2,159ec <__lshift+0xf8>
   1597a:	02000313          	li	t1,32
   1597e:	40c3033b          	subw	t1,t1,a2
   15982:	85b6                	mv	a1,a3
   15984:	4701                	li	a4,0
   15986:	0007a803          	lw	a6,0(a5)
   1598a:	0591                	addi	a1,a1,4
   1598c:	0791                	addi	a5,a5,4
   1598e:	00c8183b          	sllw	a6,a6,a2
   15992:	01076733          	or	a4,a4,a6
   15996:	fee5ae23          	sw	a4,-4(a1)
   1599a:	ffc7a703          	lw	a4,-4(a5)
   1599e:	0067573b          	srlw	a4,a4,t1
   159a2:	ff17e2e3          	bltu	a5,a7,15986 <__lshift+0x92>
   159a6:	01940793          	addi	a5,s0,25
   159aa:	4611                	li	a2,4
   159ac:	00f8e863          	bltu	a7,a5,159bc <__lshift+0xc8>
   159b0:	408887b3          	sub	a5,a7,s0
   159b4:	179d                	addi	a5,a5,-25
   159b6:	9bf1                	andi	a5,a5,-4
   159b8:	00478613          	addi	a2,a5,4
   159bc:	96b2                	add	a3,a3,a2
   159be:	c298                	sw	a4,0(a3)
   159c0:	c311                	beqz	a4,159c4 <__lshift+0xd0>
   159c2:	8926                	mv	s2,s1
   159c4:	4418                	lw	a4,8(s0)
   159c6:	0789b783          	ld	a5,120(s3)
   159ca:	01252a23          	sw	s2,20(a0)
   159ce:	070e                	slli	a4,a4,0x3
   159d0:	97ba                	add	a5,a5,a4
   159d2:	6398                	ld	a4,0(a5)
   159d4:	70e2                	ld	ra,56(sp)
   159d6:	74a2                	ld	s1,40(sp)
   159d8:	e018                	sd	a4,0(s0)
   159da:	e380                	sd	s0,0(a5)
   159dc:	7442                	ld	s0,48(sp)
   159de:	7902                	ld	s2,32(sp)
   159e0:	69e2                	ld	s3,24(sp)
   159e2:	6a42                	ld	s4,16(sp)
   159e4:	6aa2                	ld	s5,8(sp)
   159e6:	6b02                	ld	s6,0(sp)
   159e8:	6121                	addi	sp,sp,64
   159ea:	8082                	ret
   159ec:	4398                	lw	a4,0(a5)
   159ee:	0791                	addi	a5,a5,4
   159f0:	0691                	addi	a3,a3,4
   159f2:	fee6ae23          	sw	a4,-4(a3)
   159f6:	fd17f7e3          	bgeu	a5,a7,159c4 <__lshift+0xd0>
   159fa:	4398                	lw	a4,0(a5)
   159fc:	0791                	addi	a5,a5,4
   159fe:	0691                	addi	a3,a3,4
   15a00:	fee6ae23          	sw	a4,-4(a3)
   15a04:	ff17e4e3          	bltu	a5,a7,159ec <__lshift+0xf8>
   15a08:	bf75                	j	159c4 <__lshift+0xd0>
   15a0a:	66f1                	lui	a3,0x1c
   15a0c:	6575                	lui	a0,0x1d
   15a0e:	5f068693          	addi	a3,a3,1520 # 1c5f0 <zeroes.0+0x40>
   15a12:	4601                	li	a2,0
   15a14:	1d900593          	li	a1,473
   15a18:	8d850513          	addi	a0,a0,-1832 # 1c8d8 <ezero+0x30>
   15a1c:	25a030ef          	jal	ra,18c76 <__assert_func>

0000000000015a20 <__mcmp>:
   15a20:	49dc                	lw	a5,20(a1)
   15a22:	882a                	mv	a6,a0
   15a24:	4948                	lw	a0,20(a0)
   15a26:	9d1d                	subw	a0,a0,a5
   15a28:	e50d                	bnez	a0,15a52 <__mcmp+0x32>
   15a2a:	078a                	slli	a5,a5,0x2
   15a2c:	0861                	addi	a6,a6,24
   15a2e:	05e1                	addi	a1,a1,24
   15a30:	00f80733          	add	a4,a6,a5
   15a34:	97ae                	add	a5,a5,a1
   15a36:	a019                	j	15a3c <__mcmp+0x1c>
   15a38:	00e87d63          	bgeu	a6,a4,15a52 <__mcmp+0x32>
   15a3c:	ffc72603          	lw	a2,-4(a4)
   15a40:	ffc7a683          	lw	a3,-4(a5)
   15a44:	1771                	addi	a4,a4,-4
   15a46:	17f1                	addi	a5,a5,-4
   15a48:	fed608e3          	beq	a2,a3,15a38 <__mcmp+0x18>
   15a4c:	557d                	li	a0,-1
   15a4e:	00d67363          	bgeu	a2,a3,15a54 <__mcmp+0x34>
   15a52:	8082                	ret
   15a54:	4505                	li	a0,1
   15a56:	8082                	ret

0000000000015a58 <__mdiff>:
   15a58:	1101                	addi	sp,sp,-32
   15a5a:	4a5c                	lw	a5,20(a2)
   15a5c:	e04a                	sd	s2,0(sp)
   15a5e:	0145a903          	lw	s2,20(a1)
   15a62:	e822                	sd	s0,16(sp)
   15a64:	e426                	sd	s1,8(sp)
   15a66:	ec06                	sd	ra,24(sp)
   15a68:	40f9093b          	subw	s2,s2,a5
   15a6c:	84ae                	mv	s1,a1
   15a6e:	8432                	mv	s0,a2
   15a70:	14091163          	bnez	s2,15bb2 <__mdiff+0x15a>
   15a74:	00279693          	slli	a3,a5,0x2
   15a78:	05e1                	addi	a1,a1,24
   15a7a:	01860713          	addi	a4,a2,24
   15a7e:	00d587b3          	add	a5,a1,a3
   15a82:	9736                	add	a4,a4,a3
   15a84:	a019                	j	15a8a <__mdiff+0x32>
   15a86:	12f5fa63          	bgeu	a1,a5,15bba <__mdiff+0x162>
   15a8a:	ffc7a603          	lw	a2,-4(a5)
   15a8e:	ffc72683          	lw	a3,-4(a4)
   15a92:	17f1                	addi	a5,a5,-4
   15a94:	1771                	addi	a4,a4,-4
   15a96:	fed608e3          	beq	a2,a3,15a86 <__mdiff+0x2e>
   15a9a:	10d66763          	bltu	a2,a3,15ba8 <__mdiff+0x150>
   15a9e:	448c                	lw	a1,8(s1)
   15aa0:	849ff0ef          	jal	ra,152e8 <_Balloc>
   15aa4:	12050963          	beqz	a0,15bd6 <__mdiff+0x17e>
   15aa8:	0144a303          	lw	t1,20(s1)
   15aac:	01442f83          	lw	t6,20(s0)
   15ab0:	04e1                	addi	s1,s1,24
   15ab2:	00231e13          	slli	t3,t1,0x2
   15ab6:	01840813          	addi	a6,s0,24
   15aba:	0f8a                	slli	t6,t6,0x2
   15abc:	01850593          	addi	a1,a0,24
   15ac0:	6ec1                	lui	t4,0x10
   15ac2:	01252823          	sw	s2,16(a0)
   15ac6:	9e26                	add	t3,t3,s1
   15ac8:	9fc2                	add	t6,t6,a6
   15aca:	862e                	mv	a2,a1
   15acc:	8f26                	mv	t5,s1
   15ace:	4881                	li	a7,0
   15ad0:	1efd                	addi	t4,t4,-1 # ffff <exit-0xe9>
   15ad2:	000f2703          	lw	a4,0(t5)
   15ad6:	00082683          	lw	a3,0(a6)
   15ada:	0611                	addi	a2,a2,4
   15adc:	01d777b3          	and	a5,a4,t4
   15ae0:	011787bb          	addw	a5,a5,a7
   15ae4:	01d6f8b3          	and	a7,a3,t4
   15ae8:	411787bb          	subw	a5,a5,a7
   15aec:	0106d69b          	srliw	a3,a3,0x10
   15af0:	0107571b          	srliw	a4,a4,0x10
   15af4:	9f15                	subw	a4,a4,a3
   15af6:	4107d69b          	sraiw	a3,a5,0x10
   15afa:	9f35                	addw	a4,a4,a3
   15afc:	0107169b          	slliw	a3,a4,0x10
   15b00:	01d7f7b3          	and	a5,a5,t4
   15b04:	8fd5                	or	a5,a5,a3
   15b06:	2781                	sext.w	a5,a5
   15b08:	0811                	addi	a6,a6,4
   15b0a:	fef62e23          	sw	a5,-4(a2)
   15b0e:	0f11                	addi	t5,t5,4
   15b10:	4107589b          	sraiw	a7,a4,0x10
   15b14:	fbf86fe3          	bltu	a6,t6,15ad2 <__mdiff+0x7a>
   15b18:	408f86b3          	sub	a3,t6,s0
   15b1c:	169d                	addi	a3,a3,-25
   15b1e:	0465                	addi	s0,s0,25
   15b20:	8289                	srli	a3,a3,0x2
   15b22:	4701                	li	a4,0
   15b24:	008fe463          	bltu	t6,s0,15b2c <__mdiff+0xd4>
   15b28:	00269713          	slli	a4,a3,0x2
   15b2c:	972e                	add	a4,a4,a1
   15b2e:	4611                	li	a2,4
   15b30:	008fe563          	bltu	t6,s0,15b3a <__mdiff+0xe2>
   15b34:	0685                	addi	a3,a3,1
   15b36:	00269613          	slli	a2,a3,0x2
   15b3a:	94b2                	add	s1,s1,a2
   15b3c:	00c58eb3          	add	t4,a1,a2
   15b40:	05c4f663          	bgeu	s1,t3,15b8c <__mdiff+0x134>
   15b44:	65c1                	lui	a1,0x10
   15b46:	8676                	mv	a2,t4
   15b48:	86a6                	mv	a3,s1
   15b4a:	15fd                	addi	a1,a1,-1 # ffff <exit-0xe9>
   15b4c:	4298                	lw	a4,0(a3)
   15b4e:	0611                	addi	a2,a2,4
   15b50:	0691                	addi	a3,a3,4
   15b52:	00b777b3          	and	a5,a4,a1
   15b56:	011787bb          	addw	a5,a5,a7
   15b5a:	4107d81b          	sraiw	a6,a5,0x10
   15b5e:	0107571b          	srliw	a4,a4,0x10
   15b62:	0107073b          	addw	a4,a4,a6
   15b66:	0107181b          	slliw	a6,a4,0x10
   15b6a:	8fed                	and	a5,a5,a1
   15b6c:	0107e7b3          	or	a5,a5,a6
   15b70:	2781                	sext.w	a5,a5
   15b72:	fef62e23          	sw	a5,-4(a2)
   15b76:	4107589b          	sraiw	a7,a4,0x10
   15b7a:	fdc6e9e3          	bltu	a3,t3,15b4c <__mdiff+0xf4>
   15b7e:	1e7d                	addi	t3,t3,-1
   15b80:	409e0e33          	sub	t3,t3,s1
   15b84:	ffce7e13          	andi	t3,t3,-4
   15b88:	01ce8733          	add	a4,t4,t3
   15b8c:	e791                	bnez	a5,15b98 <__mdiff+0x140>
   15b8e:	ffc72783          	lw	a5,-4(a4)
   15b92:	337d                	addiw	t1,t1,-1
   15b94:	1771                	addi	a4,a4,-4
   15b96:	dfe5                	beqz	a5,15b8e <__mdiff+0x136>
   15b98:	60e2                	ld	ra,24(sp)
   15b9a:	6442                	ld	s0,16(sp)
   15b9c:	00652a23          	sw	t1,20(a0)
   15ba0:	64a2                	ld	s1,8(sp)
   15ba2:	6902                	ld	s2,0(sp)
   15ba4:	6105                	addi	sp,sp,32
   15ba6:	8082                	ret
   15ba8:	87a6                	mv	a5,s1
   15baa:	4905                	li	s2,1
   15bac:	84a2                	mv	s1,s0
   15bae:	843e                	mv	s0,a5
   15bb0:	b5fd                	j	15a9e <__mdiff+0x46>
   15bb2:	fe094be3          	bltz	s2,15ba8 <__mdiff+0x150>
   15bb6:	4901                	li	s2,0
   15bb8:	b5dd                	j	15a9e <__mdiff+0x46>
   15bba:	4581                	li	a1,0
   15bbc:	f2cff0ef          	jal	ra,152e8 <_Balloc>
   15bc0:	c515                	beqz	a0,15bec <__mdiff+0x194>
   15bc2:	60e2                	ld	ra,24(sp)
   15bc4:	6442                	ld	s0,16(sp)
   15bc6:	4785                	li	a5,1
   15bc8:	c95c                	sw	a5,20(a0)
   15bca:	00052c23          	sw	zero,24(a0)
   15bce:	64a2                	ld	s1,8(sp)
   15bd0:	6902                	ld	s2,0(sp)
   15bd2:	6105                	addi	sp,sp,32
   15bd4:	8082                	ret
   15bd6:	66f1                	lui	a3,0x1c
   15bd8:	6575                	lui	a0,0x1d
   15bda:	5f068693          	addi	a3,a3,1520 # 1c5f0 <zeroes.0+0x40>
   15bde:	4601                	li	a2,0
   15be0:	24000593          	li	a1,576
   15be4:	8d850513          	addi	a0,a0,-1832 # 1c8d8 <ezero+0x30>
   15be8:	08e030ef          	jal	ra,18c76 <__assert_func>
   15bec:	66f1                	lui	a3,0x1c
   15bee:	6575                	lui	a0,0x1d
   15bf0:	5f068693          	addi	a3,a3,1520 # 1c5f0 <zeroes.0+0x40>
   15bf4:	4601                	li	a2,0
   15bf6:	23200593          	li	a1,562
   15bfa:	8d850513          	addi	a0,a0,-1832 # 1c8d8 <ezero+0x30>
   15bfe:	078030ef          	jal	ra,18c76 <__assert_func>

0000000000015c02 <__ulp>:
   15c02:	e20507d3          	fmv.x.d	a5,fa0
   15c06:	7ff00737          	lui	a4,0x7ff00
   15c0a:	4681                	li	a3,0
   15c0c:	9381                	srli	a5,a5,0x20
   15c0e:	8ff9                	and	a5,a5,a4
   15c10:	fcc00737          	lui	a4,0xfcc00
   15c14:	9fb9                	addw	a5,a5,a4
   15c16:	00f05963          	blez	a5,15c28 <__ulp+0x26>
   15c1a:	1682                	slli	a3,a3,0x20
   15c1c:	9281                	srli	a3,a3,0x20
   15c1e:	1782                	slli	a5,a5,0x20
   15c20:	8fd5                	or	a5,a5,a3
   15c22:	f2078553          	fmv.d.x	fa0,a5
   15c26:	8082                	ret
   15c28:	40f0073b          	negw	a4,a5
   15c2c:	4147569b          	sraiw	a3,a4,0x14
   15c30:	47cd                	li	a5,19
   15c32:	00d7ce63          	blt	a5,a3,15c4e <__ulp+0x4c>
   15c36:	000807b7          	lui	a5,0x80
   15c3a:	40d7d7bb          	sraw	a5,a5,a3
   15c3e:	4681                	li	a3,0
   15c40:	1682                	slli	a3,a3,0x20
   15c42:	9281                	srli	a3,a3,0x20
   15c44:	1782                	slli	a5,a5,0x20
   15c46:	8fd5                	or	a5,a5,a3
   15c48:	f2078553          	fmv.d.x	fa0,a5
   15c4c:	8082                	ret
   15c4e:	fec6871b          	addiw	a4,a3,-20
   15c52:	47f9                	li	a5,30
   15c54:	4685                	li	a3,1
   15c56:	00e7c663          	blt	a5,a4,15c62 <__ulp+0x60>
   15c5a:	800006b7          	lui	a3,0x80000
   15c5e:	00e6d6bb          	srlw	a3,a3,a4
   15c62:	4781                	li	a5,0
   15c64:	1682                	slli	a3,a3,0x20
   15c66:	9281                	srli	a3,a3,0x20
   15c68:	1782                	slli	a5,a5,0x20
   15c6a:	8fd5                	or	a5,a5,a3
   15c6c:	f2078553          	fmv.d.x	fa0,a5
   15c70:	8082                	ret

0000000000015c72 <__b2d>:
   15c72:	7179                	addi	sp,sp,-48
   15c74:	ec26                	sd	s1,24(sp)
   15c76:	4944                	lw	s1,20(a0)
   15c78:	f022                	sd	s0,32(sp)
   15c7a:	01850413          	addi	s0,a0,24
   15c7e:	048a                	slli	s1,s1,0x2
   15c80:	94a2                	add	s1,s1,s0
   15c82:	e84a                	sd	s2,16(sp)
   15c84:	ffc4a903          	lw	s2,-4(s1)
   15c88:	e44e                	sd	s3,8(sp)
   15c8a:	e052                	sd	s4,0(sp)
   15c8c:	854a                	mv	a0,s2
   15c8e:	89ae                	mv	s3,a1
   15c90:	f406                	sd	ra,40(sp)
   15c92:	897ff0ef          	jal	ra,15528 <__hi0bits>
   15c96:	02000793          	li	a5,32
   15c9a:	40a7873b          	subw	a4,a5,a0
   15c9e:	00e9a023          	sw	a4,0(s3)
   15ca2:	4729                	li	a4,10
   15ca4:	ffc48a13          	addi	s4,s1,-4
   15ca8:	06a75d63          	bge	a4,a0,15d22 <__b2d+0xb0>
   15cac:	ff55061b          	addiw	a2,a0,-11
   15cb0:	05447263          	bgeu	s0,s4,15cf4 <__b2d+0x82>
   15cb4:	ff84a703          	lw	a4,-8(s1)
   15cb8:	c221                	beqz	a2,15cf8 <__b2d+0x86>
   15cba:	40c786bb          	subw	a3,a5,a2
   15cbe:	00d757bb          	srlw	a5,a4,a3
   15cc2:	00c9193b          	sllw	s2,s2,a2
   15cc6:	00f96933          	or	s2,s2,a5
   15cca:	3ff007b7          	lui	a5,0x3ff00
   15cce:	00f96933          	or	s2,s2,a5
   15cd2:	00c7163b          	sllw	a2,a4,a2
   15cd6:	ff848593          	addi	a1,s1,-8
   15cda:	02091793          	slli	a5,s2,0x20
   15cde:	0006071b          	sext.w	a4,a2
   15ce2:	02b47163          	bgeu	s0,a1,15d04 <__b2d+0x92>
   15ce6:	ff44a703          	lw	a4,-12(s1)
   15cea:	00d7573b          	srlw	a4,a4,a3
   15cee:	8f51                	or	a4,a4,a2
   15cf0:	2701                	sext.w	a4,a4
   15cf2:	a809                	j	15d04 <__b2d+0x92>
   15cf4:	4701                	li	a4,0
   15cf6:	ee21                	bnez	a2,15d4e <__b2d+0xdc>
   15cf8:	3ff007b7          	lui	a5,0x3ff00
   15cfc:	00f96933          	or	s2,s2,a5
   15d00:	02091793          	slli	a5,s2,0x20
   15d04:	70a2                	ld	ra,40(sp)
   15d06:	7402                	ld	s0,32(sp)
   15d08:	9381                	srli	a5,a5,0x20
   15d0a:	1702                	slli	a4,a4,0x20
   15d0c:	9301                	srli	a4,a4,0x20
   15d0e:	1782                	slli	a5,a5,0x20
   15d10:	8fd9                	or	a5,a5,a4
   15d12:	64e2                	ld	s1,24(sp)
   15d14:	6942                	ld	s2,16(sp)
   15d16:	69a2                	ld	s3,8(sp)
   15d18:	6a02                	ld	s4,0(sp)
   15d1a:	f2078553          	fmv.d.x	fa0,a5
   15d1e:	6145                	addi	sp,sp,48
   15d20:	8082                	ret
   15d22:	46ad                	li	a3,11
   15d24:	9e89                	subw	a3,a3,a0
   15d26:	3ff00737          	lui	a4,0x3ff00
   15d2a:	00d957bb          	srlw	a5,s2,a3
   15d2e:	8fd9                	or	a5,a5,a4
   15d30:	1782                	slli	a5,a5,0x20
   15d32:	4701                	li	a4,0
   15d34:	01447663          	bgeu	s0,s4,15d40 <__b2d+0xce>
   15d38:	ff84a703          	lw	a4,-8(s1)
   15d3c:	00d7573b          	srlw	a4,a4,a3
   15d40:	2555                	addiw	a0,a0,21
   15d42:	00a9193b          	sllw	s2,s2,a0
   15d46:	01276733          	or	a4,a4,s2
   15d4a:	2701                	sext.w	a4,a4
   15d4c:	bf65                	j	15d04 <__b2d+0x92>
   15d4e:	3ff007b7          	lui	a5,0x3ff00
   15d52:	00c9193b          	sllw	s2,s2,a2
   15d56:	00f96933          	or	s2,s2,a5
   15d5a:	02091793          	slli	a5,s2,0x20
   15d5e:	4701                	li	a4,0
   15d60:	b755                	j	15d04 <__b2d+0x92>

0000000000015d62 <__d2b>:
   15d62:	7139                	addi	sp,sp,-64
   15d64:	e852                	sd	s4,16(sp)
   15d66:	8a2e                	mv	s4,a1
   15d68:	4585                	li	a1,1
   15d6a:	f822                	sd	s0,48(sp)
   15d6c:	f04a                	sd	s2,32(sp)
   15d6e:	fc06                	sd	ra,56(sp)
   15d70:	f426                	sd	s1,40(sp)
   15d72:	ec4e                	sd	s3,24(sp)
   15d74:	e2050453          	fmv.x.d	s0,fa0
   15d78:	8932                	mv	s2,a2
   15d7a:	d6eff0ef          	jal	ra,152e8 <_Balloc>
   15d7e:	cd5d                	beqz	a0,15e3c <__d2b+0xda>
   15d80:	42045793          	srai	a5,s0,0x20
   15d84:	0147d99b          	srliw	s3,a5,0x14
   15d88:	7ff9f993          	andi	s3,s3,2047
   15d8c:	17b2                	slli	a5,a5,0x2c
   15d8e:	84aa                	mv	s1,a0
   15d90:	93b1                	srli	a5,a5,0x2c
   15d92:	00098563          	beqz	s3,15d9c <__d2b+0x3a>
   15d96:	00100737          	lui	a4,0x100
   15d9a:	8fd9                	or	a5,a5,a4
   15d9c:	c63e                	sw	a5,12(sp)
   15d9e:	2401                	sext.w	s0,s0
   15da0:	e029                	bnez	s0,15de2 <__d2b+0x80>
   15da2:	0068                	addi	a0,sp,12
   15da4:	fd2ff0ef          	jal	ra,15576 <__lo0bits>
   15da8:	47b2                	lw	a5,12(sp)
   15daa:	4405                	li	s0,1
   15dac:	c8c0                	sw	s0,20(s1)
   15dae:	cc9c                	sw	a5,24(s1)
   15db0:	0205051b          	addiw	a0,a0,32
   15db4:	06098263          	beqz	s3,15e18 <__d2b+0xb6>
   15db8:	bcd9899b          	addiw	s3,s3,-1075
   15dbc:	00a989bb          	addw	s3,s3,a0
   15dc0:	03500413          	li	s0,53
   15dc4:	013a2023          	sw	s3,0(s4)
   15dc8:	40a4053b          	subw	a0,s0,a0
   15dcc:	70e2                	ld	ra,56(sp)
   15dce:	7442                	ld	s0,48(sp)
   15dd0:	00a92023          	sw	a0,0(s2)
   15dd4:	69e2                	ld	s3,24(sp)
   15dd6:	7902                	ld	s2,32(sp)
   15dd8:	6a42                	ld	s4,16(sp)
   15dda:	8526                	mv	a0,s1
   15ddc:	74a2                	ld	s1,40(sp)
   15dde:	6121                	addi	sp,sp,64
   15de0:	8082                	ret
   15de2:	0028                	addi	a0,sp,8
   15de4:	c422                	sw	s0,8(sp)
   15de6:	f90ff0ef          	jal	ra,15576 <__lo0bits>
   15dea:	47b2                	lw	a5,12(sp)
   15dec:	c529                	beqz	a0,15e36 <__d2b+0xd4>
   15dee:	46a2                	lw	a3,8(sp)
   15df0:	02000713          	li	a4,32
   15df4:	9f09                	subw	a4,a4,a0
   15df6:	00e7973b          	sllw	a4,a5,a4
   15dfa:	00a7d63b          	srlw	a2,a5,a0
   15dfe:	00e6e7b3          	or	a5,a3,a4
   15e02:	cc9c                	sw	a5,24(s1)
   15e04:	c632                	sw	a2,12(sp)
   15e06:	0006079b          	sext.w	a5,a2
   15e0a:	00f03433          	snez	s0,a5
   15e0e:	0405                	addi	s0,s0,1
   15e10:	ccdc                	sw	a5,28(s1)
   15e12:	c8c0                	sw	s0,20(s1)
   15e14:	fa0992e3          	bnez	s3,15db8 <__d2b+0x56>
   15e18:	bce5051b          	addiw	a0,a0,-1074
   15e1c:	00241793          	slli	a5,s0,0x2
   15e20:	00aa2023          	sw	a0,0(s4)
   15e24:	97a6                	add	a5,a5,s1
   15e26:	4bc8                	lw	a0,20(a5)
   15e28:	0054141b          	slliw	s0,s0,0x5
   15e2c:	efcff0ef          	jal	ra,15528 <__hi0bits>
   15e30:	40a4053b          	subw	a0,s0,a0
   15e34:	bf61                	j	15dcc <__d2b+0x6a>
   15e36:	4722                	lw	a4,8(sp)
   15e38:	cc98                	sw	a4,24(s1)
   15e3a:	bfc1                	j	15e0a <__d2b+0xa8>
   15e3c:	66f1                	lui	a3,0x1c
   15e3e:	6575                	lui	a0,0x1d
   15e40:	5f068693          	addi	a3,a3,1520 # 1c5f0 <zeroes.0+0x40>
   15e44:	4601                	li	a2,0
   15e46:	30a00593          	li	a1,778
   15e4a:	8d850513          	addi	a0,a0,-1832 # 1c8d8 <ezero+0x30>
   15e4e:	629020ef          	jal	ra,18c76 <__assert_func>

0000000000015e52 <__ratio>:
   15e52:	7179                	addi	sp,sp,-48
   15e54:	ec26                	sd	s1,24(sp)
   15e56:	84ae                	mv	s1,a1
   15e58:	002c                	addi	a1,sp,8
   15e5a:	f406                	sd	ra,40(sp)
   15e5c:	f022                	sd	s0,32(sp)
   15e5e:	e84a                	sd	s2,16(sp)
   15e60:	892a                	mv	s2,a0
   15e62:	e11ff0ef          	jal	ra,15c72 <__b2d>
   15e66:	006c                	addi	a1,sp,12
   15e68:	8526                	mv	a0,s1
   15e6a:	e2050453          	fmv.x.d	s0,fa0
   15e6e:	e05ff0ef          	jal	ra,15c72 <__b2d>
   15e72:	01492783          	lw	a5,20(s2)
   15e76:	48d0                	lw	a2,20(s1)
   15e78:	46b2                	lw	a3,12(sp)
   15e7a:	4722                	lw	a4,8(sp)
   15e7c:	9f91                	subw	a5,a5,a2
   15e7e:	0057979b          	slliw	a5,a5,0x5
   15e82:	9f15                	subw	a4,a4,a3
   15e84:	00e786bb          	addw	a3,a5,a4
   15e88:	87b6                	mv	a5,a3
   15e8a:	e2050753          	fmv.x.d	a4,fa0
   15e8e:	02d05963          	blez	a3,15ec0 <__ratio+0x6e>
   15e92:	02045693          	srli	a3,s0,0x20
   15e96:	0147979b          	slliw	a5,a5,0x14
   15e9a:	9fb5                	addw	a5,a5,a3
   15e9c:	56fd                	li	a3,-1
   15e9e:	9281                	srli	a3,a3,0x20
   15ea0:	1782                	slli	a5,a5,0x20
   15ea2:	8ee1                	and	a3,a3,s0
   15ea4:	00f6e433          	or	s0,a3,a5
   15ea8:	f20407d3          	fmv.d.x	fa5,s0
   15eac:	70a2                	ld	ra,40(sp)
   15eae:	7402                	ld	s0,32(sp)
   15eb0:	f2070753          	fmv.d.x	fa4,a4
   15eb4:	64e2                	ld	s1,24(sp)
   15eb6:	6942                	ld	s2,16(sp)
   15eb8:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   15ebc:	6145                	addi	sp,sp,48
   15ebe:	8082                	ret
   15ec0:	02075693          	srli	a3,a4,0x20
   15ec4:	0147979b          	slliw	a5,a5,0x14
   15ec8:	40f687bb          	subw	a5,a3,a5
   15ecc:	56fd                	li	a3,-1
   15ece:	9281                	srli	a3,a3,0x20
   15ed0:	1782                	slli	a5,a5,0x20
   15ed2:	8f75                	and	a4,a4,a3
   15ed4:	8f5d                	or	a4,a4,a5
   15ed6:	bfc9                	j	15ea8 <__ratio+0x56>

0000000000015ed8 <_mprec_log10>:
   15ed8:	47dd                	li	a5,23
   15eda:	00a7db63          	bge	a5,a0,15ef0 <_mprec_log10+0x18>
   15ede:	7281b507          	fld	fa0,1832(gp) # 1f2f8 <__SDATA_BEGIN__+0x10>
   15ee2:	7301b787          	fld	fa5,1840(gp) # 1f300 <__SDATA_BEGIN__+0x18>
   15ee6:	357d                	addiw	a0,a0,-1
   15ee8:	12f57553          	fmul.d	fa0,fa0,fa5
   15eec:	fd6d                	bnez	a0,15ee6 <_mprec_log10+0xe>
   15eee:	8082                	ret
   15ef0:	67f5                	lui	a5,0x1d
   15ef2:	050e                	slli	a0,a0,0x3
   15ef4:	94878793          	addi	a5,a5,-1720 # 1c948 <__mprec_tens>
   15ef8:	97aa                	add	a5,a5,a0
   15efa:	2388                	fld	fa0,0(a5)
   15efc:	8082                	ret

0000000000015efe <__copybits>:
   15efe:	4a54                	lw	a3,20(a2)
   15f00:	35fd                	addiw	a1,a1,-1
   15f02:	4055d59b          	sraiw	a1,a1,0x5
   15f06:	2585                	addiw	a1,a1,1
   15f08:	01860793          	addi	a5,a2,24
   15f0c:	068a                	slli	a3,a3,0x2
   15f0e:	058a                	slli	a1,a1,0x2
   15f10:	96be                	add	a3,a3,a5
   15f12:	95aa                	add	a1,a1,a0
   15f14:	02d7f163          	bgeu	a5,a3,15f36 <__copybits+0x38>
   15f18:	872a                	mv	a4,a0
   15f1a:	0007a803          	lw	a6,0(a5)
   15f1e:	0791                	addi	a5,a5,4
   15f20:	0711                	addi	a4,a4,4 # 100004 <__BSS_END__+0xe0c34>
   15f22:	ff072e23          	sw	a6,-4(a4)
   15f26:	fed7eae3          	bltu	a5,a3,15f1a <__copybits+0x1c>
   15f2a:	40c687b3          	sub	a5,a3,a2
   15f2e:	179d                	addi	a5,a5,-25
   15f30:	9bf1                	andi	a5,a5,-4
   15f32:	0791                	addi	a5,a5,4
   15f34:	953e                	add	a0,a0,a5
   15f36:	00b57763          	bgeu	a0,a1,15f44 <__copybits+0x46>
   15f3a:	0511                	addi	a0,a0,4
   15f3c:	fe052e23          	sw	zero,-4(a0)
   15f40:	feb56de3          	bltu	a0,a1,15f3a <__copybits+0x3c>
   15f44:	8082                	ret

0000000000015f46 <__any_on>:
   15f46:	4958                	lw	a4,20(a0)
   15f48:	4055d613          	srai	a2,a1,0x5
   15f4c:	01850693          	addi	a3,a0,24
   15f50:	00c75d63          	bge	a4,a2,15f6a <__any_on+0x24>
   15f54:	070a                	slli	a4,a4,0x2
   15f56:	00e687b3          	add	a5,a3,a4
   15f5a:	02f6f863          	bgeu	a3,a5,15f8a <__any_on+0x44>
   15f5e:	ffc7a703          	lw	a4,-4(a5)
   15f62:	17f1                	addi	a5,a5,-4
   15f64:	db7d                	beqz	a4,15f5a <__any_on+0x14>
   15f66:	4505                	li	a0,1
   15f68:	8082                	ret
   15f6a:	00261793          	slli	a5,a2,0x2
   15f6e:	97b6                	add	a5,a5,a3
   15f70:	fee655e3          	bge	a2,a4,15f5a <__any_on+0x14>
   15f74:	89fd                	andi	a1,a1,31
   15f76:	d1f5                	beqz	a1,15f5a <__any_on+0x14>
   15f78:	4390                	lw	a2,0(a5)
   15f7a:	4505                	li	a0,1
   15f7c:	00b6573b          	srlw	a4,a2,a1
   15f80:	00b7173b          	sllw	a4,a4,a1
   15f84:	fcc70be3          	beq	a4,a2,15f5a <__any_on+0x14>
   15f88:	8082                	ret
   15f8a:	4501                	li	a0,0
   15f8c:	8082                	ret

0000000000015f8e <_sbrk_r>:
   15f8e:	1101                	addi	sp,sp,-32
   15f90:	e822                	sd	s0,16(sp)
   15f92:	e426                	sd	s1,8(sp)
   15f94:	842a                	mv	s0,a0
   15f96:	852e                	mv	a0,a1
   15f98:	ec06                	sd	ra,24(sp)
   15f9a:	7801a823          	sw	zero,1936(gp) # 1f360 <errno>
   15f9e:	5ef040ef          	jal	ra,1ad8c <_sbrk>
   15fa2:	57fd                	li	a5,-1
   15fa4:	00f50763          	beq	a0,a5,15fb2 <_sbrk_r+0x24>
   15fa8:	60e2                	ld	ra,24(sp)
   15faa:	6442                	ld	s0,16(sp)
   15fac:	64a2                	ld	s1,8(sp)
   15fae:	6105                	addi	sp,sp,32
   15fb0:	8082                	ret
   15fb2:	7901a783          	lw	a5,1936(gp) # 1f360 <errno>
   15fb6:	dbed                	beqz	a5,15fa8 <_sbrk_r+0x1a>
   15fb8:	60e2                	ld	ra,24(sp)
   15fba:	c01c                	sw	a5,0(s0)
   15fbc:	6442                	ld	s0,16(sp)
   15fbe:	64a2                	ld	s1,8(sp)
   15fc0:	6105                	addi	sp,sp,32
   15fc2:	8082                	ret

0000000000015fc4 <frexp>:
   15fc4:	e20507d3          	fmv.x.d	a5,fa0
   15fc8:	80000637          	lui	a2,0x80000
   15fcc:	fff64613          	not	a2,a2
   15fd0:	4207d593          	srai	a1,a5,0x20
   15fd4:	00c5f733          	and	a4,a1,a2
   15fd8:	00052023          	sw	zero,0(a0)
   15fdc:	7ff00837          	lui	a6,0x7ff00
   15fe0:	86ae                	mv	a3,a1
   15fe2:	05075c63          	bge	a4,a6,1603a <frexp+0x76>
   15fe6:	00f76833          	or	a6,a4,a5
   15fea:	2801                	sext.w	a6,a6
   15fec:	04080763          	beqz	a6,1603a <frexp+0x76>
   15ff0:	7ff00837          	lui	a6,0x7ff00
   15ff4:	0105f5b3          	and	a1,a1,a6
   15ff8:	4801                	li	a6,0
   15ffa:	ed89                	bnez	a1,16014 <frexp+0x50>
   15ffc:	7381b787          	fld	fa5,1848(gp) # 1f308 <__SDATA_BEGIN__+0x20>
   16000:	fca00813          	li	a6,-54
   16004:	12f577d3          	fmul.d	fa5,fa0,fa5
   16008:	e20787d3          	fmv.x.d	a5,fa5
   1600c:	4207d693          	srai	a3,a5,0x20
   16010:	00c6f733          	and	a4,a3,a2
   16014:	80100637          	lui	a2,0x80100
   16018:	167d                	addi	a2,a2,-1 # ffffffff800fffff <__BSS_END__+0xffffffff800e0c2f>
   1601a:	8ef1                	and	a3,a3,a2
   1601c:	3fe00637          	lui	a2,0x3fe00
   16020:	8ed1                	or	a3,a3,a2
   16022:	4147571b          	sraiw	a4,a4,0x14
   16026:	567d                	li	a2,-1
   16028:	c027071b          	addiw	a4,a4,-1022
   1602c:	9201                	srli	a2,a2,0x20
   1602e:	0107073b          	addw	a4,a4,a6
   16032:	1682                	slli	a3,a3,0x20
   16034:	8ff1                	and	a5,a5,a2
   16036:	c118                	sw	a4,0(a0)
   16038:	8fd5                	or	a5,a5,a3
   1603a:	f2078553          	fmv.d.x	fa0,a5
   1603e:	8082                	ret

0000000000016040 <_sprintf_r>:
   16040:	7111                	addi	sp,sp,-256
   16042:	0d810e93          	addi	t4,sp,216
   16046:	f5be                	sd	a5,232(sp)
   16048:	80000337          	lui	t1,0x80000
   1604c:	77c1                	lui	a5,0xffff0
   1604e:	8e2e                	mv	t3,a1
   16050:	fff34313          	not	t1,t1
   16054:	edb6                	sd	a3,216(sp)
   16056:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffd0e38>
   1605a:	080c                	addi	a1,sp,16
   1605c:	86f6                	mv	a3,t4
   1605e:	e586                	sd	ra,200(sp)
   16060:	d03e                	sw	a5,32(sp)
   16062:	f1ba                	sd	a4,224(sp)
   16064:	f9c2                	sd	a6,240(sp)
   16066:	fdc6                	sd	a7,248(sp)
   16068:	e872                	sd	t3,16(sp)
   1606a:	f472                	sd	t3,40(sp)
   1606c:	d81a                	sw	t1,48(sp)
   1606e:	ce1a                	sw	t1,28(sp)
   16070:	e476                	sd	t4,8(sp)
   16072:	3bc000ef          	jal	ra,1642e <_svfprintf_r>
   16076:	67c2                	ld	a5,16(sp)
   16078:	00078023          	sb	zero,0(a5)
   1607c:	60ae                	ld	ra,200(sp)
   1607e:	6111                	addi	sp,sp,256
   16080:	8082                	ret

0000000000016082 <sprintf>:
   16082:	8e2a                	mv	t3,a0
   16084:	7111                	addi	sp,sp,-256
   16086:	7581b503          	ld	a0,1880(gp) # 1f328 <_impure_ptr>
   1608a:	0d010e93          	addi	t4,sp,208
   1608e:	f5be                	sd	a5,232(sp)
   16090:	80000337          	lui	t1,0x80000
   16094:	77c1                	lui	a5,0xffff0
   16096:	fff34313          	not	t1,t1
   1609a:	e9b2                	sd	a2,208(sp)
   1609c:	edb6                	sd	a3,216(sp)
   1609e:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffd0e38>
   160a2:	862e                	mv	a2,a1
   160a4:	86f6                	mv	a3,t4
   160a6:	080c                	addi	a1,sp,16
   160a8:	e586                	sd	ra,200(sp)
   160aa:	d03e                	sw	a5,32(sp)
   160ac:	f1ba                	sd	a4,224(sp)
   160ae:	f9c2                	sd	a6,240(sp)
   160b0:	fdc6                	sd	a7,248(sp)
   160b2:	e872                	sd	t3,16(sp)
   160b4:	f472                	sd	t3,40(sp)
   160b6:	d81a                	sw	t1,48(sp)
   160b8:	ce1a                	sw	t1,28(sp)
   160ba:	e476                	sd	t4,8(sp)
   160bc:	372000ef          	jal	ra,1642e <_svfprintf_r>
   160c0:	67c2                	ld	a5,16(sp)
   160c2:	00078023          	sb	zero,0(a5)
   160c6:	60ae                	ld	ra,200(sp)
   160c8:	6111                	addi	sp,sp,256
   160ca:	8082                	ret

00000000000160cc <__sread>:
   160cc:	1141                	addi	sp,sp,-16
   160ce:	e022                	sd	s0,0(sp)
   160d0:	842e                	mv	s0,a1
   160d2:	01259583          	lh	a1,18(a1)
   160d6:	e406                	sd	ra,8(sp)
   160d8:	4b0030ef          	jal	ra,19588 <_read_r>
   160dc:	00054963          	bltz	a0,160ee <__sread+0x22>
   160e0:	685c                	ld	a5,144(s0)
   160e2:	60a2                	ld	ra,8(sp)
   160e4:	97aa                	add	a5,a5,a0
   160e6:	e85c                	sd	a5,144(s0)
   160e8:	6402                	ld	s0,0(sp)
   160ea:	0141                	addi	sp,sp,16
   160ec:	8082                	ret
   160ee:	01045783          	lhu	a5,16(s0)
   160f2:	777d                	lui	a4,0xfffff
   160f4:	177d                	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdfc2f>
   160f6:	8ff9                	and	a5,a5,a4
   160f8:	60a2                	ld	ra,8(sp)
   160fa:	00f41823          	sh	a5,16(s0)
   160fe:	6402                	ld	s0,0(sp)
   16100:	0141                	addi	sp,sp,16
   16102:	8082                	ret

0000000000016104 <__seofread>:
   16104:	4501                	li	a0,0
   16106:	8082                	ret

0000000000016108 <__swrite>:
   16108:	01059783          	lh	a5,16(a1)
   1610c:	7179                	addi	sp,sp,-48
   1610e:	f022                	sd	s0,32(sp)
   16110:	ec26                	sd	s1,24(sp)
   16112:	e84a                	sd	s2,16(sp)
   16114:	e44e                	sd	s3,8(sp)
   16116:	f406                	sd	ra,40(sp)
   16118:	1007f713          	andi	a4,a5,256
   1611c:	842e                	mv	s0,a1
   1611e:	84aa                	mv	s1,a0
   16120:	8932                	mv	s2,a2
   16122:	89b6                	mv	s3,a3
   16124:	e31d                	bnez	a4,1614a <__swrite+0x42>
   16126:	777d                	lui	a4,0xfffff
   16128:	177d                	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdfc2f>
   1612a:	8ff9                	and	a5,a5,a4
   1612c:	01241583          	lh	a1,18(s0)
   16130:	00f41823          	sh	a5,16(s0)
   16134:	7402                	ld	s0,32(sp)
   16136:	70a2                	ld	ra,40(sp)
   16138:	86ce                	mv	a3,s3
   1613a:	864a                	mv	a2,s2
   1613c:	69a2                	ld	s3,8(sp)
   1613e:	6942                	ld	s2,16(sp)
   16140:	8526                	mv	a0,s1
   16142:	64e2                	ld	s1,24(sp)
   16144:	6145                	addi	sp,sp,48
   16146:	2f50206f          	j	18c3a <_write_r>
   1614a:	01259583          	lh	a1,18(a1)
   1614e:	4689                	li	a3,2
   16150:	4601                	li	a2,0
   16152:	23c030ef          	jal	ra,1938e <_lseek_r>
   16156:	01041783          	lh	a5,16(s0)
   1615a:	b7f1                	j	16126 <__swrite+0x1e>

000000000001615c <__sseek>:
   1615c:	1141                	addi	sp,sp,-16
   1615e:	e022                	sd	s0,0(sp)
   16160:	842e                	mv	s0,a1
   16162:	01259583          	lh	a1,18(a1)
   16166:	e406                	sd	ra,8(sp)
   16168:	226030ef          	jal	ra,1938e <_lseek_r>
   1616c:	57fd                	li	a5,-1
   1616e:	00f50d63          	beq	a0,a5,16188 <__sseek+0x2c>
   16172:	01045783          	lhu	a5,16(s0)
   16176:	6705                	lui	a4,0x1
   16178:	60a2                	ld	ra,8(sp)
   1617a:	8fd9                	or	a5,a5,a4
   1617c:	e848                	sd	a0,144(s0)
   1617e:	00f41823          	sh	a5,16(s0)
   16182:	6402                	ld	s0,0(sp)
   16184:	0141                	addi	sp,sp,16
   16186:	8082                	ret
   16188:	01045783          	lhu	a5,16(s0)
   1618c:	777d                	lui	a4,0xfffff
   1618e:	177d                	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdfc2f>
   16190:	8ff9                	and	a5,a5,a4
   16192:	60a2                	ld	ra,8(sp)
   16194:	00f41823          	sh	a5,16(s0)
   16198:	6402                	ld	s0,0(sp)
   1619a:	0141                	addi	sp,sp,16
   1619c:	8082                	ret

000000000001619e <__sclose>:
   1619e:	01259583          	lh	a1,18(a1)
   161a2:	3d50206f          	j	18d76 <_close_r>

00000000000161a6 <strcmp>:
   161a6:	00b56733          	or	a4,a0,a1
   161aa:	53fd                	li	t2,-1
   161ac:	8b1d                	andi	a4,a4,7
   161ae:	eb4d                	bnez	a4,16260 <strcmp+0xba>
   161b0:	00009797          	auipc	a5,0x9
   161b4:	1607b783          	ld	a5,352(a5) # 1f310 <mask>
   161b8:	6110                	ld	a2,0(a0)
   161ba:	6194                	ld	a3,0(a1)
   161bc:	00f672b3          	and	t0,a2,a5
   161c0:	00f66333          	or	t1,a2,a5
   161c4:	92be                	add	t0,t0,a5
   161c6:	0062e2b3          	or	t0,t0,t1
   161ca:	0a729963          	bne	t0,t2,1627c <strcmp+0xd6>
   161ce:	02d61e63          	bne	a2,a3,1620a <strcmp+0x64>
   161d2:	6510                	ld	a2,8(a0)
   161d4:	6594                	ld	a3,8(a1)
   161d6:	00f672b3          	and	t0,a2,a5
   161da:	00f66333          	or	t1,a2,a5
   161de:	92be                	add	t0,t0,a5
   161e0:	0062e2b3          	or	t0,t0,t1
   161e4:	08729a63          	bne	t0,t2,16278 <strcmp+0xd2>
   161e8:	02d61163          	bne	a2,a3,1620a <strcmp+0x64>
   161ec:	6910                	ld	a2,16(a0)
   161ee:	6994                	ld	a3,16(a1)
   161f0:	00f672b3          	and	t0,a2,a5
   161f4:	00f66333          	or	t1,a2,a5
   161f8:	92be                	add	t0,t0,a5
   161fa:	0062e2b3          	or	t0,t0,t1
   161fe:	08729363          	bne	t0,t2,16284 <strcmp+0xde>
   16202:	0561                	addi	a0,a0,24
   16204:	05e1                	addi	a1,a1,24
   16206:	fad609e3          	beq	a2,a3,161b8 <strcmp+0x12>
   1620a:	03061713          	slli	a4,a2,0x30
   1620e:	03069793          	slli	a5,a3,0x30
   16212:	02f71863          	bne	a4,a5,16242 <strcmp+0x9c>
   16216:	02061713          	slli	a4,a2,0x20
   1621a:	02069793          	slli	a5,a3,0x20
   1621e:	02f71263          	bne	a4,a5,16242 <strcmp+0x9c>
   16222:	01061713          	slli	a4,a2,0x10
   16226:	01069793          	slli	a5,a3,0x10
   1622a:	00f71c63          	bne	a4,a5,16242 <strcmp+0x9c>
   1622e:	03065713          	srli	a4,a2,0x30
   16232:	0306d793          	srli	a5,a3,0x30
   16236:	40f70533          	sub	a0,a4,a5
   1623a:	0ff57593          	zext.b	a1,a0
   1623e:	e991                	bnez	a1,16252 <strcmp+0xac>
   16240:	8082                	ret
   16242:	9341                	srli	a4,a4,0x30
   16244:	93c1                	srli	a5,a5,0x30
   16246:	40f70533          	sub	a0,a4,a5
   1624a:	0ff57593          	zext.b	a1,a0
   1624e:	e191                	bnez	a1,16252 <strcmp+0xac>
   16250:	8082                	ret
   16252:	0ff77713          	zext.b	a4,a4
   16256:	0ff7f793          	zext.b	a5,a5
   1625a:	40f70533          	sub	a0,a4,a5
   1625e:	8082                	ret
   16260:	00054603          	lbu	a2,0(a0)
   16264:	0005c683          	lbu	a3,0(a1)
   16268:	0505                	addi	a0,a0,1
   1626a:	0585                	addi	a1,a1,1
   1626c:	00d61363          	bne	a2,a3,16272 <strcmp+0xcc>
   16270:	fa65                	bnez	a2,16260 <strcmp+0xba>
   16272:	40d60533          	sub	a0,a2,a3
   16276:	8082                	ret
   16278:	0521                	addi	a0,a0,8
   1627a:	05a1                	addi	a1,a1,8
   1627c:	fed612e3          	bne	a2,a3,16260 <strcmp+0xba>
   16280:	4501                	li	a0,0
   16282:	8082                	ret
   16284:	0541                	addi	a0,a0,16
   16286:	05c1                	addi	a1,a1,16
   16288:	fcd61ce3          	bne	a2,a3,16260 <strcmp+0xba>
   1628c:	4501                	li	a0,0
   1628e:	8082                	ret

0000000000016290 <strcpy>:
   16290:	00b567b3          	or	a5,a0,a1
   16294:	8b9d                	andi	a5,a5,7
   16296:	efad                	bnez	a5,16310 <strcpy+0x80>
   16298:	7401b683          	ld	a3,1856(gp) # 1f310 <mask>
   1629c:	6198                	ld	a4,0(a1)
   1629e:	567d                	li	a2,-1
   162a0:	00d777b3          	and	a5,a4,a3
   162a4:	97b6                	add	a5,a5,a3
   162a6:	8fd9                	or	a5,a5,a4
   162a8:	8fd5                	or	a5,a5,a3
   162aa:	06c79c63          	bne	a5,a2,16322 <strcpy+0x92>
   162ae:	862a                	mv	a2,a0
   162b0:	587d                	li	a6,-1
   162b2:	e218                	sd	a4,0(a2)
   162b4:	6598                	ld	a4,8(a1)
   162b6:	05a1                	addi	a1,a1,8
   162b8:	0621                	addi	a2,a2,8 # 3fe00008 <__BSS_END__+0x3fde0c38>
   162ba:	00d777b3          	and	a5,a4,a3
   162be:	97b6                	add	a5,a5,a3
   162c0:	8fd9                	or	a5,a5,a4
   162c2:	8fd5                	or	a5,a5,a3
   162c4:	ff0787e3          	beq	a5,a6,162b2 <strcpy+0x22>
   162c8:	0005c783          	lbu	a5,0(a1)
   162cc:	0015c703          	lbu	a4,1(a1)
   162d0:	0025c683          	lbu	a3,2(a1)
   162d4:	00f60023          	sb	a5,0(a2)
   162d8:	cb9d                	beqz	a5,1630e <strcpy+0x7e>
   162da:	00e600a3          	sb	a4,1(a2)
   162de:	cb05                	beqz	a4,1630e <strcpy+0x7e>
   162e0:	0035c783          	lbu	a5,3(a1)
   162e4:	00d60123          	sb	a3,2(a2)
   162e8:	c29d                	beqz	a3,1630e <strcpy+0x7e>
   162ea:	0045c703          	lbu	a4,4(a1)
   162ee:	00f601a3          	sb	a5,3(a2)
   162f2:	cf91                	beqz	a5,1630e <strcpy+0x7e>
   162f4:	0055c783          	lbu	a5,5(a1)
   162f8:	00e60223          	sb	a4,4(a2)
   162fc:	cb09                	beqz	a4,1630e <strcpy+0x7e>
   162fe:	0065c703          	lbu	a4,6(a1)
   16302:	00f602a3          	sb	a5,5(a2)
   16306:	c781                	beqz	a5,1630e <strcpy+0x7e>
   16308:	00e60323          	sb	a4,6(a2)
   1630c:	ef09                	bnez	a4,16326 <strcpy+0x96>
   1630e:	8082                	ret
   16310:	87aa                	mv	a5,a0
   16312:	0005c703          	lbu	a4,0(a1)
   16316:	0785                	addi	a5,a5,1
   16318:	0585                	addi	a1,a1,1
   1631a:	fee78fa3          	sb	a4,-1(a5)
   1631e:	fb75                	bnez	a4,16312 <strcpy+0x82>
   16320:	8082                	ret
   16322:	862a                	mv	a2,a0
   16324:	b755                	j	162c8 <strcpy+0x38>
   16326:	000603a3          	sb	zero,7(a2)
   1632a:	8082                	ret

000000000001632c <strlen>:
   1632c:	00757793          	andi	a5,a0,7
   16330:	872a                	mv	a4,a0
   16332:	eba9                	bnez	a5,16384 <strlen+0x58>
   16334:	7401b683          	ld	a3,1856(gp) # 1f310 <mask>
   16338:	55fd                	li	a1,-1
   1633a:	6310                	ld	a2,0(a4)
   1633c:	0721                	addi	a4,a4,8
   1633e:	00d677b3          	and	a5,a2,a3
   16342:	97b6                	add	a5,a5,a3
   16344:	8fd1                	or	a5,a5,a2
   16346:	8fd5                	or	a5,a5,a3
   16348:	feb789e3          	beq	a5,a1,1633a <strlen+0xe>
   1634c:	ff874683          	lbu	a3,-8(a4)
   16350:	40a707b3          	sub	a5,a4,a0
   16354:	c6a9                	beqz	a3,1639e <strlen+0x72>
   16356:	ff974683          	lbu	a3,-7(a4)
   1635a:	ce9d                	beqz	a3,16398 <strlen+0x6c>
   1635c:	ffa74683          	lbu	a3,-6(a4)
   16360:	c6a9                	beqz	a3,163aa <strlen+0x7e>
   16362:	ffb74683          	lbu	a3,-5(a4)
   16366:	ce9d                	beqz	a3,163a4 <strlen+0x78>
   16368:	ffc74683          	lbu	a3,-4(a4)
   1636c:	c2b1                	beqz	a3,163b0 <strlen+0x84>
   1636e:	ffd74683          	lbu	a3,-3(a4)
   16372:	c2b1                	beqz	a3,163b6 <strlen+0x8a>
   16374:	ffe74503          	lbu	a0,-2(a4)
   16378:	00a03533          	snez	a0,a0
   1637c:	953e                	add	a0,a0,a5
   1637e:	1579                	addi	a0,a0,-2
   16380:	8082                	ret
   16382:	dacd                	beqz	a3,16334 <strlen+0x8>
   16384:	00074783          	lbu	a5,0(a4)
   16388:	0705                	addi	a4,a4,1
   1638a:	00777693          	andi	a3,a4,7
   1638e:	fbf5                	bnez	a5,16382 <strlen+0x56>
   16390:	8f09                	sub	a4,a4,a0
   16392:	fff70513          	addi	a0,a4,-1
   16396:	8082                	ret
   16398:	ff978513          	addi	a0,a5,-7
   1639c:	8082                	ret
   1639e:	ff878513          	addi	a0,a5,-8
   163a2:	8082                	ret
   163a4:	ffb78513          	addi	a0,a5,-5
   163a8:	8082                	ret
   163aa:	ffa78513          	addi	a0,a5,-6
   163ae:	8082                	ret
   163b0:	ffc78513          	addi	a0,a5,-4
   163b4:	8082                	ret
   163b6:	ffd78513          	addi	a0,a5,-3
   163ba:	8082                	ret

00000000000163bc <strncpy>:
   163bc:	00b567b3          	or	a5,a0,a1
   163c0:	8b9d                	andi	a5,a5,7
   163c2:	872a                	mv	a4,a0
   163c4:	e7b1                	bnez	a5,16410 <strncpy+0x54>
   163c6:	479d                	li	a5,7
   163c8:	04c7f463          	bgeu	a5,a2,16410 <strncpy+0x54>
   163cc:	7181b303          	ld	t1,1816(gp) # 1f2e8 <__SDATA_BEGIN__>
   163d0:	7201b883          	ld	a7,1824(gp) # 1f2f0 <__SDATA_BEGIN__+0x8>
   163d4:	4e1d                	li	t3,7
   163d6:	6194                	ld	a3,0(a1)
   163d8:	006687b3          	add	a5,a3,t1
   163dc:	fff6c813          	not	a6,a3
   163e0:	0107f7b3          	and	a5,a5,a6
   163e4:	0117f7b3          	and	a5,a5,a7
   163e8:	e785                	bnez	a5,16410 <strncpy+0x54>
   163ea:	e314                	sd	a3,0(a4)
   163ec:	1661                	addi	a2,a2,-8
   163ee:	0721                	addi	a4,a4,8
   163f0:	05a1                	addi	a1,a1,8
   163f2:	fece62e3          	bltu	t3,a2,163d6 <strncpy+0x1a>
   163f6:	0585                	addi	a1,a1,1
   163f8:	00170793          	addi	a5,a4,1
   163fc:	ce11                	beqz	a2,16418 <strncpy+0x5c>
   163fe:	fff5c683          	lbu	a3,-1(a1)
   16402:	fff60813          	addi	a6,a2,-1
   16406:	fed78fa3          	sb	a3,-1(a5)
   1640a:	ca81                	beqz	a3,1641a <strncpy+0x5e>
   1640c:	873e                	mv	a4,a5
   1640e:	8642                	mv	a2,a6
   16410:	0585                	addi	a1,a1,1
   16412:	00170793          	addi	a5,a4,1
   16416:	f665                	bnez	a2,163fe <strncpy+0x42>
   16418:	8082                	ret
   1641a:	9732                	add	a4,a4,a2
   1641c:	00080863          	beqz	a6,1642c <strncpy+0x70>
   16420:	0785                	addi	a5,a5,1
   16422:	fe078fa3          	sb	zero,-1(a5)
   16426:	fee79de3          	bne	a5,a4,16420 <strncpy+0x64>
   1642a:	8082                	ret
   1642c:	8082                	ret

000000000001642e <_svfprintf_r>:
   1642e:	d8010113          	addi	sp,sp,-640
   16432:	26113c23          	sd	ra,632(sp)
   16436:	25313c23          	sd	s3,600(sp)
   1643a:	25413823          	sd	s4,592(sp)
   1643e:	23913423          	sd	s9,552(sp)
   16442:	8a2e                	mv	s4,a1
   16444:	8cb2                	mv	s9,a2
   16446:	e836                	sd	a3,16(sp)
   16448:	26813823          	sd	s0,624(sp)
   1644c:	26913423          	sd	s1,616(sp)
   16450:	27213023          	sd	s2,608(sp)
   16454:	25513423          	sd	s5,584(sp)
   16458:	25613023          	sd	s6,576(sp)
   1645c:	23713c23          	sd	s7,568(sp)
   16460:	23813823          	sd	s8,560(sp)
   16464:	23a13023          	sd	s10,544(sp)
   16468:	21b13c23          	sd	s11,536(sp)
   1646c:	89aa                	mv	s3,a0
   1646e:	d42fe0ef          	jal	ra,149b0 <_localeconv_r>
   16472:	611c                	ld	a5,0(a0)
   16474:	853e                	mv	a0,a5
   16476:	f8be                	sd	a5,112(sp)
   16478:	eb5ff0ef          	jal	ra,1632c <strlen>
   1647c:	010a5783          	lhu	a5,16(s4)
   16480:	e202                	sd	zero,256(sp)
   16482:	e602                	sd	zero,264(sp)
   16484:	0807f793          	andi	a5,a5,128
   16488:	f4aa                	sd	a0,104(sp)
   1648a:	c789                	beqz	a5,16494 <_svfprintf_r+0x66>
   1648c:	018a3783          	ld	a5,24(s4)
   16490:	5a0782e3          	beqz	a5,17234 <_svfprintf_r+0xe06>
   16494:	67f1                	lui	a5,0x1c
   16496:	5787b783          	ld	a5,1400(a5) # 1c578 <__clzdi2+0x2ac>
   1649a:	19010b13          	addi	s6,sp,400
   1649e:	ea5a                	sd	s6,272(sp)
   164a0:	e93e                	sd	a5,144(sp)
   164a2:	67f1                	lui	a5,0x1c
   164a4:	5887b783          	ld	a5,1416(a5) # 1c588 <__clzdi2+0x2bc>
   164a8:	f202                	sd	zero,288(sp)
   164aa:	10012c23          	sw	zero,280(sp)
   164ae:	ed3e                	sd	a5,152(sp)
   164b0:	67f1                	lui	a5,0x1c
   164b2:	5987b783          	ld	a5,1432(a5) # 1c598 <__clzdi2+0x2cc>
   164b6:	f002                	sd	zero,32(sp)
   164b8:	f402                	sd	zero,40(sp)
   164ba:	f13e                	sd	a5,160(sp)
   164bc:	000cc783          	lbu	a5,0(s9)
   164c0:	fc82                	sd	zero,120(sp)
   164c2:	f082                	sd	zero,96(sp)
   164c4:	e102                	sd	zero,128(sp)
   164c6:	e502                	sd	zero,136(sp)
   164c8:	e402                	sd	zero,8(sp)
   164ca:	835a                	mv	t1,s6
   164cc:	1c078563          	beqz	a5,16696 <_svfprintf_r+0x268>
   164d0:	8466                	mv	s0,s9
   164d2:	02500713          	li	a4,37
   164d6:	2ce78e63          	beq	a5,a4,167b2 <_svfprintf_r+0x384>
   164da:	00144783          	lbu	a5,1(s0)
   164de:	0405                	addi	s0,s0,1
   164e0:	fbfd                	bnez	a5,164d6 <_svfprintf_r+0xa8>
   164e2:	419404bb          	subw	s1,s0,s9
   164e6:	1a048863          	beqz	s1,16696 <_svfprintf_r+0x268>
   164ea:	11812783          	lw	a5,280(sp)
   164ee:	7712                	ld	a4,288(sp)
   164f0:	01933023          	sd	s9,0(t1) # ffffffff80000000 <__BSS_END__+0xffffffff7ffe0c30>
   164f4:	2785                	addiw	a5,a5,1
   164f6:	9726                	add	a4,a4,s1
   164f8:	00933423          	sd	s1,8(t1)
   164fc:	f23a                	sd	a4,288(sp)
   164fe:	10f12c23          	sw	a5,280(sp)
   16502:	0007871b          	sext.w	a4,a5
   16506:	479d                	li	a5,7
   16508:	0341                	addi	t1,t1,16
   1650a:	2ae7cb63          	blt	a5,a4,167c0 <_svfprintf_r+0x392>
   1650e:	6722                	ld	a4,8(sp)
   16510:	00044783          	lbu	a5,0(s0)
   16514:	9f25                	addw	a4,a4,s1
   16516:	e43a                	sd	a4,8(sp)
   16518:	16078f63          	beqz	a5,16696 <_svfprintf_r+0x268>
   1651c:	67f5                	lui	a5,0x1d
   1651e:	00144e03          	lbu	t3,1(s0)
   16522:	0c010fa3          	sb	zero,223(sp)
   16526:	0405                	addi	s0,s0,1
   16528:	5c7d                	li	s8,-1
   1652a:	4a81                	li	s5,0
   1652c:	4481                	li	s1,0
   1652e:	05a00913          	li	s2,90
   16532:	a4478b93          	addi	s7,a5,-1468 # 1ca44 <p05.0+0xc>
   16536:	4da5                	li	s11,9
   16538:	0405                	addi	s0,s0,1
   1653a:	000e0d1b          	sext.w	s10,t3
   1653e:	02a00693          	li	a3,42
   16542:	fe0d079b          	addiw	a5,s10,-32
   16546:	0007871b          	sext.w	a4,a5
   1654a:	04e96363          	bltu	s2,a4,16590 <_svfprintf_r+0x162>
   1654e:	02079713          	slli	a4,a5,0x20
   16552:	01e75793          	srli	a5,a4,0x1e
   16556:	97de                	add	a5,a5,s7
   16558:	439c                	lw	a5,0(a5)
   1655a:	8782                	jr	a5
   1655c:	4a81                	li	s5,0
   1655e:	00044703          	lbu	a4,0(s0)
   16562:	002a979b          	slliw	a5,s5,0x2
   16566:	015787bb          	addw	a5,a5,s5
   1656a:	fd0d0e1b          	addiw	t3,s10,-48
   1656e:	0017979b          	slliw	a5,a5,0x1
   16572:	fd07061b          	addiw	a2,a4,-48
   16576:	0405                	addi	s0,s0,1
   16578:	00fe0abb          	addw	s5,t3,a5
   1657c:	00070d1b          	sext.w	s10,a4
   16580:	fccdffe3          	bgeu	s11,a2,1655e <_svfprintf_r+0x130>
   16584:	fe0d079b          	addiw	a5,s10,-32
   16588:	0007871b          	sext.w	a4,a5
   1658c:	fce971e3          	bgeu	s2,a4,1654e <_svfprintf_r+0x120>
   16590:	100d0363          	beqz	s10,16696 <_svfprintf_r+0x268>
   16594:	13a10423          	sb	s10,296(sp)
   16598:	0c010fa3          	sb	zero,223(sp)
   1659c:	4905                	li	s2,1
   1659e:	4b85                	li	s7,1
   165a0:	12810c93          	addi	s9,sp,296
   165a4:	ec02                	sd	zero,24(sp)
   165a6:	4c01                	li	s8,0
   165a8:	e882                	sd	zero,80(sp)
   165aa:	ec82                	sd	zero,88(sp)
   165ac:	e482                	sd	zero,72(sp)
   165ae:	0024f293          	andi	t0,s1,2
   165b2:	00028363          	beqz	t0,165b8 <_svfprintf_r+0x18a>
   165b6:	2909                	addiw	s2,s2,2
   165b8:	0844fd93          	andi	s11,s1,132
   165bc:	7792                	ld	a5,288(sp)
   165be:	000d9663          	bnez	s11,165ca <_svfprintf_r+0x19c>
   165c2:	412a86bb          	subw	a3,s5,s2
   165c6:	04d04be3          	bgtz	a3,16e1c <_svfprintf_r+0x9ee>
   165ca:	0df14703          	lbu	a4,223(sp)
   165ce:	c70d                	beqz	a4,165f8 <_svfprintf_r+0x1ca>
   165d0:	11812703          	lw	a4,280(sp)
   165d4:	0df10693          	addi	a3,sp,223
   165d8:	00d33023          	sd	a3,0(t1)
   165dc:	2705                	addiw	a4,a4,1
   165de:	4685                	li	a3,1
   165e0:	0785                	addi	a5,a5,1
   165e2:	00d33423          	sd	a3,8(t1)
   165e6:	10e12c23          	sw	a4,280(sp)
   165ea:	0007069b          	sext.w	a3,a4
   165ee:	f23e                	sd	a5,288(sp)
   165f0:	471d                	li	a4,7
   165f2:	0341                	addi	t1,t1,16
   165f4:	26d74363          	blt	a4,a3,1685a <_svfprintf_r+0x42c>
   165f8:	02028563          	beqz	t0,16622 <_svfprintf_r+0x1f4>
   165fc:	11812703          	lw	a4,280(sp)
   16600:	1194                	addi	a3,sp,224
   16602:	00d33023          	sd	a3,0(t1)
   16606:	2705                	addiw	a4,a4,1
   16608:	4689                	li	a3,2
   1660a:	0789                	addi	a5,a5,2
   1660c:	00d33423          	sd	a3,8(t1)
   16610:	10e12c23          	sw	a4,280(sp)
   16614:	0007069b          	sext.w	a3,a4
   16618:	f23e                	sd	a5,288(sp)
   1661a:	471d                	li	a4,7
   1661c:	0341                	addi	t1,t1,16
   1661e:	08d749e3          	blt	a4,a3,16eb0 <_svfprintf_r+0xa82>
   16622:	08000713          	li	a4,128
   16626:	6aed8f63          	beq	s11,a4,16ce4 <_svfprintf_r+0x8b6>
   1662a:	417c0c3b          	subw	s8,s8,s7
   1662e:	75804563          	bgtz	s8,16d78 <_svfprintf_r+0x94a>
   16632:	1004f713          	andi	a4,s1,256
   16636:	5a071263          	bnez	a4,16bda <_svfprintf_r+0x7ac>
   1663a:	11812703          	lw	a4,280(sp)
   1663e:	97de                	add	a5,a5,s7
   16640:	01933023          	sd	s9,0(t1)
   16644:	0017069b          	addiw	a3,a4,1
   16648:	8736                	mv	a4,a3
   1664a:	01733423          	sd	s7,8(t1)
   1664e:	10e12c23          	sw	a4,280(sp)
   16652:	f23e                	sd	a5,288(sp)
   16654:	471d                	li	a4,7
   16656:	2cd74263          	blt	a4,a3,1691a <_svfprintf_r+0x4ec>
   1665a:	0341                	addi	t1,t1,16
   1665c:	8891                	andi	s1,s1,4
   1665e:	c489                	beqz	s1,16668 <_svfprintf_r+0x23a>
   16660:	412a84bb          	subw	s1,s5,s2
   16664:	069040e3          	bgtz	s1,16ec4 <_svfprintf_r+0xa96>
   16668:	8756                	mv	a4,s5
   1666a:	012ad363          	bge	s5,s2,16670 <_svfprintf_r+0x242>
   1666e:	874a                	mv	a4,s2
   16670:	66a2                	ld	a3,8(sp)
   16672:	9f35                	addw	a4,a4,a3
   16674:	e43a                	sd	a4,8(sp)
   16676:	78079263          	bnez	a5,16dfa <_svfprintf_r+0x9cc>
   1667a:	67e2                	ld	a5,24(sp)
   1667c:	10012c23          	sw	zero,280(sp)
   16680:	c789                	beqz	a5,1668a <_svfprintf_r+0x25c>
   16682:	65e2                	ld	a1,24(sp)
   16684:	854e                	mv	a0,s3
   16686:	f7bfb0ef          	jal	ra,12600 <_free_r>
   1668a:	835a                	mv	t1,s6
   1668c:	8ca2                	mv	s9,s0
   1668e:	000cc783          	lbu	a5,0(s9)
   16692:	e2079fe3          	bnez	a5,164d0 <_svfprintf_r+0xa2>
   16696:	7792                	ld	a5,288(sp)
   16698:	c399                	beqz	a5,1669e <_svfprintf_r+0x270>
   1669a:	35c0106f          	j	179f6 <_svfprintf_r+0x15c8>
   1669e:	010a5783          	lhu	a5,16(s4)
   166a2:	0407f793          	andi	a5,a5,64
   166a6:	c399                	beqz	a5,166ac <_svfprintf_r+0x27e>
   166a8:	6960106f          	j	17d3e <_svfprintf_r+0x1910>
   166ac:	27813083          	ld	ra,632(sp)
   166b0:	27013403          	ld	s0,624(sp)
   166b4:	6522                	ld	a0,8(sp)
   166b6:	26813483          	ld	s1,616(sp)
   166ba:	26013903          	ld	s2,608(sp)
   166be:	25813983          	ld	s3,600(sp)
   166c2:	25013a03          	ld	s4,592(sp)
   166c6:	24813a83          	ld	s5,584(sp)
   166ca:	24013b03          	ld	s6,576(sp)
   166ce:	23813b83          	ld	s7,568(sp)
   166d2:	23013c03          	ld	s8,560(sp)
   166d6:	22813c83          	ld	s9,552(sp)
   166da:	22013d03          	ld	s10,544(sp)
   166de:	21813d83          	ld	s11,536(sp)
   166e2:	28010113          	addi	sp,sp,640
   166e6:	8082                	ret
   166e8:	0104e493          	ori	s1,s1,16
   166ec:	00044e03          	lbu	t3,0(s0)
   166f0:	2481                	sext.w	s1,s1
   166f2:	b599                	j	16538 <_svfprintf_r+0x10a>
   166f4:	0104e493          	ori	s1,s1,16
   166f8:	2481                	sext.w	s1,s1
   166fa:	66c2                	ld	a3,16(sp)
   166fc:	0204f793          	andi	a5,s1,32
   16700:	00868713          	addi	a4,a3,8
   16704:	24078463          	beqz	a5,1694c <_svfprintf_r+0x51e>
   16708:	629c                	ld	a5,0(a3)
   1670a:	893e                	mv	s2,a5
   1670c:	2607c263          	bltz	a5,16970 <_svfprintf_r+0x542>
   16710:	57fd                	li	a5,-1
   16712:	62fc09e3          	beq	s8,a5,17544 <_svfprintf_r+0x1116>
   16716:	f7f4fd93          	andi	s11,s1,-129
   1671a:	e83a                	sd	a4,16(sp)
   1671c:	2d81                	sext.w	s11,s11
   1671e:	140908e3          	beqz	s2,1706e <_svfprintf_r+0xc40>
   16722:	47a5                	li	a5,9
   16724:	4f27eae3          	bltu	a5,s2,17418 <_svfprintf_r+0xfea>
   16728:	0309091b          	addiw	s2,s2,48
   1672c:	192105a3          	sb	s2,395(sp)
   16730:	84ee                	mv	s1,s11
   16732:	4b85                	li	s7,1
   16734:	18b10c93          	addi	s9,sp,395
   16738:	0df14783          	lbu	a5,223(sp)
   1673c:	000c091b          	sext.w	s2,s8
   16740:	017c5463          	bge	s8,s7,16748 <_svfprintf_r+0x31a>
   16744:	000b891b          	sext.w	s2,s7
   16748:	ec02                	sd	zero,24(sp)
   1674a:	e882                	sd	zero,80(sp)
   1674c:	ec82                	sd	zero,88(sp)
   1674e:	e482                	sd	zero,72(sp)
   16750:	e4078fe3          	beqz	a5,165ae <_svfprintf_r+0x180>
   16754:	2905                	addiw	s2,s2,1
   16756:	bda1                	j	165ae <_svfprintf_r+0x180>
   16758:	0104e493          	ori	s1,s1,16
   1675c:	2481                	sext.w	s1,s1
   1675e:	66c2                	ld	a3,16(sp)
   16760:	0204f793          	andi	a5,s1,32
   16764:	00868713          	addi	a4,a3,8
   16768:	1c078363          	beqz	a5,1692e <_svfprintf_r+0x500>
   1676c:	0006b903          	ld	s2,0(a3)
   16770:	bff4fd93          	andi	s11,s1,-1025
   16774:	2d81                	sext.w	s11,s11
   16776:	e83a                	sd	a4,16(sp)
   16778:	4781                	li	a5,0
   1677a:	4701                	li	a4,0
   1677c:	0ce10fa3          	sb	a4,223(sp)
   16780:	577d                	li	a4,-1
   16782:	20ec0363          	beq	s8,a4,16988 <_svfprintf_r+0x55a>
   16786:	f7fdf493          	andi	s1,s11,-129
   1678a:	2481                	sext.w	s1,s1
   1678c:	68091663          	bnez	s2,16e18 <_svfprintf_r+0x9ea>
   16790:	500c1d63          	bnez	s8,16caa <_svfprintf_r+0x87c>
   16794:	0e0790e3          	bnez	a5,17074 <_svfprintf_r+0xc46>
   16798:	001dfb93          	andi	s7,s11,1
   1679c:	18c10c93          	addi	s9,sp,396
   167a0:	f80b8ce3          	beqz	s7,16738 <_svfprintf_r+0x30a>
   167a4:	03000793          	li	a5,48
   167a8:	18f105a3          	sb	a5,395(sp)
   167ac:	18b10c93          	addi	s9,sp,395
   167b0:	b761                	j	16738 <_svfprintf_r+0x30a>
   167b2:	419404bb          	subw	s1,s0,s9
   167b6:	d2049ae3          	bnez	s1,164ea <_svfprintf_r+0xbc>
   167ba:	00044783          	lbu	a5,0(s0)
   167be:	bba9                	j	16518 <_svfprintf_r+0xea>
   167c0:	0a10                	addi	a2,sp,272
   167c2:	85d2                	mv	a1,s4
   167c4:	854e                	mv	a0,s3
   167c6:	2f8030ef          	jal	ra,19abe <__ssprint_r>
   167ca:	ec051ae3          	bnez	a0,1669e <_svfprintf_r+0x270>
   167ce:	835a                	mv	t1,s6
   167d0:	bb3d                	j	1650e <_svfprintf_r+0xe0>
   167d2:	0084f793          	andi	a5,s1,8
   167d6:	1a079de3          	bnez	a5,17190 <_svfprintf_r+0xd62>
   167da:	67c2                	ld	a5,16(sp)
   167dc:	ec1a                	sd	t1,24(sp)
   167de:	2388                	fld	fa0,0(a5)
   167e0:	07a1                	addi	a5,a5,8
   167e2:	e83e                	sd	a5,16(sp)
   167e4:	005050ef          	jal	ra,1bfe8 <__extenddftf2>
   167e8:	6362                	ld	t1,24(sp)
   167ea:	87aa                	mv	a5,a0
   167ec:	0208                	addi	a0,sp,256
   167ee:	ec1a                	sd	t1,24(sp)
   167f0:	e23e                	sd	a5,256(sp)
   167f2:	e62e                	sd	a1,264(sp)
   167f4:	974fe0ef          	jal	ra,14968 <_ldcheck>
   167f8:	d5aa                	sw	a0,232(sp)
   167fa:	4789                	li	a5,2
   167fc:	6362                	ld	t1,24(sp)
   167fe:	58f50be3          	beq	a0,a5,17594 <_svfprintf_r+0x1166>
   16802:	4785                	li	a5,1
   16804:	00f51463          	bne	a0,a5,1680c <_svfprintf_r+0x3de>
   16808:	1300106f          	j	17938 <_svfprintf_r+0x150a>
   1680c:	06100793          	li	a5,97
   16810:	6afd04e3          	beq	s10,a5,176b8 <_svfprintf_r+0x128a>
   16814:	04100793          	li	a5,65
   16818:	05800713          	li	a4,88
   1681c:	6afd00e3          	beq	s10,a5,176bc <_svfprintf_r+0x128e>
   16820:	fdfd7713          	andi	a4,s10,-33
   16824:	57fd                	li	a5,-1
   16826:	ecba                	sd	a4,88(sp)
   16828:	00fc1463          	bne	s8,a5,16830 <_svfprintf_r+0x402>
   1682c:	2180106f          	j	17a44 <_svfprintf_r+0x1616>
   16830:	04700793          	li	a5,71
   16834:	00f71463          	bne	a4,a5,1683c <_svfprintf_r+0x40e>
   16838:	4f80106f          	j	17d30 <_svfprintf_r+0x1902>
   1683c:	6932                	ld	s2,264(sp)
   1683e:	1004e793          	ori	a5,s1,256
   16842:	f526                	sd	s1,168(sp)
   16844:	6b92                	ld	s7,256(sp)
   16846:	2781                	sext.w	a5,a5
   16848:	00095463          	bgez	s2,16850 <_svfprintf_r+0x422>
   1684c:	7830006f          	j	177ce <_svfprintf_r+0x13a0>
   16850:	e582                	sd	zero,200(sp)
   16852:	84be                	mv	s1,a5
   16854:	ec02                	sd	zero,24(sp)
   16856:	6a70006f          	j	176fc <_svfprintf_r+0x12ce>
   1685a:	0a10                	addi	a2,sp,272
   1685c:	85d2                	mv	a1,s4
   1685e:	854e                	mv	a0,s3
   16860:	f816                	sd	t0,48(sp)
   16862:	25c030ef          	jal	ra,19abe <__ssprint_r>
   16866:	5a051163          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   1686a:	7792                	ld	a5,288(sp)
   1686c:	72c2                	ld	t0,48(sp)
   1686e:	835a                	mv	t1,s6
   16870:	b361                	j	165f8 <_svfprintf_r+0x1ca>
   16872:	11812683          	lw	a3,280(sp)
   16876:	00178d13          	addi	s10,a5,1
   1687a:	7782                	ld	a5,32(sp)
   1687c:	00168b9b          	addiw	s7,a3,1
   16880:	4605                	li	a2,1
   16882:	01933023          	sd	s9,0(t1)
   16886:	86de                	mv	a3,s7
   16888:	01030c13          	addi	s8,t1,16
   1688c:	7ef65a63          	bge	a2,a5,17080 <_svfprintf_r+0xc52>
   16890:	4605                	li	a2,1
   16892:	10d12c23          	sw	a3,280(sp)
   16896:	00c33423          	sd	a2,8(t1)
   1689a:	f26a                	sd	s10,288(sp)
   1689c:	469d                	li	a3,7
   1689e:	0976c4e3          	blt	a3,s7,17126 <_svfprintf_r+0xcf8>
   168a2:	77a6                	ld	a5,104(sp)
   168a4:	7746                	ld	a4,112(sp)
   168a6:	2b85                	addiw	s7,s7,1
   168a8:	9d3e                	add	s10,s10,a5
   168aa:	00ec3023          	sd	a4,0(s8)
   168ae:	00fc3423          	sd	a5,8(s8)
   168b2:	f26a                	sd	s10,288(sp)
   168b4:	11712c23          	sw	s7,280(sp)
   168b8:	469d                	li	a3,7
   168ba:	0c41                	addi	s8,s8,16
   168bc:	0976c2e3          	blt	a3,s7,17140 <_svfprintf_r+0xd12>
   168c0:	6512                	ld	a0,256(sp)
   168c2:	65b2                	ld	a1,264(sp)
   168c4:	4681                	li	a3,0
   168c6:	4601                	li	a2,0
   168c8:	59a040ef          	jal	ra,1ae62 <__eqtf2>
   168cc:	7782                	ld	a5,32(sp)
   168ce:	fff7869b          	addiw	a3,a5,-1
   168d2:	7e050063          	beqz	a0,170b2 <_svfprintf_r+0xc84>
   168d6:	2b85                	addiw	s7,s7,1
   168d8:	001c8813          	addi	a6,s9,1
   168dc:	865e                	mv	a2,s7
   168de:	9d36                	add	s10,s10,a3
   168e0:	010c3023          	sd	a6,0(s8)
   168e4:	00dc3423          	sd	a3,8(s8)
   168e8:	f26a                	sd	s10,288(sp)
   168ea:	10c12c23          	sw	a2,280(sp)
   168ee:	469d                	li	a3,7
   168f0:	0c41                	addi	s8,s8,16
   168f2:	7b76c363          	blt	a3,s7,17098 <_svfprintf_r+0xc6a>
   168f6:	7766                	ld	a4,120(sp)
   168f8:	1994                	addi	a3,sp,240
   168fa:	001b861b          	addiw	a2,s7,1
   168fe:	01a707b3          	add	a5,a4,s10
   16902:	00dc3023          	sd	a3,0(s8)
   16906:	00ec3423          	sd	a4,8(s8)
   1690a:	f23e                	sd	a5,288(sp)
   1690c:	10c12c23          	sw	a2,280(sp)
   16910:	469d                	li	a3,7
   16912:	010c0313          	addi	t1,s8,16
   16916:	d4c6d3e3          	bge	a3,a2,1665c <_svfprintf_r+0x22e>
   1691a:	0a10                	addi	a2,sp,272
   1691c:	85d2                	mv	a1,s4
   1691e:	854e                	mv	a0,s3
   16920:	19e030ef          	jal	ra,19abe <__ssprint_r>
   16924:	4e051263          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   16928:	7792                	ld	a5,288(sp)
   1692a:	835a                	mv	t1,s6
   1692c:	bb05                	j	1665c <_svfprintf_r+0x22e>
   1692e:	0104f793          	andi	a5,s1,16
   16932:	04079ae3          	bnez	a5,17186 <_svfprintf_r+0xd58>
   16936:	66c2                	ld	a3,16(sp)
   16938:	0404f793          	andi	a5,s1,64
   1693c:	0006a903          	lw	s2,0(a3)
   16940:	52078fe3          	beqz	a5,1767e <_svfprintf_r+0x1250>
   16944:	1942                	slli	s2,s2,0x30
   16946:	03095913          	srli	s2,s2,0x30
   1694a:	b51d                	j	16770 <_svfprintf_r+0x342>
   1694c:	0104f793          	andi	a5,s1,16
   16950:	020796e3          	bnez	a5,1717c <_svfprintf_r+0xd4e>
   16954:	66c2                	ld	a3,16(sp)
   16956:	0404f793          	andi	a5,s1,64
   1695a:	0006a903          	lw	s2,0(a3)
   1695e:	520788e3          	beqz	a5,1768e <_svfprintf_r+0x1260>
   16962:	0109191b          	slliw	s2,s2,0x10
   16966:	4109591b          	sraiw	s2,s2,0x10
   1696a:	87ca                	mv	a5,s2
   1696c:	da07d2e3          	bgez	a5,16710 <_svfprintf_r+0x2e2>
   16970:	e83a                	sd	a4,16(sp)
   16972:	02d00713          	li	a4,45
   16976:	0ce10fa3          	sb	a4,223(sp)
   1697a:	577d                	li	a4,-1
   1697c:	41200933          	neg	s2,s2
   16980:	8da6                	mv	s11,s1
   16982:	4785                	li	a5,1
   16984:	e0ec11e3          	bne	s8,a4,16786 <_svfprintf_r+0x358>
   16988:	4705                	li	a4,1
   1698a:	d8e78ce3          	beq	a5,a4,16722 <_svfprintf_r+0x2f4>
   1698e:	4709                	li	a4,2
   16990:	32e78663          	beq	a5,a4,16cbc <_svfprintf_r+0x88e>
   16994:	18c10b93          	addi	s7,sp,396
   16998:	8cde                	mv	s9,s7
   1699a:	00797793          	andi	a5,s2,7
   1699e:	03078793          	addi	a5,a5,48
   169a2:	fefc8fa3          	sb	a5,-1(s9)
   169a6:	00395913          	srli	s2,s2,0x3
   169aa:	8766                	mv	a4,s9
   169ac:	1cfd                	addi	s9,s9,-1
   169ae:	fe0916e3          	bnez	s2,1699a <_svfprintf_r+0x56c>
   169b2:	001df693          	andi	a3,s11,1
   169b6:	32068363          	beqz	a3,16cdc <_svfprintf_r+0x8ae>
   169ba:	03000693          	li	a3,48
   169be:	30d78f63          	beq	a5,a3,16cdc <_svfprintf_r+0x8ae>
   169c2:	1779                	addi	a4,a4,-2
   169c4:	fedc8fa3          	sb	a3,-1(s9)
   169c8:	40eb8bbb          	subw	s7,s7,a4
   169cc:	84ee                	mv	s1,s11
   169ce:	8cba                	mv	s9,a4
   169d0:	b3a5                	j	16738 <_svfprintf_r+0x30a>
   169d2:	6742                	ld	a4,16(sp)
   169d4:	0c010fa3          	sb	zero,223(sp)
   169d8:	4905                	li	s2,1
   169da:	431c                	lw	a5,0(a4)
   169dc:	0721                	addi	a4,a4,8
   169de:	e83a                	sd	a4,16(sp)
   169e0:	12f10423          	sb	a5,296(sp)
   169e4:	4b85                	li	s7,1
   169e6:	12810c93          	addi	s9,sp,296
   169ea:	be6d                	j	165a4 <_svfprintf_r+0x176>
   169ec:	67c2                	ld	a5,16(sp)
   169ee:	0c010fa3          	sb	zero,223(sp)
   169f2:	0007bc83          	ld	s9,0(a5)
   169f6:	00878d93          	addi	s11,a5,8
   169fa:	3c0c8de3          	beqz	s9,175d4 <_svfprintf_r+0x11a6>
   169fe:	57fd                	li	a5,-1
   16a00:	0afc01e3          	beq	s8,a5,172a2 <_svfprintf_r+0xe74>
   16a04:	8662                	mv	a2,s8
   16a06:	4581                	li	a1,0
   16a08:	8566                	mv	a0,s9
   16a0a:	e81a                	sd	t1,16(sp)
   16a0c:	84bfe0ef          	jal	ra,15256 <memchr>
   16a10:	ec2a                	sd	a0,24(sp)
   16a12:	6342                	ld	t1,16(sp)
   16a14:	e119                	bnez	a0,16a1a <_svfprintf_r+0x5ec>
   16a16:	1f60106f          	j	17c0c <_svfprintf_r+0x17de>
   16a1a:	67e2                	ld	a5,24(sp)
   16a1c:	e86e                	sd	s11,16(sp)
   16a1e:	ec02                	sd	zero,24(sp)
   16a20:	41978bbb          	subw	s7,a5,s9
   16a24:	0df14783          	lbu	a5,223(sp)
   16a28:	fffbc913          	not	s2,s7
   16a2c:	43f95913          	srai	s2,s2,0x3f
   16a30:	e882                	sd	zero,80(sp)
   16a32:	ec82                	sd	zero,88(sp)
   16a34:	e482                	sd	zero,72(sp)
   16a36:	01797933          	and	s2,s2,s7
   16a3a:	4c01                	li	s8,0
   16a3c:	d0079ce3          	bnez	a5,16754 <_svfprintf_r+0x326>
   16a40:	b6bd                	j	165ae <_svfprintf_r+0x180>
   16a42:	67c2                	ld	a5,16(sp)
   16a44:	0007aa83          	lw	s5,0(a5)
   16a48:	07a1                	addi	a5,a5,8
   16a4a:	700add63          	bgez	s5,17164 <_svfprintf_r+0xd36>
   16a4e:	41500abb          	negw	s5,s5
   16a52:	e83e                	sd	a5,16(sp)
   16a54:	0044e493          	ori	s1,s1,4
   16a58:	00044e03          	lbu	t3,0(s0)
   16a5c:	2481                	sext.w	s1,s1
   16a5e:	bce9                	j	16538 <_svfprintf_r+0x10a>
   16a60:	0104ed93          	ori	s11,s1,16
   16a64:	2d81                	sext.w	s11,s11
   16a66:	66c2                	ld	a3,16(sp)
   16a68:	020df793          	andi	a5,s11,32
   16a6c:	00868713          	addi	a4,a3,8
   16a70:	68078a63          	beqz	a5,17104 <_svfprintf_r+0xcd6>
   16a74:	0006b903          	ld	s2,0(a3)
   16a78:	4785                	li	a5,1
   16a7a:	e83a                	sd	a4,16(sp)
   16a7c:	b9fd                	j	1677a <_svfprintf_r+0x34c>
   16a7e:	02b00793          	li	a5,43
   16a82:	00044e03          	lbu	t3,0(s0)
   16a86:	0cf10fa3          	sb	a5,223(sp)
   16a8a:	b47d                	j	16538 <_svfprintf_r+0x10a>
   16a8c:	0204e493          	ori	s1,s1,32
   16a90:	00044e03          	lbu	t3,0(s0)
   16a94:	2481                	sext.w	s1,s1
   16a96:	b44d                	j	16538 <_svfprintf_r+0x10a>
   16a98:	6742                	ld	a4,16(sp)
   16a9a:	77e1                	lui	a5,0xffff8
   16a9c:	8307c793          	xori	a5,a5,-2000
   16aa0:	0ef11023          	sh	a5,224(sp)
   16aa4:	00870793          	addi	a5,a4,8
   16aa8:	e83e                	sd	a5,16(sp)
   16aaa:	67f1                	lui	a5,0x1c
   16aac:	32878793          	addi	a5,a5,808 # 1c328 <__clzdi2+0x5c>
   16ab0:	0024ed93          	ori	s11,s1,2
   16ab4:	f43e                	sd	a5,40(sp)
   16ab6:	00073903          	ld	s2,0(a4)
   16aba:	2d81                	sext.w	s11,s11
   16abc:	4789                	li	a5,2
   16abe:	07800d13          	li	s10,120
   16ac2:	b965                	j	1677a <_svfprintf_r+0x34c>
   16ac4:	66c2                	ld	a3,16(sp)
   16ac6:	0204f793          	andi	a5,s1,32
   16aca:	6298                	ld	a4,0(a3)
   16acc:	06a1                	addi	a3,a3,8
   16ace:	e836                	sd	a3,16(sp)
   16ad0:	e395                	bnez	a5,16af4 <_svfprintf_r+0x6c6>
   16ad2:	0104f793          	andi	a5,s1,16
   16ad6:	ef99                	bnez	a5,16af4 <_svfprintf_r+0x6c6>
   16ad8:	0404f793          	andi	a5,s1,64
   16adc:	6e079fe3          	bnez	a5,179da <_svfprintf_r+0x15ac>
   16ae0:	2004f493          	andi	s1,s1,512
   16ae4:	67a2                	ld	a5,8(sp)
   16ae6:	e099                	bnez	s1,16aec <_svfprintf_r+0x6be>
   16ae8:	25e0106f          	j	17d46 <_svfprintf_r+0x1918>
   16aec:	00f70023          	sb	a5,0(a4)
   16af0:	8ca2                	mv	s9,s0
   16af2:	be71                	j	1668e <_svfprintf_r+0x260>
   16af4:	67a2                	ld	a5,8(sp)
   16af6:	8ca2                	mv	s9,s0
   16af8:	e31c                	sd	a5,0(a4)
   16afa:	be51                	j	1668e <_svfprintf_r+0x260>
   16afc:	00044e03          	lbu	t3,0(s0)
   16b00:	06c00793          	li	a5,108
   16b04:	70fe0363          	beq	t3,a5,1720a <_svfprintf_r+0xddc>
   16b08:	0104e493          	ori	s1,s1,16
   16b0c:	2481                	sext.w	s1,s1
   16b0e:	b42d                	j	16538 <_svfprintf_r+0x10a>
   16b10:	00044e03          	lbu	t3,0(s0)
   16b14:	06800793          	li	a5,104
   16b18:	70fe0163          	beq	t3,a5,1721a <_svfprintf_r+0xdec>
   16b1c:	0404e493          	ori	s1,s1,64
   16b20:	2481                	sext.w	s1,s1
   16b22:	bc19                	j	16538 <_svfprintf_r+0x10a>
   16b24:	0084e493          	ori	s1,s1,8
   16b28:	00044e03          	lbu	t3,0(s0)
   16b2c:	2481                	sext.w	s1,s1
   16b2e:	b429                	j	16538 <_svfprintf_r+0x10a>
   16b30:	854e                	mv	a0,s3
   16b32:	ec1a                	sd	t1,24(sp)
   16b34:	e7dfd0ef          	jal	ra,149b0 <_localeconv_r>
   16b38:	651c                	ld	a5,8(a0)
   16b3a:	853e                	mv	a0,a5
   16b3c:	e53e                	sd	a5,136(sp)
   16b3e:	feeff0ef          	jal	ra,1632c <strlen>
   16b42:	87aa                	mv	a5,a0
   16b44:	854e                	mv	a0,s3
   16b46:	8d3e                	mv	s10,a5
   16b48:	e13e                	sd	a5,128(sp)
   16b4a:	e67fd0ef          	jal	ra,149b0 <_localeconv_r>
   16b4e:	691c                	ld	a5,16(a0)
   16b50:	6362                	ld	t1,24(sp)
   16b52:	00044e03          	lbu	t3,0(s0)
   16b56:	f0be                	sd	a5,96(sp)
   16b58:	9e0d00e3          	beqz	s10,16538 <_svfprintf_r+0x10a>
   16b5c:	9c078ee3          	beqz	a5,16538 <_svfprintf_r+0x10a>
   16b60:	0007c783          	lbu	a5,0(a5)
   16b64:	9c078ae3          	beqz	a5,16538 <_svfprintf_r+0x10a>
   16b68:	4004e493          	ori	s1,s1,1024
   16b6c:	2481                	sext.w	s1,s1
   16b6e:	b2e9                	j	16538 <_svfprintf_r+0x10a>
   16b70:	0014e493          	ori	s1,s1,1
   16b74:	00044e03          	lbu	t3,0(s0)
   16b78:	2481                	sext.w	s1,s1
   16b7a:	ba7d                	j	16538 <_svfprintf_r+0x10a>
   16b7c:	0df14783          	lbu	a5,223(sp)
   16b80:	00044e03          	lbu	t3,0(s0)
   16b84:	9a079ae3          	bnez	a5,16538 <_svfprintf_r+0x10a>
   16b88:	02000793          	li	a5,32
   16b8c:	0cf10fa3          	sb	a5,223(sp)
   16b90:	b265                	j	16538 <_svfprintf_r+0x10a>
   16b92:	0804e493          	ori	s1,s1,128
   16b96:	00044e03          	lbu	t3,0(s0)
   16b9a:	2481                	sext.w	s1,s1
   16b9c:	ba71                	j	16538 <_svfprintf_r+0x10a>
   16b9e:	00044d03          	lbu	s10,0(s0)
   16ba2:	00140793          	addi	a5,s0,1
   16ba6:	00dd1463          	bne	s10,a3,16bae <_svfprintf_r+0x780>
   16baa:	2620106f          	j	17e0c <_svfprintf_r+0x19de>
   16bae:	fd0d071b          	addiw	a4,s10,-48
   16bb2:	843e                	mv	s0,a5
   16bb4:	4c01                	li	s8,0
   16bb6:	98ede6e3          	bltu	s11,a4,16542 <_svfprintf_r+0x114>
   16bba:	00044d03          	lbu	s10,0(s0)
   16bbe:	002c179b          	slliw	a5,s8,0x2
   16bc2:	018787bb          	addw	a5,a5,s8
   16bc6:	0017979b          	slliw	a5,a5,0x1
   16bca:	00e78c3b          	addw	s8,a5,a4
   16bce:	fd0d071b          	addiw	a4,s10,-48
   16bd2:	0405                	addi	s0,s0,1
   16bd4:	feedf3e3          	bgeu	s11,a4,16bba <_svfprintf_r+0x78c>
   16bd8:	b2ad                	j	16542 <_svfprintf_r+0x114>
   16bda:	06500713          	li	a4,101
   16bde:	c9a75ae3          	bge	a4,s10,16872 <_svfprintf_r+0x444>
   16be2:	6512                	ld	a0,256(sp)
   16be4:	65b2                	ld	a1,264(sp)
   16be6:	4601                	li	a2,0
   16be8:	4681                	li	a3,0
   16bea:	fc3e                	sd	a5,56(sp)
   16bec:	f81a                	sd	t1,48(sp)
   16bee:	274040ef          	jal	ra,1ae62 <__eqtf2>
   16bf2:	7342                	ld	t1,48(sp)
   16bf4:	77e2                	ld	a5,56(sp)
   16bf6:	34051863          	bnez	a0,16f46 <_svfprintf_r+0xb18>
   16bfa:	11812703          	lw	a4,280(sp)
   16bfe:	66f1                	lui	a3,0x1c
   16c00:	36068693          	addi	a3,a3,864 # 1c360 <__clzdi2+0x94>
   16c04:	2705                	addiw	a4,a4,1
   16c06:	00d33023          	sd	a3,0(t1)
   16c0a:	0785                	addi	a5,a5,1
   16c0c:	4685                	li	a3,1
   16c0e:	00d33423          	sd	a3,8(t1)
   16c12:	10e12c23          	sw	a4,280(sp)
   16c16:	0007069b          	sext.w	a3,a4
   16c1a:	f23e                	sd	a5,288(sp)
   16c1c:	471d                	li	a4,7
   16c1e:	0341                	addi	t1,t1,16
   16c20:	12d746e3          	blt	a4,a3,1754c <_svfprintf_r+0x111e>
   16c24:	572e                	lw	a4,232(sp)
   16c26:	7682                	ld	a3,32(sp)
   16c28:	52d75963          	bge	a4,a3,1715a <_svfprintf_r+0xd2c>
   16c2c:	76a6                	ld	a3,104(sp)
   16c2e:	11812703          	lw	a4,280(sp)
   16c32:	7646                	ld	a2,112(sp)
   16c34:	97b6                	add	a5,a5,a3
   16c36:	2705                	addiw	a4,a4,1
   16c38:	00d33423          	sd	a3,8(t1)
   16c3c:	00c33023          	sd	a2,0(t1)
   16c40:	0007069b          	sext.w	a3,a4
   16c44:	10e12c23          	sw	a4,280(sp)
   16c48:	f23e                	sd	a5,288(sp)
   16c4a:	471d                	li	a4,7
   16c4c:	0341                	addi	t1,t1,16
   16c4e:	5ad74463          	blt	a4,a3,171f6 <_svfprintf_r+0xdc8>
   16c52:	7702                	ld	a4,32(sp)
   16c54:	fff70b9b          	addiw	s7,a4,-1
   16c58:	a17052e3          	blez	s7,1665c <_svfprintf_r+0x22e>
   16c5c:	68f5                	lui	a7,0x1d
   16c5e:	46c1                	li	a3,16
   16c60:	11812703          	lw	a4,280(sp)
   16c64:	c5888d93          	addi	s11,a7,-936 # 1cc58 <zeroes.0>
   16c68:	4cc1                	li	s9,16
   16c6a:	4c1d                	li	s8,7
   16c6c:	0176c763          	blt	a3,s7,16c7a <_svfprintf_r+0x84c>
   16c70:	0f30006f          	j	17562 <_svfprintf_r+0x1134>
   16c74:	3bc1                	addiw	s7,s7,-16
   16c76:	0f7cd6e3          	bge	s9,s7,17562 <_svfprintf_r+0x1134>
   16c7a:	2705                	addiw	a4,a4,1
   16c7c:	07c1                	addi	a5,a5,16
   16c7e:	01b33023          	sd	s11,0(t1)
   16c82:	01933423          	sd	s9,8(t1)
   16c86:	f23e                	sd	a5,288(sp)
   16c88:	10e12c23          	sw	a4,280(sp)
   16c8c:	0341                	addi	t1,t1,16
   16c8e:	feec53e3          	bge	s8,a4,16c74 <_svfprintf_r+0x846>
   16c92:	0a10                	addi	a2,sp,272
   16c94:	85d2                	mv	a1,s4
   16c96:	854e                	mv	a0,s3
   16c98:	627020ef          	jal	ra,19abe <__ssprint_r>
   16c9c:	16051663          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   16ca0:	7792                	ld	a5,288(sp)
   16ca2:	11812703          	lw	a4,280(sp)
   16ca6:	835a                	mv	t1,s6
   16ca8:	b7f1                	j	16c74 <_svfprintf_r+0x846>
   16caa:	4705                	li	a4,1
   16cac:	00e79463          	bne	a5,a4,16cb4 <_svfprintf_r+0x886>
   16cb0:	0160106f          	j	17cc6 <_svfprintf_r+0x1898>
   16cb4:	4709                	li	a4,2
   16cb6:	8da6                	mv	s11,s1
   16cb8:	cce79ee3          	bne	a5,a4,16994 <_svfprintf_r+0x566>
   16cbc:	18c10b93          	addi	s7,sp,396
   16cc0:	8cde                	mv	s9,s7
   16cc2:	7722                	ld	a4,40(sp)
   16cc4:	00f97793          	andi	a5,s2,15
   16cc8:	1cfd                	addi	s9,s9,-1
   16cca:	97ba                	add	a5,a5,a4
   16ccc:	0007c783          	lbu	a5,0(a5)
   16cd0:	00495913          	srli	s2,s2,0x4
   16cd4:	00fc8023          	sb	a5,0(s9)
   16cd8:	fe0915e3          	bnez	s2,16cc2 <_svfprintf_r+0x894>
   16cdc:	419b8bbb          	subw	s7,s7,s9
   16ce0:	84ee                	mv	s1,s11
   16ce2:	bc99                	j	16738 <_svfprintf_r+0x30a>
   16ce4:	412a86bb          	subw	a3,s5,s2
   16ce8:	94d051e3          	blez	a3,1662a <_svfprintf_r+0x1fc>
   16cec:	68f5                	lui	a7,0x1d
   16cee:	4641                	li	a2,16
   16cf0:	11812703          	lw	a4,280(sp)
   16cf4:	c5888d93          	addi	s11,a7,-936 # 1cc58 <zeroes.0>
   16cf8:	4f41                	li	t5,16
   16cfa:	4f9d                	li	t6,7
   16cfc:	00d64663          	blt	a2,a3,16d08 <_svfprintf_r+0x8da>
   16d00:	a089                	j	16d42 <_svfprintf_r+0x914>
   16d02:	36c1                	addiw	a3,a3,-16
   16d04:	02df5f63          	bge	t5,a3,16d42 <_svfprintf_r+0x914>
   16d08:	2705                	addiw	a4,a4,1
   16d0a:	07c1                	addi	a5,a5,16
   16d0c:	01b33023          	sd	s11,0(t1)
   16d10:	01e33423          	sd	t5,8(t1)
   16d14:	f23e                	sd	a5,288(sp)
   16d16:	10e12c23          	sw	a4,280(sp)
   16d1a:	0341                	addi	t1,t1,16
   16d1c:	feefd3e3          	bge	t6,a4,16d02 <_svfprintf_r+0x8d4>
   16d20:	0a10                	addi	a2,sp,272
   16d22:	85d2                	mv	a1,s4
   16d24:	854e                	mv	a0,s3
   16d26:	f836                	sd	a3,48(sp)
   16d28:	597020ef          	jal	ra,19abe <__ssprint_r>
   16d2c:	ed71                	bnez	a0,16e08 <_svfprintf_r+0x9da>
   16d2e:	76c2                	ld	a3,48(sp)
   16d30:	4f41                	li	t5,16
   16d32:	7792                	ld	a5,288(sp)
   16d34:	36c1                	addiw	a3,a3,-16
   16d36:	11812703          	lw	a4,280(sp)
   16d3a:	835a                	mv	t1,s6
   16d3c:	4f9d                	li	t6,7
   16d3e:	fcdf45e3          	blt	t5,a3,16d08 <_svfprintf_r+0x8da>
   16d42:	2705                	addiw	a4,a4,1
   16d44:	97b6                	add	a5,a5,a3
   16d46:	00d33423          	sd	a3,8(t1)
   16d4a:	01b33023          	sd	s11,0(t1)
   16d4e:	0007069b          	sext.w	a3,a4
   16d52:	10e12c23          	sw	a4,280(sp)
   16d56:	f23e                	sd	a5,288(sp)
   16d58:	471d                	li	a4,7
   16d5a:	0341                	addi	t1,t1,16
   16d5c:	8cd757e3          	bge	a4,a3,1662a <_svfprintf_r+0x1fc>
   16d60:	0a10                	addi	a2,sp,272
   16d62:	85d2                	mv	a1,s4
   16d64:	854e                	mv	a0,s3
   16d66:	559020ef          	jal	ra,19abe <__ssprint_r>
   16d6a:	ed59                	bnez	a0,16e08 <_svfprintf_r+0x9da>
   16d6c:	417c0c3b          	subw	s8,s8,s7
   16d70:	7792                	ld	a5,288(sp)
   16d72:	835a                	mv	t1,s6
   16d74:	8b805fe3          	blez	s8,16632 <_svfprintf_r+0x204>
   16d78:	68f5                	lui	a7,0x1d
   16d7a:	4641                	li	a2,16
   16d7c:	11812703          	lw	a4,280(sp)
   16d80:	c5888d93          	addi	s11,a7,-936 # 1cc58 <zeroes.0>
   16d84:	4ec1                	li	t4,16
   16d86:	4f1d                	li	t5,7
   16d88:	01864663          	blt	a2,s8,16d94 <_svfprintf_r+0x966>
   16d8c:	a83d                	j	16dca <_svfprintf_r+0x99c>
   16d8e:	3c41                	addiw	s8,s8,-16
   16d90:	038edd63          	bge	t4,s8,16dca <_svfprintf_r+0x99c>
   16d94:	2705                	addiw	a4,a4,1
   16d96:	07c1                	addi	a5,a5,16
   16d98:	01b33023          	sd	s11,0(t1)
   16d9c:	01d33423          	sd	t4,8(t1)
   16da0:	f23e                	sd	a5,288(sp)
   16da2:	10e12c23          	sw	a4,280(sp)
   16da6:	0341                	addi	t1,t1,16
   16da8:	feef53e3          	bge	t5,a4,16d8e <_svfprintf_r+0x960>
   16dac:	0a10                	addi	a2,sp,272
   16dae:	85d2                	mv	a1,s4
   16db0:	854e                	mv	a0,s3
   16db2:	50d020ef          	jal	ra,19abe <__ssprint_r>
   16db6:	e929                	bnez	a0,16e08 <_svfprintf_r+0x9da>
   16db8:	4ec1                	li	t4,16
   16dba:	3c41                	addiw	s8,s8,-16
   16dbc:	7792                	ld	a5,288(sp)
   16dbe:	11812703          	lw	a4,280(sp)
   16dc2:	835a                	mv	t1,s6
   16dc4:	4f1d                	li	t5,7
   16dc6:	fd8ec7e3          	blt	t4,s8,16d94 <_svfprintf_r+0x966>
   16dca:	0017069b          	addiw	a3,a4,1
   16dce:	97e2                	add	a5,a5,s8
   16dd0:	01b33023          	sd	s11,0(t1)
   16dd4:	01833423          	sd	s8,8(t1)
   16dd8:	f23e                	sd	a5,288(sp)
   16dda:	10d12c23          	sw	a3,280(sp)
   16dde:	471d                	li	a4,7
   16de0:	0341                	addi	t1,t1,16
   16de2:	84d758e3          	bge	a4,a3,16632 <_svfprintf_r+0x204>
   16de6:	0a10                	addi	a2,sp,272
   16de8:	85d2                	mv	a1,s4
   16dea:	854e                	mv	a0,s3
   16dec:	4d3020ef          	jal	ra,19abe <__ssprint_r>
   16df0:	ed01                	bnez	a0,16e08 <_svfprintf_r+0x9da>
   16df2:	7792                	ld	a5,288(sp)
   16df4:	835a                	mv	t1,s6
   16df6:	83dff06f          	j	16632 <_svfprintf_r+0x204>
   16dfa:	0a10                	addi	a2,sp,272
   16dfc:	85d2                	mv	a1,s4
   16dfe:	854e                	mv	a0,s3
   16e00:	4bf020ef          	jal	ra,19abe <__ssprint_r>
   16e04:	86050be3          	beqz	a0,1667a <_svfprintf_r+0x24c>
   16e08:	67e2                	ld	a5,24(sp)
   16e0a:	88078ae3          	beqz	a5,1669e <_svfprintf_r+0x270>
   16e0e:	85be                	mv	a1,a5
   16e10:	854e                	mv	a0,s3
   16e12:	feefb0ef          	jal	ra,12600 <_free_r>
   16e16:	b061                	j	1669e <_svfprintf_r+0x270>
   16e18:	8da6                	mv	s11,s1
   16e1a:	b6bd                	j	16988 <_svfprintf_r+0x55a>
   16e1c:	68f5                	lui	a7,0x1d
   16e1e:	4641                	li	a2,16
   16e20:	11812703          	lw	a4,280(sp)
   16e24:	c4888893          	addi	a7,a7,-952 # 1cc48 <blanks.1>
   16e28:	4f41                	li	t5,16
   16e2a:	439d                	li	t2,7
   16e2c:	00d64663          	blt	a2,a3,16e38 <_svfprintf_r+0xa0a>
   16e30:	a0a9                	j	16e7a <_svfprintf_r+0xa4c>
   16e32:	36c1                	addiw	a3,a3,-16
   16e34:	04df5363          	bge	t5,a3,16e7a <_svfprintf_r+0xa4c>
   16e38:	2705                	addiw	a4,a4,1
   16e3a:	07c1                	addi	a5,a5,16
   16e3c:	01133023          	sd	a7,0(t1)
   16e40:	01e33423          	sd	t5,8(t1)
   16e44:	f23e                	sd	a5,288(sp)
   16e46:	10e12c23          	sw	a4,280(sp)
   16e4a:	0341                	addi	t1,t1,16
   16e4c:	fee3d3e3          	bge	t2,a4,16e32 <_svfprintf_r+0xa04>
   16e50:	0a10                	addi	a2,sp,272
   16e52:	85d2                	mv	a1,s4
   16e54:	854e                	mv	a0,s3
   16e56:	e0c6                	sd	a7,64(sp)
   16e58:	fc36                	sd	a3,56(sp)
   16e5a:	f816                	sd	t0,48(sp)
   16e5c:	463020ef          	jal	ra,19abe <__ssprint_r>
   16e60:	f545                	bnez	a0,16e08 <_svfprintf_r+0x9da>
   16e62:	76e2                	ld	a3,56(sp)
   16e64:	4f41                	li	t5,16
   16e66:	7792                	ld	a5,288(sp)
   16e68:	36c1                	addiw	a3,a3,-16
   16e6a:	11812703          	lw	a4,280(sp)
   16e6e:	6886                	ld	a7,64(sp)
   16e70:	72c2                	ld	t0,48(sp)
   16e72:	835a                	mv	t1,s6
   16e74:	439d                	li	t2,7
   16e76:	fcdf41e3          	blt	t5,a3,16e38 <_svfprintf_r+0xa0a>
   16e7a:	2705                	addiw	a4,a4,1
   16e7c:	97b6                	add	a5,a5,a3
   16e7e:	00d33423          	sd	a3,8(t1)
   16e82:	01133023          	sd	a7,0(t1)
   16e86:	0007069b          	sext.w	a3,a4
   16e8a:	10e12c23          	sw	a4,280(sp)
   16e8e:	f23e                	sd	a5,288(sp)
   16e90:	471d                	li	a4,7
   16e92:	0341                	addi	t1,t1,16
   16e94:	f2d75b63          	bge	a4,a3,165ca <_svfprintf_r+0x19c>
   16e98:	0a10                	addi	a2,sp,272
   16e9a:	85d2                	mv	a1,s4
   16e9c:	854e                	mv	a0,s3
   16e9e:	f816                	sd	t0,48(sp)
   16ea0:	41f020ef          	jal	ra,19abe <__ssprint_r>
   16ea4:	f135                	bnez	a0,16e08 <_svfprintf_r+0x9da>
   16ea6:	7792                	ld	a5,288(sp)
   16ea8:	72c2                	ld	t0,48(sp)
   16eaa:	835a                	mv	t1,s6
   16eac:	f1eff06f          	j	165ca <_svfprintf_r+0x19c>
   16eb0:	0a10                	addi	a2,sp,272
   16eb2:	85d2                	mv	a1,s4
   16eb4:	854e                	mv	a0,s3
   16eb6:	409020ef          	jal	ra,19abe <__ssprint_r>
   16eba:	f539                	bnez	a0,16e08 <_svfprintf_r+0x9da>
   16ebc:	7792                	ld	a5,288(sp)
   16ebe:	835a                	mv	t1,s6
   16ec0:	f62ff06f          	j	16622 <_svfprintf_r+0x1f4>
   16ec4:	68f5                	lui	a7,0x1d
   16ec6:	46c1                	li	a3,16
   16ec8:	11812703          	lw	a4,280(sp)
   16ecc:	c4888893          	addi	a7,a7,-952 # 1cc48 <blanks.1>
   16ed0:	4bc1                	li	s7,16
   16ed2:	4c1d                	li	s8,7
   16ed4:	0096c663          	blt	a3,s1,16ee0 <_svfprintf_r+0xab2>
   16ed8:	a081                	j	16f18 <_svfprintf_r+0xaea>
   16eda:	34c1                	addiw	s1,s1,-16
   16edc:	029bde63          	bge	s7,s1,16f18 <_svfprintf_r+0xaea>
   16ee0:	2705                	addiw	a4,a4,1
   16ee2:	07c1                	addi	a5,a5,16
   16ee4:	01133023          	sd	a7,0(t1)
   16ee8:	01733423          	sd	s7,8(t1)
   16eec:	f23e                	sd	a5,288(sp)
   16eee:	10e12c23          	sw	a4,280(sp)
   16ef2:	0341                	addi	t1,t1,16
   16ef4:	feec53e3          	bge	s8,a4,16eda <_svfprintf_r+0xaac>
   16ef8:	0a10                	addi	a2,sp,272
   16efa:	85d2                	mv	a1,s4
   16efc:	854e                	mv	a0,s3
   16efe:	f846                	sd	a7,48(sp)
   16f00:	3bf020ef          	jal	ra,19abe <__ssprint_r>
   16f04:	f00512e3          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   16f08:	34c1                	addiw	s1,s1,-16
   16f0a:	7792                	ld	a5,288(sp)
   16f0c:	11812703          	lw	a4,280(sp)
   16f10:	78c2                	ld	a7,48(sp)
   16f12:	835a                	mv	t1,s6
   16f14:	fc9bc6e3          	blt	s7,s1,16ee0 <_svfprintf_r+0xab2>
   16f18:	0017069b          	addiw	a3,a4,1
   16f1c:	97a6                	add	a5,a5,s1
   16f1e:	01133023          	sd	a7,0(t1)
   16f22:	00933423          	sd	s1,8(t1)
   16f26:	f23e                	sd	a5,288(sp)
   16f28:	10d12c23          	sw	a3,280(sp)
   16f2c:	471d                	li	a4,7
   16f2e:	f2d75d63          	bge	a4,a3,16668 <_svfprintf_r+0x23a>
   16f32:	0a10                	addi	a2,sp,272
   16f34:	85d2                	mv	a1,s4
   16f36:	854e                	mv	a0,s3
   16f38:	387020ef          	jal	ra,19abe <__ssprint_r>
   16f3c:	ec0516e3          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   16f40:	7792                	ld	a5,288(sp)
   16f42:	f26ff06f          	j	16668 <_svfprintf_r+0x23a>
   16f46:	562e                	lw	a2,232(sp)
   16f48:	54c05863          	blez	a2,17498 <_svfprintf_r+0x106a>
   16f4c:	6726                	ld	a4,72(sp)
   16f4e:	7682                	ld	a3,32(sp)
   16f50:	00070b9b          	sext.w	s7,a4
   16f54:	24e6c863          	blt	a3,a4,171a4 <_svfprintf_r+0xd76>
   16f58:	03705263          	blez	s7,16f7c <_svfprintf_r+0xb4e>
   16f5c:	11812703          	lw	a4,280(sp)
   16f60:	97de                	add	a5,a5,s7
   16f62:	01933023          	sd	s9,0(t1)
   16f66:	0017069b          	addiw	a3,a4,1
   16f6a:	01733423          	sd	s7,8(t1)
   16f6e:	f23e                	sd	a5,288(sp)
   16f70:	10d12c23          	sw	a3,280(sp)
   16f74:	471d                	li	a4,7
   16f76:	0341                	addi	t1,t1,16
   16f78:	20d74ae3          	blt	a4,a3,1798c <_svfprintf_r+0x155e>
   16f7c:	fffbc713          	not	a4,s7
   16f80:	977d                	srai	a4,a4,0x3f
   16f82:	00ebfbb3          	and	s7,s7,a4
   16f86:	6726                	ld	a4,72(sp)
   16f88:	41770bbb          	subw	s7,a4,s7
   16f8c:	2d704563          	bgtz	s7,17256 <_svfprintf_r+0xe28>
   16f90:	66a6                	ld	a3,72(sp)
   16f92:	4004f713          	andi	a4,s1,1024
   16f96:	00dc8c33          	add	s8,s9,a3
   16f9a:	32071d63          	bnez	a4,172d4 <_svfprintf_r+0xea6>
   16f9e:	572e                	lw	a4,232(sp)
   16fa0:	7682                	ld	a3,32(sp)
   16fa2:	00d74663          	blt	a4,a3,16fae <_svfprintf_r+0xb80>
   16fa6:	0014f693          	andi	a3,s1,1
   16faa:	1e068ee3          	beqz	a3,179a6 <_svfprintf_r+0x1578>
   16fae:	7626                	ld	a2,104(sp)
   16fb0:	11812683          	lw	a3,280(sp)
   16fb4:	75c6                	ld	a1,112(sp)
   16fb6:	97b2                	add	a5,a5,a2
   16fb8:	2685                	addiw	a3,a3,1
   16fba:	00c33423          	sd	a2,8(t1)
   16fbe:	00b33023          	sd	a1,0(t1)
   16fc2:	0006861b          	sext.w	a2,a3
   16fc6:	10d12c23          	sw	a3,280(sp)
   16fca:	f23e                	sd	a5,288(sp)
   16fcc:	469d                	li	a3,7
   16fce:	0341                	addi	t1,t1,16
   16fd0:	42c6c2e3          	blt	a3,a2,17bf4 <_svfprintf_r+0x17c6>
   16fd4:	7682                	ld	a3,32(sp)
   16fd6:	00dc8833          	add	a6,s9,a3
   16fda:	41880bb3          	sub	s7,a6,s8
   16fde:	9e99                	subw	a3,a3,a4
   16fe0:	000b861b          	sext.w	a2,s7
   16fe4:	00c6d363          	bge	a3,a2,16fea <_svfprintf_r+0xbbc>
   16fe8:	8bb6                	mv	s7,a3
   16fea:	2b81                	sext.w	s7,s7
   16fec:	03705263          	blez	s7,17010 <_svfprintf_r+0xbe2>
   16ff0:	11812703          	lw	a4,280(sp)
   16ff4:	97de                	add	a5,a5,s7
   16ff6:	01833023          	sd	s8,0(t1)
   16ffa:	0017061b          	addiw	a2,a4,1
   16ffe:	01733423          	sd	s7,8(t1)
   17002:	f23e                	sd	a5,288(sp)
   17004:	10c12c23          	sw	a2,280(sp)
   17008:	471d                	li	a4,7
   1700a:	0341                	addi	t1,t1,16
   1700c:	40c74ee3          	blt	a4,a2,17c28 <_svfprintf_r+0x17fa>
   17010:	fffbc713          	not	a4,s7
   17014:	977d                	srai	a4,a4,0x3f
   17016:	00ebfbb3          	and	s7,s7,a4
   1701a:	41768bbb          	subw	s7,a3,s7
   1701e:	e3705f63          	blez	s7,1665c <_svfprintf_r+0x22e>
   17022:	68f5                	lui	a7,0x1d
   17024:	46c1                	li	a3,16
   17026:	11812703          	lw	a4,280(sp)
   1702a:	c5888d93          	addi	s11,a7,-936 # 1cc58 <zeroes.0>
   1702e:	4cc1                	li	s9,16
   17030:	4c1d                	li	s8,7
   17032:	0176c663          	blt	a3,s7,1703e <_svfprintf_r+0xc10>
   17036:	a335                	j	17562 <_svfprintf_r+0x1134>
   17038:	3bc1                	addiw	s7,s7,-16
   1703a:	537cd463          	bge	s9,s7,17562 <_svfprintf_r+0x1134>
   1703e:	2705                	addiw	a4,a4,1
   17040:	07c1                	addi	a5,a5,16
   17042:	01b33023          	sd	s11,0(t1)
   17046:	01933423          	sd	s9,8(t1)
   1704a:	f23e                	sd	a5,288(sp)
   1704c:	10e12c23          	sw	a4,280(sp)
   17050:	0341                	addi	t1,t1,16
   17052:	feec53e3          	bge	s8,a4,17038 <_svfprintf_r+0xc0a>
   17056:	0a10                	addi	a2,sp,272
   17058:	85d2                	mv	a1,s4
   1705a:	854e                	mv	a0,s3
   1705c:	263020ef          	jal	ra,19abe <__ssprint_r>
   17060:	da0514e3          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   17064:	7792                	ld	a5,288(sp)
   17066:	11812703          	lw	a4,280(sp)
   1706a:	835a                	mv	t1,s6
   1706c:	b7f1                	j	17038 <_svfprintf_r+0xc0a>
   1706e:	ea0c1d63          	bnez	s8,16728 <_svfprintf_r+0x2fa>
   17072:	84ee                	mv	s1,s11
   17074:	4c01                	li	s8,0
   17076:	4b81                	li	s7,0
   17078:	18c10c93          	addi	s9,sp,396
   1707c:	ebcff06f          	j	16738 <_svfprintf_r+0x30a>
   17080:	0014f593          	andi	a1,s1,1
   17084:	800596e3          	bnez	a1,16890 <_svfprintf_r+0x462>
   17088:	00c33423          	sd	a2,8(t1)
   1708c:	f26a                	sd	s10,288(sp)
   1708e:	11712c23          	sw	s7,280(sp)
   17092:	469d                	li	a3,7
   17094:	8776d1e3          	bge	a3,s7,168f6 <_svfprintf_r+0x4c8>
   17098:	0a10                	addi	a2,sp,272
   1709a:	85d2                	mv	a1,s4
   1709c:	854e                	mv	a0,s3
   1709e:	221020ef          	jal	ra,19abe <__ssprint_r>
   170a2:	d60513e3          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   170a6:	7d12                	ld	s10,288(sp)
   170a8:	11812b83          	lw	s7,280(sp)
   170ac:	8c5a                	mv	s8,s6
   170ae:	849ff06f          	j	168f6 <_svfprintf_r+0x4c8>
   170b2:	84d052e3          	blez	a3,168f6 <_svfprintf_r+0x4c8>
   170b6:	68f5                	lui	a7,0x1d
   170b8:	4641                	li	a2,16
   170ba:	c5888d93          	addi	s11,a7,-936 # 1cc58 <zeroes.0>
   170be:	4841                	li	a6,16
   170c0:	4c9d                	li	s9,7
   170c2:	00d64663          	blt	a2,a3,170ce <_svfprintf_r+0xca0>
   170c6:	ab71                	j	17662 <_svfprintf_r+0x1234>
   170c8:	36c1                	addiw	a3,a3,-16
   170ca:	58d85c63          	bge	a6,a3,17662 <_svfprintf_r+0x1234>
   170ce:	2b85                	addiw	s7,s7,1
   170d0:	0d41                	addi	s10,s10,16
   170d2:	01bc3023          	sd	s11,0(s8)
   170d6:	010c3423          	sd	a6,8(s8)
   170da:	f26a                	sd	s10,288(sp)
   170dc:	11712c23          	sw	s7,280(sp)
   170e0:	0c41                	addi	s8,s8,16
   170e2:	ff7cd3e3          	bge	s9,s7,170c8 <_svfprintf_r+0xc9a>
   170e6:	0a10                	addi	a2,sp,272
   170e8:	85d2                	mv	a1,s4
   170ea:	854e                	mv	a0,s3
   170ec:	f836                	sd	a3,48(sp)
   170ee:	1d1020ef          	jal	ra,19abe <__ssprint_r>
   170f2:	d0051be3          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   170f6:	7d12                	ld	s10,288(sp)
   170f8:	11812b83          	lw	s7,280(sp)
   170fc:	76c2                	ld	a3,48(sp)
   170fe:	8c5a                	mv	s8,s6
   17100:	4841                	li	a6,16
   17102:	b7d9                	j	170c8 <_svfprintf_r+0xc9a>
   17104:	010df793          	andi	a5,s11,16
   17108:	e3bd                	bnez	a5,1716e <_svfprintf_r+0xd40>
   1710a:	66c2                	ld	a3,16(sp)
   1710c:	040df793          	andi	a5,s11,64
   17110:	0006a903          	lw	s2,0(a3)
   17114:	58078863          	beqz	a5,176a4 <_svfprintf_r+0x1276>
   17118:	1942                	slli	s2,s2,0x30
   1711a:	03095913          	srli	s2,s2,0x30
   1711e:	e83a                	sd	a4,16(sp)
   17120:	4785                	li	a5,1
   17122:	e58ff06f          	j	1677a <_svfprintf_r+0x34c>
   17126:	0a10                	addi	a2,sp,272
   17128:	85d2                	mv	a1,s4
   1712a:	854e                	mv	a0,s3
   1712c:	193020ef          	jal	ra,19abe <__ssprint_r>
   17130:	cc051ce3          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   17134:	7d12                	ld	s10,288(sp)
   17136:	11812b83          	lw	s7,280(sp)
   1713a:	8c5a                	mv	s8,s6
   1713c:	f66ff06f          	j	168a2 <_svfprintf_r+0x474>
   17140:	0a10                	addi	a2,sp,272
   17142:	85d2                	mv	a1,s4
   17144:	854e                	mv	a0,s3
   17146:	179020ef          	jal	ra,19abe <__ssprint_r>
   1714a:	ca051fe3          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   1714e:	7d12                	ld	s10,288(sp)
   17150:	11812b83          	lw	s7,280(sp)
   17154:	8c5a                	mv	s8,s6
   17156:	f6aff06f          	j	168c0 <_svfprintf_r+0x492>
   1715a:	0014f713          	andi	a4,s1,1
   1715e:	ce070f63          	beqz	a4,1665c <_svfprintf_r+0x22e>
   17162:	b4e9                	j	16c2c <_svfprintf_r+0x7fe>
   17164:	00044e03          	lbu	t3,0(s0)
   17168:	e83e                	sd	a5,16(sp)
   1716a:	bceff06f          	j	16538 <_svfprintf_r+0x10a>
   1716e:	67c2                	ld	a5,16(sp)
   17170:	e83a                	sd	a4,16(sp)
   17172:	0007b903          	ld	s2,0(a5)
   17176:	4785                	li	a5,1
   17178:	e02ff06f          	j	1677a <_svfprintf_r+0x34c>
   1717c:	67c2                	ld	a5,16(sp)
   1717e:	639c                	ld	a5,0(a5)
   17180:	893e                	mv	s2,a5
   17182:	d8aff06f          	j	1670c <_svfprintf_r+0x2de>
   17186:	67c2                	ld	a5,16(sp)
   17188:	0007b903          	ld	s2,0(a5)
   1718c:	de4ff06f          	j	16770 <_svfprintf_r+0x342>
   17190:	67c2                	ld	a5,16(sp)
   17192:	07bd                	addi	a5,a5,15
   17194:	ff07f713          	andi	a4,a5,-16
   17198:	631c                	ld	a5,0(a4)
   1719a:	670c                	ld	a1,8(a4)
   1719c:	0741                	addi	a4,a4,16
   1719e:	e83a                	sd	a4,16(sp)
   171a0:	e4cff06f          	j	167ec <_svfprintf_r+0x3be>
   171a4:	00068b9b          	sext.w	s7,a3
   171a8:	db704ae3          	bgtz	s7,16f5c <_svfprintf_r+0xb2e>
   171ac:	bbc1                	j	16f7c <_svfprintf_r+0xb4e>
   171ae:	67f1                	lui	a5,0x1c
   171b0:	32878793          	addi	a5,a5,808 # 1c328 <__clzdi2+0x5c>
   171b4:	f43e                	sd	a5,40(sp)
   171b6:	66c2                	ld	a3,16(sp)
   171b8:	0204f793          	andi	a5,s1,32
   171bc:	00868713          	addi	a4,a3,8
   171c0:	22078a63          	beqz	a5,173f4 <_svfprintf_r+0xfc6>
   171c4:	0006b903          	ld	s2,0(a3)
   171c8:	0014f793          	andi	a5,s1,1
   171cc:	cf81                	beqz	a5,171e4 <_svfprintf_r+0xdb6>
   171ce:	00090b63          	beqz	s2,171e4 <_svfprintf_r+0xdb6>
   171d2:	0024e493          	ori	s1,s1,2
   171d6:	03000793          	li	a5,48
   171da:	0ef10023          	sb	a5,224(sp)
   171de:	0fa100a3          	sb	s10,225(sp)
   171e2:	2481                	sext.w	s1,s1
   171e4:	bff4fd93          	andi	s11,s1,-1025
   171e8:	2d81                	sext.w	s11,s11
   171ea:	e83a                	sd	a4,16(sp)
   171ec:	4789                	li	a5,2
   171ee:	d8cff06f          	j	1677a <_svfprintf_r+0x34c>
   171f2:	8da6                	mv	s11,s1
   171f4:	b88d                	j	16a66 <_svfprintf_r+0x638>
   171f6:	0a10                	addi	a2,sp,272
   171f8:	85d2                	mv	a1,s4
   171fa:	854e                	mv	a0,s3
   171fc:	0c3020ef          	jal	ra,19abe <__ssprint_r>
   17200:	c00514e3          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   17204:	7792                	ld	a5,288(sp)
   17206:	835a                	mv	t1,s6
   17208:	b4a9                	j	16c52 <_svfprintf_r+0x824>
   1720a:	0204e493          	ori	s1,s1,32
   1720e:	00144e03          	lbu	t3,1(s0)
   17212:	2481                	sext.w	s1,s1
   17214:	0405                	addi	s0,s0,1
   17216:	b22ff06f          	j	16538 <_svfprintf_r+0x10a>
   1721a:	2004e493          	ori	s1,s1,512
   1721e:	00144e03          	lbu	t3,1(s0)
   17222:	2481                	sext.w	s1,s1
   17224:	0405                	addi	s0,s0,1
   17226:	b12ff06f          	j	16538 <_svfprintf_r+0x10a>
   1722a:	67f1                	lui	a5,0x1c
   1722c:	34078793          	addi	a5,a5,832 # 1c340 <__clzdi2+0x74>
   17230:	f43e                	sd	a5,40(sp)
   17232:	b751                	j	171b6 <_svfprintf_r+0xd88>
   17234:	04000593          	li	a1,64
   17238:	854e                	mv	a0,s3
   1723a:	9bffd0ef          	jal	ra,14bf8 <_malloc_r>
   1723e:	00aa3023          	sd	a0,0(s4)
   17242:	00aa3c23          	sd	a0,24(s4)
   17246:	420503e3          	beqz	a0,17e6c <_svfprintf_r+0x1a3e>
   1724a:	04000793          	li	a5,64
   1724e:	02fa2023          	sw	a5,32(s4)
   17252:	a42ff06f          	j	16494 <_svfprintf_r+0x66>
   17256:	68f5                	lui	a7,0x1d
   17258:	46c1                	li	a3,16
   1725a:	11812703          	lw	a4,280(sp)
   1725e:	c5888d93          	addi	s11,a7,-936 # 1cc58 <zeroes.0>
   17262:	4d41                	li	s10,16
   17264:	4c1d                	li	s8,7
   17266:	0176c663          	blt	a3,s7,17272 <_svfprintf_r+0xe44>
   1726a:	a5e5                	j	17952 <_svfprintf_r+0x1524>
   1726c:	3bc1                	addiw	s7,s7,-16
   1726e:	6f7d5263          	bge	s10,s7,17952 <_svfprintf_r+0x1524>
   17272:	2705                	addiw	a4,a4,1
   17274:	07c1                	addi	a5,a5,16
   17276:	01b33023          	sd	s11,0(t1)
   1727a:	01a33423          	sd	s10,8(t1)
   1727e:	f23e                	sd	a5,288(sp)
   17280:	10e12c23          	sw	a4,280(sp)
   17284:	0341                	addi	t1,t1,16
   17286:	feec53e3          	bge	s8,a4,1726c <_svfprintf_r+0xe3e>
   1728a:	0a10                	addi	a2,sp,272
   1728c:	85d2                	mv	a1,s4
   1728e:	854e                	mv	a0,s3
   17290:	02f020ef          	jal	ra,19abe <__ssprint_r>
   17294:	b6051ae3          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   17298:	7792                	ld	a5,288(sp)
   1729a:	11812703          	lw	a4,280(sp)
   1729e:	835a                	mv	t1,s6
   172a0:	b7f1                	j	1726c <_svfprintf_r+0xe3e>
   172a2:	8566                	mv	a0,s9
   172a4:	f81a                	sd	t1,48(sp)
   172a6:	886ff0ef          	jal	ra,1632c <strlen>
   172aa:	00050b9b          	sext.w	s7,a0
   172ae:	0df14783          	lbu	a5,223(sp)
   172b2:	fffbc913          	not	s2,s7
   172b6:	43f95913          	srai	s2,s2,0x3f
   172ba:	e86e                	sd	s11,16(sp)
   172bc:	ec02                	sd	zero,24(sp)
   172be:	e882                	sd	zero,80(sp)
   172c0:	ec82                	sd	zero,88(sp)
   172c2:	e482                	sd	zero,72(sp)
   172c4:	7342                	ld	t1,48(sp)
   172c6:	01797933          	and	s2,s2,s7
   172ca:	4c01                	li	s8,0
   172cc:	c8079463          	bnez	a5,16754 <_svfprintf_r+0x326>
   172d0:	adeff06f          	j	165ae <_svfprintf_r+0x180>
   172d4:	7702                	ld	a4,32(sp)
   172d6:	6ef5                	lui	t4,0x1d
   172d8:	4b9d                	li	s7,7
   172da:	9766                	add	a4,a4,s9
   172dc:	fc3a                	sd	a4,56(sp)
   172de:	6766                	ld	a4,88(sp)
   172e0:	4dc1                	li	s11,16
   172e2:	c58e8d13          	addi	s10,t4,-936 # 1cc58 <zeroes.0>
   172e6:	cb49                	beqz	a4,17378 <_svfprintf_r+0xf4a>
   172e8:	6746                	ld	a4,80(sp)
   172ea:	eb51                	bnez	a4,1737e <_svfprintf_r+0xf50>
   172ec:	7706                	ld	a4,96(sp)
   172ee:	177d                	addi	a4,a4,-1
   172f0:	f0ba                	sd	a4,96(sp)
   172f2:	6766                	ld	a4,88(sp)
   172f4:	377d                	addiw	a4,a4,-1
   172f6:	ecba                	sd	a4,88(sp)
   172f8:	668a                	ld	a3,128(sp)
   172fa:	11812703          	lw	a4,280(sp)
   172fe:	662a                	ld	a2,136(sp)
   17300:	97b6                	add	a5,a5,a3
   17302:	2705                	addiw	a4,a4,1
   17304:	00d33423          	sd	a3,8(t1)
   17308:	00c33023          	sd	a2,0(t1)
   1730c:	f23e                	sd	a5,288(sp)
   1730e:	0007069b          	sext.w	a3,a4
   17312:	10e12c23          	sw	a4,280(sp)
   17316:	0341                	addi	t1,t1,16
   17318:	0edbc663          	blt	s7,a3,17404 <_svfprintf_r+0xfd6>
   1731c:	7706                	ld	a4,96(sp)
   1731e:	00074603          	lbu	a2,0(a4)
   17322:	7762                	ld	a4,56(sp)
   17324:	418706b3          	sub	a3,a4,s8
   17328:	0006859b          	sext.w	a1,a3
   1732c:	0006071b          	sext.w	a4,a2
   17330:	00b65363          	bge	a2,a1,17336 <_svfprintf_r+0xf08>
   17334:	86ba                	mv	a3,a4
   17336:	2681                	sext.w	a3,a3
   17338:	02d05663          	blez	a3,17364 <_svfprintf_r+0xf36>
   1733c:	11812703          	lw	a4,280(sp)
   17340:	97b6                	add	a5,a5,a3
   17342:	01833023          	sd	s8,0(t1)
   17346:	0017061b          	addiw	a2,a4,1
   1734a:	00d33423          	sd	a3,8(t1)
   1734e:	f23e                	sd	a5,288(sp)
   17350:	10c12c23          	sw	a2,280(sp)
   17354:	20cbcf63          	blt	s7,a2,17572 <_svfprintf_r+0x1144>
   17358:	7706                	ld	a4,96(sp)
   1735a:	0341                	addi	t1,t1,16
   1735c:	00074603          	lbu	a2,0(a4)
   17360:	0006071b          	sext.w	a4,a2
   17364:	fff6c593          	not	a1,a3
   17368:	95fd                	srai	a1,a1,0x3f
   1736a:	8eed                	and	a3,a3,a1
   1736c:	9f15                	subw	a4,a4,a3
   1736e:	00e04c63          	bgtz	a4,17386 <_svfprintf_r+0xf58>
   17372:	9c32                	add	s8,s8,a2
   17374:	6766                	ld	a4,88(sp)
   17376:	fb2d                	bnez	a4,172e8 <_svfprintf_r+0xeba>
   17378:	6746                	ld	a4,80(sp)
   1737a:	020702e3          	beqz	a4,17b9e <_svfprintf_r+0x1770>
   1737e:	6746                	ld	a4,80(sp)
   17380:	377d                	addiw	a4,a4,-1
   17382:	e8ba                	sd	a4,80(sp)
   17384:	bf95                	j	172f8 <_svfprintf_r+0xeca>
   17386:	11812683          	lw	a3,280(sp)
   1738a:	00edc663          	blt	s11,a4,17396 <_svfprintf_r+0xf68>
   1738e:	a081                	j	173ce <_svfprintf_r+0xfa0>
   17390:	3741                	addiw	a4,a4,-16
   17392:	02edde63          	bge	s11,a4,173ce <_svfprintf_r+0xfa0>
   17396:	2685                	addiw	a3,a3,1
   17398:	07c1                	addi	a5,a5,16
   1739a:	01a33023          	sd	s10,0(t1)
   1739e:	01b33423          	sd	s11,8(t1)
   173a2:	f23e                	sd	a5,288(sp)
   173a4:	10d12c23          	sw	a3,280(sp)
   173a8:	0341                	addi	t1,t1,16
   173aa:	fedbd3e3          	bge	s7,a3,17390 <_svfprintf_r+0xf62>
   173ae:	0a10                	addi	a2,sp,272
   173b0:	85d2                	mv	a1,s4
   173b2:	854e                	mv	a0,s3
   173b4:	f83a                	sd	a4,48(sp)
   173b6:	708020ef          	jal	ra,19abe <__ssprint_r>
   173ba:	a40517e3          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   173be:	7742                	ld	a4,48(sp)
   173c0:	7792                	ld	a5,288(sp)
   173c2:	11812683          	lw	a3,280(sp)
   173c6:	3741                	addiw	a4,a4,-16
   173c8:	835a                	mv	t1,s6
   173ca:	fcedc6e3          	blt	s11,a4,17396 <_svfprintf_r+0xf68>
   173ce:	2685                	addiw	a3,a3,1
   173d0:	97ba                	add	a5,a5,a4
   173d2:	00e33423          	sd	a4,8(t1)
   173d6:	01a33023          	sd	s10,0(t1)
   173da:	f23e                	sd	a5,288(sp)
   173dc:	0006871b          	sext.w	a4,a3
   173e0:	10d12c23          	sw	a3,280(sp)
   173e4:	7eebc463          	blt	s7,a4,17bcc <_svfprintf_r+0x179e>
   173e8:	7706                	ld	a4,96(sp)
   173ea:	0341                	addi	t1,t1,16
   173ec:	00074603          	lbu	a2,0(a4)
   173f0:	9c32                	add	s8,s8,a2
   173f2:	b749                	j	17374 <_svfprintf_r+0xf46>
   173f4:	0104f793          	andi	a5,s1,16
   173f8:	12078b63          	beqz	a5,1752e <_svfprintf_r+0x1100>
   173fc:	67c2                	ld	a5,16(sp)
   173fe:	0007b903          	ld	s2,0(a5)
   17402:	b3d9                	j	171c8 <_svfprintf_r+0xd9a>
   17404:	0a10                	addi	a2,sp,272
   17406:	85d2                	mv	a1,s4
   17408:	854e                	mv	a0,s3
   1740a:	6b4020ef          	jal	ra,19abe <__ssprint_r>
   1740e:	9e051de3          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   17412:	7792                	ld	a5,288(sp)
   17414:	835a                	mv	t1,s6
   17416:	b719                	j	1731c <_svfprintf_r+0xeee>
   17418:	18c10b93          	addi	s7,sp,396
   1741c:	400df713          	andi	a4,s11,1024
   17420:	f002                	sd	zero,32(sp)
   17422:	865e                	mv	a2,s7
   17424:	44a9                	li	s1,10
   17426:	46a5                	li	a3,9
   17428:	0ff00893          	li	a7,255
   1742c:	a039                	j	1743a <_svfprintf_r+0x100c>
   1742e:	029957b3          	divu	a5,s2,s1
   17432:	8b26f5e3          	bgeu	a3,s2,16cdc <_svfprintf_r+0x8ae>
   17436:	893e                	mv	s2,a5
   17438:	8666                	mv	a2,s9
   1743a:	7582                	ld	a1,32(sp)
   1743c:	fff60c93          	addi	s9,a2,-1
   17440:	2585                	addiw	a1,a1,1
   17442:	f02e                	sd	a1,32(sp)
   17444:	029977b3          	remu	a5,s2,s1
   17448:	0307879b          	addiw	a5,a5,48
   1744c:	fef60fa3          	sb	a5,-1(a2)
   17450:	df79                	beqz	a4,1742e <_svfprintf_r+0x1000>
   17452:	7786                	ld	a5,96(sp)
   17454:	0007c783          	lbu	a5,0(a5)
   17458:	fcf59be3          	bne	a1,a5,1742e <_svfprintf_r+0x1000>
   1745c:	fd1789e3          	beq	a5,a7,1742e <_svfprintf_r+0x1000>
   17460:	8726fee3          	bgeu	a3,s2,16cdc <_svfprintf_r+0x8ae>
   17464:	678a                	ld	a5,128(sp)
   17466:	65aa                	ld	a1,136(sp)
   17468:	f83a                	sd	a4,48(sp)
   1746a:	40fc8cb3          	sub	s9,s9,a5
   1746e:	863e                	mv	a2,a5
   17470:	8566                	mv	a0,s9
   17472:	ec1a                	sd	t1,24(sp)
   17474:	f49fe0ef          	jal	ra,163bc <strncpy>
   17478:	7706                	ld	a4,96(sp)
   1747a:	029957b3          	divu	a5,s2,s1
   1747e:	6362                	ld	t1,24(sp)
   17480:	00174603          	lbu	a2,1(a4)
   17484:	f002                	sd	zero,32(sp)
   17486:	46a5                	li	a3,9
   17488:	00c03633          	snez	a2,a2
   1748c:	9732                	add	a4,a4,a2
   1748e:	f0ba                	sd	a4,96(sp)
   17490:	0ff00893          	li	a7,255
   17494:	7742                	ld	a4,48(sp)
   17496:	b745                	j	17436 <_svfprintf_r+0x1008>
   17498:	11812703          	lw	a4,280(sp)
   1749c:	66f1                	lui	a3,0x1c
   1749e:	36068693          	addi	a3,a3,864 # 1c360 <__clzdi2+0x94>
   174a2:	2705                	addiw	a4,a4,1
   174a4:	00d33023          	sd	a3,0(t1)
   174a8:	0785                	addi	a5,a5,1
   174aa:	4685                	li	a3,1
   174ac:	00d33423          	sd	a3,8(t1)
   174b0:	10e12c23          	sw	a4,280(sp)
   174b4:	0007069b          	sext.w	a3,a4
   174b8:	f23e                	sd	a5,288(sp)
   174ba:	471d                	li	a4,7
   174bc:	0341                	addi	t1,t1,16
   174be:	04d74d63          	blt	a4,a3,17518 <_svfprintf_r+0x10ea>
   174c2:	12061563          	bnez	a2,175ec <_svfprintf_r+0x11be>
   174c6:	7682                	ld	a3,32(sp)
   174c8:	0014f713          	andi	a4,s1,1
   174cc:	8f55                	or	a4,a4,a3
   174ce:	98070763          	beqz	a4,1665c <_svfprintf_r+0x22e>
   174d2:	76a6                	ld	a3,104(sp)
   174d4:	11812703          	lw	a4,280(sp)
   174d8:	7646                	ld	a2,112(sp)
   174da:	97b6                	add	a5,a5,a3
   174dc:	2705                	addiw	a4,a4,1
   174de:	00d33423          	sd	a3,8(t1)
   174e2:	10e12c23          	sw	a4,280(sp)
   174e6:	0007069b          	sext.w	a3,a4
   174ea:	00c33023          	sd	a2,0(t1)
   174ee:	f23e                	sd	a5,288(sp)
   174f0:	471d                	li	a4,7
   174f2:	50d74e63          	blt	a4,a3,17a0e <_svfprintf_r+0x15e0>
   174f6:	0341                	addi	t1,t1,16
   174f8:	7702                	ld	a4,32(sp)
   174fa:	0016861b          	addiw	a2,a3,1
   174fe:	01933023          	sd	s9,0(t1)
   17502:	97ba                	add	a5,a5,a4
   17504:	00e33423          	sd	a4,8(t1)
   17508:	f23e                	sd	a5,288(sp)
   1750a:	10c12c23          	sw	a2,280(sp)
   1750e:	471d                	li	a4,7
   17510:	94c75563          	bge	a4,a2,1665a <_svfprintf_r+0x22c>
   17514:	c06ff06f          	j	1691a <_svfprintf_r+0x4ec>
   17518:	0a10                	addi	a2,sp,272
   1751a:	85d2                	mv	a1,s4
   1751c:	854e                	mv	a0,s3
   1751e:	5a0020ef          	jal	ra,19abe <__ssprint_r>
   17522:	8e0513e3          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   17526:	562e                	lw	a2,232(sp)
   17528:	7792                	ld	a5,288(sp)
   1752a:	835a                	mv	t1,s6
   1752c:	bf59                	j	174c2 <_svfprintf_r+0x1094>
   1752e:	66c2                	ld	a3,16(sp)
   17530:	0404f793          	andi	a5,s1,64
   17534:	0006a903          	lw	s2,0(a3)
   17538:	12078c63          	beqz	a5,17670 <_svfprintf_r+0x1242>
   1753c:	1942                	slli	s2,s2,0x30
   1753e:	03095913          	srli	s2,s2,0x30
   17542:	b159                	j	171c8 <_svfprintf_r+0xd9a>
   17544:	8da6                	mv	s11,s1
   17546:	e83a                	sd	a4,16(sp)
   17548:	9daff06f          	j	16722 <_svfprintf_r+0x2f4>
   1754c:	0a10                	addi	a2,sp,272
   1754e:	85d2                	mv	a1,s4
   17550:	854e                	mv	a0,s3
   17552:	56c020ef          	jal	ra,19abe <__ssprint_r>
   17556:	8a0519e3          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   1755a:	7792                	ld	a5,288(sp)
   1755c:	835a                	mv	t1,s6
   1755e:	ec6ff06f          	j	16c24 <_svfprintf_r+0x7f6>
   17562:	0017069b          	addiw	a3,a4,1
   17566:	8736                	mv	a4,a3
   17568:	97de                	add	a5,a5,s7
   1756a:	01b33023          	sd	s11,0(t1)
   1756e:	8dcff06f          	j	1664a <_svfprintf_r+0x21c>
   17572:	0a10                	addi	a2,sp,272
   17574:	85d2                	mv	a1,s4
   17576:	854e                	mv	a0,s3
   17578:	f836                	sd	a3,48(sp)
   1757a:	544020ef          	jal	ra,19abe <__ssprint_r>
   1757e:	880515e3          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   17582:	7786                	ld	a5,96(sp)
   17584:	76c2                	ld	a3,48(sp)
   17586:	835a                	mv	t1,s6
   17588:	0007c603          	lbu	a2,0(a5)
   1758c:	7792                	ld	a5,288(sp)
   1758e:	0006071b          	sext.w	a4,a2
   17592:	bbc9                	j	17364 <_svfprintf_r+0xf36>
   17594:	6512                	ld	a0,256(sp)
   17596:	65b2                	ld	a1,264(sp)
   17598:	4601                	li	a2,0
   1759a:	4681                	li	a3,0
   1759c:	20d030ef          	jal	ra,1afa8 <__letf2>
   175a0:	6362                	ld	t1,24(sp)
   175a2:	64054463          	bltz	a0,17bea <_svfprintf_r+0x17bc>
   175a6:	0df14783          	lbu	a5,223(sp)
   175aa:	04700713          	li	a4,71
   175ae:	3da75b63          	bge	a4,s10,17984 <_svfprintf_r+0x1556>
   175b2:	6871                	lui	a6,0x1c
   175b4:	31080c93          	addi	s9,a6,784 # 1c310 <__clzdi2+0x44>
   175b8:	f7f4f493          	andi	s1,s1,-129
   175bc:	ec02                	sd	zero,24(sp)
   175be:	e882                	sd	zero,80(sp)
   175c0:	ec82                	sd	zero,88(sp)
   175c2:	e482                	sd	zero,72(sp)
   175c4:	2481                	sext.w	s1,s1
   175c6:	490d                	li	s2,3
   175c8:	4b8d                	li	s7,3
   175ca:	4c01                	li	s8,0
   175cc:	98079463          	bnez	a5,16754 <_svfprintf_r+0x326>
   175d0:	fdffe06f          	j	165ae <_svfprintf_r+0x180>
   175d4:	4799                	li	a5,6
   175d6:	000c0b9b          	sext.w	s7,s8
   175da:	3d87e463          	bltu	a5,s8,179a2 <_svfprintf_r+0x1574>
   175de:	6871                	lui	a6,0x1c
   175e0:	895e                	mv	s2,s7
   175e2:	e86e                	sd	s11,16(sp)
   175e4:	35880c93          	addi	s9,a6,856 # 1c358 <__clzdi2+0x8c>
   175e8:	fbdfe06f          	j	165a4 <_svfprintf_r+0x176>
   175ec:	76a6                	ld	a3,104(sp)
   175ee:	11812703          	lw	a4,280(sp)
   175f2:	75c6                	ld	a1,112(sp)
   175f4:	97b6                	add	a5,a5,a3
   175f6:	2705                	addiw	a4,a4,1
   175f8:	00d33423          	sd	a3,8(t1)
   175fc:	00b33023          	sd	a1,0(t1)
   17600:	0007069b          	sext.w	a3,a4
   17604:	10e12c23          	sw	a4,280(sp)
   17608:	f23e                	sd	a5,288(sp)
   1760a:	471d                	li	a4,7
   1760c:	0341                	addi	t1,t1,16
   1760e:	40d74063          	blt	a4,a3,17a0e <_svfprintf_r+0x15e0>
   17612:	ee0653e3          	bgez	a2,174f8 <_svfprintf_r+0x10ca>
   17616:	68f5                	lui	a7,0x1d
   17618:	5741                	li	a4,-16
   1761a:	40c00c3b          	negw	s8,a2
   1761e:	c5888d93          	addi	s11,a7,-936 # 1cc58 <zeroes.0>
   17622:	4bc1                	li	s7,16
   17624:	4d1d                	li	s10,7
   17626:	00e64663          	blt	a2,a4,17632 <_svfprintf_r+0x1204>
   1762a:	a54d                	j	17ccc <_svfprintf_r+0x189e>
   1762c:	3c41                	addiw	s8,s8,-16
   1762e:	698bdf63          	bge	s7,s8,17ccc <_svfprintf_r+0x189e>
   17632:	2685                	addiw	a3,a3,1
   17634:	07c1                	addi	a5,a5,16
   17636:	01b33023          	sd	s11,0(t1)
   1763a:	01733423          	sd	s7,8(t1)
   1763e:	f23e                	sd	a5,288(sp)
   17640:	10d12c23          	sw	a3,280(sp)
   17644:	0341                	addi	t1,t1,16
   17646:	fedd53e3          	bge	s10,a3,1762c <_svfprintf_r+0x11fe>
   1764a:	0a10                	addi	a2,sp,272
   1764c:	85d2                	mv	a1,s4
   1764e:	854e                	mv	a0,s3
   17650:	46e020ef          	jal	ra,19abe <__ssprint_r>
   17654:	fa051a63          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   17658:	7792                	ld	a5,288(sp)
   1765a:	11812683          	lw	a3,280(sp)
   1765e:	835a                	mv	t1,s6
   17660:	b7f1                	j	1762c <_svfprintf_r+0x11fe>
   17662:	2b85                	addiw	s7,s7,1
   17664:	865e                	mv	a2,s7
   17666:	9d36                	add	s10,s10,a3
   17668:	01bc3023          	sd	s11,0(s8)
   1766c:	a78ff06f          	j	168e4 <_svfprintf_r+0x4b6>
   17670:	2004f793          	andi	a5,s1,512
   17674:	34078763          	beqz	a5,179c2 <_svfprintf_r+0x1594>
   17678:	0ff97913          	zext.b	s2,s2
   1767c:	b6b1                	j	171c8 <_svfprintf_r+0xd9a>
   1767e:	2004f793          	andi	a5,s1,512
   17682:	36078563          	beqz	a5,179ec <_svfprintf_r+0x15be>
   17686:	0ff97913          	zext.b	s2,s2
   1768a:	8e6ff06f          	j	16770 <_svfprintf_r+0x342>
   1768e:	2004f793          	andi	a5,s1,512
   17692:	34078a63          	beqz	a5,179e6 <_svfprintf_r+0x15b8>
   17696:	0189191b          	slliw	s2,s2,0x18
   1769a:	4189591b          	sraiw	s2,s2,0x18
   1769e:	87ca                	mv	a5,s2
   176a0:	86cff06f          	j	1670c <_svfprintf_r+0x2de>
   176a4:	200df793          	andi	a5,s11,512
   176a8:	32078263          	beqz	a5,179cc <_svfprintf_r+0x159e>
   176ac:	0ff97913          	zext.b	s2,s2
   176b0:	e83a                	sd	a4,16(sp)
   176b2:	4785                	li	a5,1
   176b4:	8c6ff06f          	j	1677a <_svfprintf_r+0x34c>
   176b8:	07800713          	li	a4,120
   176bc:	0024e793          	ori	a5,s1,2
   176c0:	03000693          	li	a3,48
   176c4:	2781                	sext.w	a5,a5
   176c6:	0ee100a3          	sb	a4,225(sp)
   176ca:	0ed10023          	sb	a3,224(sp)
   176ce:	06300713          	li	a4,99
   176d2:	f53e                	sd	a5,168(sp)
   176d4:	ec02                	sd	zero,24(sp)
   176d6:	12810c93          	addi	s9,sp,296
   176da:	35874963          	blt	a4,s8,17a2c <_svfprintf_r+0x15fe>
   176de:	6932                	ld	s2,264(sp)
   176e0:	fdfd7793          	andi	a5,s10,-33
   176e4:	1024e493          	ori	s1,s1,258
   176e8:	ecbe                	sd	a5,88(sp)
   176ea:	e582                	sd	zero,200(sp)
   176ec:	6b92                	ld	s7,256(sp)
   176ee:	2481                	sext.w	s1,s1
   176f0:	0e094163          	bltz	s2,177d2 <_svfprintf_r+0x13a4>
   176f4:	06100793          	li	a5,97
   176f8:	64fd0b63          	beq	s10,a5,17d4e <_svfprintf_r+0x1920>
   176fc:	fbfd079b          	addiw	a5,s10,-65
   17700:	0007869b          	sext.w	a3,a5
   17704:	02500713          	li	a4,37
   17708:	00d76c63          	bltu	a4,a3,17720 <_svfprintf_r+0x12f2>
   1770c:	02079713          	slli	a4,a5,0x20
   17710:	01e75793          	srli	a5,a4,0x1e
   17714:	6775                	lui	a4,0x1d
   17716:	bb070713          	addi	a4,a4,-1104 # 1cbb0 <p05.0+0x178>
   1771a:	97ba                	add	a5,a5,a4
   1771c:	439c                	lw	a5,0(a5)
   1771e:	8782                	jr	a5
   17720:	8de2                	mv	s11,s8
   17722:	4689                	li	a3,2
   17724:	11bc                	addi	a5,sp,232
   17726:	876e                	mv	a4,s11
   17728:	0f810893          	addi	a7,sp,248
   1772c:	0ec10813          	addi	a6,sp,236
   17730:	85de                	mv	a1,s7
   17732:	864a                	mv	a2,s2
   17734:	854e                	mv	a0,s3
   17736:	f01a                	sd	t1,32(sp)
   17738:	c20fc0ef          	jal	ra,13b58 <_ldtoa_r>
   1773c:	6766                	ld	a4,88(sp)
   1773e:	04700793          	li	a5,71
   17742:	7302                	ld	t1,32(sp)
   17744:	8caa                	mv	s9,a0
   17746:	46f70b63          	beq	a4,a5,17bbc <_svfprintf_r+0x178e>
   1774a:	04600793          	li	a5,70
   1774e:	01b508b3          	add	a7,a0,s11
   17752:	00f71a63          	bne	a4,a5,17766 <_svfprintf_r+0x1338>
   17756:	00054703          	lbu	a4,0(a0)
   1775a:	03000793          	li	a5,48
   1775e:	2ef70b63          	beq	a4,a5,17a54 <_svfprintf_r+0x1626>
   17762:	572e                	lw	a4,232(sp)
   17764:	98ba                	add	a7,a7,a4
   17766:	4681                	li	a3,0
   17768:	4601                	li	a2,0
   1776a:	855e                	mv	a0,s7
   1776c:	85ca                	mv	a1,s2
   1776e:	f846                	sd	a7,48(sp)
   17770:	f01a                	sd	t1,32(sp)
   17772:	6f0030ef          	jal	ra,1ae62 <__eqtf2>
   17776:	78c2                	ld	a7,48(sp)
   17778:	7302                	ld	t1,32(sp)
   1777a:	86c6                	mv	a3,a7
   1777c:	e13d                	bnez	a0,177e2 <_svfprintf_r+0x13b4>
   1777e:	419687bb          	subw	a5,a3,s9
   17782:	f03e                	sd	a5,32(sp)
   17784:	572e                	lw	a4,232(sp)
   17786:	04700793          	li	a5,71
   1778a:	e4ba                	sd	a4,72(sp)
   1778c:	6766                	ld	a4,88(sp)
   1778e:	06f70863          	beq	a4,a5,177fe <_svfprintf_r+0x13d0>
   17792:	6766                	ld	a4,88(sp)
   17794:	04600793          	li	a5,70
   17798:	0cf71663          	bne	a4,a5,17864 <_svfprintf_r+0x1436>
   1779c:	77aa                	ld	a5,168(sp)
   1779e:	6726                	ld	a4,72(sp)
   177a0:	8b85                	andi	a5,a5,1
   177a2:	00fc67b3          	or	a5,s8,a5
   177a6:	68e05363          	blez	a4,17e2c <_svfprintf_r+0x19fe>
   177aa:	64079963          	bnez	a5,17dfc <_svfprintf_r+0x19ce>
   177ae:	6ba6                	ld	s7,72(sp)
   177b0:	06600d13          	li	s10,102
   177b4:	77aa                	ld	a5,168(sp)
   177b6:	4007f793          	andi	a5,a5,1024
   177ba:	5c079a63          	bnez	a5,17d8e <_svfprintf_r+0x1960>
   177be:	fffbc913          	not	s2,s7
   177c2:	43f95913          	srai	s2,s2,0x3f
   177c6:	012bf933          	and	s2,s7,s2
   177ca:	2901                	sext.w	s2,s2
   177cc:	a89d                	j	17842 <_svfprintf_r+0x1414>
   177ce:	ec02                	sd	zero,24(sp)
   177d0:	84be                	mv	s1,a5
   177d2:	57fd                	li	a5,-1
   177d4:	17fe                	slli	a5,a5,0x3f
   177d6:	00f94933          	xor	s2,s2,a5
   177da:	02d00793          	li	a5,45
   177de:	e5be                	sd	a5,200(sp)
   177e0:	bf11                	j	176f4 <_svfprintf_r+0x12c6>
   177e2:	76ee                	ld	a3,248(sp)
   177e4:	f916fde3          	bgeu	a3,a7,1777e <_svfprintf_r+0x1350>
   177e8:	03000713          	li	a4,48
   177ec:	00168793          	addi	a5,a3,1
   177f0:	fdbe                	sd	a5,248(sp)
   177f2:	00e68023          	sb	a4,0(a3)
   177f6:	76ee                	ld	a3,248(sp)
   177f8:	ff16eae3          	bltu	a3,a7,177ec <_svfprintf_r+0x13be>
   177fc:	b749                	j	1777e <_svfprintf_r+0x1350>
   177fe:	6726                	ld	a4,72(sp)
   17800:	57f5                	li	a5,-3
   17802:	04f74d63          	blt	a4,a5,1785c <_svfprintf_r+0x142e>
   17806:	04ec4b63          	blt	s8,a4,1785c <_svfprintf_r+0x142e>
   1780a:	7782                	ld	a5,32(sp)
   1780c:	6726                	ld	a4,72(sp)
   1780e:	44f74063          	blt	a4,a5,17c4e <_svfprintf_r+0x1820>
   17812:	77aa                	ld	a5,168(sp)
   17814:	6726                	ld	a4,72(sp)
   17816:	8b85                	andi	a5,a5,1
   17818:	8bba                	mv	s7,a4
   1781a:	c781                	beqz	a5,17822 <_svfprintf_r+0x13f4>
   1781c:	77a6                	ld	a5,104(sp)
   1781e:	00e78bbb          	addw	s7,a5,a4
   17822:	77aa                	ld	a5,168(sp)
   17824:	4007f793          	andi	a5,a5,1024
   17828:	c781                	beqz	a5,17830 <_svfprintf_r+0x1402>
   1782a:	67a6                	ld	a5,72(sp)
   1782c:	54f04f63          	bgtz	a5,17d8a <_svfprintf_r+0x195c>
   17830:	fffbc913          	not	s2,s7
   17834:	43f95913          	srai	s2,s2,0x3f
   17838:	012bf933          	and	s2,s7,s2
   1783c:	2901                	sext.w	s2,s2
   1783e:	06700d13          	li	s10,103
   17842:	e882                	sd	zero,80(sp)
   17844:	ec82                	sd	zero,88(sp)
   17846:	67ae                	ld	a5,200(sp)
   17848:	36078263          	beqz	a5,17bac <_svfprintf_r+0x177e>
   1784c:	02d00793          	li	a5,45
   17850:	0cf10fa3          	sb	a5,223(sp)
   17854:	4c01                	li	s8,0
   17856:	2905                	addiw	s2,s2,1
   17858:	d57fe06f          	j	165ae <_svfprintf_r+0x180>
   1785c:	3d79                	addiw	s10,s10,-2
   1785e:	fdfd7793          	andi	a5,s10,-33
   17862:	ecbe                	sd	a5,88(sp)
   17864:	67a6                	ld	a5,72(sp)
   17866:	65e6                	ld	a1,88(sp)
   17868:	04100713          	li	a4,65
   1786c:	fff7869b          	addiw	a3,a5,-1
   17870:	d5b6                	sw	a3,232(sp)
   17872:	0ffd7793          	zext.b	a5,s10
   17876:	4601                	li	a2,0
   17878:	1ce58963          	beq	a1,a4,17a4a <_svfprintf_r+0x161c>
   1787c:	0ef10823          	sb	a5,240(sp)
   17880:	02b00793          	li	a5,43
   17884:	0006d763          	bgez	a3,17892 <_svfprintf_r+0x1464>
   17888:	67a6                	ld	a5,72(sp)
   1788a:	4685                	li	a3,1
   1788c:	9e9d                	subw	a3,a3,a5
   1788e:	02d00793          	li	a5,45
   17892:	0ef108a3          	sb	a5,241(sp)
   17896:	47a5                	li	a5,9
   17898:	46d7d363          	bge	a5,a3,17cfe <_svfprintf_r+0x18d0>
   1789c:	0ff10e93          	addi	t4,sp,255
   178a0:	8676                	mv	a2,t4
   178a2:	45a9                	li	a1,10
   178a4:	06300793          	li	a5,99
   178a8:	02b6e73b          	remw	a4,a3,a1
   178ac:	88b2                	mv	a7,a2
   178ae:	8536                	mv	a0,a3
   178b0:	167d                	addi	a2,a2,-1
   178b2:	0307071b          	addiw	a4,a4,48
   178b6:	fee88fa3          	sb	a4,-1(a7)
   178ba:	02b6c6bb          	divw	a3,a3,a1
   178be:	fea7c5e3          	blt	a5,a0,178a8 <_svfprintf_r+0x147a>
   178c2:	0306869b          	addiw	a3,a3,48
   178c6:	0ff6f693          	zext.b	a3,a3
   178ca:	ffe88793          	addi	a5,a7,-2
   178ce:	fed60fa3          	sb	a3,-1(a2)
   178d2:	59d7f263          	bgeu	a5,t4,17e56 <_svfprintf_r+0x1a28>
   178d6:	0f210713          	addi	a4,sp,242
   178da:	a019                	j	178e0 <_svfprintf_r+0x14b2>
   178dc:	0007c683          	lbu	a3,0(a5)
   178e0:	00d70023          	sb	a3,0(a4)
   178e4:	0785                	addi	a5,a5,1
   178e6:	0705                	addi	a4,a4,1
   178e8:	ffd79ae3          	bne	a5,t4,178dc <_svfprintf_r+0x14ae>
   178ec:	10110793          	addi	a5,sp,257
   178f0:	0f210713          	addi	a4,sp,242
   178f4:	411787b3          	sub	a5,a5,a7
   178f8:	97ba                	add	a5,a5,a4
   178fa:	1998                	addi	a4,sp,240
   178fc:	9f99                	subw	a5,a5,a4
   178fe:	fcbe                	sd	a5,120(sp)
   17900:	77e6                	ld	a5,120(sp)
   17902:	7682                	ld	a3,32(sp)
   17904:	4705                	li	a4,1
   17906:	00f68bbb          	addw	s7,a3,a5
   1790a:	87de                	mv	a5,s7
   1790c:	40d75d63          	bge	a4,a3,17d26 <_svfprintf_r+0x18f8>
   17910:	7726                	ld	a4,104(sp)
   17912:	00e78bbb          	addw	s7,a5,a4
   17916:	77aa                	ld	a5,168(sp)
   17918:	fffbc913          	not	s2,s7
   1791c:	43f95913          	srai	s2,s2,0x3f
   17920:	bff7f493          	andi	s1,a5,-1025
   17924:	2481                	sext.w	s1,s1
   17926:	012bf933          	and	s2,s7,s2
   1792a:	1004e493          	ori	s1,s1,256
   1792e:	2901                	sext.w	s2,s2
   17930:	e882                	sd	zero,80(sp)
   17932:	ec82                	sd	zero,88(sp)
   17934:	e482                	sd	zero,72(sp)
   17936:	bf01                	j	17846 <_svfprintf_r+0x1418>
   17938:	67b2                	ld	a5,264(sp)
   1793a:	0c07c563          	bltz	a5,17a04 <_svfprintf_r+0x15d6>
   1793e:	0df14783          	lbu	a5,223(sp)
   17942:	04700713          	li	a4,71
   17946:	31a75063          	bge	a4,s10,17c46 <_svfprintf_r+0x1818>
   1794a:	6871                	lui	a6,0x1c
   1794c:	32080c93          	addi	s9,a6,800 # 1c320 <__clzdi2+0x54>
   17950:	b1a5                	j	175b8 <_svfprintf_r+0x118a>
   17952:	0017069b          	addiw	a3,a4,1
   17956:	97de                	add	a5,a5,s7
   17958:	01b33023          	sd	s11,0(t1)
   1795c:	01733423          	sd	s7,8(t1)
   17960:	f23e                	sd	a5,288(sp)
   17962:	10d12c23          	sw	a3,280(sp)
   17966:	471d                	li	a4,7
   17968:	0341                	addi	t1,t1,16
   1796a:	e2d75363          	bge	a4,a3,16f90 <_svfprintf_r+0xb62>
   1796e:	0a10                	addi	a2,sp,272
   17970:	85d2                	mv	a1,s4
   17972:	854e                	mv	a0,s3
   17974:	14a020ef          	jal	ra,19abe <__ssprint_r>
   17978:	c8051863          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   1797c:	7792                	ld	a5,288(sp)
   1797e:	835a                	mv	t1,s6
   17980:	e10ff06f          	j	16f90 <_svfprintf_r+0xb62>
   17984:	6871                	lui	a6,0x1c
   17986:	30880c93          	addi	s9,a6,776 # 1c308 <__clzdi2+0x3c>
   1798a:	b13d                	j	175b8 <_svfprintf_r+0x118a>
   1798c:	0a10                	addi	a2,sp,272
   1798e:	85d2                	mv	a1,s4
   17990:	854e                	mv	a0,s3
   17992:	12c020ef          	jal	ra,19abe <__ssprint_r>
   17996:	c6051963          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   1799a:	7792                	ld	a5,288(sp)
   1799c:	835a                	mv	t1,s6
   1799e:	ddeff06f          	j	16f7c <_svfprintf_r+0xb4e>
   179a2:	4b99                	li	s7,6
   179a4:	b92d                	j	175de <_svfprintf_r+0x11b0>
   179a6:	7682                	ld	a3,32(sp)
   179a8:	00dc8bb3          	add	s7,s9,a3
   179ac:	418b8bb3          	sub	s7,s7,s8
   179b0:	9e99                	subw	a3,a3,a4
   179b2:	000b861b          	sext.w	a2,s7
   179b6:	00c6d363          	bge	a3,a2,179bc <_svfprintf_r+0x158e>
   179ba:	8bb6                	mv	s7,a3
   179bc:	2b81                	sext.w	s7,s7
   179be:	e52ff06f          	j	17010 <_svfprintf_r+0xbe2>
   179c2:	1902                	slli	s2,s2,0x20
   179c4:	02095913          	srli	s2,s2,0x20
   179c8:	801ff06f          	j	171c8 <_svfprintf_r+0xd9a>
   179cc:	1902                	slli	s2,s2,0x20
   179ce:	02095913          	srli	s2,s2,0x20
   179d2:	e83a                	sd	a4,16(sp)
   179d4:	4785                	li	a5,1
   179d6:	da5fe06f          	j	1677a <_svfprintf_r+0x34c>
   179da:	67a2                	ld	a5,8(sp)
   179dc:	8ca2                	mv	s9,s0
   179de:	00f71023          	sh	a5,0(a4)
   179e2:	cadfe06f          	j	1668e <_svfprintf_r+0x260>
   179e6:	87ca                	mv	a5,s2
   179e8:	d25fe06f          	j	1670c <_svfprintf_r+0x2de>
   179ec:	1902                	slli	s2,s2,0x20
   179ee:	02095913          	srli	s2,s2,0x20
   179f2:	d7ffe06f          	j	16770 <_svfprintf_r+0x342>
   179f6:	0a10                	addi	a2,sp,272
   179f8:	85d2                	mv	a1,s4
   179fa:	854e                	mv	a0,s3
   179fc:	0c2020ef          	jal	ra,19abe <__ssprint_r>
   17a00:	c9ffe06f          	j	1669e <_svfprintf_r+0x270>
   17a04:	02d00793          	li	a5,45
   17a08:	0cf10fa3          	sb	a5,223(sp)
   17a0c:	bf1d                	j	17942 <_svfprintf_r+0x1514>
   17a0e:	0a10                	addi	a2,sp,272
   17a10:	85d2                	mv	a1,s4
   17a12:	854e                	mv	a0,s3
   17a14:	0aa020ef          	jal	ra,19abe <__ssprint_r>
   17a18:	be051863          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   17a1c:	562e                	lw	a2,232(sp)
   17a1e:	7792                	ld	a5,288(sp)
   17a20:	11812683          	lw	a3,280(sp)
   17a24:	835a                	mv	t1,s6
   17a26:	ac0659e3          	bgez	a2,174f8 <_svfprintf_r+0x10ca>
   17a2a:	b6f5                	j	17616 <_svfprintf_r+0x11e8>
   17a2c:	001c059b          	addiw	a1,s8,1
   17a30:	854e                	mv	a0,s3
   17a32:	ec1a                	sd	t1,24(sp)
   17a34:	9c4fd0ef          	jal	ra,14bf8 <_malloc_r>
   17a38:	6362                	ld	t1,24(sp)
   17a3a:	8caa                	mv	s9,a0
   17a3c:	42050063          	beqz	a0,17e5c <_svfprintf_r+0x1a2e>
   17a40:	ec2a                	sd	a0,24(sp)
   17a42:	b971                	j	176de <_svfprintf_r+0x12b0>
   17a44:	4c19                	li	s8,6
   17a46:	df7fe06f          	j	1683c <_svfprintf_r+0x40e>
   17a4a:	27bd                	addiw	a5,a5,15
   17a4c:	0ff7f793          	zext.b	a5,a5
   17a50:	4605                	li	a2,1
   17a52:	b52d                	j	1787c <_svfprintf_r+0x144e>
   17a54:	4601                	li	a2,0
   17a56:	4681                	li	a3,0
   17a58:	855e                	mv	a0,s7
   17a5a:	85ca                	mv	a1,s2
   17a5c:	f846                	sd	a7,48(sp)
   17a5e:	f01a                	sd	t1,32(sp)
   17a60:	402030ef          	jal	ra,1ae62 <__eqtf2>
   17a64:	7302                	ld	t1,32(sp)
   17a66:	78c2                	ld	a7,48(sp)
   17a68:	ce050de3          	beqz	a0,17762 <_svfprintf_r+0x1334>
   17a6c:	4785                	li	a5,1
   17a6e:	41b7873b          	subw	a4,a5,s11
   17a72:	d5ba                	sw	a4,232(sp)
   17a74:	98ba                	add	a7,a7,a4
   17a76:	b9c5                	j	17766 <_svfprintf_r+0x1338>
   17a78:	001c0d9b          	addiw	s11,s8,1
   17a7c:	4689                	li	a3,2
   17a7e:	b15d                	j	17724 <_svfprintf_r+0x12f6>
   17a80:	8de2                	mv	s11,s8
   17a82:	468d                	li	a3,3
   17a84:	b145                	j	17724 <_svfprintf_r+0x12f6>
   17a86:	85ca                	mv	a1,s2
   17a88:	855e                	mv	a0,s7
   17a8a:	f81a                	sd	t1,48(sp)
   17a8c:	620040ef          	jal	ra,1c0ac <__trunctfdf2>
   17a90:	11a8                	addi	a0,sp,232
   17a92:	d32fe0ef          	jal	ra,15fc4 <frexp>
   17a96:	552040ef          	jal	ra,1bfe8 <__extenddftf2>
   17a9a:	768a                	ld	a3,160(sp)
   17a9c:	4601                	li	a2,0
   17a9e:	5b0030ef          	jal	ra,1b04e <__multf3>
   17aa2:	4601                	li	a2,0
   17aa4:	4681                	li	a3,0
   17aa6:	8baa                	mv	s7,a0
   17aa8:	f02e                	sd	a1,32(sp)
   17aaa:	3b8030ef          	jal	ra,1ae62 <__eqtf2>
   17aae:	7f82                	ld	t6,32(sp)
   17ab0:	7342                	ld	t1,48(sp)
   17ab2:	e119                	bnez	a0,17ab8 <_svfprintf_r+0x168a>
   17ab4:	4785                	li	a5,1
   17ab6:	d5be                	sw	a5,232(sp)
   17ab8:	67f1                	lui	a5,0x1c
   17aba:	34078793          	addi	a5,a5,832 # 1c340 <__clzdi2+0x74>
   17abe:	e4be                	sd	a5,72(sp)
   17ac0:	020c1793          	slli	a5,s8,0x20
   17ac4:	9381                	srli	a5,a5,0x20
   17ac6:	0785                	addi	a5,a5,1
   17ac8:	97e6                	add	a5,a5,s9
   17aca:	f93e                	sd	a5,176(sp)
   17acc:	018c87bb          	addw	a5,s9,s8
   17ad0:	8de6                	mv	s11,s9
   17ad2:	c3be                	sw	a5,196(sp)
   17ad4:	a829                	j	17aee <_svfprintf_r+0x16c0>
   17ad6:	4601                	li	a2,0
   17ad8:	4681                	li	a3,0
   17ada:	f01a                	sd	t1,32(sp)
   17adc:	fc2e                	sd	a1,56(sp)
   17ade:	f82a                	sd	a0,48(sp)
   17ae0:	382030ef          	jal	ra,1ae62 <__eqtf2>
   17ae4:	77e2                	ld	a5,56(sp)
   17ae6:	7302                	ld	t1,32(sp)
   17ae8:	88de                	mv	a7,s7
   17aea:	8fbe                	mv	t6,a5
   17aec:	cd31                	beqz	a0,17b48 <_svfprintf_r+0x171a>
   17aee:	66ca                	ld	a3,144(sp)
   17af0:	4601                	li	a2,0
   17af2:	85fe                	mv	a1,t6
   17af4:	855e                	mv	a0,s7
   17af6:	f81a                	sd	t1,48(sp)
   17af8:	556030ef          	jal	ra,1b04e <__multf3>
   17afc:	8bae                	mv	s7,a1
   17afe:	f02a                	sd	a0,32(sp)
   17b00:	400040ef          	jal	ra,1bf00 <__fixtfsi>
   17b04:	0005091b          	sext.w	s2,a0
   17b08:	854a                	mv	a0,s2
   17b0a:	488040ef          	jal	ra,1bf92 <__floatsitf>
   17b0e:	7782                	ld	a5,32(sp)
   17b10:	86ae                	mv	a3,a1
   17b12:	862a                	mv	a2,a0
   17b14:	85de                	mv	a1,s7
   17b16:	853e                	mv	a0,a5
   17b18:	361030ef          	jal	ra,1b678 <__subtf3>
   17b1c:	67a6                	ld	a5,72(sp)
   17b1e:	471e                	lw	a4,196(sp)
   17b20:	fd6e                	sd	s11,184(sp)
   17b22:	97ca                	add	a5,a5,s2
   17b24:	0d85                	addi	s11,s11,1
   17b26:	0007c683          	lbu	a3,0(a5)
   17b2a:	41b7073b          	subw	a4,a4,s11
   17b2e:	e8ba                	sd	a4,80(sp)
   17b30:	774a                	ld	a4,176(sp)
   17b32:	fedd8fa3          	sb	a3,-1(s11)
   17b36:	e0ae                	sd	a1,64(sp)
   17b38:	7342                	ld	t1,48(sp)
   17b3a:	87ae                	mv	a5,a1
   17b3c:	88aa                	mv	a7,a0
   17b3e:	8baa                	mv	s7,a0
   17b40:	f9b71be3          	bne	a4,s11,17ad6 <_svfprintf_r+0x16a8>
   17b44:	577d                	li	a4,-1
   17b46:	e8ba                	sd	a4,80(sp)
   17b48:	66ea                	ld	a3,152(sp)
   17b4a:	4601                	li	a2,0
   17b4c:	8546                	mv	a0,a7
   17b4e:	85be                	mv	a1,a5
   17b50:	f01a                	sd	t1,32(sp)
   17b52:	fc46                	sd	a7,56(sp)
   17b54:	f83e                	sd	a5,48(sp)
   17b56:	3ac030ef          	jal	ra,1af02 <__getf2>
   17b5a:	7302                	ld	t1,32(sp)
   17b5c:	10a04e63          	bgtz	a0,17c78 <_svfprintf_r+0x184a>
   17b60:	78e2                	ld	a7,56(sp)
   17b62:	77c2                	ld	a5,48(sp)
   17b64:	66ea                	ld	a3,152(sp)
   17b66:	4601                	li	a2,0
   17b68:	8546                	mv	a0,a7
   17b6a:	85be                	mv	a1,a5
   17b6c:	2f6030ef          	jal	ra,1ae62 <__eqtf2>
   17b70:	7302                	ld	t1,32(sp)
   17b72:	e509                	bnez	a0,17b7c <_svfprintf_r+0x174e>
   17b74:	00197913          	andi	s2,s2,1
   17b78:	10091063          	bnez	s2,17c78 <_svfprintf_r+0x184a>
   17b7c:	6746                	ld	a4,80(sp)
   17b7e:	03000693          	li	a3,48
   17b82:	0017079b          	addiw	a5,a4,1
   17b86:	97ee                	add	a5,a5,s11
   17b88:	00074763          	bltz	a4,17b96 <_svfprintf_r+0x1768>
   17b8c:	0d85                	addi	s11,s11,1
   17b8e:	fedd8fa3          	sb	a3,-1(s11)
   17b92:	ffb79de3          	bne	a5,s11,17b8c <_svfprintf_r+0x175e>
   17b96:	419d87bb          	subw	a5,s11,s9
   17b9a:	f03e                	sd	a5,32(sp)
   17b9c:	b6e5                	j	17784 <_svfprintf_r+0x1356>
   17b9e:	7702                	ld	a4,32(sp)
   17ba0:	9766                	add	a4,a4,s9
   17ba2:	bf877e63          	bgeu	a4,s8,16f9e <_svfprintf_r+0xb70>
   17ba6:	8c3a                	mv	s8,a4
   17ba8:	bf6ff06f          	j	16f9e <_svfprintf_r+0xb70>
   17bac:	0df14783          	lbu	a5,223(sp)
   17bb0:	4c01                	li	s8,0
   17bb2:	c399                	beqz	a5,17bb8 <_svfprintf_r+0x178a>
   17bb4:	ba1fe06f          	j	16754 <_svfprintf_r+0x326>
   17bb8:	9f7fe06f          	j	165ae <_svfprintf_r+0x180>
   17bbc:	77aa                	ld	a5,168(sp)
   17bbe:	01b508b3          	add	a7,a0,s11
   17bc2:	8b85                	andi	a5,a5,1
   17bc4:	ba0791e3          	bnez	a5,17766 <_svfprintf_r+0x1338>
   17bc8:	76ee                	ld	a3,248(sp)
   17bca:	be55                	j	1777e <_svfprintf_r+0x1350>
   17bcc:	0a10                	addi	a2,sp,272
   17bce:	85d2                	mv	a1,s4
   17bd0:	854e                	mv	a0,s3
   17bd2:	6ed010ef          	jal	ra,19abe <__ssprint_r>
   17bd6:	a2051963          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   17bda:	7786                	ld	a5,96(sp)
   17bdc:	835a                	mv	t1,s6
   17bde:	0007c603          	lbu	a2,0(a5)
   17be2:	7792                	ld	a5,288(sp)
   17be4:	9c32                	add	s8,s8,a2
   17be6:	f8eff06f          	j	17374 <_svfprintf_r+0xf46>
   17bea:	02d00793          	li	a5,45
   17bee:	0cf10fa3          	sb	a5,223(sp)
   17bf2:	ba65                	j	175aa <_svfprintf_r+0x117c>
   17bf4:	0a10                	addi	a2,sp,272
   17bf6:	85d2                	mv	a1,s4
   17bf8:	854e                	mv	a0,s3
   17bfa:	6c5010ef          	jal	ra,19abe <__ssprint_r>
   17bfe:	a0051563          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   17c02:	572e                	lw	a4,232(sp)
   17c04:	7792                	ld	a5,288(sp)
   17c06:	835a                	mv	t1,s6
   17c08:	bccff06f          	j	16fd4 <_svfprintf_r+0xba6>
   17c0c:	0df14783          	lbu	a5,223(sp)
   17c10:	e86e                	sd	s11,16(sp)
   17c12:	e882                	sd	zero,80(sp)
   17c14:	ec82                	sd	zero,88(sp)
   17c16:	e482                	sd	zero,72(sp)
   17c18:	8962                	mv	s2,s8
   17c1a:	8be2                	mv	s7,s8
   17c1c:	4c01                	li	s8,0
   17c1e:	c399                	beqz	a5,17c24 <_svfprintf_r+0x17f6>
   17c20:	b35fe06f          	j	16754 <_svfprintf_r+0x326>
   17c24:	98bfe06f          	j	165ae <_svfprintf_r+0x180>
   17c28:	0a10                	addi	a2,sp,272
   17c2a:	85d2                	mv	a1,s4
   17c2c:	854e                	mv	a0,s3
   17c2e:	691010ef          	jal	ra,19abe <__ssprint_r>
   17c32:	9c051b63          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   17c36:	56ae                	lw	a3,232(sp)
   17c38:	7702                	ld	a4,32(sp)
   17c3a:	7792                	ld	a5,288(sp)
   17c3c:	835a                	mv	t1,s6
   17c3e:	40d706bb          	subw	a3,a4,a3
   17c42:	bceff06f          	j	17010 <_svfprintf_r+0xbe2>
   17c46:	6871                	lui	a6,0x1c
   17c48:	31880c93          	addi	s9,a6,792 # 1c318 <__clzdi2+0x4c>
   17c4c:	b2b5                	j	175b8 <_svfprintf_r+0x118a>
   17c4e:	7702                	ld	a4,32(sp)
   17c50:	77a6                	ld	a5,104(sp)
   17c52:	06700d13          	li	s10,103
   17c56:	00e78bbb          	addw	s7,a5,a4
   17c5a:	6726                	ld	a4,72(sp)
   17c5c:	b4e04ce3          	bgtz	a4,177b4 <_svfprintf_r+0x1386>
   17c60:	40eb87bb          	subw	a5,s7,a4
   17c64:	2785                	addiw	a5,a5,1
   17c66:	00078b9b          	sext.w	s7,a5
   17c6a:	fffbc713          	not	a4,s7
   17c6e:	977d                	srai	a4,a4,0x3f
   17c70:	8ff9                	and	a5,a5,a4
   17c72:	0007891b          	sext.w	s2,a5
   17c76:	b6f1                	j	17842 <_svfprintf_r+0x1414>
   17c78:	77ea                	ld	a5,184(sp)
   17c7a:	fdbe                	sd	a5,248(sp)
   17c7c:	67a6                	ld	a5,72(sp)
   17c7e:	fffdc683          	lbu	a3,-1(s11)
   17c82:	00f7c603          	lbu	a2,15(a5)
   17c86:	87ee                	mv	a5,s11
   17c88:	00d61e63          	bne	a2,a3,17ca4 <_svfprintf_r+0x1876>
   17c8c:	03000593          	li	a1,48
   17c90:	feb78fa3          	sb	a1,-1(a5)
   17c94:	77ee                	ld	a5,248(sp)
   17c96:	fff78693          	addi	a3,a5,-1
   17c9a:	fdb6                	sd	a3,248(sp)
   17c9c:	fff7c683          	lbu	a3,-1(a5)
   17ca0:	fed608e3          	beq	a2,a3,17c90 <_svfprintf_r+0x1862>
   17ca4:	0016861b          	addiw	a2,a3,1
   17ca8:	03900593          	li	a1,57
   17cac:	0ff67613          	zext.b	a2,a2
   17cb0:	00b68563          	beq	a3,a1,17cba <_svfprintf_r+0x188c>
   17cb4:	fec78fa3          	sb	a2,-1(a5)
   17cb8:	bdf9                	j	17b96 <_svfprintf_r+0x1768>
   17cba:	6726                	ld	a4,72(sp)
   17cbc:	00a74603          	lbu	a2,10(a4)
   17cc0:	fec78fa3          	sb	a2,-1(a5)
   17cc4:	bdc9                	j	17b96 <_svfprintf_r+0x1768>
   17cc6:	8da6                	mv	s11,s1
   17cc8:	a61fe06f          	j	16728 <_svfprintf_r+0x2fa>
   17ccc:	2685                	addiw	a3,a3,1
   17cce:	97e2                	add	a5,a5,s8
   17cd0:	01b33023          	sd	s11,0(t1)
   17cd4:	01833423          	sd	s8,8(t1)
   17cd8:	f23e                	sd	a5,288(sp)
   17cda:	10d12c23          	sw	a3,280(sp)
   17cde:	471d                	li	a4,7
   17ce0:	80d75be3          	bge	a4,a3,174f6 <_svfprintf_r+0x10c8>
   17ce4:	0a10                	addi	a2,sp,272
   17ce6:	85d2                	mv	a1,s4
   17ce8:	854e                	mv	a0,s3
   17cea:	5d5010ef          	jal	ra,19abe <__ssprint_r>
   17cee:	90051d63          	bnez	a0,16e08 <_svfprintf_r+0x9da>
   17cf2:	7792                	ld	a5,288(sp)
   17cf4:	11812683          	lw	a3,280(sp)
   17cf8:	835a                	mv	t1,s6
   17cfa:	ffeff06f          	j	174f8 <_svfprintf_r+0x10ca>
   17cfe:	0f210713          	addi	a4,sp,242
   17d02:	e619                	bnez	a2,17d10 <_svfprintf_r+0x18e2>
   17d04:	03000793          	li	a5,48
   17d08:	0ef10923          	sb	a5,242(sp)
   17d0c:	0f310713          	addi	a4,sp,243
   17d10:	0306879b          	addiw	a5,a3,48
   17d14:	0c14                	addi	a3,sp,528
   17d16:	40d706b3          	sub	a3,a4,a3
   17d1a:	00f70023          	sb	a5,0(a4)
   17d1e:	1216879b          	addiw	a5,a3,289
   17d22:	fcbe                	sd	a5,120(sp)
   17d24:	bef1                	j	17900 <_svfprintf_r+0x14d2>
   17d26:	772a                	ld	a4,168(sp)
   17d28:	8b05                	andi	a4,a4,1
   17d2a:	be0706e3          	beqz	a4,17916 <_svfprintf_r+0x14e8>
   17d2e:	b6cd                	j	17910 <_svfprintf_r+0x14e2>
   17d30:	000c0463          	beqz	s8,17d38 <_svfprintf_r+0x190a>
   17d34:	b09fe06f          	j	1683c <_svfprintf_r+0x40e>
   17d38:	4c05                	li	s8,1
   17d3a:	b03fe06f          	j	1683c <_svfprintf_r+0x40e>
   17d3e:	57fd                	li	a5,-1
   17d40:	e43e                	sd	a5,8(sp)
   17d42:	96bfe06f          	j	166ac <_svfprintf_r+0x27e>
   17d46:	c31c                	sw	a5,0(a4)
   17d48:	8ca2                	mv	s9,s0
   17d4a:	945fe06f          	j	1668e <_svfprintf_r+0x260>
   17d4e:	85ca                	mv	a1,s2
   17d50:	855e                	mv	a0,s7
   17d52:	f81a                	sd	t1,48(sp)
   17d54:	358040ef          	jal	ra,1c0ac <__trunctfdf2>
   17d58:	11a8                	addi	a0,sp,232
   17d5a:	a6afe0ef          	jal	ra,15fc4 <frexp>
   17d5e:	28a040ef          	jal	ra,1bfe8 <__extenddftf2>
   17d62:	768a                	ld	a3,160(sp)
   17d64:	4601                	li	a2,0
   17d66:	2e8030ef          	jal	ra,1b04e <__multf3>
   17d6a:	4601                	li	a2,0
   17d6c:	4681                	li	a3,0
   17d6e:	8baa                	mv	s7,a0
   17d70:	f02e                	sd	a1,32(sp)
   17d72:	0f0030ef          	jal	ra,1ae62 <__eqtf2>
   17d76:	7f82                	ld	t6,32(sp)
   17d78:	7342                	ld	t1,48(sp)
   17d7a:	e119                	bnez	a0,17d80 <_svfprintf_r+0x1952>
   17d7c:	4785                	li	a5,1
   17d7e:	d5be                	sw	a5,232(sp)
   17d80:	67f1                	lui	a5,0x1c
   17d82:	32878793          	addi	a5,a5,808 # 1c328 <__clzdi2+0x5c>
   17d86:	e4be                	sd	a5,72(sp)
   17d88:	bb25                	j	17ac0 <_svfprintf_r+0x1692>
   17d8a:	06700d13          	li	s10,103
   17d8e:	7786                	ld	a5,96(sp)
   17d90:	0ff00713          	li	a4,255
   17d94:	e882                	sd	zero,80(sp)
   17d96:	0007c783          	lbu	a5,0(a5)
   17d9a:	ec82                	sd	zero,88(sp)
   17d9c:	02e78863          	beq	a5,a4,17dcc <_svfprintf_r+0x199e>
   17da0:	0ff00693          	li	a3,255
   17da4:	6626                	ld	a2,72(sp)
   17da6:	0007871b          	sext.w	a4,a5
   17daa:	02c7d163          	bge	a5,a2,17dcc <_svfprintf_r+0x199e>
   17dae:	7586                	ld	a1,96(sp)
   17db0:	40e6073b          	subw	a4,a2,a4
   17db4:	e4ba                	sd	a4,72(sp)
   17db6:	0015c783          	lbu	a5,1(a1)
   17dba:	cb95                	beqz	a5,17dee <_svfprintf_r+0x19c0>
   17dbc:	6766                	ld	a4,88(sp)
   17dbe:	2705                	addiw	a4,a4,1
   17dc0:	ecba                	sd	a4,88(sp)
   17dc2:	00158713          	addi	a4,a1,1
   17dc6:	f0ba                	sd	a4,96(sp)
   17dc8:	fcd79ee3          	bne	a5,a3,17da4 <_svfprintf_r+0x1976>
   17dcc:	6766                	ld	a4,88(sp)
   17dce:	67c6                	ld	a5,80(sp)
   17dd0:	9fb9                	addw	a5,a5,a4
   17dd2:	670a                	ld	a4,128(sp)
   17dd4:	02e787bb          	mulw	a5,a5,a4
   17dd8:	017787bb          	addw	a5,a5,s7
   17ddc:	00078b9b          	sext.w	s7,a5
   17de0:	fffbc713          	not	a4,s7
   17de4:	977d                	srai	a4,a4,0x3f
   17de6:	8ff9                	and	a5,a5,a4
   17de8:	0007891b          	sext.w	s2,a5
   17dec:	bca9                	j	17846 <_svfprintf_r+0x1418>
   17dee:	6746                	ld	a4,80(sp)
   17df0:	7786                	ld	a5,96(sp)
   17df2:	2705                	addiw	a4,a4,1
   17df4:	0007c783          	lbu	a5,0(a5)
   17df8:	e8ba                	sd	a4,80(sp)
   17dfa:	b7f9                	j	17dc8 <_svfprintf_r+0x199a>
   17dfc:	77a6                	ld	a5,104(sp)
   17dfe:	06600d13          	li	s10,102
   17e02:	00e78bbb          	addw	s7,a5,a4
   17e06:	018b8bbb          	addw	s7,s7,s8
   17e0a:	b26d                	j	177b4 <_svfprintf_r+0x1386>
   17e0c:	66c2                	ld	a3,16(sp)
   17e0e:	4298                	lw	a4,0(a3)
   17e10:	00868613          	addi	a2,a3,8
   17e14:	86ba                	mv	a3,a4
   17e16:	00075363          	bgez	a4,17e1c <_svfprintf_r+0x19ee>
   17e1a:	56fd                	li	a3,-1
   17e1c:	00144e03          	lbu	t3,1(s0)
   17e20:	00068c1b          	sext.w	s8,a3
   17e24:	e832                	sd	a2,16(sp)
   17e26:	843e                	mv	s0,a5
   17e28:	f10fe06f          	j	16538 <_svfprintf_r+0x10a>
   17e2c:	e791                	bnez	a5,17e38 <_svfprintf_r+0x1a0a>
   17e2e:	4905                	li	s2,1
   17e30:	06600d13          	li	s10,102
   17e34:	4b85                	li	s7,1
   17e36:	b431                	j	17842 <_svfprintf_r+0x1414>
   17e38:	77a6                	ld	a5,104(sp)
   17e3a:	06600d13          	li	s10,102
   17e3e:	2785                	addiw	a5,a5,1
   17e40:	018787bb          	addw	a5,a5,s8
   17e44:	00078b9b          	sext.w	s7,a5
   17e48:	fffbc713          	not	a4,s7
   17e4c:	977d                	srai	a4,a4,0x3f
   17e4e:	8ff9                	and	a5,a5,a4
   17e50:	0007891b          	sext.w	s2,a5
   17e54:	b2fd                	j	17842 <_svfprintf_r+0x1414>
   17e56:	4789                	li	a5,2
   17e58:	fcbe                	sd	a5,120(sp)
   17e5a:	b45d                	j	17900 <_svfprintf_r+0x14d2>
   17e5c:	010a5783          	lhu	a5,16(s4)
   17e60:	0407e793          	ori	a5,a5,64
   17e64:	00fa1823          	sh	a5,16(s4)
   17e68:	837fe06f          	j	1669e <_svfprintf_r+0x270>
   17e6c:	47b1                	li	a5,12
   17e6e:	00f9a023          	sw	a5,0(s3)
   17e72:	57fd                	li	a5,-1
   17e74:	e43e                	sd	a5,8(sp)
   17e76:	837fe06f          	j	166ac <_svfprintf_r+0x27e>

0000000000017e7a <__sprint_r.part.0>:
   17e7a:	0ac5a783          	lw	a5,172(a1)
   17e7e:	715d                	addi	sp,sp,-80
   17e80:	ec56                	sd	s5,24(sp)
   17e82:	83b5                	srli	a5,a5,0xd
   17e84:	e486                	sd	ra,72(sp)
   17e86:	e0a2                	sd	s0,64(sp)
   17e88:	fc26                	sd	s1,56(sp)
   17e8a:	f84a                	sd	s2,48(sp)
   17e8c:	f44e                	sd	s3,40(sp)
   17e8e:	f052                	sd	s4,32(sp)
   17e90:	e85a                	sd	s6,16(sp)
   17e92:	e45e                	sd	s7,8(sp)
   17e94:	8b85                	andi	a5,a5,1
   17e96:	8ab2                	mv	s5,a2
   17e98:	c3c1                	beqz	a5,17f18 <__sprint_r.part.0+0x9e>
   17e9a:	6a1c                	ld	a5,16(a2)
   17e9c:	00063b03          	ld	s6,0(a2)
   17ea0:	892e                	mv	s2,a1
   17ea2:	89aa                	mv	s3,a0
   17ea4:	5a7d                	li	s4,-1
   17ea6:	c7bd                	beqz	a5,17f14 <__sprint_r.part.0+0x9a>
   17ea8:	008b3483          	ld	s1,8(s6)
   17eac:	000b3403          	ld	s0,0(s6)
   17eb0:	8089                	srli	s1,s1,0x2
   17eb2:	00048b9b          	sext.w	s7,s1
   17eb6:	05705863          	blez	s7,17f06 <__sprint_r.part.0+0x8c>
   17eba:	34fd                	addiw	s1,s1,-1
   17ebc:	02049793          	slli	a5,s1,0x20
   17ec0:	01e7d493          	srli	s1,a5,0x1e
   17ec4:	00440793          	addi	a5,s0,4
   17ec8:	94be                	add	s1,s1,a5
   17eca:	a019                	j	17ed0 <__sprint_r.part.0+0x56>
   17ecc:	02848b63          	beq	s1,s0,17f02 <__sprint_r.part.0+0x88>
   17ed0:	400c                	lw	a1,0(s0)
   17ed2:	864a                	mv	a2,s2
   17ed4:	854e                	mv	a0,s3
   17ed6:	0a6010ef          	jal	ra,18f7c <_fputwc_r>
   17eda:	2501                	sext.w	a0,a0
   17edc:	0411                	addi	s0,s0,4
   17ede:	ff4517e3          	bne	a0,s4,17ecc <__sprint_r.part.0+0x52>
   17ee2:	557d                	li	a0,-1
   17ee4:	60a6                	ld	ra,72(sp)
   17ee6:	6406                	ld	s0,64(sp)
   17ee8:	000ab823          	sd	zero,16(s5)
   17eec:	000aa423          	sw	zero,8(s5)
   17ef0:	74e2                	ld	s1,56(sp)
   17ef2:	7942                	ld	s2,48(sp)
   17ef4:	79a2                	ld	s3,40(sp)
   17ef6:	7a02                	ld	s4,32(sp)
   17ef8:	6ae2                	ld	s5,24(sp)
   17efa:	6b42                	ld	s6,16(sp)
   17efc:	6ba2                	ld	s7,8(sp)
   17efe:	6161                	addi	sp,sp,80
   17f00:	8082                	ret
   17f02:	010ab783          	ld	a5,16(s5)
   17f06:	0b8a                	slli	s7,s7,0x2
   17f08:	417787b3          	sub	a5,a5,s7
   17f0c:	00fab823          	sd	a5,16(s5)
   17f10:	0b41                	addi	s6,s6,16
   17f12:	fbd9                	bnez	a5,17ea8 <__sprint_r.part.0+0x2e>
   17f14:	4501                	li	a0,0
   17f16:	b7f9                	j	17ee4 <__sprint_r.part.0+0x6a>
   17f18:	112010ef          	jal	ra,1902a <__sfvwrite_r>
   17f1c:	b7e1                	j	17ee4 <__sprint_r.part.0+0x6a>

0000000000017f1e <__sprint_r>:
   17f1e:	6a18                	ld	a4,16(a2)
   17f20:	c311                	beqz	a4,17f24 <__sprint_r+0x6>
   17f22:	bfa1                	j	17e7a <__sprint_r.part.0>
   17f24:	00062423          	sw	zero,8(a2)
   17f28:	4501                	li	a0,0
   17f2a:	8082                	ret

0000000000017f2c <_vfiprintf_r>:
   17f2c:	7145                	addi	sp,sp,-464
   17f2e:	f74e                	sd	s3,424(sp)
   17f30:	ef56                	sd	s5,408(sp)
   17f32:	f6ee                	sd	s11,360(sp)
   17f34:	e786                	sd	ra,456(sp)
   17f36:	e3a2                	sd	s0,448(sp)
   17f38:	ff26                	sd	s1,440(sp)
   17f3a:	fb4a                	sd	s2,432(sp)
   17f3c:	f352                	sd	s4,416(sp)
   17f3e:	eb5a                	sd	s6,400(sp)
   17f40:	e75e                	sd	s7,392(sp)
   17f42:	e362                	sd	s8,384(sp)
   17f44:	fee6                	sd	s9,376(sp)
   17f46:	faea                	sd	s10,368(sp)
   17f48:	e436                	sd	a3,8(sp)
   17f4a:	8aaa                	mv	s5,a0
   17f4c:	89ae                	mv	s3,a1
   17f4e:	8db2                	mv	s11,a2
   17f50:	c501                	beqz	a0,17f58 <_vfiprintf_r+0x2c>
   17f52:	493c                	lw	a5,80(a0)
   17f54:	42078563          	beqz	a5,1837e <_vfiprintf_r+0x452>
   17f58:	01099703          	lh	a4,16(s3)
   17f5c:	6689                	lui	a3,0x2
   17f5e:	03071793          	slli	a5,a4,0x30
   17f62:	93c1                	srli	a5,a5,0x30
   17f64:	00d7f633          	and	a2,a5,a3
   17f68:	e215                	bnez	a2,17f8c <_vfiprintf_r+0x60>
   17f6a:	0ac9a603          	lw	a2,172(s3)
   17f6e:	00d767b3          	or	a5,a4,a3
   17f72:	0107979b          	slliw	a5,a5,0x10
   17f76:	7779                	lui	a4,0xffffe
   17f78:	4107d79b          	sraiw	a5,a5,0x10
   17f7c:	177d                	addi	a4,a4,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffdec2f>
   17f7e:	8f71                	and	a4,a4,a2
   17f80:	00f99823          	sh	a5,16(s3)
   17f84:	17c2                	slli	a5,a5,0x30
   17f86:	0ae9a623          	sw	a4,172(s3)
   17f8a:	93c1                	srli	a5,a5,0x30
   17f8c:	0087f713          	andi	a4,a5,8
   17f90:	28070d63          	beqz	a4,1822a <_vfiprintf_r+0x2fe>
   17f94:	0189b703          	ld	a4,24(s3)
   17f98:	28070963          	beqz	a4,1822a <_vfiprintf_r+0x2fe>
   17f9c:	8be9                	andi	a5,a5,26
   17f9e:	4729                	li	a4,10
   17fa0:	2ae78163          	beq	a5,a4,18242 <_vfiprintf_r+0x316>
   17fa4:	67f5                	lui	a5,0x1d
   17fa6:	1180                	addi	s0,sp,224
   17fa8:	c6878793          	addi	a5,a5,-920 # 1cc68 <zeroes.0+0x10>
   17fac:	6b75                	lui	s6,0x1d
   17fae:	6975                	lui	s2,0x1d
   17fb0:	f0a2                	sd	s0,96(sp)
   17fb2:	f882                	sd	zero,112(sp)
   17fb4:	d482                	sw	zero,104(sp)
   17fb6:	8722                	mv	a4,s0
   17fb8:	e802                	sd	zero,16(sp)
   17fba:	fc02                	sd	zero,56(sp)
   17fbc:	e482                	sd	zero,72(sp)
   17fbe:	e082                	sd	zero,64(sp)
   17fc0:	e002                	sd	zero,0(sp)
   17fc2:	ec3e                	sd	a5,24(sp)
   17fc4:	dd8b0b13          	addi	s6,s6,-552 # 1cdd8 <blanks.1>
   17fc8:	de890913          	addi	s2,s2,-536 # 1cde8 <zeroes.0>
   17fcc:	000dc783          	lbu	a5,0(s11)
   17fd0:	1c078263          	beqz	a5,18194 <_vfiprintf_r+0x268>
   17fd4:	84ee                	mv	s1,s11
   17fd6:	02500693          	li	a3,37
   17fda:	2ed78963          	beq	a5,a3,182cc <_vfiprintf_r+0x3a0>
   17fde:	0014c783          	lbu	a5,1(s1)
   17fe2:	0485                	addi	s1,s1,1
   17fe4:	fbfd                	bnez	a5,17fda <_vfiprintf_r+0xae>
   17fe6:	41b48a3b          	subw	s4,s1,s11
   17fea:	1a0a0563          	beqz	s4,18194 <_vfiprintf_r+0x268>
   17fee:	57a6                	lw	a5,104(sp)
   17ff0:	76c6                	ld	a3,112(sp)
   17ff2:	01b73023          	sd	s11,0(a4)
   17ff6:	0017861b          	addiw	a2,a5,1
   17ffa:	96d2                	add	a3,a3,s4
   17ffc:	01473423          	sd	s4,8(a4)
   18000:	f8b6                	sd	a3,112(sp)
   18002:	d4b2                	sw	a2,104(sp)
   18004:	479d                	li	a5,7
   18006:	0741                	addi	a4,a4,16
   18008:	00c7dc63          	bge	a5,a2,18020 <_vfiprintf_r+0xf4>
   1800c:	060688e3          	beqz	a3,1887c <_vfiprintf_r+0x950>
   18010:	1090                	addi	a2,sp,96
   18012:	85ce                	mv	a1,s3
   18014:	8556                	mv	a0,s5
   18016:	e65ff0ef          	jal	ra,17e7a <__sprint_r.part.0>
   1801a:	18051063          	bnez	a0,1819a <_vfiprintf_r+0x26e>
   1801e:	8722                	mv	a4,s0
   18020:	6682                	ld	a3,0(sp)
   18022:	0004c783          	lbu	a5,0(s1)
   18026:	014686bb          	addw	a3,a3,s4
   1802a:	e036                	sd	a3,0(sp)
   1802c:	16078463          	beqz	a5,18194 <_vfiprintf_r+0x268>
   18030:	0014c783          	lbu	a5,1(s1)
   18034:	00148d93          	addi	s11,s1,1
   18038:	04010ba3          	sb	zero,87(sp)
   1803c:	5cfd                	li	s9,-1
   1803e:	4481                	li	s1,0
   18040:	4d01                	li	s10,0
   18042:	05a00a13          	li	s4,90
   18046:	4ba5                	li	s7,9
   18048:	0d85                	addi	s11,s11,1
   1804a:	2781                	sext.w	a5,a5
   1804c:	02a00593          	li	a1,42
   18050:	fe07869b          	addiw	a3,a5,-32
   18054:	0006861b          	sext.w	a2,a3
   18058:	04ca6363          	bltu	s4,a2,1809e <_vfiprintf_r+0x172>
   1805c:	02069613          	slli	a2,a3,0x20
   18060:	01e65693          	srli	a3,a2,0x1e
   18064:	6662                	ld	a2,24(sp)
   18066:	96b2                	add	a3,a3,a2
   18068:	4294                	lw	a3,0(a3)
   1806a:	8682                	jr	a3
   1806c:	4481                	li	s1,0
   1806e:	000dc603          	lbu	a2,0(s11)
   18072:	0024969b          	slliw	a3,s1,0x2
   18076:	9ea5                	addw	a3,a3,s1
   18078:	fd07879b          	addiw	a5,a5,-48
   1807c:	0016969b          	slliw	a3,a3,0x1
   18080:	fd06051b          	addiw	a0,a2,-48
   18084:	00d784bb          	addw	s1,a5,a3
   18088:	0d85                	addi	s11,s11,1
   1808a:	0006079b          	sext.w	a5,a2
   1808e:	feabf0e3          	bgeu	s7,a0,1806e <_vfiprintf_r+0x142>
   18092:	fe07869b          	addiw	a3,a5,-32
   18096:	0006861b          	sext.w	a2,a3
   1809a:	fcca71e3          	bgeu	s4,a2,1805c <_vfiprintf_r+0x130>
   1809e:	cbfd                	beqz	a5,18194 <_vfiprintf_r+0x268>
   180a0:	06f10c23          	sb	a5,120(sp)
   180a4:	04010ba3          	sb	zero,87(sp)
   180a8:	4b85                	li	s7,1
   180aa:	4a05                	li	s4,1
   180ac:	07810c13          	addi	s8,sp,120
   180b0:	4c81                	li	s9,0
   180b2:	002d7293          	andi	t0,s10,2
   180b6:	00028363          	beqz	t0,180bc <_vfiprintf_r+0x190>
   180ba:	2b89                	addiw	s7,s7,2
   180bc:	56a6                	lw	a3,104(sp)
   180be:	084d7f93          	andi	t6,s10,132
   180c2:	77c6                	ld	a5,112(sp)
   180c4:	0016861b          	addiw	a2,a3,1 # 2001 <exit-0xe0e7>
   180c8:	85b2                	mv	a1,a2
   180ca:	000f9663          	bnez	t6,180d6 <_vfiprintf_r+0x1aa>
   180ce:	41748ebb          	subw	t4,s1,s7
   180d2:	65d04f63          	bgtz	t4,18730 <_vfiprintf_r+0x804>
   180d6:	05714583          	lbu	a1,87(sp)
   180da:	cd99                	beqz	a1,180f8 <_vfiprintf_r+0x1cc>
   180dc:	05710693          	addi	a3,sp,87
   180e0:	0785                	addi	a5,a5,1
   180e2:	e314                	sd	a3,0(a4)
   180e4:	4685                	li	a3,1
   180e6:	e714                	sd	a3,8(a4)
   180e8:	f8be                	sd	a5,112(sp)
   180ea:	d4b2                	sw	a2,104(sp)
   180ec:	469d                	li	a3,7
   180ee:	5cc6cb63          	blt	a3,a2,186c4 <_vfiprintf_r+0x798>
   180f2:	86b2                	mv	a3,a2
   180f4:	0741                	addi	a4,a4,16
   180f6:	2605                	addiw	a2,a2,1
   180f8:	02028b63          	beqz	t0,1812e <_vfiprintf_r+0x202>
   180fc:	08b4                	addi	a3,sp,88
   180fe:	0789                	addi	a5,a5,2
   18100:	e314                	sd	a3,0(a4)
   18102:	4689                	li	a3,2
   18104:	e714                	sd	a3,8(a4)
   18106:	f8be                	sd	a5,112(sp)
   18108:	d4b2                	sw	a2,104(sp)
   1810a:	469d                	li	a3,7
   1810c:	5ec6dd63          	bge	a3,a2,18706 <_vfiprintf_r+0x7da>
   18110:	78078a63          	beqz	a5,188a4 <_vfiprintf_r+0x978>
   18114:	1090                	addi	a2,sp,96
   18116:	85ce                	mv	a1,s3
   18118:	8556                	mv	a0,s5
   1811a:	f07e                	sd	t6,32(sp)
   1811c:	d5fff0ef          	jal	ra,17e7a <__sprint_r.part.0>
   18120:	ed2d                	bnez	a0,1819a <_vfiprintf_r+0x26e>
   18122:	56a6                	lw	a3,104(sp)
   18124:	77c6                	ld	a5,112(sp)
   18126:	7f82                	ld	t6,32(sp)
   18128:	8722                	mv	a4,s0
   1812a:	0016861b          	addiw	a2,a3,1
   1812e:	08000593          	li	a1,128
   18132:	46bf8663          	beq	t6,a1,1859e <_vfiprintf_r+0x672>
   18136:	414c8cbb          	subw	s9,s9,s4
   1813a:	4f904e63          	bgtz	s9,18636 <_vfiprintf_r+0x70a>
   1813e:	97d2                	add	a5,a5,s4
   18140:	01873023          	sd	s8,0(a4)
   18144:	01473423          	sd	s4,8(a4)
   18148:	f8be                	sd	a5,112(sp)
   1814a:	d4b2                	sw	a2,104(sp)
   1814c:	469d                	li	a3,7
   1814e:	42c6d163          	bge	a3,a2,18570 <_vfiprintf_r+0x644>
   18152:	66078463          	beqz	a5,187ba <_vfiprintf_r+0x88e>
   18156:	1090                	addi	a2,sp,96
   18158:	85ce                	mv	a1,s3
   1815a:	8556                	mv	a0,s5
   1815c:	d1fff0ef          	jal	ra,17e7a <__sprint_r.part.0>
   18160:	ed0d                	bnez	a0,1819a <_vfiprintf_r+0x26e>
   18162:	77c6                	ld	a5,112(sp)
   18164:	8722                	mv	a4,s0
   18166:	004d7313          	andi	t1,s10,4
   1816a:	00030663          	beqz	t1,18176 <_vfiprintf_r+0x24a>
   1816e:	41748a3b          	subw	s4,s1,s7
   18172:	65404e63          	bgtz	s4,187ce <_vfiprintf_r+0x8a2>
   18176:	8726                	mv	a4,s1
   18178:	0174d363          	bge	s1,s7,1817e <_vfiprintf_r+0x252>
   1817c:	875e                	mv	a4,s7
   1817e:	6682                	ld	a3,0(sp)
   18180:	9f35                	addw	a4,a4,a3
   18182:	e03a                	sd	a4,0(sp)
   18184:	52079463          	bnez	a5,186ac <_vfiprintf_r+0x780>
   18188:	000dc783          	lbu	a5,0(s11)
   1818c:	d482                	sw	zero,104(sp)
   1818e:	8722                	mv	a4,s0
   18190:	e40792e3          	bnez	a5,17fd4 <_vfiprintf_r+0xa8>
   18194:	77c6                	ld	a5,112(sp)
   18196:	16079fe3          	bnez	a5,18b14 <_vfiprintf_r+0xbe8>
   1819a:	0109d783          	lhu	a5,16(s3)
   1819e:	0407f793          	andi	a5,a5,64
   181a2:	18079ae3          	bnez	a5,18b36 <_vfiprintf_r+0xc0a>
   181a6:	60be                	ld	ra,456(sp)
   181a8:	641e                	ld	s0,448(sp)
   181aa:	6502                	ld	a0,0(sp)
   181ac:	74fa                	ld	s1,440(sp)
   181ae:	795a                	ld	s2,432(sp)
   181b0:	79ba                	ld	s3,424(sp)
   181b2:	7a1a                	ld	s4,416(sp)
   181b4:	6afa                	ld	s5,408(sp)
   181b6:	6b5a                	ld	s6,400(sp)
   181b8:	6bba                	ld	s7,392(sp)
   181ba:	6c1a                	ld	s8,384(sp)
   181bc:	7cf6                	ld	s9,376(sp)
   181be:	7d56                	ld	s10,368(sp)
   181c0:	7db6                	ld	s11,360(sp)
   181c2:	6179                	addi	sp,sp,464
   181c4:	8082                	ret
   181c6:	010d6313          	ori	t1,s10,16
   181ca:	000dc783          	lbu	a5,0(s11)
   181ce:	00030d1b          	sext.w	s10,t1
   181d2:	bd9d                	j	18048 <_vfiprintf_r+0x11c>
   181d4:	010d6313          	ori	t1,s10,16
   181d8:	00030d1b          	sext.w	s10,t1
   181dc:	66a2                	ld	a3,8(sp)
   181de:	020d7793          	andi	a5,s10,32
   181e2:	00868613          	addi	a2,a3,8
   181e6:	cbf5                	beqz	a5,182da <_vfiprintf_r+0x3ae>
   181e8:	629c                	ld	a5,0(a3)
   181ea:	8bbe                	mv	s7,a5
   181ec:	1007c963          	bltz	a5,182fe <_vfiprintf_r+0x3d2>
   181f0:	57fd                	li	a5,-1
   181f2:	04fc80e3          	beq	s9,a5,18a32 <_vfiprintf_r+0xb06>
   181f6:	f7fd7693          	andi	a3,s10,-129
   181fa:	2681                	sext.w	a3,a3
   181fc:	7a0b9063          	bnez	s7,1899c <_vfiprintf_r+0xa70>
   18200:	140c94e3          	bnez	s9,18b48 <_vfiprintf_r+0xc1c>
   18204:	8d36                	mv	s10,a3
   18206:	e432                	sd	a2,8(sp)
   18208:	4c81                	li	s9,0
   1820a:	4a01                	li	s4,0
   1820c:	0dc10c13          	addi	s8,sp,220
   18210:	87e6                	mv	a5,s9
   18212:	014cd363          	bge	s9,s4,18218 <_vfiprintf_r+0x2ec>
   18216:	87d2                	mv	a5,s4
   18218:	05714683          	lbu	a3,87(sp)
   1821c:	00078b9b          	sext.w	s7,a5
   18220:	e80689e3          	beqz	a3,180b2 <_vfiprintf_r+0x186>
   18224:	00178b9b          	addiw	s7,a5,1
   18228:	b569                	j	180b2 <_vfiprintf_r+0x186>
   1822a:	85ce                	mv	a1,s3
   1822c:	8556                	mv	a0,s5
   1822e:	c7bf90ef          	jal	ra,11ea8 <__swsetup_r>
   18232:	100512e3          	bnez	a0,18b36 <_vfiprintf_r+0xc0a>
   18236:	0109d783          	lhu	a5,16(s3)
   1823a:	4729                	li	a4,10
   1823c:	8be9                	andi	a5,a5,26
   1823e:	d6e793e3          	bne	a5,a4,17fa4 <_vfiprintf_r+0x78>
   18242:	01299783          	lh	a5,18(s3)
   18246:	d407cfe3          	bltz	a5,17fa4 <_vfiprintf_r+0x78>
   1824a:	641e                	ld	s0,448(sp)
   1824c:	66a2                	ld	a3,8(sp)
   1824e:	60be                	ld	ra,456(sp)
   18250:	74fa                	ld	s1,440(sp)
   18252:	795a                	ld	s2,432(sp)
   18254:	7a1a                	ld	s4,416(sp)
   18256:	6b5a                	ld	s6,400(sp)
   18258:	6bba                	ld	s7,392(sp)
   1825a:	6c1a                	ld	s8,384(sp)
   1825c:	7cf6                	ld	s9,376(sp)
   1825e:	7d56                	ld	s10,368(sp)
   18260:	866e                	mv	a2,s11
   18262:	85ce                	mv	a1,s3
   18264:	7db6                	ld	s11,360(sp)
   18266:	79ba                	ld	s3,424(sp)
   18268:	8556                	mv	a0,s5
   1826a:	6afa                	ld	s5,408(sp)
   1826c:	6179                	addi	sp,sp,464
   1826e:	10f0006f          	j	18b7c <__sbprintf>
   18272:	010d6313          	ori	t1,s10,16
   18276:	00030d1b          	sext.w	s10,t1
   1827a:	66a2                	ld	a3,8(sp)
   1827c:	020d7793          	andi	a5,s10,32
   18280:	00868613          	addi	a2,a3,8
   18284:	cff1                	beqz	a5,18360 <_vfiprintf_r+0x434>
   18286:	0006bb83          	ld	s7,0(a3)
   1828a:	bffd7693          	andi	a3,s10,-1025
   1828e:	2681                	sext.w	a3,a3
   18290:	e432                	sd	a2,8(sp)
   18292:	4781                	li	a5,0
   18294:	4601                	li	a2,0
   18296:	04c10ba3          	sb	a2,87(sp)
   1829a:	567d                	li	a2,-1
   1829c:	06cc8d63          	beq	s9,a2,18316 <_vfiprintf_r+0x3ea>
   182a0:	f7f6f313          	andi	t1,a3,-129
   182a4:	00030d1b          	sext.w	s10,t1
   182a8:	460b9463          	bnez	s7,18710 <_vfiprintf_r+0x7e4>
   182ac:	780c9663          	bnez	s9,18a38 <_vfiprintf_r+0xb0c>
   182b0:	ffa1                	bnez	a5,18208 <_vfiprintf_r+0x2dc>
   182b2:	0016fa13          	andi	s4,a3,1
   182b6:	0dc10c13          	addi	s8,sp,220
   182ba:	f40a0be3          	beqz	s4,18210 <_vfiprintf_r+0x2e4>
   182be:	03000793          	li	a5,48
   182c2:	0cf10da3          	sb	a5,219(sp)
   182c6:	0db10c13          	addi	s8,sp,219
   182ca:	b799                	j	18210 <_vfiprintf_r+0x2e4>
   182cc:	41b48a3b          	subw	s4,s1,s11
   182d0:	d00a1fe3          	bnez	s4,17fee <_vfiprintf_r+0xc2>
   182d4:	0004c783          	lbu	a5,0(s1)
   182d8:	bb91                	j	1802c <_vfiprintf_r+0x100>
   182da:	010d7793          	andi	a5,s10,16
   182de:	6a079463          	bnez	a5,18986 <_vfiprintf_r+0xa5a>
   182e2:	66a2                	ld	a3,8(sp)
   182e4:	040d7793          	andi	a5,s10,64
   182e8:	0006ab83          	lw	s7,0(a3)
   182ec:	7a078c63          	beqz	a5,18aa4 <_vfiprintf_r+0xb78>
   182f0:	010b9b9b          	slliw	s7,s7,0x10
   182f4:	410bdb9b          	sraiw	s7,s7,0x10
   182f8:	87de                	mv	a5,s7
   182fa:	ee07dbe3          	bgez	a5,181f0 <_vfiprintf_r+0x2c4>
   182fe:	e432                	sd	a2,8(sp)
   18300:	02d00613          	li	a2,45
   18304:	04c10ba3          	sb	a2,87(sp)
   18308:	567d                	li	a2,-1
   1830a:	41700bb3          	neg	s7,s7
   1830e:	86ea                	mv	a3,s10
   18310:	4785                	li	a5,1
   18312:	f8cc97e3          	bne	s9,a2,182a0 <_vfiprintf_r+0x374>
   18316:	4605                	li	a2,1
   18318:	40c78063          	beq	a5,a2,18718 <_vfiprintf_r+0x7ec>
   1831c:	4609                	li	a2,2
   1831e:	24c78c63          	beq	a5,a2,18576 <_vfiprintf_r+0x64a>
   18322:	0dc10a13          	addi	s4,sp,220
   18326:	8c52                	mv	s8,s4
   18328:	007bf793          	andi	a5,s7,7
   1832c:	03078793          	addi	a5,a5,48
   18330:	fefc0fa3          	sb	a5,-1(s8)
   18334:	003bdb93          	srli	s7,s7,0x3
   18338:	8662                	mv	a2,s8
   1833a:	1c7d                	addi	s8,s8,-1
   1833c:	fe0b96e3          	bnez	s7,18328 <_vfiprintf_r+0x3fc>
   18340:	0016f593          	andi	a1,a3,1
   18344:	24058963          	beqz	a1,18596 <_vfiprintf_r+0x66a>
   18348:	03000593          	li	a1,48
   1834c:	24b78563          	beq	a5,a1,18596 <_vfiprintf_r+0x66a>
   18350:	1679                	addi	a2,a2,-2
   18352:	febc0fa3          	sb	a1,-1(s8)
   18356:	40ca0a3b          	subw	s4,s4,a2
   1835a:	8d36                	mv	s10,a3
   1835c:	8c32                	mv	s8,a2
   1835e:	bd4d                	j	18210 <_vfiprintf_r+0x2e4>
   18360:	010d7793          	andi	a5,s10,16
   18364:	60079d63          	bnez	a5,1897e <_vfiprintf_r+0xa52>
   18368:	66a2                	ld	a3,8(sp)
   1836a:	040d7793          	andi	a5,s10,64
   1836e:	0006ab83          	lw	s7,0(a3)
   18372:	72078263          	beqz	a5,18a96 <_vfiprintf_r+0xb6a>
   18376:	1bc2                	slli	s7,s7,0x30
   18378:	030bdb93          	srli	s7,s7,0x30
   1837c:	b739                	j	1828a <_vfiprintf_r+0x35e>
   1837e:	952fa0ef          	jal	ra,124d0 <__sinit>
   18382:	bed9                	j	17f58 <_vfiprintf_r+0x2c>
   18384:	67a2                	ld	a5,8(sp)
   18386:	04010ba3          	sb	zero,87(sp)
   1838a:	0007bc03          	ld	s8,0(a5)
   1838e:	00878693          	addi	a3,a5,8
   18392:	6c0c0d63          	beqz	s8,18a6c <_vfiprintf_r+0xb40>
   18396:	57fd                	li	a5,-1
   18398:	66fc8863          	beq	s9,a5,18a08 <_vfiprintf_r+0xadc>
   1839c:	8666                	mv	a2,s9
   1839e:	4581                	li	a1,0
   183a0:	8562                	mv	a0,s8
   183a2:	f036                	sd	a3,32(sp)
   183a4:	e43a                	sd	a4,8(sp)
   183a6:	eb1fc0ef          	jal	ra,15256 <memchr>
   183aa:	6722                	ld	a4,8(sp)
   183ac:	7682                	ld	a3,32(sp)
   183ae:	76050a63          	beqz	a0,18b22 <_vfiprintf_r+0xbf6>
   183b2:	41850a3b          	subw	s4,a0,s8
   183b6:	e436                	sd	a3,8(sp)
   183b8:	4c81                	li	s9,0
   183ba:	bd99                	j	18210 <_vfiprintf_r+0x2e4>
   183bc:	66a2                	ld	a3,8(sp)
   183be:	04010ba3          	sb	zero,87(sp)
   183c2:	4b85                	li	s7,1
   183c4:	429c                	lw	a5,0(a3)
   183c6:	06a1                	addi	a3,a3,8
   183c8:	e436                	sd	a3,8(sp)
   183ca:	06f10c23          	sb	a5,120(sp)
   183ce:	4a05                	li	s4,1
   183d0:	07810c13          	addi	s8,sp,120
   183d4:	b9f1                	j	180b0 <_vfiprintf_r+0x184>
   183d6:	67a2                	ld	a5,8(sp)
   183d8:	4384                	lw	s1,0(a5)
   183da:	00878c13          	addi	s8,a5,8
   183de:	5404dd63          	bgez	s1,18938 <_vfiprintf_r+0xa0c>
   183e2:	409004bb          	negw	s1,s1
   183e6:	e462                	sd	s8,8(sp)
   183e8:	004d6313          	ori	t1,s10,4
   183ec:	000dc783          	lbu	a5,0(s11)
   183f0:	00030d1b          	sext.w	s10,t1
   183f4:	b991                	j	18048 <_vfiprintf_r+0x11c>
   183f6:	020d6313          	ori	t1,s10,32
   183fa:	000dc783          	lbu	a5,0(s11)
   183fe:	00030d1b          	sext.w	s10,t1
   18402:	b199                	j	18048 <_vfiprintf_r+0x11c>
   18404:	6622                	ld	a2,8(sp)
   18406:	77e1                	lui	a5,0xffff8
   18408:	8307c793          	xori	a5,a5,-2000
   1840c:	002d6693          	ori	a3,s10,2
   18410:	04f11c23          	sh	a5,88(sp)
   18414:	6d71                	lui	s10,0x1c
   18416:	00860793          	addi	a5,a2,8
   1841a:	e43e                	sd	a5,8(sp)
   1841c:	328d0793          	addi	a5,s10,808 # 1c328 <__clzdi2+0x5c>
   18420:	e83e                	sd	a5,16(sp)
   18422:	00063b83          	ld	s7,0(a2)
   18426:	2681                	sext.w	a3,a3
   18428:	4789                	li	a5,2
   1842a:	b5ad                	j	18294 <_vfiprintf_r+0x368>
   1842c:	6622                	ld	a2,8(sp)
   1842e:	020d7793          	andi	a5,s10,32
   18432:	6214                	ld	a3,0(a2)
   18434:	0621                	addi	a2,a2,8
   18436:	e432                	sd	a2,8(sp)
   18438:	e385                	bnez	a5,18458 <_vfiprintf_r+0x52c>
   1843a:	010d7793          	andi	a5,s10,16
   1843e:	ef89                	bnez	a5,18458 <_vfiprintf_r+0x52c>
   18440:	040d7793          	andi	a5,s10,64
   18444:	6a079063          	bnez	a5,18ae4 <_vfiprintf_r+0xbb8>
   18448:	200d7313          	andi	t1,s10,512
   1844c:	6782                	ld	a5,0(sp)
   1844e:	6e030a63          	beqz	t1,18b42 <_vfiprintf_r+0xc16>
   18452:	00f68023          	sb	a5,0(a3)
   18456:	be9d                	j	17fcc <_vfiprintf_r+0xa0>
   18458:	6782                	ld	a5,0(sp)
   1845a:	e29c                	sd	a5,0(a3)
   1845c:	be85                	j	17fcc <_vfiprintf_r+0xa0>
   1845e:	02b00693          	li	a3,43
   18462:	000dc783          	lbu	a5,0(s11)
   18466:	04d10ba3          	sb	a3,87(sp)
   1846a:	bef9                	j	18048 <_vfiprintf_r+0x11c>
   1846c:	080d6313          	ori	t1,s10,128
   18470:	000dc783          	lbu	a5,0(s11)
   18474:	00030d1b          	sext.w	s10,t1
   18478:	bec1                	j	18048 <_vfiprintf_r+0x11c>
   1847a:	000dc783          	lbu	a5,0(s11)
   1847e:	001d8693          	addi	a3,s11,1
   18482:	6cb78563          	beq	a5,a1,18b4c <_vfiprintf_r+0xc20>
   18486:	fd07861b          	addiw	a2,a5,-48 # ffffffffffff7fd0 <__BSS_END__+0xfffffffffffd8c00>
   1848a:	8db6                	mv	s11,a3
   1848c:	4c81                	li	s9,0
   1848e:	bccbe1e3          	bltu	s7,a2,18050 <_vfiprintf_r+0x124>
   18492:	000dc783          	lbu	a5,0(s11)
   18496:	002c969b          	slliw	a3,s9,0x2
   1849a:	019686bb          	addw	a3,a3,s9
   1849e:	0016969b          	slliw	a3,a3,0x1
   184a2:	00c68cbb          	addw	s9,a3,a2
   184a6:	fd07861b          	addiw	a2,a5,-48
   184aa:	0d85                	addi	s11,s11,1
   184ac:	fecbf3e3          	bgeu	s7,a2,18492 <_vfiprintf_r+0x566>
   184b0:	b645                	j	18050 <_vfiprintf_r+0x124>
   184b2:	8556                	mv	a0,s5
   184b4:	f03a                	sd	a4,32(sp)
   184b6:	cfafc0ef          	jal	ra,149b0 <_localeconv_r>
   184ba:	651c                	ld	a5,8(a0)
   184bc:	853e                	mv	a0,a5
   184be:	e0be                	sd	a5,64(sp)
   184c0:	e6dfd0ef          	jal	ra,1632c <strlen>
   184c4:	87aa                	mv	a5,a0
   184c6:	8556                	mv	a0,s5
   184c8:	8c3e                	mv	s8,a5
   184ca:	e4be                	sd	a5,72(sp)
   184cc:	ce4fc0ef          	jal	ra,149b0 <_localeconv_r>
   184d0:	6914                	ld	a3,16(a0)
   184d2:	7702                	ld	a4,32(sp)
   184d4:	000dc783          	lbu	a5,0(s11)
   184d8:	fc36                	sd	a3,56(sp)
   184da:	b60c07e3          	beqz	s8,18048 <_vfiprintf_r+0x11c>
   184de:	b60685e3          	beqz	a3,18048 <_vfiprintf_r+0x11c>
   184e2:	0006c683          	lbu	a3,0(a3)
   184e6:	b60681e3          	beqz	a3,18048 <_vfiprintf_r+0x11c>
   184ea:	400d6313          	ori	t1,s10,1024
   184ee:	00030d1b          	sext.w	s10,t1
   184f2:	be99                	j	18048 <_vfiprintf_r+0x11c>
   184f4:	001d6313          	ori	t1,s10,1
   184f8:	000dc783          	lbu	a5,0(s11)
   184fc:	00030d1b          	sext.w	s10,t1
   18500:	b6a1                	j	18048 <_vfiprintf_r+0x11c>
   18502:	05714683          	lbu	a3,87(sp)
   18506:	000dc783          	lbu	a5,0(s11)
   1850a:	b2069fe3          	bnez	a3,18048 <_vfiprintf_r+0x11c>
   1850e:	02000693          	li	a3,32
   18512:	04d10ba3          	sb	a3,87(sp)
   18516:	be0d                	j	18048 <_vfiprintf_r+0x11c>
   18518:	000dc783          	lbu	a5,0(s11)
   1851c:	06c00693          	li	a3,108
   18520:	52d78d63          	beq	a5,a3,18a5a <_vfiprintf_r+0xb2e>
   18524:	010d6313          	ori	t1,s10,16
   18528:	00030d1b          	sext.w	s10,t1
   1852c:	be31                	j	18048 <_vfiprintf_r+0x11c>
   1852e:	000dc783          	lbu	a5,0(s11)
   18532:	06800693          	li	a3,104
   18536:	50d78963          	beq	a5,a3,18a48 <_vfiprintf_r+0xb1c>
   1853a:	040d6313          	ori	t1,s10,64
   1853e:	00030d1b          	sext.w	s10,t1
   18542:	b619                	j	18048 <_vfiprintf_r+0x11c>
   18544:	010d6693          	ori	a3,s10,16
   18548:	2681                	sext.w	a3,a3
   1854a:	65a2                	ld	a1,8(sp)
   1854c:	0206f793          	andi	a5,a3,32
   18550:	00858613          	addi	a2,a1,8
   18554:	32078863          	beqz	a5,18884 <_vfiprintf_r+0x958>
   18558:	0005bb83          	ld	s7,0(a1)
   1855c:	4785                	li	a5,1
   1855e:	e432                	sd	a2,8(sp)
   18560:	bb15                	j	18294 <_vfiprintf_r+0x368>
   18562:	4705                	li	a4,1
   18564:	d4ba                	sw	a4,104(sp)
   18566:	87d2                	mv	a5,s4
   18568:	f1e2                	sd	s8,224(sp)
   1856a:	f5d2                	sd	s4,232(sp)
   1856c:	f8d2                	sd	s4,112(sp)
   1856e:	8722                	mv	a4,s0
   18570:	0741                	addi	a4,a4,16
   18572:	bed5                	j	18166 <_vfiprintf_r+0x23a>
   18574:	86ea                	mv	a3,s10
   18576:	0dc10a13          	addi	s4,sp,220
   1857a:	8c52                	mv	s8,s4
   1857c:	6642                	ld	a2,16(sp)
   1857e:	00fbf793          	andi	a5,s7,15
   18582:	1c7d                	addi	s8,s8,-1
   18584:	97b2                	add	a5,a5,a2
   18586:	0007c783          	lbu	a5,0(a5)
   1858a:	004bdb93          	srli	s7,s7,0x4
   1858e:	00fc0023          	sb	a5,0(s8)
   18592:	fe0b95e3          	bnez	s7,1857c <_vfiprintf_r+0x650>
   18596:	418a0a3b          	subw	s4,s4,s8
   1859a:	8d36                	mv	s10,a3
   1859c:	b995                	j	18210 <_vfiprintf_r+0x2e4>
   1859e:	41748ebb          	subw	t4,s1,s7
   185a2:	b9d05ae3          	blez	t4,18136 <_vfiprintf_r+0x20a>
   185a6:	45c1                	li	a1,16
   185a8:	59d5db63          	bge	a1,t4,18b3e <_vfiprintf_r+0xc12>
   185ac:	4f41                	li	t5,16
   185ae:	4f9d                	li	t6,7
   185b0:	a801                	j	185c0 <_vfiprintf_r+0x694>
   185b2:	0026851b          	addiw	a0,a3,2
   185b6:	0741                	addi	a4,a4,16
   185b8:	86ae                	mv	a3,a1
   185ba:	3ec1                	addiw	t4,t4,-16
   185bc:	05df5163          	bge	t5,t4,185fe <_vfiprintf_r+0x6d2>
   185c0:	0016859b          	addiw	a1,a3,1
   185c4:	07c1                	addi	a5,a5,16
   185c6:	01273023          	sd	s2,0(a4)
   185ca:	01e73423          	sd	t5,8(a4)
   185ce:	f8be                	sd	a5,112(sp)
   185d0:	d4ae                	sw	a1,104(sp)
   185d2:	febfd0e3          	bge	t6,a1,185b2 <_vfiprintf_r+0x686>
   185d6:	c3fd                	beqz	a5,186bc <_vfiprintf_r+0x790>
   185d8:	1090                	addi	a2,sp,96
   185da:	85ce                	mv	a1,s3
   185dc:	8556                	mv	a0,s5
   185de:	f076                	sd	t4,32(sp)
   185e0:	89bff0ef          	jal	ra,17e7a <__sprint_r.part.0>
   185e4:	ba051be3          	bnez	a0,1819a <_vfiprintf_r+0x26e>
   185e8:	7e82                	ld	t4,32(sp)
   185ea:	56a6                	lw	a3,104(sp)
   185ec:	4f41                	li	t5,16
   185ee:	3ec1                	addiw	t4,t4,-16
   185f0:	77c6                	ld	a5,112(sp)
   185f2:	8722                	mv	a4,s0
   185f4:	0016851b          	addiw	a0,a3,1
   185f8:	4f9d                	li	t6,7
   185fa:	fddf43e3          	blt	t5,t4,185c0 <_vfiprintf_r+0x694>
   185fe:	97f6                	add	a5,a5,t4
   18600:	01273023          	sd	s2,0(a4)
   18604:	01d73423          	sd	t4,8(a4)
   18608:	f8be                	sd	a5,112(sp)
   1860a:	d4aa                	sw	a0,104(sp)
   1860c:	469d                	li	a3,7
   1860e:	34a6dc63          	bge	a3,a0,18966 <_vfiprintf_r+0xa3a>
   18612:	4a078963          	beqz	a5,18ac4 <_vfiprintf_r+0xb98>
   18616:	1090                	addi	a2,sp,96
   18618:	85ce                	mv	a1,s3
   1861a:	8556                	mv	a0,s5
   1861c:	85fff0ef          	jal	ra,17e7a <__sprint_r.part.0>
   18620:	b6051de3          	bnez	a0,1819a <_vfiprintf_r+0x26e>
   18624:	56a6                	lw	a3,104(sp)
   18626:	414c8cbb          	subw	s9,s9,s4
   1862a:	77c6                	ld	a5,112(sp)
   1862c:	8722                	mv	a4,s0
   1862e:	0016861b          	addiw	a2,a3,1
   18632:	b19056e3          	blez	s9,1813e <_vfiprintf_r+0x212>
   18636:	45c1                	li	a1,16
   18638:	0595d963          	bge	a1,s9,1868a <_vfiprintf_r+0x75e>
   1863c:	4ec1                	li	t4,16
   1863e:	4f1d                	li	t5,7
   18640:	a801                	j	18650 <_vfiprintf_r+0x724>
   18642:	0026861b          	addiw	a2,a3,2
   18646:	0741                	addi	a4,a4,16
   18648:	86ae                	mv	a3,a1
   1864a:	3cc1                	addiw	s9,s9,-16
   1864c:	039edf63          	bge	t4,s9,1868a <_vfiprintf_r+0x75e>
   18650:	0016859b          	addiw	a1,a3,1
   18654:	07c1                	addi	a5,a5,16
   18656:	01273023          	sd	s2,0(a4)
   1865a:	01d73423          	sd	t4,8(a4)
   1865e:	f8be                	sd	a5,112(sp)
   18660:	d4ae                	sw	a1,104(sp)
   18662:	febf50e3          	bge	t5,a1,18642 <_vfiprintf_r+0x716>
   18666:	cf9d                	beqz	a5,186a4 <_vfiprintf_r+0x778>
   18668:	1090                	addi	a2,sp,96
   1866a:	85ce                	mv	a1,s3
   1866c:	8556                	mv	a0,s5
   1866e:	80dff0ef          	jal	ra,17e7a <__sprint_r.part.0>
   18672:	b20514e3          	bnez	a0,1819a <_vfiprintf_r+0x26e>
   18676:	56a6                	lw	a3,104(sp)
   18678:	4ec1                	li	t4,16
   1867a:	3cc1                	addiw	s9,s9,-16
   1867c:	77c6                	ld	a5,112(sp)
   1867e:	8722                	mv	a4,s0
   18680:	0016861b          	addiw	a2,a3,1
   18684:	4f1d                	li	t5,7
   18686:	fd9ec5e3          	blt	t4,s9,18650 <_vfiprintf_r+0x724>
   1868a:	97e6                	add	a5,a5,s9
   1868c:	01273023          	sd	s2,0(a4)
   18690:	01973423          	sd	s9,8(a4)
   18694:	f8be                	sd	a5,112(sp)
   18696:	d4b2                	sw	a2,104(sp)
   18698:	469d                	li	a3,7
   1869a:	1cc6c363          	blt	a3,a2,18860 <_vfiprintf_r+0x934>
   1869e:	0741                	addi	a4,a4,16
   186a0:	2605                	addiw	a2,a2,1
   186a2:	bc71                	j	1813e <_vfiprintf_r+0x212>
   186a4:	4605                	li	a2,1
   186a6:	4681                	li	a3,0
   186a8:	8722                	mv	a4,s0
   186aa:	b745                	j	1864a <_vfiprintf_r+0x71e>
   186ac:	1090                	addi	a2,sp,96
   186ae:	85ce                	mv	a1,s3
   186b0:	8556                	mv	a0,s5
   186b2:	fc8ff0ef          	jal	ra,17e7a <__sprint_r.part.0>
   186b6:	ac0509e3          	beqz	a0,18188 <_vfiprintf_r+0x25c>
   186ba:	b4c5                	j	1819a <_vfiprintf_r+0x26e>
   186bc:	4505                	li	a0,1
   186be:	4681                	li	a3,0
   186c0:	8722                	mv	a4,s0
   186c2:	bde5                	j	185ba <_vfiprintf_r+0x68e>
   186c4:	1e078463          	beqz	a5,188ac <_vfiprintf_r+0x980>
   186c8:	1090                	addi	a2,sp,96
   186ca:	85ce                	mv	a1,s3
   186cc:	8556                	mv	a0,s5
   186ce:	f47e                	sd	t6,40(sp)
   186d0:	f016                	sd	t0,32(sp)
   186d2:	fa8ff0ef          	jal	ra,17e7a <__sprint_r.part.0>
   186d6:	ac0512e3          	bnez	a0,1819a <_vfiprintf_r+0x26e>
   186da:	56a6                	lw	a3,104(sp)
   186dc:	77c6                	ld	a5,112(sp)
   186de:	7fa2                	ld	t6,40(sp)
   186e0:	7282                	ld	t0,32(sp)
   186e2:	8722                	mv	a4,s0
   186e4:	0016861b          	addiw	a2,a3,1
   186e8:	bc01                	j	180f8 <_vfiprintf_r+0x1cc>
   186ea:	24079c63          	bnez	a5,18942 <_vfiprintf_r+0xa16>
   186ee:	05714703          	lbu	a4,87(sp)
   186f2:	3e071063          	bnez	a4,18ad2 <_vfiprintf_r+0xba6>
   186f6:	1a028d63          	beqz	t0,188b0 <_vfiprintf_r+0x984>
   186fa:	08bc                	addi	a5,sp,88
   186fc:	f1be                	sd	a5,224(sp)
   186fe:	4789                	li	a5,2
   18700:	f5be                	sd	a5,232(sp)
   18702:	4605                	li	a2,1
   18704:	8722                	mv	a4,s0
   18706:	86b2                	mv	a3,a2
   18708:	0741                	addi	a4,a4,16
   1870a:	0016861b          	addiw	a2,a3,1
   1870e:	b405                	j	1812e <_vfiprintf_r+0x202>
   18710:	4605                	li	a2,1
   18712:	86ea                	mv	a3,s10
   18714:	c0c794e3          	bne	a5,a2,1831c <_vfiprintf_r+0x3f0>
   18718:	47a5                	li	a5,9
   1871a:	1977ef63          	bltu	a5,s7,188b8 <_vfiprintf_r+0x98c>
   1871e:	030b8b9b          	addiw	s7,s7,48
   18722:	0d710da3          	sb	s7,219(sp)
   18726:	8d36                	mv	s10,a3
   18728:	4a05                	li	s4,1
   1872a:	0db10c13          	addi	s8,sp,219
   1872e:	b4cd                	j	18210 <_vfiprintf_r+0x2e4>
   18730:	4541                	li	a0,16
   18732:	07d55163          	bge	a0,t4,18794 <_vfiprintf_r+0x868>
   18736:	4f41                	li	t5,16
   18738:	439d                	li	t2,7
   1873a:	a811                	j	1874e <_vfiprintf_r+0x822>
   1873c:	0026859b          	addiw	a1,a3,2
   18740:	0741                	addi	a4,a4,16
   18742:	86b2                	mv	a3,a2
   18744:	3ec1                	addiw	t4,t4,-16
   18746:	05df5763          	bge	t5,t4,18794 <_vfiprintf_r+0x868>
   1874a:	0016859b          	addiw	a1,a3,1
   1874e:	07c1                	addi	a5,a5,16
   18750:	01673023          	sd	s6,0(a4)
   18754:	01e73423          	sd	t5,8(a4)
   18758:	f8be                	sd	a5,112(sp)
   1875a:	0005861b          	sext.w	a2,a1
   1875e:	d4ae                	sw	a1,104(sp)
   18760:	fcc3dee3          	bge	t2,a2,1873c <_vfiprintf_r+0x810>
   18764:	c7b9                	beqz	a5,187b2 <_vfiprintf_r+0x886>
   18766:	1090                	addi	a2,sp,96
   18768:	85ce                	mv	a1,s3
   1876a:	8556                	mv	a0,s5
   1876c:	f876                	sd	t4,48(sp)
   1876e:	f47e                	sd	t6,40(sp)
   18770:	f016                	sd	t0,32(sp)
   18772:	f08ff0ef          	jal	ra,17e7a <__sprint_r.part.0>
   18776:	a20512e3          	bnez	a0,1819a <_vfiprintf_r+0x26e>
   1877a:	7ec2                	ld	t4,48(sp)
   1877c:	56a6                	lw	a3,104(sp)
   1877e:	4f41                	li	t5,16
   18780:	3ec1                	addiw	t4,t4,-16
   18782:	77c6                	ld	a5,112(sp)
   18784:	7fa2                	ld	t6,40(sp)
   18786:	7282                	ld	t0,32(sp)
   18788:	8722                	mv	a4,s0
   1878a:	0016859b          	addiw	a1,a3,1
   1878e:	439d                	li	t2,7
   18790:	fbdf4de3          	blt	t5,t4,1874a <_vfiprintf_r+0x81e>
   18794:	97f6                	add	a5,a5,t4
   18796:	01673023          	sd	s6,0(a4)
   1879a:	01d73423          	sd	t4,8(a4)
   1879e:	f8be                	sd	a5,112(sp)
   187a0:	d4ae                	sw	a1,104(sp)
   187a2:	469d                	li	a3,7
   187a4:	f4b6c3e3          	blt	a3,a1,186ea <_vfiprintf_r+0x7be>
   187a8:	0741                	addi	a4,a4,16
   187aa:	0015861b          	addiw	a2,a1,1
   187ae:	86ae                	mv	a3,a1
   187b0:	b21d                	j	180d6 <_vfiprintf_r+0x1aa>
   187b2:	4681                	li	a3,0
   187b4:	4585                	li	a1,1
   187b6:	8722                	mv	a4,s0
   187b8:	b771                	j	18744 <_vfiprintf_r+0x818>
   187ba:	d482                	sw	zero,104(sp)
   187bc:	004d7313          	andi	t1,s10,4
   187c0:	08030863          	beqz	t1,18850 <_vfiprintf_r+0x924>
   187c4:	41748a3b          	subw	s4,s1,s7
   187c8:	09405463          	blez	s4,18850 <_vfiprintf_r+0x924>
   187cc:	8722                	mv	a4,s0
   187ce:	46c1                	li	a3,16
   187d0:	5626                	lw	a2,104(sp)
   187d2:	3546dd63          	bge	a3,s4,18b2c <_vfiprintf_r+0xc00>
   187d6:	4cc1                	li	s9,16
   187d8:	4c1d                	li	s8,7
   187da:	a801                	j	187ea <_vfiprintf_r+0x8be>
   187dc:	0026069b          	addiw	a3,a2,2
   187e0:	0741                	addi	a4,a4,16
   187e2:	862e                	mv	a2,a1
   187e4:	3a41                	addiw	s4,s4,-16
   187e6:	034cdd63          	bge	s9,s4,18820 <_vfiprintf_r+0x8f4>
   187ea:	0016059b          	addiw	a1,a2,1
   187ee:	07c1                	addi	a5,a5,16
   187f0:	01673023          	sd	s6,0(a4)
   187f4:	01973423          	sd	s9,8(a4)
   187f8:	f8be                	sd	a5,112(sp)
   187fa:	d4ae                	sw	a1,104(sp)
   187fc:	febc50e3          	bge	s8,a1,187dc <_vfiprintf_r+0x8b0>
   18800:	c7a1                	beqz	a5,18848 <_vfiprintf_r+0x91c>
   18802:	1090                	addi	a2,sp,96
   18804:	85ce                	mv	a1,s3
   18806:	8556                	mv	a0,s5
   18808:	e72ff0ef          	jal	ra,17e7a <__sprint_r.part.0>
   1880c:	980517e3          	bnez	a0,1819a <_vfiprintf_r+0x26e>
   18810:	5626                	lw	a2,104(sp)
   18812:	3a41                	addiw	s4,s4,-16
   18814:	77c6                	ld	a5,112(sp)
   18816:	8722                	mv	a4,s0
   18818:	0016069b          	addiw	a3,a2,1
   1881c:	fd4cc7e3          	blt	s9,s4,187ea <_vfiprintf_r+0x8be>
   18820:	97d2                	add	a5,a5,s4
   18822:	01673023          	sd	s6,0(a4)
   18826:	01473423          	sd	s4,8(a4)
   1882a:	f8be                	sd	a5,112(sp)
   1882c:	d4b6                	sw	a3,104(sp)
   1882e:	471d                	li	a4,7
   18830:	94d753e3          	bge	a4,a3,18176 <_vfiprintf_r+0x24a>
   18834:	cf91                	beqz	a5,18850 <_vfiprintf_r+0x924>
   18836:	1090                	addi	a2,sp,96
   18838:	85ce                	mv	a1,s3
   1883a:	8556                	mv	a0,s5
   1883c:	e3eff0ef          	jal	ra,17e7a <__sprint_r.part.0>
   18840:	94051de3          	bnez	a0,1819a <_vfiprintf_r+0x26e>
   18844:	77c6                	ld	a5,112(sp)
   18846:	ba05                	j	18176 <_vfiprintf_r+0x24a>
   18848:	4685                	li	a3,1
   1884a:	4601                	li	a2,0
   1884c:	8722                	mv	a4,s0
   1884e:	bf59                	j	187e4 <_vfiprintf_r+0x8b8>
   18850:	87a6                	mv	a5,s1
   18852:	0174d363          	bge	s1,s7,18858 <_vfiprintf_r+0x92c>
   18856:	87de                	mv	a5,s7
   18858:	6702                	ld	a4,0(sp)
   1885a:	9fb9                	addw	a5,a5,a4
   1885c:	e03e                	sd	a5,0(sp)
   1885e:	b22d                	j	18188 <_vfiprintf_r+0x25c>
   18860:	d00781e3          	beqz	a5,18562 <_vfiprintf_r+0x636>
   18864:	1090                	addi	a2,sp,96
   18866:	85ce                	mv	a1,s3
   18868:	8556                	mv	a0,s5
   1886a:	e10ff0ef          	jal	ra,17e7a <__sprint_r.part.0>
   1886e:	920516e3          	bnez	a0,1819a <_vfiprintf_r+0x26e>
   18872:	5626                	lw	a2,104(sp)
   18874:	77c6                	ld	a5,112(sp)
   18876:	8722                	mv	a4,s0
   18878:	2605                	addiw	a2,a2,1
   1887a:	b0d1                	j	1813e <_vfiprintf_r+0x212>
   1887c:	d482                	sw	zero,104(sp)
   1887e:	8722                	mv	a4,s0
   18880:	fa0ff06f          	j	18020 <_vfiprintf_r+0xf4>
   18884:	0106f793          	andi	a5,a3,16
   18888:	e7ed                	bnez	a5,18972 <_vfiprintf_r+0xa46>
   1888a:	65a2                	ld	a1,8(sp)
   1888c:	0406f793          	andi	a5,a3,64
   18890:	0005ab83          	lw	s7,0(a1)
   18894:	1e078863          	beqz	a5,18a84 <_vfiprintf_r+0xb58>
   18898:	1bc2                	slli	s7,s7,0x30
   1889a:	030bdb93          	srli	s7,s7,0x30
   1889e:	e432                	sd	a2,8(sp)
   188a0:	4785                	li	a5,1
   188a2:	bacd                	j	18294 <_vfiprintf_r+0x368>
   188a4:	4605                	li	a2,1
   188a6:	4681                	li	a3,0
   188a8:	8722                	mv	a4,s0
   188aa:	b051                	j	1812e <_vfiprintf_r+0x202>
   188ac:	0e029163          	bnez	t0,1898e <_vfiprintf_r+0xa62>
   188b0:	4681                	li	a3,0
   188b2:	4605                	li	a2,1
   188b4:	8722                	mv	a4,s0
   188b6:	b8a5                	j	1812e <_vfiprintf_r+0x202>
   188b8:	0dc10a13          	addi	s4,sp,220
   188bc:	4006ff13          	andi	t5,a3,1024
   188c0:	4581                	li	a1,0
   188c2:	8652                	mv	a2,s4
   188c4:	4329                	li	t1,10
   188c6:	4ea5                	li	t4,9
   188c8:	0ff00d13          	li	s10,255
   188cc:	a039                	j	188da <_vfiprintf_r+0x9ae>
   188ce:	026bd7b3          	divu	a5,s7,t1
   188d2:	cd7ef2e3          	bgeu	t4,s7,18596 <_vfiprintf_r+0x66a>
   188d6:	8bbe                	mv	s7,a5
   188d8:	8662                	mv	a2,s8
   188da:	fff60c13          	addi	s8,a2,-1
   188de:	2585                	addiw	a1,a1,1
   188e0:	026bf7b3          	remu	a5,s7,t1
   188e4:	0307879b          	addiw	a5,a5,48
   188e8:	fef60fa3          	sb	a5,-1(a2)
   188ec:	fe0f01e3          	beqz	t5,188ce <_vfiprintf_r+0x9a2>
   188f0:	77e2                	ld	a5,56(sp)
   188f2:	0007c783          	lbu	a5,0(a5)
   188f6:	fcb79ce3          	bne	a5,a1,188ce <_vfiprintf_r+0x9a2>
   188fa:	fda78ae3          	beq	a5,s10,188ce <_vfiprintf_r+0x9a2>
   188fe:	c97efce3          	bgeu	t4,s7,18596 <_vfiprintf_r+0x66a>
   18902:	67a6                	ld	a5,72(sp)
   18904:	6586                	ld	a1,64(sp)
   18906:	f87a                	sd	t5,48(sp)
   18908:	40fc0c33          	sub	s8,s8,a5
   1890c:	863e                	mv	a2,a5
   1890e:	8562                	mv	a0,s8
   18910:	f43a                	sd	a4,40(sp)
   18912:	f036                	sd	a3,32(sp)
   18914:	aa9fd0ef          	jal	ra,163bc <strncpy>
   18918:	7762                	ld	a4,56(sp)
   1891a:	4329                	li	t1,10
   1891c:	026bd7b3          	divu	a5,s7,t1
   18920:	00174603          	lbu	a2,1(a4)
   18924:	7682                	ld	a3,32(sp)
   18926:	7f42                	ld	t5,48(sp)
   18928:	00c03633          	snez	a2,a2
   1892c:	9732                	add	a4,a4,a2
   1892e:	fc3a                	sd	a4,56(sp)
   18930:	4581                	li	a1,0
   18932:	7722                	ld	a4,40(sp)
   18934:	4ea5                	li	t4,9
   18936:	b745                	j	188d6 <_vfiprintf_r+0x9aa>
   18938:	000dc783          	lbu	a5,0(s11)
   1893c:	e462                	sd	s8,8(sp)
   1893e:	f0aff06f          	j	18048 <_vfiprintf_r+0x11c>
   18942:	1090                	addi	a2,sp,96
   18944:	85ce                	mv	a1,s3
   18946:	8556                	mv	a0,s5
   18948:	f47e                	sd	t6,40(sp)
   1894a:	f016                	sd	t0,32(sp)
   1894c:	d2eff0ef          	jal	ra,17e7a <__sprint_r.part.0>
   18950:	840515e3          	bnez	a0,1819a <_vfiprintf_r+0x26e>
   18954:	56a6                	lw	a3,104(sp)
   18956:	77c6                	ld	a5,112(sp)
   18958:	7fa2                	ld	t6,40(sp)
   1895a:	7282                	ld	t0,32(sp)
   1895c:	8722                	mv	a4,s0
   1895e:	0016861b          	addiw	a2,a3,1
   18962:	f74ff06f          	j	180d6 <_vfiprintf_r+0x1aa>
   18966:	0741                	addi	a4,a4,16
   18968:	0015061b          	addiw	a2,a0,1
   1896c:	86aa                	mv	a3,a0
   1896e:	fc8ff06f          	j	18136 <_vfiprintf_r+0x20a>
   18972:	67a2                	ld	a5,8(sp)
   18974:	e432                	sd	a2,8(sp)
   18976:	0007bb83          	ld	s7,0(a5)
   1897a:	4785                	li	a5,1
   1897c:	ba21                	j	18294 <_vfiprintf_r+0x368>
   1897e:	67a2                	ld	a5,8(sp)
   18980:	0007bb83          	ld	s7,0(a5)
   18984:	b219                	j	1828a <_vfiprintf_r+0x35e>
   18986:	67a2                	ld	a5,8(sp)
   18988:	639c                	ld	a5,0(a5)
   1898a:	8bbe                	mv	s7,a5
   1898c:	b085                	j	181ec <_vfiprintf_r+0x2c0>
   1898e:	08bc                	addi	a5,sp,88
   18990:	f1be                	sd	a5,224(sp)
   18992:	4789                	li	a5,2
   18994:	f5be                	sd	a5,232(sp)
   18996:	4685                	li	a3,1
   18998:	8722                	mv	a4,s0
   1899a:	b3bd                	j	18708 <_vfiprintf_r+0x7dc>
   1899c:	e432                	sd	a2,8(sp)
   1899e:	bbad                	j	18718 <_vfiprintf_r+0x7ec>
   189a0:	65a2                	ld	a1,8(sp)
   189a2:	66f1                	lui	a3,0x1c
   189a4:	32868693          	addi	a3,a3,808 # 1c328 <__clzdi2+0x5c>
   189a8:	e836                	sd	a3,16(sp)
   189aa:	020d7693          	andi	a3,s10,32
   189ae:	00858613          	addi	a2,a1,8
   189b2:	c6a1                	beqz	a3,189fa <_vfiprintf_r+0xace>
   189b4:	0005bb83          	ld	s7,0(a1)
   189b8:	001d7693          	andi	a3,s10,1
   189bc:	ce89                	beqz	a3,189d6 <_vfiprintf_r+0xaaa>
   189be:	000b8c63          	beqz	s7,189d6 <_vfiprintf_r+0xaaa>
   189c2:	002d6313          	ori	t1,s10,2
   189c6:	03000693          	li	a3,48
   189ca:	04d10c23          	sb	a3,88(sp)
   189ce:	04f10ca3          	sb	a5,89(sp)
   189d2:	00030d1b          	sext.w	s10,t1
   189d6:	bffd7693          	andi	a3,s10,-1025
   189da:	2681                	sext.w	a3,a3
   189dc:	e432                	sd	a2,8(sp)
   189de:	4789                	li	a5,2
   189e0:	b855                	j	18294 <_vfiprintf_r+0x368>
   189e2:	86ea                	mv	a3,s10
   189e4:	b69d                	j	1854a <_vfiprintf_r+0x61e>
   189e6:	65a2                	ld	a1,8(sp)
   189e8:	66f1                	lui	a3,0x1c
   189ea:	34068693          	addi	a3,a3,832 # 1c340 <__clzdi2+0x74>
   189ee:	e836                	sd	a3,16(sp)
   189f0:	020d7693          	andi	a3,s10,32
   189f4:	00858613          	addi	a2,a1,8
   189f8:	fed5                	bnez	a3,189b4 <_vfiprintf_r+0xa88>
   189fa:	010d7693          	andi	a3,s10,16
   189fe:	c285                	beqz	a3,18a1e <_vfiprintf_r+0xaf2>
   18a00:	66a2                	ld	a3,8(sp)
   18a02:	0006bb83          	ld	s7,0(a3)
   18a06:	bf4d                	j	189b8 <_vfiprintf_r+0xa8c>
   18a08:	8562                	mv	a0,s8
   18a0a:	f03a                	sd	a4,32(sp)
   18a0c:	e436                	sd	a3,8(sp)
   18a0e:	91ffd0ef          	jal	ra,1632c <strlen>
   18a12:	7702                	ld	a4,32(sp)
   18a14:	00050a1b          	sext.w	s4,a0
   18a18:	4c81                	li	s9,0
   18a1a:	ff6ff06f          	j	18210 <_vfiprintf_r+0x2e4>
   18a1e:	65a2                	ld	a1,8(sp)
   18a20:	040d7693          	andi	a3,s10,64
   18a24:	0005ab83          	lw	s7,0(a1)
   18a28:	cac1                	beqz	a3,18ab8 <_vfiprintf_r+0xb8c>
   18a2a:	1bc2                	slli	s7,s7,0x30
   18a2c:	030bdb93          	srli	s7,s7,0x30
   18a30:	b761                	j	189b8 <_vfiprintf_r+0xa8c>
   18a32:	86ea                	mv	a3,s10
   18a34:	e432                	sd	a2,8(sp)
   18a36:	b1cd                	j	18718 <_vfiprintf_r+0x7ec>
   18a38:	4685                	li	a3,1
   18a3a:	0ed78c63          	beq	a5,a3,18b32 <_vfiprintf_r+0xc06>
   18a3e:	4689                	li	a3,2
   18a40:	b2d78ae3          	beq	a5,a3,18574 <_vfiprintf_r+0x648>
   18a44:	86ea                	mv	a3,s10
   18a46:	b8f1                	j	18322 <_vfiprintf_r+0x3f6>
   18a48:	200d6313          	ori	t1,s10,512
   18a4c:	001dc783          	lbu	a5,1(s11)
   18a50:	00030d1b          	sext.w	s10,t1
   18a54:	0d85                	addi	s11,s11,1
   18a56:	df2ff06f          	j	18048 <_vfiprintf_r+0x11c>
   18a5a:	020d6313          	ori	t1,s10,32
   18a5e:	001dc783          	lbu	a5,1(s11)
   18a62:	00030d1b          	sext.w	s10,t1
   18a66:	0d85                	addi	s11,s11,1
   18a68:	de0ff06f          	j	18048 <_vfiprintf_r+0x11c>
   18a6c:	4799                	li	a5,6
   18a6e:	000c8a1b          	sext.w	s4,s9
   18a72:	0597ee63          	bltu	a5,s9,18ace <_vfiprintf_r+0xba2>
   18a76:	6e71                	lui	t3,0x1c
   18a78:	8bd2                	mv	s7,s4
   18a7a:	e436                	sd	a3,8(sp)
   18a7c:	358e0c13          	addi	s8,t3,856 # 1c358 <__clzdi2+0x8c>
   18a80:	e30ff06f          	j	180b0 <_vfiprintf_r+0x184>
   18a84:	2006f793          	andi	a5,a3,512
   18a88:	cbbd                	beqz	a5,18afe <_vfiprintf_r+0xbd2>
   18a8a:	0ffbfb93          	zext.b	s7,s7
   18a8e:	e432                	sd	a2,8(sp)
   18a90:	4785                	li	a5,1
   18a92:	803ff06f          	j	18294 <_vfiprintf_r+0x368>
   18a96:	200d7793          	andi	a5,s10,512
   18a9a:	cfa9                	beqz	a5,18af4 <_vfiprintf_r+0xbc8>
   18a9c:	0ffbfb93          	zext.b	s7,s7
   18aa0:	feaff06f          	j	1828a <_vfiprintf_r+0x35e>
   18aa4:	200d7793          	andi	a5,s10,512
   18aa8:	c3b9                	beqz	a5,18aee <_vfiprintf_r+0xbc2>
   18aaa:	018b9b9b          	slliw	s7,s7,0x18
   18aae:	418bdb9b          	sraiw	s7,s7,0x18
   18ab2:	87de                	mv	a5,s7
   18ab4:	f38ff06f          	j	181ec <_vfiprintf_r+0x2c0>
   18ab8:	200d7693          	andi	a3,s10,512
   18abc:	caa1                	beqz	a3,18b0c <_vfiprintf_r+0xbe0>
   18abe:	0ffbfb93          	zext.b	s7,s7
   18ac2:	bddd                	j	189b8 <_vfiprintf_r+0xa8c>
   18ac4:	4605                	li	a2,1
   18ac6:	4681                	li	a3,0
   18ac8:	8722                	mv	a4,s0
   18aca:	e6cff06f          	j	18136 <_vfiprintf_r+0x20a>
   18ace:	4a19                	li	s4,6
   18ad0:	b75d                	j	18a76 <_vfiprintf_r+0xb4a>
   18ad2:	05710793          	addi	a5,sp,87
   18ad6:	f1be                	sd	a5,224(sp)
   18ad8:	4785                	li	a5,1
   18ada:	f5be                	sd	a5,232(sp)
   18adc:	4605                	li	a2,1
   18ade:	8722                	mv	a4,s0
   18ae0:	e12ff06f          	j	180f2 <_vfiprintf_r+0x1c6>
   18ae4:	6782                	ld	a5,0(sp)
   18ae6:	00f69023          	sh	a5,0(a3)
   18aea:	ce2ff06f          	j	17fcc <_vfiprintf_r+0xa0>
   18aee:	87de                	mv	a5,s7
   18af0:	efcff06f          	j	181ec <_vfiprintf_r+0x2c0>
   18af4:	1b82                	slli	s7,s7,0x20
   18af6:	020bdb93          	srli	s7,s7,0x20
   18afa:	f90ff06f          	j	1828a <_vfiprintf_r+0x35e>
   18afe:	1b82                	slli	s7,s7,0x20
   18b00:	020bdb93          	srli	s7,s7,0x20
   18b04:	e432                	sd	a2,8(sp)
   18b06:	4785                	li	a5,1
   18b08:	f8cff06f          	j	18294 <_vfiprintf_r+0x368>
   18b0c:	1b82                	slli	s7,s7,0x20
   18b0e:	020bdb93          	srli	s7,s7,0x20
   18b12:	b55d                	j	189b8 <_vfiprintf_r+0xa8c>
   18b14:	1090                	addi	a2,sp,96
   18b16:	85ce                	mv	a1,s3
   18b18:	8556                	mv	a0,s5
   18b1a:	b60ff0ef          	jal	ra,17e7a <__sprint_r.part.0>
   18b1e:	e7cff06f          	j	1819a <_vfiprintf_r+0x26e>
   18b22:	8a66                	mv	s4,s9
   18b24:	e436                	sd	a3,8(sp)
   18b26:	4c81                	li	s9,0
   18b28:	ee8ff06f          	j	18210 <_vfiprintf_r+0x2e4>
   18b2c:	0016069b          	addiw	a3,a2,1
   18b30:	b9c5                	j	18820 <_vfiprintf_r+0x8f4>
   18b32:	86ea                	mv	a3,s10
   18b34:	b6ed                	j	1871e <_vfiprintf_r+0x7f2>
   18b36:	57fd                	li	a5,-1
   18b38:	e03e                	sd	a5,0(sp)
   18b3a:	e6cff06f          	j	181a6 <_vfiprintf_r+0x27a>
   18b3e:	8532                	mv	a0,a2
   18b40:	bc7d                	j	185fe <_vfiprintf_r+0x6d2>
   18b42:	c29c                	sw	a5,0(a3)
   18b44:	c88ff06f          	j	17fcc <_vfiprintf_r+0xa0>
   18b48:	e432                	sd	a2,8(sp)
   18b4a:	bed1                	j	1871e <_vfiprintf_r+0x7f2>
   18b4c:	6622                	ld	a2,8(sp)
   18b4e:	421c                	lw	a5,0(a2)
   18b50:	00860c13          	addi	s8,a2,8
   18b54:	883e                	mv	a6,a5
   18b56:	0007d363          	bgez	a5,18b5c <_vfiprintf_r+0xc30>
   18b5a:	587d                	li	a6,-1
   18b5c:	001dc783          	lbu	a5,1(s11)
   18b60:	00080c9b          	sext.w	s9,a6
   18b64:	e462                	sd	s8,8(sp)
   18b66:	8db6                	mv	s11,a3
   18b68:	ce0ff06f          	j	18048 <_vfiprintf_r+0x11c>

0000000000018b6c <vfiprintf>:
   18b6c:	87aa                	mv	a5,a0
   18b6e:	7581b503          	ld	a0,1880(gp) # 1f328 <_impure_ptr>
   18b72:	86b2                	mv	a3,a2
   18b74:	862e                	mv	a2,a1
   18b76:	85be                	mv	a1,a5
   18b78:	bb4ff06f          	j	17f2c <_vfiprintf_r>

0000000000018b7c <__sbprintf>:
   18b7c:	0105d783          	lhu	a5,16(a1)
   18b80:	0ac5ae03          	lw	t3,172(a1)
   18b84:	0125d303          	lhu	t1,18(a1)
   18b88:	0305b883          	ld	a7,48(a1)
   18b8c:	0405b803          	ld	a6,64(a1)
   18b90:	b3010113          	addi	sp,sp,-1232
   18b94:	9bf5                	andi	a5,a5,-3
   18b96:	40000713          	li	a4,1024
   18b9a:	4c813023          	sd	s0,1216(sp)
   18b9e:	00f11823          	sh	a5,16(sp)
   18ba2:	842e                	mv	s0,a1
   18ba4:	191c                	addi	a5,sp,176
   18ba6:	858a                	mv	a1,sp
   18ba8:	4a913c23          	sd	s1,1208(sp)
   18bac:	4b213823          	sd	s2,1200(sp)
   18bb0:	4c113423          	sd	ra,1224(sp)
   18bb4:	892a                	mv	s2,a0
   18bb6:	d772                	sw	t3,172(sp)
   18bb8:	00611923          	sh	t1,18(sp)
   18bbc:	f846                	sd	a7,48(sp)
   18bbe:	e0c2                	sd	a6,64(sp)
   18bc0:	e03e                	sd	a5,0(sp)
   18bc2:	ec3e                	sd	a5,24(sp)
   18bc4:	c63a                	sw	a4,12(sp)
   18bc6:	d03a                	sw	a4,32(sp)
   18bc8:	d402                	sw	zero,40(sp)
   18bca:	b62ff0ef          	jal	ra,17f2c <_vfiprintf_r>
   18bce:	84aa                	mv	s1,a0
   18bd0:	02055963          	bgez	a0,18c02 <__sbprintf+0x86>
   18bd4:	01015783          	lhu	a5,16(sp)
   18bd8:	0407f793          	andi	a5,a5,64
   18bdc:	c799                	beqz	a5,18bea <__sbprintf+0x6e>
   18bde:	01045783          	lhu	a5,16(s0)
   18be2:	0407e793          	ori	a5,a5,64
   18be6:	00f41823          	sh	a5,16(s0)
   18bea:	4c813083          	ld	ra,1224(sp)
   18bee:	4c013403          	ld	s0,1216(sp)
   18bf2:	4b013903          	ld	s2,1200(sp)
   18bf6:	8526                	mv	a0,s1
   18bf8:	4b813483          	ld	s1,1208(sp)
   18bfc:	4d010113          	addi	sp,sp,1232
   18c00:	8082                	ret
   18c02:	858a                	mv	a1,sp
   18c04:	854a                	mv	a0,s2
   18c06:	deef90ef          	jal	ra,121f4 <_fflush_r>
   18c0a:	d569                	beqz	a0,18bd4 <__sbprintf+0x58>
   18c0c:	54fd                	li	s1,-1
   18c0e:	b7d9                	j	18bd4 <__sbprintf+0x58>

0000000000018c10 <_wctomb_r>:
   18c10:	e401b783          	ld	a5,-448(gp) # 1ea10 <__global_locale+0xe0>
   18c14:	8782                	jr	a5

0000000000018c16 <__ascii_wctomb>:
   18c16:	0006079b          	sext.w	a5,a2
   18c1a:	cd91                	beqz	a1,18c36 <__ascii_wctomb+0x20>
   18c1c:	0ff00713          	li	a4,255
   18c20:	00f76663          	bltu	a4,a5,18c2c <__ascii_wctomb+0x16>
   18c24:	00c58023          	sb	a2,0(a1)
   18c28:	4505                	li	a0,1
   18c2a:	8082                	ret
   18c2c:	08a00793          	li	a5,138
   18c30:	c11c                	sw	a5,0(a0)
   18c32:	557d                	li	a0,-1
   18c34:	8082                	ret
   18c36:	4501                	li	a0,0
   18c38:	8082                	ret

0000000000018c3a <_write_r>:
   18c3a:	1101                	addi	sp,sp,-32
   18c3c:	872e                	mv	a4,a1
   18c3e:	e822                	sd	s0,16(sp)
   18c40:	e426                	sd	s1,8(sp)
   18c42:	85b2                	mv	a1,a2
   18c44:	842a                	mv	s0,a0
   18c46:	8636                	mv	a2,a3
   18c48:	853a                	mv	a0,a4
   18c4a:	ec06                	sd	ra,24(sp)
   18c4c:	7801a823          	sw	zero,1936(gp) # 1f360 <errno>
   18c50:	18c020ef          	jal	ra,1addc <_write>
   18c54:	57fd                	li	a5,-1
   18c56:	00f50763          	beq	a0,a5,18c64 <_write_r+0x2a>
   18c5a:	60e2                	ld	ra,24(sp)
   18c5c:	6442                	ld	s0,16(sp)
   18c5e:	64a2                	ld	s1,8(sp)
   18c60:	6105                	addi	sp,sp,32
   18c62:	8082                	ret
   18c64:	7901a783          	lw	a5,1936(gp) # 1f360 <errno>
   18c68:	dbed                	beqz	a5,18c5a <_write_r+0x20>
   18c6a:	60e2                	ld	ra,24(sp)
   18c6c:	c01c                	sw	a5,0(s0)
   18c6e:	6442                	ld	s0,16(sp)
   18c70:	64a2                	ld	s1,8(sp)
   18c72:	6105                	addi	sp,sp,32
   18c74:	8082                	ret

0000000000018c76 <__assert_func>:
   18c76:	7581b703          	ld	a4,1880(gp) # 1f328 <_impure_ptr>
   18c7a:	1141                	addi	sp,sp,-16
   18c7c:	87b6                	mv	a5,a3
   18c7e:	8832                	mv	a6,a2
   18c80:	e406                	sd	ra,8(sp)
   18c82:	01873883          	ld	a7,24(a4)
   18c86:	86aa                	mv	a3,a0
   18c88:	872e                	mv	a4,a1
   18c8a:	863e                	mv	a2,a5
   18c8c:	00080d63          	beqz	a6,18ca6 <__assert_func+0x30>
   18c90:	67f5                	lui	a5,0x1d
   18c92:	df878793          	addi	a5,a5,-520 # 1cdf8 <zeroes.0+0x10>
   18c96:	65f5                	lui	a1,0x1d
   18c98:	e0858593          	addi	a1,a1,-504 # 1ce08 <zeroes.0+0x20>
   18c9c:	8546                	mv	a0,a7
   18c9e:	1ec000ef          	jal	ra,18e8a <fiprintf>
   18ca2:	3b1010ef          	jal	ra,1a852 <abort>
   18ca6:	6871                	lui	a6,0x1c
   18ca8:	35080793          	addi	a5,a6,848 # 1c350 <__clzdi2+0x84>
   18cac:	35080813          	addi	a6,a6,848
   18cb0:	b7dd                	j	18c96 <__assert_func+0x20>

0000000000018cb2 <__assert>:
   18cb2:	1141                	addi	sp,sp,-16
   18cb4:	86b2                	mv	a3,a2
   18cb6:	4601                	li	a2,0
   18cb8:	e406                	sd	ra,8(sp)
   18cba:	fbdff0ef          	jal	ra,18c76 <__assert_func>

0000000000018cbe <atexit>:
   18cbe:	85aa                	mv	a1,a0
   18cc0:	4681                	li	a3,0
   18cc2:	4601                	li	a2,0
   18cc4:	4501                	li	a0,0
   18cc6:	39d0106f          	j	1a862 <__register_exitproc>

0000000000018cca <_calloc_r>:
   18cca:	02c5b7b3          	mulhu	a5,a1,a2
   18cce:	1141                	addi	sp,sp,-16
   18cd0:	e406                	sd	ra,8(sp)
   18cd2:	e022                	sd	s0,0(sp)
   18cd4:	02c585b3          	mul	a1,a1,a2
   18cd8:	efb5                	bnez	a5,18d54 <_calloc_r+0x8a>
   18cda:	f1ffb0ef          	jal	ra,14bf8 <_malloc_r>
   18cde:	842a                	mv	s0,a0
   18ce0:	c521                	beqz	a0,18d28 <_calloc_r+0x5e>
   18ce2:	ff853603          	ld	a2,-8(a0)
   18ce6:	04800713          	li	a4,72
   18cea:	9a71                	andi	a2,a2,-4
   18cec:	1661                	addi	a2,a2,-8
   18cee:	04c76263          	bltu	a4,a2,18d32 <_calloc_r+0x68>
   18cf2:	02700693          	li	a3,39
   18cf6:	87aa                	mv	a5,a0
   18cf8:	02c6f263          	bgeu	a3,a2,18d1c <_calloc_r+0x52>
   18cfc:	00053023          	sd	zero,0(a0)
   18d00:	00053423          	sd	zero,8(a0)
   18d04:	03700793          	li	a5,55
   18d08:	02c7fd63          	bgeu	a5,a2,18d42 <_calloc_r+0x78>
   18d0c:	00053823          	sd	zero,16(a0)
   18d10:	00053c23          	sd	zero,24(a0)
   18d14:	02050793          	addi	a5,a0,32
   18d18:	04e60863          	beq	a2,a4,18d68 <_calloc_r+0x9e>
   18d1c:	0007b023          	sd	zero,0(a5)
   18d20:	0007b423          	sd	zero,8(a5)
   18d24:	0007b823          	sd	zero,16(a5)
   18d28:	60a2                	ld	ra,8(sp)
   18d2a:	8522                	mv	a0,s0
   18d2c:	6402                	ld	s0,0(sp)
   18d2e:	0141                	addi	sp,sp,16
   18d30:	8082                	ret
   18d32:	4581                	li	a1,0
   18d34:	d40f70ef          	jal	ra,10274 <memset>
   18d38:	60a2                	ld	ra,8(sp)
   18d3a:	8522                	mv	a0,s0
   18d3c:	6402                	ld	s0,0(sp)
   18d3e:	0141                	addi	sp,sp,16
   18d40:	8082                	ret
   18d42:	01050793          	addi	a5,a0,16
   18d46:	0007b023          	sd	zero,0(a5)
   18d4a:	0007b423          	sd	zero,8(a5)
   18d4e:	0007b823          	sd	zero,16(a5)
   18d52:	bfd9                	j	18d28 <_calloc_r+0x5e>
   18d54:	058000ef          	jal	ra,18dac <__errno>
   18d58:	4401                	li	s0,0
   18d5a:	47b1                	li	a5,12
   18d5c:	60a2                	ld	ra,8(sp)
   18d5e:	c11c                	sw	a5,0(a0)
   18d60:	8522                	mv	a0,s0
   18d62:	6402                	ld	s0,0(sp)
   18d64:	0141                	addi	sp,sp,16
   18d66:	8082                	ret
   18d68:	02053023          	sd	zero,32(a0)
   18d6c:	03050793          	addi	a5,a0,48
   18d70:	02053423          	sd	zero,40(a0)
   18d74:	b765                	j	18d1c <_calloc_r+0x52>

0000000000018d76 <_close_r>:
   18d76:	1101                	addi	sp,sp,-32
   18d78:	e822                	sd	s0,16(sp)
   18d7a:	e426                	sd	s1,8(sp)
   18d7c:	842a                	mv	s0,a0
   18d7e:	852e                	mv	a0,a1
   18d80:	ec06                	sd	ra,24(sp)
   18d82:	7801a823          	sw	zero,1936(gp) # 1f360 <errno>
   18d86:	6e3010ef          	jal	ra,1ac68 <_close>
   18d8a:	57fd                	li	a5,-1
   18d8c:	00f50763          	beq	a0,a5,18d9a <_close_r+0x24>
   18d90:	60e2                	ld	ra,24(sp)
   18d92:	6442                	ld	s0,16(sp)
   18d94:	64a2                	ld	s1,8(sp)
   18d96:	6105                	addi	sp,sp,32
   18d98:	8082                	ret
   18d9a:	7901a783          	lw	a5,1936(gp) # 1f360 <errno>
   18d9e:	dbed                	beqz	a5,18d90 <_close_r+0x1a>
   18da0:	60e2                	ld	ra,24(sp)
   18da2:	c01c                	sw	a5,0(s0)
   18da4:	6442                	ld	s0,16(sp)
   18da6:	64a2                	ld	s1,8(sp)
   18da8:	6105                	addi	sp,sp,32
   18daa:	8082                	ret

0000000000018dac <__errno>:
   18dac:	7581b503          	ld	a0,1880(gp) # 1f328 <_impure_ptr>
   18db0:	8082                	ret

0000000000018db2 <_fclose_r>:
   18db2:	1101                	addi	sp,sp,-32
   18db4:	ec06                	sd	ra,24(sp)
   18db6:	e822                	sd	s0,16(sp)
   18db8:	e426                	sd	s1,8(sp)
   18dba:	e04a                	sd	s2,0(sp)
   18dbc:	c989                	beqz	a1,18dce <_fclose_r+0x1c>
   18dbe:	842e                	mv	s0,a1
   18dc0:	84aa                	mv	s1,a0
   18dc2:	c119                	beqz	a0,18dc8 <_fclose_r+0x16>
   18dc4:	493c                	lw	a5,80(a0)
   18dc6:	cfa5                	beqz	a5,18e3e <_fclose_r+0x8c>
   18dc8:	01041783          	lh	a5,16(s0)
   18dcc:	eb89                	bnez	a5,18dde <_fclose_r+0x2c>
   18dce:	60e2                	ld	ra,24(sp)
   18dd0:	6442                	ld	s0,16(sp)
   18dd2:	4901                	li	s2,0
   18dd4:	64a2                	ld	s1,8(sp)
   18dd6:	854a                	mv	a0,s2
   18dd8:	6902                	ld	s2,0(sp)
   18dda:	6105                	addi	sp,sp,32
   18ddc:	8082                	ret
   18dde:	85a2                	mv	a1,s0
   18de0:	8526                	mv	a0,s1
   18de2:	a80f90ef          	jal	ra,12062 <__sflush_r>
   18de6:	683c                	ld	a5,80(s0)
   18de8:	892a                	mv	s2,a0
   18dea:	c791                	beqz	a5,18df6 <_fclose_r+0x44>
   18dec:	780c                	ld	a1,48(s0)
   18dee:	8526                	mv	a0,s1
   18df0:	9782                	jalr	a5
   18df2:	04054c63          	bltz	a0,18e4a <_fclose_r+0x98>
   18df6:	01045783          	lhu	a5,16(s0)
   18dfa:	0807f793          	andi	a5,a5,128
   18dfe:	efa1                	bnez	a5,18e56 <_fclose_r+0xa4>
   18e00:	6c2c                	ld	a1,88(s0)
   18e02:	c991                	beqz	a1,18e16 <_fclose_r+0x64>
   18e04:	07440793          	addi	a5,s0,116
   18e08:	00f58563          	beq	a1,a5,18e12 <_fclose_r+0x60>
   18e0c:	8526                	mv	a0,s1
   18e0e:	ff2f90ef          	jal	ra,12600 <_free_r>
   18e12:	04043c23          	sd	zero,88(s0)
   18e16:	7c2c                	ld	a1,120(s0)
   18e18:	c591                	beqz	a1,18e24 <_fclose_r+0x72>
   18e1a:	8526                	mv	a0,s1
   18e1c:	fe4f90ef          	jal	ra,12600 <_free_r>
   18e20:	06043c23          	sd	zero,120(s0)
   18e24:	eb4f90ef          	jal	ra,124d8 <__sfp_lock_acquire>
   18e28:	00041823          	sh	zero,16(s0)
   18e2c:	eaef90ef          	jal	ra,124da <__sfp_lock_release>
   18e30:	60e2                	ld	ra,24(sp)
   18e32:	6442                	ld	s0,16(sp)
   18e34:	64a2                	ld	s1,8(sp)
   18e36:	854a                	mv	a0,s2
   18e38:	6902                	ld	s2,0(sp)
   18e3a:	6105                	addi	sp,sp,32
   18e3c:	8082                	ret
   18e3e:	e92f90ef          	jal	ra,124d0 <__sinit>
   18e42:	01041783          	lh	a5,16(s0)
   18e46:	d7c1                	beqz	a5,18dce <_fclose_r+0x1c>
   18e48:	bf59                	j	18dde <_fclose_r+0x2c>
   18e4a:	01045783          	lhu	a5,16(s0)
   18e4e:	597d                	li	s2,-1
   18e50:	0807f793          	andi	a5,a5,128
   18e54:	d7d5                	beqz	a5,18e00 <_fclose_r+0x4e>
   18e56:	6c0c                	ld	a1,24(s0)
   18e58:	8526                	mv	a0,s1
   18e5a:	fa6f90ef          	jal	ra,12600 <_free_r>
   18e5e:	b74d                	j	18e00 <_fclose_r+0x4e>

0000000000018e60 <fclose>:
   18e60:	85aa                	mv	a1,a0
   18e62:	7581b503          	ld	a0,1880(gp) # 1f328 <_impure_ptr>
   18e66:	f4dff06f          	j	18db2 <_fclose_r>

0000000000018e6a <_fiprintf_r>:
   18e6a:	715d                	addi	sp,sp,-80
   18e6c:	02810313          	addi	t1,sp,40
   18e70:	f436                	sd	a3,40(sp)
   18e72:	869a                	mv	a3,t1
   18e74:	ec06                	sd	ra,24(sp)
   18e76:	f83a                	sd	a4,48(sp)
   18e78:	fc3e                	sd	a5,56(sp)
   18e7a:	e0c2                	sd	a6,64(sp)
   18e7c:	e4c6                	sd	a7,72(sp)
   18e7e:	e41a                	sd	t1,8(sp)
   18e80:	8acff0ef          	jal	ra,17f2c <_vfiprintf_r>
   18e84:	60e2                	ld	ra,24(sp)
   18e86:	6161                	addi	sp,sp,80
   18e88:	8082                	ret

0000000000018e8a <fiprintf>:
   18e8a:	8e2a                	mv	t3,a0
   18e8c:	715d                	addi	sp,sp,-80
   18e8e:	7581b503          	ld	a0,1880(gp) # 1f328 <_impure_ptr>
   18e92:	02010313          	addi	t1,sp,32
   18e96:	f032                	sd	a2,32(sp)
   18e98:	f436                	sd	a3,40(sp)
   18e9a:	862e                	mv	a2,a1
   18e9c:	869a                	mv	a3,t1
   18e9e:	85f2                	mv	a1,t3
   18ea0:	ec06                	sd	ra,24(sp)
   18ea2:	f83a                	sd	a4,48(sp)
   18ea4:	fc3e                	sd	a5,56(sp)
   18ea6:	e0c2                	sd	a6,64(sp)
   18ea8:	e4c6                	sd	a7,72(sp)
   18eaa:	e41a                	sd	t1,8(sp)
   18eac:	880ff0ef          	jal	ra,17f2c <_vfiprintf_r>
   18eb0:	60e2                	ld	ra,24(sp)
   18eb2:	6161                	addi	sp,sp,80
   18eb4:	8082                	ret

0000000000018eb6 <__fputwc>:
   18eb6:	715d                	addi	sp,sp,-80
   18eb8:	e0a2                	sd	s0,64(sp)
   18eba:	f44e                	sd	s3,40(sp)
   18ebc:	e85a                	sd	s6,16(sp)
   18ebe:	e486                	sd	ra,72(sp)
   18ec0:	fc26                	sd	s1,56(sp)
   18ec2:	f84a                	sd	s2,48(sp)
   18ec4:	f052                	sd	s4,32(sp)
   18ec6:	ec56                	sd	s5,24(sp)
   18ec8:	8b2a                	mv	s6,a0
   18eca:	89ae                	mv	s3,a1
   18ecc:	8432                	mv	s0,a2
   18ece:	b3bfb0ef          	jal	ra,14a08 <__locale_mb_cur_max>
   18ed2:	4785                	li	a5,1
   18ed4:	00f51e63          	bne	a0,a5,18ef0 <__fputwc+0x3a>
   18ed8:	fff9879b          	addiw	a5,s3,-1
   18edc:	0fe00713          	li	a4,254
   18ee0:	00f76863          	bltu	a4,a5,18ef0 <__fputwc+0x3a>
   18ee4:	0ff9f713          	zext.b	a4,s3
   18ee8:	00e10423          	sb	a4,8(sp)
   18eec:	4905                	li	s2,1
   18eee:	a839                	j	18f0c <__fputwc+0x56>
   18ef0:	0a440693          	addi	a3,s0,164
   18ef4:	864e                	mv	a2,s3
   18ef6:	002c                	addi	a1,sp,8
   18ef8:	855a                	mv	a0,s6
   18efa:	0c3010ef          	jal	ra,1a7bc <_wcrtomb_r>
   18efe:	57fd                	li	a5,-1
   18f00:	892a                	mv	s2,a0
   18f02:	06f50563          	beq	a0,a5,18f6c <__fputwc+0xb6>
   18f06:	c125                	beqz	a0,18f66 <__fputwc+0xb0>
   18f08:	00814703          	lbu	a4,8(sp)
   18f0c:	4481                	li	s1,0
   18f0e:	5a7d                	li	s4,-1
   18f10:	4aa9                	li	s5,10
   18f12:	a831                	j	18f2e <__fputwc+0x78>
   18f14:	601c                	ld	a5,0(s0)
   18f16:	00178693          	addi	a3,a5,1
   18f1a:	e014                	sd	a3,0(s0)
   18f1c:	00e78023          	sb	a4,0(a5)
   18f20:	0485                	addi	s1,s1,1
   18f22:	003c                	addi	a5,sp,8
   18f24:	97a6                	add	a5,a5,s1
   18f26:	0524f063          	bgeu	s1,s2,18f66 <__fputwc+0xb0>
   18f2a:	0007c703          	lbu	a4,0(a5)
   18f2e:	445c                	lw	a5,12(s0)
   18f30:	37fd                	addiw	a5,a5,-1
   18f32:	c45c                	sw	a5,12(s0)
   18f34:	fe07d0e3          	bgez	a5,18f14 <__fputwc+0x5e>
   18f38:	5414                	lw	a3,40(s0)
   18f3a:	85ba                	mv	a1,a4
   18f3c:	8622                	mv	a2,s0
   18f3e:	855a                	mv	a0,s6
   18f40:	00d7c463          	blt	a5,a3,18f48 <__fputwc+0x92>
   18f44:	fd5718e3          	bne	a4,s5,18f14 <__fputwc+0x5e>
   18f48:	76e010ef          	jal	ra,1a6b6 <__swbuf_r>
   18f4c:	fd451ae3          	bne	a0,s4,18f20 <__fputwc+0x6a>
   18f50:	557d                	li	a0,-1
   18f52:	60a6                	ld	ra,72(sp)
   18f54:	6406                	ld	s0,64(sp)
   18f56:	74e2                	ld	s1,56(sp)
   18f58:	7942                	ld	s2,48(sp)
   18f5a:	79a2                	ld	s3,40(sp)
   18f5c:	7a02                	ld	s4,32(sp)
   18f5e:	6ae2                	ld	s5,24(sp)
   18f60:	6b42                	ld	s6,16(sp)
   18f62:	6161                	addi	sp,sp,80
   18f64:	8082                	ret
   18f66:	0009851b          	sext.w	a0,s3
   18f6a:	b7e5                	j	18f52 <__fputwc+0x9c>
   18f6c:	01045783          	lhu	a5,16(s0)
   18f70:	557d                	li	a0,-1
   18f72:	0407e793          	ori	a5,a5,64
   18f76:	00f41823          	sh	a5,16(s0)
   18f7a:	bfe1                	j	18f52 <__fputwc+0x9c>

0000000000018f7c <_fputwc_r>:
   18f7c:	01061783          	lh	a5,16(a2)
   18f80:	03279713          	slli	a4,a5,0x32
   18f84:	00074c63          	bltz	a4,18f9c <_fputwc_r+0x20>
   18f88:	0ac62703          	lw	a4,172(a2)
   18f8c:	6689                	lui	a3,0x2
   18f8e:	8fd5                	or	a5,a5,a3
   18f90:	6689                	lui	a3,0x2
   18f92:	8f55                	or	a4,a4,a3
   18f94:	00f61823          	sh	a5,16(a2)
   18f98:	0ae62623          	sw	a4,172(a2)
   18f9c:	f1bff06f          	j	18eb6 <__fputwc>

0000000000018fa0 <fputwc>:
   18fa0:	1101                	addi	sp,sp,-32
   18fa2:	e822                	sd	s0,16(sp)
   18fa4:	7581b403          	ld	s0,1880(gp) # 1f328 <_impure_ptr>
   18fa8:	ec06                	sd	ra,24(sp)
   18faa:	862e                	mv	a2,a1
   18fac:	85aa                	mv	a1,a0
   18fae:	c019                	beqz	s0,18fb4 <fputwc+0x14>
   18fb0:	483c                	lw	a5,80(s0)
   18fb2:	c79d                	beqz	a5,18fe0 <fputwc+0x40>
   18fb4:	01061783          	lh	a5,16(a2)
   18fb8:	03279713          	slli	a4,a5,0x32
   18fbc:	00074c63          	bltz	a4,18fd4 <fputwc+0x34>
   18fc0:	0ac62703          	lw	a4,172(a2)
   18fc4:	6689                	lui	a3,0x2
   18fc6:	8fd5                	or	a5,a5,a3
   18fc8:	6689                	lui	a3,0x2
   18fca:	8f55                	or	a4,a4,a3
   18fcc:	00f61823          	sh	a5,16(a2)
   18fd0:	0ae62623          	sw	a4,172(a2)
   18fd4:	8522                	mv	a0,s0
   18fd6:	6442                	ld	s0,16(sp)
   18fd8:	60e2                	ld	ra,24(sp)
   18fda:	6105                	addi	sp,sp,32
   18fdc:	edbff06f          	j	18eb6 <__fputwc>
   18fe0:	e02a                	sd	a0,0(sp)
   18fe2:	8522                	mv	a0,s0
   18fe4:	e432                	sd	a2,8(sp)
   18fe6:	ceaf90ef          	jal	ra,124d0 <__sinit>
   18fea:	6622                	ld	a2,8(sp)
   18fec:	6582                	ld	a1,0(sp)
   18fee:	b7d9                	j	18fb4 <fputwc+0x14>

0000000000018ff0 <_fstat_r>:
   18ff0:	1101                	addi	sp,sp,-32
   18ff2:	872e                	mv	a4,a1
   18ff4:	e822                	sd	s0,16(sp)
   18ff6:	e426                	sd	s1,8(sp)
   18ff8:	842a                	mv	s0,a0
   18ffa:	85b2                	mv	a1,a2
   18ffc:	853a                	mv	a0,a4
   18ffe:	ec06                	sd	ra,24(sp)
   19000:	7801a823          	sw	zero,1936(gp) # 1f360 <errno>
   19004:	4b3010ef          	jal	ra,1acb6 <_fstat>
   19008:	57fd                	li	a5,-1
   1900a:	00f50763          	beq	a0,a5,19018 <_fstat_r+0x28>
   1900e:	60e2                	ld	ra,24(sp)
   19010:	6442                	ld	s0,16(sp)
   19012:	64a2                	ld	s1,8(sp)
   19014:	6105                	addi	sp,sp,32
   19016:	8082                	ret
   19018:	7901a783          	lw	a5,1936(gp) # 1f360 <errno>
   1901c:	dbed                	beqz	a5,1900e <_fstat_r+0x1e>
   1901e:	60e2                	ld	ra,24(sp)
   19020:	c01c                	sw	a5,0(s0)
   19022:	6442                	ld	s0,16(sp)
   19024:	64a2                	ld	s1,8(sp)
   19026:	6105                	addi	sp,sp,32
   19028:	8082                	ret

000000000001902a <__sfvwrite_r>:
   1902a:	6a1c                	ld	a5,16(a2)
   1902c:	1a078b63          	beqz	a5,191e2 <__sfvwrite_r+0x1b8>
   19030:	0105d683          	lhu	a3,16(a1)
   19034:	711d                	addi	sp,sp,-96
   19036:	e8a2                	sd	s0,80(sp)
   19038:	f852                	sd	s4,48(sp)
   1903a:	f456                	sd	s5,40(sp)
   1903c:	ec86                	sd	ra,88(sp)
   1903e:	e4a6                	sd	s1,72(sp)
   19040:	e0ca                	sd	s2,64(sp)
   19042:	fc4e                	sd	s3,56(sp)
   19044:	f05a                	sd	s6,32(sp)
   19046:	ec5e                	sd	s7,24(sp)
   19048:	e862                	sd	s8,16(sp)
   1904a:	e466                	sd	s9,8(sp)
   1904c:	e06a                	sd	s10,0(sp)
   1904e:	0086f793          	andi	a5,a3,8
   19052:	8a32                	mv	s4,a2
   19054:	8aaa                	mv	s5,a0
   19056:	842e                	mv	s0,a1
   19058:	cfb9                	beqz	a5,190b6 <__sfvwrite_r+0x8c>
   1905a:	6d9c                	ld	a5,24(a1)
   1905c:	cfa9                	beqz	a5,190b6 <__sfvwrite_r+0x8c>
   1905e:	0026f793          	andi	a5,a3,2
   19062:	000a3903          	ld	s2,0(s4)
   19066:	c7ad                	beqz	a5,190d0 <__sfvwrite_r+0xa6>
   19068:	603c                	ld	a5,64(s0)
   1906a:	780c                	ld	a1,48(s0)
   1906c:	80000b37          	lui	s6,0x80000
   19070:	4981                	li	s3,0
   19072:	4481                	li	s1,0
   19074:	c00b4b13          	xori	s6,s6,-1024
   19078:	864e                	mv	a2,s3
   1907a:	8556                	mv	a0,s5
   1907c:	c49d                	beqz	s1,190aa <__sfvwrite_r+0x80>
   1907e:	86a6                	mv	a3,s1
   19080:	009b7363          	bgeu	s6,s1,19086 <__sfvwrite_r+0x5c>
   19084:	86da                	mv	a3,s6
   19086:	2681                	sext.w	a3,a3
   19088:	9782                	jalr	a5
   1908a:	14a05463          	blez	a0,191d2 <__sfvwrite_r+0x1a8>
   1908e:	010a3783          	ld	a5,16(s4)
   19092:	99aa                	add	s3,s3,a0
   19094:	8c89                	sub	s1,s1,a0
   19096:	8f89                	sub	a5,a5,a0
   19098:	00fa3823          	sd	a5,16(s4)
   1909c:	10078763          	beqz	a5,191aa <__sfvwrite_r+0x180>
   190a0:	603c                	ld	a5,64(s0)
   190a2:	780c                	ld	a1,48(s0)
   190a4:	864e                	mv	a2,s3
   190a6:	8556                	mv	a0,s5
   190a8:	f8f9                	bnez	s1,1907e <__sfvwrite_r+0x54>
   190aa:	00093983          	ld	s3,0(s2)
   190ae:	00893483          	ld	s1,8(s2)
   190b2:	0941                	addi	s2,s2,16
   190b4:	b7d1                	j	19078 <__sfvwrite_r+0x4e>
   190b6:	85a2                	mv	a1,s0
   190b8:	8556                	mv	a0,s5
   190ba:	deff80ef          	jal	ra,11ea8 <__swsetup_r>
   190be:	28051b63          	bnez	a0,19354 <__sfvwrite_r+0x32a>
   190c2:	01045683          	lhu	a3,16(s0)
   190c6:	000a3903          	ld	s2,0(s4)
   190ca:	0026f793          	andi	a5,a3,2
   190ce:	ffc9                	bnez	a5,19068 <__sfvwrite_r+0x3e>
   190d0:	0016f793          	andi	a5,a3,1
   190d4:	ebbd                	bnez	a5,1914a <__sfvwrite_r+0x120>
   190d6:	4444                	lw	s1,12(s0)
   190d8:	601c                	ld	a5,0(s0)
   190da:	80000b37          	lui	s6,0x80000
   190de:	ffeb4b93          	xori	s7,s6,-2
   190e2:	4c01                	li	s8,0
   190e4:	4981                	li	s3,0
   190e6:	fffb4b13          	not	s6,s6
   190ea:	853e                	mv	a0,a5
   190ec:	8ca6                	mv	s9,s1
   190ee:	04098863          	beqz	s3,1913e <__sfvwrite_r+0x114>
   190f2:	2006f713          	andi	a4,a3,512
   190f6:	12070a63          	beqz	a4,1922a <__sfvwrite_r+0x200>
   190fa:	8d26                	mv	s10,s1
   190fc:	1899f863          	bgeu	s3,s1,1928c <__sfvwrite_r+0x262>
   19100:	8cce                	mv	s9,s3
   19102:	8d4e                	mv	s10,s3
   19104:	866a                	mv	a2,s10
   19106:	85e2                	mv	a1,s8
   19108:	3aa000ef          	jal	ra,194b2 <memmove>
   1910c:	4458                	lw	a4,12(s0)
   1910e:	601c                	ld	a5,0(s0)
   19110:	84ce                	mv	s1,s3
   19112:	4197073b          	subw	a4,a4,s9
   19116:	9d3e                	add	s10,s10,a5
   19118:	c458                	sw	a4,12(s0)
   1911a:	01a43023          	sd	s10,0(s0)
   1911e:	4981                	li	s3,0
   19120:	010a3783          	ld	a5,16(s4)
   19124:	9c26                	add	s8,s8,s1
   19126:	8f85                	sub	a5,a5,s1
   19128:	00fa3823          	sd	a5,16(s4)
   1912c:	cfbd                	beqz	a5,191aa <__sfvwrite_r+0x180>
   1912e:	4444                	lw	s1,12(s0)
   19130:	601c                	ld	a5,0(s0)
   19132:	01045683          	lhu	a3,16(s0)
   19136:	8ca6                	mv	s9,s1
   19138:	853e                	mv	a0,a5
   1913a:	fa099ce3          	bnez	s3,190f2 <__sfvwrite_r+0xc8>
   1913e:	00093c03          	ld	s8,0(s2)
   19142:	00893983          	ld	s3,8(s2)
   19146:	0941                	addi	s2,s2,16
   19148:	b74d                	j	190ea <__sfvwrite_r+0xc0>
   1914a:	4b81                	li	s7,0
   1914c:	4501                	li	a0,0
   1914e:	4c81                	li	s9,0
   19150:	4c01                	li	s8,0
   19152:	080c0a63          	beqz	s8,191e6 <__sfvwrite_r+0x1bc>
   19156:	c145                	beqz	a0,191f6 <__sfvwrite_r+0x1cc>
   19158:	8b5e                	mv	s6,s7
   1915a:	017c7363          	bgeu	s8,s7,19160 <__sfvwrite_r+0x136>
   1915e:	8b62                	mv	s6,s8
   19160:	6008                	ld	a0,0(s0)
   19162:	6c18                	ld	a4,24(s0)
   19164:	445c                	lw	a5,12(s0)
   19166:	5014                	lw	a3,32(s0)
   19168:	84da                	mv	s1,s6
   1916a:	00a77663          	bgeu	a4,a0,19176 <__sfvwrite_r+0x14c>
   1916e:	00d789bb          	addw	s3,a5,a3
   19172:	0969cd63          	blt	s3,s6,1920c <__sfvwrite_r+0x1e2>
   19176:	18db4663          	blt	s6,a3,19302 <__sfvwrite_r+0x2d8>
   1917a:	603c                	ld	a5,64(s0)
   1917c:	780c                	ld	a1,48(s0)
   1917e:	8666                	mv	a2,s9
   19180:	8556                	mv	a0,s5
   19182:	9782                	jalr	a5
   19184:	84aa                	mv	s1,a0
   19186:	04a05663          	blez	a0,191d2 <__sfvwrite_r+0x1a8>
   1918a:	0005079b          	sext.w	a5,a0
   1918e:	40fb8bbb          	subw	s7,s7,a5
   19192:	4505                	li	a0,1
   19194:	020b8a63          	beqz	s7,191c8 <__sfvwrite_r+0x19e>
   19198:	010a3783          	ld	a5,16(s4)
   1919c:	9ca6                	add	s9,s9,s1
   1919e:	409c0c33          	sub	s8,s8,s1
   191a2:	8f85                	sub	a5,a5,s1
   191a4:	00fa3823          	sd	a5,16(s4)
   191a8:	f7cd                	bnez	a5,19152 <__sfvwrite_r+0x128>
   191aa:	4501                	li	a0,0
   191ac:	60e6                	ld	ra,88(sp)
   191ae:	6446                	ld	s0,80(sp)
   191b0:	64a6                	ld	s1,72(sp)
   191b2:	6906                	ld	s2,64(sp)
   191b4:	79e2                	ld	s3,56(sp)
   191b6:	7a42                	ld	s4,48(sp)
   191b8:	7aa2                	ld	s5,40(sp)
   191ba:	7b02                	ld	s6,32(sp)
   191bc:	6be2                	ld	s7,24(sp)
   191be:	6c42                	ld	s8,16(sp)
   191c0:	6ca2                	ld	s9,8(sp)
   191c2:	6d02                	ld	s10,0(sp)
   191c4:	6125                	addi	sp,sp,96
   191c6:	8082                	ret
   191c8:	85a2                	mv	a1,s0
   191ca:	8556                	mv	a0,s5
   191cc:	828f90ef          	jal	ra,121f4 <_fflush_r>
   191d0:	d561                	beqz	a0,19198 <__sfvwrite_r+0x16e>
   191d2:	01041783          	lh	a5,16(s0)
   191d6:	0407e793          	ori	a5,a5,64
   191da:	00f41823          	sh	a5,16(s0)
   191de:	557d                	li	a0,-1
   191e0:	b7f1                	j	191ac <__sfvwrite_r+0x182>
   191e2:	4501                	li	a0,0
   191e4:	8082                	ret
   191e6:	00893c03          	ld	s8,8(s2)
   191ea:	87ca                	mv	a5,s2
   191ec:	0941                	addi	s2,s2,16
   191ee:	fe0c0ce3          	beqz	s8,191e6 <__sfvwrite_r+0x1bc>
   191f2:	0007bc83          	ld	s9,0(a5)
   191f6:	8662                	mv	a2,s8
   191f8:	45a9                	li	a1,10
   191fa:	8566                	mv	a0,s9
   191fc:	85afc0ef          	jal	ra,15256 <memchr>
   19200:	14050163          	beqz	a0,19342 <__sfvwrite_r+0x318>
   19204:	0505                	addi	a0,a0,1
   19206:	41950bbb          	subw	s7,a0,s9
   1920a:	b7b9                	j	19158 <__sfvwrite_r+0x12e>
   1920c:	85e6                	mv	a1,s9
   1920e:	864e                	mv	a2,s3
   19210:	2a2000ef          	jal	ra,194b2 <memmove>
   19214:	601c                	ld	a5,0(s0)
   19216:	85a2                	mv	a1,s0
   19218:	8556                	mv	a0,s5
   1921a:	97ce                	add	a5,a5,s3
   1921c:	e01c                	sd	a5,0(s0)
   1921e:	fd7f80ef          	jal	ra,121f4 <_fflush_r>
   19222:	f945                	bnez	a0,191d2 <__sfvwrite_r+0x1a8>
   19224:	87ce                	mv	a5,s3
   19226:	84ce                	mv	s1,s3
   19228:	b79d                	j	1918e <__sfvwrite_r+0x164>
   1922a:	6c18                	ld	a4,24(s0)
   1922c:	02f76863          	bltu	a4,a5,1925c <__sfvwrite_r+0x232>
   19230:	5018                	lw	a4,32(s0)
   19232:	02e9e563          	bltu	s3,a4,1925c <__sfvwrite_r+0x232>
   19236:	86ce                	mv	a3,s3
   19238:	013bf363          	bgeu	s7,s3,1923e <__sfvwrite_r+0x214>
   1923c:	86da                	mv	a3,s6
   1923e:	02e6c6bb          	divw	a3,a3,a4
   19242:	603c                	ld	a5,64(s0)
   19244:	780c                	ld	a1,48(s0)
   19246:	8662                	mv	a2,s8
   19248:	8556                	mv	a0,s5
   1924a:	02e686bb          	mulw	a3,a3,a4
   1924e:	9782                	jalr	a5
   19250:	84aa                	mv	s1,a0
   19252:	f8a050e3          	blez	a0,191d2 <__sfvwrite_r+0x1a8>
   19256:	409989b3          	sub	s3,s3,s1
   1925a:	b5d9                	j	19120 <__sfvwrite_r+0xf6>
   1925c:	0099f363          	bgeu	s3,s1,19262 <__sfvwrite_r+0x238>
   19260:	84ce                	mv	s1,s3
   19262:	853e                	mv	a0,a5
   19264:	8626                	mv	a2,s1
   19266:	85e2                	mv	a1,s8
   19268:	24a000ef          	jal	ra,194b2 <memmove>
   1926c:	4458                	lw	a4,12(s0)
   1926e:	601c                	ld	a5,0(s0)
   19270:	409706bb          	subw	a3,a4,s1
   19274:	97a6                	add	a5,a5,s1
   19276:	c454                	sw	a3,12(s0)
   19278:	e01c                	sd	a5,0(s0)
   1927a:	fef1                	bnez	a3,19256 <__sfvwrite_r+0x22c>
   1927c:	85a2                	mv	a1,s0
   1927e:	8556                	mv	a0,s5
   19280:	f75f80ef          	jal	ra,121f4 <_fflush_r>
   19284:	f539                	bnez	a0,191d2 <__sfvwrite_r+0x1a8>
   19286:	409989b3          	sub	s3,s3,s1
   1928a:	bd59                	j	19120 <__sfvwrite_r+0xf6>
   1928c:	4806f713          	andi	a4,a3,1152
   19290:	e6070ae3          	beqz	a4,19104 <__sfvwrite_r+0xda>
   19294:	5010                	lw	a2,32(s0)
   19296:	6c0c                	ld	a1,24(s0)
   19298:	0016171b          	slliw	a4,a2,0x1
   1929c:	9f31                	addw	a4,a4,a2
   1929e:	8f8d                	sub	a5,a5,a1
   192a0:	01f7549b          	srliw	s1,a4,0x1f
   192a4:	00078d1b          	sext.w	s10,a5
   192a8:	9cb9                	addw	s1,s1,a4
   192aa:	001d0713          	addi	a4,s10,1
   192ae:	4014d49b          	sraiw	s1,s1,0x1
   192b2:	974e                	add	a4,a4,s3
   192b4:	00e4f663          	bgeu	s1,a4,192c0 <__sfvwrite_r+0x296>
   192b8:	0017871b          	addiw	a4,a5,1
   192bc:	013704bb          	addw	s1,a4,s3
   192c0:	4006f693          	andi	a3,a3,1024
   192c4:	cea9                	beqz	a3,1931e <__sfvwrite_r+0x2f4>
   192c6:	85a6                	mv	a1,s1
   192c8:	8556                	mv	a0,s5
   192ca:	92ffb0ef          	jal	ra,14bf8 <_malloc_r>
   192ce:	8caa                	mv	s9,a0
   192d0:	cd25                	beqz	a0,19348 <__sfvwrite_r+0x31e>
   192d2:	6c0c                	ld	a1,24(s0)
   192d4:	866a                	mv	a2,s10
   192d6:	0f4000ef          	jal	ra,193ca <memcpy>
   192da:	01045783          	lhu	a5,16(s0)
   192de:	b7f7f793          	andi	a5,a5,-1153
   192e2:	0807e793          	ori	a5,a5,128
   192e6:	00f41823          	sh	a5,16(s0)
   192ea:	01ac8533          	add	a0,s9,s10
   192ee:	41a487bb          	subw	a5,s1,s10
   192f2:	01943c23          	sd	s9,24(s0)
   192f6:	e008                	sd	a0,0(s0)
   192f8:	d004                	sw	s1,32(s0)
   192fa:	8cce                	mv	s9,s3
   192fc:	c45c                	sw	a5,12(s0)
   192fe:	8d4e                	mv	s10,s3
   19300:	b511                	j	19104 <__sfvwrite_r+0xda>
   19302:	865a                	mv	a2,s6
   19304:	85e6                	mv	a1,s9
   19306:	1ac000ef          	jal	ra,194b2 <memmove>
   1930a:	4454                	lw	a3,12(s0)
   1930c:	6018                	ld	a4,0(s0)
   1930e:	000b079b          	sext.w	a5,s6
   19312:	416686bb          	subw	a3,a3,s6
   19316:	975a                	add	a4,a4,s6
   19318:	c454                	sw	a3,12(s0)
   1931a:	e018                	sd	a4,0(s0)
   1931c:	bd8d                	j	1918e <__sfvwrite_r+0x164>
   1931e:	8626                	mv	a2,s1
   19320:	8556                	mv	a0,s5
   19322:	2a2000ef          	jal	ra,195c4 <_realloc_r>
   19326:	8caa                	mv	s9,a0
   19328:	f169                	bnez	a0,192ea <__sfvwrite_r+0x2c0>
   1932a:	6c0c                	ld	a1,24(s0)
   1932c:	8556                	mv	a0,s5
   1932e:	ad2f90ef          	jal	ra,12600 <_free_r>
   19332:	01041783          	lh	a5,16(s0)
   19336:	4731                	li	a4,12
   19338:	00eaa023          	sw	a4,0(s5)
   1933c:	f7f7f793          	andi	a5,a5,-129
   19340:	bd59                	j	191d6 <__sfvwrite_r+0x1ac>
   19342:	001c0b9b          	addiw	s7,s8,1
   19346:	bd09                	j	19158 <__sfvwrite_r+0x12e>
   19348:	4731                	li	a4,12
   1934a:	01041783          	lh	a5,16(s0)
   1934e:	00eaa023          	sw	a4,0(s5)
   19352:	b551                	j	191d6 <__sfvwrite_r+0x1ac>
   19354:	557d                	li	a0,-1
   19356:	bd99                	j	191ac <__sfvwrite_r+0x182>

0000000000019358 <_isatty_r>:
   19358:	1101                	addi	sp,sp,-32
   1935a:	e822                	sd	s0,16(sp)
   1935c:	e426                	sd	s1,8(sp)
   1935e:	842a                	mv	s0,a0
   19360:	852e                	mv	a0,a1
   19362:	ec06                	sd	ra,24(sp)
   19364:	7801a823          	sw	zero,1936(gp) # 1f360 <errno>
   19368:	193010ef          	jal	ra,1acfa <_isatty>
   1936c:	57fd                	li	a5,-1
   1936e:	00f50763          	beq	a0,a5,1937c <_isatty_r+0x24>
   19372:	60e2                	ld	ra,24(sp)
   19374:	6442                	ld	s0,16(sp)
   19376:	64a2                	ld	s1,8(sp)
   19378:	6105                	addi	sp,sp,32
   1937a:	8082                	ret
   1937c:	7901a783          	lw	a5,1936(gp) # 1f360 <errno>
   19380:	dbed                	beqz	a5,19372 <_isatty_r+0x1a>
   19382:	60e2                	ld	ra,24(sp)
   19384:	c01c                	sw	a5,0(s0)
   19386:	6442                	ld	s0,16(sp)
   19388:	64a2                	ld	s1,8(sp)
   1938a:	6105                	addi	sp,sp,32
   1938c:	8082                	ret

000000000001938e <_lseek_r>:
   1938e:	1101                	addi	sp,sp,-32
   19390:	872e                	mv	a4,a1
   19392:	e822                	sd	s0,16(sp)
   19394:	e426                	sd	s1,8(sp)
   19396:	85b2                	mv	a1,a2
   19398:	842a                	mv	s0,a0
   1939a:	8636                	mv	a2,a3
   1939c:	853a                	mv	a0,a4
   1939e:	ec06                	sd	ra,24(sp)
   193a0:	7801a823          	sw	zero,1936(gp) # 1f360 <errno>
   193a4:	191010ef          	jal	ra,1ad34 <_lseek>
   193a8:	57fd                	li	a5,-1
   193aa:	00f50763          	beq	a0,a5,193b8 <_lseek_r+0x2a>
   193ae:	60e2                	ld	ra,24(sp)
   193b0:	6442                	ld	s0,16(sp)
   193b2:	64a2                	ld	s1,8(sp)
   193b4:	6105                	addi	sp,sp,32
   193b6:	8082                	ret
   193b8:	7901a783          	lw	a5,1936(gp) # 1f360 <errno>
   193bc:	dbed                	beqz	a5,193ae <_lseek_r+0x20>
   193be:	60e2                	ld	ra,24(sp)
   193c0:	c01c                	sw	a5,0(s0)
   193c2:	6442                	ld	s0,16(sp)
   193c4:	64a2                	ld	s1,8(sp)
   193c6:	6105                	addi	sp,sp,32
   193c8:	8082                	ret

00000000000193ca <memcpy>:
   193ca:	00b547b3          	xor	a5,a0,a1
   193ce:	8b9d                	andi	a5,a5,7
   193d0:	00c508b3          	add	a7,a0,a2
   193d4:	eba1                	bnez	a5,19424 <memcpy+0x5a>
   193d6:	479d                	li	a5,7
   193d8:	04c7f663          	bgeu	a5,a2,19424 <memcpy+0x5a>
   193dc:	00757793          	andi	a5,a0,7
   193e0:	872a                	mv	a4,a0
   193e2:	e7cd                	bnez	a5,1948c <memcpy+0xc2>
   193e4:	ff88f613          	andi	a2,a7,-8
   193e8:	40e606b3          	sub	a3,a2,a4
   193ec:	04000793          	li	a5,64
   193f0:	04000293          	li	t0,64
   193f4:	04d7c463          	blt	a5,a3,1943c <memcpy+0x72>
   193f8:	86ae                	mv	a3,a1
   193fa:	87ba                	mv	a5,a4
   193fc:	02c77163          	bgeu	a4,a2,1941e <memcpy+0x54>
   19400:	0006b803          	ld	a6,0(a3) # 2000 <exit-0xe0e8>
   19404:	07a1                	addi	a5,a5,8
   19406:	06a1                	addi	a3,a3,8
   19408:	ff07bc23          	sd	a6,-8(a5)
   1940c:	fec7eae3          	bltu	a5,a2,19400 <memcpy+0x36>
   19410:	fff60793          	addi	a5,a2,-1
   19414:	8f99                	sub	a5,a5,a4
   19416:	9be1                	andi	a5,a5,-8
   19418:	07a1                	addi	a5,a5,8
   1941a:	973e                	add	a4,a4,a5
   1941c:	95be                	add	a1,a1,a5
   1941e:	01176663          	bltu	a4,a7,1942a <memcpy+0x60>
   19422:	8082                	ret
   19424:	872a                	mv	a4,a0
   19426:	ff157ee3          	bgeu	a0,a7,19422 <memcpy+0x58>
   1942a:	0005c783          	lbu	a5,0(a1)
   1942e:	0705                	addi	a4,a4,1
   19430:	0585                	addi	a1,a1,1
   19432:	fef70fa3          	sb	a5,-1(a4)
   19436:	ff176ae3          	bltu	a4,a7,1942a <memcpy+0x60>
   1943a:	8082                	ret
   1943c:	6594                	ld	a3,8(a1)
   1943e:	7d9c                	ld	a5,56(a1)
   19440:	0005bf83          	ld	t6,0(a1)
   19444:	0105bf03          	ld	t5,16(a1)
   19448:	0185be83          	ld	t4,24(a1)
   1944c:	0205be03          	ld	t3,32(a1)
   19450:	0285b303          	ld	t1,40(a1)
   19454:	0305b803          	ld	a6,48(a1)
   19458:	e714                	sd	a3,8(a4)
   1945a:	61b4                	ld	a3,64(a1)
   1945c:	01f73023          	sd	t6,0(a4)
   19460:	01e73823          	sd	t5,16(a4)
   19464:	01d73c23          	sd	t4,24(a4)
   19468:	03c73023          	sd	t3,32(a4)
   1946c:	02673423          	sd	t1,40(a4)
   19470:	03073823          	sd	a6,48(a4)
   19474:	ff1c                	sd	a5,56(a4)
   19476:	04870713          	addi	a4,a4,72
   1947a:	40e607b3          	sub	a5,a2,a4
   1947e:	fed73c23          	sd	a3,-8(a4)
   19482:	04858593          	addi	a1,a1,72
   19486:	faf2cbe3          	blt	t0,a5,1943c <memcpy+0x72>
   1948a:	b7bd                	j	193f8 <memcpy+0x2e>
   1948c:	0005c683          	lbu	a3,0(a1)
   19490:	0705                	addi	a4,a4,1
   19492:	00777793          	andi	a5,a4,7
   19496:	fed70fa3          	sb	a3,-1(a4)
   1949a:	0585                	addi	a1,a1,1
   1949c:	d7a1                	beqz	a5,193e4 <memcpy+0x1a>
   1949e:	0005c683          	lbu	a3,0(a1)
   194a2:	0705                	addi	a4,a4,1
   194a4:	00777793          	andi	a5,a4,7
   194a8:	fed70fa3          	sb	a3,-1(a4)
   194ac:	0585                	addi	a1,a1,1
   194ae:	fff9                	bnez	a5,1948c <memcpy+0xc2>
   194b0:	bf15                	j	193e4 <memcpy+0x1a>

00000000000194b2 <memmove>:
   194b2:	02a5f263          	bgeu	a1,a0,194d6 <memmove+0x24>
   194b6:	00c587b3          	add	a5,a1,a2
   194ba:	00f57e63          	bgeu	a0,a5,194d6 <memmove+0x24>
   194be:	00c50733          	add	a4,a0,a2
   194c2:	ca5d                	beqz	a2,19578 <memmove+0xc6>
   194c4:	fff7c683          	lbu	a3,-1(a5)
   194c8:	17fd                	addi	a5,a5,-1
   194ca:	177d                	addi	a4,a4,-1
   194cc:	00d70023          	sb	a3,0(a4)
   194d0:	fef59ae3          	bne	a1,a5,194c4 <memmove+0x12>
   194d4:	8082                	ret
   194d6:	47fd                	li	a5,31
   194d8:	02c7e163          	bltu	a5,a2,194fa <memmove+0x48>
   194dc:	87aa                	mv	a5,a0
   194de:	fff60693          	addi	a3,a2,-1
   194e2:	c245                	beqz	a2,19582 <memmove+0xd0>
   194e4:	0685                	addi	a3,a3,1
   194e6:	96be                	add	a3,a3,a5
   194e8:	0005c703          	lbu	a4,0(a1)
   194ec:	0785                	addi	a5,a5,1
   194ee:	0585                	addi	a1,a1,1
   194f0:	fee78fa3          	sb	a4,-1(a5)
   194f4:	fed79ae3          	bne	a5,a3,194e8 <memmove+0x36>
   194f8:	8082                	ret
   194fa:	00b567b3          	or	a5,a0,a1
   194fe:	8b9d                	andi	a5,a5,7
   19500:	efad                	bnez	a5,1957a <memmove+0xc8>
   19502:	fe060893          	addi	a7,a2,-32
   19506:	fe08f893          	andi	a7,a7,-32
   1950a:	02088893          	addi	a7,a7,32
   1950e:	01150833          	add	a6,a0,a7
   19512:	872e                	mv	a4,a1
   19514:	87aa                	mv	a5,a0
   19516:	6314                	ld	a3,0(a4)
   19518:	02070713          	addi	a4,a4,32
   1951c:	02078793          	addi	a5,a5,32
   19520:	fed7b023          	sd	a3,-32(a5)
   19524:	fe873683          	ld	a3,-24(a4)
   19528:	fed7b423          	sd	a3,-24(a5)
   1952c:	ff073683          	ld	a3,-16(a4)
   19530:	fed7b823          	sd	a3,-16(a5)
   19534:	ff873683          	ld	a3,-8(a4)
   19538:	fed7bc23          	sd	a3,-8(a5)
   1953c:	fcf81de3          	bne	a6,a5,19516 <memmove+0x64>
   19540:	01867713          	andi	a4,a2,24
   19544:	95c6                	add	a1,a1,a7
   19546:	01f67813          	andi	a6,a2,31
   1954a:	cf0d                	beqz	a4,19584 <memmove+0xd2>
   1954c:	872e                	mv	a4,a1
   1954e:	88be                	mv	a7,a5
   19550:	4e1d                	li	t3,7
   19552:	00073303          	ld	t1,0(a4)
   19556:	0721                	addi	a4,a4,8
   19558:	40e806b3          	sub	a3,a6,a4
   1955c:	0068b023          	sd	t1,0(a7)
   19560:	96ae                	add	a3,a3,a1
   19562:	08a1                	addi	a7,a7,8
   19564:	fede67e3          	bltu	t3,a3,19552 <memmove+0xa0>
   19568:	ff880713          	addi	a4,a6,-8
   1956c:	9b61                	andi	a4,a4,-8
   1956e:	0721                	addi	a4,a4,8
   19570:	8a1d                	andi	a2,a2,7
   19572:	97ba                	add	a5,a5,a4
   19574:	95ba                	add	a1,a1,a4
   19576:	b7a5                	j	194de <memmove+0x2c>
   19578:	8082                	ret
   1957a:	fff60693          	addi	a3,a2,-1
   1957e:	87aa                	mv	a5,a0
   19580:	b795                	j	194e4 <memmove+0x32>
   19582:	8082                	ret
   19584:	8642                	mv	a2,a6
   19586:	bfa1                	j	194de <memmove+0x2c>

0000000000019588 <_read_r>:
   19588:	1101                	addi	sp,sp,-32
   1958a:	872e                	mv	a4,a1
   1958c:	e822                	sd	s0,16(sp)
   1958e:	e426                	sd	s1,8(sp)
   19590:	85b2                	mv	a1,a2
   19592:	842a                	mv	s0,a0
   19594:	8636                	mv	a2,a3
   19596:	853a                	mv	a0,a4
   19598:	ec06                	sd	ra,24(sp)
   1959a:	7801a823          	sw	zero,1936(gp) # 1f360 <errno>
   1959e:	7c2010ef          	jal	ra,1ad60 <_read>
   195a2:	57fd                	li	a5,-1
   195a4:	00f50763          	beq	a0,a5,195b2 <_read_r+0x2a>
   195a8:	60e2                	ld	ra,24(sp)
   195aa:	6442                	ld	s0,16(sp)
   195ac:	64a2                	ld	s1,8(sp)
   195ae:	6105                	addi	sp,sp,32
   195b0:	8082                	ret
   195b2:	7901a783          	lw	a5,1936(gp) # 1f360 <errno>
   195b6:	dbed                	beqz	a5,195a8 <_read_r+0x20>
   195b8:	60e2                	ld	ra,24(sp)
   195ba:	c01c                	sw	a5,0(s0)
   195bc:	6442                	ld	s0,16(sp)
   195be:	64a2                	ld	s1,8(sp)
   195c0:	6105                	addi	sp,sp,32
   195c2:	8082                	ret

00000000000195c4 <_realloc_r>:
   195c4:	715d                	addi	sp,sp,-80
   195c6:	f84a                	sd	s2,48(sp)
   195c8:	e486                	sd	ra,72(sp)
   195ca:	e0a2                	sd	s0,64(sp)
   195cc:	fc26                	sd	s1,56(sp)
   195ce:	f44e                	sd	s3,40(sp)
   195d0:	f052                	sd	s4,32(sp)
   195d2:	ec56                	sd	s5,24(sp)
   195d4:	e85a                	sd	s6,16(sp)
   195d6:	e45e                	sd	s7,8(sp)
   195d8:	e062                	sd	s8,0(sp)
   195da:	8932                	mv	s2,a2
   195dc:	14058863          	beqz	a1,1972c <_realloc_r+0x168>
   195e0:	842e                	mv	s0,a1
   195e2:	8a2a                	mv	s4,a0
   195e4:	d01fb0ef          	jal	ra,152e4 <__malloc_lock>
   195e8:	ff843783          	ld	a5,-8(s0)
   195ec:	01790493          	addi	s1,s2,23
   195f0:	02e00713          	li	a4,46
   195f4:	ff040a93          	addi	s5,s0,-16
   195f8:	ffc7f993          	andi	s3,a5,-4
   195fc:	0a977d63          	bgeu	a4,s1,196b6 <_realloc_r+0xf2>
   19600:	80000737          	lui	a4,0x80000
   19604:	98c1                	andi	s1,s1,-16
   19606:	fff74713          	not	a4,a4
   1960a:	0a976a63          	bltu	a4,s1,196be <_realloc_r+0xfa>
   1960e:	0b24e863          	bltu	s1,s2,196be <_realloc_r+0xfa>
   19612:	0c99dc63          	bge	s3,s1,196ea <_realloc_r+0x126>
   19616:	0001f737          	lui	a4,0x1f
   1961a:	ad870c13          	addi	s8,a4,-1320 # 1ead8 <__malloc_av_>
   1961e:	010c3603          	ld	a2,16(s8)
   19622:	013a86b3          	add	a3,s5,s3
   19626:	6698                	ld	a4,8(a3)
   19628:	14d60163          	beq	a2,a3,1976a <_realloc_r+0x1a6>
   1962c:	ffe77613          	andi	a2,a4,-2
   19630:	9636                	add	a2,a2,a3
   19632:	6610                	ld	a2,8(a2)
   19634:	8a05                	andi	a2,a2,1
   19636:	e26d                	bnez	a2,19718 <_realloc_r+0x154>
   19638:	9b71                	andi	a4,a4,-4
   1963a:	00e98633          	add	a2,s3,a4
   1963e:	0a965163          	bge	a2,s1,196e0 <_realloc_r+0x11c>
   19642:	8b85                	andi	a5,a5,1
   19644:	e38d                	bnez	a5,19666 <_realloc_r+0xa2>
   19646:	ff043b83          	ld	s7,-16(s0)
   1964a:	417a8bb3          	sub	s7,s5,s7
   1964e:	008bb783          	ld	a5,8(s7)
   19652:	9bf1                	andi	a5,a5,-4
   19654:	973e                	add	a4,a4,a5
   19656:	01370b33          	add	s6,a4,s3
   1965a:	269b5463          	bge	s6,s1,198c2 <_realloc_r+0x2fe>
   1965e:	00f98b33          	add	s6,s3,a5
   19662:	1e9b5963          	bge	s6,s1,19854 <_realloc_r+0x290>
   19666:	85ca                	mv	a1,s2
   19668:	8552                	mv	a0,s4
   1966a:	d8efb0ef          	jal	ra,14bf8 <_malloc_r>
   1966e:	892a                	mv	s2,a0
   19670:	cd1d                	beqz	a0,196ae <_realloc_r+0xea>
   19672:	ff843783          	ld	a5,-8(s0)
   19676:	ff050713          	addi	a4,a0,-16
   1967a:	9bf9                	andi	a5,a5,-2
   1967c:	97d6                	add	a5,a5,s5
   1967e:	1ce78663          	beq	a5,a4,1984a <_realloc_r+0x286>
   19682:	ff898613          	addi	a2,s3,-8
   19686:	04800793          	li	a5,72
   1968a:	22c7e863          	bltu	a5,a2,198ba <_realloc_r+0x2f6>
   1968e:	02700713          	li	a4,39
   19692:	16c76b63          	bltu	a4,a2,19808 <_realloc_r+0x244>
   19696:	87aa                	mv	a5,a0
   19698:	8722                	mv	a4,s0
   1969a:	6314                	ld	a3,0(a4)
   1969c:	e394                	sd	a3,0(a5)
   1969e:	6714                	ld	a3,8(a4)
   196a0:	e794                	sd	a3,8(a5)
   196a2:	6b18                	ld	a4,16(a4)
   196a4:	eb98                	sd	a4,16(a5)
   196a6:	85a2                	mv	a1,s0
   196a8:	8552                	mv	a0,s4
   196aa:	f57f80ef          	jal	ra,12600 <_free_r>
   196ae:	8552                	mv	a0,s4
   196b0:	c37fb0ef          	jal	ra,152e6 <__malloc_unlock>
   196b4:	a809                	j	196c6 <_realloc_r+0x102>
   196b6:	02000493          	li	s1,32
   196ba:	f524fce3          	bgeu	s1,s2,19612 <_realloc_r+0x4e>
   196be:	47b1                	li	a5,12
   196c0:	00fa2023          	sw	a5,0(s4)
   196c4:	4901                	li	s2,0
   196c6:	60a6                	ld	ra,72(sp)
   196c8:	6406                	ld	s0,64(sp)
   196ca:	74e2                	ld	s1,56(sp)
   196cc:	79a2                	ld	s3,40(sp)
   196ce:	7a02                	ld	s4,32(sp)
   196d0:	6ae2                	ld	s5,24(sp)
   196d2:	6b42                	ld	s6,16(sp)
   196d4:	6ba2                	ld	s7,8(sp)
   196d6:	6c02                	ld	s8,0(sp)
   196d8:	854a                	mv	a0,s2
   196da:	7942                	ld	s2,48(sp)
   196dc:	6161                	addi	sp,sp,80
   196de:	8082                	ret
   196e0:	6e9c                	ld	a5,24(a3)
   196e2:	6a98                	ld	a4,16(a3)
   196e4:	89b2                	mv	s3,a2
   196e6:	ef1c                	sd	a5,24(a4)
   196e8:	eb98                	sd	a4,16(a5)
   196ea:	008ab783          	ld	a5,8(s5)
   196ee:	409986b3          	sub	a3,s3,s1
   196f2:	467d                	li	a2,31
   196f4:	8b85                	andi	a5,a5,1
   196f6:	013a8733          	add	a4,s5,s3
   196fa:	04d66763          	bltu	a2,a3,19748 <_realloc_r+0x184>
   196fe:	00f9e7b3          	or	a5,s3,a5
   19702:	00fab423          	sd	a5,8(s5)
   19706:	671c                	ld	a5,8(a4)
   19708:	0017e793          	ori	a5,a5,1
   1970c:	e71c                	sd	a5,8(a4)
   1970e:	8552                	mv	a0,s4
   19710:	bd7fb0ef          	jal	ra,152e6 <__malloc_unlock>
   19714:	8922                	mv	s2,s0
   19716:	bf45                	j	196c6 <_realloc_r+0x102>
   19718:	8b85                	andi	a5,a5,1
   1971a:	f7b1                	bnez	a5,19666 <_realloc_r+0xa2>
   1971c:	ff043b83          	ld	s7,-16(s0)
   19720:	417a8bb3          	sub	s7,s5,s7
   19724:	008bb783          	ld	a5,8(s7)
   19728:	9bf1                	andi	a5,a5,-4
   1972a:	bf15                	j	1965e <_realloc_r+0x9a>
   1972c:	6406                	ld	s0,64(sp)
   1972e:	60a6                	ld	ra,72(sp)
   19730:	74e2                	ld	s1,56(sp)
   19732:	7942                	ld	s2,48(sp)
   19734:	79a2                	ld	s3,40(sp)
   19736:	7a02                	ld	s4,32(sp)
   19738:	6ae2                	ld	s5,24(sp)
   1973a:	6b42                	ld	s6,16(sp)
   1973c:	6ba2                	ld	s7,8(sp)
   1973e:	6c02                	ld	s8,0(sp)
   19740:	85b2                	mv	a1,a2
   19742:	6161                	addi	sp,sp,80
   19744:	cb4fb06f          	j	14bf8 <_malloc_r>
   19748:	8fc5                	or	a5,a5,s1
   1974a:	00fab423          	sd	a5,8(s5)
   1974e:	009a85b3          	add	a1,s5,s1
   19752:	0016e693          	ori	a3,a3,1
   19756:	e594                	sd	a3,8(a1)
   19758:	671c                	ld	a5,8(a4)
   1975a:	05c1                	addi	a1,a1,16
   1975c:	8552                	mv	a0,s4
   1975e:	0017e793          	ori	a5,a5,1
   19762:	e71c                	sd	a5,8(a4)
   19764:	e9df80ef          	jal	ra,12600 <_free_r>
   19768:	b75d                	j	1970e <_realloc_r+0x14a>
   1976a:	9b71                	andi	a4,a4,-4
   1976c:	00e986b3          	add	a3,s3,a4
   19770:	02048613          	addi	a2,s1,32
   19774:	0ac6d763          	bge	a3,a2,19822 <_realloc_r+0x25e>
   19778:	8b85                	andi	a5,a5,1
   1977a:	ee0796e3          	bnez	a5,19666 <_realloc_r+0xa2>
   1977e:	ff043b83          	ld	s7,-16(s0)
   19782:	417a8bb3          	sub	s7,s5,s7
   19786:	008bb783          	ld	a5,8(s7)
   1978a:	9bf1                	andi	a5,a5,-4
   1978c:	973e                	add	a4,a4,a5
   1978e:	01370b33          	add	s6,a4,s3
   19792:	eccb46e3          	blt	s6,a2,1965e <_realloc_r+0x9a>
   19796:	018bb783          	ld	a5,24(s7)
   1979a:	010bb703          	ld	a4,16(s7)
   1979e:	ff898613          	addi	a2,s3,-8
   197a2:	04800693          	li	a3,72
   197a6:	ef1c                	sd	a5,24(a4)
   197a8:	eb98                	sd	a4,16(a5)
   197aa:	010b8913          	addi	s2,s7,16
   197ae:	1cc6e163          	bltu	a3,a2,19970 <_realloc_r+0x3ac>
   197b2:	02700713          	li	a4,39
   197b6:	87ca                	mv	a5,s2
   197b8:	00c77f63          	bgeu	a4,a2,197d6 <_realloc_r+0x212>
   197bc:	6018                	ld	a4,0(s0)
   197be:	03700793          	li	a5,55
   197c2:	00ebb823          	sd	a4,16(s7)
   197c6:	6418                	ld	a4,8(s0)
   197c8:	00ebbc23          	sd	a4,24(s7)
   197cc:	1ac7e763          	bltu	a5,a2,1997a <_realloc_r+0x3b6>
   197d0:	0441                	addi	s0,s0,16
   197d2:	020b8793          	addi	a5,s7,32
   197d6:	6018                	ld	a4,0(s0)
   197d8:	e398                	sd	a4,0(a5)
   197da:	6418                	ld	a4,8(s0)
   197dc:	e798                	sd	a4,8(a5)
   197de:	6818                	ld	a4,16(s0)
   197e0:	eb98                	sd	a4,16(a5)
   197e2:	009b8733          	add	a4,s7,s1
   197e6:	409b07b3          	sub	a5,s6,s1
   197ea:	00ec3823          	sd	a4,16(s8)
   197ee:	0017e793          	ori	a5,a5,1
   197f2:	e71c                	sd	a5,8(a4)
   197f4:	008bb783          	ld	a5,8(s7)
   197f8:	8552                	mv	a0,s4
   197fa:	8b85                	andi	a5,a5,1
   197fc:	8fc5                	or	a5,a5,s1
   197fe:	00fbb423          	sd	a5,8(s7)
   19802:	ae5fb0ef          	jal	ra,152e6 <__malloc_unlock>
   19806:	b5c1                	j	196c6 <_realloc_r+0x102>
   19808:	6014                	ld	a3,0(s0)
   1980a:	03700713          	li	a4,55
   1980e:	e114                	sd	a3,0(a0)
   19810:	6414                	ld	a3,8(s0)
   19812:	e514                	sd	a3,8(a0)
   19814:	12c76663          	bltu	a4,a2,19940 <_realloc_r+0x37c>
   19818:	01040713          	addi	a4,s0,16
   1981c:	01050793          	addi	a5,a0,16
   19820:	bdad                	j	1969a <_realloc_r+0xd6>
   19822:	9aa6                	add	s5,s5,s1
   19824:	409687b3          	sub	a5,a3,s1
   19828:	015c3823          	sd	s5,16(s8)
   1982c:	0017e793          	ori	a5,a5,1
   19830:	00fab423          	sd	a5,8(s5)
   19834:	ff843783          	ld	a5,-8(s0)
   19838:	8552                	mv	a0,s4
   1983a:	8922                	mv	s2,s0
   1983c:	8b85                	andi	a5,a5,1
   1983e:	8fc5                	or	a5,a5,s1
   19840:	fef43c23          	sd	a5,-8(s0)
   19844:	aa3fb0ef          	jal	ra,152e6 <__malloc_unlock>
   19848:	bdbd                	j	196c6 <_realloc_r+0x102>
   1984a:	ff853783          	ld	a5,-8(a0)
   1984e:	9bf1                	andi	a5,a5,-4
   19850:	99be                	add	s3,s3,a5
   19852:	bd61                	j	196ea <_realloc_r+0x126>
   19854:	018bb783          	ld	a5,24(s7)
   19858:	010bb703          	ld	a4,16(s7)
   1985c:	ff898613          	addi	a2,s3,-8
   19860:	04800693          	li	a3,72
   19864:	ef1c                	sd	a5,24(a4)
   19866:	eb98                	sd	a4,16(a5)
   19868:	010b8913          	addi	s2,s7,16
   1986c:	0cc6e263          	bltu	a3,a2,19930 <_realloc_r+0x36c>
   19870:	02700713          	li	a4,39
   19874:	87ca                	mv	a5,s2
   19876:	02c77863          	bgeu	a4,a2,198a6 <_realloc_r+0x2e2>
   1987a:	6018                	ld	a4,0(s0)
   1987c:	03700793          	li	a5,55
   19880:	00ebb823          	sd	a4,16(s7)
   19884:	6418                	ld	a4,8(s0)
   19886:	00ebbc23          	sd	a4,24(s7)
   1988a:	0cc7f663          	bgeu	a5,a2,19956 <_realloc_r+0x392>
   1988e:	681c                	ld	a5,16(s0)
   19890:	02fbb023          	sd	a5,32(s7)
   19894:	6c1c                	ld	a5,24(s0)
   19896:	02fbb423          	sd	a5,40(s7)
   1989a:	06d60f63          	beq	a2,a3,19918 <_realloc_r+0x354>
   1989e:	02040413          	addi	s0,s0,32
   198a2:	030b8793          	addi	a5,s7,48
   198a6:	6018                	ld	a4,0(s0)
   198a8:	89da                	mv	s3,s6
   198aa:	8ade                	mv	s5,s7
   198ac:	e398                	sd	a4,0(a5)
   198ae:	6418                	ld	a4,8(s0)
   198b0:	e798                	sd	a4,8(a5)
   198b2:	6818                	ld	a4,16(s0)
   198b4:	844a                	mv	s0,s2
   198b6:	eb98                	sd	a4,16(a5)
   198b8:	bd0d                	j	196ea <_realloc_r+0x126>
   198ba:	85a2                	mv	a1,s0
   198bc:	bf7ff0ef          	jal	ra,194b2 <memmove>
   198c0:	b3dd                	j	196a6 <_realloc_r+0xe2>
   198c2:	6e9c                	ld	a5,24(a3)
   198c4:	6a98                	ld	a4,16(a3)
   198c6:	ff898613          	addi	a2,s3,-8
   198ca:	04800693          	li	a3,72
   198ce:	ef1c                	sd	a5,24(a4)
   198d0:	eb98                	sd	a4,16(a5)
   198d2:	010bb703          	ld	a4,16(s7)
   198d6:	018bb783          	ld	a5,24(s7)
   198da:	010b8913          	addi	s2,s7,16
   198de:	ef1c                	sd	a5,24(a4)
   198e0:	eb98                	sd	a4,16(a5)
   198e2:	04c6e763          	bltu	a3,a2,19930 <_realloc_r+0x36c>
   198e6:	02700713          	li	a4,39
   198ea:	87ca                	mv	a5,s2
   198ec:	fac77de3          	bgeu	a4,a2,198a6 <_realloc_r+0x2e2>
   198f0:	6018                	ld	a4,0(s0)
   198f2:	03700793          	li	a5,55
   198f6:	00ebb823          	sd	a4,16(s7)
   198fa:	6418                	ld	a4,8(s0)
   198fc:	00ebbc23          	sd	a4,24(s7)
   19900:	04c7fb63          	bgeu	a5,a2,19956 <_realloc_r+0x392>
   19904:	6818                	ld	a4,16(s0)
   19906:	04800793          	li	a5,72
   1990a:	02ebb023          	sd	a4,32(s7)
   1990e:	6c18                	ld	a4,24(s0)
   19910:	02ebb423          	sd	a4,40(s7)
   19914:	f8f615e3          	bne	a2,a5,1989e <_realloc_r+0x2da>
   19918:	7018                	ld	a4,32(s0)
   1991a:	040b8793          	addi	a5,s7,64
   1991e:	03040413          	addi	s0,s0,48
   19922:	02ebb823          	sd	a4,48(s7)
   19926:	ff843703          	ld	a4,-8(s0)
   1992a:	02ebbc23          	sd	a4,56(s7)
   1992e:	bfa5                	j	198a6 <_realloc_r+0x2e2>
   19930:	85a2                	mv	a1,s0
   19932:	854a                	mv	a0,s2
   19934:	b7fff0ef          	jal	ra,194b2 <memmove>
   19938:	844a                	mv	s0,s2
   1993a:	89da                	mv	s3,s6
   1993c:	8ade                	mv	s5,s7
   1993e:	b375                	j	196ea <_realloc_r+0x126>
   19940:	6818                	ld	a4,16(s0)
   19942:	e918                	sd	a4,16(a0)
   19944:	6c18                	ld	a4,24(s0)
   19946:	ed18                	sd	a4,24(a0)
   19948:	00f60b63          	beq	a2,a5,1995e <_realloc_r+0x39a>
   1994c:	02040713          	addi	a4,s0,32
   19950:	02050793          	addi	a5,a0,32
   19954:	b399                	j	1969a <_realloc_r+0xd6>
   19956:	0441                	addi	s0,s0,16
   19958:	020b8793          	addi	a5,s7,32
   1995c:	b7a9                	j	198a6 <_realloc_r+0x2e2>
   1995e:	7014                	ld	a3,32(s0)
   19960:	03040713          	addi	a4,s0,48
   19964:	03050793          	addi	a5,a0,48
   19968:	f114                	sd	a3,32(a0)
   1996a:	7414                	ld	a3,40(s0)
   1996c:	f514                	sd	a3,40(a0)
   1996e:	b335                	j	1969a <_realloc_r+0xd6>
   19970:	85a2                	mv	a1,s0
   19972:	854a                	mv	a0,s2
   19974:	b3fff0ef          	jal	ra,194b2 <memmove>
   19978:	b5ad                	j	197e2 <_realloc_r+0x21e>
   1997a:	681c                	ld	a5,16(s0)
   1997c:	02fbb023          	sd	a5,32(s7)
   19980:	6c1c                	ld	a5,24(s0)
   19982:	02fbb423          	sd	a5,40(s7)
   19986:	00d60763          	beq	a2,a3,19994 <_realloc_r+0x3d0>
   1998a:	02040413          	addi	s0,s0,32
   1998e:	030b8793          	addi	a5,s7,48
   19992:	b591                	j	197d6 <_realloc_r+0x212>
   19994:	7018                	ld	a4,32(s0)
   19996:	040b8793          	addi	a5,s7,64
   1999a:	03040413          	addi	s0,s0,48
   1999e:	02ebb823          	sd	a4,48(s7)
   199a2:	ff843703          	ld	a4,-8(s0)
   199a6:	02ebbc23          	sd	a4,56(s7)
   199aa:	b535                	j	197d6 <_realloc_r+0x212>

00000000000199ac <cleanup_glue>:
   199ac:	7179                	addi	sp,sp,-48
   199ae:	e84a                	sd	s2,16(sp)
   199b0:	0005b903          	ld	s2,0(a1)
   199b4:	f022                	sd	s0,32(sp)
   199b6:	ec26                	sd	s1,24(sp)
   199b8:	f406                	sd	ra,40(sp)
   199ba:	e44e                	sd	s3,8(sp)
   199bc:	e052                	sd	s4,0(sp)
   199be:	842e                	mv	s0,a1
   199c0:	84aa                	mv	s1,a0
   199c2:	02090b63          	beqz	s2,199f8 <cleanup_glue+0x4c>
   199c6:	00093983          	ld	s3,0(s2)
   199ca:	02098363          	beqz	s3,199f0 <cleanup_glue+0x44>
   199ce:	0009ba03          	ld	s4,0(s3)
   199d2:	000a0b63          	beqz	s4,199e8 <cleanup_glue+0x3c>
   199d6:	000a3583          	ld	a1,0(s4)
   199da:	c199                	beqz	a1,199e0 <cleanup_glue+0x34>
   199dc:	fd1ff0ef          	jal	ra,199ac <cleanup_glue>
   199e0:	85d2                	mv	a1,s4
   199e2:	8526                	mv	a0,s1
   199e4:	c1df80ef          	jal	ra,12600 <_free_r>
   199e8:	85ce                	mv	a1,s3
   199ea:	8526                	mv	a0,s1
   199ec:	c15f80ef          	jal	ra,12600 <_free_r>
   199f0:	85ca                	mv	a1,s2
   199f2:	8526                	mv	a0,s1
   199f4:	c0df80ef          	jal	ra,12600 <_free_r>
   199f8:	85a2                	mv	a1,s0
   199fa:	7402                	ld	s0,32(sp)
   199fc:	70a2                	ld	ra,40(sp)
   199fe:	6942                	ld	s2,16(sp)
   19a00:	69a2                	ld	s3,8(sp)
   19a02:	6a02                	ld	s4,0(sp)
   19a04:	8526                	mv	a0,s1
   19a06:	64e2                	ld	s1,24(sp)
   19a08:	6145                	addi	sp,sp,48
   19a0a:	bf7f806f          	j	12600 <_free_r>

0000000000019a0e <_reclaim_reent>:
   19a0e:	7581b783          	ld	a5,1880(gp) # 1f328 <_impure_ptr>
   19a12:	0aa78563          	beq	a5,a0,19abc <_reclaim_reent+0xae>
   19a16:	7d2c                	ld	a1,120(a0)
   19a18:	7179                	addi	sp,sp,-48
   19a1a:	ec26                	sd	s1,24(sp)
   19a1c:	f406                	sd	ra,40(sp)
   19a1e:	f022                	sd	s0,32(sp)
   19a20:	e84a                	sd	s2,16(sp)
   19a22:	e44e                	sd	s3,8(sp)
   19a24:	84aa                	mv	s1,a0
   19a26:	c58d                	beqz	a1,19a50 <_reclaim_reent+0x42>
   19a28:	4901                	li	s2,0
   19a2a:	20000993          	li	s3,512
   19a2e:	012587b3          	add	a5,a1,s2
   19a32:	6380                	ld	s0,0(a5)
   19a34:	c801                	beqz	s0,19a44 <_reclaim_reent+0x36>
   19a36:	85a2                	mv	a1,s0
   19a38:	6000                	ld	s0,0(s0)
   19a3a:	8526                	mv	a0,s1
   19a3c:	bc5f80ef          	jal	ra,12600 <_free_r>
   19a40:	f87d                	bnez	s0,19a36 <_reclaim_reent+0x28>
   19a42:	7cac                	ld	a1,120(s1)
   19a44:	0921                	addi	s2,s2,8
   19a46:	ff3914e3          	bne	s2,s3,19a2e <_reclaim_reent+0x20>
   19a4a:	8526                	mv	a0,s1
   19a4c:	bb5f80ef          	jal	ra,12600 <_free_r>
   19a50:	70ac                	ld	a1,96(s1)
   19a52:	c581                	beqz	a1,19a5a <_reclaim_reent+0x4c>
   19a54:	8526                	mv	a0,s1
   19a56:	babf80ef          	jal	ra,12600 <_free_r>
   19a5a:	1f84b403          	ld	s0,504(s1)
   19a5e:	cc01                	beqz	s0,19a76 <_reclaim_reent+0x68>
   19a60:	20048913          	addi	s2,s1,512
   19a64:	01240963          	beq	s0,s2,19a76 <_reclaim_reent+0x68>
   19a68:	85a2                	mv	a1,s0
   19a6a:	6000                	ld	s0,0(s0)
   19a6c:	8526                	mv	a0,s1
   19a6e:	b93f80ef          	jal	ra,12600 <_free_r>
   19a72:	fe891be3          	bne	s2,s0,19a68 <_reclaim_reent+0x5a>
   19a76:	64cc                	ld	a1,136(s1)
   19a78:	c581                	beqz	a1,19a80 <_reclaim_reent+0x72>
   19a7a:	8526                	mv	a0,s1
   19a7c:	b85f80ef          	jal	ra,12600 <_free_r>
   19a80:	48bc                	lw	a5,80(s1)
   19a82:	c795                	beqz	a5,19aae <_reclaim_reent+0xa0>
   19a84:	6cbc                	ld	a5,88(s1)
   19a86:	8526                	mv	a0,s1
   19a88:	9782                	jalr	a5
   19a8a:	5204b403          	ld	s0,1312(s1)
   19a8e:	c005                	beqz	s0,19aae <_reclaim_reent+0xa0>
   19a90:	600c                	ld	a1,0(s0)
   19a92:	c581                	beqz	a1,19a9a <_reclaim_reent+0x8c>
   19a94:	8526                	mv	a0,s1
   19a96:	f17ff0ef          	jal	ra,199ac <cleanup_glue>
   19a9a:	85a2                	mv	a1,s0
   19a9c:	7402                	ld	s0,32(sp)
   19a9e:	70a2                	ld	ra,40(sp)
   19aa0:	6942                	ld	s2,16(sp)
   19aa2:	69a2                	ld	s3,8(sp)
   19aa4:	8526                	mv	a0,s1
   19aa6:	64e2                	ld	s1,24(sp)
   19aa8:	6145                	addi	sp,sp,48
   19aaa:	b57f806f          	j	12600 <_free_r>
   19aae:	70a2                	ld	ra,40(sp)
   19ab0:	7402                	ld	s0,32(sp)
   19ab2:	64e2                	ld	s1,24(sp)
   19ab4:	6942                	ld	s2,16(sp)
   19ab6:	69a2                	ld	s3,8(sp)
   19ab8:	6145                	addi	sp,sp,48
   19aba:	8082                	ret
   19abc:	8082                	ret

0000000000019abe <__ssprint_r>:
   19abe:	6a1c                	ld	a5,16(a2)
   19ac0:	715d                	addi	sp,sp,-80
   19ac2:	f44e                	sd	s3,40(sp)
   19ac4:	ec56                	sd	s5,24(sp)
   19ac6:	e486                	sd	ra,72(sp)
   19ac8:	e0a2                	sd	s0,64(sp)
   19aca:	fc26                	sd	s1,56(sp)
   19acc:	f84a                	sd	s2,48(sp)
   19ace:	f052                	sd	s4,32(sp)
   19ad0:	e85a                	sd	s6,16(sp)
   19ad2:	e45e                	sd	s7,8(sp)
   19ad4:	e062                	sd	s8,0(sp)
   19ad6:	00063983          	ld	s3,0(a2)
   19ada:	8ab2                	mv	s5,a2
   19adc:	10078d63          	beqz	a5,19bf6 <__ssprint_r+0x138>
   19ae0:	45d8                	lw	a4,12(a1)
   19ae2:	619c                	ld	a5,0(a1)
   19ae4:	8b2a                	mv	s6,a0
   19ae6:	84ae                	mv	s1,a1
   19ae8:	4a01                	li	s4,0
   19aea:	4401                	li	s0,0
   19aec:	893a                	mv	s2,a4
   19aee:	853e                	mv	a0,a5
   19af0:	c029                	beqz	s0,19b32 <__ssprint_r+0x74>
   19af2:	04e47663          	bgeu	s0,a4,19b3e <__ssprint_r+0x80>
   19af6:	0004071b          	sext.w	a4,s0
   19afa:	893a                	mv	s2,a4
   19afc:	8bba                	mv	s7,a4
   19afe:	853e                	mv	a0,a5
   19b00:	85d2                	mv	a1,s4
   19b02:	864a                	mv	a2,s2
   19b04:	9afff0ef          	jal	ra,194b2 <memmove>
   19b08:	44d4                	lw	a3,12(s1)
   19b0a:	609c                	ld	a5,0(s1)
   19b0c:	010ab703          	ld	a4,16(s5)
   19b10:	412686bb          	subw	a3,a3,s2
   19b14:	97ca                	add	a5,a5,s2
   19b16:	c4d4                	sw	a3,12(s1)
   19b18:	e09c                	sd	a5,0(s1)
   19b1a:	41770733          	sub	a4,a4,s7
   19b1e:	00eab823          	sd	a4,16(s5)
   19b22:	9a5e                	add	s4,s4,s7
   19b24:	41740433          	sub	s0,s0,s7
   19b28:	c779                	beqz	a4,19bf6 <__ssprint_r+0x138>
   19b2a:	44d8                	lw	a4,12(s1)
   19b2c:	853e                	mv	a0,a5
   19b2e:	893a                	mv	s2,a4
   19b30:	f069                	bnez	s0,19af2 <__ssprint_r+0x34>
   19b32:	0009ba03          	ld	s4,0(s3)
   19b36:	0089b403          	ld	s0,8(s3)
   19b3a:	09c1                	addi	s3,s3,16
   19b3c:	bf45                	j	19aec <__ssprint_r+0x2e>
   19b3e:	0104d703          	lhu	a4,16(s1)
   19b42:	00040b9b          	sext.w	s7,s0
   19b46:	48077693          	andi	a3,a4,1152
   19b4a:	dadd                	beqz	a3,19b00 <__ssprint_r+0x42>
   19b4c:	5090                	lw	a2,32(s1)
   19b4e:	6c8c                	ld	a1,24(s1)
   19b50:	0016169b          	slliw	a3,a2,0x1
   19b54:	9eb1                	addw	a3,a3,a2
   19b56:	8f8d                	sub	a5,a5,a1
   19b58:	01f6d91b          	srliw	s2,a3,0x1f
   19b5c:	00078b9b          	sext.w	s7,a5
   19b60:	00d9093b          	addw	s2,s2,a3
   19b64:	001b8693          	addi	a3,s7,1
   19b68:	4019591b          	sraiw	s2,s2,0x1
   19b6c:	96a2                	add	a3,a3,s0
   19b6e:	00d97563          	bgeu	s2,a3,19b78 <__ssprint_r+0xba>
   19b72:	2785                	addiw	a5,a5,1
   19b74:	0087893b          	addw	s2,a5,s0
   19b78:	40077713          	andi	a4,a4,1024
   19b7c:	c731                	beqz	a4,19bc8 <__ssprint_r+0x10a>
   19b7e:	85ca                	mv	a1,s2
   19b80:	855a                	mv	a0,s6
   19b82:	876fb0ef          	jal	ra,14bf8 <_malloc_r>
   19b86:	8c2a                	mv	s8,a0
   19b88:	c931                	beqz	a0,19bdc <__ssprint_r+0x11e>
   19b8a:	6c8c                	ld	a1,24(s1)
   19b8c:	865e                	mv	a2,s7
   19b8e:	83dff0ef          	jal	ra,193ca <memcpy>
   19b92:	0104d783          	lhu	a5,16(s1)
   19b96:	b7f7f793          	andi	a5,a5,-1153
   19b9a:	0807e793          	ori	a5,a5,128
   19b9e:	00f49823          	sh	a5,16(s1)
   19ba2:	017c0533          	add	a0,s8,s7
   19ba6:	41790bbb          	subw	s7,s2,s7
   19baa:	0004071b          	sext.w	a4,s0
   19bae:	0324a023          	sw	s2,32(s1)
   19bb2:	0174a623          	sw	s7,12(s1)
   19bb6:	0184bc23          	sd	s8,24(s1)
   19bba:	e088                	sd	a0,0(s1)
   19bbc:	893a                	mv	s2,a4
   19bbe:	8bba                	mv	s7,a4
   19bc0:	87aa                	mv	a5,a0
   19bc2:	f2e47fe3          	bgeu	s0,a4,19b00 <__ssprint_r+0x42>
   19bc6:	bf15                	j	19afa <__ssprint_r+0x3c>
   19bc8:	864a                	mv	a2,s2
   19bca:	855a                	mv	a0,s6
   19bcc:	9f9ff0ef          	jal	ra,195c4 <_realloc_r>
   19bd0:	8c2a                	mv	s8,a0
   19bd2:	f961                	bnez	a0,19ba2 <__ssprint_r+0xe4>
   19bd4:	6c8c                	ld	a1,24(s1)
   19bd6:	855a                	mv	a0,s6
   19bd8:	a29f80ef          	jal	ra,12600 <_free_r>
   19bdc:	0104d783          	lhu	a5,16(s1)
   19be0:	4731                	li	a4,12
   19be2:	00eb2023          	sw	a4,0(s6) # ffffffff80000000 <__BSS_END__+0xffffffff7ffe0c30>
   19be6:	0407e793          	ori	a5,a5,64
   19bea:	00f49823          	sh	a5,16(s1)
   19bee:	000ab823          	sd	zero,16(s5)
   19bf2:	557d                	li	a0,-1
   19bf4:	a011                	j	19bf8 <__ssprint_r+0x13a>
   19bf6:	4501                	li	a0,0
   19bf8:	60a6                	ld	ra,72(sp)
   19bfa:	6406                	ld	s0,64(sp)
   19bfc:	000aa423          	sw	zero,8(s5)
   19c00:	74e2                	ld	s1,56(sp)
   19c02:	7942                	ld	s2,48(sp)
   19c04:	79a2                	ld	s3,40(sp)
   19c06:	7a02                	ld	s4,32(sp)
   19c08:	6ae2                	ld	s5,24(sp)
   19c0a:	6b42                	ld	s6,16(sp)
   19c0c:	6ba2                	ld	s7,8(sp)
   19c0e:	6c02                	ld	s8,0(sp)
   19c10:	6161                	addi	sp,sp,80
   19c12:	8082                	ret

0000000000019c14 <_svfiprintf_r>:
   19c14:	0105d783          	lhu	a5,16(a1)
   19c18:	7105                	addi	sp,sp,-480
   19c1a:	ff4e                	sd	s3,440(sp)
   19c1c:	f756                	sd	s5,424(sp)
   19c1e:	feee                	sd	s11,376(sp)
   19c20:	ef86                	sd	ra,472(sp)
   19c22:	eba2                	sd	s0,464(sp)
   19c24:	e7a6                	sd	s1,456(sp)
   19c26:	e3ca                	sd	s2,448(sp)
   19c28:	fb52                	sd	s4,432(sp)
   19c2a:	f35a                	sd	s6,416(sp)
   19c2c:	ef5e                	sd	s7,408(sp)
   19c2e:	eb62                	sd	s8,400(sp)
   19c30:	e766                	sd	s9,392(sp)
   19c32:	e36a                	sd	s10,384(sp)
   19c34:	0807f793          	andi	a5,a5,128
   19c38:	e836                	sd	a3,16(sp)
   19c3a:	89ae                	mv	s3,a1
   19c3c:	8aaa                	mv	s5,a0
   19c3e:	8db2                	mv	s11,a2
   19c40:	c781                	beqz	a5,19c48 <_svfiprintf_r+0x34>
   19c42:	6d9c                	ld	a5,24(a1)
   19c44:	12078be3          	beqz	a5,1a57a <_svfiprintf_r+0x966>
   19c48:	66f5                	lui	a3,0x1d
   19c4a:	0f010a13          	addi	s4,sp,240
   19c4e:	f3c68693          	addi	a3,a3,-196 # 1cf3c <_ctype_+0x104>
   19c52:	6b75                	lui	s6,0x1d
   19c54:	64f5                	lui	s1,0x1d
   19c56:	f8d2                	sd	s4,112(sp)
   19c58:	e102                	sd	zero,128(sp)
   19c5a:	dc82                	sw	zero,120(sp)
   19c5c:	4701                	li	a4,0
   19c5e:	87d2                	mv	a5,s4
   19c60:	ec02                	sd	zero,24(sp)
   19c62:	e082                	sd	zero,64(sp)
   19c64:	e882                	sd	zero,80(sp)
   19c66:	e482                	sd	zero,72(sp)
   19c68:	e402                	sd	zero,8(sp)
   19c6a:	f036                	sd	a3,32(sp)
   19c6c:	0a8b0b13          	addi	s6,s6,168 # 1d0a8 <blanks.1>
   19c70:	0b848493          	addi	s1,s1,184 # 1d0b8 <zeroes.0>
   19c74:	000dc683          	lbu	a3,0(s11)
   19c78:	16068e63          	beqz	a3,19df4 <_svfiprintf_r+0x1e0>
   19c7c:	846e                	mv	s0,s11
   19c7e:	02500613          	li	a2,37
   19c82:	28c68063          	beq	a3,a2,19f02 <_svfiprintf_r+0x2ee>
   19c86:	00144683          	lbu	a3,1(s0)
   19c8a:	0405                	addi	s0,s0,1
   19c8c:	fafd                	bnez	a3,19c82 <_svfiprintf_r+0x6e>
   19c8e:	41b4093b          	subw	s2,s0,s11
   19c92:	16090163          	beqz	s2,19df4 <_svfiprintf_r+0x1e0>
   19c96:	56e6                	lw	a3,120(sp)
   19c98:	974a                	add	a4,a4,s2
   19c9a:	01b7b023          	sd	s11,0(a5)
   19c9e:	0016861b          	addiw	a2,a3,1
   19ca2:	0127b423          	sd	s2,8(a5)
   19ca6:	e13a                	sd	a4,128(sp)
   19ca8:	dcb2                	sw	a2,120(sp)
   19caa:	469d                	li	a3,7
   19cac:	07c1                	addi	a5,a5,16
   19cae:	26c6c163          	blt	a3,a2,19f10 <_svfiprintf_r+0x2fc>
   19cb2:	6622                	ld	a2,8(sp)
   19cb4:	00044683          	lbu	a3,0(s0)
   19cb8:	0126063b          	addw	a2,a2,s2
   19cbc:	e432                	sd	a2,8(sp)
   19cbe:	12068b63          	beqz	a3,19df4 <_svfiprintf_r+0x1e0>
   19cc2:	00144683          	lbu	a3,1(s0)
   19cc6:	00140d93          	addi	s11,s0,1
   19cca:	060103a3          	sb	zero,103(sp)
   19cce:	5cfd                	li	s9,-1
   19cd0:	4401                	li	s0,0
   19cd2:	4d01                	li	s10,0
   19cd4:	05a00913          	li	s2,90
   19cd8:	4ba5                	li	s7,9
   19cda:	0d85                	addi	s11,s11,1
   19cdc:	2681                	sext.w	a3,a3
   19cde:	02a00513          	li	a0,42
   19ce2:	fe06861b          	addiw	a2,a3,-32
   19ce6:	0006059b          	sext.w	a1,a2
   19cea:	04b96363          	bltu	s2,a1,19d30 <_svfiprintf_r+0x11c>
   19cee:	02061593          	slli	a1,a2,0x20
   19cf2:	01e5d613          	srli	a2,a1,0x1e
   19cf6:	7582                	ld	a1,32(sp)
   19cf8:	962e                	add	a2,a2,a1
   19cfa:	4210                	lw	a2,0(a2)
   19cfc:	8602                	jr	a2
   19cfe:	4401                	li	s0,0
   19d00:	000dc583          	lbu	a1,0(s11)
   19d04:	0024161b          	slliw	a2,s0,0x2
   19d08:	9e21                	addw	a2,a2,s0
   19d0a:	fd06869b          	addiw	a3,a3,-48
   19d0e:	0016161b          	slliw	a2,a2,0x1
   19d12:	fd05881b          	addiw	a6,a1,-48
   19d16:	00c6843b          	addw	s0,a3,a2
   19d1a:	0d85                	addi	s11,s11,1
   19d1c:	0005869b          	sext.w	a3,a1
   19d20:	ff0bf0e3          	bgeu	s7,a6,19d00 <_svfiprintf_r+0xec>
   19d24:	fe06861b          	addiw	a2,a3,-32
   19d28:	0006059b          	sext.w	a1,a2
   19d2c:	fcb971e3          	bgeu	s2,a1,19cee <_svfiprintf_r+0xda>
   19d30:	c2f1                	beqz	a3,19df4 <_svfiprintf_r+0x1e0>
   19d32:	08d10423          	sb	a3,136(sp)
   19d36:	060103a3          	sb	zero,103(sp)
   19d3a:	4b85                	li	s7,1
   19d3c:	4905                	li	s2,1
   19d3e:	08810c13          	addi	s8,sp,136
   19d42:	4c81                	li	s9,0
   19d44:	002d7293          	andi	t0,s10,2
   19d48:	00028363          	beqz	t0,19d4e <_svfiprintf_r+0x13a>
   19d4c:	2b89                	addiw	s7,s7,2
   19d4e:	084d7f93          	andi	t6,s10,132
   19d52:	56e6                	lw	a3,120(sp)
   19d54:	000f9663          	bnez	t6,19d60 <_svfiprintf_r+0x14c>
   19d58:	41740ebb          	subw	t4,s0,s7
   19d5c:	5bd04b63          	bgtz	t4,1a312 <_svfiprintf_r+0x6fe>
   19d60:	06714603          	lbu	a2,103(sp)
   19d64:	ce11                	beqz	a2,19d80 <_svfiprintf_r+0x16c>
   19d66:	06710593          	addi	a1,sp,103
   19d6a:	e38c                	sd	a1,0(a5)
   19d6c:	2685                	addiw	a3,a3,1
   19d6e:	0705                	addi	a4,a4,1
   19d70:	4585                	li	a1,1
   19d72:	e78c                	sd	a1,8(a5)
   19d74:	e13a                	sd	a4,128(sp)
   19d76:	dcb6                	sw	a3,120(sp)
   19d78:	461d                	li	a2,7
   19d7a:	07c1                	addi	a5,a5,16
   19d7c:	1ad64463          	blt	a2,a3,19f24 <_svfiprintf_r+0x310>
   19d80:	00028e63          	beqz	t0,19d9c <_svfiprintf_r+0x188>
   19d84:	10ac                	addi	a1,sp,104
   19d86:	e38c                	sd	a1,0(a5)
   19d88:	2685                	addiw	a3,a3,1
   19d8a:	0709                	addi	a4,a4,2
   19d8c:	4589                	li	a1,2
   19d8e:	e78c                	sd	a1,8(a5)
   19d90:	e13a                	sd	a4,128(sp)
   19d92:	dcb6                	sw	a3,120(sp)
   19d94:	461d                	li	a2,7
   19d96:	07c1                	addi	a5,a5,16
   19d98:	60d64163          	blt	a2,a3,1a39a <_svfiprintf_r+0x786>
   19d9c:	08000613          	li	a2,128
   19da0:	44cf8b63          	beq	t6,a2,1a1f6 <_svfiprintf_r+0x5e2>
   19da4:	412c8cbb          	subw	s9,s9,s2
   19da8:	4d904863          	bgtz	s9,1a278 <_svfiprintf_r+0x664>
   19dac:	0016861b          	addiw	a2,a3,1
   19db0:	974a                	add	a4,a4,s2
   19db2:	0187b023          	sd	s8,0(a5)
   19db6:	0127b423          	sd	s2,8(a5)
   19dba:	e13a                	sd	a4,128(sp)
   19dbc:	dcb2                	sw	a2,120(sp)
   19dbe:	469d                	li	a3,7
   19dc0:	07c1                	addi	a5,a5,16
   19dc2:	52c6c363          	blt	a3,a2,1a2e8 <_svfiprintf_r+0x6d4>
   19dc6:	004d7e13          	andi	t3,s10,4
   19dca:	000e0663          	beqz	t3,19dd6 <_svfiprintf_r+0x1c2>
   19dce:	4174093b          	subw	s2,s0,s7
   19dd2:	5f204163          	bgtz	s2,1a3b4 <_svfiprintf_r+0x7a0>
   19dd6:	87a2                	mv	a5,s0
   19dd8:	01745363          	bge	s0,s7,19dde <_svfiprintf_r+0x1ca>
   19ddc:	87de                	mv	a5,s7
   19dde:	66a2                	ld	a3,8(sp)
   19de0:	9fb5                	addw	a5,a5,a3
   19de2:	e43e                	sd	a5,8(sp)
   19de4:	50071c63          	bnez	a4,1a2fc <_svfiprintf_r+0x6e8>
   19de8:	000dc683          	lbu	a3,0(s11)
   19dec:	dc82                	sw	zero,120(sp)
   19dee:	87d2                	mv	a5,s4
   19df0:	e80696e3          	bnez	a3,19c7c <_svfiprintf_r+0x68>
   19df4:	060715e3          	bnez	a4,1a65e <_svfiprintf_r+0xa4a>
   19df8:	0109d783          	lhu	a5,16(s3)
   19dfc:	0407f793          	andi	a5,a5,64
   19e00:	080790e3          	bnez	a5,1a680 <_svfiprintf_r+0xa6c>
   19e04:	60fe                	ld	ra,472(sp)
   19e06:	645e                	ld	s0,464(sp)
   19e08:	6522                	ld	a0,8(sp)
   19e0a:	64be                	ld	s1,456(sp)
   19e0c:	691e                	ld	s2,448(sp)
   19e0e:	79fa                	ld	s3,440(sp)
   19e10:	7a5a                	ld	s4,432(sp)
   19e12:	7aba                	ld	s5,424(sp)
   19e14:	7b1a                	ld	s6,416(sp)
   19e16:	6bfa                	ld	s7,408(sp)
   19e18:	6c5a                	ld	s8,400(sp)
   19e1a:	6cba                	ld	s9,392(sp)
   19e1c:	6d1a                	ld	s10,384(sp)
   19e1e:	7df6                	ld	s11,376(sp)
   19e20:	613d                	addi	sp,sp,480
   19e22:	8082                	ret
   19e24:	010d6e13          	ori	t3,s10,16
   19e28:	000dc683          	lbu	a3,0(s11)
   19e2c:	000e0d1b          	sext.w	s10,t3
   19e30:	b56d                	j	19cda <_svfiprintf_r+0xc6>
   19e32:	010d6e13          	ori	t3,s10,16
   19e36:	000e0d1b          	sext.w	s10,t3
   19e3a:	65c2                	ld	a1,16(sp)
   19e3c:	020d7693          	andi	a3,s10,32
   19e40:	00858613          	addi	a2,a1,8
   19e44:	10068e63          	beqz	a3,19f60 <_svfiprintf_r+0x34c>
   19e48:	6194                	ld	a3,0(a1)
   19e4a:	8bb6                	mv	s7,a3
   19e4c:	1206cc63          	bltz	a3,19f84 <_svfiprintf_r+0x370>
   19e50:	56fd                	li	a3,-1
   19e52:	74dc8e63          	beq	s9,a3,1a5ae <_svfiprintf_r+0x99a>
   19e56:	f7fd7e93          	andi	t4,s10,-129
   19e5a:	e832                	sd	a2,16(sp)
   19e5c:	2e81                	sext.w	t4,t4
   19e5e:	5c0b8263          	beqz	s7,1a422 <_svfiprintf_r+0x80e>
   19e62:	46a5                	li	a3,9
   19e64:	5f76e763          	bltu	a3,s7,1a452 <_svfiprintf_r+0x83e>
   19e68:	030b8b9b          	addiw	s7,s7,48
   19e6c:	0f7105a3          	sb	s7,235(sp)
   19e70:	8d76                	mv	s10,t4
   19e72:	4905                	li	s2,1
   19e74:	0eb10c13          	addi	s8,sp,235
   19e78:	a8b1                	j	19ed4 <_svfiprintf_r+0x2c0>
   19e7a:	010d6e13          	ori	t3,s10,16
   19e7e:	000e0d1b          	sext.w	s10,t3
   19e82:	65c2                	ld	a1,16(sp)
   19e84:	020d7693          	andi	a3,s10,32
   19e88:	00858613          	addi	a2,a1,8
   19e8c:	cadd                	beqz	a3,19f42 <_svfiprintf_r+0x32e>
   19e8e:	0005bb83          	ld	s7,0(a1)
   19e92:	bffd7e93          	andi	t4,s10,-1025
   19e96:	2e81                	sext.w	t4,t4
   19e98:	e832                	sd	a2,16(sp)
   19e9a:	4681                	li	a3,0
   19e9c:	4601                	li	a2,0
   19e9e:	06c103a3          	sb	a2,103(sp)
   19ea2:	567d                	li	a2,-1
   19ea4:	0ecc8c63          	beq	s9,a2,19f9c <_svfiprintf_r+0x388>
   19ea8:	f7fefe13          	andi	t3,t4,-129
   19eac:	000e0d1b          	sext.w	s10,t3
   19eb0:	440b9f63          	bnez	s7,1a30e <_svfiprintf_r+0x6fa>
   19eb4:	300c9663          	bnez	s9,1a1c0 <_svfiprintf_r+0x5ac>
   19eb8:	56069863          	bnez	a3,1a428 <_svfiprintf_r+0x814>
   19ebc:	001ef913          	andi	s2,t4,1
   19ec0:	0ec10c13          	addi	s8,sp,236
   19ec4:	00090863          	beqz	s2,19ed4 <_svfiprintf_r+0x2c0>
   19ec8:	03000693          	li	a3,48
   19ecc:	0ed105a3          	sb	a3,235(sp)
   19ed0:	0eb10c13          	addi	s8,sp,235
   19ed4:	86e6                	mv	a3,s9
   19ed6:	012cd363          	bge	s9,s2,19edc <_svfiprintf_r+0x2c8>
   19eda:	86ca                	mv	a3,s2
   19edc:	06714603          	lbu	a2,103(sp)
   19ee0:	00068b9b          	sext.w	s7,a3
   19ee4:	e60600e3          	beqz	a2,19d44 <_svfiprintf_r+0x130>
   19ee8:	00168b9b          	addiw	s7,a3,1
   19eec:	bda1                	j	19d44 <_svfiprintf_r+0x130>
   19eee:	4080043b          	negw	s0,s0
   19ef2:	e862                	sd	s8,16(sp)
   19ef4:	004d6e13          	ori	t3,s10,4
   19ef8:	000dc683          	lbu	a3,0(s11)
   19efc:	000e0d1b          	sext.w	s10,t3
   19f00:	bbe9                	j	19cda <_svfiprintf_r+0xc6>
   19f02:	41b4093b          	subw	s2,s0,s11
   19f06:	d80918e3          	bnez	s2,19c96 <_svfiprintf_r+0x82>
   19f0a:	00044683          	lbu	a3,0(s0)
   19f0e:	bb45                	j	19cbe <_svfiprintf_r+0xaa>
   19f10:	1890                	addi	a2,sp,112
   19f12:	85ce                	mv	a1,s3
   19f14:	8556                	mv	a0,s5
   19f16:	ba9ff0ef          	jal	ra,19abe <__ssprint_r>
   19f1a:	ec051fe3          	bnez	a0,19df8 <_svfiprintf_r+0x1e4>
   19f1e:	670a                	ld	a4,128(sp)
   19f20:	87d2                	mv	a5,s4
   19f22:	bb41                	j	19cb2 <_svfiprintf_r+0x9e>
   19f24:	1890                	addi	a2,sp,112
   19f26:	85ce                	mv	a1,s3
   19f28:	8556                	mv	a0,s5
   19f2a:	f87e                	sd	t6,48(sp)
   19f2c:	f416                	sd	t0,40(sp)
   19f2e:	b91ff0ef          	jal	ra,19abe <__ssprint_r>
   19f32:	ec0513e3          	bnez	a0,19df8 <_svfiprintf_r+0x1e4>
   19f36:	670a                	ld	a4,128(sp)
   19f38:	56e6                	lw	a3,120(sp)
   19f3a:	7fc2                	ld	t6,48(sp)
   19f3c:	72a2                	ld	t0,40(sp)
   19f3e:	87d2                	mv	a5,s4
   19f40:	b581                	j	19d80 <_svfiprintf_r+0x16c>
   19f42:	010d7693          	andi	a3,s10,16
   19f46:	5a069063          	bnez	a3,1a4e6 <_svfiprintf_r+0x8d2>
   19f4a:	65c2                	ld	a1,16(sp)
   19f4c:	040d7693          	andi	a3,s10,64
   19f50:	0005ab83          	lw	s7,0(a1)
   19f54:	6c068163          	beqz	a3,1a616 <_svfiprintf_r+0xa02>
   19f58:	1bc2                	slli	s7,s7,0x30
   19f5a:	030bdb93          	srli	s7,s7,0x30
   19f5e:	bf15                	j	19e92 <_svfiprintf_r+0x27e>
   19f60:	010d7693          	andi	a3,s10,16
   19f64:	56069d63          	bnez	a3,1a4de <_svfiprintf_r+0x8ca>
   19f68:	65c2                	ld	a1,16(sp)
   19f6a:	040d7693          	andi	a3,s10,64
   19f6e:	0005ab83          	lw	s7,0(a1)
   19f72:	68068063          	beqz	a3,1a5f2 <_svfiprintf_r+0x9de>
   19f76:	010b9b9b          	slliw	s7,s7,0x10
   19f7a:	410bdb9b          	sraiw	s7,s7,0x10
   19f7e:	86de                	mv	a3,s7
   19f80:	ec06d8e3          	bgez	a3,19e50 <_svfiprintf_r+0x23c>
   19f84:	e832                	sd	a2,16(sp)
   19f86:	02d00613          	li	a2,45
   19f8a:	06c103a3          	sb	a2,103(sp)
   19f8e:	567d                	li	a2,-1
   19f90:	41700bb3          	neg	s7,s7
   19f94:	8eea                	mv	t4,s10
   19f96:	4685                	li	a3,1
   19f98:	f0cc98e3          	bne	s9,a2,19ea8 <_svfiprintf_r+0x294>
   19f9c:	4605                	li	a2,1
   19f9e:	ecc682e3          	beq	a3,a2,19e62 <_svfiprintf_r+0x24e>
   19fa2:	4609                	li	a2,2
   19fa4:	22c68563          	beq	a3,a2,1a1ce <_svfiprintf_r+0x5ba>
   19fa8:	0ec10913          	addi	s2,sp,236
   19fac:	8c4a                	mv	s8,s2
   19fae:	007bf693          	andi	a3,s7,7
   19fb2:	03068693          	addi	a3,a3,48
   19fb6:	fedc0fa3          	sb	a3,-1(s8)
   19fba:	003bdb93          	srli	s7,s7,0x3
   19fbe:	8662                	mv	a2,s8
   19fc0:	1c7d                	addi	s8,s8,-1
   19fc2:	fe0b96e3          	bnez	s7,19fae <_svfiprintf_r+0x39a>
   19fc6:	001ef593          	andi	a1,t4,1
   19fca:	22058263          	beqz	a1,1a1ee <_svfiprintf_r+0x5da>
   19fce:	03000593          	li	a1,48
   19fd2:	20b68e63          	beq	a3,a1,1a1ee <_svfiprintf_r+0x5da>
   19fd6:	1679                	addi	a2,a2,-2
   19fd8:	febc0fa3          	sb	a1,-1(s8)
   19fdc:	40c9093b          	subw	s2,s2,a2
   19fe0:	8d76                	mv	s10,t4
   19fe2:	8c32                	mv	s8,a2
   19fe4:	bdc5                	j	19ed4 <_svfiprintf_r+0x2c0>
   19fe6:	66c2                	ld	a3,16(sp)
   19fe8:	060103a3          	sb	zero,103(sp)
   19fec:	0006bc03          	ld	s8,0(a3)
   19ff0:	00868813          	addi	a6,a3,8
   19ff4:	5e0c0263          	beqz	s8,1a5d8 <_svfiprintf_r+0x9c4>
   19ff8:	56fd                	li	a3,-1
   19ffa:	56dc8463          	beq	s9,a3,1a562 <_svfiprintf_r+0x94e>
   19ffe:	8666                	mv	a2,s9
   1a000:	4581                	li	a1,0
   1a002:	8562                	mv	a0,s8
   1a004:	f842                	sd	a6,48(sp)
   1a006:	f43e                	sd	a5,40(sp)
   1a008:	e83a                	sd	a4,16(sp)
   1a00a:	a4cfb0ef          	jal	ra,15256 <memchr>
   1a00e:	6742                	ld	a4,16(sp)
   1a010:	77a2                	ld	a5,40(sp)
   1a012:	7842                	ld	a6,48(sp)
   1a014:	64050c63          	beqz	a0,1a66c <_svfiprintf_r+0xa58>
   1a018:	4185093b          	subw	s2,a0,s8
   1a01c:	e842                	sd	a6,16(sp)
   1a01e:	4c81                	li	s9,0
   1a020:	bd55                	j	19ed4 <_svfiprintf_r+0x2c0>
   1a022:	6642                	ld	a2,16(sp)
   1a024:	060103a3          	sb	zero,103(sp)
   1a028:	4b85                	li	s7,1
   1a02a:	4214                	lw	a3,0(a2)
   1a02c:	0621                	addi	a2,a2,8
   1a02e:	e832                	sd	a2,16(sp)
   1a030:	08d10423          	sb	a3,136(sp)
   1a034:	4905                	li	s2,1
   1a036:	08810c13          	addi	s8,sp,136
   1a03a:	b321                	j	19d42 <_svfiprintf_r+0x12e>
   1a03c:	080d6e13          	ori	t3,s10,128
   1a040:	000dc683          	lbu	a3,0(s11)
   1a044:	000e0d1b          	sext.w	s10,t3
   1a048:	b949                	j	19cda <_svfiprintf_r+0xc6>
   1a04a:	020d6e13          	ori	t3,s10,32
   1a04e:	000dc683          	lbu	a3,0(s11)
   1a052:	000e0d1b          	sext.w	s10,t3
   1a056:	b151                	j	19cda <_svfiprintf_r+0xc6>
   1a058:	6642                	ld	a2,16(sp)
   1a05a:	76e1                	lui	a3,0xffff8
   1a05c:	8306c693          	xori	a3,a3,-2000
   1a060:	002d6e93          	ori	t4,s10,2
   1a064:	06d11423          	sh	a3,104(sp)
   1a068:	6d71                	lui	s10,0x1c
   1a06a:	00860693          	addi	a3,a2,8
   1a06e:	e836                	sd	a3,16(sp)
   1a070:	328d0693          	addi	a3,s10,808 # 1c328 <__clzdi2+0x5c>
   1a074:	ec36                	sd	a3,24(sp)
   1a076:	00063b83          	ld	s7,0(a2)
   1a07a:	2e81                	sext.w	t4,t4
   1a07c:	4689                	li	a3,2
   1a07e:	bd39                	j	19e9c <_svfiprintf_r+0x288>
   1a080:	010d6e93          	ori	t4,s10,16
   1a084:	2e81                	sext.w	t4,t4
   1a086:	65c2                	ld	a1,16(sp)
   1a088:	020ef693          	andi	a3,t4,32
   1a08c:	00858613          	addi	a2,a1,8
   1a090:	3a068163          	beqz	a3,1a432 <_svfiprintf_r+0x81e>
   1a094:	0005bb83          	ld	s7,0(a1)
   1a098:	4685                	li	a3,1
   1a09a:	e832                	sd	a2,16(sp)
   1a09c:	b501                	j	19e9c <_svfiprintf_r+0x288>
   1a09e:	000dc683          	lbu	a3,0(s11)
   1a0a2:	001d8613          	addi	a2,s11,1
   1a0a6:	5ea68163          	beq	a3,a0,1a688 <_svfiprintf_r+0xa74>
   1a0aa:	fd06859b          	addiw	a1,a3,-48 # ffffffffffff7fd0 <__BSS_END__+0xfffffffffffd8c00>
   1a0ae:	8db2                	mv	s11,a2
   1a0b0:	4c81                	li	s9,0
   1a0b2:	c2bbe8e3          	bltu	s7,a1,19ce2 <_svfiprintf_r+0xce>
   1a0b6:	000dc683          	lbu	a3,0(s11)
   1a0ba:	002c961b          	slliw	a2,s9,0x2
   1a0be:	0196063b          	addw	a2,a2,s9
   1a0c2:	0016161b          	slliw	a2,a2,0x1
   1a0c6:	00b60cbb          	addw	s9,a2,a1
   1a0ca:	fd06859b          	addiw	a1,a3,-48
   1a0ce:	0d85                	addi	s11,s11,1
   1a0d0:	febbf3e3          	bgeu	s7,a1,1a0b6 <_svfiprintf_r+0x4a2>
   1a0d4:	b139                	j	19ce2 <_svfiprintf_r+0xce>
   1a0d6:	65c2                	ld	a1,16(sp)
   1a0d8:	020d7693          	andi	a3,s10,32
   1a0dc:	6190                	ld	a2,0(a1)
   1a0de:	05a1                	addi	a1,a1,8
   1a0e0:	e82e                	sd	a1,16(sp)
   1a0e2:	e285                	bnez	a3,1a102 <_svfiprintf_r+0x4ee>
   1a0e4:	010d7693          	andi	a3,s10,16
   1a0e8:	ee89                	bnez	a3,1a102 <_svfiprintf_r+0x4ee>
   1a0ea:	040d7693          	andi	a3,s10,64
   1a0ee:	56069363          	bnez	a3,1a654 <_svfiprintf_r+0xa40>
   1a0f2:	200d7e13          	andi	t3,s10,512
   1a0f6:	66a2                	ld	a3,8(sp)
   1a0f8:	580e0163          	beqz	t3,1a67a <_svfiprintf_r+0xa66>
   1a0fc:	00d60023          	sb	a3,0(a2)
   1a100:	be95                	j	19c74 <_svfiprintf_r+0x60>
   1a102:	66a2                	ld	a3,8(sp)
   1a104:	e214                	sd	a3,0(a2)
   1a106:	b6bd                	j	19c74 <_svfiprintf_r+0x60>
   1a108:	000dc683          	lbu	a3,0(s11)
   1a10c:	06c00613          	li	a2,108
   1a110:	4ac68263          	beq	a3,a2,1a5b4 <_svfiprintf_r+0x9a0>
   1a114:	010d6e13          	ori	t3,s10,16
   1a118:	000e0d1b          	sext.w	s10,t3
   1a11c:	be7d                	j	19cda <_svfiprintf_r+0xc6>
   1a11e:	000dc683          	lbu	a3,0(s11)
   1a122:	06800613          	li	a2,104
   1a126:	4ac68063          	beq	a3,a2,1a5c6 <_svfiprintf_r+0x9b2>
   1a12a:	040d6e13          	ori	t3,s10,64
   1a12e:	000e0d1b          	sext.w	s10,t3
   1a132:	b665                	j	19cda <_svfiprintf_r+0xc6>
   1a134:	66c2                	ld	a3,16(sp)
   1a136:	4280                	lw	s0,0(a3)
   1a138:	00868c13          	addi	s8,a3,8
   1a13c:	da0449e3          	bltz	s0,19eee <_svfiprintf_r+0x2da>
   1a140:	000dc683          	lbu	a3,0(s11)
   1a144:	e862                	sd	s8,16(sp)
   1a146:	be51                	j	19cda <_svfiprintf_r+0xc6>
   1a148:	8556                	mv	a0,s5
   1a14a:	f43a                	sd	a4,40(sp)
   1a14c:	f83e                	sd	a5,48(sp)
   1a14e:	863fa0ef          	jal	ra,149b0 <_localeconv_r>
   1a152:	651c                	ld	a5,8(a0)
   1a154:	853e                	mv	a0,a5
   1a156:	e4be                	sd	a5,72(sp)
   1a158:	9d4fc0ef          	jal	ra,1632c <strlen>
   1a15c:	86aa                	mv	a3,a0
   1a15e:	8556                	mv	a0,s5
   1a160:	8c36                	mv	s8,a3
   1a162:	e8b6                	sd	a3,80(sp)
   1a164:	84dfa0ef          	jal	ra,149b0 <_localeconv_r>
   1a168:	6910                	ld	a2,16(a0)
   1a16a:	7722                	ld	a4,40(sp)
   1a16c:	77c2                	ld	a5,48(sp)
   1a16e:	e0b2                	sd	a2,64(sp)
   1a170:	360c0363          	beqz	s8,1a4d6 <_svfiprintf_r+0x8c2>
   1a174:	000dc683          	lbu	a3,0(s11)
   1a178:	b60601e3          	beqz	a2,19cda <_svfiprintf_r+0xc6>
   1a17c:	00064603          	lbu	a2,0(a2)
   1a180:	b4060de3          	beqz	a2,19cda <_svfiprintf_r+0xc6>
   1a184:	400d6e13          	ori	t3,s10,1024
   1a188:	000e0d1b          	sext.w	s10,t3
   1a18c:	b6b9                	j	19cda <_svfiprintf_r+0xc6>
   1a18e:	001d6e13          	ori	t3,s10,1
   1a192:	000dc683          	lbu	a3,0(s11)
   1a196:	000e0d1b          	sext.w	s10,t3
   1a19a:	b681                	j	19cda <_svfiprintf_r+0xc6>
   1a19c:	06714603          	lbu	a2,103(sp)
   1a1a0:	000dc683          	lbu	a3,0(s11)
   1a1a4:	b2061be3          	bnez	a2,19cda <_svfiprintf_r+0xc6>
   1a1a8:	02000613          	li	a2,32
   1a1ac:	06c103a3          	sb	a2,103(sp)
   1a1b0:	b62d                	j	19cda <_svfiprintf_r+0xc6>
   1a1b2:	02b00613          	li	a2,43
   1a1b6:	000dc683          	lbu	a3,0(s11)
   1a1ba:	06c103a3          	sb	a2,103(sp)
   1a1be:	be31                	j	19cda <_svfiprintf_r+0xc6>
   1a1c0:	4605                	li	a2,1
   1a1c2:	4ac68963          	beq	a3,a2,1a674 <_svfiprintf_r+0xa60>
   1a1c6:	4609                	li	a2,2
   1a1c8:	8eea                	mv	t4,s10
   1a1ca:	dcc69fe3          	bne	a3,a2,19fa8 <_svfiprintf_r+0x394>
   1a1ce:	0ec10913          	addi	s2,sp,236
   1a1d2:	8c4a                	mv	s8,s2
   1a1d4:	6662                	ld	a2,24(sp)
   1a1d6:	00fbf693          	andi	a3,s7,15
   1a1da:	1c7d                	addi	s8,s8,-1
   1a1dc:	96b2                	add	a3,a3,a2
   1a1de:	0006c683          	lbu	a3,0(a3)
   1a1e2:	004bdb93          	srli	s7,s7,0x4
   1a1e6:	00dc0023          	sb	a3,0(s8)
   1a1ea:	fe0b95e3          	bnez	s7,1a1d4 <_svfiprintf_r+0x5c0>
   1a1ee:	4189093b          	subw	s2,s2,s8
   1a1f2:	8d76                	mv	s10,t4
   1a1f4:	b1c5                	j	19ed4 <_svfiprintf_r+0x2c0>
   1a1f6:	41740ebb          	subw	t4,s0,s7
   1a1fa:	bbd055e3          	blez	t4,19da4 <_svfiprintf_r+0x190>
   1a1fe:	4641                	li	a2,16
   1a200:	05d65363          	bge	a2,t4,1a246 <_svfiprintf_r+0x632>
   1a204:	4f41                	li	t5,16
   1a206:	4f9d                	li	t6,7
   1a208:	a021                	j	1a210 <_svfiprintf_r+0x5fc>
   1a20a:	3ec1                	addiw	t4,t4,-16
   1a20c:	03df5d63          	bge	t5,t4,1a246 <_svfiprintf_r+0x632>
   1a210:	2685                	addiw	a3,a3,1
   1a212:	0741                	addi	a4,a4,16
   1a214:	e384                	sd	s1,0(a5)
   1a216:	01e7b423          	sd	t5,8(a5)
   1a21a:	e13a                	sd	a4,128(sp)
   1a21c:	dcb6                	sw	a3,120(sp)
   1a21e:	07c1                	addi	a5,a5,16
   1a220:	fedfd5e3          	bge	t6,a3,1a20a <_svfiprintf_r+0x5f6>
   1a224:	1890                	addi	a2,sp,112
   1a226:	85ce                	mv	a1,s3
   1a228:	8556                	mv	a0,s5
   1a22a:	f476                	sd	t4,40(sp)
   1a22c:	893ff0ef          	jal	ra,19abe <__ssprint_r>
   1a230:	bc0514e3          	bnez	a0,19df8 <_svfiprintf_r+0x1e4>
   1a234:	7ea2                	ld	t4,40(sp)
   1a236:	4f41                	li	t5,16
   1a238:	670a                	ld	a4,128(sp)
   1a23a:	3ec1                	addiw	t4,t4,-16
   1a23c:	56e6                	lw	a3,120(sp)
   1a23e:	87d2                	mv	a5,s4
   1a240:	4f9d                	li	t6,7
   1a242:	fddf47e3          	blt	t5,t4,1a210 <_svfiprintf_r+0x5fc>
   1a246:	2685                	addiw	a3,a3,1
   1a248:	9776                	add	a4,a4,t4
   1a24a:	e384                	sd	s1,0(a5)
   1a24c:	01d7b423          	sd	t4,8(a5)
   1a250:	e13a                	sd	a4,128(sp)
   1a252:	dcb6                	sw	a3,120(sp)
   1a254:	461d                	li	a2,7
   1a256:	07c1                	addi	a5,a5,16
   1a258:	b4d656e3          	bge	a2,a3,19da4 <_svfiprintf_r+0x190>
   1a25c:	1890                	addi	a2,sp,112
   1a25e:	85ce                	mv	a1,s3
   1a260:	8556                	mv	a0,s5
   1a262:	85dff0ef          	jal	ra,19abe <__ssprint_r>
   1a266:	b80519e3          	bnez	a0,19df8 <_svfiprintf_r+0x1e4>
   1a26a:	412c8cbb          	subw	s9,s9,s2
   1a26e:	670a                	ld	a4,128(sp)
   1a270:	56e6                	lw	a3,120(sp)
   1a272:	87d2                	mv	a5,s4
   1a274:	b3905ce3          	blez	s9,19dac <_svfiprintf_r+0x198>
   1a278:	4641                	li	a2,16
   1a27a:	05965163          	bge	a2,s9,1a2bc <_svfiprintf_r+0x6a8>
   1a27e:	4ec1                	li	t4,16
   1a280:	4f1d                	li	t5,7
   1a282:	a021                	j	1a28a <_svfiprintf_r+0x676>
   1a284:	3cc1                	addiw	s9,s9,-16
   1a286:	039edb63          	bge	t4,s9,1a2bc <_svfiprintf_r+0x6a8>
   1a28a:	2685                	addiw	a3,a3,1
   1a28c:	0741                	addi	a4,a4,16
   1a28e:	e384                	sd	s1,0(a5)
   1a290:	01d7b423          	sd	t4,8(a5)
   1a294:	e13a                	sd	a4,128(sp)
   1a296:	dcb6                	sw	a3,120(sp)
   1a298:	07c1                	addi	a5,a5,16
   1a29a:	fedf55e3          	bge	t5,a3,1a284 <_svfiprintf_r+0x670>
   1a29e:	1890                	addi	a2,sp,112
   1a2a0:	85ce                	mv	a1,s3
   1a2a2:	8556                	mv	a0,s5
   1a2a4:	81bff0ef          	jal	ra,19abe <__ssprint_r>
   1a2a8:	b40518e3          	bnez	a0,19df8 <_svfiprintf_r+0x1e4>
   1a2ac:	4ec1                	li	t4,16
   1a2ae:	3cc1                	addiw	s9,s9,-16
   1a2b0:	670a                	ld	a4,128(sp)
   1a2b2:	56e6                	lw	a3,120(sp)
   1a2b4:	87d2                	mv	a5,s4
   1a2b6:	4f1d                	li	t5,7
   1a2b8:	fd9ec9e3          	blt	t4,s9,1a28a <_svfiprintf_r+0x676>
   1a2bc:	2685                	addiw	a3,a3,1
   1a2be:	9766                	add	a4,a4,s9
   1a2c0:	e384                	sd	s1,0(a5)
   1a2c2:	0197b423          	sd	s9,8(a5)
   1a2c6:	e13a                	sd	a4,128(sp)
   1a2c8:	dcb6                	sw	a3,120(sp)
   1a2ca:	461d                	li	a2,7
   1a2cc:	07c1                	addi	a5,a5,16
   1a2ce:	acd65fe3          	bge	a2,a3,19dac <_svfiprintf_r+0x198>
   1a2d2:	1890                	addi	a2,sp,112
   1a2d4:	85ce                	mv	a1,s3
   1a2d6:	8556                	mv	a0,s5
   1a2d8:	fe6ff0ef          	jal	ra,19abe <__ssprint_r>
   1a2dc:	b0051ee3          	bnez	a0,19df8 <_svfiprintf_r+0x1e4>
   1a2e0:	670a                	ld	a4,128(sp)
   1a2e2:	56e6                	lw	a3,120(sp)
   1a2e4:	87d2                	mv	a5,s4
   1a2e6:	b4d9                	j	19dac <_svfiprintf_r+0x198>
   1a2e8:	1890                	addi	a2,sp,112
   1a2ea:	85ce                	mv	a1,s3
   1a2ec:	8556                	mv	a0,s5
   1a2ee:	fd0ff0ef          	jal	ra,19abe <__ssprint_r>
   1a2f2:	b00513e3          	bnez	a0,19df8 <_svfiprintf_r+0x1e4>
   1a2f6:	670a                	ld	a4,128(sp)
   1a2f8:	87d2                	mv	a5,s4
   1a2fa:	b4f1                	j	19dc6 <_svfiprintf_r+0x1b2>
   1a2fc:	1890                	addi	a2,sp,112
   1a2fe:	85ce                	mv	a1,s3
   1a300:	8556                	mv	a0,s5
   1a302:	fbcff0ef          	jal	ra,19abe <__ssprint_r>
   1a306:	ae0519e3          	bnez	a0,19df8 <_svfiprintf_r+0x1e4>
   1a30a:	670a                	ld	a4,128(sp)
   1a30c:	bcf1                	j	19de8 <_svfiprintf_r+0x1d4>
   1a30e:	8eea                	mv	t4,s10
   1a310:	b171                	j	19f9c <_svfiprintf_r+0x388>
   1a312:	4641                	li	a2,16
   1a314:	05d65863          	bge	a2,t4,1a364 <_svfiprintf_r+0x750>
   1a318:	4f41                	li	t5,16
   1a31a:	439d                	li	t2,7
   1a31c:	a021                	j	1a324 <_svfiprintf_r+0x710>
   1a31e:	3ec1                	addiw	t4,t4,-16
   1a320:	05df5263          	bge	t5,t4,1a364 <_svfiprintf_r+0x750>
   1a324:	2685                	addiw	a3,a3,1
   1a326:	0741                	addi	a4,a4,16
   1a328:	0167b023          	sd	s6,0(a5)
   1a32c:	01e7b423          	sd	t5,8(a5)
   1a330:	e13a                	sd	a4,128(sp)
   1a332:	dcb6                	sw	a3,120(sp)
   1a334:	07c1                	addi	a5,a5,16
   1a336:	fed3d4e3          	bge	t2,a3,1a31e <_svfiprintf_r+0x70a>
   1a33a:	1890                	addi	a2,sp,112
   1a33c:	85ce                	mv	a1,s3
   1a33e:	8556                	mv	a0,s5
   1a340:	fc76                	sd	t4,56(sp)
   1a342:	f87e                	sd	t6,48(sp)
   1a344:	f416                	sd	t0,40(sp)
   1a346:	f78ff0ef          	jal	ra,19abe <__ssprint_r>
   1a34a:	aa0517e3          	bnez	a0,19df8 <_svfiprintf_r+0x1e4>
   1a34e:	7ee2                	ld	t4,56(sp)
   1a350:	4f41                	li	t5,16
   1a352:	670a                	ld	a4,128(sp)
   1a354:	3ec1                	addiw	t4,t4,-16
   1a356:	56e6                	lw	a3,120(sp)
   1a358:	7fc2                	ld	t6,48(sp)
   1a35a:	72a2                	ld	t0,40(sp)
   1a35c:	87d2                	mv	a5,s4
   1a35e:	439d                	li	t2,7
   1a360:	fddf42e3          	blt	t5,t4,1a324 <_svfiprintf_r+0x710>
   1a364:	2685                	addiw	a3,a3,1
   1a366:	9776                	add	a4,a4,t4
   1a368:	0167b023          	sd	s6,0(a5)
   1a36c:	01d7b423          	sd	t4,8(a5)
   1a370:	e13a                	sd	a4,128(sp)
   1a372:	dcb6                	sw	a3,120(sp)
   1a374:	461d                	li	a2,7
   1a376:	07c1                	addi	a5,a5,16
   1a378:	9ed654e3          	bge	a2,a3,19d60 <_svfiprintf_r+0x14c>
   1a37c:	1890                	addi	a2,sp,112
   1a37e:	85ce                	mv	a1,s3
   1a380:	8556                	mv	a0,s5
   1a382:	f87e                	sd	t6,48(sp)
   1a384:	f416                	sd	t0,40(sp)
   1a386:	f38ff0ef          	jal	ra,19abe <__ssprint_r>
   1a38a:	a60517e3          	bnez	a0,19df8 <_svfiprintf_r+0x1e4>
   1a38e:	670a                	ld	a4,128(sp)
   1a390:	56e6                	lw	a3,120(sp)
   1a392:	7fc2                	ld	t6,48(sp)
   1a394:	72a2                	ld	t0,40(sp)
   1a396:	87d2                	mv	a5,s4
   1a398:	b2e1                	j	19d60 <_svfiprintf_r+0x14c>
   1a39a:	1890                	addi	a2,sp,112
   1a39c:	85ce                	mv	a1,s3
   1a39e:	8556                	mv	a0,s5
   1a3a0:	f47e                	sd	t6,40(sp)
   1a3a2:	f1cff0ef          	jal	ra,19abe <__ssprint_r>
   1a3a6:	a40519e3          	bnez	a0,19df8 <_svfiprintf_r+0x1e4>
   1a3aa:	670a                	ld	a4,128(sp)
   1a3ac:	56e6                	lw	a3,120(sp)
   1a3ae:	7fa2                	ld	t6,40(sp)
   1a3b0:	87d2                	mv	a5,s4
   1a3b2:	b2ed                	j	19d9c <_svfiprintf_r+0x188>
   1a3b4:	4641                	li	a2,16
   1a3b6:	56e6                	lw	a3,120(sp)
   1a3b8:	05265063          	bge	a2,s2,1a3f8 <_svfiprintf_r+0x7e4>
   1a3bc:	4cc1                	li	s9,16
   1a3be:	4c1d                	li	s8,7
   1a3c0:	a021                	j	1a3c8 <_svfiprintf_r+0x7b4>
   1a3c2:	3941                	addiw	s2,s2,-16
   1a3c4:	032cda63          	bge	s9,s2,1a3f8 <_svfiprintf_r+0x7e4>
   1a3c8:	2685                	addiw	a3,a3,1
   1a3ca:	0741                	addi	a4,a4,16
   1a3cc:	0167b023          	sd	s6,0(a5)
   1a3d0:	0197b423          	sd	s9,8(a5)
   1a3d4:	e13a                	sd	a4,128(sp)
   1a3d6:	dcb6                	sw	a3,120(sp)
   1a3d8:	07c1                	addi	a5,a5,16
   1a3da:	fedc54e3          	bge	s8,a3,1a3c2 <_svfiprintf_r+0x7ae>
   1a3de:	1890                	addi	a2,sp,112
   1a3e0:	85ce                	mv	a1,s3
   1a3e2:	8556                	mv	a0,s5
   1a3e4:	edaff0ef          	jal	ra,19abe <__ssprint_r>
   1a3e8:	a00518e3          	bnez	a0,19df8 <_svfiprintf_r+0x1e4>
   1a3ec:	3941                	addiw	s2,s2,-16
   1a3ee:	670a                	ld	a4,128(sp)
   1a3f0:	56e6                	lw	a3,120(sp)
   1a3f2:	87d2                	mv	a5,s4
   1a3f4:	fd2ccae3          	blt	s9,s2,1a3c8 <_svfiprintf_r+0x7b4>
   1a3f8:	0016861b          	addiw	a2,a3,1
   1a3fc:	974a                	add	a4,a4,s2
   1a3fe:	0167b023          	sd	s6,0(a5)
   1a402:	0127b423          	sd	s2,8(a5)
   1a406:	e13a                	sd	a4,128(sp)
   1a408:	dcb2                	sw	a2,120(sp)
   1a40a:	479d                	li	a5,7
   1a40c:	9cc7d5e3          	bge	a5,a2,19dd6 <_svfiprintf_r+0x1c2>
   1a410:	1890                	addi	a2,sp,112
   1a412:	85ce                	mv	a1,s3
   1a414:	8556                	mv	a0,s5
   1a416:	ea8ff0ef          	jal	ra,19abe <__ssprint_r>
   1a41a:	9c051fe3          	bnez	a0,19df8 <_svfiprintf_r+0x1e4>
   1a41e:	670a                	ld	a4,128(sp)
   1a420:	ba5d                	j	19dd6 <_svfiprintf_r+0x1c2>
   1a422:	a40c93e3          	bnez	s9,19e68 <_svfiprintf_r+0x254>
   1a426:	8d76                	mv	s10,t4
   1a428:	4c81                	li	s9,0
   1a42a:	4901                	li	s2,0
   1a42c:	0ec10c13          	addi	s8,sp,236
   1a430:	b455                	j	19ed4 <_svfiprintf_r+0x2c0>
   1a432:	010ef693          	andi	a3,t4,16
   1a436:	eec5                	bnez	a3,1a4ee <_svfiprintf_r+0x8da>
   1a438:	65c2                	ld	a1,16(sp)
   1a43a:	040ef693          	andi	a3,t4,64
   1a43e:	0005ab83          	lw	s7,0(a1)
   1a442:	1c068263          	beqz	a3,1a606 <_svfiprintf_r+0x9f2>
   1a446:	1bc2                	slli	s7,s7,0x30
   1a448:	030bdb93          	srli	s7,s7,0x30
   1a44c:	e832                	sd	a2,16(sp)
   1a44e:	4685                	li	a3,1
   1a450:	b4b1                	j	19e9c <_svfiprintf_r+0x288>
   1a452:	0ec10913          	addi	s2,sp,236
   1a456:	400eff13          	andi	t5,t4,1024
   1a45a:	4501                	li	a0,0
   1a45c:	85ca                	mv	a1,s2
   1a45e:	46a9                	li	a3,10
   1a460:	4e25                	li	t3,9
   1a462:	0ff00d13          	li	s10,255
   1a466:	a039                	j	1a474 <_svfiprintf_r+0x860>
   1a468:	02dbd633          	divu	a2,s7,a3
   1a46c:	d97e71e3          	bgeu	t3,s7,1a1ee <_svfiprintf_r+0x5da>
   1a470:	8bb2                	mv	s7,a2
   1a472:	85e2                	mv	a1,s8
   1a474:	fff58c13          	addi	s8,a1,-1
   1a478:	2505                	addiw	a0,a0,1
   1a47a:	02dbf633          	remu	a2,s7,a3
   1a47e:	0306061b          	addiw	a2,a2,48
   1a482:	fec58fa3          	sb	a2,-1(a1)
   1a486:	fe0f01e3          	beqz	t5,1a468 <_svfiprintf_r+0x854>
   1a48a:	6606                	ld	a2,64(sp)
   1a48c:	00064603          	lbu	a2,0(a2)
   1a490:	fca61ce3          	bne	a2,a0,1a468 <_svfiprintf_r+0x854>
   1a494:	fda60ae3          	beq	a2,s10,1a468 <_svfiprintf_r+0x854>
   1a498:	d57e7be3          	bgeu	t3,s7,1a1ee <_svfiprintf_r+0x5da>
   1a49c:	fc3e                	sd	a5,56(sp)
   1a49e:	67c6                	ld	a5,80(sp)
   1a4a0:	65a6                	ld	a1,72(sp)
   1a4a2:	ecfa                	sd	t5,88(sp)
   1a4a4:	40fc0c33          	sub	s8,s8,a5
   1a4a8:	863e                	mv	a2,a5
   1a4aa:	8562                	mv	a0,s8
   1a4ac:	f876                	sd	t4,48(sp)
   1a4ae:	f43a                	sd	a4,40(sp)
   1a4b0:	f0dfb0ef          	jal	ra,163bc <strncpy>
   1a4b4:	6786                	ld	a5,64(sp)
   1a4b6:	46a9                	li	a3,10
   1a4b8:	02dbd633          	divu	a2,s7,a3
   1a4bc:	0017c583          	lbu	a1,1(a5)
   1a4c0:	7722                	ld	a4,40(sp)
   1a4c2:	7ec2                	ld	t4,48(sp)
   1a4c4:	00b035b3          	snez	a1,a1
   1a4c8:	97ae                	add	a5,a5,a1
   1a4ca:	e0be                	sd	a5,64(sp)
   1a4cc:	6f66                	ld	t5,88(sp)
   1a4ce:	77e2                	ld	a5,56(sp)
   1a4d0:	4501                	li	a0,0
   1a4d2:	4e25                	li	t3,9
   1a4d4:	bf71                	j	1a470 <_svfiprintf_r+0x85c>
   1a4d6:	000dc683          	lbu	a3,0(s11)
   1a4da:	801ff06f          	j	19cda <_svfiprintf_r+0xc6>
   1a4de:	66c2                	ld	a3,16(sp)
   1a4e0:	6294                	ld	a3,0(a3)
   1a4e2:	8bb6                	mv	s7,a3
   1a4e4:	b2a5                	j	19e4c <_svfiprintf_r+0x238>
   1a4e6:	66c2                	ld	a3,16(sp)
   1a4e8:	0006bb83          	ld	s7,0(a3)
   1a4ec:	b25d                	j	19e92 <_svfiprintf_r+0x27e>
   1a4ee:	66c2                	ld	a3,16(sp)
   1a4f0:	e832                	sd	a2,16(sp)
   1a4f2:	0006bb83          	ld	s7,0(a3)
   1a4f6:	4685                	li	a3,1
   1a4f8:	b255                	j	19e9c <_svfiprintf_r+0x288>
   1a4fa:	6542                	ld	a0,16(sp)
   1a4fc:	6671                	lui	a2,0x1c
   1a4fe:	32860613          	addi	a2,a2,808 # 1c328 <__clzdi2+0x5c>
   1a502:	ec32                	sd	a2,24(sp)
   1a504:	020d7613          	andi	a2,s10,32
   1a508:	00850593          	addi	a1,a0,8
   1a50c:	c621                	beqz	a2,1a554 <_svfiprintf_r+0x940>
   1a50e:	00053b83          	ld	s7,0(a0)
   1a512:	001d7613          	andi	a2,s10,1
   1a516:	ce09                	beqz	a2,1a530 <_svfiprintf_r+0x91c>
   1a518:	000b8c63          	beqz	s7,1a530 <_svfiprintf_r+0x91c>
   1a51c:	002d6e13          	ori	t3,s10,2
   1a520:	03000613          	li	a2,48
   1a524:	06c10423          	sb	a2,104(sp)
   1a528:	06d104a3          	sb	a3,105(sp)
   1a52c:	000e0d1b          	sext.w	s10,t3
   1a530:	bffd7e93          	andi	t4,s10,-1025
   1a534:	2e81                	sext.w	t4,t4
   1a536:	e82e                	sd	a1,16(sp)
   1a538:	4689                	li	a3,2
   1a53a:	b28d                	j	19e9c <_svfiprintf_r+0x288>
   1a53c:	8eea                	mv	t4,s10
   1a53e:	b6a1                	j	1a086 <_svfiprintf_r+0x472>
   1a540:	6542                	ld	a0,16(sp)
   1a542:	6671                	lui	a2,0x1c
   1a544:	34060613          	addi	a2,a2,832 # 1c340 <__clzdi2+0x74>
   1a548:	ec32                	sd	a2,24(sp)
   1a54a:	020d7613          	andi	a2,s10,32
   1a54e:	00850593          	addi	a1,a0,8
   1a552:	fe55                	bnez	a2,1a50e <_svfiprintf_r+0x8fa>
   1a554:	010d7613          	andi	a2,s10,16
   1a558:	c229                	beqz	a2,1a59a <_svfiprintf_r+0x986>
   1a55a:	6642                	ld	a2,16(sp)
   1a55c:	00063b83          	ld	s7,0(a2)
   1a560:	bf4d                	j	1a512 <_svfiprintf_r+0x8fe>
   1a562:	8562                	mv	a0,s8
   1a564:	f83e                	sd	a5,48(sp)
   1a566:	f43a                	sd	a4,40(sp)
   1a568:	e842                	sd	a6,16(sp)
   1a56a:	dc3fb0ef          	jal	ra,1632c <strlen>
   1a56e:	7722                	ld	a4,40(sp)
   1a570:	77c2                	ld	a5,48(sp)
   1a572:	0005091b          	sext.w	s2,a0
   1a576:	4c81                	li	s9,0
   1a578:	bab1                	j	19ed4 <_svfiprintf_r+0x2c0>
   1a57a:	04000593          	li	a1,64
   1a57e:	e7afa0ef          	jal	ra,14bf8 <_malloc_r>
   1a582:	00a9b023          	sd	a0,0(s3)
   1a586:	00a9bc23          	sd	a0,24(s3)
   1a58a:	10050f63          	beqz	a0,1a6a8 <_svfiprintf_r+0xa94>
   1a58e:	04000793          	li	a5,64
   1a592:	02f9a023          	sw	a5,32(s3)
   1a596:	eb2ff06f          	j	19c48 <_svfiprintf_r+0x34>
   1a59a:	6542                	ld	a0,16(sp)
   1a59c:	040d7613          	andi	a2,s10,64
   1a5a0:	00052b83          	lw	s7,0(a0)
   1a5a4:	ce3d                	beqz	a2,1a622 <_svfiprintf_r+0xa0e>
   1a5a6:	1bc2                	slli	s7,s7,0x30
   1a5a8:	030bdb93          	srli	s7,s7,0x30
   1a5ac:	b79d                	j	1a512 <_svfiprintf_r+0x8fe>
   1a5ae:	8eea                	mv	t4,s10
   1a5b0:	e832                	sd	a2,16(sp)
   1a5b2:	b845                	j	19e62 <_svfiprintf_r+0x24e>
   1a5b4:	020d6e13          	ori	t3,s10,32
   1a5b8:	001dc683          	lbu	a3,1(s11)
   1a5bc:	000e0d1b          	sext.w	s10,t3
   1a5c0:	0d85                	addi	s11,s11,1
   1a5c2:	f18ff06f          	j	19cda <_svfiprintf_r+0xc6>
   1a5c6:	200d6e13          	ori	t3,s10,512
   1a5ca:	001dc683          	lbu	a3,1(s11)
   1a5ce:	000e0d1b          	sext.w	s10,t3
   1a5d2:	0d85                	addi	s11,s11,1
   1a5d4:	f06ff06f          	j	19cda <_svfiprintf_r+0xc6>
   1a5d8:	4699                	li	a3,6
   1a5da:	000c891b          	sext.w	s2,s9
   1a5de:	0196f363          	bgeu	a3,s9,1a5e4 <_svfiprintf_r+0x9d0>
   1a5e2:	4919                	li	s2,6
   1a5e4:	e842                	sd	a6,16(sp)
   1a5e6:	6871                	lui	a6,0x1c
   1a5e8:	8bca                	mv	s7,s2
   1a5ea:	35880c13          	addi	s8,a6,856 # 1c358 <__clzdi2+0x8c>
   1a5ee:	f54ff06f          	j	19d42 <_svfiprintf_r+0x12e>
   1a5f2:	200d7693          	andi	a3,s10,512
   1a5f6:	cea1                	beqz	a3,1a64e <_svfiprintf_r+0xa3a>
   1a5f8:	018b9b9b          	slliw	s7,s7,0x18
   1a5fc:	418bdb9b          	sraiw	s7,s7,0x18
   1a600:	86de                	mv	a3,s7
   1a602:	84bff06f          	j	19e4c <_svfiprintf_r+0x238>
   1a606:	200ef693          	andi	a3,t4,512
   1a60a:	ca9d                	beqz	a3,1a640 <_svfiprintf_r+0xa2c>
   1a60c:	0ffbfb93          	zext.b	s7,s7
   1a610:	e832                	sd	a2,16(sp)
   1a612:	4685                	li	a3,1
   1a614:	b061                	j	19e9c <_svfiprintf_r+0x288>
   1a616:	200d7693          	andi	a3,s10,512
   1a61a:	ce91                	beqz	a3,1a636 <_svfiprintf_r+0xa22>
   1a61c:	0ffbfb93          	zext.b	s7,s7
   1a620:	b88d                	j	19e92 <_svfiprintf_r+0x27e>
   1a622:	200d7613          	andi	a2,s10,512
   1a626:	c601                	beqz	a2,1a62e <_svfiprintf_r+0xa1a>
   1a628:	0ffbfb93          	zext.b	s7,s7
   1a62c:	b5dd                	j	1a512 <_svfiprintf_r+0x8fe>
   1a62e:	1b82                	slli	s7,s7,0x20
   1a630:	020bdb93          	srli	s7,s7,0x20
   1a634:	bdf9                	j	1a512 <_svfiprintf_r+0x8fe>
   1a636:	1b82                	slli	s7,s7,0x20
   1a638:	020bdb93          	srli	s7,s7,0x20
   1a63c:	857ff06f          	j	19e92 <_svfiprintf_r+0x27e>
   1a640:	1b82                	slli	s7,s7,0x20
   1a642:	020bdb93          	srli	s7,s7,0x20
   1a646:	e832                	sd	a2,16(sp)
   1a648:	4685                	li	a3,1
   1a64a:	853ff06f          	j	19e9c <_svfiprintf_r+0x288>
   1a64e:	86de                	mv	a3,s7
   1a650:	ffcff06f          	j	19e4c <_svfiprintf_r+0x238>
   1a654:	66a2                	ld	a3,8(sp)
   1a656:	00d61023          	sh	a3,0(a2)
   1a65a:	e1aff06f          	j	19c74 <_svfiprintf_r+0x60>
   1a65e:	1890                	addi	a2,sp,112
   1a660:	85ce                	mv	a1,s3
   1a662:	8556                	mv	a0,s5
   1a664:	c5aff0ef          	jal	ra,19abe <__ssprint_r>
   1a668:	f90ff06f          	j	19df8 <_svfiprintf_r+0x1e4>
   1a66c:	8966                	mv	s2,s9
   1a66e:	e842                	sd	a6,16(sp)
   1a670:	4c81                	li	s9,0
   1a672:	b08d                	j	19ed4 <_svfiprintf_r+0x2c0>
   1a674:	8eea                	mv	t4,s10
   1a676:	ff2ff06f          	j	19e68 <_svfiprintf_r+0x254>
   1a67a:	c214                	sw	a3,0(a2)
   1a67c:	df8ff06f          	j	19c74 <_svfiprintf_r+0x60>
   1a680:	57fd                	li	a5,-1
   1a682:	e43e                	sd	a5,8(sp)
   1a684:	f80ff06f          	j	19e04 <_svfiprintf_r+0x1f0>
   1a688:	65c2                	ld	a1,16(sp)
   1a68a:	4194                	lw	a3,0(a1)
   1a68c:	00858c13          	addi	s8,a1,8
   1a690:	88b6                	mv	a7,a3
   1a692:	0006d363          	bgez	a3,1a698 <_svfiprintf_r+0xa84>
   1a696:	58fd                	li	a7,-1
   1a698:	001dc683          	lbu	a3,1(s11)
   1a69c:	00088c9b          	sext.w	s9,a7
   1a6a0:	e862                	sd	s8,16(sp)
   1a6a2:	8db2                	mv	s11,a2
   1a6a4:	e36ff06f          	j	19cda <_svfiprintf_r+0xc6>
   1a6a8:	47b1                	li	a5,12
   1a6aa:	00faa023          	sw	a5,0(s5)
   1a6ae:	57fd                	li	a5,-1
   1a6b0:	e43e                	sd	a5,8(sp)
   1a6b2:	f52ff06f          	j	19e04 <_svfiprintf_r+0x1f0>

000000000001a6b6 <__swbuf_r>:
   1a6b6:	7179                	addi	sp,sp,-48
   1a6b8:	f022                	sd	s0,32(sp)
   1a6ba:	ec26                	sd	s1,24(sp)
   1a6bc:	e84a                	sd	s2,16(sp)
   1a6be:	f406                	sd	ra,40(sp)
   1a6c0:	e44e                	sd	s3,8(sp)
   1a6c2:	892a                	mv	s2,a0
   1a6c4:	84ae                	mv	s1,a1
   1a6c6:	8432                	mv	s0,a2
   1a6c8:	c119                	beqz	a0,1a6ce <__swbuf_r+0x18>
   1a6ca:	493c                	lw	a5,80(a0)
   1a6cc:	cff1                	beqz	a5,1a7a8 <__swbuf_r+0xf2>
   1a6ce:	01041703          	lh	a4,16(s0)
   1a6d2:	5414                	lw	a3,40(s0)
   1a6d4:	00877793          	andi	a5,a4,8
   1a6d8:	c454                	sw	a3,12(s0)
   1a6da:	03071693          	slli	a3,a4,0x30
   1a6de:	92c1                	srli	a3,a3,0x30
   1a6e0:	cbb1                	beqz	a5,1a734 <__swbuf_r+0x7e>
   1a6e2:	6c1c                	ld	a5,24(s0)
   1a6e4:	cba1                	beqz	a5,1a734 <__swbuf_r+0x7e>
   1a6e6:	6609                	lui	a2,0x2
   1a6e8:	0ff4f993          	zext.b	s3,s1
   1a6ec:	8ef1                	and	a3,a3,a2
   1a6ee:	84ce                	mv	s1,s3
   1a6f0:	c2bd                	beqz	a3,1a756 <__swbuf_r+0xa0>
   1a6f2:	6018                	ld	a4,0(s0)
   1a6f4:	5014                	lw	a3,32(s0)
   1a6f6:	40f707bb          	subw	a5,a4,a5
   1a6fa:	06d7de63          	bge	a5,a3,1a776 <__swbuf_r+0xc0>
   1a6fe:	4454                	lw	a3,12(s0)
   1a700:	00170613          	addi	a2,a4,1
   1a704:	e010                	sd	a2,0(s0)
   1a706:	36fd                	addiw	a3,a3,-1
   1a708:	c454                	sw	a3,12(s0)
   1a70a:	01370023          	sb	s3,0(a4)
   1a70e:	5018                	lw	a4,32(s0)
   1a710:	2785                	addiw	a5,a5,1
   1a712:	08f70463          	beq	a4,a5,1a79a <__swbuf_r+0xe4>
   1a716:	01045783          	lhu	a5,16(s0)
   1a71a:	8b85                	andi	a5,a5,1
   1a71c:	c781                	beqz	a5,1a724 <__swbuf_r+0x6e>
   1a71e:	47a9                	li	a5,10
   1a720:	06f48d63          	beq	s1,a5,1a79a <__swbuf_r+0xe4>
   1a724:	70a2                	ld	ra,40(sp)
   1a726:	7402                	ld	s0,32(sp)
   1a728:	6942                	ld	s2,16(sp)
   1a72a:	69a2                	ld	s3,8(sp)
   1a72c:	8526                	mv	a0,s1
   1a72e:	64e2                	ld	s1,24(sp)
   1a730:	6145                	addi	sp,sp,48
   1a732:	8082                	ret
   1a734:	85a2                	mv	a1,s0
   1a736:	854a                	mv	a0,s2
   1a738:	f70f70ef          	jal	ra,11ea8 <__swsetup_r>
   1a73c:	e525                	bnez	a0,1a7a4 <__swbuf_r+0xee>
   1a73e:	01041703          	lh	a4,16(s0)
   1a742:	6609                	lui	a2,0x2
   1a744:	0ff4f993          	zext.b	s3,s1
   1a748:	03071693          	slli	a3,a4,0x30
   1a74c:	92c1                	srli	a3,a3,0x30
   1a74e:	8ef1                	and	a3,a3,a2
   1a750:	6c1c                	ld	a5,24(s0)
   1a752:	84ce                	mv	s1,s3
   1a754:	fed9                	bnez	a3,1a6f2 <__swbuf_r+0x3c>
   1a756:	0ac42683          	lw	a3,172(s0)
   1a75a:	8f51                	or	a4,a4,a2
   1a75c:	7679                	lui	a2,0xffffe
   1a75e:	167d                	addi	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffdec2f>
   1a760:	8ef1                	and	a3,a3,a2
   1a762:	00e41823          	sh	a4,16(s0)
   1a766:	6018                	ld	a4,0(s0)
   1a768:	0ad42623          	sw	a3,172(s0)
   1a76c:	5014                	lw	a3,32(s0)
   1a76e:	40f707bb          	subw	a5,a4,a5
   1a772:	f8d7c6e3          	blt	a5,a3,1a6fe <__swbuf_r+0x48>
   1a776:	85a2                	mv	a1,s0
   1a778:	854a                	mv	a0,s2
   1a77a:	a7bf70ef          	jal	ra,121f4 <_fflush_r>
   1a77e:	e11d                	bnez	a0,1a7a4 <__swbuf_r+0xee>
   1a780:	6018                	ld	a4,0(s0)
   1a782:	4454                	lw	a3,12(s0)
   1a784:	4785                	li	a5,1
   1a786:	00170613          	addi	a2,a4,1
   1a78a:	36fd                	addiw	a3,a3,-1
   1a78c:	e010                	sd	a2,0(s0)
   1a78e:	c454                	sw	a3,12(s0)
   1a790:	01370023          	sb	s3,0(a4)
   1a794:	5018                	lw	a4,32(s0)
   1a796:	f8f710e3          	bne	a4,a5,1a716 <__swbuf_r+0x60>
   1a79a:	85a2                	mv	a1,s0
   1a79c:	854a                	mv	a0,s2
   1a79e:	a57f70ef          	jal	ra,121f4 <_fflush_r>
   1a7a2:	d149                	beqz	a0,1a724 <__swbuf_r+0x6e>
   1a7a4:	54fd                	li	s1,-1
   1a7a6:	bfbd                	j	1a724 <__swbuf_r+0x6e>
   1a7a8:	d29f70ef          	jal	ra,124d0 <__sinit>
   1a7ac:	b70d                	j	1a6ce <__swbuf_r+0x18>

000000000001a7ae <__swbuf>:
   1a7ae:	87aa                	mv	a5,a0
   1a7b0:	7581b503          	ld	a0,1880(gp) # 1f328 <_impure_ptr>
   1a7b4:	862e                	mv	a2,a1
   1a7b6:	85be                	mv	a1,a5
   1a7b8:	effff06f          	j	1a6b6 <__swbuf_r>

000000000001a7bc <_wcrtomb_r>:
   1a7bc:	7179                	addi	sp,sp,-48
   1a7be:	f022                	sd	s0,32(sp)
   1a7c0:	ec26                	sd	s1,24(sp)
   1a7c2:	f406                	sd	ra,40(sp)
   1a7c4:	e401b783          	ld	a5,-448(gp) # 1ea10 <__global_locale+0xe0>
   1a7c8:	842a                	mv	s0,a0
   1a7ca:	84b6                	mv	s1,a3
   1a7cc:	c991                	beqz	a1,1a7e0 <_wcrtomb_r+0x24>
   1a7ce:	9782                	jalr	a5
   1a7d0:	57fd                	li	a5,-1
   1a7d2:	00f50d63          	beq	a0,a5,1a7ec <_wcrtomb_r+0x30>
   1a7d6:	70a2                	ld	ra,40(sp)
   1a7d8:	7402                	ld	s0,32(sp)
   1a7da:	64e2                	ld	s1,24(sp)
   1a7dc:	6145                	addi	sp,sp,48
   1a7de:	8082                	ret
   1a7e0:	4601                	li	a2,0
   1a7e2:	858a                	mv	a1,sp
   1a7e4:	9782                	jalr	a5
   1a7e6:	57fd                	li	a5,-1
   1a7e8:	fef517e3          	bne	a0,a5,1a7d6 <_wcrtomb_r+0x1a>
   1a7ec:	0004a023          	sw	zero,0(s1)
   1a7f0:	08a00793          	li	a5,138
   1a7f4:	70a2                	ld	ra,40(sp)
   1a7f6:	c01c                	sw	a5,0(s0)
   1a7f8:	7402                	ld	s0,32(sp)
   1a7fa:	64e2                	ld	s1,24(sp)
   1a7fc:	6145                	addi	sp,sp,48
   1a7fe:	8082                	ret

000000000001a800 <wcrtomb>:
   1a800:	7179                	addi	sp,sp,-48
   1a802:	f022                	sd	s0,32(sp)
   1a804:	ec26                	sd	s1,24(sp)
   1a806:	f406                	sd	ra,40(sp)
   1a808:	7581b483          	ld	s1,1880(gp) # 1f328 <_impure_ptr>
   1a80c:	e401b783          	ld	a5,-448(gp) # 1ea10 <__global_locale+0xe0>
   1a810:	8432                	mv	s0,a2
   1a812:	cd11                	beqz	a0,1a82e <wcrtomb+0x2e>
   1a814:	862e                	mv	a2,a1
   1a816:	86a2                	mv	a3,s0
   1a818:	85aa                	mv	a1,a0
   1a81a:	8526                	mv	a0,s1
   1a81c:	9782                	jalr	a5
   1a81e:	57fd                	li	a5,-1
   1a820:	00f50f63          	beq	a0,a5,1a83e <wcrtomb+0x3e>
   1a824:	70a2                	ld	ra,40(sp)
   1a826:	7402                	ld	s0,32(sp)
   1a828:	64e2                	ld	s1,24(sp)
   1a82a:	6145                	addi	sp,sp,48
   1a82c:	8082                	ret
   1a82e:	86b2                	mv	a3,a2
   1a830:	858a                	mv	a1,sp
   1a832:	4601                	li	a2,0
   1a834:	8526                	mv	a0,s1
   1a836:	9782                	jalr	a5
   1a838:	57fd                	li	a5,-1
   1a83a:	fef515e3          	bne	a0,a5,1a824 <wcrtomb+0x24>
   1a83e:	00042023          	sw	zero,0(s0)
   1a842:	70a2                	ld	ra,40(sp)
   1a844:	7402                	ld	s0,32(sp)
   1a846:	08a00793          	li	a5,138
   1a84a:	c09c                	sw	a5,0(s1)
   1a84c:	64e2                	ld	s1,24(sp)
   1a84e:	6145                	addi	sp,sp,48
   1a850:	8082                	ret

000000000001a852 <abort>:
   1a852:	1141                	addi	sp,sp,-16
   1a854:	4519                	li	a0,6
   1a856:	e406                	sd	ra,8(sp)
   1a858:	224000ef          	jal	ra,1aa7c <raise>
   1a85c:	4505                	li	a0,1
   1a85e:	436000ef          	jal	ra,1ac94 <_exit>

000000000001a862 <__register_exitproc>:
   1a862:	7481b703          	ld	a4,1864(gp) # 1f318 <_global_impure_ptr>
   1a866:	1f873783          	ld	a5,504(a4)
   1a86a:	c3b1                	beqz	a5,1a8ae <__register_exitproc+0x4c>
   1a86c:	4798                	lw	a4,8(a5)
   1a86e:	487d                	li	a6,31
   1a870:	06e84263          	blt	a6,a4,1a8d4 <__register_exitproc+0x72>
   1a874:	c505                	beqz	a0,1a89c <__register_exitproc+0x3a>
   1a876:	00371813          	slli	a6,a4,0x3
   1a87a:	983e                	add	a6,a6,a5
   1a87c:	10c83823          	sd	a2,272(a6)
   1a880:	3107a883          	lw	a7,784(a5)
   1a884:	4605                	li	a2,1
   1a886:	00e6163b          	sllw	a2,a2,a4
   1a88a:	00c8e8b3          	or	a7,a7,a2
   1a88e:	3117a823          	sw	a7,784(a5)
   1a892:	20d83823          	sd	a3,528(a6)
   1a896:	4689                	li	a3,2
   1a898:	02d50063          	beq	a0,a3,1a8b8 <__register_exitproc+0x56>
   1a89c:	00270693          	addi	a3,a4,2
   1a8a0:	068e                	slli	a3,a3,0x3
   1a8a2:	2705                	addiw	a4,a4,1
   1a8a4:	c798                	sw	a4,8(a5)
   1a8a6:	97b6                	add	a5,a5,a3
   1a8a8:	e38c                	sd	a1,0(a5)
   1a8aa:	4501                	li	a0,0
   1a8ac:	8082                	ret
   1a8ae:	20070793          	addi	a5,a4,512
   1a8b2:	1ef73c23          	sd	a5,504(a4)
   1a8b6:	bf5d                	j	1a86c <__register_exitproc+0xa>
   1a8b8:	3147a683          	lw	a3,788(a5)
   1a8bc:	4501                	li	a0,0
   1a8be:	8ed1                	or	a3,a3,a2
   1a8c0:	30d7aa23          	sw	a3,788(a5)
   1a8c4:	00270693          	addi	a3,a4,2
   1a8c8:	068e                	slli	a3,a3,0x3
   1a8ca:	2705                	addiw	a4,a4,1
   1a8cc:	c798                	sw	a4,8(a5)
   1a8ce:	97b6                	add	a5,a5,a3
   1a8d0:	e38c                	sd	a1,0(a5)
   1a8d2:	8082                	ret
   1a8d4:	557d                	li	a0,-1
   1a8d6:	8082                	ret

000000000001a8d8 <_init_signal_r>:
   1a8d8:	51853783          	ld	a5,1304(a0)
   1a8dc:	c399                	beqz	a5,1a8e2 <_init_signal_r+0xa>
   1a8de:	4501                	li	a0,0
   1a8e0:	8082                	ret
   1a8e2:	1141                	addi	sp,sp,-16
   1a8e4:	10000593          	li	a1,256
   1a8e8:	e022                	sd	s0,0(sp)
   1a8ea:	e406                	sd	ra,8(sp)
   1a8ec:	842a                	mv	s0,a0
   1a8ee:	b0afa0ef          	jal	ra,14bf8 <_malloc_r>
   1a8f2:	50a43c23          	sd	a0,1304(s0)
   1a8f6:	cd09                	beqz	a0,1a910 <_init_signal_r+0x38>
   1a8f8:	10050793          	addi	a5,a0,256
   1a8fc:	00053023          	sd	zero,0(a0)
   1a900:	0521                	addi	a0,a0,8
   1a902:	fef51de3          	bne	a0,a5,1a8fc <_init_signal_r+0x24>
   1a906:	4501                	li	a0,0
   1a908:	60a2                	ld	ra,8(sp)
   1a90a:	6402                	ld	s0,0(sp)
   1a90c:	0141                	addi	sp,sp,16
   1a90e:	8082                	ret
   1a910:	557d                	li	a0,-1
   1a912:	bfdd                	j	1a908 <_init_signal_r+0x30>

000000000001a914 <_signal_r>:
   1a914:	7179                	addi	sp,sp,-48
   1a916:	ec26                	sd	s1,24(sp)
   1a918:	f406                	sd	ra,40(sp)
   1a91a:	f022                	sd	s0,32(sp)
   1a91c:	47fd                	li	a5,31
   1a91e:	84aa                	mv	s1,a0
   1a920:	00b7ef63          	bltu	a5,a1,1a93e <_signal_r+0x2a>
   1a924:	51853703          	ld	a4,1304(a0)
   1a928:	842e                	mv	s0,a1
   1a92a:	c315                	beqz	a4,1a94e <_signal_r+0x3a>
   1a92c:	040e                	slli	s0,s0,0x3
   1a92e:	9722                	add	a4,a4,s0
   1a930:	6308                	ld	a0,0(a4)
   1a932:	e310                	sd	a2,0(a4)
   1a934:	70a2                	ld	ra,40(sp)
   1a936:	7402                	ld	s0,32(sp)
   1a938:	64e2                	ld	s1,24(sp)
   1a93a:	6145                	addi	sp,sp,48
   1a93c:	8082                	ret
   1a93e:	70a2                	ld	ra,40(sp)
   1a940:	7402                	ld	s0,32(sp)
   1a942:	47d9                	li	a5,22
   1a944:	c11c                	sw	a5,0(a0)
   1a946:	64e2                	ld	s1,24(sp)
   1a948:	557d                	li	a0,-1
   1a94a:	6145                	addi	sp,sp,48
   1a94c:	8082                	ret
   1a94e:	10000593          	li	a1,256
   1a952:	e432                	sd	a2,8(sp)
   1a954:	aa4fa0ef          	jal	ra,14bf8 <_malloc_r>
   1a958:	50a4bc23          	sd	a0,1304(s1)
   1a95c:	872a                	mv	a4,a0
   1a95e:	c919                	beqz	a0,1a974 <_signal_r+0x60>
   1a960:	6622                	ld	a2,8(sp)
   1a962:	87aa                	mv	a5,a0
   1a964:	10050693          	addi	a3,a0,256
   1a968:	0007b023          	sd	zero,0(a5)
   1a96c:	07a1                	addi	a5,a5,8
   1a96e:	fef69de3          	bne	a3,a5,1a968 <_signal_r+0x54>
   1a972:	bf6d                	j	1a92c <_signal_r+0x18>
   1a974:	557d                	li	a0,-1
   1a976:	bf7d                	j	1a934 <_signal_r+0x20>

000000000001a978 <_raise_r>:
   1a978:	1101                	addi	sp,sp,-32
   1a97a:	e426                	sd	s1,8(sp)
   1a97c:	ec06                	sd	ra,24(sp)
   1a97e:	e822                	sd	s0,16(sp)
   1a980:	47fd                	li	a5,31
   1a982:	84aa                	mv	s1,a0
   1a984:	06b7e463          	bltu	a5,a1,1a9ec <_raise_r+0x74>
   1a988:	51853783          	ld	a5,1304(a0)
   1a98c:	842e                	mv	s0,a1
   1a98e:	c795                	beqz	a5,1a9ba <_raise_r+0x42>
   1a990:	00359713          	slli	a4,a1,0x3
   1a994:	97ba                	add	a5,a5,a4
   1a996:	6398                	ld	a4,0(a5)
   1a998:	c30d                	beqz	a4,1a9ba <_raise_r+0x42>
   1a99a:	4685                	li	a3,1
   1a99c:	04d70263          	beq	a4,a3,1a9e0 <_raise_r+0x68>
   1a9a0:	56fd                	li	a3,-1
   1a9a2:	02d70763          	beq	a4,a3,1a9d0 <_raise_r+0x58>
   1a9a6:	852e                	mv	a0,a1
   1a9a8:	0007b023          	sd	zero,0(a5)
   1a9ac:	9702                	jalr	a4
   1a9ae:	4501                	li	a0,0
   1a9b0:	60e2                	ld	ra,24(sp)
   1a9b2:	6442                	ld	s0,16(sp)
   1a9b4:	64a2                	ld	s1,8(sp)
   1a9b6:	6105                	addi	sp,sp,32
   1a9b8:	8082                	ret
   1a9ba:	8526                	mv	a0,s1
   1a9bc:	2aa000ef          	jal	ra,1ac66 <_getpid_r>
   1a9c0:	8622                	mv	a2,s0
   1a9c2:	6442                	ld	s0,16(sp)
   1a9c4:	60e2                	ld	ra,24(sp)
   1a9c6:	85aa                	mv	a1,a0
   1a9c8:	8526                	mv	a0,s1
   1a9ca:	64a2                	ld	s1,8(sp)
   1a9cc:	6105                	addi	sp,sp,32
   1a9ce:	acb9                	j	1ac2c <_kill_r>
   1a9d0:	60e2                	ld	ra,24(sp)
   1a9d2:	6442                	ld	s0,16(sp)
   1a9d4:	47d9                	li	a5,22
   1a9d6:	c11c                	sw	a5,0(a0)
   1a9d8:	64a2                	ld	s1,8(sp)
   1a9da:	4505                	li	a0,1
   1a9dc:	6105                	addi	sp,sp,32
   1a9de:	8082                	ret
   1a9e0:	60e2                	ld	ra,24(sp)
   1a9e2:	6442                	ld	s0,16(sp)
   1a9e4:	64a2                	ld	s1,8(sp)
   1a9e6:	4501                	li	a0,0
   1a9e8:	6105                	addi	sp,sp,32
   1a9ea:	8082                	ret
   1a9ec:	47d9                	li	a5,22
   1a9ee:	c11c                	sw	a5,0(a0)
   1a9f0:	557d                	li	a0,-1
   1a9f2:	bf7d                	j	1a9b0 <_raise_r+0x38>

000000000001a9f4 <__sigtramp_r>:
   1a9f4:	47fd                	li	a5,31
   1a9f6:	08b7e163          	bltu	a5,a1,1aa78 <__sigtramp_r+0x84>
   1a9fa:	51853703          	ld	a4,1304(a0)
   1a9fe:	1101                	addi	sp,sp,-32
   1aa00:	e822                	sd	s0,16(sp)
   1aa02:	e426                	sd	s1,8(sp)
   1aa04:	ec06                	sd	ra,24(sp)
   1aa06:	842e                	mv	s0,a1
   1aa08:	84aa                	mv	s1,a0
   1aa0a:	cf05                	beqz	a4,1aa42 <__sigtramp_r+0x4e>
   1aa0c:	00341793          	slli	a5,s0,0x3
   1aa10:	973e                	add	a4,a4,a5
   1aa12:	631c                	ld	a5,0(a4)
   1aa14:	c38d                	beqz	a5,1aa36 <__sigtramp_r+0x42>
   1aa16:	56fd                	li	a3,-1
   1aa18:	04d78c63          	beq	a5,a3,1aa70 <__sigtramp_r+0x7c>
   1aa1c:	4685                	li	a3,1
   1aa1e:	04d78363          	beq	a5,a3,1aa64 <__sigtramp_r+0x70>
   1aa22:	8522                	mv	a0,s0
   1aa24:	00073023          	sd	zero,0(a4)
   1aa28:	9782                	jalr	a5
   1aa2a:	4501                	li	a0,0
   1aa2c:	60e2                	ld	ra,24(sp)
   1aa2e:	6442                	ld	s0,16(sp)
   1aa30:	64a2                	ld	s1,8(sp)
   1aa32:	6105                	addi	sp,sp,32
   1aa34:	8082                	ret
   1aa36:	60e2                	ld	ra,24(sp)
   1aa38:	6442                	ld	s0,16(sp)
   1aa3a:	64a2                	ld	s1,8(sp)
   1aa3c:	4505                	li	a0,1
   1aa3e:	6105                	addi	sp,sp,32
   1aa40:	8082                	ret
   1aa42:	10000593          	li	a1,256
   1aa46:	9b2fa0ef          	jal	ra,14bf8 <_malloc_r>
   1aa4a:	50a4bc23          	sd	a0,1304(s1)
   1aa4e:	872a                	mv	a4,a0
   1aa50:	c115                	beqz	a0,1aa74 <__sigtramp_r+0x80>
   1aa52:	87aa                	mv	a5,a0
   1aa54:	10050693          	addi	a3,a0,256
   1aa58:	0007b023          	sd	zero,0(a5)
   1aa5c:	07a1                	addi	a5,a5,8
   1aa5e:	fed79de3          	bne	a5,a3,1aa58 <__sigtramp_r+0x64>
   1aa62:	b76d                	j	1aa0c <__sigtramp_r+0x18>
   1aa64:	60e2                	ld	ra,24(sp)
   1aa66:	6442                	ld	s0,16(sp)
   1aa68:	64a2                	ld	s1,8(sp)
   1aa6a:	450d                	li	a0,3
   1aa6c:	6105                	addi	sp,sp,32
   1aa6e:	8082                	ret
   1aa70:	4509                	li	a0,2
   1aa72:	bf6d                	j	1aa2c <__sigtramp_r+0x38>
   1aa74:	557d                	li	a0,-1
   1aa76:	bf5d                	j	1aa2c <__sigtramp_r+0x38>
   1aa78:	557d                	li	a0,-1
   1aa7a:	8082                	ret

000000000001aa7c <raise>:
   1aa7c:	1101                	addi	sp,sp,-32
   1aa7e:	e426                	sd	s1,8(sp)
   1aa80:	ec06                	sd	ra,24(sp)
   1aa82:	e822                	sd	s0,16(sp)
   1aa84:	47fd                	li	a5,31
   1aa86:	7581b483          	ld	s1,1880(gp) # 1f328 <_impure_ptr>
   1aa8a:	06a7e363          	bltu	a5,a0,1aaf0 <raise+0x74>
   1aa8e:	5184b783          	ld	a5,1304(s1)
   1aa92:	842a                	mv	s0,a0
   1aa94:	c78d                	beqz	a5,1aabe <raise+0x42>
   1aa96:	00351713          	slli	a4,a0,0x3
   1aa9a:	97ba                	add	a5,a5,a4
   1aa9c:	6398                	ld	a4,0(a5)
   1aa9e:	c305                	beqz	a4,1aabe <raise+0x42>
   1aaa0:	4685                	li	a3,1
   1aaa2:	04d70163          	beq	a4,a3,1aae4 <raise+0x68>
   1aaa6:	56fd                	li	a3,-1
   1aaa8:	02d70663          	beq	a4,a3,1aad4 <raise+0x58>
   1aaac:	0007b023          	sd	zero,0(a5)
   1aab0:	9702                	jalr	a4
   1aab2:	4501                	li	a0,0
   1aab4:	60e2                	ld	ra,24(sp)
   1aab6:	6442                	ld	s0,16(sp)
   1aab8:	64a2                	ld	s1,8(sp)
   1aaba:	6105                	addi	sp,sp,32
   1aabc:	8082                	ret
   1aabe:	8526                	mv	a0,s1
   1aac0:	1a6000ef          	jal	ra,1ac66 <_getpid_r>
   1aac4:	8622                	mv	a2,s0
   1aac6:	6442                	ld	s0,16(sp)
   1aac8:	60e2                	ld	ra,24(sp)
   1aaca:	85aa                	mv	a1,a0
   1aacc:	8526                	mv	a0,s1
   1aace:	64a2                	ld	s1,8(sp)
   1aad0:	6105                	addi	sp,sp,32
   1aad2:	aaa9                	j	1ac2c <_kill_r>
   1aad4:	60e2                	ld	ra,24(sp)
   1aad6:	6442                	ld	s0,16(sp)
   1aad8:	47d9                	li	a5,22
   1aada:	c09c                	sw	a5,0(s1)
   1aadc:	4505                	li	a0,1
   1aade:	64a2                	ld	s1,8(sp)
   1aae0:	6105                	addi	sp,sp,32
   1aae2:	8082                	ret
   1aae4:	60e2                	ld	ra,24(sp)
   1aae6:	6442                	ld	s0,16(sp)
   1aae8:	64a2                	ld	s1,8(sp)
   1aaea:	4501                	li	a0,0
   1aaec:	6105                	addi	sp,sp,32
   1aaee:	8082                	ret
   1aaf0:	47d9                	li	a5,22
   1aaf2:	c09c                	sw	a5,0(s1)
   1aaf4:	557d                	li	a0,-1
   1aaf6:	bf7d                	j	1aab4 <raise+0x38>

000000000001aaf8 <signal>:
   1aaf8:	1101                	addi	sp,sp,-32
   1aafa:	e04a                	sd	s2,0(sp)
   1aafc:	ec06                	sd	ra,24(sp)
   1aafe:	e822                	sd	s0,16(sp)
   1ab00:	e426                	sd	s1,8(sp)
   1ab02:	47fd                	li	a5,31
   1ab04:	7581b903          	ld	s2,1880(gp) # 1f328 <_impure_ptr>
   1ab08:	02a7e263          	bltu	a5,a0,1ab2c <signal+0x34>
   1ab0c:	842a                	mv	s0,a0
   1ab0e:	51893503          	ld	a0,1304(s2)
   1ab12:	84ae                	mv	s1,a1
   1ab14:	c515                	beqz	a0,1ab40 <signal+0x48>
   1ab16:	040e                	slli	s0,s0,0x3
   1ab18:	008507b3          	add	a5,a0,s0
   1ab1c:	6388                	ld	a0,0(a5)
   1ab1e:	e384                	sd	s1,0(a5)
   1ab20:	60e2                	ld	ra,24(sp)
   1ab22:	6442                	ld	s0,16(sp)
   1ab24:	64a2                	ld	s1,8(sp)
   1ab26:	6902                	ld	s2,0(sp)
   1ab28:	6105                	addi	sp,sp,32
   1ab2a:	8082                	ret
   1ab2c:	60e2                	ld	ra,24(sp)
   1ab2e:	6442                	ld	s0,16(sp)
   1ab30:	47d9                	li	a5,22
   1ab32:	00f92023          	sw	a5,0(s2)
   1ab36:	64a2                	ld	s1,8(sp)
   1ab38:	6902                	ld	s2,0(sp)
   1ab3a:	557d                	li	a0,-1
   1ab3c:	6105                	addi	sp,sp,32
   1ab3e:	8082                	ret
   1ab40:	10000593          	li	a1,256
   1ab44:	854a                	mv	a0,s2
   1ab46:	8b2fa0ef          	jal	ra,14bf8 <_malloc_r>
   1ab4a:	50a93c23          	sd	a0,1304(s2)
   1ab4e:	c911                	beqz	a0,1ab62 <signal+0x6a>
   1ab50:	87aa                	mv	a5,a0
   1ab52:	10050713          	addi	a4,a0,256
   1ab56:	0007b023          	sd	zero,0(a5)
   1ab5a:	07a1                	addi	a5,a5,8
   1ab5c:	fef71de3          	bne	a4,a5,1ab56 <signal+0x5e>
   1ab60:	bf5d                	j	1ab16 <signal+0x1e>
   1ab62:	557d                	li	a0,-1
   1ab64:	bf75                	j	1ab20 <signal+0x28>

000000000001ab66 <_init_signal>:
   1ab66:	1141                	addi	sp,sp,-16
   1ab68:	e022                	sd	s0,0(sp)
   1ab6a:	7581b403          	ld	s0,1880(gp) # 1f328 <_impure_ptr>
   1ab6e:	e406                	sd	ra,8(sp)
   1ab70:	51843783          	ld	a5,1304(s0)
   1ab74:	c791                	beqz	a5,1ab80 <_init_signal+0x1a>
   1ab76:	4501                	li	a0,0
   1ab78:	60a2                	ld	ra,8(sp)
   1ab7a:	6402                	ld	s0,0(sp)
   1ab7c:	0141                	addi	sp,sp,16
   1ab7e:	8082                	ret
   1ab80:	10000593          	li	a1,256
   1ab84:	8522                	mv	a0,s0
   1ab86:	872fa0ef          	jal	ra,14bf8 <_malloc_r>
   1ab8a:	50a43c23          	sd	a0,1304(s0)
   1ab8e:	c909                	beqz	a0,1aba0 <_init_signal+0x3a>
   1ab90:	10050793          	addi	a5,a0,256
   1ab94:	00053023          	sd	zero,0(a0)
   1ab98:	0521                	addi	a0,a0,8
   1ab9a:	fef51de3          	bne	a0,a5,1ab94 <_init_signal+0x2e>
   1ab9e:	bfe1                	j	1ab76 <_init_signal+0x10>
   1aba0:	557d                	li	a0,-1
   1aba2:	bfd9                	j	1ab78 <_init_signal+0x12>

000000000001aba4 <__sigtramp>:
   1aba4:	1101                	addi	sp,sp,-32
   1aba6:	e426                	sd	s1,8(sp)
   1aba8:	ec06                	sd	ra,24(sp)
   1abaa:	e822                	sd	s0,16(sp)
   1abac:	47fd                	li	a5,31
   1abae:	7581b483          	ld	s1,1880(gp) # 1f328 <_impure_ptr>
   1abb2:	06a7eb63          	bltu	a5,a0,1ac28 <__sigtramp+0x84>
   1abb6:	5184b703          	ld	a4,1304(s1)
   1abba:	842a                	mv	s0,a0
   1abbc:	cf05                	beqz	a4,1abf4 <__sigtramp+0x50>
   1abbe:	00341793          	slli	a5,s0,0x3
   1abc2:	973e                	add	a4,a4,a5
   1abc4:	631c                	ld	a5,0(a4)
   1abc6:	c38d                	beqz	a5,1abe8 <__sigtramp+0x44>
   1abc8:	56fd                	li	a3,-1
   1abca:	04d78d63          	beq	a5,a3,1ac24 <__sigtramp+0x80>
   1abce:	4685                	li	a3,1
   1abd0:	04d78463          	beq	a5,a3,1ac18 <__sigtramp+0x74>
   1abd4:	8522                	mv	a0,s0
   1abd6:	00073023          	sd	zero,0(a4)
   1abda:	9782                	jalr	a5
   1abdc:	4501                	li	a0,0
   1abde:	60e2                	ld	ra,24(sp)
   1abe0:	6442                	ld	s0,16(sp)
   1abe2:	64a2                	ld	s1,8(sp)
   1abe4:	6105                	addi	sp,sp,32
   1abe6:	8082                	ret
   1abe8:	60e2                	ld	ra,24(sp)
   1abea:	6442                	ld	s0,16(sp)
   1abec:	64a2                	ld	s1,8(sp)
   1abee:	4505                	li	a0,1
   1abf0:	6105                	addi	sp,sp,32
   1abf2:	8082                	ret
   1abf4:	10000593          	li	a1,256
   1abf8:	8526                	mv	a0,s1
   1abfa:	ffff90ef          	jal	ra,14bf8 <_malloc_r>
   1abfe:	50a4bc23          	sd	a0,1304(s1)
   1ac02:	872a                	mv	a4,a0
   1ac04:	c115                	beqz	a0,1ac28 <__sigtramp+0x84>
   1ac06:	87aa                	mv	a5,a0
   1ac08:	10050693          	addi	a3,a0,256
   1ac0c:	0007b023          	sd	zero,0(a5)
   1ac10:	07a1                	addi	a5,a5,8
   1ac12:	fed79de3          	bne	a5,a3,1ac0c <__sigtramp+0x68>
   1ac16:	b765                	j	1abbe <__sigtramp+0x1a>
   1ac18:	60e2                	ld	ra,24(sp)
   1ac1a:	6442                	ld	s0,16(sp)
   1ac1c:	64a2                	ld	s1,8(sp)
   1ac1e:	450d                	li	a0,3
   1ac20:	6105                	addi	sp,sp,32
   1ac22:	8082                	ret
   1ac24:	4509                	li	a0,2
   1ac26:	bf65                	j	1abde <__sigtramp+0x3a>
   1ac28:	557d                	li	a0,-1
   1ac2a:	bf55                	j	1abde <__sigtramp+0x3a>

000000000001ac2c <_kill_r>:
   1ac2c:	1101                	addi	sp,sp,-32
   1ac2e:	872e                	mv	a4,a1
   1ac30:	e822                	sd	s0,16(sp)
   1ac32:	e426                	sd	s1,8(sp)
   1ac34:	842a                	mv	s0,a0
   1ac36:	85b2                	mv	a1,a2
   1ac38:	853a                	mv	a0,a4
   1ac3a:	ec06                	sd	ra,24(sp)
   1ac3c:	7801a823          	sw	zero,1936(gp) # 1f360 <errno>
   1ac40:	0e0000ef          	jal	ra,1ad20 <_kill>
   1ac44:	57fd                	li	a5,-1
   1ac46:	00f50763          	beq	a0,a5,1ac54 <_kill_r+0x28>
   1ac4a:	60e2                	ld	ra,24(sp)
   1ac4c:	6442                	ld	s0,16(sp)
   1ac4e:	64a2                	ld	s1,8(sp)
   1ac50:	6105                	addi	sp,sp,32
   1ac52:	8082                	ret
   1ac54:	7901a783          	lw	a5,1936(gp) # 1f360 <errno>
   1ac58:	dbed                	beqz	a5,1ac4a <_kill_r+0x1e>
   1ac5a:	60e2                	ld	ra,24(sp)
   1ac5c:	c01c                	sw	a5,0(s0)
   1ac5e:	6442                	ld	s0,16(sp)
   1ac60:	64a2                	ld	s1,8(sp)
   1ac62:	6105                	addi	sp,sp,32
   1ac64:	8082                	ret

000000000001ac66 <_getpid_r>:
   1ac66:	a841                	j	1acf6 <_getpid>

000000000001ac68 <_close>:
   1ac68:	1141                	addi	sp,sp,-16
   1ac6a:	e406                	sd	ra,8(sp)
   1ac6c:	e022                	sd	s0,0(sp)
   1ac6e:	03900893          	li	a7,57
   1ac72:	00000073          	ecall
   1ac76:	842a                	mv	s0,a0
   1ac78:	00054763          	bltz	a0,1ac86 <_close+0x1e>
   1ac7c:	2501                	sext.w	a0,a0
   1ac7e:	60a2                	ld	ra,8(sp)
   1ac80:	6402                	ld	s0,0(sp)
   1ac82:	0141                	addi	sp,sp,16
   1ac84:	8082                	ret
   1ac86:	926fe0ef          	jal	ra,18dac <__errno>
   1ac8a:	4080043b          	negw	s0,s0
   1ac8e:	c100                	sw	s0,0(a0)
   1ac90:	557d                	li	a0,-1
   1ac92:	b7f5                	j	1ac7e <_close+0x16>

000000000001ac94 <_exit>:
   1ac94:	05d00893          	li	a7,93
   1ac98:	00000073          	ecall
   1ac9c:	00054363          	bltz	a0,1aca2 <_exit+0xe>
   1aca0:	a001                	j	1aca0 <_exit+0xc>
   1aca2:	1141                	addi	sp,sp,-16
   1aca4:	e022                	sd	s0,0(sp)
   1aca6:	842a                	mv	s0,a0
   1aca8:	e406                	sd	ra,8(sp)
   1acaa:	4080043b          	negw	s0,s0
   1acae:	8fefe0ef          	jal	ra,18dac <__errno>
   1acb2:	c100                	sw	s0,0(a0)
   1acb4:	a001                	j	1acb4 <_exit+0x20>

000000000001acb6 <_fstat>:
   1acb6:	7135                	addi	sp,sp,-160
   1acb8:	e526                	sd	s1,136(sp)
   1acba:	ed06                	sd	ra,152(sp)
   1acbc:	84ae                	mv	s1,a1
   1acbe:	e922                	sd	s0,144(sp)
   1acc0:	05000893          	li	a7,80
   1acc4:	858a                	mv	a1,sp
   1acc6:	00000073          	ecall
   1acca:	842a                	mv	s0,a0
   1accc:	00054e63          	bltz	a0,1ace8 <_fstat+0x32>
   1acd0:	0005041b          	sext.w	s0,a0
   1acd4:	8526                	mv	a0,s1
   1acd6:	858a                	mv	a1,sp
   1acd8:	130000ef          	jal	ra,1ae08 <_conv_stat>
   1acdc:	60ea                	ld	ra,152(sp)
   1acde:	8522                	mv	a0,s0
   1ace0:	644a                	ld	s0,144(sp)
   1ace2:	64aa                	ld	s1,136(sp)
   1ace4:	610d                	addi	sp,sp,160
   1ace6:	8082                	ret
   1ace8:	4080043b          	negw	s0,s0
   1acec:	8c0fe0ef          	jal	ra,18dac <__errno>
   1acf0:	c100                	sw	s0,0(a0)
   1acf2:	547d                	li	s0,-1
   1acf4:	b7c5                	j	1acd4 <_fstat+0x1e>

000000000001acf6 <_getpid>:
   1acf6:	4505                	li	a0,1
   1acf8:	8082                	ret

000000000001acfa <_isatty>:
   1acfa:	7119                	addi	sp,sp,-128
   1acfc:	002c                	addi	a1,sp,8
   1acfe:	fc86                	sd	ra,120(sp)
   1ad00:	fb7ff0ef          	jal	ra,1acb6 <_fstat>
   1ad04:	57fd                	li	a5,-1
   1ad06:	00f50963          	beq	a0,a5,1ad18 <_isatty+0x1e>
   1ad0a:	4532                	lw	a0,12(sp)
   1ad0c:	70e6                	ld	ra,120(sp)
   1ad0e:	40d5551b          	sraiw	a0,a0,0xd
   1ad12:	8905                	andi	a0,a0,1
   1ad14:	6109                	addi	sp,sp,128
   1ad16:	8082                	ret
   1ad18:	70e6                	ld	ra,120(sp)
   1ad1a:	4501                	li	a0,0
   1ad1c:	6109                	addi	sp,sp,128
   1ad1e:	8082                	ret

000000000001ad20 <_kill>:
   1ad20:	1141                	addi	sp,sp,-16
   1ad22:	e406                	sd	ra,8(sp)
   1ad24:	888fe0ef          	jal	ra,18dac <__errno>
   1ad28:	60a2                	ld	ra,8(sp)
   1ad2a:	47d9                	li	a5,22
   1ad2c:	c11c                	sw	a5,0(a0)
   1ad2e:	557d                	li	a0,-1
   1ad30:	0141                	addi	sp,sp,16
   1ad32:	8082                	ret

000000000001ad34 <_lseek>:
   1ad34:	1141                	addi	sp,sp,-16
   1ad36:	e406                	sd	ra,8(sp)
   1ad38:	e022                	sd	s0,0(sp)
   1ad3a:	03e00893          	li	a7,62
   1ad3e:	00000073          	ecall
   1ad42:	842a                	mv	s0,a0
   1ad44:	00054763          	bltz	a0,1ad52 <_lseek+0x1e>
   1ad48:	60a2                	ld	ra,8(sp)
   1ad4a:	8522                	mv	a0,s0
   1ad4c:	6402                	ld	s0,0(sp)
   1ad4e:	0141                	addi	sp,sp,16
   1ad50:	8082                	ret
   1ad52:	4080043b          	negw	s0,s0
   1ad56:	856fe0ef          	jal	ra,18dac <__errno>
   1ad5a:	c100                	sw	s0,0(a0)
   1ad5c:	547d                	li	s0,-1
   1ad5e:	b7ed                	j	1ad48 <_lseek+0x14>

000000000001ad60 <_read>:
   1ad60:	1141                	addi	sp,sp,-16
   1ad62:	e406                	sd	ra,8(sp)
   1ad64:	e022                	sd	s0,0(sp)
   1ad66:	03f00893          	li	a7,63
   1ad6a:	00000073          	ecall
   1ad6e:	842a                	mv	s0,a0
   1ad70:	00054763          	bltz	a0,1ad7e <_read+0x1e>
   1ad74:	60a2                	ld	ra,8(sp)
   1ad76:	8522                	mv	a0,s0
   1ad78:	6402                	ld	s0,0(sp)
   1ad7a:	0141                	addi	sp,sp,16
   1ad7c:	8082                	ret
   1ad7e:	4080043b          	negw	s0,s0
   1ad82:	82afe0ef          	jal	ra,18dac <__errno>
   1ad86:	c100                	sw	s0,0(a0)
   1ad88:	547d                	li	s0,-1
   1ad8a:	b7ed                	j	1ad74 <_read+0x14>

000000000001ad8c <_sbrk>:
   1ad8c:	79818693          	addi	a3,gp,1944 # 1f368 <heap_end.0>
   1ad90:	6298                	ld	a4,0(a3)
   1ad92:	1141                	addi	sp,sp,-16
   1ad94:	e406                	sd	ra,8(sp)
   1ad96:	87aa                	mv	a5,a0
   1ad98:	eb19                	bnez	a4,1adae <_sbrk+0x22>
   1ad9a:	0d600893          	li	a7,214
   1ad9e:	4501                	li	a0,0
   1ada0:	00000073          	ecall
   1ada4:	567d                	li	a2,-1
   1ada6:	872a                	mv	a4,a0
   1ada8:	02c50263          	beq	a0,a2,1adcc <_sbrk+0x40>
   1adac:	e288                	sd	a0,0(a3)
   1adae:	0d600893          	li	a7,214
   1adb2:	00e78533          	add	a0,a5,a4
   1adb6:	00000073          	ecall
   1adba:	6298                	ld	a4,0(a3)
   1adbc:	97ba                	add	a5,a5,a4
   1adbe:	00f51763          	bne	a0,a5,1adcc <_sbrk+0x40>
   1adc2:	60a2                	ld	ra,8(sp)
   1adc4:	e288                	sd	a0,0(a3)
   1adc6:	853a                	mv	a0,a4
   1adc8:	0141                	addi	sp,sp,16
   1adca:	8082                	ret
   1adcc:	fe1fd0ef          	jal	ra,18dac <__errno>
   1add0:	60a2                	ld	ra,8(sp)
   1add2:	47b1                	li	a5,12
   1add4:	c11c                	sw	a5,0(a0)
   1add6:	557d                	li	a0,-1
   1add8:	0141                	addi	sp,sp,16
   1adda:	8082                	ret

000000000001addc <_write>:
   1addc:	1141                	addi	sp,sp,-16
   1adde:	e406                	sd	ra,8(sp)
   1ade0:	e022                	sd	s0,0(sp)
   1ade2:	04000893          	li	a7,64
   1ade6:	00000073          	ecall
   1adea:	842a                	mv	s0,a0
   1adec:	00054763          	bltz	a0,1adfa <_write+0x1e>
   1adf0:	60a2                	ld	ra,8(sp)
   1adf2:	8522                	mv	a0,s0
   1adf4:	6402                	ld	s0,0(sp)
   1adf6:	0141                	addi	sp,sp,16
   1adf8:	8082                	ret
   1adfa:	4080043b          	negw	s0,s0
   1adfe:	faffd0ef          	jal	ra,18dac <__errno>
   1ae02:	c100                	sw	s0,0(a0)
   1ae04:	547d                	li	s0,-1
   1ae06:	b7ed                	j	1adf0 <_write+0x14>

000000000001ae08 <_conv_stat>:
   1ae08:	0005b383          	ld	t2,0(a1)
   1ae0c:	0085b283          	ld	t0,8(a1)
   1ae10:	0105af83          	lw	t6,16(a1)
   1ae14:	0145af03          	lw	t5,20(a1)
   1ae18:	0185ae83          	lw	t4,24(a1)
   1ae1c:	01c5ae03          	lw	t3,28(a1)
   1ae20:	0205b303          	ld	t1,32(a1)
   1ae24:	0305b883          	ld	a7,48(a1)
   1ae28:	0405b803          	ld	a6,64(a1)
   1ae2c:	5d90                	lw	a2,56(a1)
   1ae2e:	65b4                	ld	a3,72(a1)
   1ae30:	6db8                	ld	a4,88(a1)
   1ae32:	75bc                	ld	a5,104(a1)
   1ae34:	00751023          	sh	t2,0(a0)
   1ae38:	00551123          	sh	t0,2(a0)
   1ae3c:	01f52223          	sw	t6,4(a0)
   1ae40:	01e51423          	sh	t5,8(a0)
   1ae44:	01d51523          	sh	t4,10(a0)
   1ae48:	01c51623          	sh	t3,12(a0)
   1ae4c:	00651723          	sh	t1,14(a0)
   1ae50:	01153823          	sd	a7,16(a0)
   1ae54:	05053823          	sd	a6,80(a0)
   1ae58:	e530                	sd	a2,72(a0)
   1ae5a:	ed14                	sd	a3,24(a0)
   1ae5c:	f518                	sd	a4,40(a0)
   1ae5e:	fd1c                	sd	a5,56(a0)
   1ae60:	8082                	ret

000000000001ae62 <__eqtf2>:
   1ae62:	882a                	mv	a6,a0
   1ae64:	002027f3          	frrm	a5
   1ae68:	6521                	lui	a0,0x8
   1ae6a:	0305d893          	srli	a7,a1,0x30
   1ae6e:	157d                	addi	a0,a0,-1 # 7fff <exit-0x80e9>
   1ae70:	57fd                	li	a5,-1
   1ae72:	83c1                	srli	a5,a5,0x10
   1ae74:	0306d313          	srli	t1,a3,0x30
   1ae78:	00a8f8b3          	and	a7,a7,a0
   1ae7c:	00f5f733          	and	a4,a1,a5
   1ae80:	00a37333          	and	t1,t1,a0
   1ae84:	8ff5                	and	a5,a5,a3
   1ae86:	91fd                	srli	a1,a1,0x3f
   1ae88:	92fd                	srli	a3,a3,0x3f
   1ae8a:	00a89863          	bne	a7,a0,1ae9a <__eqtf2+0x38>
   1ae8e:	01076533          	or	a0,a4,a6
   1ae92:	e10d                	bnez	a0,1aeb4 <__eqtf2+0x52>
   1ae94:	03131f63          	bne	t1,a7,1aed2 <__eqtf2+0x70>
   1ae98:	a019                	j	1ae9e <__eqtf2+0x3c>
   1ae9a:	02a31e63          	bne	t1,a0,1aed6 <__eqtf2+0x74>
   1ae9e:	00c7e533          	or	a0,a5,a2
   1aea2:	c915                	beqz	a0,1aed6 <__eqtf2+0x74>
   1aea4:	66a1                	lui	a3,0x8
   1aea6:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   1aea8:	00d89f63          	bne	a7,a3,1aec6 <__eqtf2+0x64>
   1aeac:	01076833          	or	a6,a4,a6
   1aeb0:	00080b63          	beqz	a6,1aec6 <__eqtf2+0x64>
   1aeb4:	933d                	srli	a4,a4,0x2f
   1aeb6:	c331                	beqz	a4,1aefa <__eqtf2+0x98>
   1aeb8:	6721                	lui	a4,0x8
   1aeba:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1aebc:	4505                	li	a0,1
   1aebe:	00e31b63          	bne	t1,a4,1aed4 <__eqtf2+0x72>
   1aec2:	8e5d                	or	a2,a2,a5
   1aec4:	ca01                	beqz	a2,1aed4 <__eqtf2+0x72>
   1aec6:	93bd                	srli	a5,a5,0x2f
   1aec8:	0017c793          	xori	a5,a5,1
   1aecc:	00479713          	slli	a4,a5,0x4
   1aed0:	e795                	bnez	a5,1aefc <__eqtf2+0x9a>
   1aed2:	4505                	li	a0,1
   1aed4:	8082                	ret
   1aed6:	4505                	li	a0,1
   1aed8:	fe689ee3          	bne	a7,t1,1aed4 <__eqtf2+0x72>
   1aedc:	fef71ce3          	bne	a4,a5,1aed4 <__eqtf2+0x72>
   1aee0:	fec81ae3          	bne	a6,a2,1aed4 <__eqtf2+0x72>
   1aee4:	00d58963          	beq	a1,a3,1aef6 <__eqtf2+0x94>
   1aee8:	fe0896e3          	bnez	a7,1aed4 <__eqtf2+0x72>
   1aeec:	01076733          	or	a4,a4,a6
   1aef0:	00e03533          	snez	a0,a4
   1aef4:	8082                	ret
   1aef6:	4501                	li	a0,0
   1aef8:	8082                	ret
   1aefa:	4741                	li	a4,16
   1aefc:	00172073          	csrs	fflags,a4
   1af00:	bfc9                	j	1aed2 <__eqtf2+0x70>

000000000001af02 <__getf2>:
   1af02:	88aa                	mv	a7,a0
   1af04:	002027f3          	frrm	a5
   1af08:	6321                	lui	t1,0x8
   1af0a:	137d                	addi	t1,t1,-1 # 7fff <exit-0x80e9>
   1af0c:	57fd                	li	a5,-1
   1af0e:	0305d813          	srli	a6,a1,0x30
   1af12:	83c1                	srli	a5,a5,0x10
   1af14:	0306d713          	srli	a4,a3,0x30
   1af18:	00687833          	and	a6,a6,t1
   1af1c:	00f5fe33          	and	t3,a1,a5
   1af20:	03f5d513          	srli	a0,a1,0x3f
   1af24:	8ff5                	and	a5,a5,a3
   1af26:	00677733          	and	a4,a4,t1
   1af2a:	92fd                	srli	a3,a3,0x3f
   1af2c:	00681963          	bne	a6,t1,1af3e <__getf2+0x3c>
   1af30:	011e65b3          	or	a1,t3,a7
   1af34:	c5ad                	beqz	a1,1af9e <__getf2+0x9c>
   1af36:	00186073          	csrsi	fflags,16
   1af3a:	5579                	li	a0,-2
   1af3c:	8082                	ret
   1af3e:	00671563          	bne	a4,t1,1af48 <__getf2+0x46>
   1af42:	00c7e5b3          	or	a1,a5,a2
   1af46:	f9e5                	bnez	a1,1af36 <__getf2+0x34>
   1af48:	04081d63          	bnez	a6,1afa2 <__getf2+0xa0>
   1af4c:	011e65b3          	or	a1,t3,a7
   1af50:	0015b593          	seqz	a1,a1
   1af54:	eb0d                	bnez	a4,1af86 <__getf2+0x84>
   1af56:	00c7e333          	or	t1,a5,a2
   1af5a:	02031663          	bnez	t1,1af86 <__getf2+0x84>
   1af5e:	e185                	bnez	a1,1af7e <__getf2+0x7c>
   1af60:	c10d                	beqz	a0,1af82 <__getf2+0x80>
   1af62:	557d                	li	a0,-1
   1af64:	8082                	ret
   1af66:	557d                	li	a0,-1
   1af68:	c69d                	beqz	a3,1af96 <__getf2+0x94>
   1af6a:	8536                	mv	a0,a3
   1af6c:	8082                	ret
   1af6e:	ffc7e9e3          	bltu	a5,t3,1af60 <__getf2+0x5e>
   1af72:	02fe1363          	bne	t3,a5,1af98 <__getf2+0x96>
   1af76:	ff1665e3          	bltu	a2,a7,1af60 <__getf2+0x5e>
   1af7a:	00c8ed63          	bltu	a7,a2,1af94 <__getf2+0x92>
   1af7e:	4501                	li	a0,0
   1af80:	8082                	ret
   1af82:	4505                	li	a0,1
   1af84:	8082                	ret
   1af86:	f1e5                	bnez	a1,1af66 <__getf2+0x64>
   1af88:	fcd51ce3          	bne	a0,a3,1af60 <__getf2+0x5e>
   1af8c:	fd074ae3          	blt	a4,a6,1af60 <__getf2+0x5e>
   1af90:	fce85fe3          	bge	a6,a4,1af6e <__getf2+0x6c>
   1af94:	d579                	beqz	a0,1af62 <__getf2+0x60>
   1af96:	8082                	ret
   1af98:	fefe6ee3          	bltu	t3,a5,1af94 <__getf2+0x92>
   1af9c:	b7cd                	j	1af7e <__getf2+0x7c>
   1af9e:	fb0702e3          	beq	a4,a6,1af42 <__getf2+0x40>
   1afa2:	f37d                	bnez	a4,1af88 <__getf2+0x86>
   1afa4:	4581                	li	a1,0
   1afa6:	bf45                	j	1af56 <__getf2+0x54>

000000000001afa8 <__letf2>:
   1afa8:	88aa                	mv	a7,a0
   1afaa:	002027f3          	frrm	a5
   1afae:	6321                	lui	t1,0x8
   1afb0:	137d                	addi	t1,t1,-1 # 7fff <exit-0x80e9>
   1afb2:	57fd                	li	a5,-1
   1afb4:	0305d813          	srli	a6,a1,0x30
   1afb8:	83c1                	srli	a5,a5,0x10
   1afba:	0306d713          	srli	a4,a3,0x30
   1afbe:	00687833          	and	a6,a6,t1
   1afc2:	00f5fe33          	and	t3,a1,a5
   1afc6:	03f5d513          	srli	a0,a1,0x3f
   1afca:	8ff5                	and	a5,a5,a3
   1afcc:	00677733          	and	a4,a4,t1
   1afd0:	92fd                	srli	a3,a3,0x3f
   1afd2:	00681963          	bne	a6,t1,1afe4 <__letf2+0x3c>
   1afd6:	011e65b3          	or	a1,t3,a7
   1afda:	c5ad                	beqz	a1,1b044 <__letf2+0x9c>
   1afdc:	00186073          	csrsi	fflags,16
   1afe0:	4509                	li	a0,2
   1afe2:	8082                	ret
   1afe4:	00671563          	bne	a4,t1,1afee <__letf2+0x46>
   1afe8:	00c7e5b3          	or	a1,a5,a2
   1afec:	f9e5                	bnez	a1,1afdc <__letf2+0x34>
   1afee:	04081d63          	bnez	a6,1b048 <__letf2+0xa0>
   1aff2:	011e65b3          	or	a1,t3,a7
   1aff6:	0015b593          	seqz	a1,a1
   1affa:	eb0d                	bnez	a4,1b02c <__letf2+0x84>
   1affc:	00c7e333          	or	t1,a5,a2
   1b000:	02031663          	bnez	t1,1b02c <__letf2+0x84>
   1b004:	e185                	bnez	a1,1b024 <__letf2+0x7c>
   1b006:	c10d                	beqz	a0,1b028 <__letf2+0x80>
   1b008:	557d                	li	a0,-1
   1b00a:	8082                	ret
   1b00c:	557d                	li	a0,-1
   1b00e:	c69d                	beqz	a3,1b03c <__letf2+0x94>
   1b010:	8536                	mv	a0,a3
   1b012:	8082                	ret
   1b014:	ffc7e9e3          	bltu	a5,t3,1b006 <__letf2+0x5e>
   1b018:	02fe1363          	bne	t3,a5,1b03e <__letf2+0x96>
   1b01c:	ff1665e3          	bltu	a2,a7,1b006 <__letf2+0x5e>
   1b020:	00c8ed63          	bltu	a7,a2,1b03a <__letf2+0x92>
   1b024:	4501                	li	a0,0
   1b026:	8082                	ret
   1b028:	4505                	li	a0,1
   1b02a:	8082                	ret
   1b02c:	f1e5                	bnez	a1,1b00c <__letf2+0x64>
   1b02e:	fcd51ce3          	bne	a0,a3,1b006 <__letf2+0x5e>
   1b032:	fd074ae3          	blt	a4,a6,1b006 <__letf2+0x5e>
   1b036:	fce85fe3          	bge	a6,a4,1b014 <__letf2+0x6c>
   1b03a:	d579                	beqz	a0,1b008 <__letf2+0x60>
   1b03c:	8082                	ret
   1b03e:	fefe6ee3          	bltu	t3,a5,1b03a <__letf2+0x92>
   1b042:	b7cd                	j	1b024 <__letf2+0x7c>
   1b044:	fb0702e3          	beq	a4,a6,1afe8 <__letf2+0x40>
   1b048:	f37d                	bnez	a4,1b02e <__letf2+0x86>
   1b04a:	4581                	li	a1,0
   1b04c:	bf45                	j	1affc <__letf2+0x54>

000000000001b04e <__multf3>:
   1b04e:	711d                	addi	sp,sp,-96
   1b050:	e8a2                	sd	s0,80(sp)
   1b052:	f456                	sd	s5,40(sp)
   1b054:	e862                	sd	s8,16(sp)
   1b056:	ec86                	sd	ra,88(sp)
   1b058:	e4a6                	sd	s1,72(sp)
   1b05a:	e0ca                	sd	s2,64(sp)
   1b05c:	fc4e                	sd	s3,56(sp)
   1b05e:	f852                	sd	s4,48(sp)
   1b060:	f05a                	sd	s6,32(sp)
   1b062:	ec5e                	sd	s7,24(sp)
   1b064:	e466                	sd	s9,8(sp)
   1b066:	842a                	mv	s0,a0
   1b068:	8c32                	mv	s8,a2
   1b06a:	8ab6                	mv	s5,a3
   1b06c:	00202973          	frrm	s2
   1b070:	6721                	lui	a4,0x8
   1b072:	0305d793          	srli	a5,a1,0x30
   1b076:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1b078:	01059993          	slli	s3,a1,0x10
   1b07c:	8ff9                	and	a5,a5,a4
   1b07e:	2901                	sext.w	s2,s2
   1b080:	0109d993          	srli	s3,s3,0x10
   1b084:	03f5db13          	srli	s6,a1,0x3f
   1b088:	c795                	beqz	a5,1b0b4 <__multf3+0x66>
   1b08a:	00078b9b          	sext.w	s7,a5
   1b08e:	08e78463          	beq	a5,a4,1b116 <__multf3+0xc8>
   1b092:	098e                	slli	s3,s3,0x3
   1b094:	03d55713          	srli	a4,a0,0x3d
   1b098:	01376733          	or	a4,a4,s3
   1b09c:	7bf1                	lui	s7,0xffffc
   1b09e:	4985                	li	s3,1
   1b0a0:	19ce                	slli	s3,s3,0x33
   1b0a2:	0b85                	addi	s7,s7,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffdcc31>
   1b0a4:	013769b3          	or	s3,a4,s3
   1b0a8:	00351a13          	slli	s4,a0,0x3
   1b0ac:	9bbe                	add	s7,s7,a5
   1b0ae:	4c81                	li	s9,0
   1b0b0:	4481                	li	s1,0
   1b0b2:	a8b5                	j	1b12e <__multf3+0xe0>
   1b0b4:	00a9ea33          	or	s4,s3,a0
   1b0b8:	2c0a0263          	beqz	s4,1b37c <__multf3+0x32e>
   1b0bc:	04098263          	beqz	s3,1b100 <__multf3+0xb2>
   1b0c0:	854e                	mv	a0,s3
   1b0c2:	20a010ef          	jal	ra,1c2cc <__clzdi2>
   1b0c6:	0005079b          	sext.w	a5,a0
   1b0ca:	ff178693          	addi	a3,a5,-15
   1b0ce:	03c00613          	li	a2,60
   1b0d2:	0006871b          	sext.w	a4,a3
   1b0d6:	02d64a63          	blt	a2,a3,1b10a <__multf3+0xbc>
   1b0da:	03d00693          	li	a3,61
   1b0de:	00370a1b          	addiw	s4,a4,3
   1b0e2:	40e6873b          	subw	a4,a3,a4
   1b0e6:	014999b3          	sll	s3,s3,s4
   1b0ea:	00e45733          	srl	a4,s0,a4
   1b0ee:	013769b3          	or	s3,a4,s3
   1b0f2:	01441a33          	sll	s4,s0,s4
   1b0f6:	7bf1                	lui	s7,0xffffc
   1b0f8:	0bc5                	addi	s7,s7,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffdcc41>
   1b0fa:	40fb8bb3          	sub	s7,s7,a5
   1b0fe:	bf45                	j	1b0ae <__multf3+0x60>
   1b100:	1cc010ef          	jal	ra,1c2cc <__clzdi2>
   1b104:	0405079b          	addiw	a5,a0,64
   1b108:	b7c9                	j	1b0ca <__multf3+0x7c>
   1b10a:	fc37071b          	addiw	a4,a4,-61
   1b10e:	00e419b3          	sll	s3,s0,a4
   1b112:	4a01                	li	s4,0
   1b114:	b7cd                	j	1b0f6 <__multf3+0xa8>
   1b116:	00a9ea33          	or	s4,s3,a0
   1b11a:	260a0563          	beqz	s4,1b384 <__multf3+0x336>
   1b11e:	02f9d493          	srli	s1,s3,0x2f
   1b122:	0014c493          	xori	s1,s1,1
   1b126:	8885                	andi	s1,s1,1
   1b128:	0492                	slli	s1,s1,0x4
   1b12a:	8a2a                	mv	s4,a0
   1b12c:	4c8d                	li	s9,3
   1b12e:	66a1                	lui	a3,0x8
   1b130:	030ad613          	srli	a2,s5,0x30
   1b134:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   1b136:	010a9413          	slli	s0,s5,0x10
   1b13a:	8e75                	and	a2,a2,a3
   1b13c:	87e2                	mv	a5,s8
   1b13e:	8041                	srli	s0,s0,0x10
   1b140:	03fada93          	srli	s5,s5,0x3f
   1b144:	24060363          	beqz	a2,1b38a <__multf3+0x33c>
   1b148:	0006071b          	sext.w	a4,a2
   1b14c:	28d60c63          	beq	a2,a3,1b3e4 <__multf3+0x396>
   1b150:	040e                	slli	s0,s0,0x3
   1b152:	03dc5713          	srli	a4,s8,0x3d
   1b156:	8f41                	or	a4,a4,s0
   1b158:	4405                	li	s0,1
   1b15a:	144e                	slli	s0,s0,0x33
   1b15c:	8c59                	or	s0,s0,a4
   1b15e:	7771                	lui	a4,0xffffc
   1b160:	0705                	addi	a4,a4,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffdcc31>
   1b162:	003c1793          	slli	a5,s8,0x3
   1b166:	9732                	add	a4,a4,a2
   1b168:	4881                	li	a7,0
   1b16a:	017706b3          	add	a3,a4,s7
   1b16e:	002c9713          	slli	a4,s9,0x2
   1b172:	01176733          	or	a4,a4,a7
   1b176:	45a9                	li	a1,10
   1b178:	015b4633          	xor	a2,s6,s5
   1b17c:	00168813          	addi	a6,a3,1
   1b180:	2ce5c163          	blt	a1,a4,1b442 <__multf3+0x3f4>
   1b184:	4589                	li	a1,2
   1b186:	28e5c363          	blt	a1,a4,1b40c <__multf3+0x3be>
   1b18a:	177d                	addi	a4,a4,-1
   1b18c:	4585                	li	a1,1
   1b18e:	28e5fe63          	bgeu	a1,a4,1b42a <__multf3+0x3dc>
   1b192:	577d                	li	a4,-1
   1b194:	9301                	srli	a4,a4,0x20
   1b196:	014983b3          	add	t2,s3,s4
   1b19a:	00878f33          	add	t5,a5,s0
   1b19e:	020a5593          	srli	a1,s4,0x20
   1b1a2:	0207d513          	srli	a0,a5,0x20
   1b1a6:	0143bfb3          	sltu	t6,t2,s4
   1b1aa:	00ff32b3          	sltu	t0,t5,a5
   1b1ae:	00ea7a33          	and	s4,s4,a4
   1b1b2:	8ff9                	and	a5,a5,a4
   1b1b4:	034788b3          	mul	a7,a5,s4
   1b1b8:	8e7e                	mv	t3,t6
   1b1ba:	8316                	mv	t1,t0
   1b1bc:	02a58733          	mul	a4,a1,a0
   1b1c0:	02f587b3          	mul	a5,a1,a5
   1b1c4:	03450533          	mul	a0,a0,s4
   1b1c8:	00f505b3          	add	a1,a0,a5
   1b1cc:	0208d513          	srli	a0,a7,0x20
   1b1d0:	952e                	add	a0,a0,a1
   1b1d2:	00f57563          	bgeu	a0,a5,1b1dc <__multf3+0x18e>
   1b1d6:	4785                	li	a5,1
   1b1d8:	1782                	slli	a5,a5,0x20
   1b1da:	973e                	add	a4,a4,a5
   1b1dc:	57fd                	li	a5,-1
   1b1de:	9381                	srli	a5,a5,0x20
   1b1e0:	02055e93          	srli	t4,a0,0x20
   1b1e4:	8d7d                	and	a0,a0,a5
   1b1e6:	00f8f8b3          	and	a7,a7,a5
   1b1ea:	1502                	slli	a0,a0,0x20
   1b1ec:	0203da93          	srli	s5,t2,0x20
   1b1f0:	9eba                	add	t4,t4,a4
   1b1f2:	9546                	add	a0,a0,a7
   1b1f4:	020f5713          	srli	a4,t5,0x20
   1b1f8:	00f3f8b3          	and	a7,t2,a5
   1b1fc:	00ff77b3          	and	a5,t5,a5
   1b200:	031785b3          	mul	a1,a5,a7
   1b204:	02fa87b3          	mul	a5,s5,a5
   1b208:	02ea8ab3          	mul	s5,s5,a4
   1b20c:	03170733          	mul	a4,a4,a7
   1b210:	00f708b3          	add	a7,a4,a5
   1b214:	0205d713          	srli	a4,a1,0x20
   1b218:	9746                	add	a4,a4,a7
   1b21a:	00f77563          	bgeu	a4,a5,1b224 <__multf3+0x1d6>
   1b21e:	4785                	li	a5,1
   1b220:	1782                	slli	a5,a5,0x20
   1b222:	9abe                	add	s5,s5,a5
   1b224:	57fd                	li	a5,-1
   1b226:	9381                	srli	a5,a5,0x20
   1b228:	02075a13          	srli	s4,a4,0x20
   1b22c:	8f7d                	and	a4,a4,a5
   1b22e:	8dfd                	and	a1,a1,a5
   1b230:	1702                	slli	a4,a4,0x20
   1b232:	0209d893          	srli	a7,s3,0x20
   1b236:	972e                	add	a4,a4,a1
   1b238:	00f9f9b3          	and	s3,s3,a5
   1b23c:	02045593          	srli	a1,s0,0x20
   1b240:	8fe1                	and	a5,a5,s0
   1b242:	02f98b33          	mul	s6,s3,a5
   1b246:	02b88433          	mul	s0,a7,a1
   1b24a:	02f887b3          	mul	a5,a7,a5
   1b24e:	020b5893          	srli	a7,s6,0x20
   1b252:	033585b3          	mul	a1,a1,s3
   1b256:	95be                	add	a1,a1,a5
   1b258:	98ae                	add	a7,a7,a1
   1b25a:	00f8f563          	bgeu	a7,a5,1b264 <__multf3+0x216>
   1b25e:	4785                	li	a5,1
   1b260:	1782                	slli	a5,a5,0x20
   1b262:	943e                	add	s0,s0,a5
   1b264:	0208d593          	srli	a1,a7,0x20
   1b268:	95a2                	add	a1,a1,s0
   1b26a:	547d                	li	s0,-1
   1b26c:	9001                	srli	s0,s0,0x20
   1b26e:	9776                	add	a4,a4,t4
   1b270:	0088f7b3          	and	a5,a7,s0
   1b274:	01d738b3          	sltu	a7,a4,t4
   1b278:	008b7b33          	and	s6,s6,s0
   1b27c:	40600333          	neg	t1,t1
   1b280:	011a0433          	add	s0,s4,a7
   1b284:	9456                	add	s0,s0,s5
   1b286:	00737333          	and	t1,t1,t2
   1b28a:	41c00e33          	neg	t3,t3
   1b28e:	9322                	add	t1,t1,s0
   1b290:	005fffb3          	and	t6,t6,t0
   1b294:	01ee7e33          	and	t3,t3,t5
   1b298:	011438b3          	sltu	a7,s0,a7
   1b29c:	9e1a                	add	t3,t3,t1
   1b29e:	98fe                	add	a7,a7,t6
   1b2a0:	00833433          	sltu	s0,t1,s0
   1b2a4:	98a2                	add	a7,a7,s0
   1b2a6:	006e3333          	sltu	t1,t3,t1
   1b2aa:	40a70f33          	sub	t5,a4,a0
   1b2ae:	01e73fb3          	sltu	t6,a4,t5
   1b2b2:	1782                	slli	a5,a5,0x20
   1b2b4:	989a                	add	a7,a7,t1
   1b2b6:	41de0333          	sub	t1,t3,t4
   1b2ba:	006e32b3          	sltu	t0,t3,t1
   1b2be:	97da                	add	a5,a5,s6
   1b2c0:	41f30333          	sub	t1,t1,t6
   1b2c4:	4f81                	li	t6,0
   1b2c6:	01e77663          	bgeu	a4,t5,1b2d2 <__multf3+0x284>
   1b2ca:	41ce8eb3          	sub	t4,t4,t3
   1b2ce:	001ebf93          	seqz	t6,t4
   1b2d2:	40ff0e33          	sub	t3,t5,a5
   1b2d6:	98ae                	add	a7,a7,a1
   1b2d8:	01cf3733          	sltu	a4,t5,t3
   1b2dc:	40b305b3          	sub	a1,t1,a1
   1b2e0:	005fefb3          	or	t6,t6,t0
   1b2e4:	00b33333          	sltu	t1,t1,a1
   1b2e8:	40e78733          	sub	a4,a5,a4
   1b2ec:	4e81                	li	t4,0
   1b2ee:	01cf7463          	bgeu	t5,t3,1b2f6 <__multf3+0x2a8>
   1b2f2:	0015be93          	seqz	t4,a1
   1b2f6:	95ba                	add	a1,a1,a4
   1b2f8:	00f5b733          	sltu	a4,a1,a5
   1b2fc:	9746                	add	a4,a4,a7
   1b2fe:	41f70733          	sub	a4,a4,t6
   1b302:	006eeeb3          	or	t4,t4,t1
   1b306:	41d70733          	sub	a4,a4,t4
   1b30a:	00de1793          	slli	a5,t3,0xd
   1b30e:	0736                	slli	a4,a4,0xd
   1b310:	0335d413          	srli	s0,a1,0x33
   1b314:	8fc9                	or	a5,a5,a0
   1b316:	8c59                	or	s0,s0,a4
   1b318:	00f037b3          	snez	a5,a5
   1b31c:	033e5513          	srli	a0,t3,0x33
   1b320:	9351                	srli	a4,a4,0x34
   1b322:	8fc9                	or	a5,a5,a0
   1b324:	05b6                	slli	a1,a1,0xd
   1b326:	8b05                	andi	a4,a4,1
   1b328:	8fcd                	or	a5,a5,a1
   1b32a:	12070d63          	beqz	a4,1b464 <__multf3+0x416>
   1b32e:	0017d713          	srli	a4,a5,0x1
   1b332:	8b85                	andi	a5,a5,1
   1b334:	8f5d                	or	a4,a4,a5
   1b336:	03f41793          	slli	a5,s0,0x3f
   1b33a:	8fd9                	or	a5,a5,a4
   1b33c:	8005                	srli	s0,s0,0x1
   1b33e:	6711                	lui	a4,0x4
   1b340:	177d                	addi	a4,a4,-1 # 3fff <exit-0xc0e9>
   1b342:	9742                	add	a4,a4,a6
   1b344:	1ae05c63          	blez	a4,1b4fc <__multf3+0x4ae>
   1b348:	0077f693          	andi	a3,a5,7
   1b34c:	12068363          	beqz	a3,1b472 <__multf3+0x424>
   1b350:	4689                	li	a3,2
   1b352:	0014e493          	ori	s1,s1,1
   1b356:	10d90d63          	beq	s2,a3,1b470 <__multf3+0x422>
   1b35a:	468d                	li	a3,3
   1b35c:	10d90663          	beq	s2,a3,1b468 <__multf3+0x41a>
   1b360:	10091963          	bnez	s2,1b472 <__multf3+0x424>
   1b364:	00f7f693          	andi	a3,a5,15
   1b368:	4591                	li	a1,4
   1b36a:	10b68463          	beq	a3,a1,1b472 <__multf3+0x424>
   1b36e:	00478693          	addi	a3,a5,4
   1b372:	00f6b7b3          	sltu	a5,a3,a5
   1b376:	943e                	add	s0,s0,a5
   1b378:	87b6                	mv	a5,a3
   1b37a:	a8e5                	j	1b472 <__multf3+0x424>
   1b37c:	4981                	li	s3,0
   1b37e:	4b81                	li	s7,0
   1b380:	4c85                	li	s9,1
   1b382:	b33d                	j	1b0b0 <__multf3+0x62>
   1b384:	4981                	li	s3,0
   1b386:	4c89                	li	s9,2
   1b388:	b325                	j	1b0b0 <__multf3+0x62>
   1b38a:	008c67b3          	or	a5,s8,s0
   1b38e:	c7b5                	beqz	a5,1b3fa <__multf3+0x3ac>
   1b390:	cc15                	beqz	s0,1b3cc <__multf3+0x37e>
   1b392:	8522                	mv	a0,s0
   1b394:	739000ef          	jal	ra,1c2cc <__clzdi2>
   1b398:	2501                	sext.w	a0,a0
   1b39a:	ff150793          	addi	a5,a0,-15
   1b39e:	03c00693          	li	a3,60
   1b3a2:	0007871b          	sext.w	a4,a5
   1b3a6:	02f6c963          	blt	a3,a5,1b3d8 <__multf3+0x38a>
   1b3aa:	03d00693          	li	a3,61
   1b3ae:	0037079b          	addiw	a5,a4,3
   1b3b2:	40e6873b          	subw	a4,a3,a4
   1b3b6:	00f41433          	sll	s0,s0,a5
   1b3ba:	00ec5733          	srl	a4,s8,a4
   1b3be:	8c59                	or	s0,s0,a4
   1b3c0:	00fc17b3          	sll	a5,s8,a5
   1b3c4:	7771                	lui	a4,0xffffc
   1b3c6:	0745                	addi	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffdcc41>
   1b3c8:	8f09                	sub	a4,a4,a0
   1b3ca:	bb79                	j	1b168 <__multf3+0x11a>
   1b3cc:	8562                	mv	a0,s8
   1b3ce:	6ff000ef          	jal	ra,1c2cc <__clzdi2>
   1b3d2:	0405051b          	addiw	a0,a0,64
   1b3d6:	b7d1                	j	1b39a <__multf3+0x34c>
   1b3d8:	fc37071b          	addiw	a4,a4,-61
   1b3dc:	00ec1433          	sll	s0,s8,a4
   1b3e0:	4781                	li	a5,0
   1b3e2:	b7cd                	j	1b3c4 <__multf3+0x376>
   1b3e4:	008c66b3          	or	a3,s8,s0
   1b3e8:	ce91                	beqz	a3,1b404 <__multf3+0x3b6>
   1b3ea:	02f45693          	srli	a3,s0,0x2f
   1b3ee:	8a85                	andi	a3,a3,1
   1b3f0:	488d                	li	a7,3
   1b3f2:	d6069ce3          	bnez	a3,1b16a <__multf3+0x11c>
   1b3f6:	44c1                	li	s1,16
   1b3f8:	bb8d                	j	1b16a <__multf3+0x11c>
   1b3fa:	4401                	li	s0,0
   1b3fc:	4781                	li	a5,0
   1b3fe:	4701                	li	a4,0
   1b400:	4885                	li	a7,1
   1b402:	b3a5                	j	1b16a <__multf3+0x11c>
   1b404:	4401                	li	s0,0
   1b406:	4781                	li	a5,0
   1b408:	4889                	li	a7,2
   1b40a:	b385                	j	1b16a <__multf3+0x11c>
   1b40c:	4585                	li	a1,1
   1b40e:	00e59733          	sll	a4,a1,a4
   1b412:	53077513          	andi	a0,a4,1328
   1b416:	ed0d                	bnez	a0,1b450 <__multf3+0x402>
   1b418:	24077313          	andi	t1,a4,576
   1b41c:	22031c63          	bnez	t1,1b654 <__multf3+0x606>
   1b420:	08877713          	andi	a4,a4,136
   1b424:	d60707e3          	beqz	a4,1b192 <__multf3+0x144>
   1b428:	8656                	mv	a2,s5
   1b42a:	4709                	li	a4,2
   1b42c:	22e88a63          	beq	a7,a4,1b660 <__multf3+0x612>
   1b430:	470d                	li	a4,3
   1b432:	22e88c63          	beq	a7,a4,1b66a <__multf3+0x61c>
   1b436:	4705                	li	a4,1
   1b438:	f0e893e3          	bne	a7,a4,1b33e <__multf3+0x2f0>
   1b43c:	4581                	li	a1,0
   1b43e:	4501                	li	a0,0
   1b440:	a409                	j	1b642 <__multf3+0x5f4>
   1b442:	46bd                	li	a3,15
   1b444:	00d70a63          	beq	a4,a3,1b458 <__multf3+0x40a>
   1b448:	46ad                	li	a3,11
   1b44a:	fcd70fe3          	beq	a4,a3,1b428 <__multf3+0x3da>
   1b44e:	865a                	mv	a2,s6
   1b450:	844e                	mv	s0,s3
   1b452:	87d2                	mv	a5,s4
   1b454:	88e6                	mv	a7,s9
   1b456:	bfd1                	j	1b42a <__multf3+0x3dc>
   1b458:	4405                	li	s0,1
   1b45a:	143e                	slli	s0,s0,0x2f
   1b45c:	4781                	li	a5,0
   1b45e:	4601                	li	a2,0
   1b460:	488d                	li	a7,3
   1b462:	b7f9                	j	1b430 <__multf3+0x3e2>
   1b464:	8836                	mv	a6,a3
   1b466:	bde1                	j	1b33e <__multf3+0x2f0>
   1b468:	e609                	bnez	a2,1b472 <__multf3+0x424>
   1b46a:	00878693          	addi	a3,a5,8
   1b46e:	b711                	j	1b372 <__multf3+0x324>
   1b470:	fe6d                	bnez	a2,1b46a <__multf3+0x41c>
   1b472:	03445693          	srli	a3,s0,0x34
   1b476:	8a85                	andi	a3,a3,1
   1b478:	c699                	beqz	a3,1b486 <__multf3+0x438>
   1b47a:	577d                	li	a4,-1
   1b47c:	1752                	slli	a4,a4,0x34
   1b47e:	177d                	addi	a4,a4,-1
   1b480:	8c79                	and	s0,s0,a4
   1b482:	6711                	lui	a4,0x4
   1b484:	9742                	add	a4,a4,a6
   1b486:	66a1                	lui	a3,0x8
   1b488:	ffe68593          	addi	a1,a3,-2 # 7ffe <exit-0x80ea>
   1b48c:	04e5c063          	blt	a1,a4,1b4cc <__multf3+0x47e>
   1b490:	838d                	srli	a5,a5,0x3
   1b492:	03d41513          	slli	a0,s0,0x3d
   1b496:	8d5d                	or	a0,a0,a5
   1b498:	00345593          	srli	a1,s0,0x3
   1b49c:	1746                	slli	a4,a4,0x31
   1b49e:	9345                	srli	a4,a4,0x31
   1b4a0:	063e                	slli	a2,a2,0xf
   1b4a2:	05c2                	slli	a1,a1,0x10
   1b4a4:	8e59                	or	a2,a2,a4
   1b4a6:	1642                	slli	a2,a2,0x30
   1b4a8:	81c1                	srli	a1,a1,0x10
   1b4aa:	8dd1                	or	a1,a1,a2
   1b4ac:	c099                	beqz	s1,1b4b2 <__multf3+0x464>
   1b4ae:	0014a073          	csrs	fflags,s1
   1b4b2:	60e6                	ld	ra,88(sp)
   1b4b4:	6446                	ld	s0,80(sp)
   1b4b6:	64a6                	ld	s1,72(sp)
   1b4b8:	6906                	ld	s2,64(sp)
   1b4ba:	79e2                	ld	s3,56(sp)
   1b4bc:	7a42                	ld	s4,48(sp)
   1b4be:	7aa2                	ld	s5,40(sp)
   1b4c0:	7b02                	ld	s6,32(sp)
   1b4c2:	6be2                	ld	s7,24(sp)
   1b4c4:	6c42                	ld	s8,16(sp)
   1b4c6:	6ca2                	ld	s9,8(sp)
   1b4c8:	6125                	addi	sp,sp,96
   1b4ca:	8082                	ret
   1b4cc:	4789                	li	a5,2
   1b4ce:	02f90263          	beq	s2,a5,1b4f2 <__multf3+0x4a4>
   1b4d2:	478d                	li	a5,3
   1b4d4:	16fd                	addi	a3,a3,-1
   1b4d6:	00f90763          	beq	s2,a5,1b4e4 <__multf3+0x496>
   1b4da:	00091663          	bnez	s2,1b4e6 <__multf3+0x498>
   1b4de:	4501                	li	a0,0
   1b4e0:	8736                	mv	a4,a3
   1b4e2:	a021                	j	1b4ea <__multf3+0x49c>
   1b4e4:	de6d                	beqz	a2,1b4de <__multf3+0x490>
   1b4e6:	557d                	li	a0,-1
   1b4e8:	872e                	mv	a4,a1
   1b4ea:	0054e493          	ori	s1,s1,5
   1b4ee:	85aa                	mv	a1,a0
   1b4f0:	b775                	j	1b49c <__multf3+0x44e>
   1b4f2:	da75                	beqz	a2,1b4e6 <__multf3+0x498>
   1b4f4:	4501                	li	a0,0
   1b4f6:	fff68713          	addi	a4,a3,-1
   1b4fa:	bfc5                	j	1b4ea <__multf3+0x49c>
   1b4fc:	4685                	li	a3,1
   1b4fe:	e729                	bnez	a4,1b548 <__multf3+0x4fa>
   1b500:	0077f593          	andi	a1,a5,7
   1b504:	86a2                	mv	a3,s0
   1b506:	cd8d                	beqz	a1,1b540 <__multf3+0x4f2>
   1b508:	4589                	li	a1,2
   1b50a:	0014e493          	ori	s1,s1,1
   1b50e:	02b90863          	beq	s2,a1,1b53e <__multf3+0x4f0>
   1b512:	458d                	li	a1,3
   1b514:	02b90163          	beq	s2,a1,1b536 <__multf3+0x4e8>
   1b518:	02091463          	bnez	s2,1b540 <__multf3+0x4f2>
   1b51c:	00f7f593          	andi	a1,a5,15
   1b520:	4511                	li	a0,4
   1b522:	00a58f63          	beq	a1,a0,1b540 <__multf3+0x4f2>
   1b526:	ffc7b693          	sltiu	a3,a5,-4
   1b52a:	0016c693          	xori	a3,a3,1
   1b52e:	1682                	slli	a3,a3,0x20
   1b530:	9281                	srli	a3,a3,0x20
   1b532:	96a2                	add	a3,a3,s0
   1b534:	a031                	j	1b540 <__multf3+0x4f2>
   1b536:	e609                	bnez	a2,1b540 <__multf3+0x4f2>
   1b538:	ff87b693          	sltiu	a3,a5,-8
   1b53c:	b7fd                	j	1b52a <__multf3+0x4dc>
   1b53e:	fe6d                	bnez	a2,1b538 <__multf3+0x4ea>
   1b540:	92d1                	srli	a3,a3,0x34
   1b542:	0016c693          	xori	a3,a3,1
   1b546:	8a85                	andi	a3,a3,1
   1b548:	4805                	li	a6,1
   1b54a:	40e80833          	sub	a6,a6,a4
   1b54e:	07400713          	li	a4,116
   1b552:	0d074563          	blt	a4,a6,1b61c <__multf3+0x5ce>
   1b556:	03f00713          	li	a4,63
   1b55a:	0008059b          	sext.w	a1,a6
   1b55e:	05074b63          	blt	a4,a6,1b5b4 <__multf3+0x566>
   1b562:	04000713          	li	a4,64
   1b566:	9f0d                	subw	a4,a4,a1
   1b568:	00e41533          	sll	a0,s0,a4
   1b56c:	00b7d833          	srl	a6,a5,a1
   1b570:	00e79733          	sll	a4,a5,a4
   1b574:	01056533          	or	a0,a0,a6
   1b578:	00e03733          	snez	a4,a4
   1b57c:	8d59                	or	a0,a0,a4
   1b57e:	00b455b3          	srl	a1,s0,a1
   1b582:	00757793          	andi	a5,a0,7
   1b586:	c3a5                	beqz	a5,1b5e6 <__multf3+0x598>
   1b588:	4789                	li	a5,2
   1b58a:	0014e493          	ori	s1,s1,1
   1b58e:	04f90b63          	beq	s2,a5,1b5e4 <__multf3+0x596>
   1b592:	478d                	li	a5,3
   1b594:	04f90463          	beq	s2,a5,1b5dc <__multf3+0x58e>
   1b598:	04091763          	bnez	s2,1b5e6 <__multf3+0x598>
   1b59c:	00f57793          	andi	a5,a0,15
   1b5a0:	4711                	li	a4,4
   1b5a2:	04e78263          	beq	a5,a4,1b5e6 <__multf3+0x598>
   1b5a6:	00450793          	addi	a5,a0,4
   1b5aa:	00a7b533          	sltu	a0,a5,a0
   1b5ae:	95aa                	add	a1,a1,a0
   1b5b0:	853e                	mv	a0,a5
   1b5b2:	a815                	j	1b5e6 <__multf3+0x598>
   1b5b4:	fc05851b          	addiw	a0,a1,-64
   1b5b8:	04000893          	li	a7,64
   1b5bc:	00a45533          	srl	a0,s0,a0
   1b5c0:	4701                	li	a4,0
   1b5c2:	01180763          	beq	a6,a7,1b5d0 <__multf3+0x582>
   1b5c6:	08000713          	li	a4,128
   1b5ca:	9f0d                	subw	a4,a4,a1
   1b5cc:	00e41733          	sll	a4,s0,a4
   1b5d0:	8f5d                	or	a4,a4,a5
   1b5d2:	00e03733          	snez	a4,a4
   1b5d6:	8d59                	or	a0,a0,a4
   1b5d8:	4581                	li	a1,0
   1b5da:	b765                	j	1b582 <__multf3+0x534>
   1b5dc:	e609                	bnez	a2,1b5e6 <__multf3+0x598>
   1b5de:	00850793          	addi	a5,a0,8
   1b5e2:	b7e1                	j	1b5aa <__multf3+0x55c>
   1b5e4:	fe6d                	bnez	a2,1b5de <__multf3+0x590>
   1b5e6:	0335d793          	srli	a5,a1,0x33
   1b5ea:	8b85                	andi	a5,a5,1
   1b5ec:	cb99                	beqz	a5,1b602 <__multf3+0x5b4>
   1b5ee:	0014e493          	ori	s1,s1,1
   1b5f2:	4581                	li	a1,0
   1b5f4:	4501                	li	a0,0
   1b5f6:	4705                	li	a4,1
   1b5f8:	ea0682e3          	beqz	a3,1b49c <__multf3+0x44e>
   1b5fc:	0024e493          	ori	s1,s1,2
   1b600:	bd71                	j	1b49c <__multf3+0x44e>
   1b602:	03d59793          	slli	a5,a1,0x3d
   1b606:	810d                	srli	a0,a0,0x3
   1b608:	8d5d                	or	a0,a0,a5
   1b60a:	818d                	srli	a1,a1,0x3
   1b60c:	4701                	li	a4,0
   1b60e:	e80687e3          	beqz	a3,1b49c <__multf3+0x44e>
   1b612:	0014f793          	andi	a5,s1,1
   1b616:	e80783e3          	beqz	a5,1b49c <__multf3+0x44e>
   1b61a:	b7cd                	j	1b5fc <__multf3+0x5ae>
   1b61c:	0087e533          	or	a0,a5,s0
   1b620:	cd11                	beqz	a0,1b63c <__multf3+0x5ee>
   1b622:	4789                	li	a5,2
   1b624:	0014e493          	ori	s1,s1,1
   1b628:	02f90363          	beq	s2,a5,1b64e <__multf3+0x600>
   1b62c:	478d                	li	a5,3
   1b62e:	00f90c63          	beq	s2,a5,1b646 <__multf3+0x5f8>
   1b632:	4505                	li	a0,1
   1b634:	00091363          	bnez	s2,1b63a <__multf3+0x5ec>
   1b638:	4515                	li	a0,5
   1b63a:	810d                	srli	a0,a0,0x3
   1b63c:	0024e493          	ori	s1,s1,2
   1b640:	4581                	li	a1,0
   1b642:	4701                	li	a4,0
   1b644:	bda1                	j	1b49c <__multf3+0x44e>
   1b646:	4525                	li	a0,9
   1b648:	da6d                	beqz	a2,1b63a <__multf3+0x5ec>
   1b64a:	4505                	li	a0,1
   1b64c:	b7fd                	j	1b63a <__multf3+0x5ec>
   1b64e:	4525                	li	a0,9
   1b650:	f66d                	bnez	a2,1b63a <__multf3+0x5ec>
   1b652:	bfe5                	j	1b64a <__multf3+0x5fc>
   1b654:	6721                	lui	a4,0x8
   1b656:	15be                	slli	a1,a1,0x2f
   1b658:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1b65a:	4601                	li	a2,0
   1b65c:	44c1                	li	s1,16
   1b65e:	bd3d                	j	1b49c <__multf3+0x44e>
   1b660:	6721                	lui	a4,0x8
   1b662:	4581                	li	a1,0
   1b664:	4501                	li	a0,0
   1b666:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1b668:	bd15                	j	1b49c <__multf3+0x44e>
   1b66a:	4585                	li	a1,1
   1b66c:	6721                	lui	a4,0x8
   1b66e:	15be                	slli	a1,a1,0x2f
   1b670:	4501                	li	a0,0
   1b672:	177d                	addi	a4,a4,-1 # 7fff <exit-0x80e9>
   1b674:	4601                	li	a2,0
   1b676:	b51d                	j	1b49c <__multf3+0x44e>

000000000001b678 <__subtf3>:
   1b678:	7179                	addi	sp,sp,-48
   1b67a:	f406                	sd	ra,40(sp)
   1b67c:	f022                	sd	s0,32(sp)
   1b67e:	ec26                	sd	s1,24(sp)
   1b680:	e84a                	sd	s2,16(sp)
   1b682:	e44e                	sd	s3,8(sp)
   1b684:	e052                	sd	s4,0(sp)
   1b686:	002024f3          	frrm	s1
   1b68a:	577d                	li	a4,-1
   1b68c:	8341                	srli	a4,a4,0x10
   1b68e:	6e21                	lui	t3,0x8
   1b690:	0305d813          	srli	a6,a1,0x30
   1b694:	1e7d                	addi	t3,t3,-1 # 7fff <exit-0x80e9>
   1b696:	0306d893          	srli	a7,a3,0x30
   1b69a:	03f5d913          	srli	s2,a1,0x3f
   1b69e:	03f6d313          	srli	t1,a3,0x3f
   1b6a2:	8df9                	and	a1,a1,a4
   1b6a4:	8ef9                	and	a3,a3,a4
   1b6a6:	03d55793          	srli	a5,a0,0x3d
   1b6aa:	00369713          	slli	a4,a3,0x3
   1b6ae:	01c87833          	and	a6,a6,t3
   1b6b2:	03d65693          	srli	a3,a2,0x3d
   1b6b6:	058e                	slli	a1,a1,0x3
   1b6b8:	01c8f8b3          	and	a7,a7,t3
   1b6bc:	2481                	sext.w	s1,s1
   1b6be:	8442                	mv	s0,a6
   1b6c0:	8fcd                	or	a5,a5,a1
   1b6c2:	050e                	slli	a0,a0,0x3
   1b6c4:	8ed9                	or	a3,a3,a4
   1b6c6:	060e                	slli	a2,a2,0x3
   1b6c8:	01c89563          	bne	a7,t3,1b6d2 <__subtf3+0x5a>
   1b6cc:	00c6e733          	or	a4,a3,a2
   1b6d0:	e319                	bnez	a4,1b6d6 <__subtf3+0x5e>
   1b6d2:	00134313          	xori	t1,t1,1
   1b6d6:	4118073b          	subw	a4,a6,a7
   1b6da:	6e21                	lui	t3,0x8
   1b6dc:	0007059b          	sext.w	a1,a4
   1b6e0:	fffe0e93          	addi	t4,t3,-1 # 7fff <exit-0x80e9>
   1b6e4:	3b231a63          	bne	t1,s2,1ba98 <__subtf3+0x420>
   1b6e8:	10b05563          	blez	a1,1b7f2 <__subtf3+0x17a>
   1b6ec:	08089163          	bnez	a7,1b76e <__subtf3+0xf6>
   1b6f0:	00c6e5b3          	or	a1,a3,a2
   1b6f4:	ed91                	bnez	a1,1b710 <__subtf3+0x98>
   1b6f6:	75d81663          	bne	a6,t4,1be42 <__subtf3+0x7ca>
   1b6fa:	00a7e733          	or	a4,a5,a0
   1b6fe:	78070a63          	beqz	a4,1be92 <__subtf3+0x81a>
   1b702:	0327d713          	srli	a4,a5,0x32
   1b706:	00174713          	xori	a4,a4,1
   1b70a:	8b05                	andi	a4,a4,1
   1b70c:	0712                	slli	a4,a4,0x4
   1b70e:	aa01                	j	1b81e <__subtf3+0x1a6>
   1b710:	fff7059b          	addiw	a1,a4,-1
   1b714:	e1a1                	bnez	a1,1b754 <__subtf3+0xdc>
   1b716:	962a                	add	a2,a2,a0
   1b718:	96be                	add	a3,a3,a5
   1b71a:	00a637b3          	sltu	a5,a2,a0
   1b71e:	97b6                	add	a5,a5,a3
   1b720:	8532                	mv	a0,a2
   1b722:	0337d713          	srli	a4,a5,0x33
   1b726:	8b05                	andi	a4,a4,1
   1b728:	70070d63          	beqz	a4,1be42 <__subtf3+0x7ca>
   1b72c:	6721                	lui	a4,0x8
   1b72e:	0405                	addi	s0,s0,1
   1b730:	fff70693          	addi	a3,a4,-1 # 7fff <exit-0x80e9>
   1b734:	34d40063          	beq	s0,a3,1ba74 <__subtf3+0x3fc>
   1b738:	577d                	li	a4,-1
   1b73a:	174e                	slli	a4,a4,0x33
   1b73c:	177d                	addi	a4,a4,-1
   1b73e:	8ff9                	and	a5,a5,a4
   1b740:	00155713          	srli	a4,a0,0x1
   1b744:	8905                	andi	a0,a0,1
   1b746:	8f49                	or	a4,a4,a0
   1b748:	03f79513          	slli	a0,a5,0x3f
   1b74c:	8d59                	or	a0,a0,a4
   1b74e:	8385                	srli	a5,a5,0x1
   1b750:	4581                	li	a1,0
   1b752:	a4e9                	j	1ba1c <__subtf3+0x3a4>
   1b754:	03d81263          	bne	a6,t4,1b778 <__subtf3+0x100>
   1b758:	00a7e733          	or	a4,a5,a0
   1b75c:	72070b63          	beqz	a4,1be92 <__subtf3+0x81a>
   1b760:	0327d713          	srli	a4,a5,0x32
   1b764:	00174713          	xori	a4,a4,1
   1b768:	8b05                	andi	a4,a4,1
   1b76a:	0712                	slli	a4,a4,0x4
   1b76c:	a209                	j	1b86e <__subtf3+0x1f6>
   1b76e:	ffd805e3          	beq	a6,t4,1b758 <__subtf3+0xe0>
   1b772:	4705                	li	a4,1
   1b774:	174e                	slli	a4,a4,0x33
   1b776:	8ed9                	or	a3,a3,a4
   1b778:	07400713          	li	a4,116
   1b77c:	06b74663          	blt	a4,a1,1b7e8 <__subtf3+0x170>
   1b780:	03f00713          	li	a4,63
   1b784:	02b74b63          	blt	a4,a1,1b7ba <__subtf3+0x142>
   1b788:	04000813          	li	a6,64
   1b78c:	40b8083b          	subw	a6,a6,a1
   1b790:	01069733          	sll	a4,a3,a6
   1b794:	00b658b3          	srl	a7,a2,a1
   1b798:	01061833          	sll	a6,a2,a6
   1b79c:	01176733          	or	a4,a4,a7
   1b7a0:	01003833          	snez	a6,a6
   1b7a4:	01076733          	or	a4,a4,a6
   1b7a8:	00b6d5b3          	srl	a1,a3,a1
   1b7ac:	972a                	add	a4,a4,a0
   1b7ae:	95be                	add	a1,a1,a5
   1b7b0:	00a737b3          	sltu	a5,a4,a0
   1b7b4:	97ae                	add	a5,a5,a1
   1b7b6:	853a                	mv	a0,a4
   1b7b8:	b7ad                	j	1b722 <__subtf3+0xaa>
   1b7ba:	fc05871b          	addiw	a4,a1,-64
   1b7be:	04000893          	li	a7,64
   1b7c2:	00e6d733          	srl	a4,a3,a4
   1b7c6:	4801                	li	a6,0
   1b7c8:	01158863          	beq	a1,a7,1b7d8 <__subtf3+0x160>
   1b7cc:	08000813          	li	a6,128
   1b7d0:	40b8083b          	subw	a6,a6,a1
   1b7d4:	01069833          	sll	a6,a3,a6
   1b7d8:	00c86833          	or	a6,a6,a2
   1b7dc:	01003833          	snez	a6,a6
   1b7e0:	01076733          	or	a4,a4,a6
   1b7e4:	4581                	li	a1,0
   1b7e6:	b7d9                	j	1b7ac <__subtf3+0x134>
   1b7e8:	00c6e733          	or	a4,a3,a2
   1b7ec:	00e03733          	snez	a4,a4
   1b7f0:	bfd5                	j	1b7e4 <__subtf3+0x16c>
   1b7f2:	10058563          	beqz	a1,1b8fc <__subtf3+0x284>
   1b7f6:	06081e63          	bnez	a6,1b872 <__subtf3+0x1fa>
   1b7fa:	00a7e5b3          	or	a1,a5,a0
   1b7fe:	ed8d                	bnez	a1,1b838 <__subtf3+0x1c0>
   1b800:	65d89463          	bne	a7,t4,1be48 <__subtf3+0x7d0>
   1b804:	00c6e533          	or	a0,a3,a2
   1b808:	68050163          	beqz	a0,1be8a <__subtf3+0x812>
   1b80c:	0326d713          	srli	a4,a3,0x32
   1b810:	00174713          	xori	a4,a4,1
   1b814:	8b05                	andi	a4,a4,1
   1b816:	0712                	slli	a4,a4,0x4
   1b818:	87b6                	mv	a5,a3
   1b81a:	8532                	mv	a0,a2
   1b81c:	8446                	mv	s0,a7
   1b81e:	00757693          	andi	a3,a0,7
   1b822:	22069263          	bnez	a3,1ba46 <__subtf3+0x3ce>
   1b826:	16058963          	beqz	a1,1b998 <__subtf3+0x320>
   1b82a:	00177693          	andi	a3,a4,1
   1b82e:	16068563          	beqz	a3,1b998 <__subtf3+0x320>
   1b832:	00276713          	ori	a4,a4,2
   1b836:	a28d                	j	1b998 <__subtf3+0x320>
   1b838:	fff74713          	not	a4,a4
   1b83c:	2701                	sext.w	a4,a4
   1b83e:	eb09                	bnez	a4,1b850 <__subtf3+0x1d8>
   1b840:	9532                	add	a0,a0,a2
   1b842:	96be                	add	a3,a3,a5
   1b844:	00c53633          	sltu	a2,a0,a2
   1b848:	00c687b3          	add	a5,a3,a2
   1b84c:	8446                	mv	s0,a7
   1b84e:	bdd1                	j	1b722 <__subtf3+0xaa>
   1b850:	03d89863          	bne	a7,t4,1b880 <__subtf3+0x208>
   1b854:	00c6e533          	or	a0,a3,a2
   1b858:	62050963          	beqz	a0,1be8a <__subtf3+0x812>
   1b85c:	0326d713          	srli	a4,a3,0x32
   1b860:	00174713          	xori	a4,a4,1
   1b864:	8b05                	andi	a4,a4,1
   1b866:	0712                	slli	a4,a4,0x4
   1b868:	87b6                	mv	a5,a3
   1b86a:	8532                	mv	a0,a2
   1b86c:	8446                	mv	s0,a7
   1b86e:	4581                	li	a1,0
   1b870:	b77d                	j	1b81e <__subtf3+0x1a6>
   1b872:	ffd881e3          	beq	a7,t4,1b854 <__subtf3+0x1dc>
   1b876:	4585                	li	a1,1
   1b878:	15ce                	slli	a1,a1,0x33
   1b87a:	40e0073b          	negw	a4,a4
   1b87e:	8fcd                	or	a5,a5,a1
   1b880:	07400593          	li	a1,116
   1b884:	06e5c763          	blt	a1,a4,1b8f2 <__subtf3+0x27a>
   1b888:	03f00593          	li	a1,63
   1b88c:	02e5cc63          	blt	a1,a4,1b8c4 <__subtf3+0x24c>
   1b890:	04000813          	li	a6,64
   1b894:	40e8083b          	subw	a6,a6,a4
   1b898:	010795b3          	sll	a1,a5,a6
   1b89c:	00e55333          	srl	t1,a0,a4
   1b8a0:	01051833          	sll	a6,a0,a6
   1b8a4:	0065e5b3          	or	a1,a1,t1
   1b8a8:	01003833          	snez	a6,a6
   1b8ac:	0105e5b3          	or	a1,a1,a6
   1b8b0:	00e7d733          	srl	a4,a5,a4
   1b8b4:	00c58533          	add	a0,a1,a2
   1b8b8:	9736                	add	a4,a4,a3
   1b8ba:	00c53633          	sltu	a2,a0,a2
   1b8be:	00c707b3          	add	a5,a4,a2
   1b8c2:	b769                	j	1b84c <__subtf3+0x1d4>
   1b8c4:	fc07059b          	addiw	a1,a4,-64
   1b8c8:	04000313          	li	t1,64
   1b8cc:	00b7d5b3          	srl	a1,a5,a1
   1b8d0:	4801                	li	a6,0
   1b8d2:	00670863          	beq	a4,t1,1b8e2 <__subtf3+0x26a>
   1b8d6:	08000813          	li	a6,128
   1b8da:	40e8083b          	subw	a6,a6,a4
   1b8de:	01079833          	sll	a6,a5,a6
   1b8e2:	00a86833          	or	a6,a6,a0
   1b8e6:	01003833          	snez	a6,a6
   1b8ea:	0105e5b3          	or	a1,a1,a6
   1b8ee:	4701                	li	a4,0
   1b8f0:	b7d1                	j	1b8b4 <__subtf3+0x23c>
   1b8f2:	00a7e5b3          	or	a1,a5,a0
   1b8f6:	00b035b3          	snez	a1,a1
   1b8fa:	bfd5                	j	1b8ee <__subtf3+0x276>
   1b8fc:	00180413          	addi	s0,a6,1
   1b900:	ffee0713          	addi	a4,t3,-2
   1b904:	00e47333          	and	t1,s0,a4
   1b908:	0e031d63          	bnez	t1,1ba02 <__subtf3+0x38a>
   1b90c:	00a7e333          	or	t1,a5,a0
   1b910:	02081a63          	bnez	a6,1b944 <__subtf3+0x2cc>
   1b914:	54030363          	beqz	t1,1be5a <__subtf3+0x7e2>
   1b918:	00c6e733          	or	a4,a3,a2
   1b91c:	36070863          	beqz	a4,1bc8c <__subtf3+0x614>
   1b920:	962a                	add	a2,a2,a0
   1b922:	96be                	add	a3,a3,a5
   1b924:	00a637b3          	sltu	a5,a2,a0
   1b928:	97b6                	add	a5,a5,a3
   1b92a:	0337d713          	srli	a4,a5,0x33
   1b92e:	8b05                	andi	a4,a4,1
   1b930:	52070663          	beqz	a4,1be5c <__subtf3+0x7e4>
   1b934:	577d                	li	a4,-1
   1b936:	174e                	slli	a4,a4,0x33
   1b938:	177d                	addi	a4,a4,-1
   1b93a:	8ff9                	and	a5,a5,a4
   1b93c:	8532                	mv	a0,a2
   1b93e:	4701                	li	a4,0
   1b940:	4405                	li	s0,1
   1b942:	bdf1                	j	1b81e <__subtf3+0x1a6>
   1b944:	03d81863          	bne	a6,t4,1b974 <__subtf3+0x2fc>
   1b948:	5a030863          	beqz	t1,1bef8 <__subtf3+0x880>
   1b94c:	0327d713          	srli	a4,a5,0x32
   1b950:	00174713          	xori	a4,a4,1
   1b954:	8b05                	andi	a4,a4,1
   1b956:	0712                	slli	a4,a4,0x4
   1b958:	03089863          	bne	a7,a6,1b988 <__subtf3+0x310>
   1b95c:	00c6e833          	or	a6,a3,a2
   1b960:	00080d63          	beqz	a6,1b97a <__subtf3+0x302>
   1b964:	0326d813          	srli	a6,a3,0x32
   1b968:	00187813          	andi	a6,a6,1
   1b96c:	00081763          	bnez	a6,1b97a <__subtf3+0x302>
   1b970:	4741                	li	a4,16
   1b972:	a021                	j	1b97a <__subtf3+0x302>
   1b974:	4701                	li	a4,0
   1b976:	ffd883e3          	beq	a7,t4,1b95c <__subtf3+0x2e4>
   1b97a:	00031763          	bnez	t1,1b988 <__subtf3+0x310>
   1b97e:	87b6                	mv	a5,a3
   1b980:	8532                	mv	a0,a2
   1b982:	6421                	lui	s0,0x8
   1b984:	147d                	addi	s0,s0,-1 # 7fff <exit-0x80e9>
   1b986:	bd61                	j	1b81e <__subtf3+0x1a6>
   1b988:	8ed1                	or	a3,a3,a2
   1b98a:	dee5                	beqz	a3,1b982 <__subtf3+0x30a>
   1b98c:	4785                	li	a5,1
   1b98e:	6421                	lui	s0,0x8
   1b990:	4901                	li	s2,0
   1b992:	17ca                	slli	a5,a5,0x32
   1b994:	4501                	li	a0,0
   1b996:	147d                	addi	s0,s0,-1 # 7fff <exit-0x80e9>
   1b998:	0337d693          	srli	a3,a5,0x33
   1b99c:	8a85                	andi	a3,a3,1
   1b99e:	ca99                	beqz	a3,1b9b4 <__subtf3+0x33c>
   1b9a0:	66a1                	lui	a3,0x8
   1b9a2:	0405                	addi	s0,s0,1
   1b9a4:	fff68613          	addi	a2,a3,-1 # 7fff <exit-0x80e9>
   1b9a8:	52c40063          	beq	s0,a2,1bec8 <__subtf3+0x850>
   1b9ac:	56fd                	li	a3,-1
   1b9ae:	16ce                	slli	a3,a3,0x33
   1b9b0:	16fd                	addi	a3,a3,-1
   1b9b2:	8ff5                	and	a5,a5,a3
   1b9b4:	00355693          	srli	a3,a0,0x3
   1b9b8:	03d79513          	slli	a0,a5,0x3d
   1b9bc:	8d55                	or	a0,a0,a3
   1b9be:	66a1                	lui	a3,0x8
   1b9c0:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x80e9>
   1b9c2:	838d                	srli	a5,a5,0x3
   1b9c4:	00d41963          	bne	s0,a3,1b9d6 <__subtf3+0x35e>
   1b9c8:	8d5d                	or	a0,a0,a5
   1b9ca:	4781                	li	a5,0
   1b9cc:	c509                	beqz	a0,1b9d6 <__subtf3+0x35e>
   1b9ce:	4785                	li	a5,1
   1b9d0:	17be                	slli	a5,a5,0x2f
   1b9d2:	4501                	li	a0,0
   1b9d4:	4901                	li	s2,0
   1b9d6:	1446                	slli	s0,s0,0x31
   1b9d8:	00f9191b          	slliw	s2,s2,0xf
   1b9dc:	9045                	srli	s0,s0,0x31
   1b9de:	07c2                	slli	a5,a5,0x10
   1b9e0:	01246433          	or	s0,s0,s2
   1b9e4:	1442                	slli	s0,s0,0x30
   1b9e6:	0107d593          	srli	a1,a5,0x10
   1b9ea:	8dc1                	or	a1,a1,s0
   1b9ec:	c319                	beqz	a4,1b9f2 <__subtf3+0x37a>
   1b9ee:	00172073          	csrs	fflags,a4
   1b9f2:	70a2                	ld	ra,40(sp)
   1b9f4:	7402                	ld	s0,32(sp)
   1b9f6:	64e2                	ld	s1,24(sp)
   1b9f8:	6942                	ld	s2,16(sp)
   1b9fa:	69a2                	ld	s3,8(sp)
   1b9fc:	6a02                	ld	s4,0(sp)
   1b9fe:	6145                	addi	sp,sp,48
   1ba00:	8082                	ret
   1ba02:	01d40f63          	beq	s0,t4,1ba20 <__subtf3+0x3a8>
   1ba06:	962a                	add	a2,a2,a0
   1ba08:	00a63533          	sltu	a0,a2,a0
   1ba0c:	96be                	add	a3,a3,a5
   1ba0e:	96aa                	add	a3,a3,a0
   1ba10:	03f69513          	slli	a0,a3,0x3f
   1ba14:	8205                	srli	a2,a2,0x1
   1ba16:	8d51                	or	a0,a0,a2
   1ba18:	0016d793          	srli	a5,a3,0x1
   1ba1c:	4701                	li	a4,0
   1ba1e:	b501                	j	1b81e <__subtf3+0x1a6>
   1ba20:	c491                	beqz	s1,1ba2c <__subtf3+0x3b4>
   1ba22:	478d                	li	a5,3
   1ba24:	00f49863          	bne	s1,a5,1ba34 <__subtf3+0x3bc>
   1ba28:	00091b63          	bnez	s2,1ba3e <__subtf3+0x3c6>
   1ba2c:	4781                	li	a5,0
   1ba2e:	4501                	li	a0,0
   1ba30:	4715                	li	a4,5
   1ba32:	b79d                	j	1b998 <__subtf3+0x320>
   1ba34:	4789                	li	a5,2
   1ba36:	00f49463          	bne	s1,a5,1ba3e <__subtf3+0x3c6>
   1ba3a:	fe0919e3          	bnez	s2,1ba2c <__subtf3+0x3b4>
   1ba3e:	57fd                	li	a5,-1
   1ba40:	557d                	li	a0,-1
   1ba42:	843a                	mv	s0,a4
   1ba44:	4715                	li	a4,5
   1ba46:	4689                	li	a3,2
   1ba48:	00176713          	ori	a4,a4,1
   1ba4c:	46d48b63          	beq	s1,a3,1bec2 <__subtf3+0x84a>
   1ba50:	468d                	li	a3,3
   1ba52:	46d48363          	beq	s1,a3,1beb8 <__subtf3+0x840>
   1ba56:	ec81                	bnez	s1,1ba6e <__subtf3+0x3f6>
   1ba58:	00f57693          	andi	a3,a0,15
   1ba5c:	4611                	li	a2,4
   1ba5e:	00c68863          	beq	a3,a2,1ba6e <__subtf3+0x3f6>
   1ba62:	00450693          	addi	a3,a0,4
   1ba66:	00a6b533          	sltu	a0,a3,a0
   1ba6a:	97aa                	add	a5,a5,a0
   1ba6c:	8536                	mv	a0,a3
   1ba6e:	dc0592e3          	bnez	a1,1b832 <__subtf3+0x1ba>
   1ba72:	b71d                	j	1b998 <__subtf3+0x320>
   1ba74:	dcc5                	beqz	s1,1ba2c <__subtf3+0x3b4>
   1ba76:	478d                	li	a5,3
   1ba78:	00f49a63          	bne	s1,a5,1ba8c <__subtf3+0x414>
   1ba7c:	fa0908e3          	beqz	s2,1ba2c <__subtf3+0x3b4>
   1ba80:	57fd                	li	a5,-1
   1ba82:	557d                	li	a0,-1
   1ba84:	ffe70413          	addi	s0,a4,-2
   1ba88:	4581                	li	a1,0
   1ba8a:	bf6d                	j	1ba44 <__subtf3+0x3cc>
   1ba8c:	4789                	li	a5,2
   1ba8e:	fef499e3          	bne	s1,a5,1ba80 <__subtf3+0x408>
   1ba92:	f8091de3          	bnez	s2,1ba2c <__subtf3+0x3b4>
   1ba96:	b7ed                	j	1ba80 <__subtf3+0x408>
   1ba98:	0cb05763          	blez	a1,1bb66 <__subtf3+0x4ee>
   1ba9c:	08089363          	bnez	a7,1bb22 <__subtf3+0x4aa>
   1baa0:	00c6e5b3          	or	a1,a3,a2
   1baa4:	c40589e3          	beqz	a1,1b6f6 <__subtf3+0x7e>
   1baa8:	fff7059b          	addiw	a1,a4,-1
   1baac:	e58d                	bnez	a1,1bad6 <__subtf3+0x45e>
   1baae:	40c50633          	sub	a2,a0,a2
   1bab2:	40d786b3          	sub	a3,a5,a3
   1bab6:	00c537b3          	sltu	a5,a0,a2
   1baba:	40f687b3          	sub	a5,a3,a5
   1babe:	8532                	mv	a0,a2
   1bac0:	0337d713          	srli	a4,a5,0x33
   1bac4:	8b05                	andi	a4,a4,1
   1bac6:	36070e63          	beqz	a4,1be42 <__subtf3+0x7ca>
   1baca:	00d79993          	slli	s3,a5,0xd
   1bace:	00d9d993          	srli	s3,s3,0xd
   1bad2:	8a2a                	mv	s4,a0
   1bad4:	ac65                	j	1bd8c <__subtf3+0x714>
   1bad6:	c9d801e3          	beq	a6,t4,1b758 <__subtf3+0xe0>
   1bada:	07400713          	li	a4,116
   1bade:	06b74f63          	blt	a4,a1,1bb5c <__subtf3+0x4e4>
   1bae2:	03f00713          	li	a4,63
   1bae6:	04b74463          	blt	a4,a1,1bb2e <__subtf3+0x4b6>
   1baea:	04000813          	li	a6,64
   1baee:	40b8083b          	subw	a6,a6,a1
   1baf2:	01069733          	sll	a4,a3,a6
   1baf6:	00b658b3          	srl	a7,a2,a1
   1bafa:	01061833          	sll	a6,a2,a6
   1bafe:	01176733          	or	a4,a4,a7
   1bb02:	01003833          	snez	a6,a6
   1bb06:	01076733          	or	a4,a4,a6
   1bb0a:	00b6d5b3          	srl	a1,a3,a1
   1bb0e:	40e50733          	sub	a4,a0,a4
   1bb12:	40b785b3          	sub	a1,a5,a1
   1bb16:	00e537b3          	sltu	a5,a0,a4
   1bb1a:	40f587b3          	sub	a5,a1,a5
   1bb1e:	853a                	mv	a0,a4
   1bb20:	b745                	j	1bac0 <__subtf3+0x448>
   1bb22:	c3d80be3          	beq	a6,t4,1b758 <__subtf3+0xe0>
   1bb26:	4705                	li	a4,1
   1bb28:	174e                	slli	a4,a4,0x33
   1bb2a:	8ed9                	or	a3,a3,a4
   1bb2c:	b77d                	j	1bada <__subtf3+0x462>
   1bb2e:	fc05871b          	addiw	a4,a1,-64
   1bb32:	04000893          	li	a7,64
   1bb36:	00e6d733          	srl	a4,a3,a4
   1bb3a:	4801                	li	a6,0
   1bb3c:	01158863          	beq	a1,a7,1bb4c <__subtf3+0x4d4>
   1bb40:	08000813          	li	a6,128
   1bb44:	40b8083b          	subw	a6,a6,a1
   1bb48:	01069833          	sll	a6,a3,a6
   1bb4c:	00c86833          	or	a6,a6,a2
   1bb50:	01003833          	snez	a6,a6
   1bb54:	01076733          	or	a4,a4,a6
   1bb58:	4581                	li	a1,0
   1bb5a:	bf55                	j	1bb0e <__subtf3+0x496>
   1bb5c:	00c6e733          	or	a4,a3,a2
   1bb60:	00e03733          	snez	a4,a4
   1bb64:	bfd5                	j	1bb58 <__subtf3+0x4e0>
   1bb66:	cde5                	beqz	a1,1bc5e <__subtf3+0x5e6>
   1bb68:	06081563          	bnez	a6,1bbd2 <__subtf3+0x55a>
   1bb6c:	00a7e5b3          	or	a1,a5,a0
   1bb70:	e195                	bnez	a1,1bb94 <__subtf3+0x51c>
   1bb72:	2dd89f63          	bne	a7,t4,1be50 <__subtf3+0x7d8>
   1bb76:	00c6e533          	or	a0,a3,a2
   1bb7a:	30050f63          	beqz	a0,1be98 <__subtf3+0x820>
   1bb7e:	0326d713          	srli	a4,a3,0x32
   1bb82:	00174713          	xori	a4,a4,1
   1bb86:	8b05                	andi	a4,a4,1
   1bb88:	0712                	slli	a4,a4,0x4
   1bb8a:	87b6                	mv	a5,a3
   1bb8c:	8532                	mv	a0,a2
   1bb8e:	8446                	mv	s0,a7
   1bb90:	891a                	mv	s2,t1
   1bb92:	b171                	j	1b81e <__subtf3+0x1a6>
   1bb94:	fff74713          	not	a4,a4
   1bb98:	2701                	sext.w	a4,a4
   1bb9a:	eb19                	bnez	a4,1bbb0 <__subtf3+0x538>
   1bb9c:	40a60533          	sub	a0,a2,a0
   1bba0:	8e9d                	sub	a3,a3,a5
   1bba2:	00a63633          	sltu	a2,a2,a0
   1bba6:	40c687b3          	sub	a5,a3,a2
   1bbaa:	8446                	mv	s0,a7
   1bbac:	891a                	mv	s2,t1
   1bbae:	bf09                	j	1bac0 <__subtf3+0x448>
   1bbb0:	03d89863          	bne	a7,t4,1bbe0 <__subtf3+0x568>
   1bbb4:	00c6e533          	or	a0,a3,a2
   1bbb8:	2e050063          	beqz	a0,1be98 <__subtf3+0x820>
   1bbbc:	0326d713          	srli	a4,a3,0x32
   1bbc0:	00174713          	xori	a4,a4,1
   1bbc4:	8b05                	andi	a4,a4,1
   1bbc6:	0712                	slli	a4,a4,0x4
   1bbc8:	87b6                	mv	a5,a3
   1bbca:	8532                	mv	a0,a2
   1bbcc:	8446                	mv	s0,a7
   1bbce:	891a                	mv	s2,t1
   1bbd0:	b979                	j	1b86e <__subtf3+0x1f6>
   1bbd2:	ffd881e3          	beq	a7,t4,1bbb4 <__subtf3+0x53c>
   1bbd6:	4585                	li	a1,1
   1bbd8:	15ce                	slli	a1,a1,0x33
   1bbda:	40e0073b          	negw	a4,a4
   1bbde:	8fcd                	or	a5,a5,a1
   1bbe0:	07400593          	li	a1,116
   1bbe4:	06e5c863          	blt	a1,a4,1bc54 <__subtf3+0x5dc>
   1bbe8:	03f00593          	li	a1,63
   1bbec:	02e5cd63          	blt	a1,a4,1bc26 <__subtf3+0x5ae>
   1bbf0:	04000813          	li	a6,64
   1bbf4:	40e8083b          	subw	a6,a6,a4
   1bbf8:	010795b3          	sll	a1,a5,a6
   1bbfc:	00e55e33          	srl	t3,a0,a4
   1bc00:	01051833          	sll	a6,a0,a6
   1bc04:	01c5e5b3          	or	a1,a1,t3
   1bc08:	01003833          	snez	a6,a6
   1bc0c:	0105e5b3          	or	a1,a1,a6
   1bc10:	00e7d733          	srl	a4,a5,a4
   1bc14:	40b60533          	sub	a0,a2,a1
   1bc18:	40e68733          	sub	a4,a3,a4
   1bc1c:	00a63633          	sltu	a2,a2,a0
   1bc20:	40c707b3          	sub	a5,a4,a2
   1bc24:	b759                	j	1bbaa <__subtf3+0x532>
   1bc26:	fc07059b          	addiw	a1,a4,-64
   1bc2a:	04000e13          	li	t3,64
   1bc2e:	00b7d5b3          	srl	a1,a5,a1
   1bc32:	4801                	li	a6,0
   1bc34:	01c70863          	beq	a4,t3,1bc44 <__subtf3+0x5cc>
   1bc38:	08000813          	li	a6,128
   1bc3c:	40e8083b          	subw	a6,a6,a4
   1bc40:	01079833          	sll	a6,a5,a6
   1bc44:	00a86833          	or	a6,a6,a0
   1bc48:	01003833          	snez	a6,a6
   1bc4c:	0105e5b3          	or	a1,a1,a6
   1bc50:	4701                	li	a4,0
   1bc52:	b7c9                	j	1bc14 <__subtf3+0x59c>
   1bc54:	00a7e5b3          	or	a1,a5,a0
   1bc58:	00b035b3          	snez	a1,a1
   1bc5c:	bfd5                	j	1bc50 <__subtf3+0x5d8>
   1bc5e:	00180f13          	addi	t5,a6,1
   1bc62:	ffee0713          	addi	a4,t3,-2
   1bc66:	00ef7733          	and	a4,t5,a4
   1bc6a:	ef65                	bnez	a4,1bd62 <__subtf3+0x6ea>
   1bc6c:	00c6ee33          	or	t3,a3,a2
   1bc70:	00a7ef33          	or	t5,a5,a0
   1bc74:	0a081363          	bnez	a6,1bd1a <__subtf3+0x6a2>
   1bc78:	040f1e63          	bnez	t5,1bcd4 <__subtf3+0x65c>
   1bc7c:	1e0e1263          	bnez	t3,1be60 <__subtf3+0x7e8>
   1bc80:	ffe48913          	addi	s2,s1,-2
   1bc84:	00193913          	seqz	s2,s2
   1bc88:	4781                	li	a5,0
   1bc8a:	4501                	li	a0,0
   1bc8c:	00f56733          	or	a4,a0,a5
   1bc90:	22070063          	beqz	a4,1beb0 <__subtf3+0x838>
   1bc94:	00151693          	slli	a3,a0,0x1
   1bc98:	03f55713          	srli	a4,a0,0x3f
   1bc9c:	00179593          	slli	a1,a5,0x1
   1bca0:	0076f613          	andi	a2,a3,7
   1bca4:	95ba                	add	a1,a1,a4
   1bca6:	4701                	li	a4,0
   1bca8:	c205                	beqz	a2,1bcc8 <__subtf3+0x650>
   1bcaa:	4709                	li	a4,2
   1bcac:	1ce48b63          	beq	s1,a4,1be82 <__subtf3+0x80a>
   1bcb0:	470d                	li	a4,3
   1bcb2:	1ae48d63          	beq	s1,a4,1be6c <__subtf3+0x7f4>
   1bcb6:	4705                	li	a4,1
   1bcb8:	e881                	bnez	s1,1bcc8 <__subtf3+0x650>
   1bcba:	00f6f613          	andi	a2,a3,15
   1bcbe:	4811                	li	a6,4
   1bcc0:	ffc6b693          	sltiu	a3,a3,-4
   1bcc4:	1b061963          	bne	a2,a6,1be76 <__subtf3+0x7fe>
   1bcc8:	91d1                	srli	a1,a1,0x34
   1bcca:	0015c593          	xori	a1,a1,1
   1bcce:	8985                	andi	a1,a1,1
   1bcd0:	4401                	li	s0,0
   1bcd2:	b6b1                	j	1b81e <__subtf3+0x1a6>
   1bcd4:	fa0e0ce3          	beqz	t3,1bc8c <__subtf3+0x614>
   1bcd8:	40c505b3          	sub	a1,a0,a2
   1bcdc:	00b53833          	sltu	a6,a0,a1
   1bce0:	40d78733          	sub	a4,a5,a3
   1bce4:	41070733          	sub	a4,a4,a6
   1bce8:	03375813          	srli	a6,a4,0x33
   1bcec:	00187813          	andi	a6,a6,1
   1bcf0:	00080b63          	beqz	a6,1bd06 <__subtf3+0x68e>
   1bcf4:	40a60533          	sub	a0,a2,a0
   1bcf8:	8e9d                	sub	a3,a3,a5
   1bcfa:	00a63633          	sltu	a2,a2,a0
   1bcfe:	40c687b3          	sub	a5,a3,a2
   1bd02:	891a                	mv	s2,t1
   1bd04:	b761                	j	1bc8c <__subtf3+0x614>
   1bd06:	00e5e533          	or	a0,a1,a4
   1bd0a:	14051e63          	bnez	a0,1be66 <__subtf3+0x7ee>
   1bd0e:	ffe48913          	addi	s2,s1,-2
   1bd12:	00193913          	seqz	s2,s2
   1bd16:	4781                	li	a5,0
   1bd18:	bf95                	j	1bc8c <__subtf3+0x614>
   1bd1a:	03d81663          	bne	a6,t4,1bd46 <__subtf3+0x6ce>
   1bd1e:	1c0f0963          	beqz	t5,1bef0 <__subtf3+0x878>
   1bd22:	0327d713          	srli	a4,a5,0x32
   1bd26:	00174713          	xori	a4,a4,1
   1bd2a:	8b05                	andi	a4,a4,1
   1bd2c:	0712                	slli	a4,a4,0x4
   1bd2e:	03089763          	bne	a7,a6,1bd5c <__subtf3+0x6e4>
   1bd32:	000e0d63          	beqz	t3,1bd4c <__subtf3+0x6d4>
   1bd36:	0326d813          	srli	a6,a3,0x32
   1bd3a:	00187813          	andi	a6,a6,1
   1bd3e:	00081763          	bnez	a6,1bd4c <__subtf3+0x6d4>
   1bd42:	4741                	li	a4,16
   1bd44:	a021                	j	1bd4c <__subtf3+0x6d4>
   1bd46:	4701                	li	a4,0
   1bd48:	ffd885e3          	beq	a7,t4,1bd32 <__subtf3+0x6ba>
   1bd4c:	000f1863          	bnez	t5,1bd5c <__subtf3+0x6e4>
   1bd50:	140e0863          	beqz	t3,1bea0 <__subtf3+0x828>
   1bd54:	87b6                	mv	a5,a3
   1bd56:	8532                	mv	a0,a2
   1bd58:	891a                	mv	s2,t1
   1bd5a:	b125                	j	1b982 <__subtf3+0x30a>
   1bd5c:	c20e03e3          	beqz	t3,1b982 <__subtf3+0x30a>
   1bd60:	b135                	j	1b98c <__subtf3+0x314>
   1bd62:	40c50a33          	sub	s4,a0,a2
   1bd66:	01453733          	sltu	a4,a0,s4
   1bd6a:	40d789b3          	sub	s3,a5,a3
   1bd6e:	40e989b3          	sub	s3,s3,a4
   1bd72:	0339d713          	srli	a4,s3,0x33
   1bd76:	8b05                	andi	a4,a4,1
   1bd78:	cf25                	beqz	a4,1bdf0 <__subtf3+0x778>
   1bd7a:	40a60a33          	sub	s4,a2,a0
   1bd7e:	40f689b3          	sub	s3,a3,a5
   1bd82:	01463633          	sltu	a2,a2,s4
   1bd86:	40c989b3          	sub	s3,s3,a2
   1bd8a:	891a                	mv	s2,t1
   1bd8c:	06098663          	beqz	s3,1bdf8 <__subtf3+0x780>
   1bd90:	854e                	mv	a0,s3
   1bd92:	53a000ef          	jal	ra,1c2cc <__clzdi2>
   1bd96:	2501                	sext.w	a0,a0
   1bd98:	ff45069b          	addiw	a3,a0,-12
   1bd9c:	03f00793          	li	a5,63
   1bda0:	8736                	mv	a4,a3
   1bda2:	06d7c163          	blt	a5,a3,1be04 <__subtf3+0x78c>
   1bda6:	04000793          	li	a5,64
   1bdaa:	9f95                	subw	a5,a5,a3
   1bdac:	00d999b3          	sll	s3,s3,a3
   1bdb0:	00fa57b3          	srl	a5,s4,a5
   1bdb4:	0137e7b3          	or	a5,a5,s3
   1bdb8:	00da1533          	sll	a0,s4,a3
   1bdbc:	0686ce63          	blt	a3,s0,1be38 <__subtf3+0x7c0>
   1bdc0:	9f01                	subw	a4,a4,s0
   1bdc2:	0017061b          	addiw	a2,a4,1
   1bdc6:	03f00693          	li	a3,63
   1bdca:	04c6c363          	blt	a3,a2,1be10 <__subtf3+0x798>
   1bdce:	04000713          	li	a4,64
   1bdd2:	9f11                	subw	a4,a4,a2
   1bdd4:	00e796b3          	sll	a3,a5,a4
   1bdd8:	00c555b3          	srl	a1,a0,a2
   1bddc:	00e51733          	sll	a4,a0,a4
   1bde0:	8ecd                	or	a3,a3,a1
   1bde2:	00e03733          	snez	a4,a4
   1bde6:	00e6e533          	or	a0,a3,a4
   1bdea:	00c7d7b3          	srl	a5,a5,a2
   1bdee:	bd79                	j	1bc8c <__subtf3+0x614>
   1bdf0:	013a6533          	or	a0,s4,s3
   1bdf4:	fd41                	bnez	a0,1bd8c <__subtf3+0x714>
   1bdf6:	bf21                	j	1bd0e <__subtf3+0x696>
   1bdf8:	8552                	mv	a0,s4
   1bdfa:	4d2000ef          	jal	ra,1c2cc <__clzdi2>
   1bdfe:	0405051b          	addiw	a0,a0,64
   1be02:	bf59                	j	1bd98 <__subtf3+0x720>
   1be04:	fb45079b          	addiw	a5,a0,-76
   1be08:	00fa17b3          	sll	a5,s4,a5
   1be0c:	4501                	li	a0,0
   1be0e:	b77d                	j	1bdbc <__subtf3+0x744>
   1be10:	fc17071b          	addiw	a4,a4,-63
   1be14:	04000813          	li	a6,64
   1be18:	00e7d6b3          	srl	a3,a5,a4
   1be1c:	4701                	li	a4,0
   1be1e:	01060763          	beq	a2,a6,1be2c <__subtf3+0x7b4>
   1be22:	08000713          	li	a4,128
   1be26:	9f11                	subw	a4,a4,a2
   1be28:	00e79733          	sll	a4,a5,a4
   1be2c:	8f49                	or	a4,a4,a0
   1be2e:	00e03733          	snez	a4,a4
   1be32:	00e6e533          	or	a0,a3,a4
   1be36:	b5c5                	j	1bd16 <__subtf3+0x69e>
   1be38:	577d                	li	a4,-1
   1be3a:	174e                	slli	a4,a4,0x33
   1be3c:	177d                	addi	a4,a4,-1
   1be3e:	8c15                	sub	s0,s0,a3
   1be40:	8ff9                	and	a5,a5,a4
   1be42:	e40405e3          	beqz	s0,1bc8c <__subtf3+0x614>
   1be46:	b229                	j	1b750 <__subtf3+0xd8>
   1be48:	87b6                	mv	a5,a3
   1be4a:	8532                	mv	a0,a2
   1be4c:	8446                	mv	s0,a7
   1be4e:	bfd5                	j	1be42 <__subtf3+0x7ca>
   1be50:	87b6                	mv	a5,a3
   1be52:	8532                	mv	a0,a2
   1be54:	8446                	mv	s0,a7
   1be56:	891a                	mv	s2,t1
   1be58:	b7ed                	j	1be42 <__subtf3+0x7ca>
   1be5a:	87b6                	mv	a5,a3
   1be5c:	8532                	mv	a0,a2
   1be5e:	b53d                	j	1bc8c <__subtf3+0x614>
   1be60:	87b6                	mv	a5,a3
   1be62:	8532                	mv	a0,a2
   1be64:	bd79                	j	1bd02 <__subtf3+0x68a>
   1be66:	87ba                	mv	a5,a4
   1be68:	852e                	mv	a0,a1
   1be6a:	b50d                	j	1bc8c <__subtf3+0x614>
   1be6c:	4705                	li	a4,1
   1be6e:	e4091de3          	bnez	s2,1bcc8 <__subtf3+0x650>
   1be72:	ff86b693          	sltiu	a3,a3,-8
   1be76:	0016c693          	xori	a3,a3,1
   1be7a:	1682                	slli	a3,a3,0x20
   1be7c:	9281                	srli	a3,a3,0x20
   1be7e:	95b6                	add	a1,a1,a3
   1be80:	b5a1                	j	1bcc8 <__subtf3+0x650>
   1be82:	4705                	li	a4,1
   1be84:	e40902e3          	beqz	s2,1bcc8 <__subtf3+0x650>
   1be88:	b7ed                	j	1be72 <__subtf3+0x7fa>
   1be8a:	4781                	li	a5,0
   1be8c:	8446                	mv	s0,a7
   1be8e:	4701                	li	a4,0
   1be90:	b621                	j	1b998 <__subtf3+0x320>
   1be92:	4781                	li	a5,0
   1be94:	4501                	li	a0,0
   1be96:	bfe5                	j	1be8e <__subtf3+0x816>
   1be98:	4781                	li	a5,0
   1be9a:	8446                	mv	s0,a7
   1be9c:	891a                	mv	s2,t1
   1be9e:	bfc5                	j	1be8e <__subtf3+0x816>
   1bea0:	4785                	li	a5,1
   1bea2:	6421                	lui	s0,0x8
   1bea4:	4501                	li	a0,0
   1bea6:	4901                	li	s2,0
   1bea8:	17ca                	slli	a5,a5,0x32
   1beaa:	147d                	addi	s0,s0,-1 # 7fff <exit-0x80e9>
   1beac:	4741                	li	a4,16
   1beae:	b4ed                	j	1b998 <__subtf3+0x320>
   1beb0:	4781                	li	a5,0
   1beb2:	4501                	li	a0,0
   1beb4:	4401                	li	s0,0
   1beb6:	bfe1                	j	1be8e <__subtf3+0x816>
   1beb8:	ba091be3          	bnez	s2,1ba6e <__subtf3+0x3f6>
   1bebc:	00850693          	addi	a3,a0,8
   1bec0:	b65d                	j	1ba66 <__subtf3+0x3ee>
   1bec2:	ba0906e3          	beqz	s2,1ba6e <__subtf3+0x3f6>
   1bec6:	bfdd                	j	1bebc <__subtf3+0x844>
   1bec8:	4501                	li	a0,0
   1beca:	cc99                	beqz	s1,1bee8 <__subtf3+0x870>
   1becc:	478d                	li	a5,3
   1bece:	00f49863          	bne	s1,a5,1bede <__subtf3+0x866>
   1bed2:	00090b63          	beqz	s2,1bee8 <__subtf3+0x870>
   1bed6:	557d                	li	a0,-1
   1bed8:	ffe68413          	addi	s0,a3,-2
   1bedc:	a031                	j	1bee8 <__subtf3+0x870>
   1bede:	4789                	li	a5,2
   1bee0:	fef49be3          	bne	s1,a5,1bed6 <__subtf3+0x85e>
   1bee4:	fe0909e3          	beqz	s2,1bed6 <__subtf3+0x85e>
   1bee8:	00576713          	ori	a4,a4,5
   1beec:	87aa                	mv	a5,a0
   1beee:	b4d9                	j	1b9b4 <__subtf3+0x33c>
   1bef0:	4701                	li	a4,0
   1bef2:	e5089fe3          	bne	a7,a6,1bd50 <__subtf3+0x6d8>
   1bef6:	bd35                	j	1bd32 <__subtf3+0x6ba>
   1bef8:	4701                	li	a4,0
   1befa:	a90892e3          	bne	a7,a6,1b97e <__subtf3+0x306>
   1befe:	bcb9                	j	1b95c <__subtf3+0x2e4>

000000000001bf00 <__fixtfsi>:
   1bf00:	862a                	mv	a2,a0
   1bf02:	002027f3          	frrm	a5
   1bf06:	6811                	lui	a6,0x4
   1bf08:	00159693          	slli	a3,a1,0x1
   1bf0c:	01059793          	slli	a5,a1,0x10
   1bf10:	92c5                	srli	a3,a3,0x31
   1bf12:	ffe80713          	addi	a4,a6,-2 # 3ffe <exit-0xc0ea>
   1bf16:	83c1                	srli	a5,a5,0x10
   1bf18:	91fd                	srli	a1,a1,0x3f
   1bf1a:	00d74863          	blt	a4,a3,1bf2a <__fixtfsi+0x2a>
   1bf1e:	e6a5                	bnez	a3,1bf86 <__fixtfsi+0x86>
   1bf20:	00f56633          	or	a2,a0,a5
   1bf24:	4501                	li	a0,0
   1bf26:	e61d                	bnez	a2,1bf54 <__fixtfsi+0x54>
   1bf28:	8082                	ret
   1bf2a:	01d80713          	addi	a4,a6,29
   1bf2e:	02d75563          	bge	a4,a3,1bf58 <__fixtfsi+0x58>
   1bf32:	80000737          	lui	a4,0x80000
   1bf36:	fff74713          	not	a4,a4
   1bf3a:	00b7053b          	addw	a0,a4,a1
   1bf3e:	c5b1                	beqz	a1,1bf8a <__fixtfsi+0x8a>
   1bf40:	0879                	addi	a6,a6,30
   1bf42:	4741                	li	a4,16
   1bf44:	05069463          	bne	a3,a6,1bf8c <__fixtfsi+0x8c>
   1bf48:	0117d693          	srli	a3,a5,0x11
   1bf4c:	e2a1                	bnez	a3,1bf8c <__fixtfsi+0x8c>
   1bf4e:	17be                	slli	a5,a5,0x2f
   1bf50:	8fd1                	or	a5,a5,a2
   1bf52:	cb8d                	beqz	a5,1bf84 <__fixtfsi+0x84>
   1bf54:	4705                	li	a4,1
   1bf56:	a81d                	j	1bf8c <__fixtfsi+0x8c>
   1bf58:	4705                	li	a4,1
   1bf5a:	1742                	slli	a4,a4,0x30
   1bf5c:	8fd9                	or	a5,a5,a4
   1bf5e:	6611                	lui	a2,0x4
   1bf60:	7771                	lui	a4,0xffffc
   1bf62:	2745                	addiw	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffdcc41>
   1bf64:	02f6061b          	addiw	a2,a2,47 # 402f <exit-0xc0b9>
   1bf68:	9f35                	addw	a4,a4,a3
   1bf6a:	40d606bb          	subw	a3,a2,a3
   1bf6e:	00e79733          	sll	a4,a5,a4
   1bf72:	00d7d7b3          	srl	a5,a5,a3
   1bf76:	8f49                	or	a4,a4,a0
   1bf78:	0007851b          	sext.w	a0,a5
   1bf7c:	c199                	beqz	a1,1bf82 <__fixtfsi+0x82>
   1bf7e:	40a0053b          	negw	a0,a0
   1bf82:	fb69                	bnez	a4,1bf54 <__fixtfsi+0x54>
   1bf84:	8082                	ret
   1bf86:	4501                	li	a0,0
   1bf88:	b7f1                	j	1bf54 <__fixtfsi+0x54>
   1bf8a:	4741                	li	a4,16
   1bf8c:	00172073          	csrs	fflags,a4
   1bf90:	bfd5                	j	1bf84 <__fixtfsi+0x84>

000000000001bf92 <__floatsitf>:
   1bf92:	1101                	addi	sp,sp,-32
   1bf94:	ec06                	sd	ra,24(sp)
   1bf96:	e822                	sd	s0,16(sp)
   1bf98:	e426                	sd	s1,8(sp)
   1bf9a:	c139                	beqz	a0,1bfe0 <__floatsitf+0x4e>
   1bf9c:	0005079b          	sext.w	a5,a0
   1bfa0:	03f55493          	srli	s1,a0,0x3f
   1bfa4:	00055463          	bgez	a0,1bfac <__floatsitf+0x1a>
   1bfa8:	40f007bb          	negw	a5,a5
   1bfac:	02079413          	slli	s0,a5,0x20
   1bfb0:	9001                	srli	s0,s0,0x20
   1bfb2:	8522                	mv	a0,s0
   1bfb4:	318000ef          	jal	ra,1c2cc <__clzdi2>
   1bfb8:	6591                	lui	a1,0x4
   1bfba:	03e5859b          	addiw	a1,a1,62 # 403e <exit-0xc0aa>
   1bfbe:	9d89                	subw	a1,a1,a0
   1bfc0:	3545                	addiw	a0,a0,-15
   1bfc2:	00a417b3          	sll	a5,s0,a0
   1bfc6:	60e2                	ld	ra,24(sp)
   1bfc8:	6442                	ld	s0,16(sp)
   1bfca:	00f4949b          	slliw	s1,s1,0xf
   1bfce:	8dc5                	or	a1,a1,s1
   1bfd0:	07c2                	slli	a5,a5,0x10
   1bfd2:	15c2                	slli	a1,a1,0x30
   1bfd4:	83c1                	srli	a5,a5,0x10
   1bfd6:	64a2                	ld	s1,8(sp)
   1bfd8:	4501                	li	a0,0
   1bfda:	8ddd                	or	a1,a1,a5
   1bfdc:	6105                	addi	sp,sp,32
   1bfde:	8082                	ret
   1bfe0:	4781                	li	a5,0
   1bfe2:	4581                	li	a1,0
   1bfe4:	4481                	li	s1,0
   1bfe6:	b7c5                	j	1bfc6 <__floatsitf+0x34>

000000000001bfe8 <__extenddftf2>:
   1bfe8:	1101                	addi	sp,sp,-32
   1bfea:	e20507d3          	fmv.x.d	a5,fa0
   1bfee:	ec06                	sd	ra,24(sp)
   1bff0:	e822                	sd	s0,16(sp)
   1bff2:	e426                	sd	s1,8(sp)
   1bff4:	00202773          	frrm	a4
   1bff8:	0347d513          	srli	a0,a5,0x34
   1bffc:	7ff57513          	andi	a0,a0,2047
   1c000:	00c79413          	slli	s0,a5,0xc
   1c004:	03f7d493          	srli	s1,a5,0x3f
   1c008:	00150793          	addi	a5,a0,1
   1c00c:	7fe7f793          	andi	a5,a5,2046
   1c010:	8031                	srli	s0,s0,0xc
   1c012:	cb91                	beqz	a5,1c026 <__extenddftf2+0x3e>
   1c014:	6791                	lui	a5,0x4
   1c016:	c0078793          	addi	a5,a5,-1024 # 3c00 <exit-0xc4e8>
   1c01a:	953e                	add	a0,a0,a5
   1c01c:	00445793          	srli	a5,s0,0x4
   1c020:	1472                	slli	s0,s0,0x3c
   1c022:	4701                	li	a4,0
   1c024:	a8b9                	j	1c082 <__extenddftf2+0x9a>
   1c026:	ed1d                	bnez	a0,1c064 <__extenddftf2+0x7c>
   1c028:	4781                	li	a5,0
   1c02a:	dc65                	beqz	s0,1c022 <__extenddftf2+0x3a>
   1c02c:	8522                	mv	a0,s0
   1c02e:	29e000ef          	jal	ra,1c2cc <__clzdi2>
   1c032:	0005071b          	sext.w	a4,a0
   1c036:	47b9                	li	a5,14
   1c038:	02e7c063          	blt	a5,a4,1c058 <__extenddftf2+0x70>
   1c03c:	47bd                	li	a5,15
   1c03e:	9f89                	subw	a5,a5,a0
   1c040:	0315071b          	addiw	a4,a0,49
   1c044:	00f457b3          	srl	a5,s0,a5
   1c048:	00e41433          	sll	s0,s0,a4
   1c04c:	6711                	lui	a4,0x4
   1c04e:	c0c7071b          	addiw	a4,a4,-1012 # 3c0c <exit-0xc4dc>
   1c052:	40a7053b          	subw	a0,a4,a0
   1c056:	b7f1                	j	1c022 <__extenddftf2+0x3a>
   1c058:	ff15079b          	addiw	a5,a0,-15
   1c05c:	00f417b3          	sll	a5,s0,a5
   1c060:	4401                	li	s0,0
   1c062:	b7ed                	j	1c04c <__extenddftf2+0x64>
   1c064:	c021                	beqz	s0,1c0a4 <__extenddftf2+0xbc>
   1c066:	03345713          	srli	a4,s0,0x33
   1c06a:	00174713          	xori	a4,a4,1
   1c06e:	4685                	li	a3,1
   1c070:	00445793          	srli	a5,s0,0x4
   1c074:	8b05                	andi	a4,a4,1
   1c076:	16be                	slli	a3,a3,0x2f
   1c078:	6521                	lui	a0,0x8
   1c07a:	0712                	slli	a4,a4,0x4
   1c07c:	8fd5                	or	a5,a5,a3
   1c07e:	1472                	slli	s0,s0,0x3c
   1c080:	157d                	addi	a0,a0,-1 # 7fff <exit-0x80e9>
   1c082:	01079593          	slli	a1,a5,0x10
   1c086:	00f4979b          	slliw	a5,s1,0xf
   1c08a:	8d5d                	or	a0,a0,a5
   1c08c:	1542                	slli	a0,a0,0x30
   1c08e:	81c1                	srli	a1,a1,0x10
   1c090:	8dc9                	or	a1,a1,a0
   1c092:	c319                	beqz	a4,1c098 <__extenddftf2+0xb0>
   1c094:	00172073          	csrs	fflags,a4
   1c098:	60e2                	ld	ra,24(sp)
   1c09a:	8522                	mv	a0,s0
   1c09c:	6442                	ld	s0,16(sp)
   1c09e:	64a2                	ld	s1,8(sp)
   1c0a0:	6105                	addi	sp,sp,32
   1c0a2:	8082                	ret
   1c0a4:	6521                	lui	a0,0x8
   1c0a6:	4781                	li	a5,0
   1c0a8:	157d                	addi	a0,a0,-1 # 7fff <exit-0x80e9>
   1c0aa:	bfa5                	j	1c022 <__extenddftf2+0x3a>

000000000001c0ac <__trunctfdf2>:
   1c0ac:	00202673          	frrm	a2
   1c0b0:	68a1                	lui	a7,0x8
   1c0b2:	0305d713          	srli	a4,a1,0x30
   1c0b6:	fff88e13          	addi	t3,a7,-1 # 7fff <exit-0x80e9>
   1c0ba:	01c77833          	and	a6,a4,t3
   1c0be:	03f5d693          	srli	a3,a1,0x3f
   1c0c2:	00180793          	addi	a5,a6,1
   1c0c6:	05c2                	slli	a1,a1,0x10
   1c0c8:	18f9                	addi	a7,a7,-2
   1c0ca:	81b5                	srli	a1,a1,0xd
   1c0cc:	03d55713          	srli	a4,a0,0x3d
   1c0d0:	0117f7b3          	and	a5,a5,a7
   1c0d4:	2601                	sext.w	a2,a2
   1c0d6:	8f4d                	or	a4,a4,a1
   1c0d8:	00351313          	slli	t1,a0,0x3
   1c0dc:	16078863          	beqz	a5,1c24c <__trunctfdf2+0x1a0>
   1c0e0:	77f1                	lui	a5,0xffffc
   1c0e2:	40078793          	addi	a5,a5,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffdd030>
   1c0e6:	983e                	add	a6,a6,a5
   1c0e8:	7fe00793          	li	a5,2046
   1c0ec:	0907db63          	bge	a5,a6,1c182 <__trunctfdf2+0xd6>
   1c0f0:	c229                	beqz	a2,1c132 <__trunctfdf2+0x86>
   1c0f2:	478d                	li	a5,3
   1c0f4:	02f61b63          	bne	a2,a5,1c12a <__trunctfdf2+0x7e>
   1c0f8:	ce8d                	beqz	a3,1c132 <__trunctfdf2+0x86>
   1c0fa:	57fd                	li	a5,-1
   1c0fc:	7fe00813          	li	a6,2046
   1c100:	4701                	li	a4,0
   1c102:	4595                	li	a1,5
   1c104:	4509                	li	a0,2
   1c106:	0015e593          	ori	a1,a1,1
   1c10a:	18a60d63          	beq	a2,a0,1c2a4 <__trunctfdf2+0x1f8>
   1c10e:	450d                	li	a0,3
   1c110:	18a60663          	beq	a2,a0,1c29c <__trunctfdf2+0x1f0>
   1c114:	e619                	bnez	a2,1c122 <__trunctfdf2+0x76>
   1c116:	00f7f513          	andi	a0,a5,15
   1c11a:	4891                	li	a7,4
   1c11c:	01150363          	beq	a0,a7,1c122 <__trunctfdf2+0x76>
   1c120:	0791                	addi	a5,a5,4
   1c122:	cf01                	beqz	a4,1c13a <__trunctfdf2+0x8e>
   1c124:	0025e593          	ori	a1,a1,2
   1c128:	a809                	j	1c13a <__trunctfdf2+0x8e>
   1c12a:	4789                	li	a5,2
   1c12c:	fcf617e3          	bne	a2,a5,1c0fa <__trunctfdf2+0x4e>
   1c130:	d6e9                	beqz	a3,1c0fa <__trunctfdf2+0x4e>
   1c132:	4781                	li	a5,0
   1c134:	7ff00813          	li	a6,2047
   1c138:	4595                	li	a1,5
   1c13a:	0377d713          	srli	a4,a5,0x37
   1c13e:	8b05                	andi	a4,a4,1
   1c140:	cb11                	beqz	a4,1c154 <__trunctfdf2+0xa8>
   1c142:	0805                	addi	a6,a6,1
   1c144:	7ff00713          	li	a4,2047
   1c148:	16e80163          	beq	a6,a4,1c2aa <__trunctfdf2+0x1fe>
   1c14c:	567d                	li	a2,-1
   1c14e:	165e                	slli	a2,a2,0x37
   1c150:	167d                	addi	a2,a2,-1
   1c152:	8ff1                	and	a5,a5,a2
   1c154:	7ff00713          	li	a4,2047
   1c158:	838d                	srli	a5,a5,0x3
   1c15a:	00e81663          	bne	a6,a4,1c166 <__trunctfdf2+0xba>
   1c15e:	c781                	beqz	a5,1c166 <__trunctfdf2+0xba>
   1c160:	4785                	li	a5,1
   1c162:	17ce                	slli	a5,a5,0x33
   1c164:	4681                	li	a3,0
   1c166:	7ff87713          	andi	a4,a6,2047
   1c16a:	07b2                	slli	a5,a5,0xc
   1c16c:	1752                	slli	a4,a4,0x34
   1c16e:	83b1                	srli	a5,a5,0xc
   1c170:	8fd9                	or	a5,a5,a4
   1c172:	16fe                	slli	a3,a3,0x3f
   1c174:	8fd5                	or	a5,a5,a3
   1c176:	c199                	beqz	a1,1c17c <__trunctfdf2+0xd0>
   1c178:	0015a073          	csrs	fflags,a1
   1c17c:	f2078553          	fmv.d.x	fa0,a5
   1c180:	8082                	ret
   1c182:	0b004063          	bgtz	a6,1c222 <__trunctfdf2+0x176>
   1c186:	fcc00593          	li	a1,-52
   1c18a:	4785                	li	a5,1
   1c18c:	02b84e63          	blt	a6,a1,1c1c8 <__trunctfdf2+0x11c>
   1c190:	17ce                	slli	a5,a5,0x33
   1c192:	03d00893          	li	a7,61
   1c196:	8f5d                	or	a4,a4,a5
   1c198:	410888b3          	sub	a7,a7,a6
   1c19c:	03f00793          	li	a5,63
   1c1a0:	0008051b          	sext.w	a0,a6
   1c1a4:	0517cc63          	blt	a5,a7,1c1fc <__trunctfdf2+0x150>
   1c1a8:	03d00793          	li	a5,61
   1c1ac:	0035059b          	addiw	a1,a0,3
   1c1b0:	9f89                	subw	a5,a5,a0
   1c1b2:	00f357b3          	srl	a5,t1,a5
   1c1b6:	00b31333          	sll	t1,t1,a1
   1c1ba:	00603333          	snez	t1,t1
   1c1be:	0067e7b3          	or	a5,a5,t1
   1c1c2:	00b71733          	sll	a4,a4,a1
   1c1c6:	8fd9                	or	a5,a5,a4
   1c1c8:	00179713          	slli	a4,a5,0x1
   1c1cc:	00777513          	andi	a0,a4,7
   1c1d0:	4581                	li	a1,0
   1c1d2:	cd19                	beqz	a0,1c1f0 <__trunctfdf2+0x144>
   1c1d4:	4589                	li	a1,2
   1c1d6:	0ab60d63          	beq	a2,a1,1c290 <__trunctfdf2+0x1e4>
   1c1da:	458d                	li	a1,3
   1c1dc:	0ab60663          	beq	a2,a1,1c288 <__trunctfdf2+0x1dc>
   1c1e0:	4585                	li	a1,1
   1c1e2:	e619                	bnez	a2,1c1f0 <__trunctfdf2+0x144>
   1c1e4:	00f77513          	andi	a0,a4,15
   1c1e8:	4811                	li	a6,4
   1c1ea:	01050363          	beq	a0,a6,1c1f0 <__trunctfdf2+0x144>
   1c1ee:	0711                	addi	a4,a4,4
   1c1f0:	9361                	srli	a4,a4,0x38
   1c1f2:	00174713          	xori	a4,a4,1
   1c1f6:	8b05                	andi	a4,a4,1
   1c1f8:	4801                	li	a6,0
   1c1fa:	a081                	j	1c23a <__trunctfdf2+0x18e>
   1c1fc:	57f5                	li	a5,-3
   1c1fe:	9f89                	subw	a5,a5,a0
   1c200:	04000813          	li	a6,64
   1c204:	00f757b3          	srl	a5,a4,a5
   1c208:	4581                	li	a1,0
   1c20a:	01088663          	beq	a7,a6,1c216 <__trunctfdf2+0x16a>
   1c20e:	0435051b          	addiw	a0,a0,67
   1c212:	00a715b3          	sll	a1,a4,a0
   1c216:	0065e5b3          	or	a1,a1,t1
   1c21a:	00b035b3          	snez	a1,a1
   1c21e:	8fcd                	or	a5,a5,a1
   1c220:	b765                	j	1c1c8 <__trunctfdf2+0x11c>
   1c222:	00751793          	slli	a5,a0,0x7
   1c226:	00f037b3          	snez	a5,a5
   1c22a:	03c35313          	srli	t1,t1,0x3c
   1c22e:	0712                	slli	a4,a4,0x4
   1c230:	0067e7b3          	or	a5,a5,t1
   1c234:	8fd9                	or	a5,a5,a4
   1c236:	4581                	li	a1,0
   1c238:	4701                	li	a4,0
   1c23a:	0077f513          	andi	a0,a5,7
   1c23e:	ec0513e3          	bnez	a0,1c104 <__trunctfdf2+0x58>
   1c242:	ee070ce3          	beqz	a4,1c13a <__trunctfdf2+0x8e>
   1c246:	0015f713          	andi	a4,a1,1
   1c24a:	bde1                	j	1c122 <__trunctfdf2+0x76>
   1c24c:	006767b3          	or	a5,a4,t1
   1c250:	00081563          	bnez	a6,1c25a <__trunctfdf2+0x1ae>
   1c254:	eb85                	bnez	a5,1c284 <__trunctfdf2+0x1d8>
   1c256:	4581                	li	a1,0
   1c258:	b5cd                	j	1c13a <__trunctfdf2+0x8e>
   1c25a:	cf95                	beqz	a5,1c296 <__trunctfdf2+0x1ea>
   1c25c:	4581                	li	a1,0
   1c25e:	01c81763          	bne	a6,t3,1c26c <__trunctfdf2+0x1c0>
   1c262:	03275593          	srli	a1,a4,0x32
   1c266:	0015c593          	xori	a1,a1,1
   1c26a:	0592                	slli	a1,a1,0x4
   1c26c:	03c35793          	srli	a5,t1,0x3c
   1c270:	0712                	slli	a4,a4,0x4
   1c272:	8f5d                	or	a4,a4,a5
   1c274:	4785                	li	a5,1
   1c276:	9b61                	andi	a4,a4,-8
   1c278:	17da                	slli	a5,a5,0x36
   1c27a:	8fd9                	or	a5,a5,a4
   1c27c:	7ff00813          	li	a6,2047
   1c280:	4701                	li	a4,0
   1c282:	bf65                	j	1c23a <__trunctfdf2+0x18e>
   1c284:	4785                	li	a5,1
   1c286:	b789                	j	1c1c8 <__trunctfdf2+0x11c>
   1c288:	4585                	li	a1,1
   1c28a:	f2bd                	bnez	a3,1c1f0 <__trunctfdf2+0x144>
   1c28c:	0721                	addi	a4,a4,8
   1c28e:	b78d                	j	1c1f0 <__trunctfdf2+0x144>
   1c290:	4585                	li	a1,1
   1c292:	deb9                	beqz	a3,1c1f0 <__trunctfdf2+0x144>
   1c294:	bfe5                	j	1c28c <__trunctfdf2+0x1e0>
   1c296:	7ff00813          	li	a6,2047
   1c29a:	bf75                	j	1c256 <__trunctfdf2+0x1aa>
   1c29c:	e80693e3          	bnez	a3,1c122 <__trunctfdf2+0x76>
   1c2a0:	07a1                	addi	a5,a5,8
   1c2a2:	b541                	j	1c122 <__trunctfdf2+0x76>
   1c2a4:	e6068fe3          	beqz	a3,1c122 <__trunctfdf2+0x76>
   1c2a8:	bfe5                	j	1c2a0 <__trunctfdf2+0x1f4>
   1c2aa:	4781                	li	a5,0
   1c2ac:	ce09                	beqz	a2,1c2c6 <__trunctfdf2+0x21a>
   1c2ae:	470d                	li	a4,3
   1c2b0:	00e61763          	bne	a2,a4,1c2be <__trunctfdf2+0x212>
   1c2b4:	ca89                	beqz	a3,1c2c6 <__trunctfdf2+0x21a>
   1c2b6:	57fd                	li	a5,-1
   1c2b8:	7fe00813          	li	a6,2046
   1c2bc:	a029                	j	1c2c6 <__trunctfdf2+0x21a>
   1c2be:	4709                	li	a4,2
   1c2c0:	fee61be3          	bne	a2,a4,1c2b6 <__trunctfdf2+0x20a>
   1c2c4:	daed                	beqz	a3,1c2b6 <__trunctfdf2+0x20a>
   1c2c6:	0055e593          	ori	a1,a1,5
   1c2ca:	b569                	j	1c154 <__trunctfdf2+0xa8>

000000000001c2cc <__clzdi2>:
   1c2cc:	03800793          	li	a5,56
   1c2d0:	00f55733          	srl	a4,a0,a5
   1c2d4:	0ff77713          	zext.b	a4,a4
   1c2d8:	e319                	bnez	a4,1c2de <__clzdi2+0x12>
   1c2da:	17e1                	addi	a5,a5,-8
   1c2dc:	fbf5                	bnez	a5,1c2d0 <__clzdi2+0x4>
   1c2de:	6775                	lui	a4,0x1d
   1c2e0:	04000693          	li	a3,64
   1c2e4:	8e9d                	sub	a3,a3,a5
   1c2e6:	00f55533          	srl	a0,a0,a5
   1c2ea:	0c870793          	addi	a5,a4,200 # 1d0c8 <__clz_tab>
   1c2ee:	97aa                	add	a5,a5,a0
   1c2f0:	0007c503          	lbu	a0,0(a5)
   1c2f4:	40a6853b          	subw	a0,a3,a0
   1c2f8:	8082                	ret
