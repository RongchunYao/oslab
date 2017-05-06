
game:     file format elf32-i386


Disassembly of section .text:

08048094 <draw_mark>:
 8048094:	55                   	push   %ebp
 8048095:	89 e5                	mov    %esp,%ebp
 8048097:	83 ec 08             	sub    $0x8,%esp
 804809a:	a1 ec d2 05 08       	mov    0x805d2ec,%eax
 804809f:	83 e8 01             	sub    $0x1,%eax
 80480a2:	83 ec 08             	sub    $0x8,%esp
 80480a5:	68 d0 a3 05 08       	push   $0x805a3d0
 80480aa:	50                   	push   %eax
 80480ab:	e8 8c 0b 00 00       	call   8048c3c <change>
 80480b0:	83 c4 10             	add    $0x10,%esp
 80480b3:	a1 ec d2 05 08       	mov    0x805d2ec,%eax
 80480b8:	83 f8 0a             	cmp    $0xa,%eax
 80480bb:	7f 18                	jg     80480d5 <draw_mark+0x41>
 80480bd:	6a 2f                	push   $0x2f
 80480bf:	68 38 01 00 00       	push   $0x138
 80480c4:	6a 00                	push   $0x0
 80480c6:	68 d0 a3 05 08       	push   $0x805a3d0
 80480cb:	e8 c9 08 00 00       	call   8048999 <draw_string>
 80480d0:	83 c4 10             	add    $0x10,%esp
 80480d3:	eb 38                	jmp    804810d <draw_mark+0x79>
 80480d5:	a1 ec d2 05 08       	mov    0x805d2ec,%eax
 80480da:	83 f8 64             	cmp    $0x64,%eax
 80480dd:	7f 18                	jg     80480f7 <draw_mark+0x63>
 80480df:	6a 2f                	push   $0x2f
 80480e1:	68 30 01 00 00       	push   $0x130
 80480e6:	6a 00                	push   $0x0
 80480e8:	68 d0 a3 05 08       	push   $0x805a3d0
 80480ed:	e8 a7 08 00 00       	call   8048999 <draw_string>
 80480f2:	83 c4 10             	add    $0x10,%esp
 80480f5:	eb 16                	jmp    804810d <draw_mark+0x79>
 80480f7:	6a 2f                	push   $0x2f
 80480f9:	68 28 01 00 00       	push   $0x128
 80480fe:	6a 00                	push   $0x0
 8048100:	68 d0 a3 05 08       	push   $0x805a3d0
 8048105:	e8 8f 08 00 00       	call   8048999 <draw_string>
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
 804812b:	05 00 a4 05 08       	add    $0x805a400,%eax
 8048130:	8b 18                	mov    (%eax),%ebx
 8048132:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048135:	89 d0                	mov    %edx,%eax
 8048137:	01 c0                	add    %eax,%eax
 8048139:	01 d0                	add    %edx,%eax
 804813b:	c1 e0 02             	shl    $0x2,%eax
 804813e:	05 00 a4 05 08       	add    $0x805a400,%eax
 8048143:	8b 48 08             	mov    0x8(%eax),%ecx
 8048146:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048149:	89 d0                	mov    %edx,%eax
 804814b:	01 c0                	add    %eax,%eax
 804814d:	01 d0                	add    %edx,%eax
 804814f:	c1 e0 02             	shl    $0x2,%eax
 8048152:	05 00 a4 05 08       	add    $0x805a400,%eax
 8048157:	8b 40 04             	mov    0x4(%eax),%eax
 804815a:	83 ec 04             	sub    $0x4,%esp
 804815d:	53                   	push   %ebx
 804815e:	51                   	push   %ecx
 804815f:	50                   	push   %eax
 8048160:	e8 1f 09 00 00       	call   8048a84 <draw_snake>
 8048165:	83 c4 10             	add    $0x10,%esp
 8048168:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804816c:	a1 c0 a3 05 08       	mov    0x805a3c0,%eax
 8048171:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 8048174:	7e a9                	jle    804811f <draw_whole_snake+0x10>
 8048176:	8b 0d 4c a9 04 08    	mov    0x804a94c,%ecx
 804817c:	8b 15 48 a9 04 08    	mov    0x804a948,%edx
 8048182:	a1 44 a9 04 08       	mov    0x804a944,%eax
 8048187:	83 ec 04             	sub    $0x4,%esp
 804818a:	51                   	push   %ecx
 804818b:	52                   	push   %edx
 804818c:	50                   	push   %eax
 804818d:	e8 a7 08 00 00       	call   8048a39 <draw_food>
 8048192:	83 c4 10             	add    $0x10,%esp
 8048195:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048198:	c9                   	leave  
 8048199:	c3                   	ret    

0804819a <make_food>:
 804819a:	55                   	push   %ebp
 804819b:	89 e5                	mov    %esp,%ebp
 804819d:	c7 05 44 a9 04 08 60 	movl   $0x60,0x804a944
 80481a4:	00 00 00 
 80481a7:	c7 05 48 a9 04 08 58 	movl   $0x58,0x804a948
 80481ae:	00 00 00 
 80481b1:	c7 05 4c a9 04 08 04 	movl   $0x4,0x804a94c
 80481b8:	00 00 00 
 80481bb:	5d                   	pop    %ebp
 80481bc:	c3                   	ret    

080481bd <do_move>:
 80481bd:	55                   	push   %ebp
 80481be:	89 e5                	mov    %esp,%ebp
 80481c0:	83 ec 18             	sub    $0x18,%esp
 80481c3:	a1 10 a4 05 08       	mov    0x805a410,%eax
 80481c8:	a3 04 a4 05 08       	mov    %eax,0x805a404
 80481cd:	a1 14 a4 05 08       	mov    0x805a414,%eax
 80481d2:	a3 08 a4 05 08       	mov    %eax,0x805a408
 80481d7:	a1 0c a4 05 08       	mov    0x805a40c,%eax
 80481dc:	a3 00 a4 05 08       	mov    %eax,0x805a400
 80481e1:	8b 15 c0 a3 05 08    	mov    0x805a3c0,%edx
 80481e7:	89 d0                	mov    %edx,%eax
 80481e9:	01 c0                	add    %eax,%eax
 80481eb:	01 d0                	add    %edx,%eax
 80481ed:	c1 e0 02             	shl    $0x2,%eax
 80481f0:	05 00 a4 05 08       	add    $0x805a400,%eax
 80481f5:	8b 40 04             	mov    0x4(%eax),%eax
 80481f8:	a3 c8 a3 05 08       	mov    %eax,0x805a3c8
 80481fd:	8b 15 c0 a3 05 08    	mov    0x805a3c0,%edx
 8048203:	89 d0                	mov    %edx,%eax
 8048205:	01 c0                	add    %eax,%eax
 8048207:	01 d0                	add    %edx,%eax
 8048209:	c1 e0 02             	shl    $0x2,%eax
 804820c:	05 00 a4 05 08       	add    $0x805a400,%eax
 8048211:	8b 40 08             	mov    0x8(%eax),%eax
 8048214:	a3 cc a3 05 08       	mov    %eax,0x805a3cc
 8048219:	a1 40 a9 04 08       	mov    0x804a940,%eax
 804821e:	85 c0                	test   %eax,%eax
 8048220:	75 24                	jne    8048246 <do_move+0x89>
 8048222:	a1 14 a4 05 08       	mov    0x805a414,%eax
 8048227:	83 e8 08             	sub    $0x8,%eax
 804822a:	a3 14 a4 05 08       	mov    %eax,0x805a414
 804822f:	a1 14 a4 05 08       	mov    0x805a414,%eax
 8048234:	85 c0                	test   %eax,%eax
 8048236:	0f 89 84 00 00 00    	jns    80482c0 <do_move+0x103>
 804823c:	b8 00 00 00 00       	mov    $0x0,%eax
 8048241:	e9 9f 03 00 00       	jmp    80485e5 <do_move+0x428>
 8048246:	a1 40 a9 04 08       	mov    0x804a940,%eax
 804824b:	83 f8 12             	cmp    $0x12,%eax
 804824e:	75 23                	jne    8048273 <do_move+0xb6>
 8048250:	a1 10 a4 05 08       	mov    0x805a410,%eax
 8048255:	83 c0 08             	add    $0x8,%eax
 8048258:	a3 10 a4 05 08       	mov    %eax,0x805a410
 804825d:	a1 10 a4 05 08       	mov    0x805a410,%eax
 8048262:	3d c7 00 00 00       	cmp    $0xc7,%eax
 8048267:	7e 57                	jle    80482c0 <do_move+0x103>
 8048269:	b8 00 00 00 00       	mov    $0x0,%eax
 804826e:	e9 72 03 00 00       	jmp    80485e5 <do_move+0x428>
 8048273:	a1 40 a9 04 08       	mov    0x804a940,%eax
 8048278:	83 f8 03             	cmp    $0x3,%eax
 804827b:	75 23                	jne    80482a0 <do_move+0xe3>
 804827d:	a1 14 a4 05 08       	mov    0x805a414,%eax
 8048282:	83 c0 08             	add    $0x8,%eax
 8048285:	a3 14 a4 05 08       	mov    %eax,0x805a414
 804828a:	a1 14 a4 05 08       	mov    0x805a414,%eax
 804828f:	3d 3f 01 00 00       	cmp    $0x13f,%eax
 8048294:	7e 2a                	jle    80482c0 <do_move+0x103>
 8048296:	b8 00 00 00 00       	mov    $0x0,%eax
 804829b:	e9 45 03 00 00       	jmp    80485e5 <do_move+0x428>
 80482a0:	a1 10 a4 05 08       	mov    0x805a410,%eax
 80482a5:	83 e8 08             	sub    $0x8,%eax
 80482a8:	a3 10 a4 05 08       	mov    %eax,0x805a410
 80482ad:	a1 10 a4 05 08       	mov    0x805a410,%eax
 80482b2:	85 c0                	test   %eax,%eax
 80482b4:	79 0a                	jns    80482c0 <do_move+0x103>
 80482b6:	b8 00 00 00 00       	mov    $0x0,%eax
 80482bb:	e9 25 03 00 00       	jmp    80485e5 <do_move+0x428>
 80482c0:	a1 c0 a3 05 08       	mov    0x805a3c0,%eax
 80482c5:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80482c8:	e9 96 00 00 00       	jmp    8048363 <do_move+0x1a6>
 80482cd:	83 7d f4 02          	cmpl   $0x2,-0xc(%ebp)
 80482d1:	75 36                	jne    8048309 <do_move+0x14c>
 80482d3:	8b 0d 04 a4 05 08    	mov    0x805a404,%ecx
 80482d9:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80482dc:	89 d0                	mov    %edx,%eax
 80482de:	01 c0                	add    %eax,%eax
 80482e0:	01 d0                	add    %edx,%eax
 80482e2:	c1 e0 02             	shl    $0x2,%eax
 80482e5:	05 00 a4 05 08       	add    $0x805a400,%eax
 80482ea:	89 48 04             	mov    %ecx,0x4(%eax)
 80482ed:	8b 0d 08 a4 05 08    	mov    0x805a408,%ecx
 80482f3:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80482f6:	89 d0                	mov    %edx,%eax
 80482f8:	01 c0                	add    %eax,%eax
 80482fa:	01 d0                	add    %edx,%eax
 80482fc:	c1 e0 02             	shl    $0x2,%eax
 80482ff:	05 00 a4 05 08       	add    $0x805a400,%eax
 8048304:	89 48 08             	mov    %ecx,0x8(%eax)
 8048307:	eb 56                	jmp    804835f <do_move+0x1a2>
 8048309:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804830c:	8d 50 ff             	lea    -0x1(%eax),%edx
 804830f:	89 d0                	mov    %edx,%eax
 8048311:	01 c0                	add    %eax,%eax
 8048313:	01 d0                	add    %edx,%eax
 8048315:	c1 e0 02             	shl    $0x2,%eax
 8048318:	05 00 a4 05 08       	add    $0x805a400,%eax
 804831d:	8b 48 04             	mov    0x4(%eax),%ecx
 8048320:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048323:	89 d0                	mov    %edx,%eax
 8048325:	01 c0                	add    %eax,%eax
 8048327:	01 d0                	add    %edx,%eax
 8048329:	c1 e0 02             	shl    $0x2,%eax
 804832c:	05 00 a4 05 08       	add    $0x805a400,%eax
 8048331:	89 48 04             	mov    %ecx,0x4(%eax)
 8048334:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048337:	8d 50 ff             	lea    -0x1(%eax),%edx
 804833a:	89 d0                	mov    %edx,%eax
 804833c:	01 c0                	add    %eax,%eax
 804833e:	01 d0                	add    %edx,%eax
 8048340:	c1 e0 02             	shl    $0x2,%eax
 8048343:	05 00 a4 05 08       	add    $0x805a400,%eax
 8048348:	8b 48 08             	mov    0x8(%eax),%ecx
 804834b:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804834e:	89 d0                	mov    %edx,%eax
 8048350:	01 c0                	add    %eax,%eax
 8048352:	01 d0                	add    %edx,%eax
 8048354:	c1 e0 02             	shl    $0x2,%eax
 8048357:	05 00 a4 05 08       	add    $0x805a400,%eax
 804835c:	89 48 08             	mov    %ecx,0x8(%eax)
 804835f:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
 8048363:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
 8048367:	0f 8f 60 ff ff ff    	jg     80482cd <do_move+0x110>
 804836d:	8b 15 10 a4 05 08    	mov    0x805a410,%edx
 8048373:	a1 44 a9 04 08       	mov    0x804a944,%eax
 8048378:	39 c2                	cmp    %eax,%edx
 804837a:	0f 85 f5 01 00 00    	jne    8048575 <do_move+0x3b8>
 8048380:	8b 15 14 a4 05 08    	mov    0x805a414,%edx
 8048386:	a1 48 a9 04 08       	mov    0x804a948,%eax
 804838b:	39 c2                	cmp    %eax,%edx
 804838d:	0f 85 e2 01 00 00    	jne    8048575 <do_move+0x3b8>
 8048393:	a1 ec d2 05 08       	mov    0x805d2ec,%eax
 8048398:	83 c0 01             	add    $0x1,%eax
 804839b:	a3 ec d2 05 08       	mov    %eax,0x805d2ec
 80483a0:	a1 c0 a3 05 08       	mov    0x805a3c0,%eax
 80483a5:	83 c0 01             	add    $0x1,%eax
 80483a8:	a3 c0 a3 05 08       	mov    %eax,0x805a3c0
 80483ad:	8b 15 c0 a3 05 08    	mov    0x805a3c0,%edx
 80483b3:	8b 0d c8 a3 05 08    	mov    0x805a3c8,%ecx
 80483b9:	89 d0                	mov    %edx,%eax
 80483bb:	01 c0                	add    %eax,%eax
 80483bd:	01 d0                	add    %edx,%eax
 80483bf:	c1 e0 02             	shl    $0x2,%eax
 80483c2:	05 00 a4 05 08       	add    $0x805a400,%eax
 80483c7:	89 48 04             	mov    %ecx,0x4(%eax)
 80483ca:	8b 15 c0 a3 05 08    	mov    0x805a3c0,%edx
 80483d0:	8b 0d cc a3 05 08    	mov    0x805a3cc,%ecx
 80483d6:	89 d0                	mov    %edx,%eax
 80483d8:	01 c0                	add    %eax,%eax
 80483da:	01 d0                	add    %edx,%eax
 80483dc:	c1 e0 02             	shl    $0x2,%eax
 80483df:	05 00 a4 05 08       	add    $0x805a400,%eax
 80483e4:	89 48 08             	mov    %ecx,0x8(%eax)
 80483e7:	a1 c0 a3 05 08       	mov    0x805a3c0,%eax
 80483ec:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80483ef:	eb 2d                	jmp    804841e <do_move+0x261>
 80483f1:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80483f4:	8d 50 ff             	lea    -0x1(%eax),%edx
 80483f7:	89 d0                	mov    %edx,%eax
 80483f9:	01 c0                	add    %eax,%eax
 80483fb:	01 d0                	add    %edx,%eax
 80483fd:	c1 e0 02             	shl    $0x2,%eax
 8048400:	05 00 a4 05 08       	add    $0x805a400,%eax
 8048405:	8b 08                	mov    (%eax),%ecx
 8048407:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804840a:	89 d0                	mov    %edx,%eax
 804840c:	01 c0                	add    %eax,%eax
 804840e:	01 d0                	add    %edx,%eax
 8048410:	c1 e0 02             	shl    $0x2,%eax
 8048413:	05 00 a4 05 08       	add    $0x805a400,%eax
 8048418:	89 08                	mov    %ecx,(%eax)
 804841a:	83 6d ec 01          	subl   $0x1,-0x14(%ebp)
 804841e:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
 8048422:	7f cd                	jg     80483f1 <do_move+0x234>
 8048424:	a1 4c a9 04 08       	mov    0x804a94c,%eax
 8048429:	a3 0c a4 05 08       	mov    %eax,0x805a40c
 804842e:	e8 f1 0b 00 00       	call   8049024 <rand>
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
 804845d:	a3 4c a9 04 08       	mov    %eax,0x804a94c
 8048462:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8048469:	e8 b6 0b 00 00       	call   8049024 <rand>
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
 8048490:	89 15 44 a9 04 08    	mov    %edx,0x804a944
 8048496:	8b 0d 44 a9 04 08    	mov    0x804a944,%ecx
 804849c:	a1 44 a9 04 08       	mov    0x804a944,%eax
 80484a1:	99                   	cltd   
 80484a2:	c1 ea 1d             	shr    $0x1d,%edx
 80484a5:	01 d0                	add    %edx,%eax
 80484a7:	83 e0 07             	and    $0x7,%eax
 80484aa:	29 d0                	sub    %edx,%eax
 80484ac:	29 c1                	sub    %eax,%ecx
 80484ae:	89 c8                	mov    %ecx,%eax
 80484b0:	a3 44 a9 04 08       	mov    %eax,0x804a944
 80484b5:	e8 6a 0b 00 00       	call   8049024 <rand>
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
 80484e0:	a3 48 a9 04 08       	mov    %eax,0x804a948
 80484e5:	8b 0d 48 a9 04 08    	mov    0x804a948,%ecx
 80484eb:	a1 48 a9 04 08       	mov    0x804a948,%eax
 80484f0:	99                   	cltd   
 80484f1:	c1 ea 1d             	shr    $0x1d,%edx
 80484f4:	01 d0                	add    %edx,%eax
 80484f6:	83 e0 07             	and    $0x7,%eax
 80484f9:	29 d0                	sub    %edx,%eax
 80484fb:	29 c1                	sub    %eax,%ecx
 80484fd:	89 c8                	mov    %ecx,%eax
 80484ff:	a3 48 a9 04 08       	mov    %eax,0x804a948
 8048504:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 804850b:	eb 46                	jmp    8048553 <do_move+0x396>
 804850d:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048510:	89 d0                	mov    %edx,%eax
 8048512:	01 c0                	add    %eax,%eax
 8048514:	01 d0                	add    %edx,%eax
 8048516:	c1 e0 02             	shl    $0x2,%eax
 8048519:	05 00 a4 05 08       	add    $0x805a400,%eax
 804851e:	8b 50 04             	mov    0x4(%eax),%edx
 8048521:	a1 44 a9 04 08       	mov    0x804a944,%eax
 8048526:	39 c2                	cmp    %eax,%edx
 8048528:	75 25                	jne    804854f <do_move+0x392>
 804852a:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804852d:	89 d0                	mov    %edx,%eax
 804852f:	01 c0                	add    %eax,%eax
 8048531:	01 d0                	add    %edx,%eax
 8048533:	c1 e0 02             	shl    $0x2,%eax
 8048536:	05 00 a4 05 08       	add    $0x805a400,%eax
 804853b:	8b 50 08             	mov    0x8(%eax),%edx
 804853e:	a1 48 a9 04 08       	mov    0x804a948,%eax
 8048543:	39 c2                	cmp    %eax,%edx
 8048545:	75 08                	jne    804854f <do_move+0x392>
 8048547:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 804854e:	90                   	nop
 804854f:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8048553:	a1 c0 a3 05 08       	mov    0x805a3c0,%eax
 8048558:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 804855b:	7e b0                	jle    804850d <do_move+0x350>
 804855d:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8048561:	75 0d                	jne    8048570 <do_move+0x3b3>
 8048563:	90                   	nop
 8048564:	e8 a6 fb ff ff       	call   804810f <draw_whole_snake>
 8048569:	e8 61 06 00 00       	call   8048bcf <display_all>
 804856e:	eb 05                	jmp    8048575 <do_move+0x3b8>
 8048570:	e9 ed fe ff ff       	jmp    8048462 <do_move+0x2a5>
 8048575:	c7 45 f4 02 00 00 00 	movl   $0x2,-0xc(%ebp)
 804857c:	eb 47                	jmp    80485c5 <do_move+0x408>
 804857e:	8b 0d 10 a4 05 08    	mov    0x805a410,%ecx
 8048584:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048587:	89 d0                	mov    %edx,%eax
 8048589:	01 c0                	add    %eax,%eax
 804858b:	01 d0                	add    %edx,%eax
 804858d:	c1 e0 02             	shl    $0x2,%eax
 8048590:	05 00 a4 05 08       	add    $0x805a400,%eax
 8048595:	8b 40 04             	mov    0x4(%eax),%eax
 8048598:	39 c1                	cmp    %eax,%ecx
 804859a:	75 25                	jne    80485c1 <do_move+0x404>
 804859c:	8b 0d 14 a4 05 08    	mov    0x805a414,%ecx
 80485a2:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80485a5:	89 d0                	mov    %edx,%eax
 80485a7:	01 c0                	add    %eax,%eax
 80485a9:	01 d0                	add    %edx,%eax
 80485ab:	c1 e0 02             	shl    $0x2,%eax
 80485ae:	05 00 a4 05 08       	add    $0x805a400,%eax
 80485b3:	8b 40 08             	mov    0x8(%eax),%eax
 80485b6:	39 c1                	cmp    %eax,%ecx
 80485b8:	75 07                	jne    80485c1 <do_move+0x404>
 80485ba:	b8 00 00 00 00       	mov    $0x0,%eax
 80485bf:	eb 24                	jmp    80485e5 <do_move+0x428>
 80485c1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 80485c5:	a1 c0 a3 05 08       	mov    0x805a3c0,%eax
 80485ca:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 80485cd:	7e af                	jle    804857e <do_move+0x3c1>
 80485cf:	a1 c0 a3 05 08       	mov    0x805a3c0,%eax
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
 80485ed:	c7 05 ec d2 05 08 00 	movl   $0x0,0x805d2ec
 80485f4:	00 00 00 
 80485f7:	e8 e6 05 00 00       	call   8048be2 <get_time>
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
 8048621:	e8 f1 09 00 00       	call   8049017 <srand>
 8048626:	83 c4 10             	add    $0x10,%esp
 8048629:	c7 05 c0 a3 05 08 02 	movl   $0x2,0x805a3c0
 8048630:	00 00 00 
 8048633:	c7 05 f0 d2 05 08 01 	movl   $0x1,0x805d2f0
 804863a:	00 00 00 
 804863d:	c7 05 10 a4 05 08 60 	movl   $0x60,0x805a410
 8048644:	00 00 00 
 8048647:	c7 05 14 a4 05 08 60 	movl   $0x60,0x805a414
 804864e:	00 00 00 
 8048651:	c7 05 0c a4 05 08 01 	movl   $0x1,0x805a40c
 8048658:	00 00 00 
 804865b:	c7 05 1c a4 05 08 60 	movl   $0x60,0x805a41c
 8048662:	00 00 00 
 8048665:	c7 05 20 a4 05 08 68 	movl   $0x68,0x805a420
 804866c:	00 00 00 
 804866f:	c7 05 18 a4 05 08 06 	movl   $0x6,0x805a418
 8048676:	00 00 00 
 8048679:	e8 1c fb ff ff       	call   804819a <make_food>
 804867e:	e8 a8 05 00 00       	call   8048c2b <reset_last_key>
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
 8048696:	e8 ae 09 00 00       	call   8049049 <getpid>
 804869b:	83 ec 08             	sub    $0x8,%esp
 804869e:	50                   	push   %eax
 804869f:	68 80 90 04 08       	push   $0x8049080
 80486a4:	e8 e1 08 00 00       	call   8048f8a <print>
 80486a9:	83 c4 10             	add    $0x10,%esp
 80486ac:	83 ec 04             	sub    $0x4,%esp
 80486af:	68 40 e2 01 00       	push   $0x1e240
 80486b4:	68 40 e2 01 00       	push   $0x1e240
 80486b9:	68 90 90 04 08       	push   $0x8049090
 80486be:	e8 c7 08 00 00       	call   8048f8a <print>
 80486c3:	83 c4 10             	add    $0x10,%esp
 80486c6:	e8 1c ff ff ff       	call   80485e7 <game_init>
 80486cb:	e8 3f 05 00 00       	call   8048c0f <last_key_code>
 80486d0:	a3 40 a9 04 08       	mov    %eax,0x804a940
 80486d5:	e8 08 05 00 00       	call   8048be2 <get_time>
 80486da:	89 c1                	mov    %eax,%ecx
 80486dc:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
 80486e1:	89 c8                	mov    %ecx,%eax
 80486e3:	f7 ea                	imul   %edx
 80486e5:	c1 fa 06             	sar    $0x6,%edx
 80486e8:	89 c8                	mov    %ecx,%eax
 80486ea:	c1 f8 1f             	sar    $0x1f,%eax
 80486ed:	29 c2                	sub    %eax,%edx
 80486ef:	89 d0                	mov    %edx,%eax
 80486f1:	69 c0 c8 00 00 00    	imul   $0xc8,%eax,%eax
 80486f7:	29 c1                	sub    %eax,%ecx
 80486f9:	89 c8                	mov    %ecx,%eax
 80486fb:	85 c0                	test   %eax,%eax
 80486fd:	75 4c                	jne    804874b <main+0xc6>
 80486ff:	e8 ed 00 00 00       	call   80487f1 <init>
 8048704:	e8 b4 fa ff ff       	call   80481bd <do_move>
 8048709:	a3 f0 d2 05 08       	mov    %eax,0x805d2f0
 804870e:	a1 f0 d2 05 08       	mov    0x805d2f0,%eax
 8048713:	83 f8 01             	cmp    $0x1,%eax
 8048716:	74 0c                	je     8048724 <main+0x9f>
 8048718:	90                   	nop
 8048719:	a1 f0 d2 05 08       	mov    0x805d2f0,%eax
 804871e:	85 c0                	test   %eax,%eax
 8048720:	75 60                	jne    8048782 <main+0xfd>
 8048722:	eb 2c                	jmp    8048750 <main+0xcb>
 8048724:	6a 04                	push   $0x4
 8048726:	6a 00                	push   $0x0
 8048728:	6a 00                	push   $0x0
 804872a:	68 c4 90 04 08       	push   $0x80490c4
 804872f:	e8 65 02 00 00       	call   8048999 <draw_string>
 8048734:	83 c4 10             	add    $0x10,%esp
 8048737:	e8 58 f9 ff ff       	call   8048094 <draw_mark>
 804873c:	e8 ce f9 ff ff       	call   804810f <draw_whole_snake>
 8048741:	e8 89 04 00 00       	call   8048bcf <display_all>
 8048746:	e8 b3 04 00 00       	call   8048bfe <time_pop>
 804874b:	e9 7b ff ff ff       	jmp    80486cb <main+0x46>
 8048750:	e8 9c 00 00 00       	call   80487f1 <init>
 8048755:	6a 05                	push   $0x5
 8048757:	6a 50                	push   $0x50
 8048759:	6a 64                	push   $0x64
 804875b:	68 d0 90 04 08       	push   $0x80490d0
 8048760:	e8 34 02 00 00       	call   8048999 <draw_string>
 8048765:	83 c4 10             	add    $0x10,%esp
 8048768:	6a 04                	push   $0x4
 804876a:	6a 64                	push   $0x64
 804876c:	6a 50                	push   $0x50
 804876e:	68 ea 90 04 08       	push   $0x80490ea
 8048773:	e8 71 02 00 00       	call   80489e9 <draw_big_string>
 8048778:	83 c4 10             	add    $0x10,%esp
 804877b:	e8 4f 04 00 00       	call   8048bcf <display_all>
 8048780:	eb 30                	jmp    80487b2 <main+0x12d>
 8048782:	e8 6a 00 00 00       	call   80487f1 <init>
 8048787:	6a 05                	push   $0x5
 8048789:	6a 50                	push   $0x50
 804878b:	6a 64                	push   $0x64
 804878d:	68 d0 90 04 08       	push   $0x80490d0
 8048792:	e8 02 02 00 00       	call   8048999 <draw_string>
 8048797:	83 c4 10             	add    $0x10,%esp
 804879a:	6a 04                	push   $0x4
 804879c:	6a 78                	push   $0x78
 804879e:	6a 50                	push   $0x50
 80487a0:	68 f4 90 04 08       	push   $0x80490f4
 80487a5:	e8 3f 02 00 00       	call   80489e9 <draw_big_string>
 80487aa:	83 c4 10             	add    $0x10,%esp
 80487ad:	e8 1d 04 00 00       	call   8048bcf <display_all>
 80487b2:	e8 74 04 00 00       	call   8048c2b <reset_last_key>
 80487b7:	e8 53 04 00 00       	call   8048c0f <last_key_code>
 80487bc:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80487bf:	83 7d f4 11          	cmpl   $0x11,-0xc(%ebp)
 80487c3:	75 02                	jne    80487c7 <main+0x142>
 80487c5:	eb 02                	jmp    80487c9 <main+0x144>
 80487c7:	eb ee                	jmp    80487b7 <main+0x132>
 80487c9:	e9 c8 fe ff ff       	jmp    8048696 <main+0x11>

080487ce <draw_pixel>:
 80487ce:	55                   	push   %ebp
 80487cf:	89 e5                	mov    %esp,%ebp
 80487d1:	8b 45 08             	mov    0x8(%ebp),%eax
 80487d4:	c1 e0 08             	shl    $0x8,%eax
 80487d7:	89 c2                	mov    %eax,%edx
 80487d9:	8b 45 08             	mov    0x8(%ebp),%eax
 80487dc:	c1 e0 06             	shl    $0x6,%eax
 80487df:	01 c2                	add    %eax,%edx
 80487e1:	8b 45 0c             	mov    0xc(%ebp),%eax
 80487e4:	01 d0                	add    %edx,%eax
 80487e6:	8b 55 10             	mov    0x10(%ebp),%edx
 80487e9:	88 90 80 a9 04 08    	mov    %dl,0x804a980(%eax)
 80487ef:	5d                   	pop    %ebp
 80487f0:	c3                   	ret    

080487f1 <init>:
 80487f1:	55                   	push   %ebp
 80487f2:	89 e5                	mov    %esp,%ebp
 80487f4:	83 ec 08             	sub    $0x8,%esp
 80487f7:	83 ec 04             	sub    $0x4,%esp
 80487fa:	68 00 fa 00 00       	push   $0xfa00
 80487ff:	6a 00                	push   $0x0
 8048801:	68 80 a9 04 08       	push   $0x804a980
 8048806:	e8 f3 07 00 00       	call   8048ffe <my_memset>
 804880b:	83 c4 10             	add    $0x10,%esp
 804880e:	c9                   	leave  
 804880f:	c3                   	ret    

08048810 <draw_character>:
 8048810:	55                   	push   %ebp
 8048811:	89 e5                	mov    %esp,%ebp
 8048813:	83 ec 14             	sub    $0x14,%esp
 8048816:	8b 45 08             	mov    0x8(%ebp),%eax
 8048819:	88 45 ec             	mov    %al,-0x14(%ebp)
 804881c:	0f be 45 ec          	movsbl -0x14(%ebp),%eax
 8048820:	c1 e0 03             	shl    $0x3,%eax
 8048823:	05 40 a5 04 08       	add    $0x804a540,%eax
 8048828:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804882b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8048832:	eb 52                	jmp    8048886 <draw_character+0x76>
 8048834:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 804883b:	eb 3f                	jmp    804887c <draw_character+0x6c>
 804883d:	8b 55 fc             	mov    -0x4(%ebp),%edx
 8048840:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048843:	01 d0                	add    %edx,%eax
 8048845:	0f b6 00             	movzbl (%eax),%eax
 8048848:	0f be d0             	movsbl %al,%edx
 804884b:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804884e:	89 c1                	mov    %eax,%ecx
 8048850:	d3 fa                	sar    %cl,%edx
 8048852:	89 d0                	mov    %edx,%eax
 8048854:	83 e0 01             	and    $0x1,%eax
 8048857:	85 c0                	test   %eax,%eax
 8048859:	74 1d                	je     8048878 <draw_character+0x68>
 804885b:	8b 55 10             	mov    0x10(%ebp),%edx
 804885e:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048861:	01 c2                	add    %eax,%edx
 8048863:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 8048866:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048869:	01 c8                	add    %ecx,%eax
 804886b:	ff 75 14             	pushl  0x14(%ebp)
 804886e:	52                   	push   %edx
 804886f:	50                   	push   %eax
 8048870:	e8 59 ff ff ff       	call   80487ce <draw_pixel>
 8048875:	83 c4 0c             	add    $0xc,%esp
 8048878:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 804887c:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
 8048880:	7e bb                	jle    804883d <draw_character+0x2d>
 8048882:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 8048886:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
 804888a:	7e a8                	jle    8048834 <draw_character+0x24>
 804888c:	c9                   	leave  
 804888d:	c3                   	ret    

0804888e <draw_character_2>:
 804888e:	55                   	push   %ebp
 804888f:	89 e5                	mov    %esp,%ebp
 8048891:	83 ec 14             	sub    $0x14,%esp
 8048894:	8b 45 08             	mov    0x8(%ebp),%eax
 8048897:	88 45 ec             	mov    %al,-0x14(%ebp)
 804889a:	0f be 45 ec          	movsbl -0x14(%ebp),%eax
 804889e:	c1 e0 03             	shl    $0x3,%eax
 80488a1:	05 40 a5 04 08       	add    $0x804a540,%eax
 80488a6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80488a9:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 80488b0:	e9 d8 00 00 00       	jmp    804898d <draw_character_2+0xff>
 80488b5:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 80488bc:	e9 be 00 00 00       	jmp    804897f <draw_character_2+0xf1>
 80488c1:	8b 55 fc             	mov    -0x4(%ebp),%edx
 80488c4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80488c7:	01 d0                	add    %edx,%eax
 80488c9:	0f b6 00             	movzbl (%eax),%eax
 80488cc:	0f be d0             	movsbl %al,%edx
 80488cf:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80488d2:	89 c1                	mov    %eax,%ecx
 80488d4:	d3 fa                	sar    %cl,%edx
 80488d6:	89 d0                	mov    %edx,%eax
 80488d8:	83 e0 01             	and    $0x1,%eax
 80488db:	85 c0                	test   %eax,%eax
 80488dd:	0f 84 98 00 00 00    	je     804897b <draw_character_2+0xed>
 80488e3:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80488e6:	8d 14 00             	lea    (%eax,%eax,1),%edx
 80488e9:	8b 45 10             	mov    0x10(%ebp),%eax
 80488ec:	01 c2                	add    %eax,%edx
 80488ee:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80488f1:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
 80488f4:	8b 45 0c             	mov    0xc(%ebp),%eax
 80488f7:	01 c8                	add    %ecx,%eax
 80488f9:	ff 75 14             	pushl  0x14(%ebp)
 80488fc:	52                   	push   %edx
 80488fd:	50                   	push   %eax
 80488fe:	e8 cb fe ff ff       	call   80487ce <draw_pixel>
 8048903:	83 c4 0c             	add    $0xc,%esp
 8048906:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048909:	8d 14 00             	lea    (%eax,%eax,1),%edx
 804890c:	8b 45 10             	mov    0x10(%ebp),%eax
 804890f:	01 c2                	add    %eax,%edx
 8048911:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048914:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
 8048917:	8b 45 0c             	mov    0xc(%ebp),%eax
 804891a:	01 c8                	add    %ecx,%eax
 804891c:	83 c0 01             	add    $0x1,%eax
 804891f:	ff 75 14             	pushl  0x14(%ebp)
 8048922:	52                   	push   %edx
 8048923:	50                   	push   %eax
 8048924:	e8 a5 fe ff ff       	call   80487ce <draw_pixel>
 8048929:	83 c4 0c             	add    $0xc,%esp
 804892c:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804892f:	8d 14 00             	lea    (%eax,%eax,1),%edx
 8048932:	8b 45 10             	mov    0x10(%ebp),%eax
 8048935:	01 d0                	add    %edx,%eax
 8048937:	8d 50 01             	lea    0x1(%eax),%edx
 804893a:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804893d:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
 8048940:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048943:	01 c8                	add    %ecx,%eax
 8048945:	83 c0 01             	add    $0x1,%eax
 8048948:	ff 75 14             	pushl  0x14(%ebp)
 804894b:	52                   	push   %edx
 804894c:	50                   	push   %eax
 804894d:	e8 7c fe ff ff       	call   80487ce <draw_pixel>
 8048952:	83 c4 0c             	add    $0xc,%esp
 8048955:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048958:	8d 14 00             	lea    (%eax,%eax,1),%edx
 804895b:	8b 45 10             	mov    0x10(%ebp),%eax
 804895e:	01 d0                	add    %edx,%eax
 8048960:	8d 50 01             	lea    0x1(%eax),%edx
 8048963:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048966:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
 8048969:	8b 45 0c             	mov    0xc(%ebp),%eax
 804896c:	01 c8                	add    %ecx,%eax
 804896e:	ff 75 14             	pushl  0x14(%ebp)
 8048971:	52                   	push   %edx
 8048972:	50                   	push   %eax
 8048973:	e8 56 fe ff ff       	call   80487ce <draw_pixel>
 8048978:	83 c4 0c             	add    $0xc,%esp
 804897b:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 804897f:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
 8048983:	0f 8e 38 ff ff ff    	jle    80488c1 <draw_character_2+0x33>
 8048989:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 804898d:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
 8048991:	0f 8e 1e ff ff ff    	jle    80488b5 <draw_character_2+0x27>
 8048997:	c9                   	leave  
 8048998:	c3                   	ret    

08048999 <draw_string>:
 8048999:	55                   	push   %ebp
 804899a:	89 e5                	mov    %esp,%ebp
 804899c:	eb 3f                	jmp    80489dd <draw_string+0x44>
 804899e:	8b 45 08             	mov    0x8(%ebp),%eax
 80489a1:	8d 50 01             	lea    0x1(%eax),%edx
 80489a4:	89 55 08             	mov    %edx,0x8(%ebp)
 80489a7:	0f b6 00             	movzbl (%eax),%eax
 80489aa:	0f be c0             	movsbl %al,%eax
 80489ad:	ff 75 14             	pushl  0x14(%ebp)
 80489b0:	ff 75 10             	pushl  0x10(%ebp)
 80489b3:	ff 75 0c             	pushl  0xc(%ebp)
 80489b6:	50                   	push   %eax
 80489b7:	e8 54 fe ff ff       	call   8048810 <draw_character>
 80489bc:	83 c4 10             	add    $0x10,%esp
 80489bf:	8b 45 10             	mov    0x10(%ebp),%eax
 80489c2:	83 c0 08             	add    $0x8,%eax
 80489c5:	3d 3f 01 00 00       	cmp    $0x13f,%eax
 80489ca:	7e 0d                	jle    80489d9 <draw_string+0x40>
 80489cc:	83 45 0c 08          	addl   $0x8,0xc(%ebp)
 80489d0:	c7 45 10 00 00 00 00 	movl   $0x0,0x10(%ebp)
 80489d7:	eb 04                	jmp    80489dd <draw_string+0x44>
 80489d9:	83 45 10 08          	addl   $0x8,0x10(%ebp)
 80489dd:	8b 45 08             	mov    0x8(%ebp),%eax
 80489e0:	0f b6 00             	movzbl (%eax),%eax
 80489e3:	84 c0                	test   %al,%al
 80489e5:	75 b7                	jne    804899e <draw_string+0x5>
 80489e7:	c9                   	leave  
 80489e8:	c3                   	ret    

080489e9 <draw_big_string>:
 80489e9:	55                   	push   %ebp
 80489ea:	89 e5                	mov    %esp,%ebp
 80489ec:	eb 3f                	jmp    8048a2d <draw_big_string+0x44>
 80489ee:	8b 45 08             	mov    0x8(%ebp),%eax
 80489f1:	8d 50 01             	lea    0x1(%eax),%edx
 80489f4:	89 55 08             	mov    %edx,0x8(%ebp)
 80489f7:	0f b6 00             	movzbl (%eax),%eax
 80489fa:	0f be c0             	movsbl %al,%eax
 80489fd:	ff 75 14             	pushl  0x14(%ebp)
 8048a00:	ff 75 10             	pushl  0x10(%ebp)
 8048a03:	ff 75 0c             	pushl  0xc(%ebp)
 8048a06:	50                   	push   %eax
 8048a07:	e8 82 fe ff ff       	call   804888e <draw_character_2>
 8048a0c:	83 c4 10             	add    $0x10,%esp
 8048a0f:	8b 45 10             	mov    0x10(%ebp),%eax
 8048a12:	83 c0 10             	add    $0x10,%eax
 8048a15:	3d 3f 01 00 00       	cmp    $0x13f,%eax
 8048a1a:	7e 0d                	jle    8048a29 <draw_big_string+0x40>
 8048a1c:	83 45 0c 10          	addl   $0x10,0xc(%ebp)
 8048a20:	c7 45 10 00 00 00 00 	movl   $0x0,0x10(%ebp)
 8048a27:	eb 04                	jmp    8048a2d <draw_big_string+0x44>
 8048a29:	83 45 10 10          	addl   $0x10,0x10(%ebp)
 8048a2d:	8b 45 08             	mov    0x8(%ebp),%eax
 8048a30:	0f b6 00             	movzbl (%eax),%eax
 8048a33:	84 c0                	test   %al,%al
 8048a35:	75 b7                	jne    80489ee <draw_big_string+0x5>
 8048a37:	c9                   	leave  
 8048a38:	c3                   	ret    

08048a39 <draw_food>:
 8048a39:	55                   	push   %ebp
 8048a3a:	89 e5                	mov    %esp,%ebp
 8048a3c:	83 ec 10             	sub    $0x10,%esp
 8048a3f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8048a46:	eb 34                	jmp    8048a7c <draw_food+0x43>
 8048a48:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048a4f:	eb 21                	jmp    8048a72 <draw_food+0x39>
 8048a51:	8b 55 0c             	mov    0xc(%ebp),%edx
 8048a54:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048a57:	01 c2                	add    %eax,%edx
 8048a59:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8048a5c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048a5f:	01 c8                	add    %ecx,%eax
 8048a61:	ff 75 10             	pushl  0x10(%ebp)
 8048a64:	52                   	push   %edx
 8048a65:	50                   	push   %eax
 8048a66:	e8 63 fd ff ff       	call   80487ce <draw_pixel>
 8048a6b:	83 c4 0c             	add    $0xc,%esp
 8048a6e:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 8048a72:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
 8048a76:	7e d9                	jle    8048a51 <draw_food+0x18>
 8048a78:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 8048a7c:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
 8048a80:	7e c6                	jle    8048a48 <draw_food+0xf>
 8048a82:	c9                   	leave  
 8048a83:	c3                   	ret    

08048a84 <draw_snake>:
 8048a84:	55                   	push   %ebp
 8048a85:	89 e5                	mov    %esp,%ebp
 8048a87:	83 ec 10             	sub    $0x10,%esp
 8048a8a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8048a91:	eb 34                	jmp    8048ac7 <draw_snake+0x43>
 8048a93:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048a9a:	eb 21                	jmp    8048abd <draw_snake+0x39>
 8048a9c:	8b 55 0c             	mov    0xc(%ebp),%edx
 8048a9f:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048aa2:	01 c2                	add    %eax,%edx
 8048aa4:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8048aa7:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048aaa:	01 c8                	add    %ecx,%eax
 8048aac:	ff 75 10             	pushl  0x10(%ebp)
 8048aaf:	52                   	push   %edx
 8048ab0:	50                   	push   %eax
 8048ab1:	e8 18 fd ff ff       	call   80487ce <draw_pixel>
 8048ab6:	83 c4 0c             	add    $0xc,%esp
 8048ab9:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 8048abd:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
 8048ac1:	7e d9                	jle    8048a9c <draw_snake+0x18>
 8048ac3:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 8048ac7:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
 8048acb:	7e c6                	jle    8048a93 <draw_snake+0xf>
 8048acd:	6a 00                	push   $0x0
 8048acf:	ff 75 0c             	pushl  0xc(%ebp)
 8048ad2:	ff 75 08             	pushl  0x8(%ebp)
 8048ad5:	e8 f4 fc ff ff       	call   80487ce <draw_pixel>
 8048ada:	83 c4 0c             	add    $0xc,%esp
 8048add:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048ae0:	83 c0 01             	add    $0x1,%eax
 8048ae3:	6a 00                	push   $0x0
 8048ae5:	50                   	push   %eax
 8048ae6:	ff 75 08             	pushl  0x8(%ebp)
 8048ae9:	e8 e0 fc ff ff       	call   80487ce <draw_pixel>
 8048aee:	83 c4 0c             	add    $0xc,%esp
 8048af1:	8b 45 08             	mov    0x8(%ebp),%eax
 8048af4:	83 c0 01             	add    $0x1,%eax
 8048af7:	6a 00                	push   $0x0
 8048af9:	ff 75 0c             	pushl  0xc(%ebp)
 8048afc:	50                   	push   %eax
 8048afd:	e8 cc fc ff ff       	call   80487ce <draw_pixel>
 8048b02:	83 c4 0c             	add    $0xc,%esp
 8048b05:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048b08:	83 c0 06             	add    $0x6,%eax
 8048b0b:	6a 00                	push   $0x0
 8048b0d:	50                   	push   %eax
 8048b0e:	ff 75 08             	pushl  0x8(%ebp)
 8048b11:	e8 b8 fc ff ff       	call   80487ce <draw_pixel>
 8048b16:	83 c4 0c             	add    $0xc,%esp
 8048b19:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048b1c:	83 c0 07             	add    $0x7,%eax
 8048b1f:	6a 00                	push   $0x0
 8048b21:	50                   	push   %eax
 8048b22:	ff 75 08             	pushl  0x8(%ebp)
 8048b25:	e8 a4 fc ff ff       	call   80487ce <draw_pixel>
 8048b2a:	83 c4 0c             	add    $0xc,%esp
 8048b2d:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048b30:	8d 50 07             	lea    0x7(%eax),%edx
 8048b33:	8b 45 08             	mov    0x8(%ebp),%eax
 8048b36:	83 c0 01             	add    $0x1,%eax
 8048b39:	6a 00                	push   $0x0
 8048b3b:	52                   	push   %edx
 8048b3c:	50                   	push   %eax
 8048b3d:	e8 8c fc ff ff       	call   80487ce <draw_pixel>
 8048b42:	83 c4 0c             	add    $0xc,%esp
 8048b45:	8b 45 08             	mov    0x8(%ebp),%eax
 8048b48:	83 c0 07             	add    $0x7,%eax
 8048b4b:	6a 00                	push   $0x0
 8048b4d:	ff 75 0c             	pushl  0xc(%ebp)
 8048b50:	50                   	push   %eax
 8048b51:	e8 78 fc ff ff       	call   80487ce <draw_pixel>
 8048b56:	83 c4 0c             	add    $0xc,%esp
 8048b59:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048b5c:	8d 50 01             	lea    0x1(%eax),%edx
 8048b5f:	8b 45 08             	mov    0x8(%ebp),%eax
 8048b62:	83 c0 07             	add    $0x7,%eax
 8048b65:	6a 00                	push   $0x0
 8048b67:	52                   	push   %edx
 8048b68:	50                   	push   %eax
 8048b69:	e8 60 fc ff ff       	call   80487ce <draw_pixel>
 8048b6e:	83 c4 0c             	add    $0xc,%esp
 8048b71:	8b 45 08             	mov    0x8(%ebp),%eax
 8048b74:	83 c0 06             	add    $0x6,%eax
 8048b77:	6a 00                	push   $0x0
 8048b79:	ff 75 0c             	pushl  0xc(%ebp)
 8048b7c:	50                   	push   %eax
 8048b7d:	e8 4c fc ff ff       	call   80487ce <draw_pixel>
 8048b82:	83 c4 0c             	add    $0xc,%esp
 8048b85:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048b88:	8d 50 06             	lea    0x6(%eax),%edx
 8048b8b:	8b 45 08             	mov    0x8(%ebp),%eax
 8048b8e:	83 c0 07             	add    $0x7,%eax
 8048b91:	6a 00                	push   $0x0
 8048b93:	52                   	push   %edx
 8048b94:	50                   	push   %eax
 8048b95:	e8 34 fc ff ff       	call   80487ce <draw_pixel>
 8048b9a:	83 c4 0c             	add    $0xc,%esp
 8048b9d:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048ba0:	8d 50 07             	lea    0x7(%eax),%edx
 8048ba3:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ba6:	83 c0 07             	add    $0x7,%eax
 8048ba9:	6a 00                	push   $0x0
 8048bab:	52                   	push   %edx
 8048bac:	50                   	push   %eax
 8048bad:	e8 1c fc ff ff       	call   80487ce <draw_pixel>
 8048bb2:	83 c4 0c             	add    $0xc,%esp
 8048bb5:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048bb8:	8d 50 07             	lea    0x7(%eax),%edx
 8048bbb:	8b 45 08             	mov    0x8(%ebp),%eax
 8048bbe:	83 c0 06             	add    $0x6,%eax
 8048bc1:	6a 00                	push   $0x0
 8048bc3:	52                   	push   %edx
 8048bc4:	50                   	push   %eax
 8048bc5:	e8 04 fc ff ff       	call   80487ce <draw_pixel>
 8048bca:	83 c4 0c             	add    $0xc,%esp
 8048bcd:	c9                   	leave  
 8048bce:	c3                   	ret    

08048bcf <display_all>:
 8048bcf:	55                   	push   %ebp
 8048bd0:	89 e5                	mov    %esp,%ebp
 8048bd2:	b8 04 00 00 00       	mov    $0x4,%eax
 8048bd7:	ba 80 a9 04 08       	mov    $0x804a980,%edx
 8048bdc:	89 d3                	mov    %edx,%ebx
 8048bde:	cd 80                	int    $0x80
 8048be0:	5d                   	pop    %ebp
 8048be1:	c3                   	ret    

08048be2 <get_time>:
 8048be2:	55                   	push   %ebp
 8048be3:	89 e5                	mov    %esp,%ebp
 8048be5:	83 ec 10             	sub    $0x10,%esp
 8048be8:	b8 02 00 00 00       	mov    $0x2,%eax
 8048bed:	bb 00 00 00 00       	mov    $0x0,%ebx
 8048bf2:	cd 80                	int    $0x80
 8048bf4:	89 c0                	mov    %eax,%eax
 8048bf6:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048bf9:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048bfc:	c9                   	leave  
 8048bfd:	c3                   	ret    

08048bfe <time_pop>:
 8048bfe:	55                   	push   %ebp
 8048bff:	89 e5                	mov    %esp,%ebp
 8048c01:	b8 02 00 00 00       	mov    $0x2,%eax
 8048c06:	bb 01 00 00 00       	mov    $0x1,%ebx
 8048c0b:	cd 80                	int    $0x80
 8048c0d:	5d                   	pop    %ebp
 8048c0e:	c3                   	ret    

08048c0f <last_key_code>:
 8048c0f:	55                   	push   %ebp
 8048c10:	89 e5                	mov    %esp,%ebp
 8048c12:	83 ec 10             	sub    $0x10,%esp
 8048c15:	b8 03 00 00 00       	mov    $0x3,%eax
 8048c1a:	bb 00 00 00 00       	mov    $0x0,%ebx
 8048c1f:	cd 80                	int    $0x80
 8048c21:	89 c0                	mov    %eax,%eax
 8048c23:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048c26:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048c29:	c9                   	leave  
 8048c2a:	c3                   	ret    

08048c2b <reset_last_key>:
 8048c2b:	55                   	push   %ebp
 8048c2c:	89 e5                	mov    %esp,%ebp
 8048c2e:	b8 03 00 00 00       	mov    $0x3,%eax
 8048c33:	bb 01 00 00 00       	mov    $0x1,%ebx
 8048c38:	cd 80                	int    $0x80
 8048c3a:	5d                   	pop    %ebp
 8048c3b:	c3                   	ret    

08048c3c <change>:
 8048c3c:	55                   	push   %ebp
 8048c3d:	89 e5                	mov    %esp,%ebp
 8048c3f:	53                   	push   %ebx
 8048c40:	83 c4 80             	add    $0xffffff80,%esp
 8048c43:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048c4a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048c51:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c54:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8048c57:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 8048c5b:	75 14                	jne    8048c71 <change+0x35>
 8048c5d:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048c60:	c6 00 30             	movb   $0x30,(%eax)
 8048c63:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048c66:	83 c0 01             	add    $0x1,%eax
 8048c69:	c6 00 00             	movb   $0x0,(%eax)
 8048c6c:	e9 a5 00 00 00       	jmp    8048d16 <change+0xda>
 8048c71:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 8048c75:	79 1d                	jns    8048c94 <change+0x58>
 8048c77:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048c7a:	8d 50 01             	lea    0x1(%eax),%edx
 8048c7d:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048c80:	89 c2                	mov    %eax,%edx
 8048c82:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048c85:	01 d0                	add    %edx,%eax
 8048c87:	c6 00 2d             	movb   $0x2d,(%eax)
 8048c8a:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048c8d:	f7 d8                	neg    %eax
 8048c8f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048c92:	eb 06                	jmp    8048c9a <change+0x5e>
 8048c94:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048c97:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048c9a:	eb 40                	jmp    8048cdc <change+0xa0>
 8048c9c:	8b 4d f8             	mov    -0x8(%ebp),%ecx
 8048c9f:	8d 41 01             	lea    0x1(%ecx),%eax
 8048ca2:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048ca5:	8b 5d f0             	mov    -0x10(%ebp),%ebx
 8048ca8:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
 8048cad:	89 d8                	mov    %ebx,%eax
 8048caf:	f7 e2                	mul    %edx
 8048cb1:	c1 ea 03             	shr    $0x3,%edx
 8048cb4:	89 d0                	mov    %edx,%eax
 8048cb6:	c1 e0 02             	shl    $0x2,%eax
 8048cb9:	01 d0                	add    %edx,%eax
 8048cbb:	01 c0                	add    %eax,%eax
 8048cbd:	29 c3                	sub    %eax,%ebx
 8048cbf:	89 da                	mov    %ebx,%edx
 8048cc1:	89 d0                	mov    %edx,%eax
 8048cc3:	83 c0 30             	add    $0x30,%eax
 8048cc6:	88 44 0d 88          	mov    %al,-0x78(%ebp,%ecx,1)
 8048cca:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048ccd:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
 8048cd2:	f7 e2                	mul    %edx
 8048cd4:	89 d0                	mov    %edx,%eax
 8048cd6:	c1 e8 03             	shr    $0x3,%eax
 8048cd9:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048cdc:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8048ce0:	75 ba                	jne    8048c9c <change+0x60>
 8048ce2:	eb 21                	jmp    8048d05 <change+0xc9>
 8048ce4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048ce7:	8d 50 01             	lea    0x1(%eax),%edx
 8048cea:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048ced:	89 c2                	mov    %eax,%edx
 8048cef:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048cf2:	01 c2                	add    %eax,%edx
 8048cf4:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
 8048cf8:	8d 4d 88             	lea    -0x78(%ebp),%ecx
 8048cfb:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048cfe:	01 c8                	add    %ecx,%eax
 8048d00:	0f b6 00             	movzbl (%eax),%eax
 8048d03:	88 02                	mov    %al,(%edx)
 8048d05:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
 8048d09:	75 d9                	jne    8048ce4 <change+0xa8>
 8048d0b:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048d0e:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048d11:	01 d0                	add    %edx,%eax
 8048d13:	c6 00 00             	movb   $0x0,(%eax)
 8048d16:	83 ec 80             	sub    $0xffffff80,%esp
 8048d19:	5b                   	pop    %ebx
 8048d1a:	5d                   	pop    %ebp
 8048d1b:	c3                   	ret    

08048d1c <change_x>:
 8048d1c:	55                   	push   %ebp
 8048d1d:	89 e5                	mov    %esp,%ebp
 8048d1f:	83 ec 70             	sub    $0x70,%esp
 8048d22:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8048d29:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048d30:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d33:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048d36:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8048d3a:	75 11                	jne    8048d4d <change_x+0x31>
 8048d3c:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048d3f:	c6 00 30             	movb   $0x30,(%eax)
 8048d42:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048d45:	83 c0 01             	add    $0x1,%eax
 8048d48:	c6 00 00             	movb   $0x0,(%eax)
 8048d4b:	eb 7e                	jmp    8048dcb <change_x+0xaf>
 8048d4d:	eb 42                	jmp    8048d91 <change_x+0x75>
 8048d4f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048d52:	83 e0 0f             	and    $0xf,%eax
 8048d55:	83 f8 09             	cmp    $0x9,%eax
 8048d58:	77 18                	ja     8048d72 <change_x+0x56>
 8048d5a:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048d5d:	8d 50 01             	lea    0x1(%eax),%edx
 8048d60:	89 55 fc             	mov    %edx,-0x4(%ebp)
 8048d63:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048d66:	83 e2 0f             	and    $0xf,%edx
 8048d69:	83 c2 30             	add    $0x30,%edx
 8048d6c:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
 8048d70:	eb 16                	jmp    8048d88 <change_x+0x6c>
 8048d72:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048d75:	8d 50 01             	lea    0x1(%eax),%edx
 8048d78:	89 55 fc             	mov    %edx,-0x4(%ebp)
 8048d7b:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048d7e:	83 e2 0f             	and    $0xf,%edx
 8048d81:	83 c2 37             	add    $0x37,%edx
 8048d84:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
 8048d88:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048d8b:	c1 e8 04             	shr    $0x4,%eax
 8048d8e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048d91:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8048d95:	75 b8                	jne    8048d4f <change_x+0x33>
 8048d97:	eb 21                	jmp    8048dba <change_x+0x9e>
 8048d99:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048d9c:	8d 50 01             	lea    0x1(%eax),%edx
 8048d9f:	89 55 f8             	mov    %edx,-0x8(%ebp)
 8048da2:	89 c2                	mov    %eax,%edx
 8048da4:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048da7:	01 c2                	add    %eax,%edx
 8048da9:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
 8048dad:	8d 4d 90             	lea    -0x70(%ebp),%ecx
 8048db0:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048db3:	01 c8                	add    %ecx,%eax
 8048db5:	0f b6 00             	movzbl (%eax),%eax
 8048db8:	88 02                	mov    %al,(%edx)
 8048dba:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
 8048dbe:	75 d9                	jne    8048d99 <change_x+0x7d>
 8048dc0:	8b 55 f8             	mov    -0x8(%ebp),%edx
 8048dc3:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048dc6:	01 d0                	add    %edx,%eax
 8048dc8:	c6 00 00             	movb   $0x0,(%eax)
 8048dcb:	c9                   	leave  
 8048dcc:	c3                   	ret    

08048dcd <v_fprintf>:
 8048dcd:	55                   	push   %ebp
 8048dce:	89 e5                	mov    %esp,%ebp
 8048dd0:	81 ec 88 00 00 00    	sub    $0x88,%esp
 8048dd6:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048dd9:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8048ddc:	8b 45 10             	mov    0x10(%ebp),%eax
 8048ddf:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048de2:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8048de9:	e9 61 01 00 00       	jmp    8048f4f <v_fprintf+0x182>
 8048dee:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048df1:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048df4:	01 d0                	add    %edx,%eax
 8048df6:	0f b6 00             	movzbl (%eax),%eax
 8048df9:	3c 25                	cmp    $0x25,%al
 8048dfb:	74 27                	je     8048e24 <v_fprintf+0x57>
 8048dfd:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048e00:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048e03:	01 d0                	add    %edx,%eax
 8048e05:	0f b6 00             	movzbl (%eax),%eax
 8048e08:	88 45 eb             	mov    %al,-0x15(%ebp)
 8048e0b:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
 8048e0f:	83 ec 0c             	sub    $0xc,%esp
 8048e12:	50                   	push   %eax
 8048e13:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e16:	ff d0                	call   *%eax
 8048e18:	83 c4 10             	add    $0x10,%esp
 8048e1b:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048e1f:	e9 2b 01 00 00       	jmp    8048f4f <v_fprintf+0x182>
 8048e24:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048e28:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048e2b:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048e2e:	01 d0                	add    %edx,%eax
 8048e30:	0f b6 00             	movzbl (%eax),%eax
 8048e33:	3c 25                	cmp    $0x25,%al
 8048e35:	75 16                	jne    8048e4d <v_fprintf+0x80>
 8048e37:	83 ec 0c             	sub    $0xc,%esp
 8048e3a:	6a 25                	push   $0x25
 8048e3c:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e3f:	ff d0                	call   *%eax
 8048e41:	83 c4 10             	add    $0x10,%esp
 8048e44:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048e48:	e9 02 01 00 00       	jmp    8048f4f <v_fprintf+0x182>
 8048e4d:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048e50:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048e53:	01 d0                	add    %edx,%eax
 8048e55:	0f b6 00             	movzbl (%eax),%eax
 8048e58:	3c 63                	cmp    $0x63,%al
 8048e5a:	75 26                	jne    8048e82 <v_fprintf+0xb5>
 8048e5c:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048e60:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e63:	0f b6 00             	movzbl (%eax),%eax
 8048e66:	88 45 eb             	mov    %al,-0x15(%ebp)
 8048e69:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
 8048e6d:	83 ec 0c             	sub    $0xc,%esp
 8048e70:	50                   	push   %eax
 8048e71:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e74:	ff d0                	call   *%eax
 8048e76:	83 c4 10             	add    $0x10,%esp
 8048e79:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 8048e7d:	e9 cd 00 00 00       	jmp    8048f4f <v_fprintf+0x182>
 8048e82:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048e85:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048e88:	01 d0                	add    %edx,%eax
 8048e8a:	0f b6 00             	movzbl (%eax),%eax
 8048e8d:	3c 64                	cmp    $0x64,%al
 8048e8f:	75 36                	jne    8048ec7 <v_fprintf+0xfa>
 8048e91:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048e95:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e98:	8b 00                	mov    (%eax),%eax
 8048e9a:	83 ec 08             	sub    $0x8,%esp
 8048e9d:	8d 55 87             	lea    -0x79(%ebp),%edx
 8048ea0:	52                   	push   %edx
 8048ea1:	50                   	push   %eax
 8048ea2:	e8 95 fd ff ff       	call   8048c3c <change>
 8048ea7:	83 c4 10             	add    $0x10,%esp
 8048eaa:	83 ec 04             	sub    $0x4,%esp
 8048ead:	6a 00                	push   $0x0
 8048eaf:	8d 45 87             	lea    -0x79(%ebp),%eax
 8048eb2:	50                   	push   %eax
 8048eb3:	ff 75 08             	pushl  0x8(%ebp)
 8048eb6:	e8 12 ff ff ff       	call   8048dcd <v_fprintf>
 8048ebb:	83 c4 10             	add    $0x10,%esp
 8048ebe:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 8048ec2:	e9 88 00 00 00       	jmp    8048f4f <v_fprintf+0x182>
 8048ec7:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048eca:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048ecd:	01 d0                	add    %edx,%eax
 8048ecf:	0f b6 00             	movzbl (%eax),%eax
 8048ed2:	3c 78                	cmp    $0x78,%al
 8048ed4:	75 33                	jne    8048f09 <v_fprintf+0x13c>
 8048ed6:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048eda:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048edd:	8b 00                	mov    (%eax),%eax
 8048edf:	83 ec 08             	sub    $0x8,%esp
 8048ee2:	8d 55 87             	lea    -0x79(%ebp),%edx
 8048ee5:	52                   	push   %edx
 8048ee6:	50                   	push   %eax
 8048ee7:	e8 30 fe ff ff       	call   8048d1c <change_x>
 8048eec:	83 c4 10             	add    $0x10,%esp
 8048eef:	83 ec 04             	sub    $0x4,%esp
 8048ef2:	6a 00                	push   $0x0
 8048ef4:	8d 45 87             	lea    -0x79(%ebp),%eax
 8048ef7:	50                   	push   %eax
 8048ef8:	ff 75 08             	pushl  0x8(%ebp)
 8048efb:	e8 cd fe ff ff       	call   8048dcd <v_fprintf>
 8048f00:	83 c4 10             	add    $0x10,%esp
 8048f03:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 8048f07:	eb 46                	jmp    8048f4f <v_fprintf+0x182>
 8048f09:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048f0c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048f0f:	01 d0                	add    %edx,%eax
 8048f11:	0f b6 00             	movzbl (%eax),%eax
 8048f14:	3c 73                	cmp    $0x73,%al
 8048f16:	75 20                	jne    8048f38 <v_fprintf+0x16b>
 8048f18:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048f1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048f1f:	8b 00                	mov    (%eax),%eax
 8048f21:	83 ec 04             	sub    $0x4,%esp
 8048f24:	6a 00                	push   $0x0
 8048f26:	50                   	push   %eax
 8048f27:	ff 75 08             	pushl  0x8(%ebp)
 8048f2a:	e8 9e fe ff ff       	call   8048dcd <v_fprintf>
 8048f2f:	83 c4 10             	add    $0x10,%esp
 8048f32:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 8048f36:	eb 17                	jmp    8048f4f <v_fprintf+0x182>
 8048f38:	83 ec 04             	sub    $0x4,%esp
 8048f3b:	6a 00                	push   $0x0
 8048f3d:	68 fc 90 04 08       	push   $0x80490fc
 8048f42:	ff 75 08             	pushl  0x8(%ebp)
 8048f45:	e8 83 fe ff ff       	call   8048dcd <v_fprintf>
 8048f4a:	83 c4 10             	add    $0x10,%esp
 8048f4d:	eb 13                	jmp    8048f62 <v_fprintf+0x195>
 8048f4f:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048f52:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048f55:	01 d0                	add    %edx,%eax
 8048f57:	0f b6 00             	movzbl (%eax),%eax
 8048f5a:	84 c0                	test   %al,%al
 8048f5c:	0f 85 8c fe ff ff    	jne    8048dee <v_fprintf+0x21>
 8048f62:	c9                   	leave  
 8048f63:	c3                   	ret    

08048f64 <put_buffer>:
 8048f64:	55                   	push   %ebp
 8048f65:	89 e5                	mov    %esp,%ebp
 8048f67:	83 ec 04             	sub    $0x4,%esp
 8048f6a:	8b 45 08             	mov    0x8(%ebp),%eax
 8048f6d:	88 45 fc             	mov    %al,-0x4(%ebp)
 8048f70:	a1 00 d3 05 08       	mov    0x805d300,%eax
 8048f75:	8d 50 01             	lea    0x1(%eax),%edx
 8048f78:	89 15 00 d3 05 08    	mov    %edx,0x805d300
 8048f7e:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
 8048f82:	88 90 40 d3 05 08    	mov    %dl,0x805d340(%eax)
 8048f88:	c9                   	leave  
 8048f89:	c3                   	ret    

08048f8a <print>:
 8048f8a:	55                   	push   %ebp
 8048f8b:	89 e5                	mov    %esp,%ebp
 8048f8d:	53                   	push   %ebx
 8048f8e:	83 ec 14             	sub    $0x14,%esp
 8048f91:	8d 45 0c             	lea    0xc(%ebp),%eax
 8048f94:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048f97:	c7 05 00 d3 05 08 00 	movl   $0x0,0x805d300
 8048f9e:	00 00 00 
 8048fa1:	8b 45 08             	mov    0x8(%ebp),%eax
 8048fa4:	83 ec 04             	sub    $0x4,%esp
 8048fa7:	ff 75 f4             	pushl  -0xc(%ebp)
 8048faa:	50                   	push   %eax
 8048fab:	68 64 8f 04 08       	push   $0x8048f64
 8048fb0:	e8 18 fe ff ff       	call   8048dcd <v_fprintf>
 8048fb5:	83 c4 10             	add    $0x10,%esp
 8048fb8:	a1 00 d3 05 08       	mov    0x805d300,%eax
 8048fbd:	c6 80 40 d3 05 08 00 	movb   $0x0,0x805d340(%eax)
 8048fc4:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 8048fcb:	ba 40 d3 05 08       	mov    $0x805d340,%edx
 8048fd0:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048fd3:	bb 01 00 00 00       	mov    $0x1,%ebx
 8048fd8:	89 d1                	mov    %edx,%ecx
 8048fda:	cd 80                	int    $0x80
 8048fdc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048fdf:	c9                   	leave  
 8048fe0:	c3                   	ret    

08048fe1 <my_memcpy>:
 8048fe1:	55                   	push   %ebp
 8048fe2:	89 e5                	mov    %esp,%ebp
 8048fe4:	57                   	push   %edi
 8048fe5:	56                   	push   %esi
 8048fe6:	53                   	push   %ebx
 8048fe7:	8b 45 10             	mov    0x10(%ebp),%eax
 8048fea:	8b 55 0c             	mov    0xc(%ebp),%edx
 8048fed:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8048ff0:	89 c1                	mov    %eax,%ecx
 8048ff2:	89 d6                	mov    %edx,%esi
 8048ff4:	89 df                	mov    %ebx,%edi
 8048ff6:	fc                   	cld    
 8048ff7:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 8048ff9:	5b                   	pop    %ebx
 8048ffa:	5e                   	pop    %esi
 8048ffb:	5f                   	pop    %edi
 8048ffc:	5d                   	pop    %ebp
 8048ffd:	c3                   	ret    

08048ffe <my_memset>:
 8048ffe:	55                   	push   %ebp
 8048fff:	89 e5                	mov    %esp,%ebp
 8049001:	57                   	push   %edi
 8049002:	53                   	push   %ebx
 8049003:	8b 55 10             	mov    0x10(%ebp),%edx
 8049006:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049009:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804900c:	89 d1                	mov    %edx,%ecx
 804900e:	89 df                	mov    %ebx,%edi
 8049010:	fc                   	cld    
 8049011:	f3 aa                	rep stos %al,%es:(%edi)
 8049013:	5b                   	pop    %ebx
 8049014:	5f                   	pop    %edi
 8049015:	5d                   	pop    %ebp
 8049016:	c3                   	ret    

08049017 <srand>:
 8049017:	55                   	push   %ebp
 8049018:	89 e5                	mov    %esp,%ebp
 804901a:	8b 45 08             	mov    0x8(%ebp),%eax
 804901d:	a3 80 a3 05 08       	mov    %eax,0x805a380
 8049022:	5d                   	pop    %ebp
 8049023:	c3                   	ret    

08049024 <rand>:
 8049024:	55                   	push   %ebp
 8049025:	89 e5                	mov    %esp,%ebp
 8049027:	a1 80 a3 05 08       	mov    0x805a380,%eax
 804902c:	69 c0 35 4e 5a 01    	imul   $0x15a4e35,%eax,%eax
 8049032:	83 c0 01             	add    $0x1,%eax
 8049035:	a3 80 a3 05 08       	mov    %eax,0x805a380
 804903a:	a1 80 a3 05 08       	mov    0x805a380,%eax
 804903f:	c1 f8 10             	sar    $0x10,%eax
 8049042:	25 ff 7f 00 00       	and    $0x7fff,%eax
 8049047:	5d                   	pop    %ebp
 8049048:	c3                   	ret    

08049049 <getpid>:
 8049049:	55                   	push   %ebp
 804904a:	89 e5                	mov    %esp,%ebp
 804904c:	83 ec 10             	sub    $0x10,%esp
 804904f:	b8 06 00 00 00       	mov    $0x6,%eax
 8049054:	cd 80                	int    $0x80
 8049056:	89 c0                	mov    %eax,%eax
 8049058:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804905b:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804905e:	c9                   	leave  
 804905f:	c3                   	ret    

08049060 <my_sleep>:
 8049060:	55                   	push   %ebp
 8049061:	89 e5                	mov    %esp,%ebp
 8049063:	53                   	push   %ebx
 8049064:	b8 07 00 00 00       	mov    $0x7,%eax
 8049069:	8b 55 08             	mov    0x8(%ebp),%edx
 804906c:	89 d3                	mov    %edx,%ebx
 804906e:	cd 80                	int    $0x80
 8049070:	5b                   	pop    %ebx
 8049071:	5d                   	pop    %ebp
 8049072:	c3                   	ret    

08049073 <my_exit>:
 8049073:	55                   	push   %ebp
 8049074:	89 e5                	mov    %esp,%ebp
 8049076:	b8 05 00 00 00       	mov    $0x5,%eax
 804907b:	cd 80                	int    $0x80
 804907d:	5d                   	pop    %ebp
 804907e:	c3                   	ret    
