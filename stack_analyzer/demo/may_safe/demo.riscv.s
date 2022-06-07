
demo:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	1141                	addi	sp,sp,-16
   100ea:	4581                	li	a1,0
   100ec:	e022                	sd	s0,0(sp)
   100ee:	e406                	sd	ra,8(sp)
   100f0:	842a                	mv	s0,a0
   100f2:	22a000ef          	jal	ra,1031c <__call_exitprocs>
   100f6:	f481b503          	ld	a0,-184(gp) # 11c20 <_global_impure_ptr>
   100fa:	6d3c                	ld	a5,88(a0)
   100fc:	c391                	beqz	a5,10100 <exit+0x18>
   100fe:	9782                	jalr	a5
   10100:	8522                	mv	a0,s0
   10102:	390000ef          	jal	ra,10492 <_exit>

0000000000010106 <register_fini>:
   10106:	00000793          	li	a5,0
   1010a:	c789                	beqz	a5,10114 <register_fini+0xe>
   1010c:	6541                	lui	a0,0x10
   1010e:	3de50513          	addi	a0,a0,990 # 103de <__libc_fini_array>
   10112:	a601                	j	10412 <atexit>
   10114:	8082                	ret

0000000000010116 <_start>:
   10116:	00002197          	auipc	gp,0x2
   1011a:	bc218193          	addi	gp,gp,-1086 # 11cd8 <__global_pointer$>
   1011e:	f6018513          	addi	a0,gp,-160 # 11c38 <completed.1>
   10122:	f9818613          	addi	a2,gp,-104 # 11c70 <__BSS_END__>
   10126:	8e09                	sub	a2,a2,a0
   10128:	4581                	li	a1,0
   1012a:	148000ef          	jal	ra,10272 <memset>
   1012e:	00000517          	auipc	a0,0x0
   10132:	2e450513          	addi	a0,a0,740 # 10412 <atexit>
   10136:	c519                	beqz	a0,10144 <_start+0x2e>
   10138:	00000517          	auipc	a0,0x0
   1013c:	2a650513          	addi	a0,a0,678 # 103de <__libc_fini_array>
   10140:	2d2000ef          	jal	ra,10412 <atexit>
   10144:	0c4000ef          	jal	ra,10208 <__libc_init_array>
   10148:	4502                	lw	a0,0(sp)
   1014a:	002c                	addi	a1,sp,8
   1014c:	4601                	li	a2,0
   1014e:	09e000ef          	jal	ra,101ec <main>
   10152:	bf59                	j	100e8 <exit>

0000000000010154 <__do_global_dtors_aux>:
   10154:	1141                	addi	sp,sp,-16
   10156:	e022                	sd	s0,0(sp)
   10158:	f601c783          	lbu	a5,-160(gp) # 11c38 <completed.1>
   1015c:	e406                	sd	ra,8(sp)
   1015e:	ef91                	bnez	a5,1017a <__do_global_dtors_aux+0x26>
   10160:	00000793          	li	a5,0
   10164:	cb81                	beqz	a5,10174 <__do_global_dtors_aux+0x20>
   10166:	6545                	lui	a0,0x11
   10168:	4bc50513          	addi	a0,a0,1212 # 114bc <__FRAME_END__>
   1016c:	00000097          	auipc	ra,0x0
   10170:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   10174:	4785                	li	a5,1
   10176:	f6f18023          	sb	a5,-160(gp) # 11c38 <completed.1>
   1017a:	60a2                	ld	ra,8(sp)
   1017c:	6402                	ld	s0,0(sp)
   1017e:	0141                	addi	sp,sp,16
   10180:	8082                	ret

0000000000010182 <frame_dummy>:
   10182:	00000793          	li	a5,0
   10186:	cb91                	beqz	a5,1019a <frame_dummy+0x18>
   10188:	6545                	lui	a0,0x11
   1018a:	f6818593          	addi	a1,gp,-152 # 11c40 <object.0>
   1018e:	4bc50513          	addi	a0,a0,1212 # 114bc <__FRAME_END__>
   10192:	00000317          	auipc	t1,0x0
   10196:	00000067          	jr	zero # 0 <exit-0x100e8>
   1019a:	8082                	ret

000000000001019c <foo>:
   1019c:	7179                	addi	sp,sp,-48
   1019e:	f422                	sd	s0,40(sp)
   101a0:	1800                	addi	s0,sp,48
   101a2:	87aa                	mv	a5,a0
   101a4:	fcf42e23          	sw	a5,-36(s0)
   101a8:	fe042623          	sw	zero,-20(s0)
   101ac:	4785                	li	a5,1
   101ae:	fef42423          	sw	a5,-24(s0)
   101b2:	a831                	j	101ce <foo+0x32>
   101b4:	fec42783          	lw	a5,-20(s0)
   101b8:	873e                	mv	a4,a5
   101ba:	fe842783          	lw	a5,-24(s0)
   101be:	9fb9                	addw	a5,a5,a4
   101c0:	fef42623          	sw	a5,-20(s0)
   101c4:	fe842783          	lw	a5,-24(s0)
   101c8:	2785                	addiw	a5,a5,1
   101ca:	fef42423          	sw	a5,-24(s0)
   101ce:	fe842783          	lw	a5,-24(s0)
   101d2:	873e                	mv	a4,a5
   101d4:	fdc42783          	lw	a5,-36(s0)
   101d8:	2701                	sext.w	a4,a4
   101da:	2781                	sext.w	a5,a5
   101dc:	fce7dce3          	bge	a5,a4,101b4 <foo+0x18>
   101e0:	fec42783          	lw	a5,-20(s0)
   101e4:	853e                	mv	a0,a5
   101e6:	7422                	ld	s0,40(sp)
   101e8:	6145                	addi	sp,sp,48
   101ea:	8082                	ret

00000000000101ec <main>:
   101ec:	1141                	addi	sp,sp,-16
   101ee:	e406                	sd	ra,8(sp)
   101f0:	e022                	sd	s0,0(sp)
   101f2:	0800                	addi	s0,sp,16
   101f4:	06400513          	li	a0,100
   101f8:	fa5ff0ef          	jal	ra,1019c <foo>
   101fc:	87aa                	mv	a5,a0
   101fe:	853e                	mv	a0,a5
   10200:	60a2                	ld	ra,8(sp)
   10202:	6402                	ld	s0,0(sp)
   10204:	0141                	addi	sp,sp,16
   10206:	8082                	ret

0000000000010208 <__libc_init_array>:
   10208:	1101                	addi	sp,sp,-32
   1020a:	e822                	sd	s0,16(sp)
   1020c:	e04a                	sd	s2,0(sp)
   1020e:	6445                	lui	s0,0x11
   10210:	6945                	lui	s2,0x11
   10212:	4c040793          	addi	a5,s0,1216 # 114c0 <__init_array_start>
   10216:	4c090913          	addi	s2,s2,1216 # 114c0 <__init_array_start>
   1021a:	40f90933          	sub	s2,s2,a5
   1021e:	ec06                	sd	ra,24(sp)
   10220:	e426                	sd	s1,8(sp)
   10222:	40395913          	srai	s2,s2,0x3
   10226:	00090b63          	beqz	s2,1023c <__libc_init_array+0x34>
   1022a:	4c040413          	addi	s0,s0,1216
   1022e:	4481                	li	s1,0
   10230:	601c                	ld	a5,0(s0)
   10232:	0485                	addi	s1,s1,1
   10234:	0421                	addi	s0,s0,8
   10236:	9782                	jalr	a5
   10238:	fe991ce3          	bne	s2,s1,10230 <__libc_init_array+0x28>
   1023c:	6445                	lui	s0,0x11
   1023e:	6945                	lui	s2,0x11
   10240:	4c040793          	addi	a5,s0,1216 # 114c0 <__init_array_start>
   10244:	4d090913          	addi	s2,s2,1232 # 114d0 <__do_global_dtors_aux_fini_array_entry>
   10248:	40f90933          	sub	s2,s2,a5
   1024c:	40395913          	srai	s2,s2,0x3
   10250:	00090b63          	beqz	s2,10266 <__libc_init_array+0x5e>
   10254:	4c040413          	addi	s0,s0,1216
   10258:	4481                	li	s1,0
   1025a:	601c                	ld	a5,0(s0)
   1025c:	0485                	addi	s1,s1,1
   1025e:	0421                	addi	s0,s0,8
   10260:	9782                	jalr	a5
   10262:	fe991ce3          	bne	s2,s1,1025a <__libc_init_array+0x52>
   10266:	60e2                	ld	ra,24(sp)
   10268:	6442                	ld	s0,16(sp)
   1026a:	64a2                	ld	s1,8(sp)
   1026c:	6902                	ld	s2,0(sp)
   1026e:	6105                	addi	sp,sp,32
   10270:	8082                	ret

0000000000010272 <memset>:
   10272:	433d                	li	t1,15
   10274:	872a                	mv	a4,a0
   10276:	02c37163          	bgeu	t1,a2,10298 <memset+0x26>
   1027a:	00f77793          	andi	a5,a4,15
   1027e:	e3c1                	bnez	a5,102fe <memset+0x8c>
   10280:	e1bd                	bnez	a1,102e6 <memset+0x74>
   10282:	ff067693          	andi	a3,a2,-16
   10286:	8a3d                	andi	a2,a2,15
   10288:	96ba                	add	a3,a3,a4
   1028a:	e30c                	sd	a1,0(a4)
   1028c:	e70c                	sd	a1,8(a4)
   1028e:	0741                	addi	a4,a4,16
   10290:	fed76de3          	bltu	a4,a3,1028a <memset+0x18>
   10294:	e211                	bnez	a2,10298 <memset+0x26>
   10296:	8082                	ret
   10298:	40c306b3          	sub	a3,t1,a2
   1029c:	068a                	slli	a3,a3,0x2
   1029e:	00000297          	auipc	t0,0x0
   102a2:	9696                	add	a3,a3,t0
   102a4:	00a68067          	jr	10(a3)
   102a8:	00b70723          	sb	a1,14(a4)
   102ac:	00b706a3          	sb	a1,13(a4)
   102b0:	00b70623          	sb	a1,12(a4)
   102b4:	00b705a3          	sb	a1,11(a4)
   102b8:	00b70523          	sb	a1,10(a4)
   102bc:	00b704a3          	sb	a1,9(a4)
   102c0:	00b70423          	sb	a1,8(a4)
   102c4:	00b703a3          	sb	a1,7(a4)
   102c8:	00b70323          	sb	a1,6(a4)
   102cc:	00b702a3          	sb	a1,5(a4)
   102d0:	00b70223          	sb	a1,4(a4)
   102d4:	00b701a3          	sb	a1,3(a4)
   102d8:	00b70123          	sb	a1,2(a4)
   102dc:	00b700a3          	sb	a1,1(a4)
   102e0:	00b70023          	sb	a1,0(a4)
   102e4:	8082                	ret
   102e6:	0ff5f593          	zext.b	a1,a1
   102ea:	00859693          	slli	a3,a1,0x8
   102ee:	8dd5                	or	a1,a1,a3
   102f0:	01059693          	slli	a3,a1,0x10
   102f4:	8dd5                	or	a1,a1,a3
   102f6:	02059693          	slli	a3,a1,0x20
   102fa:	8dd5                	or	a1,a1,a3
   102fc:	b759                	j	10282 <memset+0x10>
   102fe:	00279693          	slli	a3,a5,0x2
   10302:	00000297          	auipc	t0,0x0
   10306:	9696                	add	a3,a3,t0
   10308:	8286                	mv	t0,ra
   1030a:	fa2680e7          	jalr	-94(a3)
   1030e:	8096                	mv	ra,t0
   10310:	17c1                	addi	a5,a5,-16
   10312:	8f1d                	sub	a4,a4,a5
   10314:	963e                	add	a2,a2,a5
   10316:	f8c371e3          	bgeu	t1,a2,10298 <memset+0x26>
   1031a:	b79d                	j	10280 <memset+0xe>

000000000001031c <__call_exitprocs>:
   1031c:	715d                	addi	sp,sp,-80
   1031e:	f052                	sd	s4,32(sp)
   10320:	f481ba03          	ld	s4,-184(gp) # 11c20 <_global_impure_ptr>
   10324:	f84a                	sd	s2,48(sp)
   10326:	e486                	sd	ra,72(sp)
   10328:	1f8a3903          	ld	s2,504(s4)
   1032c:	e0a2                	sd	s0,64(sp)
   1032e:	fc26                	sd	s1,56(sp)
   10330:	f44e                	sd	s3,40(sp)
   10332:	ec56                	sd	s5,24(sp)
   10334:	e85a                	sd	s6,16(sp)
   10336:	e45e                	sd	s7,8(sp)
   10338:	e062                	sd	s8,0(sp)
   1033a:	02090863          	beqz	s2,1036a <__call_exitprocs+0x4e>
   1033e:	8b2a                	mv	s6,a0
   10340:	8bae                	mv	s7,a1
   10342:	4a85                	li	s5,1
   10344:	59fd                	li	s3,-1
   10346:	00892483          	lw	s1,8(s2)
   1034a:	fff4841b          	addiw	s0,s1,-1
   1034e:	00044e63          	bltz	s0,1036a <__call_exitprocs+0x4e>
   10352:	048e                	slli	s1,s1,0x3
   10354:	94ca                	add	s1,s1,s2
   10356:	020b8663          	beqz	s7,10382 <__call_exitprocs+0x66>
   1035a:	2084b783          	ld	a5,520(s1)
   1035e:	03778263          	beq	a5,s7,10382 <__call_exitprocs+0x66>
   10362:	347d                	addiw	s0,s0,-1
   10364:	14e1                	addi	s1,s1,-8
   10366:	ff3418e3          	bne	s0,s3,10356 <__call_exitprocs+0x3a>
   1036a:	60a6                	ld	ra,72(sp)
   1036c:	6406                	ld	s0,64(sp)
   1036e:	74e2                	ld	s1,56(sp)
   10370:	7942                	ld	s2,48(sp)
   10372:	79a2                	ld	s3,40(sp)
   10374:	7a02                	ld	s4,32(sp)
   10376:	6ae2                	ld	s5,24(sp)
   10378:	6b42                	ld	s6,16(sp)
   1037a:	6ba2                	ld	s7,8(sp)
   1037c:	6c02                	ld	s8,0(sp)
   1037e:	6161                	addi	sp,sp,80
   10380:	8082                	ret
   10382:	00892783          	lw	a5,8(s2)
   10386:	6498                	ld	a4,8(s1)
   10388:	37fd                	addiw	a5,a5,-1
   1038a:	04878463          	beq	a5,s0,103d2 <__call_exitprocs+0xb6>
   1038e:	0004b423          	sd	zero,8(s1)
   10392:	db61                	beqz	a4,10362 <__call_exitprocs+0x46>
   10394:	31092783          	lw	a5,784(s2)
   10398:	008a96bb          	sllw	a3,s5,s0
   1039c:	00892c03          	lw	s8,8(s2)
   103a0:	8ff5                	and	a5,a5,a3
   103a2:	2781                	sext.w	a5,a5
   103a4:	ef89                	bnez	a5,103be <__call_exitprocs+0xa2>
   103a6:	9702                	jalr	a4
   103a8:	00892703          	lw	a4,8(s2)
   103ac:	1f8a3783          	ld	a5,504(s4)
   103b0:	01871463          	bne	a4,s8,103b8 <__call_exitprocs+0x9c>
   103b4:	fb2787e3          	beq	a5,s2,10362 <__call_exitprocs+0x46>
   103b8:	dbcd                	beqz	a5,1036a <__call_exitprocs+0x4e>
   103ba:	893e                	mv	s2,a5
   103bc:	b769                	j	10346 <__call_exitprocs+0x2a>
   103be:	31492783          	lw	a5,788(s2)
   103c2:	1084b583          	ld	a1,264(s1)
   103c6:	8ff5                	and	a5,a5,a3
   103c8:	2781                	sext.w	a5,a5
   103ca:	e799                	bnez	a5,103d8 <__call_exitprocs+0xbc>
   103cc:	855a                	mv	a0,s6
   103ce:	9702                	jalr	a4
   103d0:	bfe1                	j	103a8 <__call_exitprocs+0x8c>
   103d2:	00892423          	sw	s0,8(s2)
   103d6:	bf75                	j	10392 <__call_exitprocs+0x76>
   103d8:	852e                	mv	a0,a1
   103da:	9702                	jalr	a4
   103dc:	b7f1                	j	103a8 <__call_exitprocs+0x8c>

00000000000103de <__libc_fini_array>:
   103de:	1101                	addi	sp,sp,-32
   103e0:	e822                	sd	s0,16(sp)
   103e2:	67c5                	lui	a5,0x11
   103e4:	6445                	lui	s0,0x11
   103e6:	4d078793          	addi	a5,a5,1232 # 114d0 <__do_global_dtors_aux_fini_array_entry>
   103ea:	4d840413          	addi	s0,s0,1240 # 114d8 <impure_data>
   103ee:	8c1d                	sub	s0,s0,a5
   103f0:	e426                	sd	s1,8(sp)
   103f2:	ec06                	sd	ra,24(sp)
   103f4:	40345493          	srai	s1,s0,0x3
   103f8:	c881                	beqz	s1,10408 <__libc_fini_array+0x2a>
   103fa:	1461                	addi	s0,s0,-8
   103fc:	943e                	add	s0,s0,a5
   103fe:	601c                	ld	a5,0(s0)
   10400:	14fd                	addi	s1,s1,-1
   10402:	1461                	addi	s0,s0,-8
   10404:	9782                	jalr	a5
   10406:	fce5                	bnez	s1,103fe <__libc_fini_array+0x20>
   10408:	60e2                	ld	ra,24(sp)
   1040a:	6442                	ld	s0,16(sp)
   1040c:	64a2                	ld	s1,8(sp)
   1040e:	6105                	addi	sp,sp,32
   10410:	8082                	ret

0000000000010412 <atexit>:
   10412:	85aa                	mv	a1,a0
   10414:	4681                	li	a3,0
   10416:	4601                	li	a2,0
   10418:	4501                	li	a0,0
   1041a:	a009                	j	1041c <__register_exitproc>

000000000001041c <__register_exitproc>:
   1041c:	f481b703          	ld	a4,-184(gp) # 11c20 <_global_impure_ptr>
   10420:	1f873783          	ld	a5,504(a4)
   10424:	c3b1                	beqz	a5,10468 <__register_exitproc+0x4c>
   10426:	4798                	lw	a4,8(a5)
   10428:	487d                	li	a6,31
   1042a:	06e84263          	blt	a6,a4,1048e <__register_exitproc+0x72>
   1042e:	c505                	beqz	a0,10456 <__register_exitproc+0x3a>
   10430:	00371813          	slli	a6,a4,0x3
   10434:	983e                	add	a6,a6,a5
   10436:	10c83823          	sd	a2,272(a6)
   1043a:	3107a883          	lw	a7,784(a5)
   1043e:	4605                	li	a2,1
   10440:	00e6163b          	sllw	a2,a2,a4
   10444:	00c8e8b3          	or	a7,a7,a2
   10448:	3117a823          	sw	a7,784(a5)
   1044c:	20d83823          	sd	a3,528(a6)
   10450:	4689                	li	a3,2
   10452:	02d50063          	beq	a0,a3,10472 <__register_exitproc+0x56>
   10456:	00270693          	addi	a3,a4,2
   1045a:	068e                	slli	a3,a3,0x3
   1045c:	2705                	addiw	a4,a4,1
   1045e:	c798                	sw	a4,8(a5)
   10460:	97b6                	add	a5,a5,a3
   10462:	e38c                	sd	a1,0(a5)
   10464:	4501                	li	a0,0
   10466:	8082                	ret
   10468:	20070793          	addi	a5,a4,512
   1046c:	1ef73c23          	sd	a5,504(a4)
   10470:	bf5d                	j	10426 <__register_exitproc+0xa>
   10472:	3147a683          	lw	a3,788(a5)
   10476:	4501                	li	a0,0
   10478:	8ed1                	or	a3,a3,a2
   1047a:	30d7aa23          	sw	a3,788(a5)
   1047e:	00270693          	addi	a3,a4,2
   10482:	068e                	slli	a3,a3,0x3
   10484:	2705                	addiw	a4,a4,1
   10486:	c798                	sw	a4,8(a5)
   10488:	97b6                	add	a5,a5,a3
   1048a:	e38c                	sd	a1,0(a5)
   1048c:	8082                	ret
   1048e:	557d                	li	a0,-1
   10490:	8082                	ret

0000000000010492 <_exit>:
   10492:	05d00893          	li	a7,93
   10496:	00000073          	ecall
   1049a:	00054363          	bltz	a0,104a0 <_exit+0xe>
   1049e:	a001                	j	1049e <_exit+0xc>
   104a0:	1141                	addi	sp,sp,-16
   104a2:	e022                	sd	s0,0(sp)
   104a4:	842a                	mv	s0,a0
   104a6:	e406                	sd	ra,8(sp)
   104a8:	4080043b          	negw	s0,s0
   104ac:	008000ef          	jal	ra,104b4 <__errno>
   104b0:	c100                	sw	s0,0(a0)
   104b2:	a001                	j	104b2 <_exit+0x20>

00000000000104b4 <__errno>:
   104b4:	f581b503          	ld	a0,-168(gp) # 11c30 <_impure_ptr>
   104b8:	8082                	ret
