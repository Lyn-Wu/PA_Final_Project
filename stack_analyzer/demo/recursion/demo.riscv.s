
demo:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	1141                	addi	sp,sp,-16
   100ea:	4581                	li	a1,0
   100ec:	e022                	sd	s0,0(sp)
   100ee:	e406                	sd	ra,8(sp)
   100f0:	842a                	mv	s0,a0
   100f2:	260000ef          	jal	ra,10352 <__call_exitprocs>
   100f6:	f481b503          	ld	a0,-184(gp) # 11c58 <_global_impure_ptr>
   100fa:	6d3c                	ld	a5,88(a0)
   100fc:	c391                	beqz	a5,10100 <exit+0x18>
   100fe:	9782                	jalr	a5
   10100:	8522                	mv	a0,s0
   10102:	3c6000ef          	jal	ra,104c8 <_exit>

0000000000010106 <register_fini>:
   10106:	00000793          	li	a5,0
   1010a:	c789                	beqz	a5,10114 <register_fini+0xe>
   1010c:	6541                	lui	a0,0x10
   1010e:	41450513          	addi	a0,a0,1044 # 10414 <__libc_fini_array>
   10112:	ae1d                	j	10448 <atexit>
   10114:	8082                	ret

0000000000010116 <_start>:
   10116:	00002197          	auipc	gp,0x2
   1011a:	bfa18193          	addi	gp,gp,-1030 # 11d10 <__global_pointer$>
   1011e:	f6018513          	addi	a0,gp,-160 # 11c70 <completed.1>
   10122:	f9818613          	addi	a2,gp,-104 # 11ca8 <__BSS_END__>
   10126:	8e09                	sub	a2,a2,a0
   10128:	4581                	li	a1,0
   1012a:	17e000ef          	jal	ra,102a8 <memset>
   1012e:	00000517          	auipc	a0,0x0
   10132:	31a50513          	addi	a0,a0,794 # 10448 <atexit>
   10136:	c519                	beqz	a0,10144 <_start+0x2e>
   10138:	00000517          	auipc	a0,0x0
   1013c:	2dc50513          	addi	a0,a0,732 # 10414 <__libc_fini_array>
   10140:	308000ef          	jal	ra,10448 <atexit>
   10144:	0fa000ef          	jal	ra,1023e <__libc_init_array>
   10148:	4502                	lw	a0,0(sp)
   1014a:	002c                	addi	a1,sp,8
   1014c:	4601                	li	a2,0
   1014e:	0ca000ef          	jal	ra,10218 <main>
   10152:	bf59                	j	100e8 <exit>

0000000000010154 <__do_global_dtors_aux>:
   10154:	1141                	addi	sp,sp,-16
   10156:	e022                	sd	s0,0(sp)
   10158:	f601c783          	lbu	a5,-160(gp) # 11c70 <completed.1>
   1015c:	e406                	sd	ra,8(sp)
   1015e:	ef91                	bnez	a5,1017a <__do_global_dtors_aux+0x26>
   10160:	00000793          	li	a5,0
   10164:	cb81                	beqz	a5,10174 <__do_global_dtors_aux+0x20>
   10166:	6545                	lui	a0,0x11
   10168:	4f050513          	addi	a0,a0,1264 # 114f0 <__FRAME_END__>
   1016c:	00000097          	auipc	ra,0x0
   10170:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   10174:	4785                	li	a5,1
   10176:	f6f18023          	sb	a5,-160(gp) # 11c70 <completed.1>
   1017a:	60a2                	ld	ra,8(sp)
   1017c:	6402                	ld	s0,0(sp)
   1017e:	0141                	addi	sp,sp,16
   10180:	8082                	ret

0000000000010182 <frame_dummy>:
   10182:	00000793          	li	a5,0
   10186:	cb91                	beqz	a5,1019a <frame_dummy+0x18>
   10188:	6545                	lui	a0,0x11
   1018a:	f6818593          	addi	a1,gp,-152 # 11c78 <object.0>
   1018e:	4f050513          	addi	a0,a0,1264 # 114f0 <__FRAME_END__>
   10192:	00000317          	auipc	t1,0x0
   10196:	00000067          	jr	zero # 0 <exit-0x100e8>
   1019a:	8082                	ret

000000000001019c <foo1>:
   1019c:	1101                	addi	sp,sp,-32
   1019e:	ec06                	sd	ra,24(sp)
   101a0:	e822                	sd	s0,16(sp)
   101a2:	1000                	addi	s0,sp,32
   101a4:	87aa                	mv	a5,a0
   101a6:	fef42623          	sw	a5,-20(s0)
   101aa:	fec42783          	lw	a5,-20(s0)
   101ae:	2781                	sext.w	a5,a5
   101b0:	cf91                	beqz	a5,101cc <foo1+0x30>
   101b2:	fec42783          	lw	a5,-20(s0)
   101b6:	37fd                	addiw	a5,a5,-1
   101b8:	2781                	sext.w	a5,a5
   101ba:	853e                	mv	a0,a5
   101bc:	01e000ef          	jal	ra,101da <foo2>
   101c0:	87aa                	mv	a5,a0
   101c2:	fec42703          	lw	a4,-20(s0)
   101c6:	9fb9                	addw	a5,a5,a4
   101c8:	2781                	sext.w	a5,a5
   101ca:	a019                	j	101d0 <foo1+0x34>
   101cc:	fec42783          	lw	a5,-20(s0)
   101d0:	853e                	mv	a0,a5
   101d2:	60e2                	ld	ra,24(sp)
   101d4:	6442                	ld	s0,16(sp)
   101d6:	6105                	addi	sp,sp,32
   101d8:	8082                	ret

00000000000101da <foo2>:
   101da:	1101                	addi	sp,sp,-32
   101dc:	ec06                	sd	ra,24(sp)
   101de:	e822                	sd	s0,16(sp)
   101e0:	1000                	addi	s0,sp,32
   101e2:	87aa                	mv	a5,a0
   101e4:	fef42623          	sw	a5,-20(s0)
   101e8:	fec42783          	lw	a5,-20(s0)
   101ec:	2781                	sext.w	a5,a5
   101ee:	cf91                	beqz	a5,1020a <foo2+0x30>
   101f0:	fec42783          	lw	a5,-20(s0)
   101f4:	37fd                	addiw	a5,a5,-1
   101f6:	2781                	sext.w	a5,a5
   101f8:	853e                	mv	a0,a5
   101fa:	fa3ff0ef          	jal	ra,1019c <foo1>
   101fe:	87aa                	mv	a5,a0
   10200:	fec42703          	lw	a4,-20(s0)
   10204:	9fb9                	addw	a5,a5,a4
   10206:	2781                	sext.w	a5,a5
   10208:	a019                	j	1020e <foo2+0x34>
   1020a:	fec42783          	lw	a5,-20(s0)
   1020e:	853e                	mv	a0,a5
   10210:	60e2                	ld	ra,24(sp)
   10212:	6442                	ld	s0,16(sp)
   10214:	6105                	addi	sp,sp,32
   10216:	8082                	ret

0000000000010218 <main>:
   10218:	1101                	addi	sp,sp,-32
   1021a:	ec06                	sd	ra,24(sp)
   1021c:	e822                	sd	s0,16(sp)
   1021e:	1000                	addi	s0,sp,32
   10220:	06400793          	li	a5,100
   10224:	fef42623          	sw	a5,-20(s0)
   10228:	fec42783          	lw	a5,-20(s0)
   1022c:	853e                	mv	a0,a5
   1022e:	fadff0ef          	jal	ra,101da <foo2>
   10232:	87aa                	mv	a5,a0
   10234:	853e                	mv	a0,a5
   10236:	60e2                	ld	ra,24(sp)
   10238:	6442                	ld	s0,16(sp)
   1023a:	6105                	addi	sp,sp,32
   1023c:	8082                	ret

000000000001023e <__libc_init_array>:
   1023e:	1101                	addi	sp,sp,-32
   10240:	e822                	sd	s0,16(sp)
   10242:	e04a                	sd	s2,0(sp)
   10244:	6445                	lui	s0,0x11
   10246:	6945                	lui	s2,0x11
   10248:	4f440793          	addi	a5,s0,1268 # 114f4 <__preinit_array_end>
   1024c:	4f490913          	addi	s2,s2,1268 # 114f4 <__preinit_array_end>
   10250:	40f90933          	sub	s2,s2,a5
   10254:	ec06                	sd	ra,24(sp)
   10256:	e426                	sd	s1,8(sp)
   10258:	40395913          	srai	s2,s2,0x3
   1025c:	00090b63          	beqz	s2,10272 <__libc_init_array+0x34>
   10260:	4f440413          	addi	s0,s0,1268
   10264:	4481                	li	s1,0
   10266:	601c                	ld	a5,0(s0)
   10268:	0485                	addi	s1,s1,1
   1026a:	0421                	addi	s0,s0,8
   1026c:	9782                	jalr	a5
   1026e:	fe991ce3          	bne	s2,s1,10266 <__libc_init_array+0x28>
   10272:	6445                	lui	s0,0x11
   10274:	6945                	lui	s2,0x11
   10276:	4f840793          	addi	a5,s0,1272 # 114f8 <__init_array_start>
   1027a:	50890913          	addi	s2,s2,1288 # 11508 <__do_global_dtors_aux_fini_array_entry>
   1027e:	40f90933          	sub	s2,s2,a5
   10282:	40395913          	srai	s2,s2,0x3
   10286:	00090b63          	beqz	s2,1029c <__libc_init_array+0x5e>
   1028a:	4f840413          	addi	s0,s0,1272
   1028e:	4481                	li	s1,0
   10290:	601c                	ld	a5,0(s0)
   10292:	0485                	addi	s1,s1,1
   10294:	0421                	addi	s0,s0,8
   10296:	9782                	jalr	a5
   10298:	fe991ce3          	bne	s2,s1,10290 <__libc_init_array+0x52>
   1029c:	60e2                	ld	ra,24(sp)
   1029e:	6442                	ld	s0,16(sp)
   102a0:	64a2                	ld	s1,8(sp)
   102a2:	6902                	ld	s2,0(sp)
   102a4:	6105                	addi	sp,sp,32
   102a6:	8082                	ret

00000000000102a8 <memset>:
   102a8:	433d                	li	t1,15
   102aa:	872a                	mv	a4,a0
   102ac:	02c37163          	bgeu	t1,a2,102ce <memset+0x26>
   102b0:	00f77793          	andi	a5,a4,15
   102b4:	e3c1                	bnez	a5,10334 <memset+0x8c>
   102b6:	e1bd                	bnez	a1,1031c <memset+0x74>
   102b8:	ff067693          	andi	a3,a2,-16
   102bc:	8a3d                	andi	a2,a2,15
   102be:	96ba                	add	a3,a3,a4
   102c0:	e30c                	sd	a1,0(a4)
   102c2:	e70c                	sd	a1,8(a4)
   102c4:	0741                	addi	a4,a4,16
   102c6:	fed76de3          	bltu	a4,a3,102c0 <memset+0x18>
   102ca:	e211                	bnez	a2,102ce <memset+0x26>
   102cc:	8082                	ret
   102ce:	40c306b3          	sub	a3,t1,a2
   102d2:	068a                	slli	a3,a3,0x2
   102d4:	00000297          	auipc	t0,0x0
   102d8:	9696                	add	a3,a3,t0
   102da:	00a68067          	jr	10(a3)
   102de:	00b70723          	sb	a1,14(a4)
   102e2:	00b706a3          	sb	a1,13(a4)
   102e6:	00b70623          	sb	a1,12(a4)
   102ea:	00b705a3          	sb	a1,11(a4)
   102ee:	00b70523          	sb	a1,10(a4)
   102f2:	00b704a3          	sb	a1,9(a4)
   102f6:	00b70423          	sb	a1,8(a4)
   102fa:	00b703a3          	sb	a1,7(a4)
   102fe:	00b70323          	sb	a1,6(a4)
   10302:	00b702a3          	sb	a1,5(a4)
   10306:	00b70223          	sb	a1,4(a4)
   1030a:	00b701a3          	sb	a1,3(a4)
   1030e:	00b70123          	sb	a1,2(a4)
   10312:	00b700a3          	sb	a1,1(a4)
   10316:	00b70023          	sb	a1,0(a4)
   1031a:	8082                	ret
   1031c:	0ff5f593          	zext.b	a1,a1
   10320:	00859693          	slli	a3,a1,0x8
   10324:	8dd5                	or	a1,a1,a3
   10326:	01059693          	slli	a3,a1,0x10
   1032a:	8dd5                	or	a1,a1,a3
   1032c:	02059693          	slli	a3,a1,0x20
   10330:	8dd5                	or	a1,a1,a3
   10332:	b759                	j	102b8 <memset+0x10>
   10334:	00279693          	slli	a3,a5,0x2
   10338:	00000297          	auipc	t0,0x0
   1033c:	9696                	add	a3,a3,t0
   1033e:	8286                	mv	t0,ra
   10340:	fa2680e7          	jalr	-94(a3)
   10344:	8096                	mv	ra,t0
   10346:	17c1                	addi	a5,a5,-16
   10348:	8f1d                	sub	a4,a4,a5
   1034a:	963e                	add	a2,a2,a5
   1034c:	f8c371e3          	bgeu	t1,a2,102ce <memset+0x26>
   10350:	b79d                	j	102b6 <memset+0xe>

0000000000010352 <__call_exitprocs>:
   10352:	715d                	addi	sp,sp,-80
   10354:	f052                	sd	s4,32(sp)
   10356:	f481ba03          	ld	s4,-184(gp) # 11c58 <_global_impure_ptr>
   1035a:	f84a                	sd	s2,48(sp)
   1035c:	e486                	sd	ra,72(sp)
   1035e:	1f8a3903          	ld	s2,504(s4)
   10362:	e0a2                	sd	s0,64(sp)
   10364:	fc26                	sd	s1,56(sp)
   10366:	f44e                	sd	s3,40(sp)
   10368:	ec56                	sd	s5,24(sp)
   1036a:	e85a                	sd	s6,16(sp)
   1036c:	e45e                	sd	s7,8(sp)
   1036e:	e062                	sd	s8,0(sp)
   10370:	02090863          	beqz	s2,103a0 <__call_exitprocs+0x4e>
   10374:	8b2a                	mv	s6,a0
   10376:	8bae                	mv	s7,a1
   10378:	4a85                	li	s5,1
   1037a:	59fd                	li	s3,-1
   1037c:	00892483          	lw	s1,8(s2)
   10380:	fff4841b          	addiw	s0,s1,-1
   10384:	00044e63          	bltz	s0,103a0 <__call_exitprocs+0x4e>
   10388:	048e                	slli	s1,s1,0x3
   1038a:	94ca                	add	s1,s1,s2
   1038c:	020b8663          	beqz	s7,103b8 <__call_exitprocs+0x66>
   10390:	2084b783          	ld	a5,520(s1)
   10394:	03778263          	beq	a5,s7,103b8 <__call_exitprocs+0x66>
   10398:	347d                	addiw	s0,s0,-1
   1039a:	14e1                	addi	s1,s1,-8
   1039c:	ff3418e3          	bne	s0,s3,1038c <__call_exitprocs+0x3a>
   103a0:	60a6                	ld	ra,72(sp)
   103a2:	6406                	ld	s0,64(sp)
   103a4:	74e2                	ld	s1,56(sp)
   103a6:	7942                	ld	s2,48(sp)
   103a8:	79a2                	ld	s3,40(sp)
   103aa:	7a02                	ld	s4,32(sp)
   103ac:	6ae2                	ld	s5,24(sp)
   103ae:	6b42                	ld	s6,16(sp)
   103b0:	6ba2                	ld	s7,8(sp)
   103b2:	6c02                	ld	s8,0(sp)
   103b4:	6161                	addi	sp,sp,80
   103b6:	8082                	ret
   103b8:	00892783          	lw	a5,8(s2)
   103bc:	6498                	ld	a4,8(s1)
   103be:	37fd                	addiw	a5,a5,-1
   103c0:	04878463          	beq	a5,s0,10408 <__call_exitprocs+0xb6>
   103c4:	0004b423          	sd	zero,8(s1)
   103c8:	db61                	beqz	a4,10398 <__call_exitprocs+0x46>
   103ca:	31092783          	lw	a5,784(s2)
   103ce:	008a96bb          	sllw	a3,s5,s0
   103d2:	00892c03          	lw	s8,8(s2)
   103d6:	8ff5                	and	a5,a5,a3
   103d8:	2781                	sext.w	a5,a5
   103da:	ef89                	bnez	a5,103f4 <__call_exitprocs+0xa2>
   103dc:	9702                	jalr	a4
   103de:	00892703          	lw	a4,8(s2)
   103e2:	1f8a3783          	ld	a5,504(s4)
   103e6:	01871463          	bne	a4,s8,103ee <__call_exitprocs+0x9c>
   103ea:	fb2787e3          	beq	a5,s2,10398 <__call_exitprocs+0x46>
   103ee:	dbcd                	beqz	a5,103a0 <__call_exitprocs+0x4e>
   103f0:	893e                	mv	s2,a5
   103f2:	b769                	j	1037c <__call_exitprocs+0x2a>
   103f4:	31492783          	lw	a5,788(s2)
   103f8:	1084b583          	ld	a1,264(s1)
   103fc:	8ff5                	and	a5,a5,a3
   103fe:	2781                	sext.w	a5,a5
   10400:	e799                	bnez	a5,1040e <__call_exitprocs+0xbc>
   10402:	855a                	mv	a0,s6
   10404:	9702                	jalr	a4
   10406:	bfe1                	j	103de <__call_exitprocs+0x8c>
   10408:	00892423          	sw	s0,8(s2)
   1040c:	bf75                	j	103c8 <__call_exitprocs+0x76>
   1040e:	852e                	mv	a0,a1
   10410:	9702                	jalr	a4
   10412:	b7f1                	j	103de <__call_exitprocs+0x8c>

0000000000010414 <__libc_fini_array>:
   10414:	1101                	addi	sp,sp,-32
   10416:	e822                	sd	s0,16(sp)
   10418:	67c5                	lui	a5,0x11
   1041a:	6445                	lui	s0,0x11
   1041c:	50878793          	addi	a5,a5,1288 # 11508 <__do_global_dtors_aux_fini_array_entry>
   10420:	51040413          	addi	s0,s0,1296 # 11510 <impure_data>
   10424:	8c1d                	sub	s0,s0,a5
   10426:	e426                	sd	s1,8(sp)
   10428:	ec06                	sd	ra,24(sp)
   1042a:	40345493          	srai	s1,s0,0x3
   1042e:	c881                	beqz	s1,1043e <__libc_fini_array+0x2a>
   10430:	1461                	addi	s0,s0,-8
   10432:	943e                	add	s0,s0,a5
   10434:	601c                	ld	a5,0(s0)
   10436:	14fd                	addi	s1,s1,-1
   10438:	1461                	addi	s0,s0,-8
   1043a:	9782                	jalr	a5
   1043c:	fce5                	bnez	s1,10434 <__libc_fini_array+0x20>
   1043e:	60e2                	ld	ra,24(sp)
   10440:	6442                	ld	s0,16(sp)
   10442:	64a2                	ld	s1,8(sp)
   10444:	6105                	addi	sp,sp,32
   10446:	8082                	ret

0000000000010448 <atexit>:
   10448:	85aa                	mv	a1,a0
   1044a:	4681                	li	a3,0
   1044c:	4601                	li	a2,0
   1044e:	4501                	li	a0,0
   10450:	a009                	j	10452 <__register_exitproc>

0000000000010452 <__register_exitproc>:
   10452:	f481b703          	ld	a4,-184(gp) # 11c58 <_global_impure_ptr>
   10456:	1f873783          	ld	a5,504(a4)
   1045a:	c3b1                	beqz	a5,1049e <__register_exitproc+0x4c>
   1045c:	4798                	lw	a4,8(a5)
   1045e:	487d                	li	a6,31
   10460:	06e84263          	blt	a6,a4,104c4 <__register_exitproc+0x72>
   10464:	c505                	beqz	a0,1048c <__register_exitproc+0x3a>
   10466:	00371813          	slli	a6,a4,0x3
   1046a:	983e                	add	a6,a6,a5
   1046c:	10c83823          	sd	a2,272(a6)
   10470:	3107a883          	lw	a7,784(a5)
   10474:	4605                	li	a2,1
   10476:	00e6163b          	sllw	a2,a2,a4
   1047a:	00c8e8b3          	or	a7,a7,a2
   1047e:	3117a823          	sw	a7,784(a5)
   10482:	20d83823          	sd	a3,528(a6)
   10486:	4689                	li	a3,2
   10488:	02d50063          	beq	a0,a3,104a8 <__register_exitproc+0x56>
   1048c:	00270693          	addi	a3,a4,2
   10490:	068e                	slli	a3,a3,0x3
   10492:	2705                	addiw	a4,a4,1
   10494:	c798                	sw	a4,8(a5)
   10496:	97b6                	add	a5,a5,a3
   10498:	e38c                	sd	a1,0(a5)
   1049a:	4501                	li	a0,0
   1049c:	8082                	ret
   1049e:	20070793          	addi	a5,a4,512
   104a2:	1ef73c23          	sd	a5,504(a4)
   104a6:	bf5d                	j	1045c <__register_exitproc+0xa>
   104a8:	3147a683          	lw	a3,788(a5)
   104ac:	4501                	li	a0,0
   104ae:	8ed1                	or	a3,a3,a2
   104b0:	30d7aa23          	sw	a3,788(a5)
   104b4:	00270693          	addi	a3,a4,2
   104b8:	068e                	slli	a3,a3,0x3
   104ba:	2705                	addiw	a4,a4,1
   104bc:	c798                	sw	a4,8(a5)
   104be:	97b6                	add	a5,a5,a3
   104c0:	e38c                	sd	a1,0(a5)
   104c2:	8082                	ret
   104c4:	557d                	li	a0,-1
   104c6:	8082                	ret

00000000000104c8 <_exit>:
   104c8:	05d00893          	li	a7,93
   104cc:	00000073          	ecall
   104d0:	00054363          	bltz	a0,104d6 <_exit+0xe>
   104d4:	a001                	j	104d4 <_exit+0xc>
   104d6:	1141                	addi	sp,sp,-16
   104d8:	e022                	sd	s0,0(sp)
   104da:	842a                	mv	s0,a0
   104dc:	e406                	sd	ra,8(sp)
   104de:	4080043b          	negw	s0,s0
   104e2:	008000ef          	jal	ra,104ea <__errno>
   104e6:	c100                	sw	s0,0(a0)
   104e8:	a001                	j	104e8 <_exit+0x20>

00000000000104ea <__errno>:
   104ea:	f581b503          	ld	a0,-168(gp) # 11c68 <_impure_ptr>
   104ee:	8082                	ret
