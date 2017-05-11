
test:     file format elf32-i386


Disassembly of section .text:

08048094 <change>:
 8048094:	55                   	push   %ebp
 8048095:	89 e5                	mov    %esp,%ebp
 8048097:	53                   	push   %ebx
 8048098:	83 c4 80             	add    $0xffffff80,%esp
 804809b:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 80480a2:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 80480a9:	8b 45 08             	mov    0x8(%ebp),%eax
 80480ac:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80480af:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 80480b3:	75 14                	jne    80480c9 <change+0x35>
 80480b5:	8b 45 0c             	mov    0xc(%ebp),%eax
 80480b8:	c6 00 30             	movb   $0x30,(%eax)
 80480bb:	8b 45 0c             	mov    0xc(%ebp),%eax
 80480be:	83 c0 01             	add    $0x1,%eax
 80480c1:	c6 00 00             	movb   $0x0,(%eax)
 80480c4:	e9 a5 00 00 00       	jmp    804816e <change+0xda>
 80480c9:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 80480cd:	79 1d                	jns    80480ec <change+0x58>
 80480cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80480d2:	8d 50 01             	lea    0x1(%eax),%edx
 80480d5:	89 55 f4             	mov    %edx,-0xc(%ebp)
 80480d8:	89 c2                	mov    %eax,%edx
 80480da:	8b 45 0c             	mov    0xc(%ebp),%eax
 80480dd:	01 d0                	add    %edx,%eax
 80480df:	c6 00 2d             	movb   $0x2d,(%eax)
 80480e2:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80480e5:	f7 d8                	neg    %eax
 80480e7:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80480ea:	eb 06                	jmp    80480f2 <change+0x5e>
 80480ec:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80480ef:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80480f2:	eb 40                	jmp    8048134 <change+0xa0>
 80480f4:	8b 4d f8             	mov    -0x8(%ebp),%ecx
 80480f7:	8d 41 01             	lea    0x1(%ecx),%eax
 80480fa:	89 45 f8             	mov    %eax,-0x8(%ebp)
 80480fd:	8b 5d f0             	mov    -0x10(%ebp),%ebx
 8048100:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
 8048105:	89 d8                	mov    %ebx,%eax
 8048107:	f7 e2                	mul    %edx
 8048109:	c1 ea 03             	shr    $0x3,%edx
 804810c:	89 d0                	mov    %edx,%eax
 804810e:	c1 e0 02             	shl    $0x2,%eax
 8048111:	01 d0                	add    %edx,%eax
 8048113:	01 c0                	add    %eax,%eax
 8048115:	29 c3                	sub    %eax,%ebx
 8048117:	89 da                	mov    %ebx,%edx
 8048119:	89 d0                	mov    %edx,%eax
 804811b:	83 c0 30             	add    $0x30,%eax
 804811e:	88 44 0d 88          	mov    %al,-0x78(%ebp,%ecx,1)
 8048122:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048125:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
 804812a:	f7 e2                	mul    %edx
 804812c:	89 d0                	mov    %edx,%eax
 804812e:	c1 e8 03             	shr    $0x3,%eax
 8048131:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048134:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8048138:	75 ba                	jne    80480f4 <change+0x60>
 804813a:	eb 21                	jmp    804815d <change+0xc9>
 804813c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804813f:	8d 50 01             	lea    0x1(%eax),%edx
 8048142:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048145:	89 c2                	mov    %eax,%edx
 8048147:	8b 45 0c             	mov    0xc(%ebp),%eax
 804814a:	01 c2                	add    %eax,%edx
 804814c:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
 8048150:	8d 4d 88             	lea    -0x78(%ebp),%ecx
 8048153:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048156:	01 c8                	add    %ecx,%eax
 8048158:	0f b6 00             	movzbl (%eax),%eax
 804815b:	88 02                	mov    %al,(%edx)
 804815d:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
 8048161:	75 d9                	jne    804813c <change+0xa8>
 8048163:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048166:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048169:	01 d0                	add    %edx,%eax
 804816b:	c6 00 00             	movb   $0x0,(%eax)
 804816e:	83 ec 80             	sub    $0xffffff80,%esp
 8048171:	5b                   	pop    %ebx
 8048172:	5d                   	pop    %ebp
 8048173:	c3                   	ret    

08048174 <change_x>:
 8048174:	55                   	push   %ebp
 8048175:	89 e5                	mov    %esp,%ebp
 8048177:	83 ec 70             	sub    $0x70,%esp
 804817a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8048181:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048188:	8b 45 08             	mov    0x8(%ebp),%eax
 804818b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804818e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8048192:	75 11                	jne    80481a5 <change_x+0x31>
 8048194:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048197:	c6 00 30             	movb   $0x30,(%eax)
 804819a:	8b 45 0c             	mov    0xc(%ebp),%eax
 804819d:	83 c0 01             	add    $0x1,%eax
 80481a0:	c6 00 00             	movb   $0x0,(%eax)
 80481a3:	eb 7e                	jmp    8048223 <change_x+0xaf>
 80481a5:	eb 42                	jmp    80481e9 <change_x+0x75>
 80481a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80481aa:	83 e0 0f             	and    $0xf,%eax
 80481ad:	83 f8 09             	cmp    $0x9,%eax
 80481b0:	77 18                	ja     80481ca <change_x+0x56>
 80481b2:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80481b5:	8d 50 01             	lea    0x1(%eax),%edx
 80481b8:	89 55 fc             	mov    %edx,-0x4(%ebp)
 80481bb:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80481be:	83 e2 0f             	and    $0xf,%edx
 80481c1:	83 c2 30             	add    $0x30,%edx
 80481c4:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
 80481c8:	eb 16                	jmp    80481e0 <change_x+0x6c>
 80481ca:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80481cd:	8d 50 01             	lea    0x1(%eax),%edx
 80481d0:	89 55 fc             	mov    %edx,-0x4(%ebp)
 80481d3:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80481d6:	83 e2 0f             	and    $0xf,%edx
 80481d9:	83 c2 37             	add    $0x37,%edx
 80481dc:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
 80481e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80481e3:	c1 e8 04             	shr    $0x4,%eax
 80481e6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80481e9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 80481ed:	75 b8                	jne    80481a7 <change_x+0x33>
 80481ef:	eb 21                	jmp    8048212 <change_x+0x9e>
 80481f1:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80481f4:	8d 50 01             	lea    0x1(%eax),%edx
 80481f7:	89 55 f8             	mov    %edx,-0x8(%ebp)
 80481fa:	89 c2                	mov    %eax,%edx
 80481fc:	8b 45 0c             	mov    0xc(%ebp),%eax
 80481ff:	01 c2                	add    %eax,%edx
 8048201:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
 8048205:	8d 4d 90             	lea    -0x70(%ebp),%ecx
 8048208:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804820b:	01 c8                	add    %ecx,%eax
 804820d:	0f b6 00             	movzbl (%eax),%eax
 8048210:	88 02                	mov    %al,(%edx)
 8048212:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
 8048216:	75 d9                	jne    80481f1 <change_x+0x7d>
 8048218:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804821b:	8b 45 0c             	mov    0xc(%ebp),%eax
 804821e:	01 d0                	add    %edx,%eax
 8048220:	c6 00 00             	movb   $0x0,(%eax)
 8048223:	c9                   	leave  
 8048224:	c3                   	ret    

08048225 <v_fprintf>:
 8048225:	55                   	push   %ebp
 8048226:	89 e5                	mov    %esp,%ebp
 8048228:	81 ec 88 00 00 00    	sub    $0x88,%esp
 804822e:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048231:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8048234:	8b 45 10             	mov    0x10(%ebp),%eax
 8048237:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804823a:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8048241:	e9 61 01 00 00       	jmp    80483a7 <v_fprintf+0x182>
 8048246:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048249:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804824c:	01 d0                	add    %edx,%eax
 804824e:	0f b6 00             	movzbl (%eax),%eax
 8048251:	3c 25                	cmp    $0x25,%al
 8048253:	74 27                	je     804827c <v_fprintf+0x57>
 8048255:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048258:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804825b:	01 d0                	add    %edx,%eax
 804825d:	0f b6 00             	movzbl (%eax),%eax
 8048260:	88 45 eb             	mov    %al,-0x15(%ebp)
 8048263:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
 8048267:	83 ec 0c             	sub    $0xc,%esp
 804826a:	50                   	push   %eax
 804826b:	8b 45 08             	mov    0x8(%ebp),%eax
 804826e:	ff d0                	call   *%eax
 8048270:	83 c4 10             	add    $0x10,%esp
 8048273:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048277:	e9 2b 01 00 00       	jmp    80483a7 <v_fprintf+0x182>
 804827c:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048280:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048283:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048286:	01 d0                	add    %edx,%eax
 8048288:	0f b6 00             	movzbl (%eax),%eax
 804828b:	3c 25                	cmp    $0x25,%al
 804828d:	75 16                	jne    80482a5 <v_fprintf+0x80>
 804828f:	83 ec 0c             	sub    $0xc,%esp
 8048292:	6a 25                	push   $0x25
 8048294:	8b 45 08             	mov    0x8(%ebp),%eax
 8048297:	ff d0                	call   *%eax
 8048299:	83 c4 10             	add    $0x10,%esp
 804829c:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 80482a0:	e9 02 01 00 00       	jmp    80483a7 <v_fprintf+0x182>
 80482a5:	8b 55 f0             	mov    -0x10(%ebp),%edx
 80482a8:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80482ab:	01 d0                	add    %edx,%eax
 80482ad:	0f b6 00             	movzbl (%eax),%eax
 80482b0:	3c 63                	cmp    $0x63,%al
 80482b2:	75 26                	jne    80482da <v_fprintf+0xb5>
 80482b4:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 80482b8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80482bb:	0f b6 00             	movzbl (%eax),%eax
 80482be:	88 45 eb             	mov    %al,-0x15(%ebp)
 80482c1:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
 80482c5:	83 ec 0c             	sub    $0xc,%esp
 80482c8:	50                   	push   %eax
 80482c9:	8b 45 08             	mov    0x8(%ebp),%eax
 80482cc:	ff d0                	call   *%eax
 80482ce:	83 c4 10             	add    $0x10,%esp
 80482d1:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 80482d5:	e9 cd 00 00 00       	jmp    80483a7 <v_fprintf+0x182>
 80482da:	8b 55 f0             	mov    -0x10(%ebp),%edx
 80482dd:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80482e0:	01 d0                	add    %edx,%eax
 80482e2:	0f b6 00             	movzbl (%eax),%eax
 80482e5:	3c 64                	cmp    $0x64,%al
 80482e7:	75 36                	jne    804831f <v_fprintf+0xfa>
 80482e9:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 80482ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80482f0:	8b 00                	mov    (%eax),%eax
 80482f2:	83 ec 08             	sub    $0x8,%esp
 80482f5:	8d 55 87             	lea    -0x79(%ebp),%edx
 80482f8:	52                   	push   %edx
 80482f9:	50                   	push   %eax
 80482fa:	e8 95 fd ff ff       	call   8048094 <change>
 80482ff:	83 c4 10             	add    $0x10,%esp
 8048302:	83 ec 04             	sub    $0x4,%esp
 8048305:	6a 00                	push   $0x0
 8048307:	8d 45 87             	lea    -0x79(%ebp),%eax
 804830a:	50                   	push   %eax
 804830b:	ff 75 08             	pushl  0x8(%ebp)
 804830e:	e8 12 ff ff ff       	call   8048225 <v_fprintf>
 8048313:	83 c4 10             	add    $0x10,%esp
 8048316:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 804831a:	e9 88 00 00 00       	jmp    80483a7 <v_fprintf+0x182>
 804831f:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048322:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048325:	01 d0                	add    %edx,%eax
 8048327:	0f b6 00             	movzbl (%eax),%eax
 804832a:	3c 78                	cmp    $0x78,%al
 804832c:	75 33                	jne    8048361 <v_fprintf+0x13c>
 804832e:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048332:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048335:	8b 00                	mov    (%eax),%eax
 8048337:	83 ec 08             	sub    $0x8,%esp
 804833a:	8d 55 87             	lea    -0x79(%ebp),%edx
 804833d:	52                   	push   %edx
 804833e:	50                   	push   %eax
 804833f:	e8 30 fe ff ff       	call   8048174 <change_x>
 8048344:	83 c4 10             	add    $0x10,%esp
 8048347:	83 ec 04             	sub    $0x4,%esp
 804834a:	6a 00                	push   $0x0
 804834c:	8d 45 87             	lea    -0x79(%ebp),%eax
 804834f:	50                   	push   %eax
 8048350:	ff 75 08             	pushl  0x8(%ebp)
 8048353:	e8 cd fe ff ff       	call   8048225 <v_fprintf>
 8048358:	83 c4 10             	add    $0x10,%esp
 804835b:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 804835f:	eb 46                	jmp    80483a7 <v_fprintf+0x182>
 8048361:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048364:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048367:	01 d0                	add    %edx,%eax
 8048369:	0f b6 00             	movzbl (%eax),%eax
 804836c:	3c 73                	cmp    $0x73,%al
 804836e:	75 20                	jne    8048390 <v_fprintf+0x16b>
 8048370:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048374:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048377:	8b 00                	mov    (%eax),%eax
 8048379:	83 ec 04             	sub    $0x4,%esp
 804837c:	6a 00                	push   $0x0
 804837e:	50                   	push   %eax
 804837f:	ff 75 08             	pushl  0x8(%ebp)
 8048382:	e8 9e fe ff ff       	call   8048225 <v_fprintf>
 8048387:	83 c4 10             	add    $0x10,%esp
 804838a:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 804838e:	eb 17                	jmp    80483a7 <v_fprintf+0x182>
 8048390:	83 ec 04             	sub    $0x4,%esp
 8048393:	6a 00                	push   $0x0
 8048395:	68 e0 84 04 08       	push   $0x80484e0
 804839a:	ff 75 08             	pushl  0x8(%ebp)
 804839d:	e8 83 fe ff ff       	call   8048225 <v_fprintf>
 80483a2:	83 c4 10             	add    $0x10,%esp
 80483a5:	eb 13                	jmp    80483ba <v_fprintf+0x195>
 80483a7:	8b 55 f0             	mov    -0x10(%ebp),%edx
 80483aa:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80483ad:	01 d0                	add    %edx,%eax
 80483af:	0f b6 00             	movzbl (%eax),%eax
 80483b2:	84 c0                	test   %al,%al
 80483b4:	0f 85 8c fe ff ff    	jne    8048246 <v_fprintf+0x21>
 80483ba:	c9                   	leave  
 80483bb:	c3                   	ret    

080483bc <put_buffer>:
 80483bc:	55                   	push   %ebp
 80483bd:	89 e5                	mov    %esp,%ebp
 80483bf:	83 ec 04             	sub    $0x4,%esp
 80483c2:	8b 45 08             	mov    0x8(%ebp),%eax
 80483c5:	88 45 fc             	mov    %al,-0x4(%ebp)
 80483c8:	a1 00 97 04 08       	mov    0x8049700,%eax
 80483cd:	8d 50 01             	lea    0x1(%eax),%edx
 80483d0:	89 15 00 97 04 08    	mov    %edx,0x8049700
 80483d6:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
 80483da:	88 90 40 97 04 08    	mov    %dl,0x8049740(%eax)
 80483e0:	c9                   	leave  
 80483e1:	c3                   	ret    

080483e2 <print>:
 80483e2:	55                   	push   %ebp
 80483e3:	89 e5                	mov    %esp,%ebp
 80483e5:	53                   	push   %ebx
 80483e6:	83 ec 14             	sub    $0x14,%esp
 80483e9:	8d 45 0c             	lea    0xc(%ebp),%eax
 80483ec:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80483ef:	c7 05 00 97 04 08 00 	movl   $0x0,0x8049700
 80483f6:	00 00 00 
 80483f9:	8b 45 08             	mov    0x8(%ebp),%eax
 80483fc:	83 ec 04             	sub    $0x4,%esp
 80483ff:	ff 75 f4             	pushl  -0xc(%ebp)
 8048402:	50                   	push   %eax
 8048403:	68 bc 83 04 08       	push   $0x80483bc
 8048408:	e8 18 fe ff ff       	call   8048225 <v_fprintf>
 804840d:	83 c4 10             	add    $0x10,%esp
 8048410:	a1 00 97 04 08       	mov    0x8049700,%eax
 8048415:	c6 80 40 97 04 08 00 	movb   $0x0,0x8049740(%eax)
 804841c:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 8048423:	ba 40 97 04 08       	mov    $0x8049740,%edx
 8048428:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804842b:	bb 01 00 00 00       	mov    $0x1,%ebx
 8048430:	89 d1                	mov    %edx,%ecx
 8048432:	cd 80                	int    $0x80
 8048434:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048437:	c9                   	leave  
 8048438:	c3                   	ret    

08048439 <my_memcpy>:
 8048439:	55                   	push   %ebp
 804843a:	89 e5                	mov    %esp,%ebp
 804843c:	57                   	push   %edi
 804843d:	56                   	push   %esi
 804843e:	53                   	push   %ebx
 804843f:	8b 45 10             	mov    0x10(%ebp),%eax
 8048442:	8b 55 0c             	mov    0xc(%ebp),%edx
 8048445:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8048448:	89 c1                	mov    %eax,%ecx
 804844a:	89 d6                	mov    %edx,%esi
 804844c:	89 df                	mov    %ebx,%edi
 804844e:	fc                   	cld    
 804844f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 8048451:	5b                   	pop    %ebx
 8048452:	5e                   	pop    %esi
 8048453:	5f                   	pop    %edi
 8048454:	5d                   	pop    %ebp
 8048455:	c3                   	ret    

08048456 <my_memset>:
 8048456:	55                   	push   %ebp
 8048457:	89 e5                	mov    %esp,%ebp
 8048459:	57                   	push   %edi
 804845a:	53                   	push   %ebx
 804845b:	8b 55 10             	mov    0x10(%ebp),%edx
 804845e:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048461:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8048464:	89 d1                	mov    %edx,%ecx
 8048466:	89 df                	mov    %ebx,%edi
 8048468:	fc                   	cld    
 8048469:	f3 aa                	rep stos %al,%es:(%edi)
 804846b:	5b                   	pop    %ebx
 804846c:	5f                   	pop    %edi
 804846d:	5d                   	pop    %ebp
 804846e:	c3                   	ret    

0804846f <getpid>:
 804846f:	55                   	push   %ebp
 8048470:	89 e5                	mov    %esp,%ebp
 8048472:	83 ec 10             	sub    $0x10,%esp
 8048475:	b8 06 00 00 00       	mov    $0x6,%eax
 804847a:	cd 80                	int    $0x80
 804847c:	89 c0                	mov    %eax,%eax
 804847e:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048481:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048484:	c9                   	leave  
 8048485:	c3                   	ret    

08048486 <my_sleep>:
 8048486:	55                   	push   %ebp
 8048487:	89 e5                	mov    %esp,%ebp
 8048489:	53                   	push   %ebx
 804848a:	b8 07 00 00 00       	mov    $0x7,%eax
 804848f:	8b 55 08             	mov    0x8(%ebp),%edx
 8048492:	89 d3                	mov    %edx,%ebx
 8048494:	cd 80                	int    $0x80
 8048496:	5b                   	pop    %ebx
 8048497:	5d                   	pop    %ebp
 8048498:	c3                   	ret    

08048499 <my_exit>:
 8048499:	55                   	push   %ebp
 804849a:	89 e5                	mov    %esp,%ebp
 804849c:	b8 05 00 00 00       	mov    $0x5,%eax
 80484a1:	cd 80                	int    $0x80
 80484a3:	5d                   	pop    %ebp
 80484a4:	c3                   	ret    

080484a5 <my_fork>:
 80484a5:	55                   	push   %ebp
 80484a6:	89 e5                	mov    %esp,%ebp
 80484a8:	b8 08 00 00 00       	mov    $0x8,%eax
 80484ad:	cd 80                	int    $0x80
 80484af:	5d                   	pop    %ebp
 80484b0:	c3                   	ret    

080484b1 <main>:
 80484b1:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 80484b5:	83 e4 f0             	and    $0xfffffff0,%esp
 80484b8:	ff 71 fc             	pushl  -0x4(%ecx)
 80484bb:	55                   	push   %ebp
 80484bc:	89 e5                	mov    %esp,%ebp
 80484be:	51                   	push   %ecx
 80484bf:	83 ec 04             	sub    $0x4,%esp
 80484c2:	83 ec 0c             	sub    $0xc,%esp
 80484c5:	68 00 85 04 08       	push   $0x8048500
 80484ca:	e8 13 ff ff ff       	call   80483e2 <print>
 80484cf:	83 c4 10             	add    $0x10,%esp
 80484d2:	b8 00 00 00 00       	mov    $0x0,%eax
 80484d7:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 80484da:	c9                   	leave  
 80484db:	8d 61 fc             	lea    -0x4(%ecx),%esp
 80484de:	c3                   	ret    
