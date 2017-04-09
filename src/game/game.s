
game:     file format elf32-i386


Disassembly of section .text:

00400000 <draw_mark>:
  400000:	55                   	push   %ebp
  400001:	89 e5                	mov    %esp,%ebp
  400003:	83 ec 08             	sub    $0x8,%esp
  400006:	a1 ac 4d 41 00       	mov    0x414dac,%eax
  40000b:	83 e8 01             	sub    $0x1,%eax
  40000e:	83 ec 08             	sub    $0x8,%esp
  400011:	68 90 1e 41 00       	push   $0x411e90
  400016:	50                   	push   %eax
  400017:	e8 a3 0b 00 00       	call   400bbf <change>
  40001c:	83 c4 10             	add    $0x10,%esp
  40001f:	a1 ac 4d 41 00       	mov    0x414dac,%eax
  400024:	83 f8 0a             	cmp    $0xa,%eax
  400027:	7f 18                	jg     400041 <draw_mark+0x41>
  400029:	6a 2f                	push   $0x2f
  40002b:	68 38 01 00 00       	push   $0x138
  400030:	6a 00                	push   $0x0
  400032:	68 90 1e 41 00       	push   $0x411e90
  400037:	e8 93 08 00 00       	call   4008cf <draw_string>
  40003c:	83 c4 10             	add    $0x10,%esp
  40003f:	eb 38                	jmp    400079 <draw_mark+0x79>
  400041:	a1 ac 4d 41 00       	mov    0x414dac,%eax
  400046:	83 f8 64             	cmp    $0x64,%eax
  400049:	7f 18                	jg     400063 <draw_mark+0x63>
  40004b:	6a 2f                	push   $0x2f
  40004d:	68 30 01 00 00       	push   $0x130
  400052:	6a 00                	push   $0x0
  400054:	68 90 1e 41 00       	push   $0x411e90
  400059:	e8 71 08 00 00       	call   4008cf <draw_string>
  40005e:	83 c4 10             	add    $0x10,%esp
  400061:	eb 16                	jmp    400079 <draw_mark+0x79>
  400063:	6a 2f                	push   $0x2f
  400065:	68 28 01 00 00       	push   $0x128
  40006a:	6a 00                	push   $0x0
  40006c:	68 90 1e 41 00       	push   $0x411e90
  400071:	e8 59 08 00 00       	call   4008cf <draw_string>
  400076:	83 c4 10             	add    $0x10,%esp
  400079:	c9                   	leave  
  40007a:	c3                   	ret    

0040007b <draw_whole_snake>:
  40007b:	55                   	push   %ebp
  40007c:	89 e5                	mov    %esp,%ebp
  40007e:	53                   	push   %ebx
  40007f:	83 ec 14             	sub    $0x14,%esp
  400082:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  400089:	eb 4d                	jmp    4000d8 <draw_whole_snake+0x5d>
  40008b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  40008e:	89 d0                	mov    %edx,%eax
  400090:	01 c0                	add    %eax,%eax
  400092:	01 d0                	add    %edx,%eax
  400094:	c1 e0 02             	shl    $0x2,%eax
  400097:	05 c0 1e 41 00       	add    $0x411ec0,%eax
  40009c:	8b 18                	mov    (%eax),%ebx
  40009e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  4000a1:	89 d0                	mov    %edx,%eax
  4000a3:	01 c0                	add    %eax,%eax
  4000a5:	01 d0                	add    %edx,%eax
  4000a7:	c1 e0 02             	shl    $0x2,%eax
  4000aa:	05 c0 1e 41 00       	add    $0x411ec0,%eax
  4000af:	8b 48 08             	mov    0x8(%eax),%ecx
  4000b2:	8b 55 f4             	mov    -0xc(%ebp),%edx
  4000b5:	89 d0                	mov    %edx,%eax
  4000b7:	01 c0                	add    %eax,%eax
  4000b9:	01 d0                	add    %edx,%eax
  4000bb:	c1 e0 02             	shl    $0x2,%eax
  4000be:	05 c0 1e 41 00       	add    $0x411ec0,%eax
  4000c3:	8b 40 04             	mov    0x4(%eax),%eax
  4000c6:	83 ec 04             	sub    $0x4,%esp
  4000c9:	53                   	push   %ebx
  4000ca:	51                   	push   %ecx
  4000cb:	50                   	push   %eax
  4000cc:	e8 e9 08 00 00       	call   4009ba <draw_snake>
  4000d1:	83 c4 10             	add    $0x10,%esp
  4000d4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  4000d8:	a1 80 1e 41 00       	mov    0x411e80,%eax
  4000dd:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  4000e0:	7e a9                	jle    40008b <draw_whole_snake+0x10>
  4000e2:	8b 0d 0c 24 40 00    	mov    0x40240c,%ecx
  4000e8:	8b 15 08 24 40 00    	mov    0x402408,%edx
  4000ee:	a1 04 24 40 00       	mov    0x402404,%eax
  4000f3:	83 ec 04             	sub    $0x4,%esp
  4000f6:	51                   	push   %ecx
  4000f7:	52                   	push   %edx
  4000f8:	50                   	push   %eax
  4000f9:	e8 71 08 00 00       	call   40096f <draw_food>
  4000fe:	83 c4 10             	add    $0x10,%esp
  400101:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  400104:	c9                   	leave  
  400105:	c3                   	ret    

00400106 <make_food>:
  400106:	55                   	push   %ebp
  400107:	89 e5                	mov    %esp,%ebp
  400109:	c7 05 04 24 40 00 60 	movl   $0x60,0x402404
  400110:	00 00 00 
  400113:	c7 05 08 24 40 00 58 	movl   $0x58,0x402408
  40011a:	00 00 00 
  40011d:	c7 05 0c 24 40 00 04 	movl   $0x4,0x40240c
  400124:	00 00 00 
  400127:	5d                   	pop    %ebp
  400128:	c3                   	ret    

00400129 <do_move>:
  400129:	55                   	push   %ebp
  40012a:	89 e5                	mov    %esp,%ebp
  40012c:	83 ec 18             	sub    $0x18,%esp
  40012f:	a1 d0 1e 41 00       	mov    0x411ed0,%eax
  400134:	a3 c4 1e 41 00       	mov    %eax,0x411ec4
  400139:	a1 d4 1e 41 00       	mov    0x411ed4,%eax
  40013e:	a3 c8 1e 41 00       	mov    %eax,0x411ec8
  400143:	a1 cc 1e 41 00       	mov    0x411ecc,%eax
  400148:	a3 c0 1e 41 00       	mov    %eax,0x411ec0
  40014d:	8b 15 80 1e 41 00    	mov    0x411e80,%edx
  400153:	89 d0                	mov    %edx,%eax
  400155:	01 c0                	add    %eax,%eax
  400157:	01 d0                	add    %edx,%eax
  400159:	c1 e0 02             	shl    $0x2,%eax
  40015c:	05 c0 1e 41 00       	add    $0x411ec0,%eax
  400161:	8b 40 04             	mov    0x4(%eax),%eax
  400164:	a3 88 1e 41 00       	mov    %eax,0x411e88
  400169:	8b 15 80 1e 41 00    	mov    0x411e80,%edx
  40016f:	89 d0                	mov    %edx,%eax
  400171:	01 c0                	add    %eax,%eax
  400173:	01 d0                	add    %edx,%eax
  400175:	c1 e0 02             	shl    $0x2,%eax
  400178:	05 c0 1e 41 00       	add    $0x411ec0,%eax
  40017d:	8b 40 08             	mov    0x8(%eax),%eax
  400180:	a3 8c 1e 41 00       	mov    %eax,0x411e8c
  400185:	a1 00 24 40 00       	mov    0x402400,%eax
  40018a:	85 c0                	test   %eax,%eax
  40018c:	75 24                	jne    4001b2 <do_move+0x89>
  40018e:	a1 d4 1e 41 00       	mov    0x411ed4,%eax
  400193:	83 e8 08             	sub    $0x8,%eax
  400196:	a3 d4 1e 41 00       	mov    %eax,0x411ed4
  40019b:	a1 d4 1e 41 00       	mov    0x411ed4,%eax
  4001a0:	85 c0                	test   %eax,%eax
  4001a2:	0f 89 84 00 00 00    	jns    40022c <do_move+0x103>
  4001a8:	b8 00 00 00 00       	mov    $0x0,%eax
  4001ad:	e9 9f 03 00 00       	jmp    400551 <do_move+0x428>
  4001b2:	a1 00 24 40 00       	mov    0x402400,%eax
  4001b7:	83 f8 12             	cmp    $0x12,%eax
  4001ba:	75 23                	jne    4001df <do_move+0xb6>
  4001bc:	a1 d0 1e 41 00       	mov    0x411ed0,%eax
  4001c1:	83 c0 08             	add    $0x8,%eax
  4001c4:	a3 d0 1e 41 00       	mov    %eax,0x411ed0
  4001c9:	a1 d0 1e 41 00       	mov    0x411ed0,%eax
  4001ce:	3d c7 00 00 00       	cmp    $0xc7,%eax
  4001d3:	7e 57                	jle    40022c <do_move+0x103>
  4001d5:	b8 00 00 00 00       	mov    $0x0,%eax
  4001da:	e9 72 03 00 00       	jmp    400551 <do_move+0x428>
  4001df:	a1 00 24 40 00       	mov    0x402400,%eax
  4001e4:	83 f8 03             	cmp    $0x3,%eax
  4001e7:	75 23                	jne    40020c <do_move+0xe3>
  4001e9:	a1 d4 1e 41 00       	mov    0x411ed4,%eax
  4001ee:	83 c0 08             	add    $0x8,%eax
  4001f1:	a3 d4 1e 41 00       	mov    %eax,0x411ed4
  4001f6:	a1 d4 1e 41 00       	mov    0x411ed4,%eax
  4001fb:	3d 3f 01 00 00       	cmp    $0x13f,%eax
  400200:	7e 2a                	jle    40022c <do_move+0x103>
  400202:	b8 00 00 00 00       	mov    $0x0,%eax
  400207:	e9 45 03 00 00       	jmp    400551 <do_move+0x428>
  40020c:	a1 d0 1e 41 00       	mov    0x411ed0,%eax
  400211:	83 e8 08             	sub    $0x8,%eax
  400214:	a3 d0 1e 41 00       	mov    %eax,0x411ed0
  400219:	a1 d0 1e 41 00       	mov    0x411ed0,%eax
  40021e:	85 c0                	test   %eax,%eax
  400220:	79 0a                	jns    40022c <do_move+0x103>
  400222:	b8 00 00 00 00       	mov    $0x0,%eax
  400227:	e9 25 03 00 00       	jmp    400551 <do_move+0x428>
  40022c:	a1 80 1e 41 00       	mov    0x411e80,%eax
  400231:	89 45 f4             	mov    %eax,-0xc(%ebp)
  400234:	e9 96 00 00 00       	jmp    4002cf <do_move+0x1a6>
  400239:	83 7d f4 02          	cmpl   $0x2,-0xc(%ebp)
  40023d:	75 36                	jne    400275 <do_move+0x14c>
  40023f:	8b 0d c4 1e 41 00    	mov    0x411ec4,%ecx
  400245:	8b 55 f4             	mov    -0xc(%ebp),%edx
  400248:	89 d0                	mov    %edx,%eax
  40024a:	01 c0                	add    %eax,%eax
  40024c:	01 d0                	add    %edx,%eax
  40024e:	c1 e0 02             	shl    $0x2,%eax
  400251:	05 c0 1e 41 00       	add    $0x411ec0,%eax
  400256:	89 48 04             	mov    %ecx,0x4(%eax)
  400259:	8b 0d c8 1e 41 00    	mov    0x411ec8,%ecx
  40025f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  400262:	89 d0                	mov    %edx,%eax
  400264:	01 c0                	add    %eax,%eax
  400266:	01 d0                	add    %edx,%eax
  400268:	c1 e0 02             	shl    $0x2,%eax
  40026b:	05 c0 1e 41 00       	add    $0x411ec0,%eax
  400270:	89 48 08             	mov    %ecx,0x8(%eax)
  400273:	eb 56                	jmp    4002cb <do_move+0x1a2>
  400275:	8b 45 f4             	mov    -0xc(%ebp),%eax
  400278:	8d 50 ff             	lea    -0x1(%eax),%edx
  40027b:	89 d0                	mov    %edx,%eax
  40027d:	01 c0                	add    %eax,%eax
  40027f:	01 d0                	add    %edx,%eax
  400281:	c1 e0 02             	shl    $0x2,%eax
  400284:	05 c0 1e 41 00       	add    $0x411ec0,%eax
  400289:	8b 48 04             	mov    0x4(%eax),%ecx
  40028c:	8b 55 f4             	mov    -0xc(%ebp),%edx
  40028f:	89 d0                	mov    %edx,%eax
  400291:	01 c0                	add    %eax,%eax
  400293:	01 d0                	add    %edx,%eax
  400295:	c1 e0 02             	shl    $0x2,%eax
  400298:	05 c0 1e 41 00       	add    $0x411ec0,%eax
  40029d:	89 48 04             	mov    %ecx,0x4(%eax)
  4002a0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4002a3:	8d 50 ff             	lea    -0x1(%eax),%edx
  4002a6:	89 d0                	mov    %edx,%eax
  4002a8:	01 c0                	add    %eax,%eax
  4002aa:	01 d0                	add    %edx,%eax
  4002ac:	c1 e0 02             	shl    $0x2,%eax
  4002af:	05 c0 1e 41 00       	add    $0x411ec0,%eax
  4002b4:	8b 48 08             	mov    0x8(%eax),%ecx
  4002b7:	8b 55 f4             	mov    -0xc(%ebp),%edx
  4002ba:	89 d0                	mov    %edx,%eax
  4002bc:	01 c0                	add    %eax,%eax
  4002be:	01 d0                	add    %edx,%eax
  4002c0:	c1 e0 02             	shl    $0x2,%eax
  4002c3:	05 c0 1e 41 00       	add    $0x411ec0,%eax
  4002c8:	89 48 08             	mov    %ecx,0x8(%eax)
  4002cb:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  4002cf:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
  4002d3:	0f 8f 60 ff ff ff    	jg     400239 <do_move+0x110>
  4002d9:	8b 15 d0 1e 41 00    	mov    0x411ed0,%edx
  4002df:	a1 04 24 40 00       	mov    0x402404,%eax
  4002e4:	39 c2                	cmp    %eax,%edx
  4002e6:	0f 85 f5 01 00 00    	jne    4004e1 <do_move+0x3b8>
  4002ec:	8b 15 d4 1e 41 00    	mov    0x411ed4,%edx
  4002f2:	a1 08 24 40 00       	mov    0x402408,%eax
  4002f7:	39 c2                	cmp    %eax,%edx
  4002f9:	0f 85 e2 01 00 00    	jne    4004e1 <do_move+0x3b8>
  4002ff:	a1 ac 4d 41 00       	mov    0x414dac,%eax
  400304:	83 c0 01             	add    $0x1,%eax
  400307:	a3 ac 4d 41 00       	mov    %eax,0x414dac
  40030c:	a1 80 1e 41 00       	mov    0x411e80,%eax
  400311:	83 c0 01             	add    $0x1,%eax
  400314:	a3 80 1e 41 00       	mov    %eax,0x411e80
  400319:	8b 15 80 1e 41 00    	mov    0x411e80,%edx
  40031f:	8b 0d 88 1e 41 00    	mov    0x411e88,%ecx
  400325:	89 d0                	mov    %edx,%eax
  400327:	01 c0                	add    %eax,%eax
  400329:	01 d0                	add    %edx,%eax
  40032b:	c1 e0 02             	shl    $0x2,%eax
  40032e:	05 c0 1e 41 00       	add    $0x411ec0,%eax
  400333:	89 48 04             	mov    %ecx,0x4(%eax)
  400336:	8b 15 80 1e 41 00    	mov    0x411e80,%edx
  40033c:	8b 0d 8c 1e 41 00    	mov    0x411e8c,%ecx
  400342:	89 d0                	mov    %edx,%eax
  400344:	01 c0                	add    %eax,%eax
  400346:	01 d0                	add    %edx,%eax
  400348:	c1 e0 02             	shl    $0x2,%eax
  40034b:	05 c0 1e 41 00       	add    $0x411ec0,%eax
  400350:	89 48 08             	mov    %ecx,0x8(%eax)
  400353:	a1 80 1e 41 00       	mov    0x411e80,%eax
  400358:	89 45 ec             	mov    %eax,-0x14(%ebp)
  40035b:	eb 2d                	jmp    40038a <do_move+0x261>
  40035d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  400360:	8d 50 ff             	lea    -0x1(%eax),%edx
  400363:	89 d0                	mov    %edx,%eax
  400365:	01 c0                	add    %eax,%eax
  400367:	01 d0                	add    %edx,%eax
  400369:	c1 e0 02             	shl    $0x2,%eax
  40036c:	05 c0 1e 41 00       	add    $0x411ec0,%eax
  400371:	8b 08                	mov    (%eax),%ecx
  400373:	8b 55 ec             	mov    -0x14(%ebp),%edx
  400376:	89 d0                	mov    %edx,%eax
  400378:	01 c0                	add    %eax,%eax
  40037a:	01 d0                	add    %edx,%eax
  40037c:	c1 e0 02             	shl    $0x2,%eax
  40037f:	05 c0 1e 41 00       	add    $0x411ec0,%eax
  400384:	89 08                	mov    %ecx,(%eax)
  400386:	83 6d ec 01          	subl   $0x1,-0x14(%ebp)
  40038a:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
  40038e:	7f cd                	jg     40035d <do_move+0x234>
  400390:	a1 0c 24 40 00       	mov    0x40240c,%eax
  400395:	a3 cc 1e 41 00       	mov    %eax,0x411ecc
  40039a:	e8 0d 09 00 00       	call   400cac <rand>
  40039f:	89 c1                	mov    %eax,%ecx
  4003a1:	ba 83 20 08 82       	mov    $0x82082083,%edx
  4003a6:	89 c8                	mov    %ecx,%eax
  4003a8:	f7 ea                	imul   %edx
  4003aa:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
  4003ad:	c1 f8 05             	sar    $0x5,%eax
  4003b0:	89 c2                	mov    %eax,%edx
  4003b2:	89 c8                	mov    %ecx,%eax
  4003b4:	c1 f8 1f             	sar    $0x1f,%eax
  4003b7:	29 c2                	sub    %eax,%edx
  4003b9:	89 d0                	mov    %edx,%eax
  4003bb:	89 c2                	mov    %eax,%edx
  4003bd:	c1 e2 06             	shl    $0x6,%edx
  4003c0:	29 c2                	sub    %eax,%edx
  4003c2:	89 c8                	mov    %ecx,%eax
  4003c4:	29 d0                	sub    %edx,%eax
  4003c6:	83 c0 20             	add    $0x20,%eax
  4003c9:	a3 0c 24 40 00       	mov    %eax,0x40240c
  4003ce:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  4003d5:	e8 d2 08 00 00       	call   400cac <rand>
  4003da:	89 c1                	mov    %eax,%ecx
  4003dc:	ba ab aa aa 2a       	mov    $0x2aaaaaab,%edx
  4003e1:	89 c8                	mov    %ecx,%eax
  4003e3:	f7 ea                	imul   %edx
  4003e5:	c1 fa 05             	sar    $0x5,%edx
  4003e8:	89 c8                	mov    %ecx,%eax
  4003ea:	c1 f8 1f             	sar    $0x1f,%eax
  4003ed:	29 c2                	sub    %eax,%edx
  4003ef:	89 d0                	mov    %edx,%eax
  4003f1:	01 c0                	add    %eax,%eax
  4003f3:	01 d0                	add    %edx,%eax
  4003f5:	c1 e0 06             	shl    $0x6,%eax
  4003f8:	29 c1                	sub    %eax,%ecx
  4003fa:	89 ca                	mov    %ecx,%edx
  4003fc:	89 15 04 24 40 00    	mov    %edx,0x402404
  400402:	8b 0d 04 24 40 00    	mov    0x402404,%ecx
  400408:	a1 04 24 40 00       	mov    0x402404,%eax
  40040d:	99                   	cltd   
  40040e:	c1 ea 1d             	shr    $0x1d,%edx
  400411:	01 d0                	add    %edx,%eax
  400413:	83 e0 07             	and    $0x7,%eax
  400416:	29 d0                	sub    %edx,%eax
  400418:	29 c1                	sub    %eax,%ecx
  40041a:	89 c8                	mov    %ecx,%eax
  40041c:	a3 04 24 40 00       	mov    %eax,0x402404
  400421:	e8 86 08 00 00       	call   400cac <rand>
  400426:	89 c1                	mov    %eax,%ecx
  400428:	ba d3 20 0d d2       	mov    $0xd20d20d3,%edx
  40042d:	89 c8                	mov    %ecx,%eax
  40042f:	f7 ea                	imul   %edx
  400431:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
  400434:	c1 f8 08             	sar    $0x8,%eax
  400437:	89 c2                	mov    %eax,%edx
  400439:	89 c8                	mov    %ecx,%eax
  40043b:	c1 f8 1f             	sar    $0x1f,%eax
  40043e:	29 c2                	sub    %eax,%edx
  400440:	89 d0                	mov    %edx,%eax
  400442:	69 c0 38 01 00 00    	imul   $0x138,%eax,%eax
  400448:	29 c1                	sub    %eax,%ecx
  40044a:	89 c8                	mov    %ecx,%eax
  40044c:	a3 08 24 40 00       	mov    %eax,0x402408
  400451:	8b 0d 08 24 40 00    	mov    0x402408,%ecx
  400457:	a1 08 24 40 00       	mov    0x402408,%eax
  40045c:	99                   	cltd   
  40045d:	c1 ea 1d             	shr    $0x1d,%edx
  400460:	01 d0                	add    %edx,%eax
  400462:	83 e0 07             	and    $0x7,%eax
  400465:	29 d0                	sub    %edx,%eax
  400467:	29 c1                	sub    %eax,%ecx
  400469:	89 c8                	mov    %ecx,%eax
  40046b:	a3 08 24 40 00       	mov    %eax,0x402408
  400470:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  400477:	eb 46                	jmp    4004bf <do_move+0x396>
  400479:	8b 55 f4             	mov    -0xc(%ebp),%edx
  40047c:	89 d0                	mov    %edx,%eax
  40047e:	01 c0                	add    %eax,%eax
  400480:	01 d0                	add    %edx,%eax
  400482:	c1 e0 02             	shl    $0x2,%eax
  400485:	05 c0 1e 41 00       	add    $0x411ec0,%eax
  40048a:	8b 50 04             	mov    0x4(%eax),%edx
  40048d:	a1 04 24 40 00       	mov    0x402404,%eax
  400492:	39 c2                	cmp    %eax,%edx
  400494:	75 25                	jne    4004bb <do_move+0x392>
  400496:	8b 55 f4             	mov    -0xc(%ebp),%edx
  400499:	89 d0                	mov    %edx,%eax
  40049b:	01 c0                	add    %eax,%eax
  40049d:	01 d0                	add    %edx,%eax
  40049f:	c1 e0 02             	shl    $0x2,%eax
  4004a2:	05 c0 1e 41 00       	add    $0x411ec0,%eax
  4004a7:	8b 50 08             	mov    0x8(%eax),%edx
  4004aa:	a1 08 24 40 00       	mov    0x402408,%eax
  4004af:	39 c2                	cmp    %eax,%edx
  4004b1:	75 08                	jne    4004bb <do_move+0x392>
  4004b3:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
  4004ba:	90                   	nop
  4004bb:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  4004bf:	a1 80 1e 41 00       	mov    0x411e80,%eax
  4004c4:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  4004c7:	7e b0                	jle    400479 <do_move+0x350>
  4004c9:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  4004cd:	75 0d                	jne    4004dc <do_move+0x3b3>
  4004cf:	90                   	nop
  4004d0:	e8 a6 fb ff ff       	call   40007b <draw_whole_snake>
  4004d5:	e8 2b 06 00 00       	call   400b05 <display_all>
  4004da:	eb 05                	jmp    4004e1 <do_move+0x3b8>
  4004dc:	e9 ed fe ff ff       	jmp    4003ce <do_move+0x2a5>
  4004e1:	c7 45 f4 02 00 00 00 	movl   $0x2,-0xc(%ebp)
  4004e8:	eb 47                	jmp    400531 <do_move+0x408>
  4004ea:	8b 0d d0 1e 41 00    	mov    0x411ed0,%ecx
  4004f0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  4004f3:	89 d0                	mov    %edx,%eax
  4004f5:	01 c0                	add    %eax,%eax
  4004f7:	01 d0                	add    %edx,%eax
  4004f9:	c1 e0 02             	shl    $0x2,%eax
  4004fc:	05 c0 1e 41 00       	add    $0x411ec0,%eax
  400501:	8b 40 04             	mov    0x4(%eax),%eax
  400504:	39 c1                	cmp    %eax,%ecx
  400506:	75 25                	jne    40052d <do_move+0x404>
  400508:	8b 0d d4 1e 41 00    	mov    0x411ed4,%ecx
  40050e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  400511:	89 d0                	mov    %edx,%eax
  400513:	01 c0                	add    %eax,%eax
  400515:	01 d0                	add    %edx,%eax
  400517:	c1 e0 02             	shl    $0x2,%eax
  40051a:	05 c0 1e 41 00       	add    $0x411ec0,%eax
  40051f:	8b 40 08             	mov    0x8(%eax),%eax
  400522:	39 c1                	cmp    %eax,%ecx
  400524:	75 07                	jne    40052d <do_move+0x404>
  400526:	b8 00 00 00 00       	mov    $0x0,%eax
  40052b:	eb 24                	jmp    400551 <do_move+0x428>
  40052d:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  400531:	a1 80 1e 41 00       	mov    0x411e80,%eax
  400536:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  400539:	7e af                	jle    4004ea <do_move+0x3c1>
  40053b:	a1 80 1e 41 00       	mov    0x411e80,%eax
  400540:	83 f8 32             	cmp    $0x32,%eax
  400543:	75 07                	jne    40054c <do_move+0x423>
  400545:	b8 02 00 00 00       	mov    $0x2,%eax
  40054a:	eb 05                	jmp    400551 <do_move+0x428>
  40054c:	b8 01 00 00 00       	mov    $0x1,%eax
  400551:	c9                   	leave  
  400552:	c3                   	ret    

00400553 <game_init>:
  400553:	55                   	push   %ebp
  400554:	89 e5                	mov    %esp,%ebp
  400556:	83 ec 08             	sub    $0x8,%esp
  400559:	c7 05 ac 4d 41 00 00 	movl   $0x0,0x414dac
  400560:	00 00 00 
  400563:	e8 b1 05 00 00       	call   400b19 <get_time>
  400568:	89 c1                	mov    %eax,%ecx
  40056a:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
  40056f:	89 c8                	mov    %ecx,%eax
  400571:	f7 ea                	imul   %edx
  400573:	c1 fa 06             	sar    $0x6,%edx
  400576:	89 c8                	mov    %ecx,%eax
  400578:	c1 f8 1f             	sar    $0x1f,%eax
  40057b:	29 c2                	sub    %eax,%edx
  40057d:	89 d0                	mov    %edx,%eax
  40057f:	69 c0 e8 03 00 00    	imul   $0x3e8,%eax,%eax
  400585:	29 c1                	sub    %eax,%ecx
  400587:	89 c8                	mov    %ecx,%eax
  400589:	83 ec 0c             	sub    $0xc,%esp
  40058c:	50                   	push   %eax
  40058d:	e8 0d 07 00 00       	call   400c9f <srand>
  400592:	83 c4 10             	add    $0x10,%esp
  400595:	c7 05 80 1e 41 00 02 	movl   $0x2,0x411e80
  40059c:	00 00 00 
  40059f:	c7 05 b0 4d 41 00 01 	movl   $0x1,0x414db0
  4005a6:	00 00 00 
  4005a9:	c7 05 d0 1e 41 00 60 	movl   $0x60,0x411ed0
  4005b0:	00 00 00 
  4005b3:	c7 05 d4 1e 41 00 60 	movl   $0x60,0x411ed4
  4005ba:	00 00 00 
  4005bd:	c7 05 cc 1e 41 00 01 	movl   $0x1,0x411ecc
  4005c4:	00 00 00 
  4005c7:	c7 05 dc 1e 41 00 60 	movl   $0x60,0x411edc
  4005ce:	00 00 00 
  4005d1:	c7 05 e0 1e 41 00 68 	movl   $0x68,0x411ee0
  4005d8:	00 00 00 
  4005db:	c7 05 d8 1e 41 00 06 	movl   $0x6,0x411ed8
  4005e2:	00 00 00 
  4005e5:	e8 1c fb ff ff       	call   400106 <make_food>
  4005ea:	e8 73 05 00 00       	call   400b62 <reset_last_key>
  4005ef:	c9                   	leave  
  4005f0:	c3                   	ret    

004005f1 <game_loop>:
  4005f1:	55                   	push   %ebp
  4005f2:	89 e5                	mov    %esp,%ebp
  4005f4:	83 ec 18             	sub    $0x18,%esp
  4005f7:	e8 57 ff ff ff       	call   400553 <game_init>
  4005fc:	e8 40 01 00 00       	call   400741 <init>
  400601:	e8 ff 04 00 00       	call   400b05 <display_all>
  400606:	83 ec 0c             	sub    $0xc,%esp
  400609:	68 d1 0c 40 00       	push   $0x400cd1
  40060e:	e8 60 05 00 00       	call   400b73 <print>
  400613:	83 c4 10             	add    $0x10,%esp
  400616:	e8 2b 05 00 00       	call   400b46 <last_key_code>
  40061b:	a3 00 24 40 00       	mov    %eax,0x402400
  400620:	e8 f4 04 00 00       	call   400b19 <get_time>
  400625:	89 c1                	mov    %eax,%ecx
  400627:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
  40062c:	89 c8                	mov    %ecx,%eax
  40062e:	f7 ea                	imul   %edx
  400630:	c1 fa 06             	sar    $0x6,%edx
  400633:	89 c8                	mov    %ecx,%eax
  400635:	c1 f8 1f             	sar    $0x1f,%eax
  400638:	29 c2                	sub    %eax,%edx
  40063a:	89 d0                	mov    %edx,%eax
  40063c:	69 c0 c8 00 00 00    	imul   $0xc8,%eax,%eax
  400642:	29 c1                	sub    %eax,%ecx
  400644:	89 c8                	mov    %ecx,%eax
  400646:	85 c0                	test   %eax,%eax
  400648:	75 4e                	jne    400698 <game_loop+0xa7>
  40064a:	e8 f2 00 00 00       	call   400741 <init>
  40064f:	fa                   	cli    
  400650:	e8 d4 fa ff ff       	call   400129 <do_move>
  400655:	a3 b0 4d 41 00       	mov    %eax,0x414db0
  40065a:	a1 b0 4d 41 00       	mov    0x414db0,%eax
  40065f:	83 f8 01             	cmp    $0x1,%eax
  400662:	74 0c                	je     400670 <game_loop+0x7f>
  400664:	90                   	nop
  400665:	a1 b0 4d 41 00       	mov    0x414db0,%eax
  40066a:	85 c0                	test   %eax,%eax
  40066c:	75 61                	jne    4006cf <game_loop+0xde>
  40066e:	eb 2d                	jmp    40069d <game_loop+0xac>
  400670:	fb                   	sti    
  400671:	6a 04                	push   $0x4
  400673:	6a 00                	push   $0x0
  400675:	6a 00                	push   $0x0
  400677:	68 de 0c 40 00       	push   $0x400cde
  40067c:	e8 4e 02 00 00       	call   4008cf <draw_string>
  400681:	83 c4 10             	add    $0x10,%esp
  400684:	e8 77 f9 ff ff       	call   400000 <draw_mark>
  400689:	e8 ed f9 ff ff       	call   40007b <draw_whole_snake>
  40068e:	e8 72 04 00 00       	call   400b05 <display_all>
  400693:	e8 9d 04 00 00       	call   400b35 <time_pop>
  400698:	e9 79 ff ff ff       	jmp    400616 <game_loop+0x25>
  40069d:	e8 9f 00 00 00       	call   400741 <init>
  4006a2:	6a 05                	push   $0x5
  4006a4:	6a 50                	push   $0x50
  4006a6:	6a 64                	push   $0x64
  4006a8:	68 ea 0c 40 00       	push   $0x400cea
  4006ad:	e8 1d 02 00 00       	call   4008cf <draw_string>
  4006b2:	83 c4 10             	add    $0x10,%esp
  4006b5:	6a 04                	push   $0x4
  4006b7:	6a 64                	push   $0x64
  4006b9:	6a 50                	push   $0x50
  4006bb:	68 04 0d 40 00       	push   $0x400d04
  4006c0:	e8 5a 02 00 00       	call   40091f <draw_big_string>
  4006c5:	83 c4 10             	add    $0x10,%esp
  4006c8:	e8 38 04 00 00       	call   400b05 <display_all>
  4006cd:	eb 30                	jmp    4006ff <game_loop+0x10e>
  4006cf:	e8 6d 00 00 00       	call   400741 <init>
  4006d4:	6a 05                	push   $0x5
  4006d6:	6a 50                	push   $0x50
  4006d8:	6a 64                	push   $0x64
  4006da:	68 ea 0c 40 00       	push   $0x400cea
  4006df:	e8 eb 01 00 00       	call   4008cf <draw_string>
  4006e4:	83 c4 10             	add    $0x10,%esp
  4006e7:	6a 04                	push   $0x4
  4006e9:	6a 78                	push   $0x78
  4006eb:	6a 50                	push   $0x50
  4006ed:	68 0e 0d 40 00       	push   $0x400d0e
  4006f2:	e8 28 02 00 00       	call   40091f <draw_big_string>
  4006f7:	83 c4 10             	add    $0x10,%esp
  4006fa:	e8 06 04 00 00       	call   400b05 <display_all>
  4006ff:	e8 5e 04 00 00       	call   400b62 <reset_last_key>
  400704:	e8 3d 04 00 00       	call   400b46 <last_key_code>
  400709:	89 45 f4             	mov    %eax,-0xc(%ebp)
  40070c:	fa                   	cli    
  40070d:	83 7d f4 11          	cmpl   $0x11,-0xc(%ebp)
  400711:	75 03                	jne    400716 <game_loop+0x125>
  400713:	fb                   	sti    
  400714:	eb 03                	jmp    400719 <game_loop+0x128>
  400716:	fb                   	sti    
  400717:	eb eb                	jmp    400704 <game_loop+0x113>
  400719:	e9 d9 fe ff ff       	jmp    4005f7 <game_loop+0x6>

0040071e <draw_pixel>:
  40071e:	55                   	push   %ebp
  40071f:	89 e5                	mov    %esp,%ebp
  400721:	8b 45 08             	mov    0x8(%ebp),%eax
  400724:	c1 e0 08             	shl    $0x8,%eax
  400727:	89 c2                	mov    %eax,%edx
  400729:	8b 45 08             	mov    0x8(%ebp),%eax
  40072c:	c1 e0 06             	shl    $0x6,%eax
  40072f:	01 c2                	add    %eax,%edx
  400731:	8b 45 0c             	mov    0xc(%ebp),%eax
  400734:	01 d0                	add    %edx,%eax
  400736:	8b 55 10             	mov    0x10(%ebp),%edx
  400739:	88 90 40 24 40 00    	mov    %dl,0x402440(%eax)
  40073f:	5d                   	pop    %ebp
  400740:	c3                   	ret    

00400741 <init>:
  400741:	55                   	push   %ebp
  400742:	89 e5                	mov    %esp,%ebp
  400744:	eb fe                	jmp    400744 <init+0x3>

00400746 <draw_character>:
  400746:	55                   	push   %ebp
  400747:	89 e5                	mov    %esp,%ebp
  400749:	83 ec 14             	sub    $0x14,%esp
  40074c:	8b 45 08             	mov    0x8(%ebp),%eax
  40074f:	88 45 ec             	mov    %al,-0x14(%ebp)
  400752:	0f be 45 ec          	movsbl -0x14(%ebp),%eax
  400756:	c1 e0 03             	shl    $0x3,%eax
  400759:	05 00 20 40 00       	add    $0x402000,%eax
  40075e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  400761:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  400768:	eb 52                	jmp    4007bc <draw_character+0x76>
  40076a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  400771:	eb 3f                	jmp    4007b2 <draw_character+0x6c>
  400773:	8b 55 fc             	mov    -0x4(%ebp),%edx
  400776:	8b 45 f4             	mov    -0xc(%ebp),%eax
  400779:	01 d0                	add    %edx,%eax
  40077b:	0f b6 00             	movzbl (%eax),%eax
  40077e:	0f be d0             	movsbl %al,%edx
  400781:	8b 45 f8             	mov    -0x8(%ebp),%eax
  400784:	89 c1                	mov    %eax,%ecx
  400786:	d3 fa                	sar    %cl,%edx
  400788:	89 d0                	mov    %edx,%eax
  40078a:	83 e0 01             	and    $0x1,%eax
  40078d:	85 c0                	test   %eax,%eax
  40078f:	74 1d                	je     4007ae <draw_character+0x68>
  400791:	8b 55 10             	mov    0x10(%ebp),%edx
  400794:	8b 45 f8             	mov    -0x8(%ebp),%eax
  400797:	01 c2                	add    %eax,%edx
  400799:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  40079c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  40079f:	01 c8                	add    %ecx,%eax
  4007a1:	ff 75 14             	pushl  0x14(%ebp)
  4007a4:	52                   	push   %edx
  4007a5:	50                   	push   %eax
  4007a6:	e8 73 ff ff ff       	call   40071e <draw_pixel>
  4007ab:	83 c4 0c             	add    $0xc,%esp
  4007ae:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  4007b2:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  4007b6:	7e bb                	jle    400773 <draw_character+0x2d>
  4007b8:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  4007bc:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
  4007c0:	7e a8                	jle    40076a <draw_character+0x24>
  4007c2:	c9                   	leave  
  4007c3:	c3                   	ret    

004007c4 <draw_character_2>:
  4007c4:	55                   	push   %ebp
  4007c5:	89 e5                	mov    %esp,%ebp
  4007c7:	83 ec 14             	sub    $0x14,%esp
  4007ca:	8b 45 08             	mov    0x8(%ebp),%eax
  4007cd:	88 45 ec             	mov    %al,-0x14(%ebp)
  4007d0:	0f be 45 ec          	movsbl -0x14(%ebp),%eax
  4007d4:	c1 e0 03             	shl    $0x3,%eax
  4007d7:	05 00 20 40 00       	add    $0x402000,%eax
  4007dc:	89 45 f4             	mov    %eax,-0xc(%ebp)
  4007df:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  4007e6:	e9 d8 00 00 00       	jmp    4008c3 <draw_character_2+0xff>
  4007eb:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  4007f2:	e9 be 00 00 00       	jmp    4008b5 <draw_character_2+0xf1>
  4007f7:	8b 55 fc             	mov    -0x4(%ebp),%edx
  4007fa:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4007fd:	01 d0                	add    %edx,%eax
  4007ff:	0f b6 00             	movzbl (%eax),%eax
  400802:	0f be d0             	movsbl %al,%edx
  400805:	8b 45 f8             	mov    -0x8(%ebp),%eax
  400808:	89 c1                	mov    %eax,%ecx
  40080a:	d3 fa                	sar    %cl,%edx
  40080c:	89 d0                	mov    %edx,%eax
  40080e:	83 e0 01             	and    $0x1,%eax
  400811:	85 c0                	test   %eax,%eax
  400813:	0f 84 98 00 00 00    	je     4008b1 <draw_character_2+0xed>
  400819:	8b 45 f8             	mov    -0x8(%ebp),%eax
  40081c:	8d 14 00             	lea    (%eax,%eax,1),%edx
  40081f:	8b 45 10             	mov    0x10(%ebp),%eax
  400822:	01 c2                	add    %eax,%edx
  400824:	8b 45 fc             	mov    -0x4(%ebp),%eax
  400827:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
  40082a:	8b 45 0c             	mov    0xc(%ebp),%eax
  40082d:	01 c8                	add    %ecx,%eax
  40082f:	ff 75 14             	pushl  0x14(%ebp)
  400832:	52                   	push   %edx
  400833:	50                   	push   %eax
  400834:	e8 e5 fe ff ff       	call   40071e <draw_pixel>
  400839:	83 c4 0c             	add    $0xc,%esp
  40083c:	8b 45 f8             	mov    -0x8(%ebp),%eax
  40083f:	8d 14 00             	lea    (%eax,%eax,1),%edx
  400842:	8b 45 10             	mov    0x10(%ebp),%eax
  400845:	01 c2                	add    %eax,%edx
  400847:	8b 45 fc             	mov    -0x4(%ebp),%eax
  40084a:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
  40084d:	8b 45 0c             	mov    0xc(%ebp),%eax
  400850:	01 c8                	add    %ecx,%eax
  400852:	83 c0 01             	add    $0x1,%eax
  400855:	ff 75 14             	pushl  0x14(%ebp)
  400858:	52                   	push   %edx
  400859:	50                   	push   %eax
  40085a:	e8 bf fe ff ff       	call   40071e <draw_pixel>
  40085f:	83 c4 0c             	add    $0xc,%esp
  400862:	8b 45 f8             	mov    -0x8(%ebp),%eax
  400865:	8d 14 00             	lea    (%eax,%eax,1),%edx
  400868:	8b 45 10             	mov    0x10(%ebp),%eax
  40086b:	01 d0                	add    %edx,%eax
  40086d:	8d 50 01             	lea    0x1(%eax),%edx
  400870:	8b 45 fc             	mov    -0x4(%ebp),%eax
  400873:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
  400876:	8b 45 0c             	mov    0xc(%ebp),%eax
  400879:	01 c8                	add    %ecx,%eax
  40087b:	83 c0 01             	add    $0x1,%eax
  40087e:	ff 75 14             	pushl  0x14(%ebp)
  400881:	52                   	push   %edx
  400882:	50                   	push   %eax
  400883:	e8 96 fe ff ff       	call   40071e <draw_pixel>
  400888:	83 c4 0c             	add    $0xc,%esp
  40088b:	8b 45 f8             	mov    -0x8(%ebp),%eax
  40088e:	8d 14 00             	lea    (%eax,%eax,1),%edx
  400891:	8b 45 10             	mov    0x10(%ebp),%eax
  400894:	01 d0                	add    %edx,%eax
  400896:	8d 50 01             	lea    0x1(%eax),%edx
  400899:	8b 45 fc             	mov    -0x4(%ebp),%eax
  40089c:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
  40089f:	8b 45 0c             	mov    0xc(%ebp),%eax
  4008a2:	01 c8                	add    %ecx,%eax
  4008a4:	ff 75 14             	pushl  0x14(%ebp)
  4008a7:	52                   	push   %edx
  4008a8:	50                   	push   %eax
  4008a9:	e8 70 fe ff ff       	call   40071e <draw_pixel>
  4008ae:	83 c4 0c             	add    $0xc,%esp
  4008b1:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  4008b5:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  4008b9:	0f 8e 38 ff ff ff    	jle    4007f7 <draw_character_2+0x33>
  4008bf:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  4008c3:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
  4008c7:	0f 8e 1e ff ff ff    	jle    4007eb <draw_character_2+0x27>
  4008cd:	c9                   	leave  
  4008ce:	c3                   	ret    

004008cf <draw_string>:
  4008cf:	55                   	push   %ebp
  4008d0:	89 e5                	mov    %esp,%ebp
  4008d2:	eb 3f                	jmp    400913 <draw_string+0x44>
  4008d4:	8b 45 08             	mov    0x8(%ebp),%eax
  4008d7:	8d 50 01             	lea    0x1(%eax),%edx
  4008da:	89 55 08             	mov    %edx,0x8(%ebp)
  4008dd:	0f b6 00             	movzbl (%eax),%eax
  4008e0:	0f be c0             	movsbl %al,%eax
  4008e3:	ff 75 14             	pushl  0x14(%ebp)
  4008e6:	ff 75 10             	pushl  0x10(%ebp)
  4008e9:	ff 75 0c             	pushl  0xc(%ebp)
  4008ec:	50                   	push   %eax
  4008ed:	e8 54 fe ff ff       	call   400746 <draw_character>
  4008f2:	83 c4 10             	add    $0x10,%esp
  4008f5:	8b 45 10             	mov    0x10(%ebp),%eax
  4008f8:	83 c0 08             	add    $0x8,%eax
  4008fb:	3d 3f 01 00 00       	cmp    $0x13f,%eax
  400900:	7e 0d                	jle    40090f <draw_string+0x40>
  400902:	83 45 0c 08          	addl   $0x8,0xc(%ebp)
  400906:	c7 45 10 00 00 00 00 	movl   $0x0,0x10(%ebp)
  40090d:	eb 04                	jmp    400913 <draw_string+0x44>
  40090f:	83 45 10 08          	addl   $0x8,0x10(%ebp)
  400913:	8b 45 08             	mov    0x8(%ebp),%eax
  400916:	0f b6 00             	movzbl (%eax),%eax
  400919:	84 c0                	test   %al,%al
  40091b:	75 b7                	jne    4008d4 <draw_string+0x5>
  40091d:	c9                   	leave  
  40091e:	c3                   	ret    

0040091f <draw_big_string>:
  40091f:	55                   	push   %ebp
  400920:	89 e5                	mov    %esp,%ebp
  400922:	eb 3f                	jmp    400963 <draw_big_string+0x44>
  400924:	8b 45 08             	mov    0x8(%ebp),%eax
  400927:	8d 50 01             	lea    0x1(%eax),%edx
  40092a:	89 55 08             	mov    %edx,0x8(%ebp)
  40092d:	0f b6 00             	movzbl (%eax),%eax
  400930:	0f be c0             	movsbl %al,%eax
  400933:	ff 75 14             	pushl  0x14(%ebp)
  400936:	ff 75 10             	pushl  0x10(%ebp)
  400939:	ff 75 0c             	pushl  0xc(%ebp)
  40093c:	50                   	push   %eax
  40093d:	e8 82 fe ff ff       	call   4007c4 <draw_character_2>
  400942:	83 c4 10             	add    $0x10,%esp
  400945:	8b 45 10             	mov    0x10(%ebp),%eax
  400948:	83 c0 10             	add    $0x10,%eax
  40094b:	3d 3f 01 00 00       	cmp    $0x13f,%eax
  400950:	7e 0d                	jle    40095f <draw_big_string+0x40>
  400952:	83 45 0c 10          	addl   $0x10,0xc(%ebp)
  400956:	c7 45 10 00 00 00 00 	movl   $0x0,0x10(%ebp)
  40095d:	eb 04                	jmp    400963 <draw_big_string+0x44>
  40095f:	83 45 10 10          	addl   $0x10,0x10(%ebp)
  400963:	8b 45 08             	mov    0x8(%ebp),%eax
  400966:	0f b6 00             	movzbl (%eax),%eax
  400969:	84 c0                	test   %al,%al
  40096b:	75 b7                	jne    400924 <draw_big_string+0x5>
  40096d:	c9                   	leave  
  40096e:	c3                   	ret    

0040096f <draw_food>:
  40096f:	55                   	push   %ebp
  400970:	89 e5                	mov    %esp,%ebp
  400972:	83 ec 10             	sub    $0x10,%esp
  400975:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  40097c:	eb 34                	jmp    4009b2 <draw_food+0x43>
  40097e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  400985:	eb 21                	jmp    4009a8 <draw_food+0x39>
  400987:	8b 55 0c             	mov    0xc(%ebp),%edx
  40098a:	8b 45 f8             	mov    -0x8(%ebp),%eax
  40098d:	01 c2                	add    %eax,%edx
  40098f:	8b 4d 08             	mov    0x8(%ebp),%ecx
  400992:	8b 45 fc             	mov    -0x4(%ebp),%eax
  400995:	01 c8                	add    %ecx,%eax
  400997:	ff 75 10             	pushl  0x10(%ebp)
  40099a:	52                   	push   %edx
  40099b:	50                   	push   %eax
  40099c:	e8 7d fd ff ff       	call   40071e <draw_pixel>
  4009a1:	83 c4 0c             	add    $0xc,%esp
  4009a4:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  4009a8:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  4009ac:	7e d9                	jle    400987 <draw_food+0x18>
  4009ae:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  4009b2:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
  4009b6:	7e c6                	jle    40097e <draw_food+0xf>
  4009b8:	c9                   	leave  
  4009b9:	c3                   	ret    

004009ba <draw_snake>:
  4009ba:	55                   	push   %ebp
  4009bb:	89 e5                	mov    %esp,%ebp
  4009bd:	83 ec 10             	sub    $0x10,%esp
  4009c0:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  4009c7:	eb 34                	jmp    4009fd <draw_snake+0x43>
  4009c9:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  4009d0:	eb 21                	jmp    4009f3 <draw_snake+0x39>
  4009d2:	8b 55 0c             	mov    0xc(%ebp),%edx
  4009d5:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4009d8:	01 c2                	add    %eax,%edx
  4009da:	8b 4d 08             	mov    0x8(%ebp),%ecx
  4009dd:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4009e0:	01 c8                	add    %ecx,%eax
  4009e2:	ff 75 10             	pushl  0x10(%ebp)
  4009e5:	52                   	push   %edx
  4009e6:	50                   	push   %eax
  4009e7:	e8 32 fd ff ff       	call   40071e <draw_pixel>
  4009ec:	83 c4 0c             	add    $0xc,%esp
  4009ef:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  4009f3:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  4009f7:	7e d9                	jle    4009d2 <draw_snake+0x18>
  4009f9:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  4009fd:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
  400a01:	7e c6                	jle    4009c9 <draw_snake+0xf>
  400a03:	6a 00                	push   $0x0
  400a05:	ff 75 0c             	pushl  0xc(%ebp)
  400a08:	ff 75 08             	pushl  0x8(%ebp)
  400a0b:	e8 0e fd ff ff       	call   40071e <draw_pixel>
  400a10:	83 c4 0c             	add    $0xc,%esp
  400a13:	8b 45 0c             	mov    0xc(%ebp),%eax
  400a16:	83 c0 01             	add    $0x1,%eax
  400a19:	6a 00                	push   $0x0
  400a1b:	50                   	push   %eax
  400a1c:	ff 75 08             	pushl  0x8(%ebp)
  400a1f:	e8 fa fc ff ff       	call   40071e <draw_pixel>
  400a24:	83 c4 0c             	add    $0xc,%esp
  400a27:	8b 45 08             	mov    0x8(%ebp),%eax
  400a2a:	83 c0 01             	add    $0x1,%eax
  400a2d:	6a 00                	push   $0x0
  400a2f:	ff 75 0c             	pushl  0xc(%ebp)
  400a32:	50                   	push   %eax
  400a33:	e8 e6 fc ff ff       	call   40071e <draw_pixel>
  400a38:	83 c4 0c             	add    $0xc,%esp
  400a3b:	8b 45 0c             	mov    0xc(%ebp),%eax
  400a3e:	83 c0 06             	add    $0x6,%eax
  400a41:	6a 00                	push   $0x0
  400a43:	50                   	push   %eax
  400a44:	ff 75 08             	pushl  0x8(%ebp)
  400a47:	e8 d2 fc ff ff       	call   40071e <draw_pixel>
  400a4c:	83 c4 0c             	add    $0xc,%esp
  400a4f:	8b 45 0c             	mov    0xc(%ebp),%eax
  400a52:	83 c0 07             	add    $0x7,%eax
  400a55:	6a 00                	push   $0x0
  400a57:	50                   	push   %eax
  400a58:	ff 75 08             	pushl  0x8(%ebp)
  400a5b:	e8 be fc ff ff       	call   40071e <draw_pixel>
  400a60:	83 c4 0c             	add    $0xc,%esp
  400a63:	8b 45 0c             	mov    0xc(%ebp),%eax
  400a66:	8d 50 07             	lea    0x7(%eax),%edx
  400a69:	8b 45 08             	mov    0x8(%ebp),%eax
  400a6c:	83 c0 01             	add    $0x1,%eax
  400a6f:	6a 00                	push   $0x0
  400a71:	52                   	push   %edx
  400a72:	50                   	push   %eax
  400a73:	e8 a6 fc ff ff       	call   40071e <draw_pixel>
  400a78:	83 c4 0c             	add    $0xc,%esp
  400a7b:	8b 45 08             	mov    0x8(%ebp),%eax
  400a7e:	83 c0 07             	add    $0x7,%eax
  400a81:	6a 00                	push   $0x0
  400a83:	ff 75 0c             	pushl  0xc(%ebp)
  400a86:	50                   	push   %eax
  400a87:	e8 92 fc ff ff       	call   40071e <draw_pixel>
  400a8c:	83 c4 0c             	add    $0xc,%esp
  400a8f:	8b 45 0c             	mov    0xc(%ebp),%eax
  400a92:	8d 50 01             	lea    0x1(%eax),%edx
  400a95:	8b 45 08             	mov    0x8(%ebp),%eax
  400a98:	83 c0 07             	add    $0x7,%eax
  400a9b:	6a 00                	push   $0x0
  400a9d:	52                   	push   %edx
  400a9e:	50                   	push   %eax
  400a9f:	e8 7a fc ff ff       	call   40071e <draw_pixel>
  400aa4:	83 c4 0c             	add    $0xc,%esp
  400aa7:	8b 45 08             	mov    0x8(%ebp),%eax
  400aaa:	83 c0 06             	add    $0x6,%eax
  400aad:	6a 00                	push   $0x0
  400aaf:	ff 75 0c             	pushl  0xc(%ebp)
  400ab2:	50                   	push   %eax
  400ab3:	e8 66 fc ff ff       	call   40071e <draw_pixel>
  400ab8:	83 c4 0c             	add    $0xc,%esp
  400abb:	8b 45 0c             	mov    0xc(%ebp),%eax
  400abe:	8d 50 06             	lea    0x6(%eax),%edx
  400ac1:	8b 45 08             	mov    0x8(%ebp),%eax
  400ac4:	83 c0 07             	add    $0x7,%eax
  400ac7:	6a 00                	push   $0x0
  400ac9:	52                   	push   %edx
  400aca:	50                   	push   %eax
  400acb:	e8 4e fc ff ff       	call   40071e <draw_pixel>
  400ad0:	83 c4 0c             	add    $0xc,%esp
  400ad3:	8b 45 0c             	mov    0xc(%ebp),%eax
  400ad6:	8d 50 07             	lea    0x7(%eax),%edx
  400ad9:	8b 45 08             	mov    0x8(%ebp),%eax
  400adc:	83 c0 07             	add    $0x7,%eax
  400adf:	6a 00                	push   $0x0
  400ae1:	52                   	push   %edx
  400ae2:	50                   	push   %eax
  400ae3:	e8 36 fc ff ff       	call   40071e <draw_pixel>
  400ae8:	83 c4 0c             	add    $0xc,%esp
  400aeb:	8b 45 0c             	mov    0xc(%ebp),%eax
  400aee:	8d 50 07             	lea    0x7(%eax),%edx
  400af1:	8b 45 08             	mov    0x8(%ebp),%eax
  400af4:	83 c0 06             	add    $0x6,%eax
  400af7:	6a 00                	push   $0x0
  400af9:	52                   	push   %edx
  400afa:	50                   	push   %eax
  400afb:	e8 1e fc ff ff       	call   40071e <draw_pixel>
  400b00:	83 c4 0c             	add    $0xc,%esp
  400b03:	c9                   	leave  
  400b04:	c3                   	ret    

00400b05 <display_all>:
  400b05:	55                   	push   %ebp
  400b06:	89 e5                	mov    %esp,%ebp
  400b08:	53                   	push   %ebx
  400b09:	b8 04 00 00 00       	mov    $0x4,%eax
  400b0e:	b8 40 24 40 00       	mov    $0x402440,%eax
  400b13:	89 c3                	mov    %eax,%ebx
  400b15:	89 db                	mov    %ebx,%ebx
  400b17:	eb fe                	jmp    400b17 <display_all+0x12>

00400b19 <get_time>:
  400b19:	55                   	push   %ebp
  400b1a:	89 e5                	mov    %esp,%ebp
  400b1c:	83 ec 10             	sub    $0x10,%esp
  400b1f:	b8 02 00 00 00       	mov    $0x2,%eax
  400b24:	bb 00 00 00 00       	mov    $0x0,%ebx
  400b29:	cd 80                	int    $0x80
  400b2b:	89 c0                	mov    %eax,%eax
  400b2d:	89 45 fc             	mov    %eax,-0x4(%ebp)
  400b30:	8b 45 fc             	mov    -0x4(%ebp),%eax
  400b33:	c9                   	leave  
  400b34:	c3                   	ret    

00400b35 <time_pop>:
  400b35:	55                   	push   %ebp
  400b36:	89 e5                	mov    %esp,%ebp
  400b38:	b8 02 00 00 00       	mov    $0x2,%eax
  400b3d:	bb 01 00 00 00       	mov    $0x1,%ebx
  400b42:	cd 80                	int    $0x80
  400b44:	5d                   	pop    %ebp
  400b45:	c3                   	ret    

00400b46 <last_key_code>:
  400b46:	55                   	push   %ebp
  400b47:	89 e5                	mov    %esp,%ebp
  400b49:	83 ec 10             	sub    $0x10,%esp
  400b4c:	b8 03 00 00 00       	mov    $0x3,%eax
  400b51:	bb 00 00 00 00       	mov    $0x0,%ebx
  400b56:	cd 80                	int    $0x80
  400b58:	89 c0                	mov    %eax,%eax
  400b5a:	89 45 fc             	mov    %eax,-0x4(%ebp)
  400b5d:	8b 45 fc             	mov    -0x4(%ebp),%eax
  400b60:	c9                   	leave  
  400b61:	c3                   	ret    

00400b62 <reset_last_key>:
  400b62:	55                   	push   %ebp
  400b63:	89 e5                	mov    %esp,%ebp
  400b65:	b8 03 00 00 00       	mov    $0x3,%eax
  400b6a:	bb 01 00 00 00       	mov    $0x1,%ebx
  400b6f:	cd 80                	int    $0x80
  400b71:	5d                   	pop    %ebp
  400b72:	c3                   	ret    

00400b73 <print>:
  400b73:	55                   	push   %ebp
  400b74:	89 e5                	mov    %esp,%ebp
  400b76:	8b 45 08             	mov    0x8(%ebp),%eax
  400b79:	89 c1                	mov    %eax,%ecx
  400b7b:	b8 01 00 00 00       	mov    $0x1,%eax
  400b80:	bb 01 00 00 00       	mov    $0x1,%ebx
  400b85:	cd 80                	int    $0x80
  400b87:	5d                   	pop    %ebp
  400b88:	c3                   	ret    

00400b89 <my_memcpy>:
  400b89:	55                   	push   %ebp
  400b8a:	89 e5                	mov    %esp,%ebp
  400b8c:	57                   	push   %edi
  400b8d:	56                   	push   %esi
  400b8e:	53                   	push   %ebx
  400b8f:	8b 45 10             	mov    0x10(%ebp),%eax
  400b92:	8b 55 0c             	mov    0xc(%ebp),%edx
  400b95:	8b 5d 08             	mov    0x8(%ebp),%ebx
  400b98:	89 c1                	mov    %eax,%ecx
  400b9a:	89 d6                	mov    %edx,%esi
  400b9c:	89 df                	mov    %ebx,%edi
  400b9e:	fc                   	cld    
  400b9f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  400ba1:	5b                   	pop    %ebx
  400ba2:	5e                   	pop    %esi
  400ba3:	5f                   	pop    %edi
  400ba4:	5d                   	pop    %ebp
  400ba5:	c3                   	ret    

00400ba6 <my_memset>:
  400ba6:	55                   	push   %ebp
  400ba7:	89 e5                	mov    %esp,%ebp
  400ba9:	57                   	push   %edi
  400baa:	53                   	push   %ebx
  400bab:	8b 55 10             	mov    0x10(%ebp),%edx
  400bae:	8b 45 0c             	mov    0xc(%ebp),%eax
  400bb1:	8b 5d 08             	mov    0x8(%ebp),%ebx
  400bb4:	89 d1                	mov    %edx,%ecx
  400bb6:	89 df                	mov    %ebx,%edi
  400bb8:	fc                   	cld    
  400bb9:	f3 aa                	rep stos %al,%es:(%edi)
  400bbb:	5b                   	pop    %ebx
  400bbc:	5f                   	pop    %edi
  400bbd:	5d                   	pop    %ebp
  400bbe:	c3                   	ret    

00400bbf <change>:
  400bbf:	55                   	push   %ebp
  400bc0:	89 e5                	mov    %esp,%ebp
  400bc2:	53                   	push   %ebx
  400bc3:	83 c4 80             	add    $0xffffff80,%esp
  400bc6:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  400bcd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  400bd4:	8b 45 08             	mov    0x8(%ebp),%eax
  400bd7:	89 45 ec             	mov    %eax,-0x14(%ebp)
  400bda:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  400bde:	75 14                	jne    400bf4 <change+0x35>
  400be0:	8b 45 0c             	mov    0xc(%ebp),%eax
  400be3:	c6 00 30             	movb   $0x30,(%eax)
  400be6:	8b 45 0c             	mov    0xc(%ebp),%eax
  400be9:	83 c0 01             	add    $0x1,%eax
  400bec:	c6 00 00             	movb   $0x0,(%eax)
  400bef:	e9 a5 00 00 00       	jmp    400c99 <change+0xda>
  400bf4:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  400bf8:	79 1d                	jns    400c17 <change+0x58>
  400bfa:	8b 45 f4             	mov    -0xc(%ebp),%eax
  400bfd:	8d 50 01             	lea    0x1(%eax),%edx
  400c00:	89 55 f4             	mov    %edx,-0xc(%ebp)
  400c03:	89 c2                	mov    %eax,%edx
  400c05:	8b 45 0c             	mov    0xc(%ebp),%eax
  400c08:	01 d0                	add    %edx,%eax
  400c0a:	c6 00 2d             	movb   $0x2d,(%eax)
  400c0d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  400c10:	f7 d8                	neg    %eax
  400c12:	89 45 f0             	mov    %eax,-0x10(%ebp)
  400c15:	eb 06                	jmp    400c1d <change+0x5e>
  400c17:	8b 45 ec             	mov    -0x14(%ebp),%eax
  400c1a:	89 45 f0             	mov    %eax,-0x10(%ebp)
  400c1d:	eb 40                	jmp    400c5f <change+0xa0>
  400c1f:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  400c22:	8d 41 01             	lea    0x1(%ecx),%eax
  400c25:	89 45 f8             	mov    %eax,-0x8(%ebp)
  400c28:	8b 5d f0             	mov    -0x10(%ebp),%ebx
  400c2b:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  400c30:	89 d8                	mov    %ebx,%eax
  400c32:	f7 e2                	mul    %edx
  400c34:	c1 ea 03             	shr    $0x3,%edx
  400c37:	89 d0                	mov    %edx,%eax
  400c39:	c1 e0 02             	shl    $0x2,%eax
  400c3c:	01 d0                	add    %edx,%eax
  400c3e:	01 c0                	add    %eax,%eax
  400c40:	29 c3                	sub    %eax,%ebx
  400c42:	89 da                	mov    %ebx,%edx
  400c44:	89 d0                	mov    %edx,%eax
  400c46:	83 c0 30             	add    $0x30,%eax
  400c49:	88 44 0d 88          	mov    %al,-0x78(%ebp,%ecx,1)
  400c4d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  400c50:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  400c55:	f7 e2                	mul    %edx
  400c57:	89 d0                	mov    %edx,%eax
  400c59:	c1 e8 03             	shr    $0x3,%eax
  400c5c:	89 45 f0             	mov    %eax,-0x10(%ebp)
  400c5f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  400c63:	75 ba                	jne    400c1f <change+0x60>
  400c65:	eb 21                	jmp    400c88 <change+0xc9>
  400c67:	8b 45 f4             	mov    -0xc(%ebp),%eax
  400c6a:	8d 50 01             	lea    0x1(%eax),%edx
  400c6d:	89 55 f4             	mov    %edx,-0xc(%ebp)
  400c70:	89 c2                	mov    %eax,%edx
  400c72:	8b 45 0c             	mov    0xc(%ebp),%eax
  400c75:	01 c2                	add    %eax,%edx
  400c77:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
  400c7b:	8d 4d 88             	lea    -0x78(%ebp),%ecx
  400c7e:	8b 45 f8             	mov    -0x8(%ebp),%eax
  400c81:	01 c8                	add    %ecx,%eax
  400c83:	0f b6 00             	movzbl (%eax),%eax
  400c86:	88 02                	mov    %al,(%edx)
  400c88:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  400c8c:	75 d9                	jne    400c67 <change+0xa8>
  400c8e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  400c91:	8b 45 0c             	mov    0xc(%ebp),%eax
  400c94:	01 d0                	add    %edx,%eax
  400c96:	c6 00 00             	movb   $0x0,(%eax)
  400c99:	83 ec 80             	sub    $0xffffff80,%esp
  400c9c:	5b                   	pop    %ebx
  400c9d:	5d                   	pop    %ebp
  400c9e:	c3                   	ret    

00400c9f <srand>:
  400c9f:	55                   	push   %ebp
  400ca0:	89 e5                	mov    %esp,%ebp
  400ca2:	8b 45 08             	mov    0x8(%ebp),%eax
  400ca5:	a3 40 1e 41 00       	mov    %eax,0x411e40
  400caa:	5d                   	pop    %ebp
  400cab:	c3                   	ret    

00400cac <rand>:
  400cac:	55                   	push   %ebp
  400cad:	89 e5                	mov    %esp,%ebp
  400caf:	a1 40 1e 41 00       	mov    0x411e40,%eax
  400cb4:	69 c0 35 4e 5a 01    	imul   $0x15a4e35,%eax,%eax
  400cba:	83 c0 01             	add    $0x1,%eax
  400cbd:	a3 40 1e 41 00       	mov    %eax,0x411e40
  400cc2:	a1 40 1e 41 00       	mov    0x411e40,%eax
  400cc7:	c1 f8 10             	sar    $0x10,%eax
  400cca:	25 ff 7f 00 00       	and    $0x7fff,%eax
  400ccf:	5d                   	pop    %ebp
  400cd0:	c3                   	ret    
