
game:     file format elf32-i386


Disassembly of section .text:

00200000 <draw_mark>:
  200000:	55                   	push   %ebp
  200001:	89 e5                	mov    %esp,%ebp
  200003:	83 ec 08             	sub    $0x8,%esp
  200006:	a1 ac 4d 21 00       	mov    0x214dac,%eax
  20000b:	83 e8 01             	sub    $0x1,%eax
  20000e:	83 ec 08             	sub    $0x8,%esp
  200011:	68 90 1e 21 00       	push   $0x211e90
  200016:	50                   	push   %eax
  200017:	e8 85 0a 00 00       	call   200aa1 <change>
  20001c:	83 c4 10             	add    $0x10,%esp
  20001f:	a1 ac 4d 21 00       	mov    0x214dac,%eax
  200024:	83 f8 0a             	cmp    $0xa,%eax
  200027:	7f 18                	jg     200041 <draw_mark+0x41>
  200029:	6a 2f                	push   $0x2f
  20002b:	68 38 01 00 00       	push   $0x138
  200030:	6a 00                	push   $0x0
  200032:	68 90 1e 21 00       	push   $0x211e90
  200037:	e8 c2 07 00 00       	call   2007fe <draw_string>
  20003c:	83 c4 10             	add    $0x10,%esp
  20003f:	eb 38                	jmp    200079 <draw_mark+0x79>
  200041:	a1 ac 4d 21 00       	mov    0x214dac,%eax
  200046:	83 f8 64             	cmp    $0x64,%eax
  200049:	7f 18                	jg     200063 <draw_mark+0x63>
  20004b:	6a 2f                	push   $0x2f
  20004d:	68 30 01 00 00       	push   $0x130
  200052:	6a 00                	push   $0x0
  200054:	68 90 1e 21 00       	push   $0x211e90
  200059:	e8 a0 07 00 00       	call   2007fe <draw_string>
  20005e:	83 c4 10             	add    $0x10,%esp
  200061:	eb 16                	jmp    200079 <draw_mark+0x79>
  200063:	6a 2f                	push   $0x2f
  200065:	68 28 01 00 00       	push   $0x128
  20006a:	6a 00                	push   $0x0
  20006c:	68 90 1e 21 00       	push   $0x211e90
  200071:	e8 88 07 00 00       	call   2007fe <draw_string>
  200076:	83 c4 10             	add    $0x10,%esp
  200079:	c9                   	leave  
  20007a:	c3                   	ret    

0020007b <draw_whole_snake>:
  20007b:	55                   	push   %ebp
  20007c:	89 e5                	mov    %esp,%ebp
  20007e:	53                   	push   %ebx
  20007f:	83 ec 14             	sub    $0x14,%esp
  200082:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  200089:	eb 4d                	jmp    2000d8 <draw_whole_snake+0x5d>
  20008b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  20008e:	89 d0                	mov    %edx,%eax
  200090:	01 c0                	add    %eax,%eax
  200092:	01 d0                	add    %edx,%eax
  200094:	c1 e0 02             	shl    $0x2,%eax
  200097:	05 c0 1e 21 00       	add    $0x211ec0,%eax
  20009c:	8b 18                	mov    (%eax),%ebx
  20009e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  2000a1:	89 d0                	mov    %edx,%eax
  2000a3:	01 c0                	add    %eax,%eax
  2000a5:	01 d0                	add    %edx,%eax
  2000a7:	c1 e0 02             	shl    $0x2,%eax
  2000aa:	05 c0 1e 21 00       	add    $0x211ec0,%eax
  2000af:	8b 48 08             	mov    0x8(%eax),%ecx
  2000b2:	8b 55 f4             	mov    -0xc(%ebp),%edx
  2000b5:	89 d0                	mov    %edx,%eax
  2000b7:	01 c0                	add    %eax,%eax
  2000b9:	01 d0                	add    %edx,%eax
  2000bb:	c1 e0 02             	shl    $0x2,%eax
  2000be:	05 c0 1e 21 00       	add    $0x211ec0,%eax
  2000c3:	8b 40 04             	mov    0x4(%eax),%eax
  2000c6:	83 ec 04             	sub    $0x4,%esp
  2000c9:	53                   	push   %ebx
  2000ca:	51                   	push   %ecx
  2000cb:	50                   	push   %eax
  2000cc:	e8 18 08 00 00       	call   2008e9 <draw_snake>
  2000d1:	83 c4 10             	add    $0x10,%esp
  2000d4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  2000d8:	a1 80 1e 21 00       	mov    0x211e80,%eax
  2000dd:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  2000e0:	7e a9                	jle    20008b <draw_whole_snake+0x10>
  2000e2:	8b 0d 0c 24 20 00    	mov    0x20240c,%ecx
  2000e8:	8b 15 08 24 20 00    	mov    0x202408,%edx
  2000ee:	a1 04 24 20 00       	mov    0x202404,%eax
  2000f3:	83 ec 04             	sub    $0x4,%esp
  2000f6:	51                   	push   %ecx
  2000f7:	52                   	push   %edx
  2000f8:	50                   	push   %eax
  2000f9:	e8 a0 07 00 00       	call   20089e <draw_food>
  2000fe:	83 c4 10             	add    $0x10,%esp
  200101:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  200104:	c9                   	leave  
  200105:	c3                   	ret    

00200106 <make_food>:
  200106:	55                   	push   %ebp
  200107:	89 e5                	mov    %esp,%ebp
  200109:	c7 05 04 24 20 00 60 	movl   $0x60,0x202404
  200110:	00 00 00 
  200113:	c7 05 08 24 20 00 58 	movl   $0x58,0x202408
  20011a:	00 00 00 
  20011d:	c7 05 0c 24 20 00 04 	movl   $0x4,0x20240c
  200124:	00 00 00 
  200127:	5d                   	pop    %ebp
  200128:	c3                   	ret    

00200129 <do_move>:
  200129:	55                   	push   %ebp
  20012a:	89 e5                	mov    %esp,%ebp
  20012c:	83 ec 18             	sub    $0x18,%esp
  20012f:	a1 d0 1e 21 00       	mov    0x211ed0,%eax
  200134:	a3 c4 1e 21 00       	mov    %eax,0x211ec4
  200139:	a1 d4 1e 21 00       	mov    0x211ed4,%eax
  20013e:	a3 c8 1e 21 00       	mov    %eax,0x211ec8
  200143:	a1 cc 1e 21 00       	mov    0x211ecc,%eax
  200148:	a3 c0 1e 21 00       	mov    %eax,0x211ec0
  20014d:	8b 15 80 1e 21 00    	mov    0x211e80,%edx
  200153:	89 d0                	mov    %edx,%eax
  200155:	01 c0                	add    %eax,%eax
  200157:	01 d0                	add    %edx,%eax
  200159:	c1 e0 02             	shl    $0x2,%eax
  20015c:	05 c0 1e 21 00       	add    $0x211ec0,%eax
  200161:	8b 40 04             	mov    0x4(%eax),%eax
  200164:	a3 88 1e 21 00       	mov    %eax,0x211e88
  200169:	8b 15 80 1e 21 00    	mov    0x211e80,%edx
  20016f:	89 d0                	mov    %edx,%eax
  200171:	01 c0                	add    %eax,%eax
  200173:	01 d0                	add    %edx,%eax
  200175:	c1 e0 02             	shl    $0x2,%eax
  200178:	05 c0 1e 21 00       	add    $0x211ec0,%eax
  20017d:	8b 40 08             	mov    0x8(%eax),%eax
  200180:	a3 8c 1e 21 00       	mov    %eax,0x211e8c
  200185:	a1 00 24 20 00       	mov    0x202400,%eax
  20018a:	85 c0                	test   %eax,%eax
  20018c:	75 24                	jne    2001b2 <do_move+0x89>
  20018e:	a1 d4 1e 21 00       	mov    0x211ed4,%eax
  200193:	83 e8 08             	sub    $0x8,%eax
  200196:	a3 d4 1e 21 00       	mov    %eax,0x211ed4
  20019b:	a1 d4 1e 21 00       	mov    0x211ed4,%eax
  2001a0:	85 c0                	test   %eax,%eax
  2001a2:	0f 89 84 00 00 00    	jns    20022c <do_move+0x103>
  2001a8:	b8 00 00 00 00       	mov    $0x0,%eax
  2001ad:	e9 9f 03 00 00       	jmp    200551 <do_move+0x428>
  2001b2:	a1 00 24 20 00       	mov    0x202400,%eax
  2001b7:	83 f8 12             	cmp    $0x12,%eax
  2001ba:	75 23                	jne    2001df <do_move+0xb6>
  2001bc:	a1 d0 1e 21 00       	mov    0x211ed0,%eax
  2001c1:	83 c0 08             	add    $0x8,%eax
  2001c4:	a3 d0 1e 21 00       	mov    %eax,0x211ed0
  2001c9:	a1 d0 1e 21 00       	mov    0x211ed0,%eax
  2001ce:	3d c7 00 00 00       	cmp    $0xc7,%eax
  2001d3:	7e 57                	jle    20022c <do_move+0x103>
  2001d5:	b8 00 00 00 00       	mov    $0x0,%eax
  2001da:	e9 72 03 00 00       	jmp    200551 <do_move+0x428>
  2001df:	a1 00 24 20 00       	mov    0x202400,%eax
  2001e4:	83 f8 03             	cmp    $0x3,%eax
  2001e7:	75 23                	jne    20020c <do_move+0xe3>
  2001e9:	a1 d4 1e 21 00       	mov    0x211ed4,%eax
  2001ee:	83 c0 08             	add    $0x8,%eax
  2001f1:	a3 d4 1e 21 00       	mov    %eax,0x211ed4
  2001f6:	a1 d4 1e 21 00       	mov    0x211ed4,%eax
  2001fb:	3d 3f 01 00 00       	cmp    $0x13f,%eax
  200200:	7e 2a                	jle    20022c <do_move+0x103>
  200202:	b8 00 00 00 00       	mov    $0x0,%eax
  200207:	e9 45 03 00 00       	jmp    200551 <do_move+0x428>
  20020c:	a1 d0 1e 21 00       	mov    0x211ed0,%eax
  200211:	83 e8 08             	sub    $0x8,%eax
  200214:	a3 d0 1e 21 00       	mov    %eax,0x211ed0
  200219:	a1 d0 1e 21 00       	mov    0x211ed0,%eax
  20021e:	85 c0                	test   %eax,%eax
  200220:	79 0a                	jns    20022c <do_move+0x103>
  200222:	b8 00 00 00 00       	mov    $0x0,%eax
  200227:	e9 25 03 00 00       	jmp    200551 <do_move+0x428>
  20022c:	a1 80 1e 21 00       	mov    0x211e80,%eax
  200231:	89 45 f4             	mov    %eax,-0xc(%ebp)
  200234:	e9 96 00 00 00       	jmp    2002cf <do_move+0x1a6>
  200239:	83 7d f4 02          	cmpl   $0x2,-0xc(%ebp)
  20023d:	75 36                	jne    200275 <do_move+0x14c>
  20023f:	8b 0d c4 1e 21 00    	mov    0x211ec4,%ecx
  200245:	8b 55 f4             	mov    -0xc(%ebp),%edx
  200248:	89 d0                	mov    %edx,%eax
  20024a:	01 c0                	add    %eax,%eax
  20024c:	01 d0                	add    %edx,%eax
  20024e:	c1 e0 02             	shl    $0x2,%eax
  200251:	05 c0 1e 21 00       	add    $0x211ec0,%eax
  200256:	89 48 04             	mov    %ecx,0x4(%eax)
  200259:	8b 0d c8 1e 21 00    	mov    0x211ec8,%ecx
  20025f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  200262:	89 d0                	mov    %edx,%eax
  200264:	01 c0                	add    %eax,%eax
  200266:	01 d0                	add    %edx,%eax
  200268:	c1 e0 02             	shl    $0x2,%eax
  20026b:	05 c0 1e 21 00       	add    $0x211ec0,%eax
  200270:	89 48 08             	mov    %ecx,0x8(%eax)
  200273:	eb 56                	jmp    2002cb <do_move+0x1a2>
  200275:	8b 45 f4             	mov    -0xc(%ebp),%eax
  200278:	8d 50 ff             	lea    -0x1(%eax),%edx
  20027b:	89 d0                	mov    %edx,%eax
  20027d:	01 c0                	add    %eax,%eax
  20027f:	01 d0                	add    %edx,%eax
  200281:	c1 e0 02             	shl    $0x2,%eax
  200284:	05 c0 1e 21 00       	add    $0x211ec0,%eax
  200289:	8b 48 04             	mov    0x4(%eax),%ecx
  20028c:	8b 55 f4             	mov    -0xc(%ebp),%edx
  20028f:	89 d0                	mov    %edx,%eax
  200291:	01 c0                	add    %eax,%eax
  200293:	01 d0                	add    %edx,%eax
  200295:	c1 e0 02             	shl    $0x2,%eax
  200298:	05 c0 1e 21 00       	add    $0x211ec0,%eax
  20029d:	89 48 04             	mov    %ecx,0x4(%eax)
  2002a0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  2002a3:	8d 50 ff             	lea    -0x1(%eax),%edx
  2002a6:	89 d0                	mov    %edx,%eax
  2002a8:	01 c0                	add    %eax,%eax
  2002aa:	01 d0                	add    %edx,%eax
  2002ac:	c1 e0 02             	shl    $0x2,%eax
  2002af:	05 c0 1e 21 00       	add    $0x211ec0,%eax
  2002b4:	8b 48 08             	mov    0x8(%eax),%ecx
  2002b7:	8b 55 f4             	mov    -0xc(%ebp),%edx
  2002ba:	89 d0                	mov    %edx,%eax
  2002bc:	01 c0                	add    %eax,%eax
  2002be:	01 d0                	add    %edx,%eax
  2002c0:	c1 e0 02             	shl    $0x2,%eax
  2002c3:	05 c0 1e 21 00       	add    $0x211ec0,%eax
  2002c8:	89 48 08             	mov    %ecx,0x8(%eax)
  2002cb:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  2002cf:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
  2002d3:	0f 8f 60 ff ff ff    	jg     200239 <do_move+0x110>
  2002d9:	8b 15 d0 1e 21 00    	mov    0x211ed0,%edx
  2002df:	a1 04 24 20 00       	mov    0x202404,%eax
  2002e4:	39 c2                	cmp    %eax,%edx
  2002e6:	0f 85 f5 01 00 00    	jne    2004e1 <do_move+0x3b8>
  2002ec:	8b 15 d4 1e 21 00    	mov    0x211ed4,%edx
  2002f2:	a1 08 24 20 00       	mov    0x202408,%eax
  2002f7:	39 c2                	cmp    %eax,%edx
  2002f9:	0f 85 e2 01 00 00    	jne    2004e1 <do_move+0x3b8>
  2002ff:	a1 ac 4d 21 00       	mov    0x214dac,%eax
  200304:	83 c0 01             	add    $0x1,%eax
  200307:	a3 ac 4d 21 00       	mov    %eax,0x214dac
  20030c:	a1 80 1e 21 00       	mov    0x211e80,%eax
  200311:	83 c0 01             	add    $0x1,%eax
  200314:	a3 80 1e 21 00       	mov    %eax,0x211e80
  200319:	8b 15 80 1e 21 00    	mov    0x211e80,%edx
  20031f:	8b 0d 88 1e 21 00    	mov    0x211e88,%ecx
  200325:	89 d0                	mov    %edx,%eax
  200327:	01 c0                	add    %eax,%eax
  200329:	01 d0                	add    %edx,%eax
  20032b:	c1 e0 02             	shl    $0x2,%eax
  20032e:	05 c0 1e 21 00       	add    $0x211ec0,%eax
  200333:	89 48 04             	mov    %ecx,0x4(%eax)
  200336:	8b 15 80 1e 21 00    	mov    0x211e80,%edx
  20033c:	8b 0d 8c 1e 21 00    	mov    0x211e8c,%ecx
  200342:	89 d0                	mov    %edx,%eax
  200344:	01 c0                	add    %eax,%eax
  200346:	01 d0                	add    %edx,%eax
  200348:	c1 e0 02             	shl    $0x2,%eax
  20034b:	05 c0 1e 21 00       	add    $0x211ec0,%eax
  200350:	89 48 08             	mov    %ecx,0x8(%eax)
  200353:	a1 80 1e 21 00       	mov    0x211e80,%eax
  200358:	89 45 ec             	mov    %eax,-0x14(%ebp)
  20035b:	eb 2d                	jmp    20038a <do_move+0x261>
  20035d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200360:	8d 50 ff             	lea    -0x1(%eax),%edx
  200363:	89 d0                	mov    %edx,%eax
  200365:	01 c0                	add    %eax,%eax
  200367:	01 d0                	add    %edx,%eax
  200369:	c1 e0 02             	shl    $0x2,%eax
  20036c:	05 c0 1e 21 00       	add    $0x211ec0,%eax
  200371:	8b 08                	mov    (%eax),%ecx
  200373:	8b 55 ec             	mov    -0x14(%ebp),%edx
  200376:	89 d0                	mov    %edx,%eax
  200378:	01 c0                	add    %eax,%eax
  20037a:	01 d0                	add    %edx,%eax
  20037c:	c1 e0 02             	shl    $0x2,%eax
  20037f:	05 c0 1e 21 00       	add    $0x211ec0,%eax
  200384:	89 08                	mov    %ecx,(%eax)
  200386:	83 6d ec 01          	subl   $0x1,-0x14(%ebp)
  20038a:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
  20038e:	7f cd                	jg     20035d <do_move+0x234>
  200390:	a1 0c 24 20 00       	mov    0x20240c,%eax
  200395:	a3 cc 1e 21 00       	mov    %eax,0x211ecc
  20039a:	e8 ea 0a 00 00       	call   200e89 <rand>
  20039f:	89 c1                	mov    %eax,%ecx
  2003a1:	ba 83 20 08 82       	mov    $0x82082083,%edx
  2003a6:	89 c8                	mov    %ecx,%eax
  2003a8:	f7 ea                	imul   %edx
  2003aa:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
  2003ad:	c1 f8 05             	sar    $0x5,%eax
  2003b0:	89 c2                	mov    %eax,%edx
  2003b2:	89 c8                	mov    %ecx,%eax
  2003b4:	c1 f8 1f             	sar    $0x1f,%eax
  2003b7:	29 c2                	sub    %eax,%edx
  2003b9:	89 d0                	mov    %edx,%eax
  2003bb:	89 c2                	mov    %eax,%edx
  2003bd:	c1 e2 06             	shl    $0x6,%edx
  2003c0:	29 c2                	sub    %eax,%edx
  2003c2:	89 c8                	mov    %ecx,%eax
  2003c4:	29 d0                	sub    %edx,%eax
  2003c6:	83 c0 20             	add    $0x20,%eax
  2003c9:	a3 0c 24 20 00       	mov    %eax,0x20240c
  2003ce:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  2003d5:	e8 af 0a 00 00       	call   200e89 <rand>
  2003da:	89 c1                	mov    %eax,%ecx
  2003dc:	ba ab aa aa 2a       	mov    $0x2aaaaaab,%edx
  2003e1:	89 c8                	mov    %ecx,%eax
  2003e3:	f7 ea                	imul   %edx
  2003e5:	c1 fa 05             	sar    $0x5,%edx
  2003e8:	89 c8                	mov    %ecx,%eax
  2003ea:	c1 f8 1f             	sar    $0x1f,%eax
  2003ed:	29 c2                	sub    %eax,%edx
  2003ef:	89 d0                	mov    %edx,%eax
  2003f1:	01 c0                	add    %eax,%eax
  2003f3:	01 d0                	add    %edx,%eax
  2003f5:	c1 e0 06             	shl    $0x6,%eax
  2003f8:	29 c1                	sub    %eax,%ecx
  2003fa:	89 ca                	mov    %ecx,%edx
  2003fc:	89 15 04 24 20 00    	mov    %edx,0x202404
  200402:	8b 0d 04 24 20 00    	mov    0x202404,%ecx
  200408:	a1 04 24 20 00       	mov    0x202404,%eax
  20040d:	99                   	cltd   
  20040e:	c1 ea 1d             	shr    $0x1d,%edx
  200411:	01 d0                	add    %edx,%eax
  200413:	83 e0 07             	and    $0x7,%eax
  200416:	29 d0                	sub    %edx,%eax
  200418:	29 c1                	sub    %eax,%ecx
  20041a:	89 c8                	mov    %ecx,%eax
  20041c:	a3 04 24 20 00       	mov    %eax,0x202404
  200421:	e8 63 0a 00 00       	call   200e89 <rand>
  200426:	89 c1                	mov    %eax,%ecx
  200428:	ba d3 20 0d d2       	mov    $0xd20d20d3,%edx
  20042d:	89 c8                	mov    %ecx,%eax
  20042f:	f7 ea                	imul   %edx
  200431:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
  200434:	c1 f8 08             	sar    $0x8,%eax
  200437:	89 c2                	mov    %eax,%edx
  200439:	89 c8                	mov    %ecx,%eax
  20043b:	c1 f8 1f             	sar    $0x1f,%eax
  20043e:	29 c2                	sub    %eax,%edx
  200440:	89 d0                	mov    %edx,%eax
  200442:	69 c0 38 01 00 00    	imul   $0x138,%eax,%eax
  200448:	29 c1                	sub    %eax,%ecx
  20044a:	89 c8                	mov    %ecx,%eax
  20044c:	a3 08 24 20 00       	mov    %eax,0x202408
  200451:	8b 0d 08 24 20 00    	mov    0x202408,%ecx
  200457:	a1 08 24 20 00       	mov    0x202408,%eax
  20045c:	99                   	cltd   
  20045d:	c1 ea 1d             	shr    $0x1d,%edx
  200460:	01 d0                	add    %edx,%eax
  200462:	83 e0 07             	and    $0x7,%eax
  200465:	29 d0                	sub    %edx,%eax
  200467:	29 c1                	sub    %eax,%ecx
  200469:	89 c8                	mov    %ecx,%eax
  20046b:	a3 08 24 20 00       	mov    %eax,0x202408
  200470:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  200477:	eb 46                	jmp    2004bf <do_move+0x396>
  200479:	8b 55 f4             	mov    -0xc(%ebp),%edx
  20047c:	89 d0                	mov    %edx,%eax
  20047e:	01 c0                	add    %eax,%eax
  200480:	01 d0                	add    %edx,%eax
  200482:	c1 e0 02             	shl    $0x2,%eax
  200485:	05 c0 1e 21 00       	add    $0x211ec0,%eax
  20048a:	8b 50 04             	mov    0x4(%eax),%edx
  20048d:	a1 04 24 20 00       	mov    0x202404,%eax
  200492:	39 c2                	cmp    %eax,%edx
  200494:	75 25                	jne    2004bb <do_move+0x392>
  200496:	8b 55 f4             	mov    -0xc(%ebp),%edx
  200499:	89 d0                	mov    %edx,%eax
  20049b:	01 c0                	add    %eax,%eax
  20049d:	01 d0                	add    %edx,%eax
  20049f:	c1 e0 02             	shl    $0x2,%eax
  2004a2:	05 c0 1e 21 00       	add    $0x211ec0,%eax
  2004a7:	8b 50 08             	mov    0x8(%eax),%edx
  2004aa:	a1 08 24 20 00       	mov    0x202408,%eax
  2004af:	39 c2                	cmp    %eax,%edx
  2004b1:	75 08                	jne    2004bb <do_move+0x392>
  2004b3:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
  2004ba:	90                   	nop
  2004bb:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  2004bf:	a1 80 1e 21 00       	mov    0x211e80,%eax
  2004c4:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  2004c7:	7e b0                	jle    200479 <do_move+0x350>
  2004c9:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  2004cd:	75 0d                	jne    2004dc <do_move+0x3b3>
  2004cf:	90                   	nop
  2004d0:	e8 a6 fb ff ff       	call   20007b <draw_whole_snake>
  2004d5:	e8 5a 05 00 00       	call   200a34 <display_all>
  2004da:	eb 05                	jmp    2004e1 <do_move+0x3b8>
  2004dc:	e9 ed fe ff ff       	jmp    2003ce <do_move+0x2a5>
  2004e1:	c7 45 f4 02 00 00 00 	movl   $0x2,-0xc(%ebp)
  2004e8:	eb 47                	jmp    200531 <do_move+0x408>
  2004ea:	8b 0d d0 1e 21 00    	mov    0x211ed0,%ecx
  2004f0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  2004f3:	89 d0                	mov    %edx,%eax
  2004f5:	01 c0                	add    %eax,%eax
  2004f7:	01 d0                	add    %edx,%eax
  2004f9:	c1 e0 02             	shl    $0x2,%eax
  2004fc:	05 c0 1e 21 00       	add    $0x211ec0,%eax
  200501:	8b 40 04             	mov    0x4(%eax),%eax
  200504:	39 c1                	cmp    %eax,%ecx
  200506:	75 25                	jne    20052d <do_move+0x404>
  200508:	8b 0d d4 1e 21 00    	mov    0x211ed4,%ecx
  20050e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  200511:	89 d0                	mov    %edx,%eax
  200513:	01 c0                	add    %eax,%eax
  200515:	01 d0                	add    %edx,%eax
  200517:	c1 e0 02             	shl    $0x2,%eax
  20051a:	05 c0 1e 21 00       	add    $0x211ec0,%eax
  20051f:	8b 40 08             	mov    0x8(%eax),%eax
  200522:	39 c1                	cmp    %eax,%ecx
  200524:	75 07                	jne    20052d <do_move+0x404>
  200526:	b8 00 00 00 00       	mov    $0x0,%eax
  20052b:	eb 24                	jmp    200551 <do_move+0x428>
  20052d:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  200531:	a1 80 1e 21 00       	mov    0x211e80,%eax
  200536:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  200539:	7e af                	jle    2004ea <do_move+0x3c1>
  20053b:	a1 80 1e 21 00       	mov    0x211e80,%eax
  200540:	83 f8 32             	cmp    $0x32,%eax
  200543:	75 07                	jne    20054c <do_move+0x423>
  200545:	b8 02 00 00 00       	mov    $0x2,%eax
  20054a:	eb 05                	jmp    200551 <do_move+0x428>
  20054c:	b8 01 00 00 00       	mov    $0x1,%eax
  200551:	c9                   	leave  
  200552:	c3                   	ret    

00200553 <game_init>:
  200553:	55                   	push   %ebp
  200554:	89 e5                	mov    %esp,%ebp
  200556:	83 ec 08             	sub    $0x8,%esp
  200559:	c7 05 ac 4d 21 00 00 	movl   $0x0,0x214dac
  200560:	00 00 00 
  200563:	e8 df 04 00 00       	call   200a47 <get_time>
  200568:	89 c1                	mov    %eax,%ecx
  20056a:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
  20056f:	89 c8                	mov    %ecx,%eax
  200571:	f7 ea                	imul   %edx
  200573:	c1 fa 06             	sar    $0x6,%edx
  200576:	89 c8                	mov    %ecx,%eax
  200578:	c1 f8 1f             	sar    $0x1f,%eax
  20057b:	29 c2                	sub    %eax,%edx
  20057d:	89 d0                	mov    %edx,%eax
  20057f:	69 c0 e8 03 00 00    	imul   $0x3e8,%eax,%eax
  200585:	29 c1                	sub    %eax,%ecx
  200587:	89 c8                	mov    %ecx,%eax
  200589:	83 ec 0c             	sub    $0xc,%esp
  20058c:	50                   	push   %eax
  20058d:	e8 ea 08 00 00       	call   200e7c <srand>
  200592:	83 c4 10             	add    $0x10,%esp
  200595:	c7 05 80 1e 21 00 02 	movl   $0x2,0x211e80
  20059c:	00 00 00 
  20059f:	c7 05 b0 4d 21 00 01 	movl   $0x1,0x214db0
  2005a6:	00 00 00 
  2005a9:	c7 05 d0 1e 21 00 60 	movl   $0x60,0x211ed0
  2005b0:	00 00 00 
  2005b3:	c7 05 d4 1e 21 00 60 	movl   $0x60,0x211ed4
  2005ba:	00 00 00 
  2005bd:	c7 05 cc 1e 21 00 01 	movl   $0x1,0x211ecc
  2005c4:	00 00 00 
  2005c7:	c7 05 dc 1e 21 00 60 	movl   $0x60,0x211edc
  2005ce:	00 00 00 
  2005d1:	c7 05 e0 1e 21 00 68 	movl   $0x68,0x211ee0
  2005d8:	00 00 00 
  2005db:	c7 05 d8 1e 21 00 06 	movl   $0x6,0x211ed8
  2005e2:	00 00 00 
  2005e5:	e8 1c fb ff ff       	call   200106 <make_food>
  2005ea:	e8 a1 04 00 00       	call   200a90 <reset_last_key>
  2005ef:	c9                   	leave  
  2005f0:	c3                   	ret    

002005f1 <game_loop>:
  2005f1:	55                   	push   %ebp
  2005f2:	89 e5                	mov    %esp,%ebp
  2005f4:	83 ec 08             	sub    $0x8,%esp
  2005f7:	e8 b2 08 00 00       	call   200eae <getpid>
  2005fc:	83 ec 08             	sub    $0x8,%esp
  2005ff:	50                   	push   %eax
  200600:	68 c8 0e 20 00       	push   $0x200ec8
  200605:	e8 e5 07 00 00       	call   200def <print>
  20060a:	83 c4 10             	add    $0x10,%esp
  20060d:	83 ec 04             	sub    $0x4,%esp
  200610:	68 40 e2 01 00       	push   $0x1e240
  200615:	68 40 e2 01 00       	push   $0x1e240
  20061a:	68 d8 0e 20 00       	push   $0x200ed8
  20061f:	e8 cb 07 00 00       	call   200def <print>
  200624:	83 c4 10             	add    $0x10,%esp
  200627:	e8 27 ff ff ff       	call   200553 <game_init>
  20062c:	e8 43 04 00 00       	call   200a74 <last_key_code>
  200631:	eb f9                	jmp    20062c <game_loop+0x3b>

00200633 <draw_pixel>:
  200633:	55                   	push   %ebp
  200634:	89 e5                	mov    %esp,%ebp
  200636:	8b 45 08             	mov    0x8(%ebp),%eax
  200639:	c1 e0 08             	shl    $0x8,%eax
  20063c:	89 c2                	mov    %eax,%edx
  20063e:	8b 45 08             	mov    0x8(%ebp),%eax
  200641:	c1 e0 06             	shl    $0x6,%eax
  200644:	01 c2                	add    %eax,%edx
  200646:	8b 45 0c             	mov    0xc(%ebp),%eax
  200649:	01 d0                	add    %edx,%eax
  20064b:	8b 55 10             	mov    0x10(%ebp),%edx
  20064e:	88 90 40 24 20 00    	mov    %dl,0x202440(%eax)
  200654:	5d                   	pop    %ebp
  200655:	c3                   	ret    

00200656 <init>:
  200656:	55                   	push   %ebp
  200657:	89 e5                	mov    %esp,%ebp
  200659:	83 ec 08             	sub    $0x8,%esp
  20065c:	83 ec 04             	sub    $0x4,%esp
  20065f:	68 00 fa 00 00       	push   $0xfa00
  200664:	6a 00                	push   $0x0
  200666:	68 40 24 20 00       	push   $0x202440
  20066b:	e8 f3 07 00 00       	call   200e63 <my_memset>
  200670:	83 c4 10             	add    $0x10,%esp
  200673:	c9                   	leave  
  200674:	c3                   	ret    

00200675 <draw_character>:
  200675:	55                   	push   %ebp
  200676:	89 e5                	mov    %esp,%ebp
  200678:	83 ec 14             	sub    $0x14,%esp
  20067b:	8b 45 08             	mov    0x8(%ebp),%eax
  20067e:	88 45 ec             	mov    %al,-0x14(%ebp)
  200681:	0f be 45 ec          	movsbl -0x14(%ebp),%eax
  200685:	c1 e0 03             	shl    $0x3,%eax
  200688:	05 00 20 20 00       	add    $0x202000,%eax
  20068d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  200690:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  200697:	eb 52                	jmp    2006eb <draw_character+0x76>
  200699:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  2006a0:	eb 3f                	jmp    2006e1 <draw_character+0x6c>
  2006a2:	8b 55 fc             	mov    -0x4(%ebp),%edx
  2006a5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  2006a8:	01 d0                	add    %edx,%eax
  2006aa:	0f b6 00             	movzbl (%eax),%eax
  2006ad:	0f be d0             	movsbl %al,%edx
  2006b0:	8b 45 f8             	mov    -0x8(%ebp),%eax
  2006b3:	89 c1                	mov    %eax,%ecx
  2006b5:	d3 fa                	sar    %cl,%edx
  2006b7:	89 d0                	mov    %edx,%eax
  2006b9:	83 e0 01             	and    $0x1,%eax
  2006bc:	85 c0                	test   %eax,%eax
  2006be:	74 1d                	je     2006dd <draw_character+0x68>
  2006c0:	8b 55 10             	mov    0x10(%ebp),%edx
  2006c3:	8b 45 f8             	mov    -0x8(%ebp),%eax
  2006c6:	01 c2                	add    %eax,%edx
  2006c8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  2006cb:	8b 45 fc             	mov    -0x4(%ebp),%eax
  2006ce:	01 c8                	add    %ecx,%eax
  2006d0:	ff 75 14             	pushl  0x14(%ebp)
  2006d3:	52                   	push   %edx
  2006d4:	50                   	push   %eax
  2006d5:	e8 59 ff ff ff       	call   200633 <draw_pixel>
  2006da:	83 c4 0c             	add    $0xc,%esp
  2006dd:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  2006e1:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  2006e5:	7e bb                	jle    2006a2 <draw_character+0x2d>
  2006e7:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  2006eb:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
  2006ef:	7e a8                	jle    200699 <draw_character+0x24>
  2006f1:	c9                   	leave  
  2006f2:	c3                   	ret    

002006f3 <draw_character_2>:
  2006f3:	55                   	push   %ebp
  2006f4:	89 e5                	mov    %esp,%ebp
  2006f6:	83 ec 14             	sub    $0x14,%esp
  2006f9:	8b 45 08             	mov    0x8(%ebp),%eax
  2006fc:	88 45 ec             	mov    %al,-0x14(%ebp)
  2006ff:	0f be 45 ec          	movsbl -0x14(%ebp),%eax
  200703:	c1 e0 03             	shl    $0x3,%eax
  200706:	05 00 20 20 00       	add    $0x202000,%eax
  20070b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  20070e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  200715:	e9 d8 00 00 00       	jmp    2007f2 <draw_character_2+0xff>
  20071a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  200721:	e9 be 00 00 00       	jmp    2007e4 <draw_character_2+0xf1>
  200726:	8b 55 fc             	mov    -0x4(%ebp),%edx
  200729:	8b 45 f4             	mov    -0xc(%ebp),%eax
  20072c:	01 d0                	add    %edx,%eax
  20072e:	0f b6 00             	movzbl (%eax),%eax
  200731:	0f be d0             	movsbl %al,%edx
  200734:	8b 45 f8             	mov    -0x8(%ebp),%eax
  200737:	89 c1                	mov    %eax,%ecx
  200739:	d3 fa                	sar    %cl,%edx
  20073b:	89 d0                	mov    %edx,%eax
  20073d:	83 e0 01             	and    $0x1,%eax
  200740:	85 c0                	test   %eax,%eax
  200742:	0f 84 98 00 00 00    	je     2007e0 <draw_character_2+0xed>
  200748:	8b 45 f8             	mov    -0x8(%ebp),%eax
  20074b:	8d 14 00             	lea    (%eax,%eax,1),%edx
  20074e:	8b 45 10             	mov    0x10(%ebp),%eax
  200751:	01 c2                	add    %eax,%edx
  200753:	8b 45 fc             	mov    -0x4(%ebp),%eax
  200756:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
  200759:	8b 45 0c             	mov    0xc(%ebp),%eax
  20075c:	01 c8                	add    %ecx,%eax
  20075e:	ff 75 14             	pushl  0x14(%ebp)
  200761:	52                   	push   %edx
  200762:	50                   	push   %eax
  200763:	e8 cb fe ff ff       	call   200633 <draw_pixel>
  200768:	83 c4 0c             	add    $0xc,%esp
  20076b:	8b 45 f8             	mov    -0x8(%ebp),%eax
  20076e:	8d 14 00             	lea    (%eax,%eax,1),%edx
  200771:	8b 45 10             	mov    0x10(%ebp),%eax
  200774:	01 c2                	add    %eax,%edx
  200776:	8b 45 fc             	mov    -0x4(%ebp),%eax
  200779:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
  20077c:	8b 45 0c             	mov    0xc(%ebp),%eax
  20077f:	01 c8                	add    %ecx,%eax
  200781:	83 c0 01             	add    $0x1,%eax
  200784:	ff 75 14             	pushl  0x14(%ebp)
  200787:	52                   	push   %edx
  200788:	50                   	push   %eax
  200789:	e8 a5 fe ff ff       	call   200633 <draw_pixel>
  20078e:	83 c4 0c             	add    $0xc,%esp
  200791:	8b 45 f8             	mov    -0x8(%ebp),%eax
  200794:	8d 14 00             	lea    (%eax,%eax,1),%edx
  200797:	8b 45 10             	mov    0x10(%ebp),%eax
  20079a:	01 d0                	add    %edx,%eax
  20079c:	8d 50 01             	lea    0x1(%eax),%edx
  20079f:	8b 45 fc             	mov    -0x4(%ebp),%eax
  2007a2:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
  2007a5:	8b 45 0c             	mov    0xc(%ebp),%eax
  2007a8:	01 c8                	add    %ecx,%eax
  2007aa:	83 c0 01             	add    $0x1,%eax
  2007ad:	ff 75 14             	pushl  0x14(%ebp)
  2007b0:	52                   	push   %edx
  2007b1:	50                   	push   %eax
  2007b2:	e8 7c fe ff ff       	call   200633 <draw_pixel>
  2007b7:	83 c4 0c             	add    $0xc,%esp
  2007ba:	8b 45 f8             	mov    -0x8(%ebp),%eax
  2007bd:	8d 14 00             	lea    (%eax,%eax,1),%edx
  2007c0:	8b 45 10             	mov    0x10(%ebp),%eax
  2007c3:	01 d0                	add    %edx,%eax
  2007c5:	8d 50 01             	lea    0x1(%eax),%edx
  2007c8:	8b 45 fc             	mov    -0x4(%ebp),%eax
  2007cb:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
  2007ce:	8b 45 0c             	mov    0xc(%ebp),%eax
  2007d1:	01 c8                	add    %ecx,%eax
  2007d3:	ff 75 14             	pushl  0x14(%ebp)
  2007d6:	52                   	push   %edx
  2007d7:	50                   	push   %eax
  2007d8:	e8 56 fe ff ff       	call   200633 <draw_pixel>
  2007dd:	83 c4 0c             	add    $0xc,%esp
  2007e0:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  2007e4:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  2007e8:	0f 8e 38 ff ff ff    	jle    200726 <draw_character_2+0x33>
  2007ee:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  2007f2:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
  2007f6:	0f 8e 1e ff ff ff    	jle    20071a <draw_character_2+0x27>
  2007fc:	c9                   	leave  
  2007fd:	c3                   	ret    

002007fe <draw_string>:
  2007fe:	55                   	push   %ebp
  2007ff:	89 e5                	mov    %esp,%ebp
  200801:	eb 3f                	jmp    200842 <draw_string+0x44>
  200803:	8b 45 08             	mov    0x8(%ebp),%eax
  200806:	8d 50 01             	lea    0x1(%eax),%edx
  200809:	89 55 08             	mov    %edx,0x8(%ebp)
  20080c:	0f b6 00             	movzbl (%eax),%eax
  20080f:	0f be c0             	movsbl %al,%eax
  200812:	ff 75 14             	pushl  0x14(%ebp)
  200815:	ff 75 10             	pushl  0x10(%ebp)
  200818:	ff 75 0c             	pushl  0xc(%ebp)
  20081b:	50                   	push   %eax
  20081c:	e8 54 fe ff ff       	call   200675 <draw_character>
  200821:	83 c4 10             	add    $0x10,%esp
  200824:	8b 45 10             	mov    0x10(%ebp),%eax
  200827:	83 c0 08             	add    $0x8,%eax
  20082a:	3d 3f 01 00 00       	cmp    $0x13f,%eax
  20082f:	7e 0d                	jle    20083e <draw_string+0x40>
  200831:	83 45 0c 08          	addl   $0x8,0xc(%ebp)
  200835:	c7 45 10 00 00 00 00 	movl   $0x0,0x10(%ebp)
  20083c:	eb 04                	jmp    200842 <draw_string+0x44>
  20083e:	83 45 10 08          	addl   $0x8,0x10(%ebp)
  200842:	8b 45 08             	mov    0x8(%ebp),%eax
  200845:	0f b6 00             	movzbl (%eax),%eax
  200848:	84 c0                	test   %al,%al
  20084a:	75 b7                	jne    200803 <draw_string+0x5>
  20084c:	c9                   	leave  
  20084d:	c3                   	ret    

0020084e <draw_big_string>:
  20084e:	55                   	push   %ebp
  20084f:	89 e5                	mov    %esp,%ebp
  200851:	eb 3f                	jmp    200892 <draw_big_string+0x44>
  200853:	8b 45 08             	mov    0x8(%ebp),%eax
  200856:	8d 50 01             	lea    0x1(%eax),%edx
  200859:	89 55 08             	mov    %edx,0x8(%ebp)
  20085c:	0f b6 00             	movzbl (%eax),%eax
  20085f:	0f be c0             	movsbl %al,%eax
  200862:	ff 75 14             	pushl  0x14(%ebp)
  200865:	ff 75 10             	pushl  0x10(%ebp)
  200868:	ff 75 0c             	pushl  0xc(%ebp)
  20086b:	50                   	push   %eax
  20086c:	e8 82 fe ff ff       	call   2006f3 <draw_character_2>
  200871:	83 c4 10             	add    $0x10,%esp
  200874:	8b 45 10             	mov    0x10(%ebp),%eax
  200877:	83 c0 10             	add    $0x10,%eax
  20087a:	3d 3f 01 00 00       	cmp    $0x13f,%eax
  20087f:	7e 0d                	jle    20088e <draw_big_string+0x40>
  200881:	83 45 0c 10          	addl   $0x10,0xc(%ebp)
  200885:	c7 45 10 00 00 00 00 	movl   $0x0,0x10(%ebp)
  20088c:	eb 04                	jmp    200892 <draw_big_string+0x44>
  20088e:	83 45 10 10          	addl   $0x10,0x10(%ebp)
  200892:	8b 45 08             	mov    0x8(%ebp),%eax
  200895:	0f b6 00             	movzbl (%eax),%eax
  200898:	84 c0                	test   %al,%al
  20089a:	75 b7                	jne    200853 <draw_big_string+0x5>
  20089c:	c9                   	leave  
  20089d:	c3                   	ret    

0020089e <draw_food>:
  20089e:	55                   	push   %ebp
  20089f:	89 e5                	mov    %esp,%ebp
  2008a1:	83 ec 10             	sub    $0x10,%esp
  2008a4:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  2008ab:	eb 34                	jmp    2008e1 <draw_food+0x43>
  2008ad:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  2008b4:	eb 21                	jmp    2008d7 <draw_food+0x39>
  2008b6:	8b 55 0c             	mov    0xc(%ebp),%edx
  2008b9:	8b 45 f8             	mov    -0x8(%ebp),%eax
  2008bc:	01 c2                	add    %eax,%edx
  2008be:	8b 4d 08             	mov    0x8(%ebp),%ecx
  2008c1:	8b 45 fc             	mov    -0x4(%ebp),%eax
  2008c4:	01 c8                	add    %ecx,%eax
  2008c6:	ff 75 10             	pushl  0x10(%ebp)
  2008c9:	52                   	push   %edx
  2008ca:	50                   	push   %eax
  2008cb:	e8 63 fd ff ff       	call   200633 <draw_pixel>
  2008d0:	83 c4 0c             	add    $0xc,%esp
  2008d3:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  2008d7:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  2008db:	7e d9                	jle    2008b6 <draw_food+0x18>
  2008dd:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  2008e1:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
  2008e5:	7e c6                	jle    2008ad <draw_food+0xf>
  2008e7:	c9                   	leave  
  2008e8:	c3                   	ret    

002008e9 <draw_snake>:
  2008e9:	55                   	push   %ebp
  2008ea:	89 e5                	mov    %esp,%ebp
  2008ec:	83 ec 10             	sub    $0x10,%esp
  2008ef:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  2008f6:	eb 34                	jmp    20092c <draw_snake+0x43>
  2008f8:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  2008ff:	eb 21                	jmp    200922 <draw_snake+0x39>
  200901:	8b 55 0c             	mov    0xc(%ebp),%edx
  200904:	8b 45 f8             	mov    -0x8(%ebp),%eax
  200907:	01 c2                	add    %eax,%edx
  200909:	8b 4d 08             	mov    0x8(%ebp),%ecx
  20090c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  20090f:	01 c8                	add    %ecx,%eax
  200911:	ff 75 10             	pushl  0x10(%ebp)
  200914:	52                   	push   %edx
  200915:	50                   	push   %eax
  200916:	e8 18 fd ff ff       	call   200633 <draw_pixel>
  20091b:	83 c4 0c             	add    $0xc,%esp
  20091e:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  200922:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  200926:	7e d9                	jle    200901 <draw_snake+0x18>
  200928:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  20092c:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
  200930:	7e c6                	jle    2008f8 <draw_snake+0xf>
  200932:	6a 00                	push   $0x0
  200934:	ff 75 0c             	pushl  0xc(%ebp)
  200937:	ff 75 08             	pushl  0x8(%ebp)
  20093a:	e8 f4 fc ff ff       	call   200633 <draw_pixel>
  20093f:	83 c4 0c             	add    $0xc,%esp
  200942:	8b 45 0c             	mov    0xc(%ebp),%eax
  200945:	83 c0 01             	add    $0x1,%eax
  200948:	6a 00                	push   $0x0
  20094a:	50                   	push   %eax
  20094b:	ff 75 08             	pushl  0x8(%ebp)
  20094e:	e8 e0 fc ff ff       	call   200633 <draw_pixel>
  200953:	83 c4 0c             	add    $0xc,%esp
  200956:	8b 45 08             	mov    0x8(%ebp),%eax
  200959:	83 c0 01             	add    $0x1,%eax
  20095c:	6a 00                	push   $0x0
  20095e:	ff 75 0c             	pushl  0xc(%ebp)
  200961:	50                   	push   %eax
  200962:	e8 cc fc ff ff       	call   200633 <draw_pixel>
  200967:	83 c4 0c             	add    $0xc,%esp
  20096a:	8b 45 0c             	mov    0xc(%ebp),%eax
  20096d:	83 c0 06             	add    $0x6,%eax
  200970:	6a 00                	push   $0x0
  200972:	50                   	push   %eax
  200973:	ff 75 08             	pushl  0x8(%ebp)
  200976:	e8 b8 fc ff ff       	call   200633 <draw_pixel>
  20097b:	83 c4 0c             	add    $0xc,%esp
  20097e:	8b 45 0c             	mov    0xc(%ebp),%eax
  200981:	83 c0 07             	add    $0x7,%eax
  200984:	6a 00                	push   $0x0
  200986:	50                   	push   %eax
  200987:	ff 75 08             	pushl  0x8(%ebp)
  20098a:	e8 a4 fc ff ff       	call   200633 <draw_pixel>
  20098f:	83 c4 0c             	add    $0xc,%esp
  200992:	8b 45 0c             	mov    0xc(%ebp),%eax
  200995:	8d 50 07             	lea    0x7(%eax),%edx
  200998:	8b 45 08             	mov    0x8(%ebp),%eax
  20099b:	83 c0 01             	add    $0x1,%eax
  20099e:	6a 00                	push   $0x0
  2009a0:	52                   	push   %edx
  2009a1:	50                   	push   %eax
  2009a2:	e8 8c fc ff ff       	call   200633 <draw_pixel>
  2009a7:	83 c4 0c             	add    $0xc,%esp
  2009aa:	8b 45 08             	mov    0x8(%ebp),%eax
  2009ad:	83 c0 07             	add    $0x7,%eax
  2009b0:	6a 00                	push   $0x0
  2009b2:	ff 75 0c             	pushl  0xc(%ebp)
  2009b5:	50                   	push   %eax
  2009b6:	e8 78 fc ff ff       	call   200633 <draw_pixel>
  2009bb:	83 c4 0c             	add    $0xc,%esp
  2009be:	8b 45 0c             	mov    0xc(%ebp),%eax
  2009c1:	8d 50 01             	lea    0x1(%eax),%edx
  2009c4:	8b 45 08             	mov    0x8(%ebp),%eax
  2009c7:	83 c0 07             	add    $0x7,%eax
  2009ca:	6a 00                	push   $0x0
  2009cc:	52                   	push   %edx
  2009cd:	50                   	push   %eax
  2009ce:	e8 60 fc ff ff       	call   200633 <draw_pixel>
  2009d3:	83 c4 0c             	add    $0xc,%esp
  2009d6:	8b 45 08             	mov    0x8(%ebp),%eax
  2009d9:	83 c0 06             	add    $0x6,%eax
  2009dc:	6a 00                	push   $0x0
  2009de:	ff 75 0c             	pushl  0xc(%ebp)
  2009e1:	50                   	push   %eax
  2009e2:	e8 4c fc ff ff       	call   200633 <draw_pixel>
  2009e7:	83 c4 0c             	add    $0xc,%esp
  2009ea:	8b 45 0c             	mov    0xc(%ebp),%eax
  2009ed:	8d 50 06             	lea    0x6(%eax),%edx
  2009f0:	8b 45 08             	mov    0x8(%ebp),%eax
  2009f3:	83 c0 07             	add    $0x7,%eax
  2009f6:	6a 00                	push   $0x0
  2009f8:	52                   	push   %edx
  2009f9:	50                   	push   %eax
  2009fa:	e8 34 fc ff ff       	call   200633 <draw_pixel>
  2009ff:	83 c4 0c             	add    $0xc,%esp
  200a02:	8b 45 0c             	mov    0xc(%ebp),%eax
  200a05:	8d 50 07             	lea    0x7(%eax),%edx
  200a08:	8b 45 08             	mov    0x8(%ebp),%eax
  200a0b:	83 c0 07             	add    $0x7,%eax
  200a0e:	6a 00                	push   $0x0
  200a10:	52                   	push   %edx
  200a11:	50                   	push   %eax
  200a12:	e8 1c fc ff ff       	call   200633 <draw_pixel>
  200a17:	83 c4 0c             	add    $0xc,%esp
  200a1a:	8b 45 0c             	mov    0xc(%ebp),%eax
  200a1d:	8d 50 07             	lea    0x7(%eax),%edx
  200a20:	8b 45 08             	mov    0x8(%ebp),%eax
  200a23:	83 c0 06             	add    $0x6,%eax
  200a26:	6a 00                	push   $0x0
  200a28:	52                   	push   %edx
  200a29:	50                   	push   %eax
  200a2a:	e8 04 fc ff ff       	call   200633 <draw_pixel>
  200a2f:	83 c4 0c             	add    $0xc,%esp
  200a32:	c9                   	leave  
  200a33:	c3                   	ret    

00200a34 <display_all>:
  200a34:	55                   	push   %ebp
  200a35:	89 e5                	mov    %esp,%ebp
  200a37:	b8 04 00 00 00       	mov    $0x4,%eax
  200a3c:	ba 40 24 20 00       	mov    $0x202440,%edx
  200a41:	89 d3                	mov    %edx,%ebx
  200a43:	cd 80                	int    $0x80
  200a45:	5d                   	pop    %ebp
  200a46:	c3                   	ret    

00200a47 <get_time>:
  200a47:	55                   	push   %ebp
  200a48:	89 e5                	mov    %esp,%ebp
  200a4a:	83 ec 10             	sub    $0x10,%esp
  200a4d:	b8 02 00 00 00       	mov    $0x2,%eax
  200a52:	bb 00 00 00 00       	mov    $0x0,%ebx
  200a57:	cd 80                	int    $0x80
  200a59:	89 c0                	mov    %eax,%eax
  200a5b:	89 45 fc             	mov    %eax,-0x4(%ebp)
  200a5e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  200a61:	c9                   	leave  
  200a62:	c3                   	ret    

00200a63 <time_pop>:
  200a63:	55                   	push   %ebp
  200a64:	89 e5                	mov    %esp,%ebp
  200a66:	b8 02 00 00 00       	mov    $0x2,%eax
  200a6b:	bb 01 00 00 00       	mov    $0x1,%ebx
  200a70:	cd 80                	int    $0x80
  200a72:	5d                   	pop    %ebp
  200a73:	c3                   	ret    

00200a74 <last_key_code>:
  200a74:	55                   	push   %ebp
  200a75:	89 e5                	mov    %esp,%ebp
  200a77:	83 ec 10             	sub    $0x10,%esp
  200a7a:	b8 03 00 00 00       	mov    $0x3,%eax
  200a7f:	bb 00 00 00 00       	mov    $0x0,%ebx
  200a84:	cd 80                	int    $0x80
  200a86:	89 c0                	mov    %eax,%eax
  200a88:	89 45 fc             	mov    %eax,-0x4(%ebp)
  200a8b:	8b 45 fc             	mov    -0x4(%ebp),%eax
  200a8e:	c9                   	leave  
  200a8f:	c3                   	ret    

00200a90 <reset_last_key>:
  200a90:	55                   	push   %ebp
  200a91:	89 e5                	mov    %esp,%ebp
  200a93:	b8 03 00 00 00       	mov    $0x3,%eax
  200a98:	bb 01 00 00 00       	mov    $0x1,%ebx
  200a9d:	cd 80                	int    $0x80
  200a9f:	5d                   	pop    %ebp
  200aa0:	c3                   	ret    

00200aa1 <change>:
  200aa1:	55                   	push   %ebp
  200aa2:	89 e5                	mov    %esp,%ebp
  200aa4:	53                   	push   %ebx
  200aa5:	83 c4 80             	add    $0xffffff80,%esp
  200aa8:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  200aaf:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  200ab6:	8b 45 08             	mov    0x8(%ebp),%eax
  200ab9:	89 45 ec             	mov    %eax,-0x14(%ebp)
  200abc:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  200ac0:	75 14                	jne    200ad6 <change+0x35>
  200ac2:	8b 45 0c             	mov    0xc(%ebp),%eax
  200ac5:	c6 00 30             	movb   $0x30,(%eax)
  200ac8:	8b 45 0c             	mov    0xc(%ebp),%eax
  200acb:	83 c0 01             	add    $0x1,%eax
  200ace:	c6 00 00             	movb   $0x0,(%eax)
  200ad1:	e9 a5 00 00 00       	jmp    200b7b <change+0xda>
  200ad6:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  200ada:	79 1d                	jns    200af9 <change+0x58>
  200adc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  200adf:	8d 50 01             	lea    0x1(%eax),%edx
  200ae2:	89 55 f4             	mov    %edx,-0xc(%ebp)
  200ae5:	89 c2                	mov    %eax,%edx
  200ae7:	8b 45 0c             	mov    0xc(%ebp),%eax
  200aea:	01 d0                	add    %edx,%eax
  200aec:	c6 00 2d             	movb   $0x2d,(%eax)
  200aef:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200af2:	f7 d8                	neg    %eax
  200af4:	89 45 f0             	mov    %eax,-0x10(%ebp)
  200af7:	eb 06                	jmp    200aff <change+0x5e>
  200af9:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200afc:	89 45 f0             	mov    %eax,-0x10(%ebp)
  200aff:	eb 40                	jmp    200b41 <change+0xa0>
  200b01:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  200b04:	8d 41 01             	lea    0x1(%ecx),%eax
  200b07:	89 45 f8             	mov    %eax,-0x8(%ebp)
  200b0a:	8b 5d f0             	mov    -0x10(%ebp),%ebx
  200b0d:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  200b12:	89 d8                	mov    %ebx,%eax
  200b14:	f7 e2                	mul    %edx
  200b16:	c1 ea 03             	shr    $0x3,%edx
  200b19:	89 d0                	mov    %edx,%eax
  200b1b:	c1 e0 02             	shl    $0x2,%eax
  200b1e:	01 d0                	add    %edx,%eax
  200b20:	01 c0                	add    %eax,%eax
  200b22:	29 c3                	sub    %eax,%ebx
  200b24:	89 da                	mov    %ebx,%edx
  200b26:	89 d0                	mov    %edx,%eax
  200b28:	83 c0 30             	add    $0x30,%eax
  200b2b:	88 44 0d 88          	mov    %al,-0x78(%ebp,%ecx,1)
  200b2f:	8b 45 f0             	mov    -0x10(%ebp),%eax
  200b32:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  200b37:	f7 e2                	mul    %edx
  200b39:	89 d0                	mov    %edx,%eax
  200b3b:	c1 e8 03             	shr    $0x3,%eax
  200b3e:	89 45 f0             	mov    %eax,-0x10(%ebp)
  200b41:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  200b45:	75 ba                	jne    200b01 <change+0x60>
  200b47:	eb 21                	jmp    200b6a <change+0xc9>
  200b49:	8b 45 f4             	mov    -0xc(%ebp),%eax
  200b4c:	8d 50 01             	lea    0x1(%eax),%edx
  200b4f:	89 55 f4             	mov    %edx,-0xc(%ebp)
  200b52:	89 c2                	mov    %eax,%edx
  200b54:	8b 45 0c             	mov    0xc(%ebp),%eax
  200b57:	01 c2                	add    %eax,%edx
  200b59:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
  200b5d:	8d 4d 88             	lea    -0x78(%ebp),%ecx
  200b60:	8b 45 f8             	mov    -0x8(%ebp),%eax
  200b63:	01 c8                	add    %ecx,%eax
  200b65:	0f b6 00             	movzbl (%eax),%eax
  200b68:	88 02                	mov    %al,(%edx)
  200b6a:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  200b6e:	75 d9                	jne    200b49 <change+0xa8>
  200b70:	8b 55 f4             	mov    -0xc(%ebp),%edx
  200b73:	8b 45 0c             	mov    0xc(%ebp),%eax
  200b76:	01 d0                	add    %edx,%eax
  200b78:	c6 00 00             	movb   $0x0,(%eax)
  200b7b:	83 ec 80             	sub    $0xffffff80,%esp
  200b7e:	5b                   	pop    %ebx
  200b7f:	5d                   	pop    %ebp
  200b80:	c3                   	ret    

00200b81 <change_x>:
  200b81:	55                   	push   %ebp
  200b82:	89 e5                	mov    %esp,%ebp
  200b84:	83 ec 70             	sub    $0x70,%esp
  200b87:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  200b8e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  200b95:	8b 45 08             	mov    0x8(%ebp),%eax
  200b98:	89 45 f4             	mov    %eax,-0xc(%ebp)
  200b9b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  200b9f:	75 11                	jne    200bb2 <change_x+0x31>
  200ba1:	8b 45 0c             	mov    0xc(%ebp),%eax
  200ba4:	c6 00 30             	movb   $0x30,(%eax)
  200ba7:	8b 45 0c             	mov    0xc(%ebp),%eax
  200baa:	83 c0 01             	add    $0x1,%eax
  200bad:	c6 00 00             	movb   $0x0,(%eax)
  200bb0:	eb 7e                	jmp    200c30 <change_x+0xaf>
  200bb2:	eb 42                	jmp    200bf6 <change_x+0x75>
  200bb4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  200bb7:	83 e0 0f             	and    $0xf,%eax
  200bba:	83 f8 09             	cmp    $0x9,%eax
  200bbd:	77 18                	ja     200bd7 <change_x+0x56>
  200bbf:	8b 45 fc             	mov    -0x4(%ebp),%eax
  200bc2:	8d 50 01             	lea    0x1(%eax),%edx
  200bc5:	89 55 fc             	mov    %edx,-0x4(%ebp)
  200bc8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  200bcb:	83 e2 0f             	and    $0xf,%edx
  200bce:	83 c2 30             	add    $0x30,%edx
  200bd1:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
  200bd5:	eb 16                	jmp    200bed <change_x+0x6c>
  200bd7:	8b 45 fc             	mov    -0x4(%ebp),%eax
  200bda:	8d 50 01             	lea    0x1(%eax),%edx
  200bdd:	89 55 fc             	mov    %edx,-0x4(%ebp)
  200be0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  200be3:	83 e2 0f             	and    $0xf,%edx
  200be6:	83 c2 37             	add    $0x37,%edx
  200be9:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
  200bed:	8b 45 f4             	mov    -0xc(%ebp),%eax
  200bf0:	c1 e8 04             	shr    $0x4,%eax
  200bf3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  200bf6:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  200bfa:	75 b8                	jne    200bb4 <change_x+0x33>
  200bfc:	eb 21                	jmp    200c1f <change_x+0x9e>
  200bfe:	8b 45 f8             	mov    -0x8(%ebp),%eax
  200c01:	8d 50 01             	lea    0x1(%eax),%edx
  200c04:	89 55 f8             	mov    %edx,-0x8(%ebp)
  200c07:	89 c2                	mov    %eax,%edx
  200c09:	8b 45 0c             	mov    0xc(%ebp),%eax
  200c0c:	01 c2                	add    %eax,%edx
  200c0e:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
  200c12:	8d 4d 90             	lea    -0x70(%ebp),%ecx
  200c15:	8b 45 fc             	mov    -0x4(%ebp),%eax
  200c18:	01 c8                	add    %ecx,%eax
  200c1a:	0f b6 00             	movzbl (%eax),%eax
  200c1d:	88 02                	mov    %al,(%edx)
  200c1f:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  200c23:	75 d9                	jne    200bfe <change_x+0x7d>
  200c25:	8b 55 f8             	mov    -0x8(%ebp),%edx
  200c28:	8b 45 0c             	mov    0xc(%ebp),%eax
  200c2b:	01 d0                	add    %edx,%eax
  200c2d:	c6 00 00             	movb   $0x0,(%eax)
  200c30:	c9                   	leave  
  200c31:	c3                   	ret    

00200c32 <v_fprintf>:
  200c32:	55                   	push   %ebp
  200c33:	89 e5                	mov    %esp,%ebp
  200c35:	81 ec 88 00 00 00    	sub    $0x88,%esp
  200c3b:	8b 45 0c             	mov    0xc(%ebp),%eax
  200c3e:	89 45 ec             	mov    %eax,-0x14(%ebp)
  200c41:	8b 45 10             	mov    0x10(%ebp),%eax
  200c44:	89 45 f4             	mov    %eax,-0xc(%ebp)
  200c47:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  200c4e:	e9 61 01 00 00       	jmp    200db4 <v_fprintf+0x182>
  200c53:	8b 55 f0             	mov    -0x10(%ebp),%edx
  200c56:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200c59:	01 d0                	add    %edx,%eax
  200c5b:	0f b6 00             	movzbl (%eax),%eax
  200c5e:	3c 25                	cmp    $0x25,%al
  200c60:	74 27                	je     200c89 <v_fprintf+0x57>
  200c62:	8b 55 f0             	mov    -0x10(%ebp),%edx
  200c65:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200c68:	01 d0                	add    %edx,%eax
  200c6a:	0f b6 00             	movzbl (%eax),%eax
  200c6d:	88 45 eb             	mov    %al,-0x15(%ebp)
  200c70:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
  200c74:	83 ec 0c             	sub    $0xc,%esp
  200c77:	50                   	push   %eax
  200c78:	8b 45 08             	mov    0x8(%ebp),%eax
  200c7b:	ff d0                	call   *%eax
  200c7d:	83 c4 10             	add    $0x10,%esp
  200c80:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  200c84:	e9 2b 01 00 00       	jmp    200db4 <v_fprintf+0x182>
  200c89:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  200c8d:	8b 55 f0             	mov    -0x10(%ebp),%edx
  200c90:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200c93:	01 d0                	add    %edx,%eax
  200c95:	0f b6 00             	movzbl (%eax),%eax
  200c98:	3c 25                	cmp    $0x25,%al
  200c9a:	75 16                	jne    200cb2 <v_fprintf+0x80>
  200c9c:	83 ec 0c             	sub    $0xc,%esp
  200c9f:	6a 25                	push   $0x25
  200ca1:	8b 45 08             	mov    0x8(%ebp),%eax
  200ca4:	ff d0                	call   *%eax
  200ca6:	83 c4 10             	add    $0x10,%esp
  200ca9:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  200cad:	e9 02 01 00 00       	jmp    200db4 <v_fprintf+0x182>
  200cb2:	8b 55 f0             	mov    -0x10(%ebp),%edx
  200cb5:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200cb8:	01 d0                	add    %edx,%eax
  200cba:	0f b6 00             	movzbl (%eax),%eax
  200cbd:	3c 63                	cmp    $0x63,%al
  200cbf:	75 26                	jne    200ce7 <v_fprintf+0xb5>
  200cc1:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  200cc5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  200cc8:	0f b6 00             	movzbl (%eax),%eax
  200ccb:	88 45 eb             	mov    %al,-0x15(%ebp)
  200cce:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
  200cd2:	83 ec 0c             	sub    $0xc,%esp
  200cd5:	50                   	push   %eax
  200cd6:	8b 45 08             	mov    0x8(%ebp),%eax
  200cd9:	ff d0                	call   *%eax
  200cdb:	83 c4 10             	add    $0x10,%esp
  200cde:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  200ce2:	e9 cd 00 00 00       	jmp    200db4 <v_fprintf+0x182>
  200ce7:	8b 55 f0             	mov    -0x10(%ebp),%edx
  200cea:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200ced:	01 d0                	add    %edx,%eax
  200cef:	0f b6 00             	movzbl (%eax),%eax
  200cf2:	3c 64                	cmp    $0x64,%al
  200cf4:	75 36                	jne    200d2c <v_fprintf+0xfa>
  200cf6:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  200cfa:	8b 45 f4             	mov    -0xc(%ebp),%eax
  200cfd:	8b 00                	mov    (%eax),%eax
  200cff:	83 ec 08             	sub    $0x8,%esp
  200d02:	8d 55 87             	lea    -0x79(%ebp),%edx
  200d05:	52                   	push   %edx
  200d06:	50                   	push   %eax
  200d07:	e8 95 fd ff ff       	call   200aa1 <change>
  200d0c:	83 c4 10             	add    $0x10,%esp
  200d0f:	83 ec 04             	sub    $0x4,%esp
  200d12:	6a 00                	push   $0x0
  200d14:	8d 45 87             	lea    -0x79(%ebp),%eax
  200d17:	50                   	push   %eax
  200d18:	ff 75 08             	pushl  0x8(%ebp)
  200d1b:	e8 12 ff ff ff       	call   200c32 <v_fprintf>
  200d20:	83 c4 10             	add    $0x10,%esp
  200d23:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  200d27:	e9 88 00 00 00       	jmp    200db4 <v_fprintf+0x182>
  200d2c:	8b 55 f0             	mov    -0x10(%ebp),%edx
  200d2f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200d32:	01 d0                	add    %edx,%eax
  200d34:	0f b6 00             	movzbl (%eax),%eax
  200d37:	3c 78                	cmp    $0x78,%al
  200d39:	75 33                	jne    200d6e <v_fprintf+0x13c>
  200d3b:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  200d3f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  200d42:	8b 00                	mov    (%eax),%eax
  200d44:	83 ec 08             	sub    $0x8,%esp
  200d47:	8d 55 87             	lea    -0x79(%ebp),%edx
  200d4a:	52                   	push   %edx
  200d4b:	50                   	push   %eax
  200d4c:	e8 30 fe ff ff       	call   200b81 <change_x>
  200d51:	83 c4 10             	add    $0x10,%esp
  200d54:	83 ec 04             	sub    $0x4,%esp
  200d57:	6a 00                	push   $0x0
  200d59:	8d 45 87             	lea    -0x79(%ebp),%eax
  200d5c:	50                   	push   %eax
  200d5d:	ff 75 08             	pushl  0x8(%ebp)
  200d60:	e8 cd fe ff ff       	call   200c32 <v_fprintf>
  200d65:	83 c4 10             	add    $0x10,%esp
  200d68:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  200d6c:	eb 46                	jmp    200db4 <v_fprintf+0x182>
  200d6e:	8b 55 f0             	mov    -0x10(%ebp),%edx
  200d71:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200d74:	01 d0                	add    %edx,%eax
  200d76:	0f b6 00             	movzbl (%eax),%eax
  200d79:	3c 73                	cmp    $0x73,%al
  200d7b:	75 20                	jne    200d9d <v_fprintf+0x16b>
  200d7d:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  200d81:	8b 45 f4             	mov    -0xc(%ebp),%eax
  200d84:	8b 00                	mov    (%eax),%eax
  200d86:	83 ec 04             	sub    $0x4,%esp
  200d89:	6a 00                	push   $0x0
  200d8b:	50                   	push   %eax
  200d8c:	ff 75 08             	pushl  0x8(%ebp)
  200d8f:	e8 9e fe ff ff       	call   200c32 <v_fprintf>
  200d94:	83 c4 10             	add    $0x10,%esp
  200d97:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  200d9b:	eb 17                	jmp    200db4 <v_fprintf+0x182>
  200d9d:	83 ec 04             	sub    $0x4,%esp
  200da0:	6a 00                	push   $0x0
  200da2:	68 0c 0f 20 00       	push   $0x200f0c
  200da7:	ff 75 08             	pushl  0x8(%ebp)
  200daa:	e8 83 fe ff ff       	call   200c32 <v_fprintf>
  200daf:	83 c4 10             	add    $0x10,%esp
  200db2:	eb 13                	jmp    200dc7 <v_fprintf+0x195>
  200db4:	8b 55 f0             	mov    -0x10(%ebp),%edx
  200db7:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200dba:	01 d0                	add    %edx,%eax
  200dbc:	0f b6 00             	movzbl (%eax),%eax
  200dbf:	84 c0                	test   %al,%al
  200dc1:	0f 85 8c fe ff ff    	jne    200c53 <v_fprintf+0x21>
  200dc7:	c9                   	leave  
  200dc8:	c3                   	ret    

00200dc9 <put_buffer>:
  200dc9:	55                   	push   %ebp
  200dca:	89 e5                	mov    %esp,%ebp
  200dcc:	83 ec 04             	sub    $0x4,%esp
  200dcf:	8b 45 08             	mov    0x8(%ebp),%eax
  200dd2:	88 45 fc             	mov    %al,-0x4(%ebp)
  200dd5:	a1 c0 4d 21 00       	mov    0x214dc0,%eax
  200dda:	8d 50 01             	lea    0x1(%eax),%edx
  200ddd:	89 15 c0 4d 21 00    	mov    %edx,0x214dc0
  200de3:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
  200de7:	88 90 00 4e 21 00    	mov    %dl,0x214e00(%eax)
  200ded:	c9                   	leave  
  200dee:	c3                   	ret    

00200def <print>:
  200def:	55                   	push   %ebp
  200df0:	89 e5                	mov    %esp,%ebp
  200df2:	53                   	push   %ebx
  200df3:	83 ec 14             	sub    $0x14,%esp
  200df6:	8d 45 0c             	lea    0xc(%ebp),%eax
  200df9:	89 45 f4             	mov    %eax,-0xc(%ebp)
  200dfc:	c7 05 c0 4d 21 00 00 	movl   $0x0,0x214dc0
  200e03:	00 00 00 
  200e06:	8b 45 08             	mov    0x8(%ebp),%eax
  200e09:	83 ec 04             	sub    $0x4,%esp
  200e0c:	ff 75 f4             	pushl  -0xc(%ebp)
  200e0f:	50                   	push   %eax
  200e10:	68 c9 0d 20 00       	push   $0x200dc9
  200e15:	e8 18 fe ff ff       	call   200c32 <v_fprintf>
  200e1a:	83 c4 10             	add    $0x10,%esp
  200e1d:	a1 c0 4d 21 00       	mov    0x214dc0,%eax
  200e22:	c6 80 00 4e 21 00 00 	movb   $0x0,0x214e00(%eax)
  200e29:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
  200e30:	ba 00 4e 21 00       	mov    $0x214e00,%edx
  200e35:	8b 45 f0             	mov    -0x10(%ebp),%eax
  200e38:	bb 01 00 00 00       	mov    $0x1,%ebx
  200e3d:	89 d1                	mov    %edx,%ecx
  200e3f:	cd 80                	int    $0x80
  200e41:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  200e44:	c9                   	leave  
  200e45:	c3                   	ret    

00200e46 <my_memcpy>:
  200e46:	55                   	push   %ebp
  200e47:	89 e5                	mov    %esp,%ebp
  200e49:	57                   	push   %edi
  200e4a:	56                   	push   %esi
  200e4b:	53                   	push   %ebx
  200e4c:	8b 45 10             	mov    0x10(%ebp),%eax
  200e4f:	8b 55 0c             	mov    0xc(%ebp),%edx
  200e52:	8b 5d 08             	mov    0x8(%ebp),%ebx
  200e55:	89 c1                	mov    %eax,%ecx
  200e57:	89 d6                	mov    %edx,%esi
  200e59:	89 df                	mov    %ebx,%edi
  200e5b:	fc                   	cld    
  200e5c:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  200e5e:	5b                   	pop    %ebx
  200e5f:	5e                   	pop    %esi
  200e60:	5f                   	pop    %edi
  200e61:	5d                   	pop    %ebp
  200e62:	c3                   	ret    

00200e63 <my_memset>:
  200e63:	55                   	push   %ebp
  200e64:	89 e5                	mov    %esp,%ebp
  200e66:	57                   	push   %edi
  200e67:	53                   	push   %ebx
  200e68:	8b 55 10             	mov    0x10(%ebp),%edx
  200e6b:	8b 45 0c             	mov    0xc(%ebp),%eax
  200e6e:	8b 5d 08             	mov    0x8(%ebp),%ebx
  200e71:	89 d1                	mov    %edx,%ecx
  200e73:	89 df                	mov    %ebx,%edi
  200e75:	fc                   	cld    
  200e76:	f3 aa                	rep stos %al,%es:(%edi)
  200e78:	5b                   	pop    %ebx
  200e79:	5f                   	pop    %edi
  200e7a:	5d                   	pop    %ebp
  200e7b:	c3                   	ret    

00200e7c <srand>:
  200e7c:	55                   	push   %ebp
  200e7d:	89 e5                	mov    %esp,%ebp
  200e7f:	8b 45 08             	mov    0x8(%ebp),%eax
  200e82:	a3 40 1e 21 00       	mov    %eax,0x211e40
  200e87:	5d                   	pop    %ebp
  200e88:	c3                   	ret    

00200e89 <rand>:
  200e89:	55                   	push   %ebp
  200e8a:	89 e5                	mov    %esp,%ebp
  200e8c:	a1 40 1e 21 00       	mov    0x211e40,%eax
  200e91:	69 c0 35 4e 5a 01    	imul   $0x15a4e35,%eax,%eax
  200e97:	83 c0 01             	add    $0x1,%eax
  200e9a:	a3 40 1e 21 00       	mov    %eax,0x211e40
  200e9f:	a1 40 1e 21 00       	mov    0x211e40,%eax
  200ea4:	c1 f8 10             	sar    $0x10,%eax
  200ea7:	25 ff 7f 00 00       	and    $0x7fff,%eax
  200eac:	5d                   	pop    %ebp
  200ead:	c3                   	ret    

00200eae <getpid>:
  200eae:	55                   	push   %ebp
  200eaf:	89 e5                	mov    %esp,%ebp
  200eb1:	83 ec 10             	sub    $0x10,%esp
  200eb4:	b8 06 00 00 00       	mov    $0x6,%eax
  200eb9:	cd 80                	int    $0x80
  200ebb:	89 c0                	mov    %eax,%eax
  200ebd:	89 45 fc             	mov    %eax,-0x4(%ebp)
  200ec0:	8b 45 fc             	mov    -0x4(%ebp),%eax
  200ec3:	c9                   	leave  
  200ec4:	c3                   	ret    
