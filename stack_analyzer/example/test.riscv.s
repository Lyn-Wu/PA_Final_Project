
./a.out:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	1141                	addi	sp,sp,-16
   100ea:	4581                	li	a1,0
   100ec:	e022                	sd	s0,0(sp)
   100ee:	e406                	sd	ra,8(sp)
   100f0:	842a                	mv	s0,a0
   100f2:	24c000ef          	jal	ra,1033e <__call_exitprocs>
   100f6:	f481b503          	ld	a0,-184(gp) # 11c40 <_global_impure_ptr>
   100fa:	6d3c                	ld	a5,88(a0)
   100fc:	c391                	beqz	a5,10100 <exit+0x18>
   100fe:	9782                	jalr	a5
   10100:	8522                	mv	a0,s0
   10102:	3b2000ef          	jal	ra,104b4 <_exit>

0000000000010106 <register_fini>:
   10106:	00000793          	li	a5,0
   1010a:	c789                	beqz	a5,10114 <register_fini+0xe>
   1010c:	6541                	lui	a0,0x10
   1010e:	40050513          	addi	a0,a0,1024 # 10400 <__libc_fini_array>
   10112:	a60d                	j	10434 <atexit>
   10114:	8082                	ret

0000000000010116 <_start>:
   10116:	00002197          	auipc	gp,0x2
   1011a:	be218193          	addi	gp,gp,-1054 # 11cf8 <__global_pointer$>
   1011e:	f6018513          	addi	a0,gp,-160 # 11c58 <completed.1>
   10122:	f9818613          	addi	a2,gp,-104 # 11c90 <__BSS_END__>
   10126:	8e09                	sub	a2,a2,a0
   10128:	4581                	li	a1,0
   1012a:	16a000ef          	jal	ra,10294 <memset>
   1012e:	00000517          	auipc	a0,0x0
   10132:	30650513          	addi	a0,a0,774 # 10434 <atexit>
   10136:	c519                	beqz	a0,10144 <_start+0x2e>
   10138:	00000517          	auipc	a0,0x0
   1013c:	2c850513          	addi	a0,a0,712 # 10400 <__libc_fini_array>
   10140:	2f4000ef          	jal	ra,10434 <atexit>
   10144:	0e6000ef          	jal	ra,1022a <__libc_init_array>
   10148:	4502                	lw	a0,0(sp)
   1014a:	002c                	addi	a1,sp,8
   1014c:	4601                	li	a2,0
   1014e:	0c2000ef          	jal	ra,10210 <main>
   10152:	bf59                	j	100e8 <exit>

0000000000010154 <__do_global_dtors_aux>:
   10154:	1141                	addi	sp,sp,-16
   10156:	e022                	sd	s0,0(sp)
   10158:	f601c783          	lbu	a5,-160(gp) # 11c58 <completed.1>
   1015c:	e406                	sd	ra,8(sp)
   1015e:	ef91                	bnez	a5,1017a <__do_global_dtors_aux+0x26>
   10160:	00000793          	li	a5,0
   10164:	cb81                	beqz	a5,10174 <__do_global_dtors_aux+0x20>
   10166:	6545                	lui	a0,0x11
   10168:	4dc50513          	addi	a0,a0,1244 # 114dc <__FRAME_END__>
   1016c:	00000097          	auipc	ra,0x0
   10170:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   10174:	4785                	li	a5,1
   10176:	f6f18023          	sb	a5,-160(gp) # 11c58 <completed.1>
   1017a:	60a2                	ld	ra,8(sp)
   1017c:	6402                	ld	s0,0(sp)
   1017e:	0141                	addi	sp,sp,16
   10180:	8082                	ret

0000000000010182 <frame_dummy>:
   10182:	00000793          	li	a5,0
   10186:	cb91                	beqz	a5,1019a <frame_dummy+0x18>
   10188:	6545                	lui	a0,0x11
   1018a:	f6818593          	addi	a1,gp,-152 # 11c60 <object.0>
   1018e:	4dc50513          	addi	a0,a0,1244 # 114dc <__FRAME_END__>
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
   101ee:	cb91                	beqz	a5,10202 <foo2+0x28>
   101f0:	fec42783          	lw	a5,-20(s0)
   101f4:	37fd                	addiw	a5,a5,-1
   101f6:	2781                	sext.w	a5,a5
   101f8:	853e                	mv	a0,a5
   101fa:	fa3ff0ef          	jal	ra,1019c <foo1>
   101fe:	87aa                	mv	a5,a0
   10200:	a019                	j	10206 <foo2+0x2c>
   10202:	fec42783          	lw	a5,-20(s0)
   10206:	853e                	mv	a0,a5
   10208:	60e2                	ld	ra,24(sp)
   1020a:	6442                	ld	s0,16(sp)
   1020c:	6105                	addi	sp,sp,32
   1020e:	8082                	ret

0000000000010210 <main>:
   10210:	1141                	addi	sp,sp,-16
   10212:	e406                	sd	ra,8(sp)
   10214:	e022                	sd	s0,0(sp)
   10216:	0800                	addi	s0,sp,16
   10218:	4529                	li	a0,10
   1021a:	f83ff0ef          	jal	ra,1019c <foo1>
   1021e:	87aa                	mv	a5,a0
   10220:	853e                	mv	a0,a5
   10222:	60a2                	ld	ra,8(sp)
   10224:	6402                	ld	s0,0(sp)
   10226:	0141                	addi	sp,sp,16
   10228:	8082                	ret

000000000001022a <__libc_init_array>:
   1022a:	1101                	addi	sp,sp,-32
   1022c:	e822                	sd	s0,16(sp)
   1022e:	e04a                	sd	s2,0(sp)
   10230:	6445                	lui	s0,0x11
   10232:	6945                	lui	s2,0x11
   10234:	4e040793          	addi	a5,s0,1248 # 114e0 <__init_array_start>
   10238:	4e090913          	addi	s2,s2,1248 # 114e0 <__init_array_start>
   1023c:	40f90933          	sub	s2,s2,a5
   10240:	ec06                	sd	ra,24(sp)
   10242:	e426                	sd	s1,8(sp)
   10244:	40395913          	srai	s2,s2,0x3
   10248:	00090b63          	beqz	s2,1025e <__libc_init_array+0x34>
   1024c:	4e040413          	addi	s0,s0,1248
   10250:	4481                	li	s1,0
   10252:	601c                	ld	a5,0(s0)
   10254:	0485                	addi	s1,s1,1
   10256:	0421                	addi	s0,s0,8
   10258:	9782                	jalr	a5
   1025a:	fe991ce3          	bne	s2,s1,10252 <__libc_init_array+0x28>
   1025e:	6445                	lui	s0,0x11
   10260:	6945                	lui	s2,0x11
   10262:	4e040793          	addi	a5,s0,1248 # 114e0 <__init_array_start>
   10266:	4f090913          	addi	s2,s2,1264 # 114f0 <__do_global_dtors_aux_fini_array_entry>
   1026a:	40f90933          	sub	s2,s2,a5
   1026e:	40395913          	srai	s2,s2,0x3
   10272:	00090b63          	beqz	s2,10288 <__libc_init_array+0x5e>
   10276:	4e040413          	addi	s0,s0,1248
   1027a:	4481                	li	s1,0
   1027c:	601c                	ld	a5,0(s0)
   1027e:	0485                	addi	s1,s1,1
   10280:	0421                	addi	s0,s0,8
   10282:	9782                	jalr	a5
   10284:	fe991ce3          	bne	s2,s1,1027c <__libc_init_array+0x52>
   10288:	60e2                	ld	ra,24(sp)
   1028a:	6442                	ld	s0,16(sp)
   1028c:	64a2                	ld	s1,8(sp)
   1028e:	6902                	ld	s2,0(sp)
   10290:	6105                	addi	sp,sp,32
   10292:	8082                	ret

0000000000010294 <memset>:
   10294:	433d                	li	t1,15
   10296:	872a                	mv	a4,a0
   10298:	02c37163          	bgeu	t1,a2,102ba <memset+0x26>
   1029c:	00f77793          	andi	a5,a4,15
   102a0:	e3c1                	bnez	a5,10320 <memset+0x8c>
   102a2:	e1bd                	bnez	a1,10308 <memset+0x74>
   102a4:	ff067693          	andi	a3,a2,-16
   102a8:	8a3d                	andi	a2,a2,15
   102aa:	96ba                	add	a3,a3,a4
   102ac:	e30c                	sd	a1,0(a4)
   102ae:	e70c                	sd	a1,8(a4)
   102b0:	0741                	addi	a4,a4,16
   102b2:	fed76de3          	bltu	a4,a3,102ac <memset+0x18>
   102b6:	e211                	bnez	a2,102ba <memset+0x26>
   102b8:	8082                	ret
   102ba:	40c306b3          	sub	a3,t1,a2
   102be:	068a                	slli	a3,a3,0x2
   102c0:	00000297          	auipc	t0,0x0
   102c4:	9696                	add	a3,a3,t0
   102c6:	00a68067          	jr	10(a3)
   102ca:	00b70723          	sb	a1,14(a4)
   102ce:	00b706a3          	sb	a1,13(a4)
   102d2:	00b70623          	sb	a1,12(a4)
   102d6:	00b705a3          	sb	a1,11(a4)
   102da:	00b70523          	sb	a1,10(a4)
   102de:	00b704a3          	sb	a1,9(a4)
   102e2:	00b70423          	sb	a1,8(a4)
   102e6:	00b703a3          	sb	a1,7(a4)
   102ea:	00b70323          	sb	a1,6(a4)
   102ee:	00b702a3          	sb	a1,5(a4)
   102f2:	00b70223          	sb	a1,4(a4)
   102f6:	00b701a3          	sb	a1,3(a4)
   102fa:	00b70123          	sb	a1,2(a4)
   102fe:	00b700a3          	sb	a1,1(a4)
   10302:	00b70023          	sb	a1,0(a4)
   10306:	8082                	ret
   10308:	0ff5f593          	zext.b	a1,a1
   1030c:	00859693          	slli	a3,a1,0x8
   10310:	8dd5                	or	a1,a1,a3
   10312:	01059693          	slli	a3,a1,0x10
   10316:	8dd5                	or	a1,a1,a3
   10318:	02059693          	slli	a3,a1,0x20
   1031c:	8dd5                	or	a1,a1,a3
   1031e:	b759                	j	102a4 <memset+0x10>
   10320:	00279693          	slli	a3,a5,0x2
   10324:	00000297          	auipc	t0,0x0
   10328:	9696                	add	a3,a3,t0
   1032a:	8286                	mv	t0,ra
   1032c:	fa2680e7          	jalr	-94(a3)
   10330:	8096                	mv	ra,t0
   10332:	17c1                	addi	a5,a5,-16
   10334:	8f1d                	sub	a4,a4,a5
   10336:	963e                	add	a2,a2,a5
   10338:	f8c371e3          	bgeu	t1,a2,102ba <memset+0x26>
   1033c:	b79d                	j	102a2 <memset+0xe>

000000000001033e <__call_exitprocs>:
   1033e:	715d                	addi	sp,sp,-80
   10340:	f052                	sd	s4,32(sp)
   10342:	f481ba03          	ld	s4,-184(gp) # 11c40 <_global_impure_ptr>
   10346:	f84a                	sd	s2,48(sp)
   10348:	e486                	sd	ra,72(sp)
   1034a:	1f8a3903          	ld	s2,504(s4)
   1034e:	e0a2                	sd	s0,64(sp)
   10350:	fc26                	sd	s1,56(sp)
   10352:	f44e                	sd	s3,40(sp)
   10354:	ec56                	sd	s5,24(sp)
   10356:	e85a                	sd	s6,16(sp)
   10358:	e45e                	sd	s7,8(sp)
   1035a:	e062                	sd	s8,0(sp)
   1035c:	02090863          	beqz	s2,1038c <__call_exitprocs+0x4e>
   10360:	8b2a                	mv	s6,a0
   10362:	8bae                	mv	s7,a1
   10364:	4a85                	li	s5,1
   10366:	59fd                	li	s3,-1
   10368:	00892483          	lw	s1,8(s2)
   1036c:	fff4841b          	addiw	s0,s1,-1
   10370:	00044e63          	bltz	s0,1038c <__call_exitprocs+0x4e>
   10374:	048e                	slli	s1,s1,0x3
   10376:	94ca                	add	s1,s1,s2
   10378:	020b8663          	beqz	s7,103a4 <__call_exitprocs+0x66>
   1037c:	2084b783          	ld	a5,520(s1)
   10380:	03778263          	beq	a5,s7,103a4 <__call_exitprocs+0x66>
   10384:	347d                	addiw	s0,s0,-1
   10386:	14e1                	addi	s1,s1,-8
   10388:	ff3418e3          	bne	s0,s3,10378 <__call_exitprocs+0x3a>
   1038c:	60a6                	ld	ra,72(sp)
   1038e:	6406                	ld	s0,64(sp)
   10390:	74e2                	ld	s1,56(sp)
   10392:	7942                	ld	s2,48(sp)
   10394:	79a2                	ld	s3,40(sp)
   10396:	7a02                	ld	s4,32(sp)
   10398:	6ae2                	ld	s5,24(sp)
   1039a:	6b42                	ld	s6,16(sp)
   1039c:	6ba2                	ld	s7,8(sp)
   1039e:	6c02                	ld	s8,0(sp)
   103a0:	6161                	addi	sp,sp,80
   103a2:	8082                	ret
   103a4:	00892783          	lw	a5,8(s2)
   103a8:	6498                	ld	a4,8(s1)
   103aa:	37fd                	addiw	a5,a5,-1
   103ac:	04878463          	beq	a5,s0,103f4 <__call_exitprocs+0xb6>
   103b0:	0004b423          	sd	zero,8(s1)
   103b4:	db61                	beqz	a4,10384 <__call_exitprocs+0x46>
   103b6:	31092783          	lw	a5,784(s2)
   103ba:	008a96bb          	sllw	a3,s5,s0
   103be:	00892c03          	lw	s8,8(s2)
   103c2:	8ff5                	and	a5,a5,a3
   103c4:	2781                	sext.w	a5,a5
   103c6:	ef89                	bnez	a5,103e0 <__call_exitprocs+0xa2>
   103c8:	9702                	jalr	a4
   103ca:	00892703          	lw	a4,8(s2)
   103ce:	1f8a3783          	ld	a5,504(s4)
   103d2:	01871463          	bne	a4,s8,103da <__call_exitprocs+0x9c>
   103d6:	fb2787e3          	beq	a5,s2,10384 <__call_exitprocs+0x46>
   103da:	dbcd                	beqz	a5,1038c <__call_exitprocs+0x4e>
   103dc:	893e                	mv	s2,a5
   103de:	b769                	j	10368 <__call_exitprocs+0x2a>
   103e0:	31492783          	lw	a5,788(s2)
   103e4:	1084b583          	ld	a1,264(s1)
   103e8:	8ff5                	and	a5,a5,a3
   103ea:	2781                	sext.w	a5,a5
   103ec:	e799                	bnez	a5,103fa <__call_exitprocs+0xbc>
   103ee:	855a                	mv	a0,s6
   103f0:	9702                	jalr	a4
   103f2:	bfe1                	j	103ca <__call_exitprocs+0x8c>
   103f4:	00892423          	sw	s0,8(s2)
   103f8:	bf75                	j	103b4 <__call_exitprocs+0x76>
   103fa:	852e                	mv	a0,a1
   103fc:	9702                	jalr	a4
   103fe:	b7f1                	j	103ca <__call_exitprocs+0x8c>

0000000000010400 <__libc_fini_array>:
   10400:	1101                	addi	sp,sp,-32
   10402:	e822                	sd	s0,16(sp)
   10404:	67c5                	lui	a5,0x11
   10406:	6445                	lui	s0,0x11
   10408:	4f078793          	addi	a5,a5,1264 # 114f0 <__do_global_dtors_aux_fini_array_entry>
   1040c:	4f840413          	addi	s0,s0,1272 # 114f8 <impure_data>
   10410:	8c1d                	sub	s0,s0,a5
   10412:	e426                	sd	s1,8(sp)
   10414:	ec06                	sd	ra,24(sp)
   10416:	40345493          	srai	s1,s0,0x3
   1041a:	c881                	beqz	s1,1042a <__libc_fini_array+0x2a>
   1041c:	1461                	addi	s0,s0,-8
   1041e:	943e                	add	s0,s0,a5
   10420:	601c                	ld	a5,0(s0)
   10422:	14fd                	addi	s1,s1,-1
   10424:	1461                	addi	s0,s0,-8
   10426:	9782                	jalr	a5
   10428:	fce5                	bnez	s1,10420 <__libc_fini_array+0x20>
   1042a:	60e2                	ld	ra,24(sp)
   1042c:	6442                	ld	s0,16(sp)
   1042e:	64a2                	ld	s1,8(sp)
   10430:	6105                	addi	sp,sp,32
   10432:	8082                	ret

0000000000010434 <atexit>:
   10434:	85aa                	mv	a1,a0
   10436:	4681                	li	a3,0
   10438:	4601                	li	a2,0
   1043a:	4501                	li	a0,0
   1043c:	a009                	j	1043e <__register_exitproc>

000000000001043e <__register_exitproc>:
   1043e:	f481b703          	ld	a4,-184(gp) # 11c40 <_global_impure_ptr>
   10442:	1f873783          	ld	a5,504(a4)
   10446:	c3b1                	beqz	a5,1048a <__register_exitproc+0x4c>
   10448:	4798                	lw	a4,8(a5)
   1044a:	487d                	li	a6,31
   1044c:	06e84263          	blt	a6,a4,104b0 <__register_exitproc+0x72>
   10450:	c505                	beqz	a0,10478 <__register_exitproc+0x3a>
   10452:	00371813          	slli	a6,a4,0x3
   10456:	983e                	add	a6,a6,a5
   10458:	10c83823          	sd	a2,272(a6)
   1045c:	3107a883          	lw	a7,784(a5)
   10460:	4605                	li	a2,1
   10462:	00e6163b          	sllw	a2,a2,a4
   10466:	00c8e8b3          	or	a7,a7,a2
   1046a:	3117a823          	sw	a7,784(a5)
   1046e:	20d83823          	sd	a3,528(a6)
   10472:	4689                	li	a3,2
   10474:	02d50063          	beq	a0,a3,10494 <__register_exitproc+0x56>
   10478:	00270693          	addi	a3,a4,2
   1047c:	068e                	slli	a3,a3,0x3
   1047e:	2705                	addiw	a4,a4,1
   10480:	c798                	sw	a4,8(a5)
   10482:	97b6                	add	a5,a5,a3
   10484:	e38c                	sd	a1,0(a5)
   10486:	4501                	li	a0,0
   10488:	8082                	ret
   1048a:	20070793          	addi	a5,a4,512
   1048e:	1ef73c23          	sd	a5,504(a4)
   10492:	bf5d                	j	10448 <__register_exitproc+0xa>
   10494:	3147a683          	lw	a3,788(a5)
   10498:	4501                	li	a0,0
   1049a:	8ed1                	or	a3,a3,a2
   1049c:	30d7aa23          	sw	a3,788(a5)
   104a0:	00270693          	addi	a3,a4,2
   104a4:	068e                	slli	a3,a3,0x3
   104a6:	2705                	addiw	a4,a4,1
   104a8:	c798                	sw	a4,8(a5)
   104aa:	97b6                	add	a5,a5,a3
   104ac:	e38c                	sd	a1,0(a5)
   104ae:	8082                	ret
   104b0:	557d                	li	a0,-1
   104b2:	8082                	ret

00000000000104b4 <_exit>:
   104b4:	05d00893          	li	a7,93
   104b8:	00000073          	ecall
   104bc:	00054363          	bltz	a0,104c2 <_exit+0xe>
   104c0:	a001                	j	104c0 <_exit+0xc>
   104c2:	1141                	addi	sp,sp,-16
   104c4:	e022                	sd	s0,0(sp)
   104c6:	842a                	mv	s0,a0
   104c8:	e406                	sd	ra,8(sp)
   104ca:	4080043b          	negw	s0,s0
   104ce:	008000ef          	jal	ra,104d6 <__errno>
   104d2:	c100                	sw	s0,0(a0)
   104d4:	a001                	j	104d4 <_exit+0x20>

00000000000104d6 <__errno>:
   104d6:	f581b503          	ld	a0,-168(gp) # 11c50 <_impure_ptr>
   104da:	8082                	ret
