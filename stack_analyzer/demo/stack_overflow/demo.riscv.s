
demo:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	1141                	addi	sp,sp,-16
   100ea:	4581                	li	a1,0
   100ec:	e022                	sd	s0,0(sp)
   100ee:	e406                	sd	ra,8(sp)
   100f0:	842a                	mv	s0,a0
   100f2:	234000ef          	jal	ra,10326 <__call_exitprocs>
   100f6:	f481b503          	ld	a0,-184(gp) # 11c28 <_global_impure_ptr>
   100fa:	6d3c                	ld	a5,88(a0)
   100fc:	c391                	beqz	a5,10100 <exit+0x18>
   100fe:	9782                	jalr	a5
   10100:	8522                	mv	a0,s0
   10102:	39a000ef          	jal	ra,1049c <_exit>

0000000000010106 <register_fini>:
   10106:	00000793          	li	a5,0
   1010a:	c789                	beqz	a5,10114 <register_fini+0xe>
   1010c:	6541                	lui	a0,0x10
   1010e:	3e850513          	addi	a0,a0,1000 # 103e8 <__libc_fini_array>
   10112:	a629                	j	1041c <atexit>
   10114:	8082                	ret

0000000000010116 <_start>:
   10116:	00002197          	auipc	gp,0x2
   1011a:	bca18193          	addi	gp,gp,-1078 # 11ce0 <__global_pointer$>
   1011e:	f6018513          	addi	a0,gp,-160 # 11c40 <completed.1>
   10122:	f9818613          	addi	a2,gp,-104 # 11c78 <__BSS_END__>
   10126:	8e09                	sub	a2,a2,a0
   10128:	4581                	li	a1,0
   1012a:	152000ef          	jal	ra,1027c <memset>
   1012e:	00000517          	auipc	a0,0x0
   10132:	2ee50513          	addi	a0,a0,750 # 1041c <atexit>
   10136:	c519                	beqz	a0,10144 <_start+0x2e>
   10138:	00000517          	auipc	a0,0x0
   1013c:	2b050513          	addi	a0,a0,688 # 103e8 <__libc_fini_array>
   10140:	2dc000ef          	jal	ra,1041c <atexit>
   10144:	0ce000ef          	jal	ra,10212 <__libc_init_array>
   10148:	4502                	lw	a0,0(sp)
   1014a:	002c                	addi	a1,sp,8
   1014c:	4601                	li	a2,0
   1014e:	0ac000ef          	jal	ra,101fa <main>
   10152:	bf59                	j	100e8 <exit>

0000000000010154 <__do_global_dtors_aux>:
   10154:	1141                	addi	sp,sp,-16
   10156:	e022                	sd	s0,0(sp)
   10158:	f601c783          	lbu	a5,-160(gp) # 11c40 <completed.1>
   1015c:	e406                	sd	ra,8(sp)
   1015e:	ef91                	bnez	a5,1017a <__do_global_dtors_aux+0x26>
   10160:	00000793          	li	a5,0
   10164:	cb81                	beqz	a5,10174 <__do_global_dtors_aux+0x20>
   10166:	6545                	lui	a0,0x11
   10168:	4c450513          	addi	a0,a0,1220 # 114c4 <__FRAME_END__>
   1016c:	00000097          	auipc	ra,0x0
   10170:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   10174:	4785                	li	a5,1
   10176:	f6f18023          	sb	a5,-160(gp) # 11c40 <completed.1>
   1017a:	60a2                	ld	ra,8(sp)
   1017c:	6402                	ld	s0,0(sp)
   1017e:	0141                	addi	sp,sp,16
   10180:	8082                	ret

0000000000010182 <frame_dummy>:
   10182:	00000793          	li	a5,0
   10186:	cb91                	beqz	a5,1019a <frame_dummy+0x18>
   10188:	6545                	lui	a0,0x11
   1018a:	f6818593          	addi	a1,gp,-152 # 11c48 <object.0>
   1018e:	4c450513          	addi	a0,a0,1220 # 114c4 <__FRAME_END__>
   10192:	00000317          	auipc	t1,0x0
   10196:	00000067          	jr	zero # 0 <exit-0x100e8>
   1019a:	8082                	ret

000000000001019c <foo>:
   1019c:	1101                	addi	sp,sp,-32
   1019e:	ec22                	sd	s0,24(sp)
   101a0:	1000                	addi	s0,sp,32
   101a2:	fffd82b7          	lui	t0,0xfffd8
   101a6:	9116                	add	sp,sp,t0
   101a8:	fe042623          	sw	zero,-20(s0)
   101ac:	fe042423          	sw	zero,-24(s0)
   101b0:	a035                	j	101dc <foo+0x40>
   101b2:	fffd87b7          	lui	a5,0xfffd8
   101b6:	17c1                	addi	a5,a5,-16 # fffffffffffd7ff0 <__global_pointer$+0xfffffffffffc6310>
   101b8:	00878733          	add	a4,a5,s0
   101bc:	fe842783          	lw	a5,-24(s0)
   101c0:	078a                	slli	a5,a5,0x2
   101c2:	97ba                	add	a5,a5,a4
   101c4:	ff87a783          	lw	a5,-8(a5)
   101c8:	fec42703          	lw	a4,-20(s0)
   101cc:	9fb9                	addw	a5,a5,a4
   101ce:	fef42623          	sw	a5,-20(s0)
   101d2:	fe842783          	lw	a5,-24(s0)
   101d6:	2785                	addiw	a5,a5,1
   101d8:	fef42423          	sw	a5,-24(s0)
   101dc:	fe842783          	lw	a5,-24(s0)
   101e0:	0007871b          	sext.w	a4,a5
   101e4:	67a9                	lui	a5,0xa
   101e6:	fcf746e3          	blt	a4,a5,101b2 <foo+0x16>
   101ea:	0001                	nop
   101ec:	853e                	mv	a0,a5
   101ee:	000282b7          	lui	t0,0x28
   101f2:	9116                	add	sp,sp,t0
   101f4:	6462                	ld	s0,24(sp)
   101f6:	6105                	addi	sp,sp,32
   101f8:	8082                	ret

00000000000101fa <main>:
   101fa:	1141                	addi	sp,sp,-16
   101fc:	e406                	sd	ra,8(sp)
   101fe:	e022                	sd	s0,0(sp)
   10200:	0800                	addi	s0,sp,16
   10202:	f9bff0ef          	jal	ra,1019c <foo>
   10206:	87aa                	mv	a5,a0
   10208:	853e                	mv	a0,a5
   1020a:	60a2                	ld	ra,8(sp)
   1020c:	6402                	ld	s0,0(sp)
   1020e:	0141                	addi	sp,sp,16
   10210:	8082                	ret

0000000000010212 <__libc_init_array>:
   10212:	1101                	addi	sp,sp,-32
   10214:	e822                	sd	s0,16(sp)
   10216:	e04a                	sd	s2,0(sp)
   10218:	6445                	lui	s0,0x11
   1021a:	6945                	lui	s2,0x11
   1021c:	4c840793          	addi	a5,s0,1224 # 114c8 <__init_array_start>
   10220:	4c890913          	addi	s2,s2,1224 # 114c8 <__init_array_start>
   10224:	40f90933          	sub	s2,s2,a5
   10228:	ec06                	sd	ra,24(sp)
   1022a:	e426                	sd	s1,8(sp)
   1022c:	40395913          	srai	s2,s2,0x3
   10230:	00090b63          	beqz	s2,10246 <__libc_init_array+0x34>
   10234:	4c840413          	addi	s0,s0,1224
   10238:	4481                	li	s1,0
   1023a:	601c                	ld	a5,0(s0)
   1023c:	0485                	addi	s1,s1,1
   1023e:	0421                	addi	s0,s0,8
   10240:	9782                	jalr	a5
   10242:	fe991ce3          	bne	s2,s1,1023a <__libc_init_array+0x28>
   10246:	6445                	lui	s0,0x11
   10248:	6945                	lui	s2,0x11
   1024a:	4c840793          	addi	a5,s0,1224 # 114c8 <__init_array_start>
   1024e:	4d890913          	addi	s2,s2,1240 # 114d8 <__do_global_dtors_aux_fini_array_entry>
   10252:	40f90933          	sub	s2,s2,a5
   10256:	40395913          	srai	s2,s2,0x3
   1025a:	00090b63          	beqz	s2,10270 <__libc_init_array+0x5e>
   1025e:	4c840413          	addi	s0,s0,1224
   10262:	4481                	li	s1,0
   10264:	601c                	ld	a5,0(s0)
   10266:	0485                	addi	s1,s1,1
   10268:	0421                	addi	s0,s0,8
   1026a:	9782                	jalr	a5
   1026c:	fe991ce3          	bne	s2,s1,10264 <__libc_init_array+0x52>
   10270:	60e2                	ld	ra,24(sp)
   10272:	6442                	ld	s0,16(sp)
   10274:	64a2                	ld	s1,8(sp)
   10276:	6902                	ld	s2,0(sp)
   10278:	6105                	addi	sp,sp,32
   1027a:	8082                	ret

000000000001027c <memset>:
   1027c:	433d                	li	t1,15
   1027e:	872a                	mv	a4,a0
   10280:	02c37163          	bgeu	t1,a2,102a2 <memset+0x26>
   10284:	00f77793          	andi	a5,a4,15
   10288:	e3c1                	bnez	a5,10308 <memset+0x8c>
   1028a:	e1bd                	bnez	a1,102f0 <memset+0x74>
   1028c:	ff067693          	andi	a3,a2,-16
   10290:	8a3d                	andi	a2,a2,15
   10292:	96ba                	add	a3,a3,a4
   10294:	e30c                	sd	a1,0(a4)
   10296:	e70c                	sd	a1,8(a4)
   10298:	0741                	addi	a4,a4,16
   1029a:	fed76de3          	bltu	a4,a3,10294 <memset+0x18>
   1029e:	e211                	bnez	a2,102a2 <memset+0x26>
   102a0:	8082                	ret
   102a2:	40c306b3          	sub	a3,t1,a2
   102a6:	068a                	slli	a3,a3,0x2
   102a8:	00000297          	auipc	t0,0x0
   102ac:	9696                	add	a3,a3,t0
   102ae:	00a68067          	jr	10(a3)
   102b2:	00b70723          	sb	a1,14(a4)
   102b6:	00b706a3          	sb	a1,13(a4)
   102ba:	00b70623          	sb	a1,12(a4)
   102be:	00b705a3          	sb	a1,11(a4)
   102c2:	00b70523          	sb	a1,10(a4)
   102c6:	00b704a3          	sb	a1,9(a4)
   102ca:	00b70423          	sb	a1,8(a4)
   102ce:	00b703a3          	sb	a1,7(a4)
   102d2:	00b70323          	sb	a1,6(a4)
   102d6:	00b702a3          	sb	a1,5(a4)
   102da:	00b70223          	sb	a1,4(a4)
   102de:	00b701a3          	sb	a1,3(a4)
   102e2:	00b70123          	sb	a1,2(a4)
   102e6:	00b700a3          	sb	a1,1(a4)
   102ea:	00b70023          	sb	a1,0(a4)
   102ee:	8082                	ret
   102f0:	0ff5f593          	zext.b	a1,a1
   102f4:	00859693          	slli	a3,a1,0x8
   102f8:	8dd5                	or	a1,a1,a3
   102fa:	01059693          	slli	a3,a1,0x10
   102fe:	8dd5                	or	a1,a1,a3
   10300:	02059693          	slli	a3,a1,0x20
   10304:	8dd5                	or	a1,a1,a3
   10306:	b759                	j	1028c <memset+0x10>
   10308:	00279693          	slli	a3,a5,0x2
   1030c:	00000297          	auipc	t0,0x0
   10310:	9696                	add	a3,a3,t0
   10312:	8286                	mv	t0,ra
   10314:	fa2680e7          	jalr	-94(a3)
   10318:	8096                	mv	ra,t0
   1031a:	17c1                	addi	a5,a5,-16 # 9ff0 <exit-0x60f8>
   1031c:	8f1d                	sub	a4,a4,a5
   1031e:	963e                	add	a2,a2,a5
   10320:	f8c371e3          	bgeu	t1,a2,102a2 <memset+0x26>
   10324:	b79d                	j	1028a <memset+0xe>

0000000000010326 <__call_exitprocs>:
   10326:	715d                	addi	sp,sp,-80
   10328:	f052                	sd	s4,32(sp)
   1032a:	f481ba03          	ld	s4,-184(gp) # 11c28 <_global_impure_ptr>
   1032e:	f84a                	sd	s2,48(sp)
   10330:	e486                	sd	ra,72(sp)
   10332:	1f8a3903          	ld	s2,504(s4)
   10336:	e0a2                	sd	s0,64(sp)
   10338:	fc26                	sd	s1,56(sp)
   1033a:	f44e                	sd	s3,40(sp)
   1033c:	ec56                	sd	s5,24(sp)
   1033e:	e85a                	sd	s6,16(sp)
   10340:	e45e                	sd	s7,8(sp)
   10342:	e062                	sd	s8,0(sp)
   10344:	02090863          	beqz	s2,10374 <__call_exitprocs+0x4e>
   10348:	8b2a                	mv	s6,a0
   1034a:	8bae                	mv	s7,a1
   1034c:	4a85                	li	s5,1
   1034e:	59fd                	li	s3,-1
   10350:	00892483          	lw	s1,8(s2)
   10354:	fff4841b          	addiw	s0,s1,-1
   10358:	00044e63          	bltz	s0,10374 <__call_exitprocs+0x4e>
   1035c:	048e                	slli	s1,s1,0x3
   1035e:	94ca                	add	s1,s1,s2
   10360:	020b8663          	beqz	s7,1038c <__call_exitprocs+0x66>
   10364:	2084b783          	ld	a5,520(s1)
   10368:	03778263          	beq	a5,s7,1038c <__call_exitprocs+0x66>
   1036c:	347d                	addiw	s0,s0,-1
   1036e:	14e1                	addi	s1,s1,-8
   10370:	ff3418e3          	bne	s0,s3,10360 <__call_exitprocs+0x3a>
   10374:	60a6                	ld	ra,72(sp)
   10376:	6406                	ld	s0,64(sp)
   10378:	74e2                	ld	s1,56(sp)
   1037a:	7942                	ld	s2,48(sp)
   1037c:	79a2                	ld	s3,40(sp)
   1037e:	7a02                	ld	s4,32(sp)
   10380:	6ae2                	ld	s5,24(sp)
   10382:	6b42                	ld	s6,16(sp)
   10384:	6ba2                	ld	s7,8(sp)
   10386:	6c02                	ld	s8,0(sp)
   10388:	6161                	addi	sp,sp,80
   1038a:	8082                	ret
   1038c:	00892783          	lw	a5,8(s2)
   10390:	6498                	ld	a4,8(s1)
   10392:	37fd                	addiw	a5,a5,-1
   10394:	04878463          	beq	a5,s0,103dc <__call_exitprocs+0xb6>
   10398:	0004b423          	sd	zero,8(s1)
   1039c:	db61                	beqz	a4,1036c <__call_exitprocs+0x46>
   1039e:	31092783          	lw	a5,784(s2)
   103a2:	008a96bb          	sllw	a3,s5,s0
   103a6:	00892c03          	lw	s8,8(s2)
   103aa:	8ff5                	and	a5,a5,a3
   103ac:	2781                	sext.w	a5,a5
   103ae:	ef89                	bnez	a5,103c8 <__call_exitprocs+0xa2>
   103b0:	9702                	jalr	a4
   103b2:	00892703          	lw	a4,8(s2)
   103b6:	1f8a3783          	ld	a5,504(s4)
   103ba:	01871463          	bne	a4,s8,103c2 <__call_exitprocs+0x9c>
   103be:	fb2787e3          	beq	a5,s2,1036c <__call_exitprocs+0x46>
   103c2:	dbcd                	beqz	a5,10374 <__call_exitprocs+0x4e>
   103c4:	893e                	mv	s2,a5
   103c6:	b769                	j	10350 <__call_exitprocs+0x2a>
   103c8:	31492783          	lw	a5,788(s2)
   103cc:	1084b583          	ld	a1,264(s1)
   103d0:	8ff5                	and	a5,a5,a3
   103d2:	2781                	sext.w	a5,a5
   103d4:	e799                	bnez	a5,103e2 <__call_exitprocs+0xbc>
   103d6:	855a                	mv	a0,s6
   103d8:	9702                	jalr	a4
   103da:	bfe1                	j	103b2 <__call_exitprocs+0x8c>
   103dc:	00892423          	sw	s0,8(s2)
   103e0:	bf75                	j	1039c <__call_exitprocs+0x76>
   103e2:	852e                	mv	a0,a1
   103e4:	9702                	jalr	a4
   103e6:	b7f1                	j	103b2 <__call_exitprocs+0x8c>

00000000000103e8 <__libc_fini_array>:
   103e8:	1101                	addi	sp,sp,-32
   103ea:	e822                	sd	s0,16(sp)
   103ec:	67c5                	lui	a5,0x11
   103ee:	6445                	lui	s0,0x11
   103f0:	4d878793          	addi	a5,a5,1240 # 114d8 <__do_global_dtors_aux_fini_array_entry>
   103f4:	4e040413          	addi	s0,s0,1248 # 114e0 <impure_data>
   103f8:	8c1d                	sub	s0,s0,a5
   103fa:	e426                	sd	s1,8(sp)
   103fc:	ec06                	sd	ra,24(sp)
   103fe:	40345493          	srai	s1,s0,0x3
   10402:	c881                	beqz	s1,10412 <__libc_fini_array+0x2a>
   10404:	1461                	addi	s0,s0,-8
   10406:	943e                	add	s0,s0,a5
   10408:	601c                	ld	a5,0(s0)
   1040a:	14fd                	addi	s1,s1,-1
   1040c:	1461                	addi	s0,s0,-8
   1040e:	9782                	jalr	a5
   10410:	fce5                	bnez	s1,10408 <__libc_fini_array+0x20>
   10412:	60e2                	ld	ra,24(sp)
   10414:	6442                	ld	s0,16(sp)
   10416:	64a2                	ld	s1,8(sp)
   10418:	6105                	addi	sp,sp,32
   1041a:	8082                	ret

000000000001041c <atexit>:
   1041c:	85aa                	mv	a1,a0
   1041e:	4681                	li	a3,0
   10420:	4601                	li	a2,0
   10422:	4501                	li	a0,0
   10424:	a009                	j	10426 <__register_exitproc>

0000000000010426 <__register_exitproc>:
   10426:	f481b703          	ld	a4,-184(gp) # 11c28 <_global_impure_ptr>
   1042a:	1f873783          	ld	a5,504(a4)
   1042e:	c3b1                	beqz	a5,10472 <__register_exitproc+0x4c>
   10430:	4798                	lw	a4,8(a5)
   10432:	487d                	li	a6,31
   10434:	06e84263          	blt	a6,a4,10498 <__register_exitproc+0x72>
   10438:	c505                	beqz	a0,10460 <__register_exitproc+0x3a>
   1043a:	00371813          	slli	a6,a4,0x3
   1043e:	983e                	add	a6,a6,a5
   10440:	10c83823          	sd	a2,272(a6)
   10444:	3107a883          	lw	a7,784(a5)
   10448:	4605                	li	a2,1
   1044a:	00e6163b          	sllw	a2,a2,a4
   1044e:	00c8e8b3          	or	a7,a7,a2
   10452:	3117a823          	sw	a7,784(a5)
   10456:	20d83823          	sd	a3,528(a6)
   1045a:	4689                	li	a3,2
   1045c:	02d50063          	beq	a0,a3,1047c <__register_exitproc+0x56>
   10460:	00270693          	addi	a3,a4,2
   10464:	068e                	slli	a3,a3,0x3
   10466:	2705                	addiw	a4,a4,1
   10468:	c798                	sw	a4,8(a5)
   1046a:	97b6                	add	a5,a5,a3
   1046c:	e38c                	sd	a1,0(a5)
   1046e:	4501                	li	a0,0
   10470:	8082                	ret
   10472:	20070793          	addi	a5,a4,512
   10476:	1ef73c23          	sd	a5,504(a4)
   1047a:	bf5d                	j	10430 <__register_exitproc+0xa>
   1047c:	3147a683          	lw	a3,788(a5)
   10480:	4501                	li	a0,0
   10482:	8ed1                	or	a3,a3,a2
   10484:	30d7aa23          	sw	a3,788(a5)
   10488:	00270693          	addi	a3,a4,2
   1048c:	068e                	slli	a3,a3,0x3
   1048e:	2705                	addiw	a4,a4,1
   10490:	c798                	sw	a4,8(a5)
   10492:	97b6                	add	a5,a5,a3
   10494:	e38c                	sd	a1,0(a5)
   10496:	8082                	ret
   10498:	557d                	li	a0,-1
   1049a:	8082                	ret

000000000001049c <_exit>:
   1049c:	05d00893          	li	a7,93
   104a0:	00000073          	ecall
   104a4:	00054363          	bltz	a0,104aa <_exit+0xe>
   104a8:	a001                	j	104a8 <_exit+0xc>
   104aa:	1141                	addi	sp,sp,-16
   104ac:	e022                	sd	s0,0(sp)
   104ae:	842a                	mv	s0,a0
   104b0:	e406                	sd	ra,8(sp)
   104b2:	4080043b          	negw	s0,s0
   104b6:	008000ef          	jal	ra,104be <__errno>
   104ba:	c100                	sw	s0,0(a0)
   104bc:	a001                	j	104bc <_exit+0x20>

00000000000104be <__errno>:
   104be:	f581b503          	ld	a0,-168(gp) # 11c38 <_impure_ptr>
   104c2:	8082                	ret

Disassembly of section .eh_frame:

00000000000114c4 <__FRAME_END__>:
   114c4:	0000                	unimp
	...

Disassembly of section .init_array:

00000000000114c8 <__init_array_start>:
   114c8:	0106                	slli	sp,sp,0x1
   114ca:	0001                	nop
   114cc:	0000                	unimp
	...

00000000000114d0 <__frame_dummy_init_array_entry>:
   114d0:	0182                	c.slli64	gp
   114d2:	0001                	nop
   114d4:	0000                	unimp
	...

Disassembly of section .fini_array:

00000000000114d8 <__do_global_dtors_aux_fini_array_entry>:
   114d8:	0154                	addi	a3,sp,132
   114da:	0001                	nop
   114dc:	0000                	unimp
	...

Disassembly of section .data:

00000000000114e0 <impure_data>:
	...
   114e8:	1a18                	addi	a4,sp,304
   114ea:	0001                	nop
   114ec:	0000                	unimp
   114ee:	0000                	unimp
   114f0:	1ac8                	addi	a0,sp,372
   114f2:	0001                	nop
   114f4:	0000                	unimp
   114f6:	0000                	unimp
   114f8:	1b78                	addi	a4,sp,444
   114fa:	0001                	nop
	...
   115c8:	0001                	nop
   115ca:	0000                	unimp
   115cc:	0000                	unimp
   115ce:	0000                	unimp
   115d0:	330e                	fld	ft6,224(sp)
   115d2:	abcd                	j	11bc4 <impure_data+0x6e4>
   115d4:	1234                	addi	a3,sp,296
   115d6:	e66d                	bnez	a2,116c0 <impure_data+0x1e0>
   115d8:	deec                	sw	a1,124(a3)
   115da:	0005                	c.nop	1
   115dc:	0000000b          	.4byte	0xb
	...

Disassembly of section .sdata:

0000000000011c28 <_global_impure_ptr>:
   11c28:	14e0                	addi	s0,sp,620
   11c2a:	0001                	nop
   11c2c:	0000                	unimp
	...

0000000000011c30 <__dso_handle>:
	...

0000000000011c38 <_impure_ptr>:
   11c38:	14e0                	addi	s0,sp,620
   11c3a:	0001                	nop
   11c3c:	0000                	unimp
	...

Disassembly of section .bss:

0000000000011c40 <completed.1>:
	...

0000000000011c48 <object.0>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	31202967          	.4byte	0x31202967
   a:	2e31                	addiw	t3,t3,12
   c:	2e31                	addiw	t3,t3,12
   e:	0030                	addi	a2,sp,8
  10:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
  14:	2820                	fld	fs0,80(s0)
  16:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
  1a:	3120                	fld	fs0,96(a0)
  1c:	2e31                	addiw	t3,t3,12
  1e:	2e31                	addiw	t3,t3,12
  20:	0030                	addi	a2,sp,8

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	3441                	addiw	s0,s0,-16
   2:	0000                	unimp
   4:	7200                	ld	s0,32(a2)
   6:	7369                	lui	t1,0xffffa
   8:	01007663          	bgeu	zero,a6,14 <exit-0x100d4>
   c:	002a                	c.slli	zero,0xa
   e:	0000                	unimp
  10:	1004                	addi	s1,sp,32
  12:	7205                	lui	tp,0xfffe1
  14:	3676                	fld	fa2,376(sp)
  16:	6934                	ld	a3,80(a0)
  18:	7032                	.2byte	0x7032
  1a:	5f30                	lw	a2,120(a4)
  1c:	326d                	addiw	tp,tp,-5 # fffffffffffe0ffb <__global_pointer$+0xfffffffffffcf31b>
  1e:	3070                	fld	fa2,224(s0)
  20:	615f 7032 5f30      	.byte	0x5f, 0x61, 0x32, 0x70, 0x30, 0x5f
  26:	3266                	fld	ft4,120(sp)
  28:	3070                	fld	fa2,224(s0)
  2a:	645f 7032 5f30      	.byte	0x5f, 0x64, 0x32, 0x70, 0x30, 0x5f
  30:	30703263          	.4byte	0x30703263
	...
