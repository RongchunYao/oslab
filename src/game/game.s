
game:     file format elf32-i386


Disassembly of section .text:

08048094 <draw_mark>:
 8048094:	55                   	push   %ebp
 8048095:	89 e5                	mov    %esp,%ebp
 8048097:	83 ec 08             	sub    $0x8,%esp
 804809a:	a1 ec d6 05 08       	mov    0x805d6ec,%eax
 804809f:	83 e8 01             	sub    $0x1,%eax
 80480a2:	83 ec 08             	sub    $0x8,%esp
 80480a5:	68 d0 a7 05 08       	push   $0x805a7d0
 80480aa:	50                   	push   %eax
 80480ab:	e8 86 0b 00 00       	call   8048c36 <change>
 80480b0:	83 c4 10             	add    $0x10,%esp
 80480b3:	a1 ec d6 05 08       	mov    0x805d6ec,%eax
 80480b8:	83 f8 0a             	cmp    $0xa,%eax
 80480bb:	7f 18                	jg     80480d5 <draw_mark+0x41>
 80480bd:	6a 2f                	push   $0x2f
 80480bf:	68 38 01 00 00       	push   $0x138
 80480c4:	6a 00                	push   $0x0
 80480c6:	68 d0 a7 05 08       	push   $0x805a7d0
 80480cb:	e8 c3 08 00 00       	call   8048993 <draw_string>
 80480d0:	83 c4 10             	add    $0x10,%esp
 80480d3:	eb 38                	jmp    804810d <draw_mark+0x79>
 80480d5:	a1 ec d6 05 08       	mov    0x805d6ec,%eax
 80480da:	83 f8 64             	cmp    $0x64,%eax
 80480dd:	7f 18                	jg     80480f7 <draw_mark+0x63>
 80480df:	6a 2f                	push   $0x2f
 80480e1:	68 30 01 00 00       	push   $0x130
 80480e6:	6a 00                	push   $0x0
 80480e8:	68 d0 a7 05 08       	push   $0x805a7d0
 80480ed:	e8 a1 08 00 00       	call   8048993 <draw_string>
 80480f2:	83 c4 10             	add    $0x10,%esp
 80480f5:	eb 16                	jmp    804810d <draw_mark+0x79>
 80480f7:	6a 2f                	push   $0x2f
 80480f9:	68 28 01 00 00       	push   $0x128
 80480fe:	6a 00                	push   $0x0
 8048100:	68 d0 a7 05 08       	push   $0x805a7d0
 8048105:	e8 89 08 00 00       	call   8048993 <draw_string>
 804810a:	83 c4 10             	add    $0x10,%esp
 804810d:	c9                   	leave  
 804810e:	c3                   	ret    

0804810f <draw_whole_snake>:
 804810f:	55                   	push   %ebp
 8048110:	89 e5                	mov    %esp,%ebp
 8048112:	53                   	push   %ebx
 8048113:	83 ec 14             	sub    $0x14,%esp
 8048116:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 804811d:	eb 4d                	jmp    804816c <draw_whole_snake+0x5d>
 804811f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048122:	89 d0                	mov    %edx,%eax
 8048124:	01 c0                	add    %eax,%eax
 8048126:	01 d0                	add    %edx,%eax
 8048128:	c1 e0 02             	shl    $0x2,%eax
 804812b:	05 00 a8 05 08       	add    $0x805a800,%eax
 8048130:	8b 18                	mov    (%eax),%ebx
 8048132:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048135:	89 d0                	mov    %edx,%eax
 8048137:	01 c0                	add    %eax,%eax
 8048139:	01 d0                	add    %edx,%eax
 804813b:	c1 e0 02             	shl    $0x2,%eax
 804813e:	05 00 a8 05 08       	add    $0x805a800,%eax
 8048143:	8b 48 08             	mov    0x8(%eax),%ecx
 8048146:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048149:	89 d0                	mov    %edx,%eax
 804814b:	01 c0                	add    %eax,%eax
 804814d:	01 d0                	add    %edx,%eax
 804814f:	c1 e0 02             	shl    $0x2,%eax
 8048152:	05 00 a8 05 08       	add    $0x805a800,%eax
 8048157:	8b 40 04             	mov    0x4(%eax),%eax
 804815a:	83 ec 04             	sub    $0x4,%esp
 804815d:	53                   	push   %ebx
 804815e:	51                   	push   %ecx
 804815f:	50                   	push   %eax
 8048160:	e8 19 09 00 00       	call   8048a7e <draw_snake>
 8048165:	83 c4 10             	add    $0x10,%esp
 8048168:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804816c:	a1 c0 a7 05 08       	mov    0x805a7c0,%eax
 8048171:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 8048174:	7e a9                	jle    804811f <draw_whole_snake+0x10>
 8048176:	8b 0d 8c a9 04 08    	mov    0x804a98c,%ecx
 804817c:	8b 15 88 a9 04 08    	mov    0x804a988,%edx
 8048182:	a1 84 a9 04 08       	mov    0x804a984,%eax
 8048187:	83 ec 04             	sub    $0x4,%esp
 804818a:	51                   	push   %ecx
 804818b:	52                   	push   %edx
 804818c:	50                   	push   %eax
 804818d:	e8 a1 08 00 00       	call   8048a33 <draw_food>
 8048192:	83 c4 10             	add    $0x10,%esp
 8048195:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048198:	c9                   	leave  
 8048199:	c3                   	ret    

0804819a <make_food>:
 804819a:	55                   	push   %ebp
 804819b:	89 e5                	mov    %esp,%ebp
 804819d:	c7 05 84 a9 04 08 60 	movl   $0x60,0x804a984
 80481a4:	00 00 00 
 80481a7:	c7 05 88 a9 04 08 58 	movl   $0x58,0x804a988
 80481ae:	00 00 00 
 80481b1:	c7 05 8c a9 04 08 04 	movl   $0x4,0x804a98c
 80481b8:	00 00 00 
 80481bb:	5d                   	pop    %ebp
 80481bc:	c3                   	ret    

080481bd <do_move>:
 80481bd:	55                   	push   %ebp
 80481be:	89 e5                	mov    %esp,%ebp
 80481c0:	83 ec 18             	sub    $0x18,%esp
 80481c3:	a1 10 a8 05 08       	mov    0x805a810,%eax
 80481c8:	a3 04 a8 05 08       	mov    %eax,0x805a804
 80481cd:	a1 14 a8 05 08       	mov    0x805a814,%eax
 80481d2:	a3 08 a8 05 08       	mov    %eax,0x805a808
 80481d7:	a1 0c a8 05 08       	mov    0x805a80c,%eax
 80481dc:	a3 00 a8 05 08       	mov    %eax,0x805a800
 80481e1:	8b 15 c0 a7 05 08    	mov    0x805a7c0,%edx
 80481e7:	89 d0                	mov    %edx,%eax
 80481e9:	01 c0                	add    %eax,%eax
 80481eb:	01 d0                	add    %edx,%eax
 80481ed:	c1 e0 02             	shl    $0x2,%eax
 80481f0:	05 00 a8 05 08       	add    $0x805a800,%eax
 80481f5:	8b 40 04             	mov    0x4(%eax),%eax
 80481f8:	a3 c8 a7 05 08       	mov    %eax,0x805a7c8
 80481fd:	8b 15 c0 a7 05 08    	mov    0x805a7c0,%edx
 8048203:	89 d0                	mov    %edx,%eax
 8048205:	01 c0                	add    %eax,%eax
 8048207:	01 d0                	add    %edx,%eax
 8048209:	c1 e0 02             	shl    $0x2,%eax
 804820c:	05 00 a8 05 08       	add    $0x805a800,%eax
 8048211:	8b 40 08             	mov    0x8(%eax),%eax
 8048214:	a3 cc a7 05 08       	mov    %eax,0x805a7cc
 8048219:	a1 80 a9 04 08       	mov    0x804a980,%eax
 804821e:	85 c0                	test   %eax,%eax
 8048220:	75 24                	jne    8048246 <do_move+0x89>
 8048222:	a1 14 a8 05 08       	mov    0x805a814,%eax
 8048227:	83 e8 08             	sub    $0x8,%eax
 804822a:	a3 14 a8 05 08       	mov    %eax,0x805a814
 804822f:	a1 14 a8 05 08       	mov    0x805a814,%eax
 8048234:	85 c0                	test   %eax,%eax
 8048236:	0f 89 84 00 00 00    	jns    80482c0 <do_move+0x103>
 804823c:	b8 00 00 00 00       	mov    $0x0,%eax
 8048241:	e9 9f 03 00 00       	jmp    80485e5 <do_move+0x428>
 8048246:	a1 80 a9 04 08       	mov    0x804a980,%eax
 804824b:	83 f8 12             	cmp    $0x12,%eax
 804824e:	75 23                	jne    8048273 <do_move+0xb6>
 8048250:	a1 10 a8 05 08       	mov    0x805a810,%eax
 8048255:	83 c0 08             	add    $0x8,%eax
 8048258:	a3 10 a8 05 08       	mov    %eax,0x805a810
 804825d:	a1 10 a8 05 08       	mov    0x805a810,%eax
 8048262:	3d c7 00 00 00       	cmp    $0xc7,%eax
 8048267:	7e 57                	jle    80482c0 <do_move+0x103>
 8048269:	b8 00 00 00 00       	mov    $0x0,%eax
 804826e:	e9 72 03 00 00       	jmp    80485e5 <do_move+0x428>
 8048273:	a1 80 a9 04 08       	mov    0x804a980,%eax
 8048278:	83 f8 03             	cmp    $0x3,%eax
 804827b:	75 23                	jne    80482a0 <do_move+0xe3>
 804827d:	a1 14 a8 05 08       	mov    0x805a814,%eax
 8048282:	83 c0 08             	add    $0x8,%eax
 8048285:	a3 14 a8 05 08       	mov    %eax,0x805a814
 804828a:	a1 14 a8 05 08       	mov    0x805a814,%eax
 804828f:	3d 3f 01 00 00       	cmp    $0x13f,%eax
 8048294:	7e 2a                	jle    80482c0 <do_move+0x103>
 8048296:	b8 00 00 00 00       	mov    $0x0,%eax
 804829b:	e9 45 03 00 00       	jmp    80485e5 <do_move+0x428>
 80482a0:	a1 10 a8 05 08       	mov    0x805a810,%eax
 80482a5:	83 e8 08             	sub    $0x8,%eax
 80482a8:	a3 10 a8 05 08       	mov    %eax,0x805a810
 80482ad:	a1 10 a8 05 08       	mov    0x805a810,%eax
 80482b2:	85 c0                	test   %eax,%eax
 80482b4:	79 0a                	jns    80482c0 <do_move+0x103>
 80482b6:	b8 00 00 00 00       	mov    $0x0,%eax
 80482bb:	e9 25 03 00 00       	jmp    80485e5 <do_move+0x428>
 80482c0:	a1 c0 a7 05 08       	mov    0x805a7c0,%eax
 80482c5:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80482c8:	e9 96 00 00 00       	jmp    8048363 <do_move+0x1a6>
 80482cd:	83 7d f4 02          	cmpl   $0x2,-0xc(%ebp)
 80482d1:	75 36                	jne    8048309 <do_move+0x14c>
 80482d3:	8b 0d 04 a8 05 08    	mov    0x805a804,%ecx
 80482d9:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80482dc:	89 d0                	mov    %edx,%eax
 80482de:	01 c0                	add    %eax,%eax
 80482e0:	01 d0                	add    %edx,%eax
 80482e2:	c1 e0 02             	shl    $0x2,%eax
 80482e5:	05 00 a8 05 08       	add    $0x805a800,%eax
 80482ea:	89 48 04             	mov    %ecx,0x4(%eax)
 80482ed:	8b 0d 08 a8 05 08    	mov    0x805a808,%ecx
 80482f3:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80482f6:	89 d0                	mov    %edx,%eax
 80482f8:	01 c0                	add    %eax,%eax
 80482fa:	01 d0                	add    %edx,%eax
 80482fc:	c1 e0 02             	shl    $0x2,%eax
 80482ff:	05 00 a8 05 08       	add    $0x805a800,%eax
 8048304:	89 48 08             	mov    %ecx,0x8(%eax)
 8048307:	eb 56                	jmp    804835f <do_move+0x1a2>
 8048309:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804830c:	8d 50 ff             	lea    -0x1(%eax),%edx
 804830f:	89 d0                	mov    %edx,%eax
 8048311:	01 c0                	add    %eax,%eax
 8048313:	01 d0                	add    %edx,%eax
 8048315:	c1 e0 02             	shl    $0x2,%eax
 8048318:	05 00 a8 05 08       	add    $0x805a800,%eax
 804831d:	8b 48 04             	mov    0x4(%eax),%ecx
 8048320:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048323:	89 d0                	mov    %edx,%eax
 8048325:	01 c0                	add    %eax,%eax
 8048327:	01 d0                	add    %edx,%eax
 8048329:	c1 e0 02             	shl    $0x2,%eax
 804832c:	05 00 a8 05 08       	add    $0x805a800,%eax
 8048331:	89 48 04             	mov    %ecx,0x4(%eax)
 8048334:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048337:	8d 50 ff             	lea    -0x1(%eax),%edx
 804833a:	89 d0                	mov    %edx,%eax
 804833c:	01 c0                	add    %eax,%eax
 804833e:	01 d0                	add    %edx,%eax
 8048340:	c1 e0 02             	shl    $0x2,%eax
 8048343:	05 00 a8 05 08       	add    $0x805a800,%eax
 8048348:	8b 48 08             	mov    0x8(%eax),%ecx
 804834b:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804834e:	89 d0                	mov    %edx,%eax
 8048350:	01 c0                	add    %eax,%eax
 8048352:	01 d0                	add    %edx,%eax
 8048354:	c1 e0 02             	shl    $0x2,%eax
 8048357:	05 00 a8 05 08       	add    $0x805a800,%eax
 804835c:	89 48 08             	mov    %ecx,0x8(%eax)
 804835f:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
 8048363:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
 8048367:	0f 8f 60 ff ff ff    	jg     80482cd <do_move+0x110>
 804836d:	8b 15 10 a8 05 08    	mov    0x805a810,%edx
 8048373:	a1 84 a9 04 08       	mov    0x804a984,%eax
 8048378:	39 c2                	cmp    %eax,%edx
 804837a:	0f 85 f5 01 00 00    	jne    8048575 <do_move+0x3b8>
 8048380:	8b 15 14 a8 05 08    	mov    0x805a814,%edx
 8048386:	a1 88 a9 04 08       	mov    0x804a988,%eax
 804838b:	39 c2                	cmp    %eax,%edx
 804838d:	0f 85 e2 01 00 00    	jne    8048575 <do_move+0x3b8>
 8048393:	a1 ec d6 05 08       	mov    0x805d6ec,%eax
 8048398:	83 c0 01             	add    $0x1,%eax
 804839b:	a3 ec d6 05 08       	mov    %eax,0x805d6ec
 80483a0:	a1 c0 a7 05 08       	mov    0x805a7c0,%eax
 80483a5:	83 c0 01             	add    $0x1,%eax
 80483a8:	a3 c0 a7 05 08       	mov    %eax,0x805a7c0
 80483ad:	8b 15 c0 a7 05 08    	mov    0x805a7c0,%edx
 80483b3:	8b 0d c8 a7 05 08    	mov    0x805a7c8,%ecx
 80483b9:	89 d0                	mov    %edx,%eax
 80483bb:	01 c0                	add    %eax,%eax
 80483bd:	01 d0                	add    %edx,%eax
 80483bf:	c1 e0 02             	shl    $0x2,%eax
 80483c2:	05 00 a8 05 08       	add    $0x805a800,%eax
 80483c7:	89 48 04             	mov    %ecx,0x4(%eax)
 80483ca:	8b 15 c0 a7 05 08    	mov    0x805a7c0,%edx
 80483d0:	8b 0d cc a7 05 08    	mov    0x805a7cc,%ecx
 80483d6:	89 d0                	mov    %edx,%eax
 80483d8:	01 c0                	add    %eax,%eax
 80483da:	01 d0                	add    %edx,%eax
 80483dc:	c1 e0 02             	shl    $0x2,%eax
 80483df:	05 00 a8 05 08       	add    $0x805a800,%eax
 80483e4:	89 48 08             	mov    %ecx,0x8(%eax)
 80483e7:	a1 c0 a7 05 08       	mov    0x805a7c0,%eax
 80483ec:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80483ef:	eb 2d                	jmp    804841e <do_move+0x261>
 80483f1:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80483f4:	8d 50 ff             	lea    -0x1(%eax),%edx
 80483f7:	89 d0                	mov    %edx,%eax
 80483f9:	01 c0                	add    %eax,%eax
 80483fb:	01 d0                	add    %edx,%eax
 80483fd:	c1 e0 02             	shl    $0x2,%eax
 8048400:	05 00 a8 05 08       	add    $0x805a800,%eax
 8048405:	8b 08                	mov    (%eax),%ecx
 8048407:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804840a:	89 d0                	mov    %edx,%eax
 804840c:	01 c0                	add    %eax,%eax
 804840e:	01 d0                	add    %edx,%eax
 8048410:	c1 e0 02             	shl    $0x2,%eax
 8048413:	05 00 a8 05 08       	add    $0x805a800,%eax
 8048418:	89 08                	mov    %ecx,(%eax)
 804841a:	83 6d ec 01          	subl   $0x1,-0x14(%ebp)
 804841e:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
 8048422:	7f cd                	jg     80483f1 <do_move+0x234>
 8048424:	a1 8c a9 04 08       	mov    0x804a98c,%eax
 8048429:	a3 0c a8 05 08       	mov    %eax,0x805a80c
 804842e:	e8 eb 0b 00 00       	call   804901e <rand>
 8048433:	89 c1                	mov    %eax,%ecx
 8048435:	ba 83 20 08 82       	mov    $0x82082083,%edx
 804843a:	89 c8                	mov    %ecx,%eax
 804843c:	f7 ea                	imul   %edx
 804843e:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
 8048441:	c1 f8 05             	sar    $0x5,%eax
 8048444:	89 c2                	mov    %eax,%edx
 8048446:	89 c8                	mov    %ecx,%eax
 8048448:	c1 f8 1f             	sar    $0x1f,%eax
 804844b:	29 c2                	sub    %eax,%edx
 804844d:	89 d0                	mov    %edx,%eax
 804844f:	89 c2                	mov    %eax,%edx
 8048451:	c1 e2 06             	shl    $0x6,%edx
 8048454:	29 c2                	sub    %eax,%edx
 8048456:	89 c8                	mov    %ecx,%eax
 8048458:	29 d0                	sub    %edx,%eax
 804845a:	83 c0 20             	add    $0x20,%eax
 804845d:	a3 8c a9 04 08       	mov    %eax,0x804a98c
 8048462:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8048469:	e8 b0 0b 00 00       	call   804901e <rand>
 804846e:	89 c1                	mov    %eax,%ecx
 8048470:	ba ab aa aa 2a       	mov    $0x2aaaaaab,%edx
 8048475:	89 c8                	mov    %ecx,%eax
 8048477:	f7 ea                	imul   %edx
 8048479:	c1 fa 05             	sar    $0x5,%edx
 804847c:	89 c8                	mov    %ecx,%eax
 804847e:	c1 f8 1f             	sar    $0x1f,%eax
 8048481:	29 c2                	sub    %eax,%edx
 8048483:	89 d0                	mov    %edx,%eax
 8048485:	01 c0                	add    %eax,%eax
 8048487:	01 d0                	add    %edx,%eax
 8048489:	c1 e0 06             	shl    $0x6,%eax
 804848c:	29 c1                	sub    %eax,%ecx
 804848e:	89 ca                	mov    %ecx,%edx
 8048490:	89 15 84 a9 04 08    	mov    %edx,0x804a984
 8048496:	8b 0d 84 a9 04 08    	mov    0x804a984,%ecx
 804849c:	a1 84 a9 04 08       	mov    0x804a984,%eax
 80484a1:	99                   	cltd   
 80484a2:	c1 ea 1d             	shr    $0x1d,%edx
 80484a5:	01 d0                	add    %edx,%eax
 80484a7:	83 e0 07             	and    $0x7,%eax
 80484aa:	29 d0                	sub    %edx,%eax
 80484ac:	29 c1                	sub    %eax,%ecx
 80484ae:	89 c8                	mov    %ecx,%eax
 80484b0:	a3 84 a9 04 08       	mov    %eax,0x804a984
 80484b5:	e8 64 0b 00 00       	call   804901e <rand>
 80484ba:	89 c1                	mov    %eax,%ecx
 80484bc:	ba d3 20 0d d2       	mov    $0xd20d20d3,%edx
 80484c1:	89 c8                	mov    %ecx,%eax
 80484c3:	f7 ea                	imul   %edx
 80484c5:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
 80484c8:	c1 f8 08             	sar    $0x8,%eax
 80484cb:	89 c2                	mov    %eax,%edx
 80484cd:	89 c8                	mov    %ecx,%eax
 80484cf:	c1 f8 1f             	sar    $0x1f,%eax
 80484d2:	29 c2                	sub    %eax,%edx
 80484d4:	89 d0                	mov    %edx,%eax
 80484d6:	69 c0 38 01 00 00    	imul   $0x138,%eax,%eax
 80484dc:	29 c1                	sub    %eax,%ecx
 80484de:	89 c8                	mov    %ecx,%eax
 80484e0:	a3 88 a9 04 08       	mov    %eax,0x804a988
 80484e5:	8b 0d 88 a9 04 08    	mov    0x804a988,%ecx
 80484eb:	a1 88 a9 04 08       	mov    0x804a988,%eax
 80484f0:	99                   	cltd   
 80484f1:	c1 ea 1d             	shr    $0x1d,%edx
 80484f4:	01 d0                	add    %edx,%eax
 80484f6:	83 e0 07             	and    $0x7,%eax
 80484f9:	29 d0                	sub    %edx,%eax
 80484fb:	29 c1                	sub    %eax,%ecx
 80484fd:	89 c8                	mov    %ecx,%eax
 80484ff:	a3 88 a9 04 08       	mov    %eax,0x804a988
 8048504:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 804850b:	eb 46                	jmp    8048553 <do_move+0x396>
 804850d:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048510:	89 d0                	mov    %edx,%eax
 8048512:	01 c0                	add    %eax,%eax
 8048514:	01 d0                	add    %edx,%eax
 8048516:	c1 e0 02             	shl    $0x2,%eax
 8048519:	05 00 a8 05 08       	add    $0x805a800,%eax
 804851e:	8b 50 04             	mov    0x4(%eax),%edx
 8048521:	a1 84 a9 04 08       	mov    0x804a984,%eax
 8048526:	39 c2                	cmp    %eax,%edx
 8048528:	75 25                	jne    804854f <do_move+0x392>
 804852a:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804852d:	89 d0                	mov    %edx,%eax
 804852f:	01 c0                	add    %eax,%eax
 8048531:	01 d0                	add    %edx,%eax
 8048533:	c1 e0 02             	shl    $0x2,%eax
 8048536:	05 00 a8 05 08       	add    $0x805a800,%eax
 804853b:	8b 50 08             	mov    0x8(%eax),%edx
 804853e:	a1 88 a9 04 08       	mov    0x804a988,%eax
 8048543:	39 c2                	cmp    %eax,%edx
 8048545:	75 08                	jne    804854f <do_move+0x392>
 8048547:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 804854e:	90                   	nop
 804854f:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8048553:	a1 c0 a7 05 08       	mov    0x805a7c0,%eax
 8048558:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 804855b:	7e b0                	jle    804850d <do_move+0x350>
 804855d:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8048561:	75 0d                	jne    8048570 <do_move+0x3b3>
 8048563:	90                   	nop
 8048564:	e8 a6 fb ff ff       	call   804810f <draw_whole_snake>
 8048569:	e8 5b 06 00 00       	call   8048bc9 <display_all>
 804856e:	eb 05                	jmp    8048575 <do_move+0x3b8>
 8048570:	e9 ed fe ff ff       	jmp    8048462 <do_move+0x2a5>
 8048575:	c7 45 f4 02 00 00 00 	movl   $0x2,-0xc(%ebp)
 804857c:	eb 47                	jmp    80485c5 <do_move+0x408>
 804857e:	8b 0d 10 a8 05 08    	mov    0x805a810,%ecx
 8048584:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048587:	89 d0                	mov    %edx,%eax
 8048589:	01 c0                	add    %eax,%eax
 804858b:	01 d0                	add    %edx,%eax
 804858d:	c1 e0 02             	shl    $0x2,%eax
 8048590:	05 00 a8 05 08       	add    $0x805a800,%eax
 8048595:	8b 40 04             	mov    0x4(%eax),%eax
 8048598:	39 c1                	cmp    %eax,%ecx
 804859a:	75 25                	jne    80485c1 <do_move+0x404>
 804859c:	8b 0d 14 a8 05 08    	mov    0x805a814,%ecx
 80485a2:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80485a5:	89 d0                	mov    %edx,%eax
 80485a7:	01 c0                	add    %eax,%eax
 80485a9:	01 d0                	add    %edx,%eax
 80485ab:	c1 e0 02             	shl    $0x2,%eax
 80485ae:	05 00 a8 05 08       	add    $0x805a800,%eax
 80485b3:	8b 40 08             	mov    0x8(%eax),%eax
 80485b6:	39 c1                	cmp    %eax,%ecx
 80485b8:	75 07                	jne    80485c1 <do_move+0x404>
 80485ba:	b8 00 00 00 00       	mov    $0x0,%eax
 80485bf:	eb 24                	jmp    80485e5 <do_move+0x428>
 80485c1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 80485c5:	a1 c0 a7 05 08       	mov    0x805a7c0,%eax
 80485ca:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 80485cd:	7e af                	jle    804857e <do_move+0x3c1>
 80485cf:	a1 c0 a7 05 08       	mov    0x805a7c0,%eax
 80485d4:	83 f8 32             	cmp    $0x32,%eax
 80485d7:	75 07                	jne    80485e0 <do_move+0x423>
 80485d9:	b8 02 00 00 00       	mov    $0x2,%eax
 80485de:	eb 05                	jmp    80485e5 <do_move+0x428>
 80485e0:	b8 01 00 00 00       	mov    $0x1,%eax
 80485e5:	c9                   	leave  
 80485e6:	c3                   	ret    

080485e7 <game_init>:
 80485e7:	55                   	push   %ebp
 80485e8:	89 e5                	mov    %esp,%ebp
 80485ea:	83 ec 08             	sub    $0x8,%esp
 80485ed:	c7 05 ec d6 05 08 00 	movl   $0x0,0x805d6ec
 80485f4:	00 00 00 
 80485f7:	e8 e0 05 00 00       	call   8048bdc <get_time>
 80485fc:	89 c1                	mov    %eax,%ecx
 80485fe:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
 8048603:	89 c8                	mov    %ecx,%eax
 8048605:	f7 ea                	imul   %edx
 8048607:	c1 fa 06             	sar    $0x6,%edx
 804860a:	89 c8                	mov    %ecx,%eax
 804860c:	c1 f8 1f             	sar    $0x1f,%eax
 804860f:	29 c2                	sub    %eax,%edx
 8048611:	89 d0                	mov    %edx,%eax
 8048613:	69 c0 e8 03 00 00    	imul   $0x3e8,%eax,%eax
 8048619:	29 c1                	sub    %eax,%ecx
 804861b:	89 c8                	mov    %ecx,%eax
 804861d:	83 ec 0c             	sub    $0xc,%esp
 8048620:	50                   	push   %eax
 8048621:	e8 eb 09 00 00       	call   8049011 <srand>
 8048626:	83 c4 10             	add    $0x10,%esp
 8048629:	c7 05 c0 a7 05 08 02 	movl   $0x2,0x805a7c0
 8048630:	00 00 00 
 8048633:	c7 05 f0 d6 05 08 01 	movl   $0x1,0x805d6f0
 804863a:	00 00 00 
 804863d:	c7 05 10 a8 05 08 60 	movl   $0x60,0x805a810
 8048644:	00 00 00 
 8048647:	c7 05 14 a8 05 08 60 	movl   $0x60,0x805a814
 804864e:	00 00 00 
 8048651:	c7 05 0c a8 05 08 01 	movl   $0x1,0x805a80c
 8048658:	00 00 00 
 804865b:	c7 05 1c a8 05 08 60 	movl   $0x60,0x805a81c
 8048662:	00 00 00 
 8048665:	c7 05 20 a8 05 08 68 	movl   $0x68,0x805a820
 804866c:	00 00 00 
 804866f:	c7 05 18 a8 05 08 06 	movl   $0x6,0x805a818
 8048676:	00 00 00 
 8048679:	e8 1c fb ff ff       	call   804819a <make_food>
 804867e:	e8 a2 05 00 00       	call   8048c25 <reset_last_key>
 8048683:	c9                   	leave  
 8048684:	c3                   	ret    

08048685 <main>:
 8048685:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048689:	83 e4 f0             	and    $0xfffffff0,%esp
 804868c:	ff 71 fc             	pushl  -0x4(%ecx)
 804868f:	55                   	push   %ebp
 8048690:	89 e5                	mov    %esp,%ebp
 8048692:	51                   	push   %ecx
 8048693:	83 ec 14             	sub    $0x14,%esp
 8048696:	83 ec 0c             	sub    $0xc,%esp
 8048699:	68 e8 03 00 00       	push   $0x3e8
 804869e:	e8 b7 09 00 00       	call   804905a <my_sleep>
 80486a3:	83 c4 10             	add    $0x10,%esp
 80486a6:	83 ec 04             	sub    $0x4,%esp
 80486a9:	68 40 e2 01 00       	push   $0x1e240
 80486ae:	68 40 e2 01 00       	push   $0x1e240
 80486b3:	68 90 90 04 08       	push   $0x8049090
 80486b8:	e8 c7 08 00 00       	call   8048f84 <print>
 80486bd:	83 c4 10             	add    $0x10,%esp
 80486c0:	e8 22 ff ff ff       	call   80485e7 <game_init>
 80486c5:	e8 3f 05 00 00       	call   8048c09 <last_key_code>
 80486ca:	a3 80 a9 04 08       	mov    %eax,0x804a980
 80486cf:	e8 08 05 00 00       	call   8048bdc <get_time>
 80486d4:	89 c1                	mov    %eax,%ecx
 80486d6:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
 80486db:	89 c8                	mov    %ecx,%eax
 80486dd:	f7 ea                	imul   %edx
 80486df:	c1 fa 06             	sar    $0x6,%edx
 80486e2:	89 c8                	mov    %ecx,%eax
 80486e4:	c1 f8 1f             	sar    $0x1f,%eax
 80486e7:	29 c2                	sub    %eax,%edx
 80486e9:	89 d0                	mov    %edx,%eax
 80486eb:	69 c0 c8 00 00 00    	imul   $0xc8,%eax,%eax
 80486f1:	29 c1                	sub    %eax,%ecx
 80486f3:	89 c8                	mov    %ecx,%eax
 80486f5:	85 c0                	test   %eax,%eax
 80486f7:	75 4c                	jne    8048745 <main+0xc0>
 80486f9:	e8 ed 00 00 00       	call   80487eb <init>
 80486fe:	e8 ba fa ff ff       	call   80481bd <do_move>
 8048703:	a3 f0 d6 05 08       	mov    %eax,0x805d6f0
 8048708:	a1 f0 d6 05 08       	mov    0x805d6f0,%eax
 804870d:	83 f8 01             	cmp    $0x1,%eax
 8048710:	74 0c                	je     804871e <main+0x99>
 8048712:	90                   	nop
 8048713:	a1 f0 d6 05 08       	mov    0x805d6f0,%eax
 8048718:	85 c0                	test   %eax,%eax
 804871a:	75 60                	jne    804877c <main+0xf7>
 804871c:	eb 2c                	jmp    804874a <main+0xc5>
 804871e:	6a 04                	push   $0x4
 8048720:	6a 00                	push   $0x0
 8048722:	6a 00                	push   $0x0
 8048724:	68 c4 90 04 08       	push   $0x80490c4
 8048729:	e8 65 02 00 00       	call   8048993 <draw_string>
 804872e:	83 c4 10             	add    $0x10,%esp
 8048731:	e8 5e f9 ff ff       	call   8048094 <draw_mark>
 8048736:	e8 d4 f9 ff ff       	call   804810f <draw_whole_snake>
 804873b:	e8 89 04 00 00       	call   8048bc9 <display_all>
 8048740:	e8 b3 04 00 00       	call   8048bf8 <time_pop>
 8048745:	e9 7b ff ff ff       	jmp    80486c5 <main+0x40>
 804874a:	e8 9c 00 00 00       	call   80487eb <init>
 804874f:	6a 05                	push   $0x5
 8048751:	6a 50                	push   $0x50
 8048753:	6a 64                	push   $0x64
 8048755:	68 d0 90 04 08       	push   $0x80490d0
 804875a:	e8 34 02 00 00       	call   8048993 <draw_string>
 804875f:	83 c4 10             	add    $0x10,%esp
 8048762:	6a 04                	push   $0x4
 8048764:	6a 64                	push   $0x64
 8048766:	6a 50                	push   $0x50
 8048768:	68 ea 90 04 08       	push   $0x80490ea
 804876d:	e8 71 02 00 00       	call   80489e3 <draw_big_string>
 8048772:	83 c4 10             	add    $0x10,%esp
 8048775:	e8 4f 04 00 00       	call   8048bc9 <display_all>
 804877a:	eb 30                	jmp    80487ac <main+0x127>
 804877c:	e8 6a 00 00 00       	call   80487eb <init>
 8048781:	6a 05                	push   $0x5
 8048783:	6a 50                	push   $0x50
 8048785:	6a 64                	push   $0x64
 8048787:	68 d0 90 04 08       	push   $0x80490d0
 804878c:	e8 02 02 00 00       	call   8048993 <draw_string>
 8048791:	83 c4 10             	add    $0x10,%esp
 8048794:	6a 04                	push   $0x4
 8048796:	6a 78                	push   $0x78
 8048798:	6a 50                	push   $0x50
 804879a:	68 f4 90 04 08       	push   $0x80490f4
 804879f:	e8 3f 02 00 00       	call   80489e3 <draw_big_string>
 80487a4:	83 c4 10             	add    $0x10,%esp
 80487a7:	e8 1d 04 00 00       	call   8048bc9 <display_all>
 80487ac:	e8 74 04 00 00       	call   8048c25 <reset_last_key>
 80487b1:	e8 53 04 00 00       	call   8048c09 <last_key_code>
 80487b6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80487b9:	83 7d f4 11          	cmpl   $0x11,-0xc(%ebp)
 80487bd:	75 02                	jne    80487c1 <main+0x13c>
 80487bf:	eb 02                	jmp    80487c3 <main+0x13e>
 80487c1:	eb ee                	jmp    80487b1 <main+0x12c>
 80487c3:	e9 ce fe ff ff       	jmp    8048696 <main+0x11>

080487c8 <draw_pixel>:
 80487c8:	55                   	push   %ebp
 80487c9:	89 e5                	mov    %esp,%ebp
 80487cb:	8b 45 08             	mov    0x8(%ebp),%eax
 80487ce:	c1 e0 08             	shl    $0x8,%eax
 80487d1:	89 c2                	mov    %eax,%edx
 80487d3:	8b 45 08             	mov    0x8(%ebp),%eax
 80487d6:	c1 e0 06             	shl    $0x6,%eax
 80487d9:	01 c2                	add    %eax,%edx
 80487db:	8b 45 0c             	mov    0xc(%ebp),%eax
 80487de:	01 d0                	add    %edx,%eax
 80487e0:	8b 55 10             	mov    0x10(%ebp),%edx
 80487e3:	88 90 c0 a9 04 08    	mov    %dl,0x804a9c0(%eax)
 80487e9:	5d                   	pop    %ebp
 80487ea:	c3                   	ret    

080487eb <init>:
 80487eb:	55                   	push   %ebp
 80487ec:	89 e5                	mov    %esp,%ebp
 80487ee:	83 ec 08             	sub    $0x8,%esp
 80487f1:	83 ec 04             	sub    $0x4,%esp
 80487f4:	68 00 fa 00 00       	push   $0xfa00
 80487f9:	6a 00                	push   $0x0
 80487fb:	68 c0 a9 04 08       	push   $0x804a9c0
 8048800:	e8 f3 07 00 00       	call   8048ff8 <my_memset>
 8048805:	83 c4 10             	add    $0x10,%esp
 8048808:	c9                   	leave  
 8048809:	c3                   	ret    

0804880a <draw_character>:
 804880a:	55                   	push   %ebp
 804880b:	89 e5                	mov    %esp,%ebp
 804880d:	83 ec 14             	sub    $0x14,%esp
 8048810:	8b 45 08             	mov    0x8(%ebp),%eax
 8048813:	88 45 ec             	mov    %al,-0x14(%ebp)
 8048816:	0f be 45 ec          	movsbl -0x14(%ebp),%eax
 804881a:	c1 e0 03             	shl    $0x3,%eax
 804881d:	05 80 a5 04 08       	add    $0x804a580,%eax
 8048822:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048825:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804882c:	eb 52                	jmp    8048880 <draw_character+0x76>
 804882e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048835:	eb 3f                	jmp    8048876 <draw_character+0x6c>
 8048837:	8b 55 fc             	mov    -0x4(%ebp),%edx
 804883a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804883d:	01 d0                	add    %edx,%eax
 804883f:	0f b6 00             	movzbl (%eax),%eax
 8048842:	0f be d0             	movsbl %al,%edx
 8048845:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048848:	89 c1                	mov    %eax,%ecx
 804884a:	d3 fa                	sar    %cl,%edx
 804884c:	89 d0                	mov    %edx,%eax
 804884e:	83 e0 01             	and    $0x1,%eax
 8048851:	85 c0                	test   %eax,%eax
 8048853:	74 1d                	je     8048872 <draw_character+0x68>
 8048855:	8b 55 10             	mov    0x10(%ebp),%edx
 8048858:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804885b:	01 c2                	add    %eax,%edx
 804885d:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 8048860:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048863:	01 c8                	add    %ecx,%eax
 8048865:	ff 75 14             	pushl  0x14(%ebp)
 8048868:	52                   	push   %edx
 8048869:	50                   	push   %eax
 804886a:	e8 59 ff ff ff       	call   80487c8 <draw_pixel>
 804886f:	83 c4 0c             	add    $0xc,%esp
 8048872:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 8048876:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
 804887a:	7e bb                	jle    8048837 <draw_character+0x2d>
 804887c:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 8048880:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
 8048884:	7e a8                	jle    804882e <draw_character+0x24>
 8048886:	c9                   	leave  
 8048887:	c3                   	ret    

08048888 <draw_character_2>:
 8048888:	55                   	push   %ebp
 8048889:	89 e5                	mov    %esp,%ebp
 804888b:	83 ec 14             	sub    $0x14,%esp
 804888e:	8b 45 08             	mov    0x8(%ebp),%eax
 8048891:	88 45 ec             	mov    %al,-0x14(%ebp)
 8048894:	0f be 45 ec          	movsbl -0x14(%ebp),%eax
 8048898:	c1 e0 03             	shl    $0x3,%eax
 804889b:	05 80 a5 04 08       	add    $0x804a580,%eax
 80488a0:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80488a3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 80488aa:	e9 d8 00 00 00       	jmp    8048987 <draw_character_2+0xff>
 80488af:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 80488b6:	e9 be 00 00 00       	jmp    8048979 <draw_character_2+0xf1>
 80488bb:	8b 55 fc             	mov    -0x4(%ebp),%edx
 80488be:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80488c1:	01 d0                	add    %edx,%eax
 80488c3:	0f b6 00             	movzbl (%eax),%eax
 80488c6:	0f be d0             	movsbl %al,%edx
 80488c9:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80488cc:	89 c1                	mov    %eax,%ecx
 80488ce:	d3 fa                	sar    %cl,%edx
 80488d0:	89 d0                	mov    %edx,%eax
 80488d2:	83 e0 01             	and    $0x1,%eax
 80488d5:	85 c0                	test   %eax,%eax
 80488d7:	0f 84 98 00 00 00    	je     8048975 <draw_character_2+0xed>
 80488dd:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80488e0:	8d 14 00             	lea    (%eax,%eax,1),%edx
 80488e3:	8b 45 10             	mov    0x10(%ebp),%eax
 80488e6:	01 c2                	add    %eax,%edx
 80488e8:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80488eb:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
 80488ee:	8b 45 0c             	mov    0xc(%ebp),%eax
 80488f1:	01 c8                	add    %ecx,%eax
 80488f3:	ff 75 14             	pushl  0x14(%ebp)
 80488f6:	52                   	push   %edx
 80488f7:	50                   	push   %eax
 80488f8:	e8 cb fe ff ff       	call   80487c8 <draw_pixel>
 80488fd:	83 c4 0c             	add    $0xc,%esp
 8048900:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048903:	8d 14 00             	lea    (%eax,%eax,1),%edx
 8048906:	8b 45 10             	mov    0x10(%ebp),%eax
 8048909:	01 c2                	add    %eax,%edx
 804890b:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804890e:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
 8048911:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048914:	01 c8                	add    %ecx,%eax
 8048916:	83 c0 01             	add    $0x1,%eax
 8048919:	ff 75 14             	pushl  0x14(%ebp)
 804891c:	52                   	push   %edx
 804891d:	50                   	push   %eax
 804891e:	e8 a5 fe ff ff       	call   80487c8 <draw_pixel>
 8048923:	83 c4 0c             	add    $0xc,%esp
 8048926:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048929:	8d 14 00             	lea    (%eax,%eax,1),%edx
 804892c:	8b 45 10             	mov    0x10(%ebp),%eax
 804892f:	01 d0                	add    %edx,%eax
 8048931:	8d 50 01             	lea    0x1(%eax),%edx
 8048934:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048937:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
 804893a:	8b 45 0c             	mov    0xc(%ebp),%eax
 804893d:	01 c8                	add    %ecx,%eax
 804893f:	83 c0 01             	add    $0x1,%eax
 8048942:	ff 75 14             	pushl  0x14(%ebp)
 8048945:	52                   	push   %edx
 8048946:	50                   	push   %eax
 8048947:	e8 7c fe ff ff       	call   80487c8 <draw_pixel>
 804894c:	83 c4 0c             	add    $0xc,%esp
 804894f:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048952:	8d 14 00             	lea    (%eax,%eax,1),%edx
 8048955:	8b 45 10             	mov    0x10(%ebp),%eax
 8048958:	01 d0                	add    %edx,%eax
 804895a:	8d 50 01             	lea    0x1(%eax),%edx
 804895d:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048960:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
 8048963:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048966:	01 c8                	add    %ecx,%eax
 8048968:	ff 75 14             	pushl  0x14(%ebp)
 804896b:	52                   	push   %edx
 804896c:	50                   	push   %eax
 804896d:	e8 56 fe ff ff       	call   80487c8 <draw_pixel>
 8048972:	83 c4 0c             	add    $0xc,%esp
 8048975:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 8048979:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
 804897d:	0f 8e 38 ff ff ff    	jle    80488bb <draw_character_2+0x33>
 8048983:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 8048987:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
 804898b:	0f 8e 1e ff ff ff    	jle    80488af <draw_character_2+0x27>
 8048991:	c9                   	leave  
 8048992:	c3                   	ret    

08048993 <draw_string>:
 8048993:	55                   	push   %ebp
 8048994:	89 e5                	mov    %esp,%ebp
 8048996:	eb 3f                	jmp    80489d7 <draw_string+0x44>
 8048998:	8b 45 08             	mov    0x8(%ebp),%eax
 804899b:	8d 50 01             	lea    0x1(%eax),%edx
 804899e:	89 55 08             	mov    %edx,0x8(%ebp)
 80489a1:	0f b6 00             	movzbl (%eax),%eax
 80489a4:	0f be c0             	movsbl %al,%eax
 80489a7:	ff 75 14             	pushl  0x14(%ebp)
 80489aa:	ff 75 10             	pushl  0x10(%ebp)
 80489ad:	ff 75 0c             	pushl  0xc(%ebp)
 80489b0:	50                   	push   %eax
 80489b1:	e8 54 fe ff ff       	call   804880a <draw_character>
 80489b6:	83 c4 10             	add    $0x10,%esp
 80489b9:	8b 45 10             	mov    0x10(%ebp),%eax
 80489bc:	83 c0 08             	add    $0x8,%eax
 80489bf:	3d 3f 01 00 00       	cmp    $0x13f,%eax
 80489c4:	7e 0d                	jle    80489d3 <draw_string+0x40>
 80489c6:	83 45 0c 08          	addl   $0x8,0xc(%ebp)
 80489ca:	c7 45 10 00 00 00 00 	movl   $0x0,0x10(%ebp)
 80489d1:	eb 04                	jmp    80489d7 <draw_string+0x44>
 80489d3:	83 45 10 08          	addl   $0x8,0x10(%ebp)
 80489d7:	8b 45 08             	mov    0x8(%ebp),%eax
 80489da:	0f b6 00             	movzbl (%eax),%eax
 80489dd:	84 c0                	test   %al,%al
 80489df:	75 b7                	jne    8048998 <draw_string+0x5>
 80489e1:	c9                   	leave  
 80489e2:	c3                   	ret    

080489e3 <draw_big_string>:
 80489e3:	55                   	push   %ebp
 80489e4:	89 e5                	mov    %esp,%ebp
 80489e6:	eb 3f                	jmp    8048a27 <draw_big_string+0x44>
 80489e8:	8b 45 08             	mov    0x8(%ebp),%eax
 80489eb:	8d 50 01             	lea    0x1(%eax),%edx
 80489ee:	89 55 08             	mov    %edx,0x8(%ebp)
 80489f1:	0f b6 00             	movzbl (%eax),%eax
 80489f4:	0f be c0             	movsbl %al,%eax
 80489f7:	ff 75 14             	pushl  0x14(%ebp)
 80489fa:	ff 75 10             	pushl  0x10(%ebp)
 80489fd:	ff 75 0c             	pushl  0xc(%ebp)
 8048a00:	50                   	push   %eax
 8048a01:	e8 82 fe ff ff       	call   8048888 <draw_character_2>
 8048a06:	83 c4 10             	add    $0x10,%esp
 8048a09:	8b 45 10             	mov    0x10(%ebp),%eax
 8048a0c:	83 c0 10             	add    $0x10,%eax
 8048a0f:	3d 3f 01 00 00       	cmp    $0x13f,%eax
 8048a14:	7e 0d                	jle    8048a23 <draw_big_string+0x40>
 8048a16:	83 45 0c 10          	addl   $0x10,0xc(%ebp)
 8048a1a:	c7 45 10 00 00 00 00 	movl   $0x0,0x10(%ebp)
 8048a21:	eb 04                	jmp    8048a27 <draw_big_string+0x44>
 8048a23:	83 45 10 10          	addl   $0x10,0x10(%ebp)
 8048a27:	8b 45 08             	mov    0x8(%ebp),%eax
 8048a2a:	0f b6 00             	movzbl (%eax),%eax
 8048a2d:	84 c0                	test   %al,%al
 8048a2f:	75 b7                	jne    80489e8 <draw_big_string+0x5>
 8048a31:	c9                   	leave  
 8048a32:	c3                   	ret    

08048a33 <draw_food>:
 8048a33:	55                   	push   %ebp
 8048a34:	89 e5                	mov    %esp,%ebp
 8048a36:	83 ec 10             	sub    $0x10,%esp
 8048a39:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8048a40:	eb 34                	jmp    8048a76 <draw_food+0x43>
 8048a42:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048a49:	eb 21                	jmp    8048a6c <draw_food+0x39>
 8048a4b:	8b 55 0c             	mov    0xc(%ebp),%edx
 8048a4e:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048a51:	01 c2                	add    %eax,%edx
 8048a53:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8048a56:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048a59:	01 c8                	add    %ecx,%eax
 8048a5b:	ff 75 10             	pushl  0x10(%ebp)
 8048a5e:	52                   	push   %edx
 8048a5f:	50                   	push   %eax
 8048a60:	e8 63 fd ff ff       	call   80487c8 <draw_pixel>
 8048a65:	83 c4 0c             	add    $0xc,%esp
 8048a68:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 8048a6c:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
 8048a70:	7e d9                	jle    8048a4b <draw_food+0x18>
 8048a72:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 8048a76:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
 8048a7a:	7e c6                	jle    8048a42 <draw_food+0xf>
 8048a7c:	c9                   	leave  
 8048a7d:	c3                   	ret    

08048a7e <draw_snake>:
 8048a7e:	55                   	push   %ebp
 8048a7f:	89 e5                	mov    %esp,%ebp
 8048a81:	83 ec 10             	sub    $0x10,%esp
 8048a84:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8048a8b:	eb 34                	jmp    8048ac1 <draw_snake+0x43>
 8048a8d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048a94:	eb 21                	jmp    8048ab7 <draw_snake+0x39>
 8048a96:	8b 55 0c             	mov    0xc(%ebp),%edx
 8048a99:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048a9c:	01 c2                	add    %eax,%edx
 8048a9e:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8048aa1:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048aa4:	01 c8                	add    %ecx,%eax
 8048aa6:	ff 75 10             	pushl  0x10(%ebp)
 8048aa9:	52                   	push   %edx
 8048aaa:	50                   	push   %eax
 8048aab:	e8 18 fd ff ff       	call   80487c8 <draw_pixel>
 8048ab0:	83 c4 0c             	add    $0xc,%esp
 8048ab3:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 8048ab7:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
 8048abb:	7e d9                	jle    8048a96 <draw_snake+0x18>
 8048abd:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 8048ac1:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
 8048ac5:	7e c6                	jle    8048a8d <draw_snake+0xf>
 8048ac7:	6a 00                	push   $0x0
 8048ac9:	ff 75 0c             	pushl  0xc(%ebp)
 8048acc:	ff 75 08             	pushl  0x8(%ebp)
 8048acf:	e8 f4 fc ff ff       	call   80487c8 <draw_pixel>
 8048ad4:	83 c4 0c             	add    $0xc,%esp
 8048ad7:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048ada:	83 c0 01             	add    $0x1,%eax
 8048add:	6a 00                	push   $0x0
 8048adf:	50                   	push   %eax
 8048ae0:	ff 75 08             	pushl  0x8(%ebp)
 8048ae3:	e8 e0 fc ff ff       	call   80487c8 <draw_pixel>
 8048ae8:	83 c4 0c             	add    $0xc,%esp
 8048aeb:	8b 45 08             	mov    0x8(%ebp),%eax
 8048aee:	83 c0 01             	add    $0x1,%eax
 8048af1:	6a 00                	push   $0x0
 8048af3:	ff 75 0c             	pushl  0xc(%ebp)
 8048af6:	50                   	push   %eax
 8048af7:	e8 cc fc ff ff       	call   80487c8 <draw_pixel>
 8048afc:	83 c4 0c             	add    $0xc,%esp
 8048aff:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048b02:	83 c0 06             	add    $0x6,%eax
 8048b05:	6a 00                	push   $0x0
 8048b07:	50                   	push   %eax
 8048b08:	ff 75 08             	pushl  0x8(%ebp)
 8048b0b:	e8 b8 fc ff ff       	call   80487c8 <draw_pixel>
 8048b10:	83 c4 0c             	add    $0xc,%esp
 8048b13:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048b16:	83 c0 07             	add    $0x7,%eax
 8048b19:	6a 00                	push   $0x0
 8048b1b:	50                   	push   %eax
 8048b1c:	ff 75 08             	pushl  0x8(%ebp)
 8048b1f:	e8 a4 fc ff ff       	call   80487c8 <draw_pixel>
 8048b24:	83 c4 0c             	add    $0xc,%esp
 8048b27:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048b2a:	8d 50 07             	lea    0x7(%eax),%edx
 8048b2d:	8b 45 08             	mov    0x8(%ebp),%eax
 8048b30:	83 c0 01             	add    $0x1,%eax
 8048b33:	6a 00                	push   $0x0
 8048b35:	52                   	push   %edx
 8048b36:	50                   	push   %eax
 8048b37:	e8 8c fc ff ff       	call   80487c8 <draw_pixel>
 8048b3c:	83 c4 0c             	add    $0xc,%esp
 8048b3f:	8b 45 08             	mov    0x8(%ebp),%eax
 8048b42:	83 c0 07             	add    $0x7,%eax
 8048b45:	6a 00                	push   $0x0
 8048b47:	ff 75 0c             	pushl  0xc(%ebp)
 8048b4a:	50                   	push   %eax
 8048b4b:	e8 78 fc ff ff       	call   80487c8 <draw_pixel>
 8048b50:	83 c4 0c             	add    $0xc,%esp
 8048b53:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048b56:	8d 50 01             	lea    0x1(%eax),%edx
 8048b59:	8b 45 08             	mov    0x8(%ebp),%eax
 8048b5c:	83 c0 07             	add    $0x7,%eax
 8048b5f:	6a 00                	push   $0x0
 8048b61:	52                   	push   %edx
 8048b62:	50                   	push   %eax
 8048b63:	e8 60 fc ff ff       	call   80487c8 <draw_pixel>
 8048b68:	83 c4 0c             	add    $0xc,%esp
 8048b6b:	8b 45 08             	mov    0x8(%ebp),%eax
 8048b6e:	83 c0 06             	add    $0x6,%eax
 8048b71:	6a 00                	push   $0x0
 8048b73:	ff 75 0c             	pushl  0xc(%ebp)
 8048b76:	50                   	push   %eax
 8048b77:	e8 4c fc ff ff       	call   80487c8 <draw_pixel>
 8048b7c:	83 c4 0c             	add    $0xc,%esp
 8048b7f:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048b82:	8d 50 06             	lea    0x6(%eax),%edx
 8048b85:	8b 45 08             	mov    0x8(%ebp),%eax
 8048b88:	83 c0 07             	add    $0x7,%eax
 8048b8b:	6a 00                	push   $0x0
 8048b8d:	52                   	push   %edx
 8048b8e:	50                   	push   %eax
 8048b8f:	e8 34 fc ff ff       	call   80487c8 <draw_pixel>
 8048b94:	83 c4 0c             	add    $0xc,%esp
 8048b97:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048b9a:	8d 50 07             	lea    0x7(%eax),%edx
 8048b9d:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ba0:	83 c0 07             	add    $0x7,%eax
 8048ba3:	6a 00                	push   $0x0
 8048ba5:	52                   	push   %edx
 8048ba6:	50                   	push   %eax
 8048ba7:	e8 1c fc ff ff       	call   80487c8 <draw_pixel>
 8048bac:	83 c4 0c             	add    $0xc,%esp
 8048baf:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048bb2:	8d 50 07             	lea    0x7(%eax),%edx
 8048bb5:	8b 45 08             	mov    0x8(%ebp),%eax
 8048bb8:	83 c0 06             	add    $0x6,%eax
 8048bbb:	6a 00                	push   $0x0
 8048bbd:	52                   	push   %edx
 8048bbe:	50                   	push   %eax
 8048bbf:	e8 04 fc ff ff       	call   80487c8 <draw_pixel>
 8048bc4:	83 c4 0c             	add    $0xc,%esp
 8048bc7:	c9                   	leave  
 8048bc8:	c3                   	ret    

08048bc9 <display_all>:
 8048bc9:	55                   	push   %ebp
 8048bca:	89 e5                	mov    %esp,%ebp
 8048bcc:	b8 04 00 00 00       	mov    $0x4,%eax
 8048bd1:	ba c0 a9 04 08       	mov    $0x804a9c0,%edx
 8048bd6:	89 d3                	mov    %edx,%ebx
 8048bd8:	cd 80                	int    $0x80
 8048bda:	5d                   	pop    %ebp
 8048bdb:	c3                   	ret    

08048bdc <get_time>:
 8048bdc:	55                   	push   %ebp
 8048bdd:	89 e5                	mov    %esp,%ebp
 8048bdf:	83 ec 10             	sub    $0x10,%esp
 8048be2:	b8 02 00 00 00       	mov    $0x2,%eax
 8048be7:	bb 00 00 00 00       	mov    $0x0,%ebx
 8048bec:	cd 80                	int    $0x80
 8048bee:	89 c0                	mov    %eax,%eax
 8048bf0:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048bf3:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048bf6:	c9                   	leave  
 8048bf7:	c3                   	ret    

08048bf8 <time_pop>:
 8048bf8:	55                   	push   %ebp
 8048bf9:	89 e5                	mov    %esp,%ebp
 8048bfb:	b8 02 00 00 00       	mov    $0x2,%eax
 8048c00:	bb 01 00 00 00       	mov    $0x1,%ebx
 8048c05:	cd 80                	int    $0x80
 8048c07:	5d                   	pop    %ebp
 8048c08:	c3                   	ret    

08048c09 <last_key_code>:
 8048c09:	55                   	push   %ebp
 8048c0a:	89 e5                	mov    %esp,%ebp
 8048c0c:	83 ec 10             	sub    $0x10,%esp
 8048c0f:	b8 03 00 00 00       	mov    $0x3,%eax
 8048c14:	bb 00 00 00 00       	mov    $0x0,%ebx
 8048c19:	cd 80                	int    $0x80
 8048c1b:	89 c0                	mov    %eax,%eax
 8048c1d:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048c20:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048c23:	c9                   	leave  
 8048c24:	c3                   	ret    

08048c25 <reset_last_key>:
 8048c25:	55                   	push   %ebp
 8048c26:	89 e5                	mov    %esp,%ebp
 8048c28:	b8 03 00 00 00       	mov    $0x3,%eax
 8048c2d:	bb 01 00 00 00       	mov    $0x1,%ebx
 8048c32:	cd 80                	int    $0x80
 8048c34:	5d                   	pop    %ebp
 8048c35:	c3                   	ret    

08048c36 <change>:
 8048c36:	55                   	push   %ebp
 8048c37:	89 e5                	mov    %esp,%ebp
 8048c39:	53                   	push   %ebx
 8048c3a:	83 c4 80             	add    $0xffffff80,%esp
 8048c3d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048c44:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048c4b:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c4e:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8048c51:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 8048c55:	75 14                	jne    8048c6b <change+0x35>
 8048c57:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048c5a:	c6 00 30             	movb   $0x30,(%eax)
 8048c5d:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048c60:	83 c0 01             	add    $0x1,%eax
 8048c63:	c6 00 00             	movb   $0x0,(%eax)
 8048c66:	e9 a5 00 00 00       	jmp    8048d10 <change+0xda>
 8048c6b:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 8048c6f:	79 1d                	jns    8048c8e <change+0x58>
 8048c71:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048c74:	8d 50 01             	lea    0x1(%eax),%edx
 8048c77:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048c7a:	89 c2                	mov    %eax,%edx
 8048c7c:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048c7f:	01 d0                	add    %edx,%eax
 8048c81:	c6 00 2d             	movb   $0x2d,(%eax)
 8048c84:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048c87:	f7 d8                	neg    %eax
 8048c89:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048c8c:	eb 06                	jmp    8048c94 <change+0x5e>
 8048c8e:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048c91:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048c94:	eb 40                	jmp    8048cd6 <change+0xa0>
 8048c96:	8b 4d f8             	mov    -0x8(%ebp),%ecx
 8048c99:	8d 41 01             	lea    0x1(%ecx),%eax
 8048c9c:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048c9f:	8b 5d f0             	mov    -0x10(%ebp),%ebx
 8048ca2:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
 8048ca7:	89 d8                	mov    %ebx,%eax
 8048ca9:	f7 e2                	mul    %edx
 8048cab:	c1 ea 03             	shr    $0x3,%edx
 8048cae:	89 d0                	mov    %edx,%eax
 8048cb0:	c1 e0 02             	shl    $0x2,%eax
 8048cb3:	01 d0                	add    %edx,%eax
 8048cb5:	01 c0                	add    %eax,%eax
 8048cb7:	29 c3                	sub    %eax,%ebx
 8048cb9:	89 da                	mov    %ebx,%edx
 8048cbb:	89 d0                	mov    %edx,%eax
 8048cbd:	83 c0 30             	add    $0x30,%eax
 8048cc0:	88 44 0d 88          	mov    %al,-0x78(%ebp,%ecx,1)
 8048cc4:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048cc7:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
 8048ccc:	f7 e2                	mul    %edx
 8048cce:	89 d0                	mov    %edx,%eax
 8048cd0:	c1 e8 03             	shr    $0x3,%eax
 8048cd3:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048cd6:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8048cda:	75 ba                	jne    8048c96 <change+0x60>
 8048cdc:	eb 21                	jmp    8048cff <change+0xc9>
 8048cde:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048ce1:	8d 50 01             	lea    0x1(%eax),%edx
 8048ce4:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048ce7:	89 c2                	mov    %eax,%edx
 8048ce9:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048cec:	01 c2                	add    %eax,%edx
 8048cee:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
 8048cf2:	8d 4d 88             	lea    -0x78(%ebp),%ecx
 8048cf5:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048cf8:	01 c8                	add    %ecx,%eax
 8048cfa:	0f b6 00             	movzbl (%eax),%eax
 8048cfd:	88 02                	mov    %al,(%edx)
 8048cff:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
 8048d03:	75 d9                	jne    8048cde <change+0xa8>
 8048d05:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048d08:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048d0b:	01 d0                	add    %edx,%eax
 8048d0d:	c6 00 00             	movb   $0x0,(%eax)
 8048d10:	83 ec 80             	sub    $0xffffff80,%esp
 8048d13:	5b                   	pop    %ebx
 8048d14:	5d                   	pop    %ebp
 8048d15:	c3                   	ret    

08048d16 <change_x>:
 8048d16:	55                   	push   %ebp
 8048d17:	89 e5                	mov    %esp,%ebp
 8048d19:	83 ec 70             	sub    $0x70,%esp
 8048d1c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8048d23:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048d2a:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d2d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048d30:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8048d34:	75 11                	jne    8048d47 <change_x+0x31>
 8048d36:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048d39:	c6 00 30             	movb   $0x30,(%eax)
 8048d3c:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048d3f:	83 c0 01             	add    $0x1,%eax
 8048d42:	c6 00 00             	movb   $0x0,(%eax)
 8048d45:	eb 7e                	jmp    8048dc5 <change_x+0xaf>
 8048d47:	eb 42                	jmp    8048d8b <change_x+0x75>
 8048d49:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048d4c:	83 e0 0f             	and    $0xf,%eax
 8048d4f:	83 f8 09             	cmp    $0x9,%eax
 8048d52:	77 18                	ja     8048d6c <change_x+0x56>
 8048d54:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048d57:	8d 50 01             	lea    0x1(%eax),%edx
 8048d5a:	89 55 fc             	mov    %edx,-0x4(%ebp)
 8048d5d:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048d60:	83 e2 0f             	and    $0xf,%edx
 8048d63:	83 c2 30             	add    $0x30,%edx
 8048d66:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
 8048d6a:	eb 16                	jmp    8048d82 <change_x+0x6c>
 8048d6c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048d6f:	8d 50 01             	lea    0x1(%eax),%edx
 8048d72:	89 55 fc             	mov    %edx,-0x4(%ebp)
 8048d75:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048d78:	83 e2 0f             	and    $0xf,%edx
 8048d7b:	83 c2 37             	add    $0x37,%edx
 8048d7e:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
 8048d82:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048d85:	c1 e8 04             	shr    $0x4,%eax
 8048d88:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048d8b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8048d8f:	75 b8                	jne    8048d49 <change_x+0x33>
 8048d91:	eb 21                	jmp    8048db4 <change_x+0x9e>
 8048d93:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048d96:	8d 50 01             	lea    0x1(%eax),%edx
 8048d99:	89 55 f8             	mov    %edx,-0x8(%ebp)
 8048d9c:	89 c2                	mov    %eax,%edx
 8048d9e:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048da1:	01 c2                	add    %eax,%edx
 8048da3:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
 8048da7:	8d 4d 90             	lea    -0x70(%ebp),%ecx
 8048daa:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048dad:	01 c8                	add    %ecx,%eax
 8048daf:	0f b6 00             	movzbl (%eax),%eax
 8048db2:	88 02                	mov    %al,(%edx)
 8048db4:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
 8048db8:	75 d9                	jne    8048d93 <change_x+0x7d>
 8048dba:	8b 55 f8             	mov    -0x8(%ebp),%edx
 8048dbd:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048dc0:	01 d0                	add    %edx,%eax
 8048dc2:	c6 00 00             	movb   $0x0,(%eax)
 8048dc5:	c9                   	leave  
 8048dc6:	c3                   	ret    

08048dc7 <v_fprintf>:
 8048dc7:	55                   	push   %ebp
 8048dc8:	89 e5                	mov    %esp,%ebp
 8048dca:	81 ec 88 00 00 00    	sub    $0x88,%esp
 8048dd0:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048dd3:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8048dd6:	8b 45 10             	mov    0x10(%ebp),%eax
 8048dd9:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048ddc:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8048de3:	e9 61 01 00 00       	jmp    8048f49 <v_fprintf+0x182>
 8048de8:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048deb:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048dee:	01 d0                	add    %edx,%eax
 8048df0:	0f b6 00             	movzbl (%eax),%eax
 8048df3:	3c 25                	cmp    $0x25,%al
 8048df5:	74 27                	je     8048e1e <v_fprintf+0x57>
 8048df7:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048dfa:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048dfd:	01 d0                	add    %edx,%eax
 8048dff:	0f b6 00             	movzbl (%eax),%eax
 8048e02:	88 45 eb             	mov    %al,-0x15(%ebp)
 8048e05:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
 8048e09:	83 ec 0c             	sub    $0xc,%esp
 8048e0c:	50                   	push   %eax
 8048e0d:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e10:	ff d0                	call   *%eax
 8048e12:	83 c4 10             	add    $0x10,%esp
 8048e15:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048e19:	e9 2b 01 00 00       	jmp    8048f49 <v_fprintf+0x182>
 8048e1e:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048e22:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048e25:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048e28:	01 d0                	add    %edx,%eax
 8048e2a:	0f b6 00             	movzbl (%eax),%eax
 8048e2d:	3c 25                	cmp    $0x25,%al
 8048e2f:	75 16                	jne    8048e47 <v_fprintf+0x80>
 8048e31:	83 ec 0c             	sub    $0xc,%esp
 8048e34:	6a 25                	push   $0x25
 8048e36:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e39:	ff d0                	call   *%eax
 8048e3b:	83 c4 10             	add    $0x10,%esp
 8048e3e:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048e42:	e9 02 01 00 00       	jmp    8048f49 <v_fprintf+0x182>
 8048e47:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048e4a:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048e4d:	01 d0                	add    %edx,%eax
 8048e4f:	0f b6 00             	movzbl (%eax),%eax
 8048e52:	3c 63                	cmp    $0x63,%al
 8048e54:	75 26                	jne    8048e7c <v_fprintf+0xb5>
 8048e56:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048e5a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e5d:	0f b6 00             	movzbl (%eax),%eax
 8048e60:	88 45 eb             	mov    %al,-0x15(%ebp)
 8048e63:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
 8048e67:	83 ec 0c             	sub    $0xc,%esp
 8048e6a:	50                   	push   %eax
 8048e6b:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e6e:	ff d0                	call   *%eax
 8048e70:	83 c4 10             	add    $0x10,%esp
 8048e73:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 8048e77:	e9 cd 00 00 00       	jmp    8048f49 <v_fprintf+0x182>
 8048e7c:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048e7f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048e82:	01 d0                	add    %edx,%eax
 8048e84:	0f b6 00             	movzbl (%eax),%eax
 8048e87:	3c 64                	cmp    $0x64,%al
 8048e89:	75 36                	jne    8048ec1 <v_fprintf+0xfa>
 8048e8b:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048e8f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e92:	8b 00                	mov    (%eax),%eax
 8048e94:	83 ec 08             	sub    $0x8,%esp
 8048e97:	8d 55 87             	lea    -0x79(%ebp),%edx
 8048e9a:	52                   	push   %edx
 8048e9b:	50                   	push   %eax
 8048e9c:	e8 95 fd ff ff       	call   8048c36 <change>
 8048ea1:	83 c4 10             	add    $0x10,%esp
 8048ea4:	83 ec 04             	sub    $0x4,%esp
 8048ea7:	6a 00                	push   $0x0
 8048ea9:	8d 45 87             	lea    -0x79(%ebp),%eax
 8048eac:	50                   	push   %eax
 8048ead:	ff 75 08             	pushl  0x8(%ebp)
 8048eb0:	e8 12 ff ff ff       	call   8048dc7 <v_fprintf>
 8048eb5:	83 c4 10             	add    $0x10,%esp
 8048eb8:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 8048ebc:	e9 88 00 00 00       	jmp    8048f49 <v_fprintf+0x182>
 8048ec1:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048ec4:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048ec7:	01 d0                	add    %edx,%eax
 8048ec9:	0f b6 00             	movzbl (%eax),%eax
 8048ecc:	3c 78                	cmp    $0x78,%al
 8048ece:	75 33                	jne    8048f03 <v_fprintf+0x13c>
 8048ed0:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048ed4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048ed7:	8b 00                	mov    (%eax),%eax
 8048ed9:	83 ec 08             	sub    $0x8,%esp
 8048edc:	8d 55 87             	lea    -0x79(%ebp),%edx
 8048edf:	52                   	push   %edx
 8048ee0:	50                   	push   %eax
 8048ee1:	e8 30 fe ff ff       	call   8048d16 <change_x>
 8048ee6:	83 c4 10             	add    $0x10,%esp
 8048ee9:	83 ec 04             	sub    $0x4,%esp
 8048eec:	6a 00                	push   $0x0
 8048eee:	8d 45 87             	lea    -0x79(%ebp),%eax
 8048ef1:	50                   	push   %eax
 8048ef2:	ff 75 08             	pushl  0x8(%ebp)
 8048ef5:	e8 cd fe ff ff       	call   8048dc7 <v_fprintf>
 8048efa:	83 c4 10             	add    $0x10,%esp
 8048efd:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 8048f01:	eb 46                	jmp    8048f49 <v_fprintf+0x182>
 8048f03:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048f06:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048f09:	01 d0                	add    %edx,%eax
 8048f0b:	0f b6 00             	movzbl (%eax),%eax
 8048f0e:	3c 73                	cmp    $0x73,%al
 8048f10:	75 20                	jne    8048f32 <v_fprintf+0x16b>
 8048f12:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048f16:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048f19:	8b 00                	mov    (%eax),%eax
 8048f1b:	83 ec 04             	sub    $0x4,%esp
 8048f1e:	6a 00                	push   $0x0
 8048f20:	50                   	push   %eax
 8048f21:	ff 75 08             	pushl  0x8(%ebp)
 8048f24:	e8 9e fe ff ff       	call   8048dc7 <v_fprintf>
 8048f29:	83 c4 10             	add    $0x10,%esp
 8048f2c:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 8048f30:	eb 17                	jmp    8048f49 <v_fprintf+0x182>
 8048f32:	83 ec 04             	sub    $0x4,%esp
 8048f35:	6a 00                	push   $0x0
 8048f37:	68 fc 90 04 08       	push   $0x80490fc
 8048f3c:	ff 75 08             	pushl  0x8(%ebp)
 8048f3f:	e8 83 fe ff ff       	call   8048dc7 <v_fprintf>
 8048f44:	83 c4 10             	add    $0x10,%esp
 8048f47:	eb 13                	jmp    8048f5c <v_fprintf+0x195>
 8048f49:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048f4c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048f4f:	01 d0                	add    %edx,%eax
 8048f51:	0f b6 00             	movzbl (%eax),%eax
 8048f54:	84 c0                	test   %al,%al
 8048f56:	0f 85 8c fe ff ff    	jne    8048de8 <v_fprintf+0x21>
 8048f5c:	c9                   	leave  
 8048f5d:	c3                   	ret    

08048f5e <put_buffer>:
 8048f5e:	55                   	push   %ebp
 8048f5f:	89 e5                	mov    %esp,%ebp
 8048f61:	83 ec 04             	sub    $0x4,%esp
 8048f64:	8b 45 08             	mov    0x8(%ebp),%eax
 8048f67:	88 45 fc             	mov    %al,-0x4(%ebp)
 8048f6a:	a1 a8 a7 05 08       	mov    0x805a7a8,%eax
 8048f6f:	8d 50 01             	lea    0x1(%eax),%edx
 8048f72:	89 15 a8 a7 05 08    	mov    %edx,0x805a7a8
 8048f78:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
 8048f7c:	88 90 c0 a3 05 08    	mov    %dl,0x805a3c0(%eax)
 8048f82:	c9                   	leave  
 8048f83:	c3                   	ret    

08048f84 <print>:
 8048f84:	55                   	push   %ebp
 8048f85:	89 e5                	mov    %esp,%ebp
 8048f87:	53                   	push   %ebx
 8048f88:	83 ec 14             	sub    $0x14,%esp
 8048f8b:	8d 45 0c             	lea    0xc(%ebp),%eax
 8048f8e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048f91:	c7 05 a8 a7 05 08 00 	movl   $0x0,0x805a7a8
 8048f98:	00 00 00 
 8048f9b:	8b 45 08             	mov    0x8(%ebp),%eax
 8048f9e:	83 ec 04             	sub    $0x4,%esp
 8048fa1:	ff 75 f4             	pushl  -0xc(%ebp)
 8048fa4:	50                   	push   %eax
 8048fa5:	68 5e 8f 04 08       	push   $0x8048f5e
 8048faa:	e8 18 fe ff ff       	call   8048dc7 <v_fprintf>
 8048faf:	83 c4 10             	add    $0x10,%esp
 8048fb2:	a1 a8 a7 05 08       	mov    0x805a7a8,%eax
 8048fb7:	c6 80 c0 a3 05 08 00 	movb   $0x0,0x805a3c0(%eax)
 8048fbe:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 8048fc5:	ba c0 a3 05 08       	mov    $0x805a3c0,%edx
 8048fca:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048fcd:	bb 01 00 00 00       	mov    $0x1,%ebx
 8048fd2:	89 d1                	mov    %edx,%ecx
 8048fd4:	cd 80                	int    $0x80
 8048fd6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048fd9:	c9                   	leave  
 8048fda:	c3                   	ret    

08048fdb <my_memcpy>:
 8048fdb:	55                   	push   %ebp
 8048fdc:	89 e5                	mov    %esp,%ebp
 8048fde:	57                   	push   %edi
 8048fdf:	56                   	push   %esi
 8048fe0:	53                   	push   %ebx
 8048fe1:	8b 45 10             	mov    0x10(%ebp),%eax
 8048fe4:	8b 55 0c             	mov    0xc(%ebp),%edx
 8048fe7:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8048fea:	89 c1                	mov    %eax,%ecx
 8048fec:	89 d6                	mov    %edx,%esi
 8048fee:	89 df                	mov    %ebx,%edi
 8048ff0:	fc                   	cld    
 8048ff1:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 8048ff3:	5b                   	pop    %ebx
 8048ff4:	5e                   	pop    %esi
 8048ff5:	5f                   	pop    %edi
 8048ff6:	5d                   	pop    %ebp
 8048ff7:	c3                   	ret    

08048ff8 <my_memset>:
 8048ff8:	55                   	push   %ebp
 8048ff9:	89 e5                	mov    %esp,%ebp
 8048ffb:	57                   	push   %edi
 8048ffc:	53                   	push   %ebx
 8048ffd:	8b 55 10             	mov    0x10(%ebp),%edx
 8049000:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049003:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8049006:	89 d1                	mov    %edx,%ecx
 8049008:	89 df                	mov    %ebx,%edi
 804900a:	fc                   	cld    
 804900b:	f3 aa                	rep stos %al,%es:(%edi)
 804900d:	5b                   	pop    %ebx
 804900e:	5f                   	pop    %edi
 804900f:	5d                   	pop    %ebp
 8049010:	c3                   	ret    

08049011 <srand>:
 8049011:	55                   	push   %ebp
 8049012:	89 e5                	mov    %esp,%ebp
 8049014:	8b 45 08             	mov    0x8(%ebp),%eax
 8049017:	a3 ac a7 05 08       	mov    %eax,0x805a7ac
 804901c:	5d                   	pop    %ebp
 804901d:	c3                   	ret    

0804901e <rand>:
 804901e:	55                   	push   %ebp
 804901f:	89 e5                	mov    %esp,%ebp
 8049021:	a1 ac a7 05 08       	mov    0x805a7ac,%eax
 8049026:	69 c0 35 4e 5a 01    	imul   $0x15a4e35,%eax,%eax
 804902c:	83 c0 01             	add    $0x1,%eax
 804902f:	a3 ac a7 05 08       	mov    %eax,0x805a7ac
 8049034:	a1 ac a7 05 08       	mov    0x805a7ac,%eax
 8049039:	c1 f8 10             	sar    $0x10,%eax
 804903c:	25 ff 7f 00 00       	and    $0x7fff,%eax
 8049041:	5d                   	pop    %ebp
 8049042:	c3                   	ret    

08049043 <getpid>:
 8049043:	55                   	push   %ebp
 8049044:	89 e5                	mov    %esp,%ebp
 8049046:	83 ec 10             	sub    $0x10,%esp
 8049049:	b8 06 00 00 00       	mov    $0x6,%eax
 804904e:	cd 80                	int    $0x80
 8049050:	89 c0                	mov    %eax,%eax
 8049052:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8049055:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8049058:	c9                   	leave  
 8049059:	c3                   	ret    

0804905a <my_sleep>:
 804905a:	55                   	push   %ebp
 804905b:	89 e5                	mov    %esp,%ebp
 804905d:	53                   	push   %ebx
 804905e:	b8 07 00 00 00       	mov    $0x7,%eax
 8049063:	8b 55 08             	mov    0x8(%ebp),%edx
 8049066:	89 d3                	mov    %edx,%ebx
 8049068:	cd 80                	int    $0x80
 804906a:	5b                   	pop    %ebx
 804906b:	5d                   	pop    %ebp
 804906c:	c3                   	ret    

0804906d <my_exit>:
 804906d:	55                   	push   %ebp
 804906e:	89 e5                	mov    %esp,%ebp
 8049070:	b8 05 00 00 00       	mov    $0x5,%eax
 8049075:	cd 80                	int    $0x80
 8049077:	5d                   	pop    %ebp
 8049078:	c3                   	ret    

08049079 <my_fork>:
 8049079:	55                   	push   %ebp
 804907a:	89 e5                	mov    %esp,%ebp
 804907c:	83 ec 10             	sub    $0x10,%esp
 804907f:	b8 08 00 00 00       	mov    $0x8,%eax
 8049084:	cd 80                	int    $0x80
 8049086:	89 c0                	mov    %eax,%eax
 8049088:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804908b:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804908e:	c9                   	leave  
 804908f:	c3                   	ret    
