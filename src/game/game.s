
game:     file format elf32-i386


Disassembly of section .text:

00300000 <draw_mark>:
  300000:	55                   	push   %ebp
  300001:	89 e5                	mov    %esp,%ebp
  300003:	83 ec 08             	sub    $0x8,%esp
  300006:	a1 ac 3d 31 00       	mov    0x313dac,%eax
  30000b:	83 e8 01             	sub    $0x1,%eax
  30000e:	83 ec 08             	sub    $0x8,%esp
  300011:	68 90 0e 31 00       	push   $0x310e90
  300016:	50                   	push   %eax
  300017:	e8 96 0a 00 00       	call   300ab2 <change>
  30001c:	83 c4 10             	add    $0x10,%esp
  30001f:	a1 ac 3d 31 00       	mov    0x313dac,%eax
  300024:	83 f8 0a             	cmp    $0xa,%eax
  300027:	7f 18                	jg     300041 <draw_mark+0x41>
  300029:	6a 2f                	push   $0x2f
  30002b:	68 38 01 00 00       	push   $0x138
  300030:	6a 00                	push   $0x0
  300032:	68 90 0e 31 00       	push   $0x310e90
  300037:	e8 85 07 00 00       	call   3007c1 <draw_string>
  30003c:	83 c4 10             	add    $0x10,%esp
  30003f:	eb 38                	jmp    300079 <draw_mark+0x79>
  300041:	a1 ac 3d 31 00       	mov    0x313dac,%eax
  300046:	83 f8 64             	cmp    $0x64,%eax
  300049:	7f 18                	jg     300063 <draw_mark+0x63>
  30004b:	6a 2f                	push   $0x2f
  30004d:	68 30 01 00 00       	push   $0x130
  300052:	6a 00                	push   $0x0
  300054:	68 90 0e 31 00       	push   $0x310e90
  300059:	e8 63 07 00 00       	call   3007c1 <draw_string>
  30005e:	83 c4 10             	add    $0x10,%esp
  300061:	eb 16                	jmp    300079 <draw_mark+0x79>
  300063:	6a 2f                	push   $0x2f
  300065:	68 28 01 00 00       	push   $0x128
  30006a:	6a 00                	push   $0x0
  30006c:	68 90 0e 31 00       	push   $0x310e90
  300071:	e8 4b 07 00 00       	call   3007c1 <draw_string>
  300076:	83 c4 10             	add    $0x10,%esp
  300079:	c9                   	leave  
  30007a:	c3                   	ret    

0030007b <draw_whole_snake>:
  30007b:	55                   	push   %ebp
  30007c:	89 e5                	mov    %esp,%ebp
  30007e:	53                   	push   %ebx
  30007f:	83 ec 14             	sub    $0x14,%esp
  300082:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  300089:	eb 4d                	jmp    3000d8 <draw_whole_snake+0x5d>
  30008b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  30008e:	89 d0                	mov    %edx,%eax
  300090:	01 c0                	add    %eax,%eax
  300092:	01 d0                	add    %edx,%eax
  300094:	c1 e0 02             	shl    $0x2,%eax
  300097:	05 c0 0e 31 00       	add    $0x310ec0,%eax
  30009c:	8b 18                	mov    (%eax),%ebx
  30009e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  3000a1:	89 d0                	mov    %edx,%eax
  3000a3:	01 c0                	add    %eax,%eax
  3000a5:	01 d0                	add    %edx,%eax
  3000a7:	c1 e0 02             	shl    $0x2,%eax
  3000aa:	05 c0 0e 31 00       	add    $0x310ec0,%eax
  3000af:	8b 48 08             	mov    0x8(%eax),%ecx
  3000b2:	8b 55 f4             	mov    -0xc(%ebp),%edx
  3000b5:	89 d0                	mov    %edx,%eax
  3000b7:	01 c0                	add    %eax,%eax
  3000b9:	01 d0                	add    %edx,%eax
  3000bb:	c1 e0 02             	shl    $0x2,%eax
  3000be:	05 c0 0e 31 00       	add    $0x310ec0,%eax
  3000c3:	8b 40 04             	mov    0x4(%eax),%eax
  3000c6:	83 ec 04             	sub    $0x4,%esp
  3000c9:	53                   	push   %ebx
  3000ca:	51                   	push   %ecx
  3000cb:	50                   	push   %eax
  3000cc:	e8 db 07 00 00       	call   3008ac <draw_snake>
  3000d1:	83 c4 10             	add    $0x10,%esp
  3000d4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  3000d8:	a1 80 0e 31 00       	mov    0x310e80,%eax
  3000dd:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  3000e0:	7e a9                	jle    30008b <draw_whole_snake+0x10>
  3000e2:	8b 0d 0c 14 30 00    	mov    0x30140c,%ecx
  3000e8:	8b 15 08 14 30 00    	mov    0x301408,%edx
  3000ee:	a1 04 14 30 00       	mov    0x301404,%eax
  3000f3:	83 ec 04             	sub    $0x4,%esp
  3000f6:	51                   	push   %ecx
  3000f7:	52                   	push   %edx
  3000f8:	50                   	push   %eax
  3000f9:	e8 63 07 00 00       	call   300861 <draw_food>
  3000fe:	83 c4 10             	add    $0x10,%esp
  300101:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  300104:	c9                   	leave  
  300105:	c3                   	ret    

00300106 <make_food>:
  300106:	55                   	push   %ebp
  300107:	89 e5                	mov    %esp,%ebp
  300109:	c7 05 04 14 30 00 60 	movl   $0x60,0x301404
  300110:	00 00 00 
  300113:	c7 05 08 14 30 00 58 	movl   $0x58,0x301408
  30011a:	00 00 00 
  30011d:	c7 05 0c 14 30 00 04 	movl   $0x4,0x30140c
  300124:	00 00 00 
  300127:	5d                   	pop    %ebp
  300128:	c3                   	ret    

00300129 <do_move>:
  300129:	55                   	push   %ebp
  30012a:	89 e5                	mov    %esp,%ebp
  30012c:	83 ec 18             	sub    $0x18,%esp
  30012f:	a1 d0 0e 31 00       	mov    0x310ed0,%eax
  300134:	a3 c4 0e 31 00       	mov    %eax,0x310ec4
  300139:	a1 d4 0e 31 00       	mov    0x310ed4,%eax
  30013e:	a3 c8 0e 31 00       	mov    %eax,0x310ec8
  300143:	a1 cc 0e 31 00       	mov    0x310ecc,%eax
  300148:	a3 c0 0e 31 00       	mov    %eax,0x310ec0
  30014d:	8b 15 80 0e 31 00    	mov    0x310e80,%edx
  300153:	89 d0                	mov    %edx,%eax
  300155:	01 c0                	add    %eax,%eax
  300157:	01 d0                	add    %edx,%eax
  300159:	c1 e0 02             	shl    $0x2,%eax
  30015c:	05 c0 0e 31 00       	add    $0x310ec0,%eax
  300161:	8b 40 04             	mov    0x4(%eax),%eax
  300164:	a3 88 0e 31 00       	mov    %eax,0x310e88
  300169:	8b 15 80 0e 31 00    	mov    0x310e80,%edx
  30016f:	89 d0                	mov    %edx,%eax
  300171:	01 c0                	add    %eax,%eax
  300173:	01 d0                	add    %edx,%eax
  300175:	c1 e0 02             	shl    $0x2,%eax
  300178:	05 c0 0e 31 00       	add    $0x310ec0,%eax
  30017d:	8b 40 08             	mov    0x8(%eax),%eax
  300180:	a3 8c 0e 31 00       	mov    %eax,0x310e8c
  300185:	a1 00 14 30 00       	mov    0x301400,%eax
  30018a:	85 c0                	test   %eax,%eax
  30018c:	75 24                	jne    3001b2 <do_move+0x89>
  30018e:	a1 d4 0e 31 00       	mov    0x310ed4,%eax
  300193:	83 e8 08             	sub    $0x8,%eax
  300196:	a3 d4 0e 31 00       	mov    %eax,0x310ed4
  30019b:	a1 d4 0e 31 00       	mov    0x310ed4,%eax
  3001a0:	85 c0                	test   %eax,%eax
  3001a2:	0f 89 84 00 00 00    	jns    30022c <do_move+0x103>
  3001a8:	b8 00 00 00 00       	mov    $0x0,%eax
  3001ad:	e9 9f 03 00 00       	jmp    300551 <do_move+0x428>
  3001b2:	a1 00 14 30 00       	mov    0x301400,%eax
  3001b7:	83 f8 12             	cmp    $0x12,%eax
  3001ba:	75 23                	jne    3001df <do_move+0xb6>
  3001bc:	a1 d0 0e 31 00       	mov    0x310ed0,%eax
  3001c1:	83 c0 08             	add    $0x8,%eax
  3001c4:	a3 d0 0e 31 00       	mov    %eax,0x310ed0
  3001c9:	a1 d0 0e 31 00       	mov    0x310ed0,%eax
  3001ce:	3d c7 00 00 00       	cmp    $0xc7,%eax
  3001d3:	7e 57                	jle    30022c <do_move+0x103>
  3001d5:	b8 00 00 00 00       	mov    $0x0,%eax
  3001da:	e9 72 03 00 00       	jmp    300551 <do_move+0x428>
  3001df:	a1 00 14 30 00       	mov    0x301400,%eax
  3001e4:	83 f8 03             	cmp    $0x3,%eax
  3001e7:	75 23                	jne    30020c <do_move+0xe3>
  3001e9:	a1 d4 0e 31 00       	mov    0x310ed4,%eax
  3001ee:	83 c0 08             	add    $0x8,%eax
  3001f1:	a3 d4 0e 31 00       	mov    %eax,0x310ed4
  3001f6:	a1 d4 0e 31 00       	mov    0x310ed4,%eax
  3001fb:	3d 3f 01 00 00       	cmp    $0x13f,%eax
  300200:	7e 2a                	jle    30022c <do_move+0x103>
  300202:	b8 00 00 00 00       	mov    $0x0,%eax
  300207:	e9 45 03 00 00       	jmp    300551 <do_move+0x428>
  30020c:	a1 d0 0e 31 00       	mov    0x310ed0,%eax
  300211:	83 e8 08             	sub    $0x8,%eax
  300214:	a3 d0 0e 31 00       	mov    %eax,0x310ed0
  300219:	a1 d0 0e 31 00       	mov    0x310ed0,%eax
  30021e:	85 c0                	test   %eax,%eax
  300220:	79 0a                	jns    30022c <do_move+0x103>
  300222:	b8 00 00 00 00       	mov    $0x0,%eax
  300227:	e9 25 03 00 00       	jmp    300551 <do_move+0x428>
  30022c:	a1 80 0e 31 00       	mov    0x310e80,%eax
  300231:	89 45 f4             	mov    %eax,-0xc(%ebp)
  300234:	e9 96 00 00 00       	jmp    3002cf <do_move+0x1a6>
  300239:	83 7d f4 02          	cmpl   $0x2,-0xc(%ebp)
  30023d:	75 36                	jne    300275 <do_move+0x14c>
  30023f:	8b 0d c4 0e 31 00    	mov    0x310ec4,%ecx
  300245:	8b 55 f4             	mov    -0xc(%ebp),%edx
  300248:	89 d0                	mov    %edx,%eax
  30024a:	01 c0                	add    %eax,%eax
  30024c:	01 d0                	add    %edx,%eax
  30024e:	c1 e0 02             	shl    $0x2,%eax
  300251:	05 c0 0e 31 00       	add    $0x310ec0,%eax
  300256:	89 48 04             	mov    %ecx,0x4(%eax)
  300259:	8b 0d c8 0e 31 00    	mov    0x310ec8,%ecx
  30025f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  300262:	89 d0                	mov    %edx,%eax
  300264:	01 c0                	add    %eax,%eax
  300266:	01 d0                	add    %edx,%eax
  300268:	c1 e0 02             	shl    $0x2,%eax
  30026b:	05 c0 0e 31 00       	add    $0x310ec0,%eax
  300270:	89 48 08             	mov    %ecx,0x8(%eax)
  300273:	eb 56                	jmp    3002cb <do_move+0x1a2>
  300275:	8b 45 f4             	mov    -0xc(%ebp),%eax
  300278:	8d 50 ff             	lea    -0x1(%eax),%edx
  30027b:	89 d0                	mov    %edx,%eax
  30027d:	01 c0                	add    %eax,%eax
  30027f:	01 d0                	add    %edx,%eax
  300281:	c1 e0 02             	shl    $0x2,%eax
  300284:	05 c0 0e 31 00       	add    $0x310ec0,%eax
  300289:	8b 48 04             	mov    0x4(%eax),%ecx
  30028c:	8b 55 f4             	mov    -0xc(%ebp),%edx
  30028f:	89 d0                	mov    %edx,%eax
  300291:	01 c0                	add    %eax,%eax
  300293:	01 d0                	add    %edx,%eax
  300295:	c1 e0 02             	shl    $0x2,%eax
  300298:	05 c0 0e 31 00       	add    $0x310ec0,%eax
  30029d:	89 48 04             	mov    %ecx,0x4(%eax)
  3002a0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  3002a3:	8d 50 ff             	lea    -0x1(%eax),%edx
  3002a6:	89 d0                	mov    %edx,%eax
  3002a8:	01 c0                	add    %eax,%eax
  3002aa:	01 d0                	add    %edx,%eax
  3002ac:	c1 e0 02             	shl    $0x2,%eax
  3002af:	05 c0 0e 31 00       	add    $0x310ec0,%eax
  3002b4:	8b 48 08             	mov    0x8(%eax),%ecx
  3002b7:	8b 55 f4             	mov    -0xc(%ebp),%edx
  3002ba:	89 d0                	mov    %edx,%eax
  3002bc:	01 c0                	add    %eax,%eax
  3002be:	01 d0                	add    %edx,%eax
  3002c0:	c1 e0 02             	shl    $0x2,%eax
  3002c3:	05 c0 0e 31 00       	add    $0x310ec0,%eax
  3002c8:	89 48 08             	mov    %ecx,0x8(%eax)
  3002cb:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  3002cf:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
  3002d3:	0f 8f 60 ff ff ff    	jg     300239 <do_move+0x110>
  3002d9:	8b 15 d0 0e 31 00    	mov    0x310ed0,%edx
  3002df:	a1 04 14 30 00       	mov    0x301404,%eax
  3002e4:	39 c2                	cmp    %eax,%edx
  3002e6:	0f 85 f5 01 00 00    	jne    3004e1 <do_move+0x3b8>
  3002ec:	8b 15 d4 0e 31 00    	mov    0x310ed4,%edx
  3002f2:	a1 08 14 30 00       	mov    0x301408,%eax
  3002f7:	39 c2                	cmp    %eax,%edx
  3002f9:	0f 85 e2 01 00 00    	jne    3004e1 <do_move+0x3b8>
  3002ff:	a1 ac 3d 31 00       	mov    0x313dac,%eax
  300304:	83 c0 01             	add    $0x1,%eax
  300307:	a3 ac 3d 31 00       	mov    %eax,0x313dac
  30030c:	a1 80 0e 31 00       	mov    0x310e80,%eax
  300311:	83 c0 01             	add    $0x1,%eax
  300314:	a3 80 0e 31 00       	mov    %eax,0x310e80
  300319:	8b 15 80 0e 31 00    	mov    0x310e80,%edx
  30031f:	8b 0d 88 0e 31 00    	mov    0x310e88,%ecx
  300325:	89 d0                	mov    %edx,%eax
  300327:	01 c0                	add    %eax,%eax
  300329:	01 d0                	add    %edx,%eax
  30032b:	c1 e0 02             	shl    $0x2,%eax
  30032e:	05 c0 0e 31 00       	add    $0x310ec0,%eax
  300333:	89 48 04             	mov    %ecx,0x4(%eax)
  300336:	8b 15 80 0e 31 00    	mov    0x310e80,%edx
  30033c:	8b 0d 8c 0e 31 00    	mov    0x310e8c,%ecx
  300342:	89 d0                	mov    %edx,%eax
  300344:	01 c0                	add    %eax,%eax
  300346:	01 d0                	add    %edx,%eax
  300348:	c1 e0 02             	shl    $0x2,%eax
  30034b:	05 c0 0e 31 00       	add    $0x310ec0,%eax
  300350:	89 48 08             	mov    %ecx,0x8(%eax)
  300353:	a1 80 0e 31 00       	mov    0x310e80,%eax
  300358:	89 45 ec             	mov    %eax,-0x14(%ebp)
  30035b:	eb 2d                	jmp    30038a <do_move+0x261>
  30035d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  300360:	8d 50 ff             	lea    -0x1(%eax),%edx
  300363:	89 d0                	mov    %edx,%eax
  300365:	01 c0                	add    %eax,%eax
  300367:	01 d0                	add    %edx,%eax
  300369:	c1 e0 02             	shl    $0x2,%eax
  30036c:	05 c0 0e 31 00       	add    $0x310ec0,%eax
  300371:	8b 08                	mov    (%eax),%ecx
  300373:	8b 55 ec             	mov    -0x14(%ebp),%edx
  300376:	89 d0                	mov    %edx,%eax
  300378:	01 c0                	add    %eax,%eax
  30037a:	01 d0                	add    %edx,%eax
  30037c:	c1 e0 02             	shl    $0x2,%eax
  30037f:	05 c0 0e 31 00       	add    $0x310ec0,%eax
  300384:	89 08                	mov    %ecx,(%eax)
  300386:	83 6d ec 01          	subl   $0x1,-0x14(%ebp)
  30038a:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
  30038e:	7f cd                	jg     30035d <do_move+0x234>
  300390:	a1 0c 14 30 00       	mov    0x30140c,%eax
  300395:	a3 cc 0e 31 00       	mov    %eax,0x310ecc
  30039a:	e8 00 08 00 00       	call   300b9f <rand>
  30039f:	89 c1                	mov    %eax,%ecx
  3003a1:	ba 83 20 08 82       	mov    $0x82082083,%edx
  3003a6:	89 c8                	mov    %ecx,%eax
  3003a8:	f7 ea                	imul   %edx
  3003aa:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
  3003ad:	c1 f8 05             	sar    $0x5,%eax
  3003b0:	89 c2                	mov    %eax,%edx
  3003b2:	89 c8                	mov    %ecx,%eax
  3003b4:	c1 f8 1f             	sar    $0x1f,%eax
  3003b7:	29 c2                	sub    %eax,%edx
  3003b9:	89 d0                	mov    %edx,%eax
  3003bb:	89 c2                	mov    %eax,%edx
  3003bd:	c1 e2 06             	shl    $0x6,%edx
  3003c0:	29 c2                	sub    %eax,%edx
  3003c2:	89 c8                	mov    %ecx,%eax
  3003c4:	29 d0                	sub    %edx,%eax
  3003c6:	83 c0 20             	add    $0x20,%eax
  3003c9:	a3 0c 14 30 00       	mov    %eax,0x30140c
  3003ce:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  3003d5:	e8 c5 07 00 00       	call   300b9f <rand>
  3003da:	89 c1                	mov    %eax,%ecx
  3003dc:	ba ab aa aa 2a       	mov    $0x2aaaaaab,%edx
  3003e1:	89 c8                	mov    %ecx,%eax
  3003e3:	f7 ea                	imul   %edx
  3003e5:	c1 fa 05             	sar    $0x5,%edx
  3003e8:	89 c8                	mov    %ecx,%eax
  3003ea:	c1 f8 1f             	sar    $0x1f,%eax
  3003ed:	29 c2                	sub    %eax,%edx
  3003ef:	89 d0                	mov    %edx,%eax
  3003f1:	01 c0                	add    %eax,%eax
  3003f3:	01 d0                	add    %edx,%eax
  3003f5:	c1 e0 06             	shl    $0x6,%eax
  3003f8:	29 c1                	sub    %eax,%ecx
  3003fa:	89 ca                	mov    %ecx,%edx
  3003fc:	89 15 04 14 30 00    	mov    %edx,0x301404
  300402:	8b 0d 04 14 30 00    	mov    0x301404,%ecx
  300408:	a1 04 14 30 00       	mov    0x301404,%eax
  30040d:	99                   	cltd   
  30040e:	c1 ea 1d             	shr    $0x1d,%edx
  300411:	01 d0                	add    %edx,%eax
  300413:	83 e0 07             	and    $0x7,%eax
  300416:	29 d0                	sub    %edx,%eax
  300418:	29 c1                	sub    %eax,%ecx
  30041a:	89 c8                	mov    %ecx,%eax
  30041c:	a3 04 14 30 00       	mov    %eax,0x301404
  300421:	e8 79 07 00 00       	call   300b9f <rand>
  300426:	89 c1                	mov    %eax,%ecx
  300428:	ba d3 20 0d d2       	mov    $0xd20d20d3,%edx
  30042d:	89 c8                	mov    %ecx,%eax
  30042f:	f7 ea                	imul   %edx
  300431:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
  300434:	c1 f8 08             	sar    $0x8,%eax
  300437:	89 c2                	mov    %eax,%edx
  300439:	89 c8                	mov    %ecx,%eax
  30043b:	c1 f8 1f             	sar    $0x1f,%eax
  30043e:	29 c2                	sub    %eax,%edx
  300440:	89 d0                	mov    %edx,%eax
  300442:	69 c0 38 01 00 00    	imul   $0x138,%eax,%eax
  300448:	29 c1                	sub    %eax,%ecx
  30044a:	89 c8                	mov    %ecx,%eax
  30044c:	a3 08 14 30 00       	mov    %eax,0x301408
  300451:	8b 0d 08 14 30 00    	mov    0x301408,%ecx
  300457:	a1 08 14 30 00       	mov    0x301408,%eax
  30045c:	99                   	cltd   
  30045d:	c1 ea 1d             	shr    $0x1d,%edx
  300460:	01 d0                	add    %edx,%eax
  300462:	83 e0 07             	and    $0x7,%eax
  300465:	29 d0                	sub    %edx,%eax
  300467:	29 c1                	sub    %eax,%ecx
  300469:	89 c8                	mov    %ecx,%eax
  30046b:	a3 08 14 30 00       	mov    %eax,0x301408
  300470:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  300477:	eb 46                	jmp    3004bf <do_move+0x396>
  300479:	8b 55 f4             	mov    -0xc(%ebp),%edx
  30047c:	89 d0                	mov    %edx,%eax
  30047e:	01 c0                	add    %eax,%eax
  300480:	01 d0                	add    %edx,%eax
  300482:	c1 e0 02             	shl    $0x2,%eax
  300485:	05 c0 0e 31 00       	add    $0x310ec0,%eax
  30048a:	8b 50 04             	mov    0x4(%eax),%edx
  30048d:	a1 04 14 30 00       	mov    0x301404,%eax
  300492:	39 c2                	cmp    %eax,%edx
  300494:	75 25                	jne    3004bb <do_move+0x392>
  300496:	8b 55 f4             	mov    -0xc(%ebp),%edx
  300499:	89 d0                	mov    %edx,%eax
  30049b:	01 c0                	add    %eax,%eax
  30049d:	01 d0                	add    %edx,%eax
  30049f:	c1 e0 02             	shl    $0x2,%eax
  3004a2:	05 c0 0e 31 00       	add    $0x310ec0,%eax
  3004a7:	8b 50 08             	mov    0x8(%eax),%edx
  3004aa:	a1 08 14 30 00       	mov    0x301408,%eax
  3004af:	39 c2                	cmp    %eax,%edx
  3004b1:	75 08                	jne    3004bb <do_move+0x392>
  3004b3:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
  3004ba:	90                   	nop
  3004bb:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  3004bf:	a1 80 0e 31 00       	mov    0x310e80,%eax
  3004c4:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  3004c7:	7e b0                	jle    300479 <do_move+0x350>
  3004c9:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  3004cd:	75 0d                	jne    3004dc <do_move+0x3b3>
  3004cf:	90                   	nop
  3004d0:	e8 a6 fb ff ff       	call   30007b <draw_whole_snake>
  3004d5:	e8 1d 05 00 00       	call   3009f7 <display_all>
  3004da:	eb 05                	jmp    3004e1 <do_move+0x3b8>
  3004dc:	e9 ed fe ff ff       	jmp    3003ce <do_move+0x2a5>
  3004e1:	c7 45 f4 02 00 00 00 	movl   $0x2,-0xc(%ebp)
  3004e8:	eb 47                	jmp    300531 <do_move+0x408>
  3004ea:	8b 0d d0 0e 31 00    	mov    0x310ed0,%ecx
  3004f0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  3004f3:	89 d0                	mov    %edx,%eax
  3004f5:	01 c0                	add    %eax,%eax
  3004f7:	01 d0                	add    %edx,%eax
  3004f9:	c1 e0 02             	shl    $0x2,%eax
  3004fc:	05 c0 0e 31 00       	add    $0x310ec0,%eax
  300501:	8b 40 04             	mov    0x4(%eax),%eax
  300504:	39 c1                	cmp    %eax,%ecx
  300506:	75 25                	jne    30052d <do_move+0x404>
  300508:	8b 0d d4 0e 31 00    	mov    0x310ed4,%ecx
  30050e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  300511:	89 d0                	mov    %edx,%eax
  300513:	01 c0                	add    %eax,%eax
  300515:	01 d0                	add    %edx,%eax
  300517:	c1 e0 02             	shl    $0x2,%eax
  30051a:	05 c0 0e 31 00       	add    $0x310ec0,%eax
  30051f:	8b 40 08             	mov    0x8(%eax),%eax
  300522:	39 c1                	cmp    %eax,%ecx
  300524:	75 07                	jne    30052d <do_move+0x404>
  300526:	b8 00 00 00 00       	mov    $0x0,%eax
  30052b:	eb 24                	jmp    300551 <do_move+0x428>
  30052d:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  300531:	a1 80 0e 31 00       	mov    0x310e80,%eax
  300536:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  300539:	7e af                	jle    3004ea <do_move+0x3c1>
  30053b:	a1 80 0e 31 00       	mov    0x310e80,%eax
  300540:	83 f8 32             	cmp    $0x32,%eax
  300543:	75 07                	jne    30054c <do_move+0x423>
  300545:	b8 02 00 00 00       	mov    $0x2,%eax
  30054a:	eb 05                	jmp    300551 <do_move+0x428>
  30054c:	b8 01 00 00 00       	mov    $0x1,%eax
  300551:	c9                   	leave  
  300552:	c3                   	ret    

00300553 <game_init>:
  300553:	55                   	push   %ebp
  300554:	89 e5                	mov    %esp,%ebp
  300556:	83 ec 08             	sub    $0x8,%esp
  300559:	c7 05 ac 3d 31 00 00 	movl   $0x0,0x313dac
  300560:	00 00 00 
  300563:	e8 a4 04 00 00       	call   300a0c <get_time>
  300568:	89 c1                	mov    %eax,%ecx
  30056a:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
  30056f:	89 c8                	mov    %ecx,%eax
  300571:	f7 ea                	imul   %edx
  300573:	c1 fa 06             	sar    $0x6,%edx
  300576:	89 c8                	mov    %ecx,%eax
  300578:	c1 f8 1f             	sar    $0x1f,%eax
  30057b:	29 c2                	sub    %eax,%edx
  30057d:	89 d0                	mov    %edx,%eax
  30057f:	69 c0 e8 03 00 00    	imul   $0x3e8,%eax,%eax
  300585:	29 c1                	sub    %eax,%ecx
  300587:	89 c8                	mov    %ecx,%eax
  300589:	83 ec 0c             	sub    $0xc,%esp
  30058c:	50                   	push   %eax
  30058d:	e8 00 06 00 00       	call   300b92 <srand>
  300592:	83 c4 10             	add    $0x10,%esp
  300595:	c7 05 80 0e 31 00 02 	movl   $0x2,0x310e80
  30059c:	00 00 00 
  30059f:	c7 05 b0 3d 31 00 01 	movl   $0x1,0x313db0
  3005a6:	00 00 00 
  3005a9:	c7 05 d0 0e 31 00 60 	movl   $0x60,0x310ed0
  3005b0:	00 00 00 
  3005b3:	c7 05 d4 0e 31 00 60 	movl   $0x60,0x310ed4
  3005ba:	00 00 00 
  3005bd:	c7 05 cc 0e 31 00 01 	movl   $0x1,0x310ecc
  3005c4:	00 00 00 
  3005c7:	c7 05 dc 0e 31 00 60 	movl   $0x60,0x310edc
  3005ce:	00 00 00 
  3005d1:	c7 05 e0 0e 31 00 68 	movl   $0x68,0x310ee0
  3005d8:	00 00 00 
  3005db:	c7 05 d8 0e 31 00 06 	movl   $0x6,0x310ed8
  3005e2:	00 00 00 
  3005e5:	e8 1c fb ff ff       	call   300106 <make_food>
  3005ea:	e8 66 04 00 00       	call   300a55 <reset_last_key>
  3005ef:	c9                   	leave  
  3005f0:	c3                   	ret    

003005f1 <game_loop>:
  3005f1:	55                   	push   %ebp
  3005f2:	89 e5                	mov    %esp,%ebp
  3005f4:	eb fe                	jmp    3005f4 <game_loop+0x3>

003005f6 <draw_pixel>:
  3005f6:	55                   	push   %ebp
  3005f7:	89 e5                	mov    %esp,%ebp
  3005f9:	8b 45 08             	mov    0x8(%ebp),%eax
  3005fc:	c1 e0 08             	shl    $0x8,%eax
  3005ff:	89 c2                	mov    %eax,%edx
  300601:	8b 45 08             	mov    0x8(%ebp),%eax
  300604:	c1 e0 06             	shl    $0x6,%eax
  300607:	01 c2                	add    %eax,%edx
  300609:	8b 45 0c             	mov    0xc(%ebp),%eax
  30060c:	01 d0                	add    %edx,%eax
  30060e:	8b 55 10             	mov    0x10(%ebp),%edx
  300611:	88 90 40 14 30 00    	mov    %dl,0x301440(%eax)
  300617:	5d                   	pop    %ebp
  300618:	c3                   	ret    

00300619 <init>:
  300619:	55                   	push   %ebp
  30061a:	89 e5                	mov    %esp,%ebp
  30061c:	83 ec 08             	sub    $0x8,%esp
  30061f:	83 ec 04             	sub    $0x4,%esp
  300622:	68 00 fa 00 00       	push   $0xfa00
  300627:	6a 00                	push   $0x0
  300629:	68 40 14 30 00       	push   $0x301440
  30062e:	e8 66 04 00 00       	call   300a99 <my_memset>
  300633:	83 c4 10             	add    $0x10,%esp
  300636:	c9                   	leave  
  300637:	c3                   	ret    

00300638 <draw_character>:
  300638:	55                   	push   %ebp
  300639:	89 e5                	mov    %esp,%ebp
  30063b:	83 ec 14             	sub    $0x14,%esp
  30063e:	8b 45 08             	mov    0x8(%ebp),%eax
  300641:	88 45 ec             	mov    %al,-0x14(%ebp)
  300644:	0f be 45 ec          	movsbl -0x14(%ebp),%eax
  300648:	c1 e0 03             	shl    $0x3,%eax
  30064b:	05 00 10 30 00       	add    $0x301000,%eax
  300650:	89 45 f4             	mov    %eax,-0xc(%ebp)
  300653:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  30065a:	eb 52                	jmp    3006ae <draw_character+0x76>
  30065c:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  300663:	eb 3f                	jmp    3006a4 <draw_character+0x6c>
  300665:	8b 55 fc             	mov    -0x4(%ebp),%edx
  300668:	8b 45 f4             	mov    -0xc(%ebp),%eax
  30066b:	01 d0                	add    %edx,%eax
  30066d:	0f b6 00             	movzbl (%eax),%eax
  300670:	0f be d0             	movsbl %al,%edx
  300673:	8b 45 f8             	mov    -0x8(%ebp),%eax
  300676:	89 c1                	mov    %eax,%ecx
  300678:	d3 fa                	sar    %cl,%edx
  30067a:	89 d0                	mov    %edx,%eax
  30067c:	83 e0 01             	and    $0x1,%eax
  30067f:	85 c0                	test   %eax,%eax
  300681:	74 1d                	je     3006a0 <draw_character+0x68>
  300683:	8b 55 10             	mov    0x10(%ebp),%edx
  300686:	8b 45 f8             	mov    -0x8(%ebp),%eax
  300689:	01 c2                	add    %eax,%edx
  30068b:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  30068e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  300691:	01 c8                	add    %ecx,%eax
  300693:	ff 75 14             	pushl  0x14(%ebp)
  300696:	52                   	push   %edx
  300697:	50                   	push   %eax
  300698:	e8 59 ff ff ff       	call   3005f6 <draw_pixel>
  30069d:	83 c4 0c             	add    $0xc,%esp
  3006a0:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  3006a4:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  3006a8:	7e bb                	jle    300665 <draw_character+0x2d>
  3006aa:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  3006ae:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
  3006b2:	7e a8                	jle    30065c <draw_character+0x24>
  3006b4:	c9                   	leave  
  3006b5:	c3                   	ret    

003006b6 <draw_character_2>:
  3006b6:	55                   	push   %ebp
  3006b7:	89 e5                	mov    %esp,%ebp
  3006b9:	83 ec 14             	sub    $0x14,%esp
  3006bc:	8b 45 08             	mov    0x8(%ebp),%eax
  3006bf:	88 45 ec             	mov    %al,-0x14(%ebp)
  3006c2:	0f be 45 ec          	movsbl -0x14(%ebp),%eax
  3006c6:	c1 e0 03             	shl    $0x3,%eax
  3006c9:	05 00 10 30 00       	add    $0x301000,%eax
  3006ce:	89 45 f4             	mov    %eax,-0xc(%ebp)
  3006d1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  3006d8:	e9 d8 00 00 00       	jmp    3007b5 <draw_character_2+0xff>
  3006dd:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  3006e4:	e9 be 00 00 00       	jmp    3007a7 <draw_character_2+0xf1>
  3006e9:	8b 55 fc             	mov    -0x4(%ebp),%edx
  3006ec:	8b 45 f4             	mov    -0xc(%ebp),%eax
  3006ef:	01 d0                	add    %edx,%eax
  3006f1:	0f b6 00             	movzbl (%eax),%eax
  3006f4:	0f be d0             	movsbl %al,%edx
  3006f7:	8b 45 f8             	mov    -0x8(%ebp),%eax
  3006fa:	89 c1                	mov    %eax,%ecx
  3006fc:	d3 fa                	sar    %cl,%edx
  3006fe:	89 d0                	mov    %edx,%eax
  300700:	83 e0 01             	and    $0x1,%eax
  300703:	85 c0                	test   %eax,%eax
  300705:	0f 84 98 00 00 00    	je     3007a3 <draw_character_2+0xed>
  30070b:	8b 45 f8             	mov    -0x8(%ebp),%eax
  30070e:	8d 14 00             	lea    (%eax,%eax,1),%edx
  300711:	8b 45 10             	mov    0x10(%ebp),%eax
  300714:	01 c2                	add    %eax,%edx
  300716:	8b 45 fc             	mov    -0x4(%ebp),%eax
  300719:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
  30071c:	8b 45 0c             	mov    0xc(%ebp),%eax
  30071f:	01 c8                	add    %ecx,%eax
  300721:	ff 75 14             	pushl  0x14(%ebp)
  300724:	52                   	push   %edx
  300725:	50                   	push   %eax
  300726:	e8 cb fe ff ff       	call   3005f6 <draw_pixel>
  30072b:	83 c4 0c             	add    $0xc,%esp
  30072e:	8b 45 f8             	mov    -0x8(%ebp),%eax
  300731:	8d 14 00             	lea    (%eax,%eax,1),%edx
  300734:	8b 45 10             	mov    0x10(%ebp),%eax
  300737:	01 c2                	add    %eax,%edx
  300739:	8b 45 fc             	mov    -0x4(%ebp),%eax
  30073c:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
  30073f:	8b 45 0c             	mov    0xc(%ebp),%eax
  300742:	01 c8                	add    %ecx,%eax
  300744:	83 c0 01             	add    $0x1,%eax
  300747:	ff 75 14             	pushl  0x14(%ebp)
  30074a:	52                   	push   %edx
  30074b:	50                   	push   %eax
  30074c:	e8 a5 fe ff ff       	call   3005f6 <draw_pixel>
  300751:	83 c4 0c             	add    $0xc,%esp
  300754:	8b 45 f8             	mov    -0x8(%ebp),%eax
  300757:	8d 14 00             	lea    (%eax,%eax,1),%edx
  30075a:	8b 45 10             	mov    0x10(%ebp),%eax
  30075d:	01 d0                	add    %edx,%eax
  30075f:	8d 50 01             	lea    0x1(%eax),%edx
  300762:	8b 45 fc             	mov    -0x4(%ebp),%eax
  300765:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
  300768:	8b 45 0c             	mov    0xc(%ebp),%eax
  30076b:	01 c8                	add    %ecx,%eax
  30076d:	83 c0 01             	add    $0x1,%eax
  300770:	ff 75 14             	pushl  0x14(%ebp)
  300773:	52                   	push   %edx
  300774:	50                   	push   %eax
  300775:	e8 7c fe ff ff       	call   3005f6 <draw_pixel>
  30077a:	83 c4 0c             	add    $0xc,%esp
  30077d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  300780:	8d 14 00             	lea    (%eax,%eax,1),%edx
  300783:	8b 45 10             	mov    0x10(%ebp),%eax
  300786:	01 d0                	add    %edx,%eax
  300788:	8d 50 01             	lea    0x1(%eax),%edx
  30078b:	8b 45 fc             	mov    -0x4(%ebp),%eax
  30078e:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
  300791:	8b 45 0c             	mov    0xc(%ebp),%eax
  300794:	01 c8                	add    %ecx,%eax
  300796:	ff 75 14             	pushl  0x14(%ebp)
  300799:	52                   	push   %edx
  30079a:	50                   	push   %eax
  30079b:	e8 56 fe ff ff       	call   3005f6 <draw_pixel>
  3007a0:	83 c4 0c             	add    $0xc,%esp
  3007a3:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  3007a7:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  3007ab:	0f 8e 38 ff ff ff    	jle    3006e9 <draw_character_2+0x33>
  3007b1:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  3007b5:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
  3007b9:	0f 8e 1e ff ff ff    	jle    3006dd <draw_character_2+0x27>
  3007bf:	c9                   	leave  
  3007c0:	c3                   	ret    

003007c1 <draw_string>:
  3007c1:	55                   	push   %ebp
  3007c2:	89 e5                	mov    %esp,%ebp
  3007c4:	eb 3f                	jmp    300805 <draw_string+0x44>
  3007c6:	8b 45 08             	mov    0x8(%ebp),%eax
  3007c9:	8d 50 01             	lea    0x1(%eax),%edx
  3007cc:	89 55 08             	mov    %edx,0x8(%ebp)
  3007cf:	0f b6 00             	movzbl (%eax),%eax
  3007d2:	0f be c0             	movsbl %al,%eax
  3007d5:	ff 75 14             	pushl  0x14(%ebp)
  3007d8:	ff 75 10             	pushl  0x10(%ebp)
  3007db:	ff 75 0c             	pushl  0xc(%ebp)
  3007de:	50                   	push   %eax
  3007df:	e8 54 fe ff ff       	call   300638 <draw_character>
  3007e4:	83 c4 10             	add    $0x10,%esp
  3007e7:	8b 45 10             	mov    0x10(%ebp),%eax
  3007ea:	83 c0 08             	add    $0x8,%eax
  3007ed:	3d 3f 01 00 00       	cmp    $0x13f,%eax
  3007f2:	7e 0d                	jle    300801 <draw_string+0x40>
  3007f4:	83 45 0c 08          	addl   $0x8,0xc(%ebp)
  3007f8:	c7 45 10 00 00 00 00 	movl   $0x0,0x10(%ebp)
  3007ff:	eb 04                	jmp    300805 <draw_string+0x44>
  300801:	83 45 10 08          	addl   $0x8,0x10(%ebp)
  300805:	8b 45 08             	mov    0x8(%ebp),%eax
  300808:	0f b6 00             	movzbl (%eax),%eax
  30080b:	84 c0                	test   %al,%al
  30080d:	75 b7                	jne    3007c6 <draw_string+0x5>
  30080f:	c9                   	leave  
  300810:	c3                   	ret    

00300811 <draw_big_string>:
  300811:	55                   	push   %ebp
  300812:	89 e5                	mov    %esp,%ebp
  300814:	eb 3f                	jmp    300855 <draw_big_string+0x44>
  300816:	8b 45 08             	mov    0x8(%ebp),%eax
  300819:	8d 50 01             	lea    0x1(%eax),%edx
  30081c:	89 55 08             	mov    %edx,0x8(%ebp)
  30081f:	0f b6 00             	movzbl (%eax),%eax
  300822:	0f be c0             	movsbl %al,%eax
  300825:	ff 75 14             	pushl  0x14(%ebp)
  300828:	ff 75 10             	pushl  0x10(%ebp)
  30082b:	ff 75 0c             	pushl  0xc(%ebp)
  30082e:	50                   	push   %eax
  30082f:	e8 82 fe ff ff       	call   3006b6 <draw_character_2>
  300834:	83 c4 10             	add    $0x10,%esp
  300837:	8b 45 10             	mov    0x10(%ebp),%eax
  30083a:	83 c0 10             	add    $0x10,%eax
  30083d:	3d 3f 01 00 00       	cmp    $0x13f,%eax
  300842:	7e 0d                	jle    300851 <draw_big_string+0x40>
  300844:	83 45 0c 10          	addl   $0x10,0xc(%ebp)
  300848:	c7 45 10 00 00 00 00 	movl   $0x0,0x10(%ebp)
  30084f:	eb 04                	jmp    300855 <draw_big_string+0x44>
  300851:	83 45 10 10          	addl   $0x10,0x10(%ebp)
  300855:	8b 45 08             	mov    0x8(%ebp),%eax
  300858:	0f b6 00             	movzbl (%eax),%eax
  30085b:	84 c0                	test   %al,%al
  30085d:	75 b7                	jne    300816 <draw_big_string+0x5>
  30085f:	c9                   	leave  
  300860:	c3                   	ret    

00300861 <draw_food>:
  300861:	55                   	push   %ebp
  300862:	89 e5                	mov    %esp,%ebp
  300864:	83 ec 10             	sub    $0x10,%esp
  300867:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  30086e:	eb 34                	jmp    3008a4 <draw_food+0x43>
  300870:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  300877:	eb 21                	jmp    30089a <draw_food+0x39>
  300879:	8b 55 0c             	mov    0xc(%ebp),%edx
  30087c:	8b 45 f8             	mov    -0x8(%ebp),%eax
  30087f:	01 c2                	add    %eax,%edx
  300881:	8b 4d 08             	mov    0x8(%ebp),%ecx
  300884:	8b 45 fc             	mov    -0x4(%ebp),%eax
  300887:	01 c8                	add    %ecx,%eax
  300889:	ff 75 10             	pushl  0x10(%ebp)
  30088c:	52                   	push   %edx
  30088d:	50                   	push   %eax
  30088e:	e8 63 fd ff ff       	call   3005f6 <draw_pixel>
  300893:	83 c4 0c             	add    $0xc,%esp
  300896:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  30089a:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  30089e:	7e d9                	jle    300879 <draw_food+0x18>
  3008a0:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  3008a4:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
  3008a8:	7e c6                	jle    300870 <draw_food+0xf>
  3008aa:	c9                   	leave  
  3008ab:	c3                   	ret    

003008ac <draw_snake>:
  3008ac:	55                   	push   %ebp
  3008ad:	89 e5                	mov    %esp,%ebp
  3008af:	83 ec 10             	sub    $0x10,%esp
  3008b2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  3008b9:	eb 34                	jmp    3008ef <draw_snake+0x43>
  3008bb:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  3008c2:	eb 21                	jmp    3008e5 <draw_snake+0x39>
  3008c4:	8b 55 0c             	mov    0xc(%ebp),%edx
  3008c7:	8b 45 f8             	mov    -0x8(%ebp),%eax
  3008ca:	01 c2                	add    %eax,%edx
  3008cc:	8b 4d 08             	mov    0x8(%ebp),%ecx
  3008cf:	8b 45 fc             	mov    -0x4(%ebp),%eax
  3008d2:	01 c8                	add    %ecx,%eax
  3008d4:	ff 75 10             	pushl  0x10(%ebp)
  3008d7:	52                   	push   %edx
  3008d8:	50                   	push   %eax
  3008d9:	e8 18 fd ff ff       	call   3005f6 <draw_pixel>
  3008de:	83 c4 0c             	add    $0xc,%esp
  3008e1:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  3008e5:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  3008e9:	7e d9                	jle    3008c4 <draw_snake+0x18>
  3008eb:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  3008ef:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
  3008f3:	7e c6                	jle    3008bb <draw_snake+0xf>
  3008f5:	6a 00                	push   $0x0
  3008f7:	ff 75 0c             	pushl  0xc(%ebp)
  3008fa:	ff 75 08             	pushl  0x8(%ebp)
  3008fd:	e8 f4 fc ff ff       	call   3005f6 <draw_pixel>
  300902:	83 c4 0c             	add    $0xc,%esp
  300905:	8b 45 0c             	mov    0xc(%ebp),%eax
  300908:	83 c0 01             	add    $0x1,%eax
  30090b:	6a 00                	push   $0x0
  30090d:	50                   	push   %eax
  30090e:	ff 75 08             	pushl  0x8(%ebp)
  300911:	e8 e0 fc ff ff       	call   3005f6 <draw_pixel>
  300916:	83 c4 0c             	add    $0xc,%esp
  300919:	8b 45 08             	mov    0x8(%ebp),%eax
  30091c:	83 c0 01             	add    $0x1,%eax
  30091f:	6a 00                	push   $0x0
  300921:	ff 75 0c             	pushl  0xc(%ebp)
  300924:	50                   	push   %eax
  300925:	e8 cc fc ff ff       	call   3005f6 <draw_pixel>
  30092a:	83 c4 0c             	add    $0xc,%esp
  30092d:	8b 45 0c             	mov    0xc(%ebp),%eax
  300930:	83 c0 06             	add    $0x6,%eax
  300933:	6a 00                	push   $0x0
  300935:	50                   	push   %eax
  300936:	ff 75 08             	pushl  0x8(%ebp)
  300939:	e8 b8 fc ff ff       	call   3005f6 <draw_pixel>
  30093e:	83 c4 0c             	add    $0xc,%esp
  300941:	8b 45 0c             	mov    0xc(%ebp),%eax
  300944:	83 c0 07             	add    $0x7,%eax
  300947:	6a 00                	push   $0x0
  300949:	50                   	push   %eax
  30094a:	ff 75 08             	pushl  0x8(%ebp)
  30094d:	e8 a4 fc ff ff       	call   3005f6 <draw_pixel>
  300952:	83 c4 0c             	add    $0xc,%esp
  300955:	8b 45 0c             	mov    0xc(%ebp),%eax
  300958:	8d 50 07             	lea    0x7(%eax),%edx
  30095b:	8b 45 08             	mov    0x8(%ebp),%eax
  30095e:	83 c0 01             	add    $0x1,%eax
  300961:	6a 00                	push   $0x0
  300963:	52                   	push   %edx
  300964:	50                   	push   %eax
  300965:	e8 8c fc ff ff       	call   3005f6 <draw_pixel>
  30096a:	83 c4 0c             	add    $0xc,%esp
  30096d:	8b 45 08             	mov    0x8(%ebp),%eax
  300970:	83 c0 07             	add    $0x7,%eax
  300973:	6a 00                	push   $0x0
  300975:	ff 75 0c             	pushl  0xc(%ebp)
  300978:	50                   	push   %eax
  300979:	e8 78 fc ff ff       	call   3005f6 <draw_pixel>
  30097e:	83 c4 0c             	add    $0xc,%esp
  300981:	8b 45 0c             	mov    0xc(%ebp),%eax
  300984:	8d 50 01             	lea    0x1(%eax),%edx
  300987:	8b 45 08             	mov    0x8(%ebp),%eax
  30098a:	83 c0 07             	add    $0x7,%eax
  30098d:	6a 00                	push   $0x0
  30098f:	52                   	push   %edx
  300990:	50                   	push   %eax
  300991:	e8 60 fc ff ff       	call   3005f6 <draw_pixel>
  300996:	83 c4 0c             	add    $0xc,%esp
  300999:	8b 45 08             	mov    0x8(%ebp),%eax
  30099c:	83 c0 06             	add    $0x6,%eax
  30099f:	6a 00                	push   $0x0
  3009a1:	ff 75 0c             	pushl  0xc(%ebp)
  3009a4:	50                   	push   %eax
  3009a5:	e8 4c fc ff ff       	call   3005f6 <draw_pixel>
  3009aa:	83 c4 0c             	add    $0xc,%esp
  3009ad:	8b 45 0c             	mov    0xc(%ebp),%eax
  3009b0:	8d 50 06             	lea    0x6(%eax),%edx
  3009b3:	8b 45 08             	mov    0x8(%ebp),%eax
  3009b6:	83 c0 07             	add    $0x7,%eax
  3009b9:	6a 00                	push   $0x0
  3009bb:	52                   	push   %edx
  3009bc:	50                   	push   %eax
  3009bd:	e8 34 fc ff ff       	call   3005f6 <draw_pixel>
  3009c2:	83 c4 0c             	add    $0xc,%esp
  3009c5:	8b 45 0c             	mov    0xc(%ebp),%eax
  3009c8:	8d 50 07             	lea    0x7(%eax),%edx
  3009cb:	8b 45 08             	mov    0x8(%ebp),%eax
  3009ce:	83 c0 07             	add    $0x7,%eax
  3009d1:	6a 00                	push   $0x0
  3009d3:	52                   	push   %edx
  3009d4:	50                   	push   %eax
  3009d5:	e8 1c fc ff ff       	call   3005f6 <draw_pixel>
  3009da:	83 c4 0c             	add    $0xc,%esp
  3009dd:	8b 45 0c             	mov    0xc(%ebp),%eax
  3009e0:	8d 50 07             	lea    0x7(%eax),%edx
  3009e3:	8b 45 08             	mov    0x8(%ebp),%eax
  3009e6:	83 c0 06             	add    $0x6,%eax
  3009e9:	6a 00                	push   $0x0
  3009eb:	52                   	push   %edx
  3009ec:	50                   	push   %eax
  3009ed:	e8 04 fc ff ff       	call   3005f6 <draw_pixel>
  3009f2:	83 c4 0c             	add    $0xc,%esp
  3009f5:	c9                   	leave  
  3009f6:	c3                   	ret    

003009f7 <display_all>:
  3009f7:	55                   	push   %ebp
  3009f8:	89 e5                	mov    %esp,%ebp
  3009fa:	53                   	push   %ebx
  3009fb:	b8 04 00 00 00       	mov    $0x4,%eax
  300a00:	b8 40 14 30 00       	mov    $0x301440,%eax
  300a05:	89 c3                	mov    %eax,%ebx
  300a07:	89 db                	mov    %ebx,%ebx
  300a09:	5b                   	pop    %ebx
  300a0a:	5d                   	pop    %ebp
  300a0b:	c3                   	ret    

00300a0c <get_time>:
  300a0c:	55                   	push   %ebp
  300a0d:	89 e5                	mov    %esp,%ebp
  300a0f:	83 ec 10             	sub    $0x10,%esp
  300a12:	b8 02 00 00 00       	mov    $0x2,%eax
  300a17:	bb 00 00 00 00       	mov    $0x0,%ebx
  300a1c:	cd 80                	int    $0x80
  300a1e:	89 c0                	mov    %eax,%eax
  300a20:	89 45 fc             	mov    %eax,-0x4(%ebp)
  300a23:	8b 45 fc             	mov    -0x4(%ebp),%eax
  300a26:	c9                   	leave  
  300a27:	c3                   	ret    

00300a28 <time_pop>:
  300a28:	55                   	push   %ebp
  300a29:	89 e5                	mov    %esp,%ebp
  300a2b:	b8 02 00 00 00       	mov    $0x2,%eax
  300a30:	bb 01 00 00 00       	mov    $0x1,%ebx
  300a35:	cd 80                	int    $0x80
  300a37:	5d                   	pop    %ebp
  300a38:	c3                   	ret    

00300a39 <last_key_code>:
  300a39:	55                   	push   %ebp
  300a3a:	89 e5                	mov    %esp,%ebp
  300a3c:	83 ec 10             	sub    $0x10,%esp
  300a3f:	b8 03 00 00 00       	mov    $0x3,%eax
  300a44:	bb 00 00 00 00       	mov    $0x0,%ebx
  300a49:	cd 80                	int    $0x80
  300a4b:	89 c0                	mov    %eax,%eax
  300a4d:	89 45 fc             	mov    %eax,-0x4(%ebp)
  300a50:	8b 45 fc             	mov    -0x4(%ebp),%eax
  300a53:	c9                   	leave  
  300a54:	c3                   	ret    

00300a55 <reset_last_key>:
  300a55:	55                   	push   %ebp
  300a56:	89 e5                	mov    %esp,%ebp
  300a58:	b8 03 00 00 00       	mov    $0x3,%eax
  300a5d:	bb 01 00 00 00       	mov    $0x1,%ebx
  300a62:	cd 80                	int    $0x80
  300a64:	5d                   	pop    %ebp
  300a65:	c3                   	ret    

00300a66 <print>:
  300a66:	55                   	push   %ebp
  300a67:	89 e5                	mov    %esp,%ebp
  300a69:	8b 45 08             	mov    0x8(%ebp),%eax
  300a6c:	89 c1                	mov    %eax,%ecx
  300a6e:	b8 01 00 00 00       	mov    $0x1,%eax
  300a73:	bb 01 00 00 00       	mov    $0x1,%ebx
  300a78:	cd 80                	int    $0x80
  300a7a:	5d                   	pop    %ebp
  300a7b:	c3                   	ret    

00300a7c <my_memcpy>:
  300a7c:	55                   	push   %ebp
  300a7d:	89 e5                	mov    %esp,%ebp
  300a7f:	57                   	push   %edi
  300a80:	56                   	push   %esi
  300a81:	53                   	push   %ebx
  300a82:	8b 45 10             	mov    0x10(%ebp),%eax
  300a85:	8b 55 0c             	mov    0xc(%ebp),%edx
  300a88:	8b 5d 08             	mov    0x8(%ebp),%ebx
  300a8b:	89 c1                	mov    %eax,%ecx
  300a8d:	89 d6                	mov    %edx,%esi
  300a8f:	89 df                	mov    %ebx,%edi
  300a91:	fc                   	cld    
  300a92:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  300a94:	5b                   	pop    %ebx
  300a95:	5e                   	pop    %esi
  300a96:	5f                   	pop    %edi
  300a97:	5d                   	pop    %ebp
  300a98:	c3                   	ret    

00300a99 <my_memset>:
  300a99:	55                   	push   %ebp
  300a9a:	89 e5                	mov    %esp,%ebp
  300a9c:	57                   	push   %edi
  300a9d:	53                   	push   %ebx
  300a9e:	8b 55 10             	mov    0x10(%ebp),%edx
  300aa1:	8b 45 0c             	mov    0xc(%ebp),%eax
  300aa4:	8b 5d 08             	mov    0x8(%ebp),%ebx
  300aa7:	89 d1                	mov    %edx,%ecx
  300aa9:	89 df                	mov    %ebx,%edi
  300aab:	fc                   	cld    
  300aac:	f3 aa                	rep stos %al,%es:(%edi)
  300aae:	5b                   	pop    %ebx
  300aaf:	5f                   	pop    %edi
  300ab0:	5d                   	pop    %ebp
  300ab1:	c3                   	ret    

00300ab2 <change>:
  300ab2:	55                   	push   %ebp
  300ab3:	89 e5                	mov    %esp,%ebp
  300ab5:	53                   	push   %ebx
  300ab6:	83 c4 80             	add    $0xffffff80,%esp
  300ab9:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  300ac0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  300ac7:	8b 45 08             	mov    0x8(%ebp),%eax
  300aca:	89 45 ec             	mov    %eax,-0x14(%ebp)
  300acd:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  300ad1:	75 14                	jne    300ae7 <change+0x35>
  300ad3:	8b 45 0c             	mov    0xc(%ebp),%eax
  300ad6:	c6 00 30             	movb   $0x30,(%eax)
  300ad9:	8b 45 0c             	mov    0xc(%ebp),%eax
  300adc:	83 c0 01             	add    $0x1,%eax
  300adf:	c6 00 00             	movb   $0x0,(%eax)
  300ae2:	e9 a5 00 00 00       	jmp    300b8c <change+0xda>
  300ae7:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  300aeb:	79 1d                	jns    300b0a <change+0x58>
  300aed:	8b 45 f4             	mov    -0xc(%ebp),%eax
  300af0:	8d 50 01             	lea    0x1(%eax),%edx
  300af3:	89 55 f4             	mov    %edx,-0xc(%ebp)
  300af6:	89 c2                	mov    %eax,%edx
  300af8:	8b 45 0c             	mov    0xc(%ebp),%eax
  300afb:	01 d0                	add    %edx,%eax
  300afd:	c6 00 2d             	movb   $0x2d,(%eax)
  300b00:	8b 45 ec             	mov    -0x14(%ebp),%eax
  300b03:	f7 d8                	neg    %eax
  300b05:	89 45 f0             	mov    %eax,-0x10(%ebp)
  300b08:	eb 06                	jmp    300b10 <change+0x5e>
  300b0a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  300b0d:	89 45 f0             	mov    %eax,-0x10(%ebp)
  300b10:	eb 40                	jmp    300b52 <change+0xa0>
  300b12:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  300b15:	8d 41 01             	lea    0x1(%ecx),%eax
  300b18:	89 45 f8             	mov    %eax,-0x8(%ebp)
  300b1b:	8b 5d f0             	mov    -0x10(%ebp),%ebx
  300b1e:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  300b23:	89 d8                	mov    %ebx,%eax
  300b25:	f7 e2                	mul    %edx
  300b27:	c1 ea 03             	shr    $0x3,%edx
  300b2a:	89 d0                	mov    %edx,%eax
  300b2c:	c1 e0 02             	shl    $0x2,%eax
  300b2f:	01 d0                	add    %edx,%eax
  300b31:	01 c0                	add    %eax,%eax
  300b33:	29 c3                	sub    %eax,%ebx
  300b35:	89 da                	mov    %ebx,%edx
  300b37:	89 d0                	mov    %edx,%eax
  300b39:	83 c0 30             	add    $0x30,%eax
  300b3c:	88 44 0d 88          	mov    %al,-0x78(%ebp,%ecx,1)
  300b40:	8b 45 f0             	mov    -0x10(%ebp),%eax
  300b43:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  300b48:	f7 e2                	mul    %edx
  300b4a:	89 d0                	mov    %edx,%eax
  300b4c:	c1 e8 03             	shr    $0x3,%eax
  300b4f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  300b52:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  300b56:	75 ba                	jne    300b12 <change+0x60>
  300b58:	eb 21                	jmp    300b7b <change+0xc9>
  300b5a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  300b5d:	8d 50 01             	lea    0x1(%eax),%edx
  300b60:	89 55 f4             	mov    %edx,-0xc(%ebp)
  300b63:	89 c2                	mov    %eax,%edx
  300b65:	8b 45 0c             	mov    0xc(%ebp),%eax
  300b68:	01 c2                	add    %eax,%edx
  300b6a:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
  300b6e:	8d 4d 88             	lea    -0x78(%ebp),%ecx
  300b71:	8b 45 f8             	mov    -0x8(%ebp),%eax
  300b74:	01 c8                	add    %ecx,%eax
  300b76:	0f b6 00             	movzbl (%eax),%eax
  300b79:	88 02                	mov    %al,(%edx)
  300b7b:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  300b7f:	75 d9                	jne    300b5a <change+0xa8>
  300b81:	8b 55 f4             	mov    -0xc(%ebp),%edx
  300b84:	8b 45 0c             	mov    0xc(%ebp),%eax
  300b87:	01 d0                	add    %edx,%eax
  300b89:	c6 00 00             	movb   $0x0,(%eax)
  300b8c:	83 ec 80             	sub    $0xffffff80,%esp
  300b8f:	5b                   	pop    %ebx
  300b90:	5d                   	pop    %ebp
  300b91:	c3                   	ret    

00300b92 <srand>:
  300b92:	55                   	push   %ebp
  300b93:	89 e5                	mov    %esp,%ebp
  300b95:	8b 45 08             	mov    0x8(%ebp),%eax
  300b98:	a3 40 0e 31 00       	mov    %eax,0x310e40
  300b9d:	5d                   	pop    %ebp
  300b9e:	c3                   	ret    

00300b9f <rand>:
  300b9f:	55                   	push   %ebp
  300ba0:	89 e5                	mov    %esp,%ebp
  300ba2:	a1 40 0e 31 00       	mov    0x310e40,%eax
  300ba7:	69 c0 35 4e 5a 01    	imul   $0x15a4e35,%eax,%eax
  300bad:	83 c0 01             	add    $0x1,%eax
  300bb0:	a3 40 0e 31 00       	mov    %eax,0x310e40
  300bb5:	a1 40 0e 31 00       	mov    0x310e40,%eax
  300bba:	c1 f8 10             	sar    $0x10,%eax
  300bbd:	25 ff 7f 00 00       	and    $0x7fff,%eax
  300bc2:	5d                   	pop    %ebp
  300bc3:	c3                   	ret    
