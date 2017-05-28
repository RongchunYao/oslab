
test:     file format elf32-i386


Disassembly of section .text:

08048094 <fuck>:
 8048094:	55                   	push   %ebp
 8048095:	89 e5                	mov    %esp,%ebp
 8048097:	83 ec 08             	sub    $0x8,%esp
 804809a:	83 ec 08             	sub    $0x8,%esp
 804809d:	ff 75 08             	pushl  0x8(%ebp)
 80480a0:	68 38 85 04 08       	push   $0x8048538
 80480a5:	e8 90 03 00 00       	call   804843a <print>
 80480aa:	83 c4 10             	add    $0x10,%esp
 80480ad:	e8 3f 04 00 00       	call   80484f1 <my_exit>
 80480b2:	eb fe                	jmp    80480b2 <fuck+0x1e>

080480b4 <main>:
 80480b4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 80480b8:	83 e4 f0             	and    $0xfffffff0,%esp
 80480bb:	ff 71 fc             	pushl  -0x4(%ecx)
 80480be:	55                   	push   %ebp
 80480bf:	89 e5                	mov    %esp,%ebp
 80480c1:	51                   	push   %ecx
 80480c2:	83 ec 04             	sub    $0x4,%esp
 80480c5:	83 ec 08             	sub    $0x8,%esp
 80480c8:	68 60 97 04 08       	push   $0x8049760
 80480cd:	68 94 80 04 08       	push   $0x8048094
 80480d2:	e8 3d 04 00 00       	call   8048514 <my_pthread>
 80480d7:	83 c4 10             	add    $0x10,%esp
 80480da:	e8 12 04 00 00       	call   80484f1 <my_exit>
 80480df:	b8 00 00 00 00       	mov    $0x0,%eax
 80480e4:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 80480e7:	c9                   	leave  
 80480e8:	8d 61 fc             	lea    -0x4(%ecx),%esp
 80480eb:	c3                   	ret    

080480ec <change>:
 80480ec:	55                   	push   %ebp
 80480ed:	89 e5                	mov    %esp,%ebp
 80480ef:	53                   	push   %ebx
 80480f0:	83 c4 80             	add    $0xffffff80,%esp
 80480f3:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 80480fa:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048101:	8b 45 08             	mov    0x8(%ebp),%eax
 8048104:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8048107:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804810b:	75 14                	jne    8048121 <change+0x35>
 804810d:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048110:	c6 00 30             	movb   $0x30,(%eax)
 8048113:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048116:	83 c0 01             	add    $0x1,%eax
 8048119:	c6 00 00             	movb   $0x0,(%eax)
 804811c:	e9 a5 00 00 00       	jmp    80481c6 <change+0xda>
 8048121:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 8048125:	79 1d                	jns    8048144 <change+0x58>
 8048127:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804812a:	8d 50 01             	lea    0x1(%eax),%edx
 804812d:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048130:	89 c2                	mov    %eax,%edx
 8048132:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048135:	01 d0                	add    %edx,%eax
 8048137:	c6 00 2d             	movb   $0x2d,(%eax)
 804813a:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804813d:	f7 d8                	neg    %eax
 804813f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048142:	eb 06                	jmp    804814a <change+0x5e>
 8048144:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048147:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804814a:	eb 40                	jmp    804818c <change+0xa0>
 804814c:	8b 4d f8             	mov    -0x8(%ebp),%ecx
 804814f:	8d 41 01             	lea    0x1(%ecx),%eax
 8048152:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048155:	8b 5d f0             	mov    -0x10(%ebp),%ebx
 8048158:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
 804815d:	89 d8                	mov    %ebx,%eax
 804815f:	f7 e2                	mul    %edx
 8048161:	c1 ea 03             	shr    $0x3,%edx
 8048164:	89 d0                	mov    %edx,%eax
 8048166:	c1 e0 02             	shl    $0x2,%eax
 8048169:	01 d0                	add    %edx,%eax
 804816b:	01 c0                	add    %eax,%eax
 804816d:	29 c3                	sub    %eax,%ebx
 804816f:	89 da                	mov    %ebx,%edx
 8048171:	89 d0                	mov    %edx,%eax
 8048173:	83 c0 30             	add    $0x30,%eax
 8048176:	88 44 0d 88          	mov    %al,-0x78(%ebp,%ecx,1)
 804817a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804817d:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
 8048182:	f7 e2                	mul    %edx
 8048184:	89 d0                	mov    %edx,%eax
 8048186:	c1 e8 03             	shr    $0x3,%eax
 8048189:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804818c:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8048190:	75 ba                	jne    804814c <change+0x60>
 8048192:	eb 21                	jmp    80481b5 <change+0xc9>
 8048194:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048197:	8d 50 01             	lea    0x1(%eax),%edx
 804819a:	89 55 f4             	mov    %edx,-0xc(%ebp)
 804819d:	89 c2                	mov    %eax,%edx
 804819f:	8b 45 0c             	mov    0xc(%ebp),%eax
 80481a2:	01 c2                	add    %eax,%edx
 80481a4:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
 80481a8:	8d 4d 88             	lea    -0x78(%ebp),%ecx
 80481ab:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80481ae:	01 c8                	add    %ecx,%eax
 80481b0:	0f b6 00             	movzbl (%eax),%eax
 80481b3:	88 02                	mov    %al,(%edx)
 80481b5:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
 80481b9:	75 d9                	jne    8048194 <change+0xa8>
 80481bb:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80481be:	8b 45 0c             	mov    0xc(%ebp),%eax
 80481c1:	01 d0                	add    %edx,%eax
 80481c3:	c6 00 00             	movb   $0x0,(%eax)
 80481c6:	83 ec 80             	sub    $0xffffff80,%esp
 80481c9:	5b                   	pop    %ebx
 80481ca:	5d                   	pop    %ebp
 80481cb:	c3                   	ret    

080481cc <change_x>:
 80481cc:	55                   	push   %ebp
 80481cd:	89 e5                	mov    %esp,%ebp
 80481cf:	83 ec 70             	sub    $0x70,%esp
 80481d2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 80481d9:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 80481e0:	8b 45 08             	mov    0x8(%ebp),%eax
 80481e3:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80481e6:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 80481ea:	75 11                	jne    80481fd <change_x+0x31>
 80481ec:	8b 45 0c             	mov    0xc(%ebp),%eax
 80481ef:	c6 00 30             	movb   $0x30,(%eax)
 80481f2:	8b 45 0c             	mov    0xc(%ebp),%eax
 80481f5:	83 c0 01             	add    $0x1,%eax
 80481f8:	c6 00 00             	movb   $0x0,(%eax)
 80481fb:	eb 7e                	jmp    804827b <change_x+0xaf>
 80481fd:	eb 42                	jmp    8048241 <change_x+0x75>
 80481ff:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048202:	83 e0 0f             	and    $0xf,%eax
 8048205:	83 f8 09             	cmp    $0x9,%eax
 8048208:	77 18                	ja     8048222 <change_x+0x56>
 804820a:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804820d:	8d 50 01             	lea    0x1(%eax),%edx
 8048210:	89 55 fc             	mov    %edx,-0x4(%ebp)
 8048213:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048216:	83 e2 0f             	and    $0xf,%edx
 8048219:	83 c2 30             	add    $0x30,%edx
 804821c:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
 8048220:	eb 16                	jmp    8048238 <change_x+0x6c>
 8048222:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048225:	8d 50 01             	lea    0x1(%eax),%edx
 8048228:	89 55 fc             	mov    %edx,-0x4(%ebp)
 804822b:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804822e:	83 e2 0f             	and    $0xf,%edx
 8048231:	83 c2 37             	add    $0x37,%edx
 8048234:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
 8048238:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804823b:	c1 e8 04             	shr    $0x4,%eax
 804823e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048241:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8048245:	75 b8                	jne    80481ff <change_x+0x33>
 8048247:	eb 21                	jmp    804826a <change_x+0x9e>
 8048249:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804824c:	8d 50 01             	lea    0x1(%eax),%edx
 804824f:	89 55 f8             	mov    %edx,-0x8(%ebp)
 8048252:	89 c2                	mov    %eax,%edx
 8048254:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048257:	01 c2                	add    %eax,%edx
 8048259:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
 804825d:	8d 4d 90             	lea    -0x70(%ebp),%ecx
 8048260:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048263:	01 c8                	add    %ecx,%eax
 8048265:	0f b6 00             	movzbl (%eax),%eax
 8048268:	88 02                	mov    %al,(%edx)
 804826a:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
 804826e:	75 d9                	jne    8048249 <change_x+0x7d>
 8048270:	8b 55 f8             	mov    -0x8(%ebp),%edx
 8048273:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048276:	01 d0                	add    %edx,%eax
 8048278:	c6 00 00             	movb   $0x0,(%eax)
 804827b:	c9                   	leave  
 804827c:	c3                   	ret    

0804827d <v_fprintf>:
 804827d:	55                   	push   %ebp
 804827e:	89 e5                	mov    %esp,%ebp
 8048280:	81 ec 88 00 00 00    	sub    $0x88,%esp
 8048286:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048289:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804828c:	8b 45 10             	mov    0x10(%ebp),%eax
 804828f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048292:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8048299:	e9 61 01 00 00       	jmp    80483ff <v_fprintf+0x182>
 804829e:	8b 55 f0             	mov    -0x10(%ebp),%edx
 80482a1:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80482a4:	01 d0                	add    %edx,%eax
 80482a6:	0f b6 00             	movzbl (%eax),%eax
 80482a9:	3c 25                	cmp    $0x25,%al
 80482ab:	74 27                	je     80482d4 <v_fprintf+0x57>
 80482ad:	8b 55 f0             	mov    -0x10(%ebp),%edx
 80482b0:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80482b3:	01 d0                	add    %edx,%eax
 80482b5:	0f b6 00             	movzbl (%eax),%eax
 80482b8:	88 45 eb             	mov    %al,-0x15(%ebp)
 80482bb:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
 80482bf:	83 ec 0c             	sub    $0xc,%esp
 80482c2:	50                   	push   %eax
 80482c3:	8b 45 08             	mov    0x8(%ebp),%eax
 80482c6:	ff d0                	call   *%eax
 80482c8:	83 c4 10             	add    $0x10,%esp
 80482cb:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 80482cf:	e9 2b 01 00 00       	jmp    80483ff <v_fprintf+0x182>
 80482d4:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 80482d8:	8b 55 f0             	mov    -0x10(%ebp),%edx
 80482db:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80482de:	01 d0                	add    %edx,%eax
 80482e0:	0f b6 00             	movzbl (%eax),%eax
 80482e3:	3c 25                	cmp    $0x25,%al
 80482e5:	75 16                	jne    80482fd <v_fprintf+0x80>
 80482e7:	83 ec 0c             	sub    $0xc,%esp
 80482ea:	6a 25                	push   $0x25
 80482ec:	8b 45 08             	mov    0x8(%ebp),%eax
 80482ef:	ff d0                	call   *%eax
 80482f1:	83 c4 10             	add    $0x10,%esp
 80482f4:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 80482f8:	e9 02 01 00 00       	jmp    80483ff <v_fprintf+0x182>
 80482fd:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048300:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048303:	01 d0                	add    %edx,%eax
 8048305:	0f b6 00             	movzbl (%eax),%eax
 8048308:	3c 63                	cmp    $0x63,%al
 804830a:	75 26                	jne    8048332 <v_fprintf+0xb5>
 804830c:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048310:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048313:	0f b6 00             	movzbl (%eax),%eax
 8048316:	88 45 eb             	mov    %al,-0x15(%ebp)
 8048319:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
 804831d:	83 ec 0c             	sub    $0xc,%esp
 8048320:	50                   	push   %eax
 8048321:	8b 45 08             	mov    0x8(%ebp),%eax
 8048324:	ff d0                	call   *%eax
 8048326:	83 c4 10             	add    $0x10,%esp
 8048329:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 804832d:	e9 cd 00 00 00       	jmp    80483ff <v_fprintf+0x182>
 8048332:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048335:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048338:	01 d0                	add    %edx,%eax
 804833a:	0f b6 00             	movzbl (%eax),%eax
 804833d:	3c 64                	cmp    $0x64,%al
 804833f:	75 36                	jne    8048377 <v_fprintf+0xfa>
 8048341:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048345:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048348:	8b 00                	mov    (%eax),%eax
 804834a:	83 ec 08             	sub    $0x8,%esp
 804834d:	8d 55 87             	lea    -0x79(%ebp),%edx
 8048350:	52                   	push   %edx
 8048351:	50                   	push   %eax
 8048352:	e8 95 fd ff ff       	call   80480ec <change>
 8048357:	83 c4 10             	add    $0x10,%esp
 804835a:	83 ec 04             	sub    $0x4,%esp
 804835d:	6a 00                	push   $0x0
 804835f:	8d 45 87             	lea    -0x79(%ebp),%eax
 8048362:	50                   	push   %eax
 8048363:	ff 75 08             	pushl  0x8(%ebp)
 8048366:	e8 12 ff ff ff       	call   804827d <v_fprintf>
 804836b:	83 c4 10             	add    $0x10,%esp
 804836e:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 8048372:	e9 88 00 00 00       	jmp    80483ff <v_fprintf+0x182>
 8048377:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804837a:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804837d:	01 d0                	add    %edx,%eax
 804837f:	0f b6 00             	movzbl (%eax),%eax
 8048382:	3c 78                	cmp    $0x78,%al
 8048384:	75 33                	jne    80483b9 <v_fprintf+0x13c>
 8048386:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 804838a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804838d:	8b 00                	mov    (%eax),%eax
 804838f:	83 ec 08             	sub    $0x8,%esp
 8048392:	8d 55 87             	lea    -0x79(%ebp),%edx
 8048395:	52                   	push   %edx
 8048396:	50                   	push   %eax
 8048397:	e8 30 fe ff ff       	call   80481cc <change_x>
 804839c:	83 c4 10             	add    $0x10,%esp
 804839f:	83 ec 04             	sub    $0x4,%esp
 80483a2:	6a 00                	push   $0x0
 80483a4:	8d 45 87             	lea    -0x79(%ebp),%eax
 80483a7:	50                   	push   %eax
 80483a8:	ff 75 08             	pushl  0x8(%ebp)
 80483ab:	e8 cd fe ff ff       	call   804827d <v_fprintf>
 80483b0:	83 c4 10             	add    $0x10,%esp
 80483b3:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 80483b7:	eb 46                	jmp    80483ff <v_fprintf+0x182>
 80483b9:	8b 55 f0             	mov    -0x10(%ebp),%edx
 80483bc:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80483bf:	01 d0                	add    %edx,%eax
 80483c1:	0f b6 00             	movzbl (%eax),%eax
 80483c4:	3c 73                	cmp    $0x73,%al
 80483c6:	75 20                	jne    80483e8 <v_fprintf+0x16b>
 80483c8:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 80483cc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80483cf:	8b 00                	mov    (%eax),%eax
 80483d1:	83 ec 04             	sub    $0x4,%esp
 80483d4:	6a 00                	push   $0x0
 80483d6:	50                   	push   %eax
 80483d7:	ff 75 08             	pushl  0x8(%ebp)
 80483da:	e8 9e fe ff ff       	call   804827d <v_fprintf>
 80483df:	83 c4 10             	add    $0x10,%esp
 80483e2:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 80483e6:	eb 17                	jmp    80483ff <v_fprintf+0x182>
 80483e8:	83 ec 04             	sub    $0x4,%esp
 80483eb:	6a 00                	push   $0x0
 80483ed:	68 3c 85 04 08       	push   $0x804853c
 80483f2:	ff 75 08             	pushl  0x8(%ebp)
 80483f5:	e8 83 fe ff ff       	call   804827d <v_fprintf>
 80483fa:	83 c4 10             	add    $0x10,%esp
 80483fd:	eb 13                	jmp    8048412 <v_fprintf+0x195>
 80483ff:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048402:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048405:	01 d0                	add    %edx,%eax
 8048407:	0f b6 00             	movzbl (%eax),%eax
 804840a:	84 c0                	test   %al,%al
 804840c:	0f 85 8c fe ff ff    	jne    804829e <v_fprintf+0x21>
 8048412:	c9                   	leave  
 8048413:	c3                   	ret    

08048414 <put_buffer>:
 8048414:	55                   	push   %ebp
 8048415:	89 e5                	mov    %esp,%ebp
 8048417:	83 ec 04             	sub    $0x4,%esp
 804841a:	8b 45 08             	mov    0x8(%ebp),%eax
 804841d:	88 45 fc             	mov    %al,-0x4(%ebp)
 8048420:	a1 68 9b 04 08       	mov    0x8049b68,%eax
 8048425:	8d 50 01             	lea    0x1(%eax),%edx
 8048428:	89 15 68 9b 04 08    	mov    %edx,0x8049b68
 804842e:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
 8048432:	88 90 80 97 04 08    	mov    %dl,0x8049780(%eax)
 8048438:	c9                   	leave  
 8048439:	c3                   	ret    

0804843a <print>:
 804843a:	55                   	push   %ebp
 804843b:	89 e5                	mov    %esp,%ebp
 804843d:	53                   	push   %ebx
 804843e:	83 ec 14             	sub    $0x14,%esp
 8048441:	8d 45 0c             	lea    0xc(%ebp),%eax
 8048444:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048447:	c7 05 68 9b 04 08 00 	movl   $0x0,0x8049b68
 804844e:	00 00 00 
 8048451:	8b 45 08             	mov    0x8(%ebp),%eax
 8048454:	83 ec 04             	sub    $0x4,%esp
 8048457:	ff 75 f4             	pushl  -0xc(%ebp)
 804845a:	50                   	push   %eax
 804845b:	68 14 84 04 08       	push   $0x8048414
 8048460:	e8 18 fe ff ff       	call   804827d <v_fprintf>
 8048465:	83 c4 10             	add    $0x10,%esp
 8048468:	a1 68 9b 04 08       	mov    0x8049b68,%eax
 804846d:	c6 80 80 97 04 08 00 	movb   $0x0,0x8049780(%eax)
 8048474:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 804847b:	ba 80 97 04 08       	mov    $0x8049780,%edx
 8048480:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048483:	bb 01 00 00 00       	mov    $0x1,%ebx
 8048488:	89 d1                	mov    %edx,%ecx
 804848a:	cd 80                	int    $0x80
 804848c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 804848f:	c9                   	leave  
 8048490:	c3                   	ret    

08048491 <my_memcpy>:
 8048491:	55                   	push   %ebp
 8048492:	89 e5                	mov    %esp,%ebp
 8048494:	57                   	push   %edi
 8048495:	56                   	push   %esi
 8048496:	53                   	push   %ebx
 8048497:	8b 45 10             	mov    0x10(%ebp),%eax
 804849a:	8b 55 0c             	mov    0xc(%ebp),%edx
 804849d:	8b 5d 08             	mov    0x8(%ebp),%ebx
 80484a0:	89 c1                	mov    %eax,%ecx
 80484a2:	89 d6                	mov    %edx,%esi
 80484a4:	89 df                	mov    %ebx,%edi
 80484a6:	fc                   	cld    
 80484a7:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 80484a9:	5b                   	pop    %ebx
 80484aa:	5e                   	pop    %esi
 80484ab:	5f                   	pop    %edi
 80484ac:	5d                   	pop    %ebp
 80484ad:	c3                   	ret    

080484ae <my_memset>:
 80484ae:	55                   	push   %ebp
 80484af:	89 e5                	mov    %esp,%ebp
 80484b1:	57                   	push   %edi
 80484b2:	53                   	push   %ebx
 80484b3:	8b 55 10             	mov    0x10(%ebp),%edx
 80484b6:	8b 45 0c             	mov    0xc(%ebp),%eax
 80484b9:	8b 5d 08             	mov    0x8(%ebp),%ebx
 80484bc:	89 d1                	mov    %edx,%ecx
 80484be:	89 df                	mov    %ebx,%edi
 80484c0:	fc                   	cld    
 80484c1:	f3 aa                	rep stos %al,%es:(%edi)
 80484c3:	5b                   	pop    %ebx
 80484c4:	5f                   	pop    %edi
 80484c5:	5d                   	pop    %ebp
 80484c6:	c3                   	ret    

080484c7 <getpid>:
 80484c7:	55                   	push   %ebp
 80484c8:	89 e5                	mov    %esp,%ebp
 80484ca:	83 ec 10             	sub    $0x10,%esp
 80484cd:	b8 06 00 00 00       	mov    $0x6,%eax
 80484d2:	cd 80                	int    $0x80
 80484d4:	89 c0                	mov    %eax,%eax
 80484d6:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80484d9:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80484dc:	c9                   	leave  
 80484dd:	c3                   	ret    

080484de <my_sleep>:
 80484de:	55                   	push   %ebp
 80484df:	89 e5                	mov    %esp,%ebp
 80484e1:	53                   	push   %ebx
 80484e2:	b8 07 00 00 00       	mov    $0x7,%eax
 80484e7:	8b 55 08             	mov    0x8(%ebp),%edx
 80484ea:	89 d3                	mov    %edx,%ebx
 80484ec:	cd 80                	int    $0x80
 80484ee:	5b                   	pop    %ebx
 80484ef:	5d                   	pop    %ebp
 80484f0:	c3                   	ret    

080484f1 <my_exit>:
 80484f1:	55                   	push   %ebp
 80484f2:	89 e5                	mov    %esp,%ebp
 80484f4:	b8 05 00 00 00       	mov    $0x5,%eax
 80484f9:	cd 80                	int    $0x80
 80484fb:	5d                   	pop    %ebp
 80484fc:	c3                   	ret    

080484fd <my_fork>:
 80484fd:	55                   	push   %ebp
 80484fe:	89 e5                	mov    %esp,%ebp
 8048500:	83 ec 10             	sub    $0x10,%esp
 8048503:	b8 08 00 00 00       	mov    $0x8,%eax
 8048508:	cd 80                	int    $0x80
 804850a:	89 c0                	mov    %eax,%eax
 804850c:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804850f:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048512:	c9                   	leave  
 8048513:	c3                   	ret    

08048514 <my_pthread>:
 8048514:	55                   	push   %ebp
 8048515:	89 e5                	mov    %esp,%ebp
 8048517:	53                   	push   %ebx
 8048518:	83 ec 10             	sub    $0x10,%esp
 804851b:	b8 09 00 00 00       	mov    $0x9,%eax
 8048520:	8b 55 08             	mov    0x8(%ebp),%edx
 8048523:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 8048526:	89 d3                	mov    %edx,%ebx
 8048528:	cd 80                	int    $0x80
 804852a:	89 c0                	mov    %eax,%eax
 804852c:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804852f:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048532:	83 c4 10             	add    $0x10,%esp
 8048535:	5b                   	pop    %ebx
 8048536:	5d                   	pop    %ebp
 8048537:	c3                   	ret    
