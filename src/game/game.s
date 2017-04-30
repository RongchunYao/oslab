
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
  200017:	e8 81 0b 00 00       	call   200b9d <change>
  20001c:	83 c4 10             	add    $0x10,%esp
  20001f:	a1 ac 4d 21 00       	mov    0x214dac,%eax
  200024:	83 f8 0a             	cmp    $0xa,%eax
  200027:	7f 18                	jg     200041 <draw_mark+0x41>
  200029:	6a 2f                	push   $0x2f
  20002b:	68 38 01 00 00       	push   $0x138
  200030:	6a 00                	push   $0x0
  200032:	68 90 1e 21 00       	push   $0x211e90
  200037:	e8 be 08 00 00       	call   2008fa <draw_string>
  20003c:	83 c4 10             	add    $0x10,%esp
  20003f:	eb 38                	jmp    200079 <draw_mark+0x79>
  200041:	a1 ac 4d 21 00       	mov    0x214dac,%eax
  200046:	83 f8 64             	cmp    $0x64,%eax
  200049:	7f 18                	jg     200063 <draw_mark+0x63>
  20004b:	6a 2f                	push   $0x2f
  20004d:	68 30 01 00 00       	push   $0x130
  200052:	6a 00                	push   $0x0
  200054:	68 90 1e 21 00       	push   $0x211e90
  200059:	e8 9c 08 00 00       	call   2008fa <draw_string>
  20005e:	83 c4 10             	add    $0x10,%esp
  200061:	eb 16                	jmp    200079 <draw_mark+0x79>
  200063:	6a 2f                	push   $0x2f
  200065:	68 28 01 00 00       	push   $0x128
  20006a:	6a 00                	push   $0x0
  20006c:	68 90 1e 21 00       	push   $0x211e90
  200071:	e8 84 08 00 00       	call   2008fa <draw_string>
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
  2000cc:	e8 14 09 00 00       	call   2009e5 <draw_snake>
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
  2000f9:	e8 9c 08 00 00       	call   20099a <draw_food>
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
  20039a:	e8 e6 0b 00 00       	call   200f85 <rand>
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
  2003d5:	e8 ab 0b 00 00       	call   200f85 <rand>
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
  200421:	e8 5f 0b 00 00       	call   200f85 <rand>
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
  2004d5:	e8 56 06 00 00       	call   200b30 <display_all>
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
  200563:	e8 db 05 00 00       	call   200b43 <get_time>
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
  20058d:	e8 e6 09 00 00       	call   200f78 <srand>
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
  2005ea:	e8 9d 05 00 00       	call   200b8c <reset_last_key>
  2005ef:	c9                   	leave  
  2005f0:	c3                   	ret    

002005f1 <game_loop>:
  2005f1:	55                   	push   %ebp
  2005f2:	89 e5                	mov    %esp,%ebp
  2005f4:	83 ec 18             	sub    $0x18,%esp
  2005f7:	e8 ae 09 00 00       	call   200faa <getpid>
  2005fc:	83 ec 08             	sub    $0x8,%esp
  2005ff:	50                   	push   %eax
  200600:	68 c4 0f 20 00       	push   $0x200fc4
  200605:	e8 e1 08 00 00       	call   200eeb <print>
  20060a:	83 c4 10             	add    $0x10,%esp
  20060d:	83 ec 04             	sub    $0x4,%esp
  200610:	68 40 e2 01 00       	push   $0x1e240
  200615:	68 40 e2 01 00       	push   $0x1e240
  20061a:	68 d4 0f 20 00       	push   $0x200fd4
  20061f:	e8 c7 08 00 00       	call   200eeb <print>
  200624:	83 c4 10             	add    $0x10,%esp
  200627:	e8 27 ff ff ff       	call   200553 <game_init>
  20062c:	e8 3f 05 00 00       	call   200b70 <last_key_code>
  200631:	a3 00 24 20 00       	mov    %eax,0x202400
  200636:	e8 08 05 00 00       	call   200b43 <get_time>
  20063b:	89 c1                	mov    %eax,%ecx
  20063d:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
  200642:	89 c8                	mov    %ecx,%eax
  200644:	f7 ea                	imul   %edx
  200646:	c1 fa 06             	sar    $0x6,%edx
  200649:	89 c8                	mov    %ecx,%eax
  20064b:	c1 f8 1f             	sar    $0x1f,%eax
  20064e:	29 c2                	sub    %eax,%edx
  200650:	89 d0                	mov    %edx,%eax
  200652:	69 c0 c8 00 00 00    	imul   $0xc8,%eax,%eax
  200658:	29 c1                	sub    %eax,%ecx
  20065a:	89 c8                	mov    %ecx,%eax
  20065c:	85 c0                	test   %eax,%eax
  20065e:	75 4c                	jne    2006ac <game_loop+0xbb>
  200660:	e8 ed 00 00 00       	call   200752 <init>
  200665:	e8 bf fa ff ff       	call   200129 <do_move>
  20066a:	a3 b0 4d 21 00       	mov    %eax,0x214db0
  20066f:	a1 b0 4d 21 00       	mov    0x214db0,%eax
  200674:	83 f8 01             	cmp    $0x1,%eax
  200677:	74 0c                	je     200685 <game_loop+0x94>
  200679:	90                   	nop
  20067a:	a1 b0 4d 21 00       	mov    0x214db0,%eax
  20067f:	85 c0                	test   %eax,%eax
  200681:	75 60                	jne    2006e3 <game_loop+0xf2>
  200683:	eb 2c                	jmp    2006b1 <game_loop+0xc0>
  200685:	6a 04                	push   $0x4
  200687:	6a 00                	push   $0x0
  200689:	6a 00                	push   $0x0
  20068b:	68 08 10 20 00       	push   $0x201008
  200690:	e8 65 02 00 00       	call   2008fa <draw_string>
  200695:	83 c4 10             	add    $0x10,%esp
  200698:	e8 63 f9 ff ff       	call   200000 <draw_mark>
  20069d:	e8 d9 f9 ff ff       	call   20007b <draw_whole_snake>
  2006a2:	e8 89 04 00 00       	call   200b30 <display_all>
  2006a7:	e8 b3 04 00 00       	call   200b5f <time_pop>
  2006ac:	e9 7b ff ff ff       	jmp    20062c <game_loop+0x3b>
  2006b1:	e8 9c 00 00 00       	call   200752 <init>
  2006b6:	6a 05                	push   $0x5
  2006b8:	6a 50                	push   $0x50
  2006ba:	6a 64                	push   $0x64
  2006bc:	68 14 10 20 00       	push   $0x201014
  2006c1:	e8 34 02 00 00       	call   2008fa <draw_string>
  2006c6:	83 c4 10             	add    $0x10,%esp
  2006c9:	6a 04                	push   $0x4
  2006cb:	6a 64                	push   $0x64
  2006cd:	6a 50                	push   $0x50
  2006cf:	68 2e 10 20 00       	push   $0x20102e
  2006d4:	e8 71 02 00 00       	call   20094a <draw_big_string>
  2006d9:	83 c4 10             	add    $0x10,%esp
  2006dc:	e8 4f 04 00 00       	call   200b30 <display_all>
  2006e1:	eb 30                	jmp    200713 <game_loop+0x122>
  2006e3:	e8 6a 00 00 00       	call   200752 <init>
  2006e8:	6a 05                	push   $0x5
  2006ea:	6a 50                	push   $0x50
  2006ec:	6a 64                	push   $0x64
  2006ee:	68 14 10 20 00       	push   $0x201014
  2006f3:	e8 02 02 00 00       	call   2008fa <draw_string>
  2006f8:	83 c4 10             	add    $0x10,%esp
  2006fb:	6a 04                	push   $0x4
  2006fd:	6a 78                	push   $0x78
  2006ff:	6a 50                	push   $0x50
  200701:	68 38 10 20 00       	push   $0x201038
  200706:	e8 3f 02 00 00       	call   20094a <draw_big_string>
  20070b:	83 c4 10             	add    $0x10,%esp
  20070e:	e8 1d 04 00 00       	call   200b30 <display_all>
  200713:	e8 74 04 00 00       	call   200b8c <reset_last_key>
  200718:	e8 53 04 00 00       	call   200b70 <last_key_code>
  20071d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  200720:	83 7d f4 11          	cmpl   $0x11,-0xc(%ebp)
  200724:	75 02                	jne    200728 <game_loop+0x137>
  200726:	eb 02                	jmp    20072a <game_loop+0x139>
  200728:	eb ee                	jmp    200718 <game_loop+0x127>
  20072a:	e9 c8 fe ff ff       	jmp    2005f7 <game_loop+0x6>

0020072f <draw_pixel>:
  20072f:	55                   	push   %ebp
  200730:	89 e5                	mov    %esp,%ebp
  200732:	8b 45 08             	mov    0x8(%ebp),%eax
  200735:	c1 e0 08             	shl    $0x8,%eax
  200738:	89 c2                	mov    %eax,%edx
  20073a:	8b 45 08             	mov    0x8(%ebp),%eax
  20073d:	c1 e0 06             	shl    $0x6,%eax
  200740:	01 c2                	add    %eax,%edx
  200742:	8b 45 0c             	mov    0xc(%ebp),%eax
  200745:	01 d0                	add    %edx,%eax
  200747:	8b 55 10             	mov    0x10(%ebp),%edx
  20074a:	88 90 40 24 20 00    	mov    %dl,0x202440(%eax)
  200750:	5d                   	pop    %ebp
  200751:	c3                   	ret    

00200752 <init>:
  200752:	55                   	push   %ebp
  200753:	89 e5                	mov    %esp,%ebp
  200755:	83 ec 08             	sub    $0x8,%esp
  200758:	83 ec 04             	sub    $0x4,%esp
  20075b:	68 00 fa 00 00       	push   $0xfa00
  200760:	6a 00                	push   $0x0
  200762:	68 40 24 20 00       	push   $0x202440
  200767:	e8 f3 07 00 00       	call   200f5f <my_memset>
  20076c:	83 c4 10             	add    $0x10,%esp
  20076f:	c9                   	leave  
  200770:	c3                   	ret    

00200771 <draw_character>:
  200771:	55                   	push   %ebp
  200772:	89 e5                	mov    %esp,%ebp
  200774:	83 ec 14             	sub    $0x14,%esp
  200777:	8b 45 08             	mov    0x8(%ebp),%eax
  20077a:	88 45 ec             	mov    %al,-0x14(%ebp)
  20077d:	0f be 45 ec          	movsbl -0x14(%ebp),%eax
  200781:	c1 e0 03             	shl    $0x3,%eax
  200784:	05 00 20 20 00       	add    $0x202000,%eax
  200789:	89 45 f4             	mov    %eax,-0xc(%ebp)
  20078c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  200793:	eb 52                	jmp    2007e7 <draw_character+0x76>
  200795:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  20079c:	eb 3f                	jmp    2007dd <draw_character+0x6c>
  20079e:	8b 55 fc             	mov    -0x4(%ebp),%edx
  2007a1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  2007a4:	01 d0                	add    %edx,%eax
  2007a6:	0f b6 00             	movzbl (%eax),%eax
  2007a9:	0f be d0             	movsbl %al,%edx
  2007ac:	8b 45 f8             	mov    -0x8(%ebp),%eax
  2007af:	89 c1                	mov    %eax,%ecx
  2007b1:	d3 fa                	sar    %cl,%edx
  2007b3:	89 d0                	mov    %edx,%eax
  2007b5:	83 e0 01             	and    $0x1,%eax
  2007b8:	85 c0                	test   %eax,%eax
  2007ba:	74 1d                	je     2007d9 <draw_character+0x68>
  2007bc:	8b 55 10             	mov    0x10(%ebp),%edx
  2007bf:	8b 45 f8             	mov    -0x8(%ebp),%eax
  2007c2:	01 c2                	add    %eax,%edx
  2007c4:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  2007c7:	8b 45 fc             	mov    -0x4(%ebp),%eax
  2007ca:	01 c8                	add    %ecx,%eax
  2007cc:	ff 75 14             	pushl  0x14(%ebp)
  2007cf:	52                   	push   %edx
  2007d0:	50                   	push   %eax
  2007d1:	e8 59 ff ff ff       	call   20072f <draw_pixel>
  2007d6:	83 c4 0c             	add    $0xc,%esp
  2007d9:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  2007dd:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  2007e1:	7e bb                	jle    20079e <draw_character+0x2d>
  2007e3:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  2007e7:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
  2007eb:	7e a8                	jle    200795 <draw_character+0x24>
  2007ed:	c9                   	leave  
  2007ee:	c3                   	ret    

002007ef <draw_character_2>:
  2007ef:	55                   	push   %ebp
  2007f0:	89 e5                	mov    %esp,%ebp
  2007f2:	83 ec 14             	sub    $0x14,%esp
  2007f5:	8b 45 08             	mov    0x8(%ebp),%eax
  2007f8:	88 45 ec             	mov    %al,-0x14(%ebp)
  2007fb:	0f be 45 ec          	movsbl -0x14(%ebp),%eax
  2007ff:	c1 e0 03             	shl    $0x3,%eax
  200802:	05 00 20 20 00       	add    $0x202000,%eax
  200807:	89 45 f4             	mov    %eax,-0xc(%ebp)
  20080a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  200811:	e9 d8 00 00 00       	jmp    2008ee <draw_character_2+0xff>
  200816:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  20081d:	e9 be 00 00 00       	jmp    2008e0 <draw_character_2+0xf1>
  200822:	8b 55 fc             	mov    -0x4(%ebp),%edx
  200825:	8b 45 f4             	mov    -0xc(%ebp),%eax
  200828:	01 d0                	add    %edx,%eax
  20082a:	0f b6 00             	movzbl (%eax),%eax
  20082d:	0f be d0             	movsbl %al,%edx
  200830:	8b 45 f8             	mov    -0x8(%ebp),%eax
  200833:	89 c1                	mov    %eax,%ecx
  200835:	d3 fa                	sar    %cl,%edx
  200837:	89 d0                	mov    %edx,%eax
  200839:	83 e0 01             	and    $0x1,%eax
  20083c:	85 c0                	test   %eax,%eax
  20083e:	0f 84 98 00 00 00    	je     2008dc <draw_character_2+0xed>
  200844:	8b 45 f8             	mov    -0x8(%ebp),%eax
  200847:	8d 14 00             	lea    (%eax,%eax,1),%edx
  20084a:	8b 45 10             	mov    0x10(%ebp),%eax
  20084d:	01 c2                	add    %eax,%edx
  20084f:	8b 45 fc             	mov    -0x4(%ebp),%eax
  200852:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
  200855:	8b 45 0c             	mov    0xc(%ebp),%eax
  200858:	01 c8                	add    %ecx,%eax
  20085a:	ff 75 14             	pushl  0x14(%ebp)
  20085d:	52                   	push   %edx
  20085e:	50                   	push   %eax
  20085f:	e8 cb fe ff ff       	call   20072f <draw_pixel>
  200864:	83 c4 0c             	add    $0xc,%esp
  200867:	8b 45 f8             	mov    -0x8(%ebp),%eax
  20086a:	8d 14 00             	lea    (%eax,%eax,1),%edx
  20086d:	8b 45 10             	mov    0x10(%ebp),%eax
  200870:	01 c2                	add    %eax,%edx
  200872:	8b 45 fc             	mov    -0x4(%ebp),%eax
  200875:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
  200878:	8b 45 0c             	mov    0xc(%ebp),%eax
  20087b:	01 c8                	add    %ecx,%eax
  20087d:	83 c0 01             	add    $0x1,%eax
  200880:	ff 75 14             	pushl  0x14(%ebp)
  200883:	52                   	push   %edx
  200884:	50                   	push   %eax
  200885:	e8 a5 fe ff ff       	call   20072f <draw_pixel>
  20088a:	83 c4 0c             	add    $0xc,%esp
  20088d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  200890:	8d 14 00             	lea    (%eax,%eax,1),%edx
  200893:	8b 45 10             	mov    0x10(%ebp),%eax
  200896:	01 d0                	add    %edx,%eax
  200898:	8d 50 01             	lea    0x1(%eax),%edx
  20089b:	8b 45 fc             	mov    -0x4(%ebp),%eax
  20089e:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
  2008a1:	8b 45 0c             	mov    0xc(%ebp),%eax
  2008a4:	01 c8                	add    %ecx,%eax
  2008a6:	83 c0 01             	add    $0x1,%eax
  2008a9:	ff 75 14             	pushl  0x14(%ebp)
  2008ac:	52                   	push   %edx
  2008ad:	50                   	push   %eax
  2008ae:	e8 7c fe ff ff       	call   20072f <draw_pixel>
  2008b3:	83 c4 0c             	add    $0xc,%esp
  2008b6:	8b 45 f8             	mov    -0x8(%ebp),%eax
  2008b9:	8d 14 00             	lea    (%eax,%eax,1),%edx
  2008bc:	8b 45 10             	mov    0x10(%ebp),%eax
  2008bf:	01 d0                	add    %edx,%eax
  2008c1:	8d 50 01             	lea    0x1(%eax),%edx
  2008c4:	8b 45 fc             	mov    -0x4(%ebp),%eax
  2008c7:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
  2008ca:	8b 45 0c             	mov    0xc(%ebp),%eax
  2008cd:	01 c8                	add    %ecx,%eax
  2008cf:	ff 75 14             	pushl  0x14(%ebp)
  2008d2:	52                   	push   %edx
  2008d3:	50                   	push   %eax
  2008d4:	e8 56 fe ff ff       	call   20072f <draw_pixel>
  2008d9:	83 c4 0c             	add    $0xc,%esp
  2008dc:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  2008e0:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  2008e4:	0f 8e 38 ff ff ff    	jle    200822 <draw_character_2+0x33>
  2008ea:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  2008ee:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
  2008f2:	0f 8e 1e ff ff ff    	jle    200816 <draw_character_2+0x27>
  2008f8:	c9                   	leave  
  2008f9:	c3                   	ret    

002008fa <draw_string>:
  2008fa:	55                   	push   %ebp
  2008fb:	89 e5                	mov    %esp,%ebp
  2008fd:	eb 3f                	jmp    20093e <draw_string+0x44>
  2008ff:	8b 45 08             	mov    0x8(%ebp),%eax
  200902:	8d 50 01             	lea    0x1(%eax),%edx
  200905:	89 55 08             	mov    %edx,0x8(%ebp)
  200908:	0f b6 00             	movzbl (%eax),%eax
  20090b:	0f be c0             	movsbl %al,%eax
  20090e:	ff 75 14             	pushl  0x14(%ebp)
  200911:	ff 75 10             	pushl  0x10(%ebp)
  200914:	ff 75 0c             	pushl  0xc(%ebp)
  200917:	50                   	push   %eax
  200918:	e8 54 fe ff ff       	call   200771 <draw_character>
  20091d:	83 c4 10             	add    $0x10,%esp
  200920:	8b 45 10             	mov    0x10(%ebp),%eax
  200923:	83 c0 08             	add    $0x8,%eax
  200926:	3d 3f 01 00 00       	cmp    $0x13f,%eax
  20092b:	7e 0d                	jle    20093a <draw_string+0x40>
  20092d:	83 45 0c 08          	addl   $0x8,0xc(%ebp)
  200931:	c7 45 10 00 00 00 00 	movl   $0x0,0x10(%ebp)
  200938:	eb 04                	jmp    20093e <draw_string+0x44>
  20093a:	83 45 10 08          	addl   $0x8,0x10(%ebp)
  20093e:	8b 45 08             	mov    0x8(%ebp),%eax
  200941:	0f b6 00             	movzbl (%eax),%eax
  200944:	84 c0                	test   %al,%al
  200946:	75 b7                	jne    2008ff <draw_string+0x5>
  200948:	c9                   	leave  
  200949:	c3                   	ret    

0020094a <draw_big_string>:
  20094a:	55                   	push   %ebp
  20094b:	89 e5                	mov    %esp,%ebp
  20094d:	eb 3f                	jmp    20098e <draw_big_string+0x44>
  20094f:	8b 45 08             	mov    0x8(%ebp),%eax
  200952:	8d 50 01             	lea    0x1(%eax),%edx
  200955:	89 55 08             	mov    %edx,0x8(%ebp)
  200958:	0f b6 00             	movzbl (%eax),%eax
  20095b:	0f be c0             	movsbl %al,%eax
  20095e:	ff 75 14             	pushl  0x14(%ebp)
  200961:	ff 75 10             	pushl  0x10(%ebp)
  200964:	ff 75 0c             	pushl  0xc(%ebp)
  200967:	50                   	push   %eax
  200968:	e8 82 fe ff ff       	call   2007ef <draw_character_2>
  20096d:	83 c4 10             	add    $0x10,%esp
  200970:	8b 45 10             	mov    0x10(%ebp),%eax
  200973:	83 c0 10             	add    $0x10,%eax
  200976:	3d 3f 01 00 00       	cmp    $0x13f,%eax
  20097b:	7e 0d                	jle    20098a <draw_big_string+0x40>
  20097d:	83 45 0c 10          	addl   $0x10,0xc(%ebp)
  200981:	c7 45 10 00 00 00 00 	movl   $0x0,0x10(%ebp)
  200988:	eb 04                	jmp    20098e <draw_big_string+0x44>
  20098a:	83 45 10 10          	addl   $0x10,0x10(%ebp)
  20098e:	8b 45 08             	mov    0x8(%ebp),%eax
  200991:	0f b6 00             	movzbl (%eax),%eax
  200994:	84 c0                	test   %al,%al
  200996:	75 b7                	jne    20094f <draw_big_string+0x5>
  200998:	c9                   	leave  
  200999:	c3                   	ret    

0020099a <draw_food>:
  20099a:	55                   	push   %ebp
  20099b:	89 e5                	mov    %esp,%ebp
  20099d:	83 ec 10             	sub    $0x10,%esp
  2009a0:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  2009a7:	eb 34                	jmp    2009dd <draw_food+0x43>
  2009a9:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  2009b0:	eb 21                	jmp    2009d3 <draw_food+0x39>
  2009b2:	8b 55 0c             	mov    0xc(%ebp),%edx
  2009b5:	8b 45 f8             	mov    -0x8(%ebp),%eax
  2009b8:	01 c2                	add    %eax,%edx
  2009ba:	8b 4d 08             	mov    0x8(%ebp),%ecx
  2009bd:	8b 45 fc             	mov    -0x4(%ebp),%eax
  2009c0:	01 c8                	add    %ecx,%eax
  2009c2:	ff 75 10             	pushl  0x10(%ebp)
  2009c5:	52                   	push   %edx
  2009c6:	50                   	push   %eax
  2009c7:	e8 63 fd ff ff       	call   20072f <draw_pixel>
  2009cc:	83 c4 0c             	add    $0xc,%esp
  2009cf:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  2009d3:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  2009d7:	7e d9                	jle    2009b2 <draw_food+0x18>
  2009d9:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  2009dd:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
  2009e1:	7e c6                	jle    2009a9 <draw_food+0xf>
  2009e3:	c9                   	leave  
  2009e4:	c3                   	ret    

002009e5 <draw_snake>:
  2009e5:	55                   	push   %ebp
  2009e6:	89 e5                	mov    %esp,%ebp
  2009e8:	83 ec 10             	sub    $0x10,%esp
  2009eb:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  2009f2:	eb 34                	jmp    200a28 <draw_snake+0x43>
  2009f4:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  2009fb:	eb 21                	jmp    200a1e <draw_snake+0x39>
  2009fd:	8b 55 0c             	mov    0xc(%ebp),%edx
  200a00:	8b 45 f8             	mov    -0x8(%ebp),%eax
  200a03:	01 c2                	add    %eax,%edx
  200a05:	8b 4d 08             	mov    0x8(%ebp),%ecx
  200a08:	8b 45 fc             	mov    -0x4(%ebp),%eax
  200a0b:	01 c8                	add    %ecx,%eax
  200a0d:	ff 75 10             	pushl  0x10(%ebp)
  200a10:	52                   	push   %edx
  200a11:	50                   	push   %eax
  200a12:	e8 18 fd ff ff       	call   20072f <draw_pixel>
  200a17:	83 c4 0c             	add    $0xc,%esp
  200a1a:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  200a1e:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  200a22:	7e d9                	jle    2009fd <draw_snake+0x18>
  200a24:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  200a28:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
  200a2c:	7e c6                	jle    2009f4 <draw_snake+0xf>
  200a2e:	6a 00                	push   $0x0
  200a30:	ff 75 0c             	pushl  0xc(%ebp)
  200a33:	ff 75 08             	pushl  0x8(%ebp)
  200a36:	e8 f4 fc ff ff       	call   20072f <draw_pixel>
  200a3b:	83 c4 0c             	add    $0xc,%esp
  200a3e:	8b 45 0c             	mov    0xc(%ebp),%eax
  200a41:	83 c0 01             	add    $0x1,%eax
  200a44:	6a 00                	push   $0x0
  200a46:	50                   	push   %eax
  200a47:	ff 75 08             	pushl  0x8(%ebp)
  200a4a:	e8 e0 fc ff ff       	call   20072f <draw_pixel>
  200a4f:	83 c4 0c             	add    $0xc,%esp
  200a52:	8b 45 08             	mov    0x8(%ebp),%eax
  200a55:	83 c0 01             	add    $0x1,%eax
  200a58:	6a 00                	push   $0x0
  200a5a:	ff 75 0c             	pushl  0xc(%ebp)
  200a5d:	50                   	push   %eax
  200a5e:	e8 cc fc ff ff       	call   20072f <draw_pixel>
  200a63:	83 c4 0c             	add    $0xc,%esp
  200a66:	8b 45 0c             	mov    0xc(%ebp),%eax
  200a69:	83 c0 06             	add    $0x6,%eax
  200a6c:	6a 00                	push   $0x0
  200a6e:	50                   	push   %eax
  200a6f:	ff 75 08             	pushl  0x8(%ebp)
  200a72:	e8 b8 fc ff ff       	call   20072f <draw_pixel>
  200a77:	83 c4 0c             	add    $0xc,%esp
  200a7a:	8b 45 0c             	mov    0xc(%ebp),%eax
  200a7d:	83 c0 07             	add    $0x7,%eax
  200a80:	6a 00                	push   $0x0
  200a82:	50                   	push   %eax
  200a83:	ff 75 08             	pushl  0x8(%ebp)
  200a86:	e8 a4 fc ff ff       	call   20072f <draw_pixel>
  200a8b:	83 c4 0c             	add    $0xc,%esp
  200a8e:	8b 45 0c             	mov    0xc(%ebp),%eax
  200a91:	8d 50 07             	lea    0x7(%eax),%edx
  200a94:	8b 45 08             	mov    0x8(%ebp),%eax
  200a97:	83 c0 01             	add    $0x1,%eax
  200a9a:	6a 00                	push   $0x0
  200a9c:	52                   	push   %edx
  200a9d:	50                   	push   %eax
  200a9e:	e8 8c fc ff ff       	call   20072f <draw_pixel>
  200aa3:	83 c4 0c             	add    $0xc,%esp
  200aa6:	8b 45 08             	mov    0x8(%ebp),%eax
  200aa9:	83 c0 07             	add    $0x7,%eax
  200aac:	6a 00                	push   $0x0
  200aae:	ff 75 0c             	pushl  0xc(%ebp)
  200ab1:	50                   	push   %eax
  200ab2:	e8 78 fc ff ff       	call   20072f <draw_pixel>
  200ab7:	83 c4 0c             	add    $0xc,%esp
  200aba:	8b 45 0c             	mov    0xc(%ebp),%eax
  200abd:	8d 50 01             	lea    0x1(%eax),%edx
  200ac0:	8b 45 08             	mov    0x8(%ebp),%eax
  200ac3:	83 c0 07             	add    $0x7,%eax
  200ac6:	6a 00                	push   $0x0
  200ac8:	52                   	push   %edx
  200ac9:	50                   	push   %eax
  200aca:	e8 60 fc ff ff       	call   20072f <draw_pixel>
  200acf:	83 c4 0c             	add    $0xc,%esp
  200ad2:	8b 45 08             	mov    0x8(%ebp),%eax
  200ad5:	83 c0 06             	add    $0x6,%eax
  200ad8:	6a 00                	push   $0x0
  200ada:	ff 75 0c             	pushl  0xc(%ebp)
  200add:	50                   	push   %eax
  200ade:	e8 4c fc ff ff       	call   20072f <draw_pixel>
  200ae3:	83 c4 0c             	add    $0xc,%esp
  200ae6:	8b 45 0c             	mov    0xc(%ebp),%eax
  200ae9:	8d 50 06             	lea    0x6(%eax),%edx
  200aec:	8b 45 08             	mov    0x8(%ebp),%eax
  200aef:	83 c0 07             	add    $0x7,%eax
  200af2:	6a 00                	push   $0x0
  200af4:	52                   	push   %edx
  200af5:	50                   	push   %eax
  200af6:	e8 34 fc ff ff       	call   20072f <draw_pixel>
  200afb:	83 c4 0c             	add    $0xc,%esp
  200afe:	8b 45 0c             	mov    0xc(%ebp),%eax
  200b01:	8d 50 07             	lea    0x7(%eax),%edx
  200b04:	8b 45 08             	mov    0x8(%ebp),%eax
  200b07:	83 c0 07             	add    $0x7,%eax
  200b0a:	6a 00                	push   $0x0
  200b0c:	52                   	push   %edx
  200b0d:	50                   	push   %eax
  200b0e:	e8 1c fc ff ff       	call   20072f <draw_pixel>
  200b13:	83 c4 0c             	add    $0xc,%esp
  200b16:	8b 45 0c             	mov    0xc(%ebp),%eax
  200b19:	8d 50 07             	lea    0x7(%eax),%edx
  200b1c:	8b 45 08             	mov    0x8(%ebp),%eax
  200b1f:	83 c0 06             	add    $0x6,%eax
  200b22:	6a 00                	push   $0x0
  200b24:	52                   	push   %edx
  200b25:	50                   	push   %eax
  200b26:	e8 04 fc ff ff       	call   20072f <draw_pixel>
  200b2b:	83 c4 0c             	add    $0xc,%esp
  200b2e:	c9                   	leave  
  200b2f:	c3                   	ret    

00200b30 <display_all>:
  200b30:	55                   	push   %ebp
  200b31:	89 e5                	mov    %esp,%ebp
  200b33:	b8 04 00 00 00       	mov    $0x4,%eax
  200b38:	ba 40 24 20 00       	mov    $0x202440,%edx
  200b3d:	89 d3                	mov    %edx,%ebx
  200b3f:	cd 80                	int    $0x80
  200b41:	5d                   	pop    %ebp
  200b42:	c3                   	ret    

00200b43 <get_time>:
  200b43:	55                   	push   %ebp
  200b44:	89 e5                	mov    %esp,%ebp
  200b46:	83 ec 10             	sub    $0x10,%esp
  200b49:	b8 02 00 00 00       	mov    $0x2,%eax
  200b4e:	bb 00 00 00 00       	mov    $0x0,%ebx
  200b53:	cd 80                	int    $0x80
  200b55:	89 c0                	mov    %eax,%eax
  200b57:	89 45 fc             	mov    %eax,-0x4(%ebp)
  200b5a:	8b 45 fc             	mov    -0x4(%ebp),%eax
  200b5d:	c9                   	leave  
  200b5e:	c3                   	ret    

00200b5f <time_pop>:
  200b5f:	55                   	push   %ebp
  200b60:	89 e5                	mov    %esp,%ebp
  200b62:	b8 02 00 00 00       	mov    $0x2,%eax
  200b67:	bb 01 00 00 00       	mov    $0x1,%ebx
  200b6c:	cd 80                	int    $0x80
  200b6e:	5d                   	pop    %ebp
  200b6f:	c3                   	ret    

00200b70 <last_key_code>:
  200b70:	55                   	push   %ebp
  200b71:	89 e5                	mov    %esp,%ebp
  200b73:	83 ec 10             	sub    $0x10,%esp
  200b76:	b8 03 00 00 00       	mov    $0x3,%eax
  200b7b:	bb 00 00 00 00       	mov    $0x0,%ebx
  200b80:	cd 80                	int    $0x80
  200b82:	89 c0                	mov    %eax,%eax
  200b84:	89 45 fc             	mov    %eax,-0x4(%ebp)
  200b87:	8b 45 fc             	mov    -0x4(%ebp),%eax
  200b8a:	c9                   	leave  
  200b8b:	c3                   	ret    

00200b8c <reset_last_key>:
  200b8c:	55                   	push   %ebp
  200b8d:	89 e5                	mov    %esp,%ebp
  200b8f:	b8 03 00 00 00       	mov    $0x3,%eax
  200b94:	bb 01 00 00 00       	mov    $0x1,%ebx
  200b99:	cd 80                	int    $0x80
  200b9b:	5d                   	pop    %ebp
  200b9c:	c3                   	ret    

00200b9d <change>:
  200b9d:	55                   	push   %ebp
  200b9e:	89 e5                	mov    %esp,%ebp
  200ba0:	53                   	push   %ebx
  200ba1:	83 c4 80             	add    $0xffffff80,%esp
  200ba4:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  200bab:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  200bb2:	8b 45 08             	mov    0x8(%ebp),%eax
  200bb5:	89 45 ec             	mov    %eax,-0x14(%ebp)
  200bb8:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  200bbc:	75 14                	jne    200bd2 <change+0x35>
  200bbe:	8b 45 0c             	mov    0xc(%ebp),%eax
  200bc1:	c6 00 30             	movb   $0x30,(%eax)
  200bc4:	8b 45 0c             	mov    0xc(%ebp),%eax
  200bc7:	83 c0 01             	add    $0x1,%eax
  200bca:	c6 00 00             	movb   $0x0,(%eax)
  200bcd:	e9 a5 00 00 00       	jmp    200c77 <change+0xda>
  200bd2:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  200bd6:	79 1d                	jns    200bf5 <change+0x58>
  200bd8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  200bdb:	8d 50 01             	lea    0x1(%eax),%edx
  200bde:	89 55 f4             	mov    %edx,-0xc(%ebp)
  200be1:	89 c2                	mov    %eax,%edx
  200be3:	8b 45 0c             	mov    0xc(%ebp),%eax
  200be6:	01 d0                	add    %edx,%eax
  200be8:	c6 00 2d             	movb   $0x2d,(%eax)
  200beb:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200bee:	f7 d8                	neg    %eax
  200bf0:	89 45 f0             	mov    %eax,-0x10(%ebp)
  200bf3:	eb 06                	jmp    200bfb <change+0x5e>
  200bf5:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200bf8:	89 45 f0             	mov    %eax,-0x10(%ebp)
  200bfb:	eb 40                	jmp    200c3d <change+0xa0>
  200bfd:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  200c00:	8d 41 01             	lea    0x1(%ecx),%eax
  200c03:	89 45 f8             	mov    %eax,-0x8(%ebp)
  200c06:	8b 5d f0             	mov    -0x10(%ebp),%ebx
  200c09:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  200c0e:	89 d8                	mov    %ebx,%eax
  200c10:	f7 e2                	mul    %edx
  200c12:	c1 ea 03             	shr    $0x3,%edx
  200c15:	89 d0                	mov    %edx,%eax
  200c17:	c1 e0 02             	shl    $0x2,%eax
  200c1a:	01 d0                	add    %edx,%eax
  200c1c:	01 c0                	add    %eax,%eax
  200c1e:	29 c3                	sub    %eax,%ebx
  200c20:	89 da                	mov    %ebx,%edx
  200c22:	89 d0                	mov    %edx,%eax
  200c24:	83 c0 30             	add    $0x30,%eax
  200c27:	88 44 0d 88          	mov    %al,-0x78(%ebp,%ecx,1)
  200c2b:	8b 45 f0             	mov    -0x10(%ebp),%eax
  200c2e:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  200c33:	f7 e2                	mul    %edx
  200c35:	89 d0                	mov    %edx,%eax
  200c37:	c1 e8 03             	shr    $0x3,%eax
  200c3a:	89 45 f0             	mov    %eax,-0x10(%ebp)
  200c3d:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  200c41:	75 ba                	jne    200bfd <change+0x60>
  200c43:	eb 21                	jmp    200c66 <change+0xc9>
  200c45:	8b 45 f4             	mov    -0xc(%ebp),%eax
  200c48:	8d 50 01             	lea    0x1(%eax),%edx
  200c4b:	89 55 f4             	mov    %edx,-0xc(%ebp)
  200c4e:	89 c2                	mov    %eax,%edx
  200c50:	8b 45 0c             	mov    0xc(%ebp),%eax
  200c53:	01 c2                	add    %eax,%edx
  200c55:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
  200c59:	8d 4d 88             	lea    -0x78(%ebp),%ecx
  200c5c:	8b 45 f8             	mov    -0x8(%ebp),%eax
  200c5f:	01 c8                	add    %ecx,%eax
  200c61:	0f b6 00             	movzbl (%eax),%eax
  200c64:	88 02                	mov    %al,(%edx)
  200c66:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  200c6a:	75 d9                	jne    200c45 <change+0xa8>
  200c6c:	8b 55 f4             	mov    -0xc(%ebp),%edx
  200c6f:	8b 45 0c             	mov    0xc(%ebp),%eax
  200c72:	01 d0                	add    %edx,%eax
  200c74:	c6 00 00             	movb   $0x0,(%eax)
  200c77:	83 ec 80             	sub    $0xffffff80,%esp
  200c7a:	5b                   	pop    %ebx
  200c7b:	5d                   	pop    %ebp
  200c7c:	c3                   	ret    

00200c7d <change_x>:
  200c7d:	55                   	push   %ebp
  200c7e:	89 e5                	mov    %esp,%ebp
  200c80:	83 ec 70             	sub    $0x70,%esp
  200c83:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  200c8a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  200c91:	8b 45 08             	mov    0x8(%ebp),%eax
  200c94:	89 45 f4             	mov    %eax,-0xc(%ebp)
  200c97:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  200c9b:	75 11                	jne    200cae <change_x+0x31>
  200c9d:	8b 45 0c             	mov    0xc(%ebp),%eax
  200ca0:	c6 00 30             	movb   $0x30,(%eax)
  200ca3:	8b 45 0c             	mov    0xc(%ebp),%eax
  200ca6:	83 c0 01             	add    $0x1,%eax
  200ca9:	c6 00 00             	movb   $0x0,(%eax)
  200cac:	eb 7e                	jmp    200d2c <change_x+0xaf>
  200cae:	eb 42                	jmp    200cf2 <change_x+0x75>
  200cb0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  200cb3:	83 e0 0f             	and    $0xf,%eax
  200cb6:	83 f8 09             	cmp    $0x9,%eax
  200cb9:	77 18                	ja     200cd3 <change_x+0x56>
  200cbb:	8b 45 fc             	mov    -0x4(%ebp),%eax
  200cbe:	8d 50 01             	lea    0x1(%eax),%edx
  200cc1:	89 55 fc             	mov    %edx,-0x4(%ebp)
  200cc4:	8b 55 f4             	mov    -0xc(%ebp),%edx
  200cc7:	83 e2 0f             	and    $0xf,%edx
  200cca:	83 c2 30             	add    $0x30,%edx
  200ccd:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
  200cd1:	eb 16                	jmp    200ce9 <change_x+0x6c>
  200cd3:	8b 45 fc             	mov    -0x4(%ebp),%eax
  200cd6:	8d 50 01             	lea    0x1(%eax),%edx
  200cd9:	89 55 fc             	mov    %edx,-0x4(%ebp)
  200cdc:	8b 55 f4             	mov    -0xc(%ebp),%edx
  200cdf:	83 e2 0f             	and    $0xf,%edx
  200ce2:	83 c2 37             	add    $0x37,%edx
  200ce5:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
  200ce9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  200cec:	c1 e8 04             	shr    $0x4,%eax
  200cef:	89 45 f4             	mov    %eax,-0xc(%ebp)
  200cf2:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  200cf6:	75 b8                	jne    200cb0 <change_x+0x33>
  200cf8:	eb 21                	jmp    200d1b <change_x+0x9e>
  200cfa:	8b 45 f8             	mov    -0x8(%ebp),%eax
  200cfd:	8d 50 01             	lea    0x1(%eax),%edx
  200d00:	89 55 f8             	mov    %edx,-0x8(%ebp)
  200d03:	89 c2                	mov    %eax,%edx
  200d05:	8b 45 0c             	mov    0xc(%ebp),%eax
  200d08:	01 c2                	add    %eax,%edx
  200d0a:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
  200d0e:	8d 4d 90             	lea    -0x70(%ebp),%ecx
  200d11:	8b 45 fc             	mov    -0x4(%ebp),%eax
  200d14:	01 c8                	add    %ecx,%eax
  200d16:	0f b6 00             	movzbl (%eax),%eax
  200d19:	88 02                	mov    %al,(%edx)
  200d1b:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  200d1f:	75 d9                	jne    200cfa <change_x+0x7d>
  200d21:	8b 55 f8             	mov    -0x8(%ebp),%edx
  200d24:	8b 45 0c             	mov    0xc(%ebp),%eax
  200d27:	01 d0                	add    %edx,%eax
  200d29:	c6 00 00             	movb   $0x0,(%eax)
  200d2c:	c9                   	leave  
  200d2d:	c3                   	ret    

00200d2e <v_fprintf>:
  200d2e:	55                   	push   %ebp
  200d2f:	89 e5                	mov    %esp,%ebp
  200d31:	81 ec 88 00 00 00    	sub    $0x88,%esp
  200d37:	8b 45 0c             	mov    0xc(%ebp),%eax
  200d3a:	89 45 ec             	mov    %eax,-0x14(%ebp)
  200d3d:	8b 45 10             	mov    0x10(%ebp),%eax
  200d40:	89 45 f4             	mov    %eax,-0xc(%ebp)
  200d43:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  200d4a:	e9 61 01 00 00       	jmp    200eb0 <v_fprintf+0x182>
  200d4f:	8b 55 f0             	mov    -0x10(%ebp),%edx
  200d52:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200d55:	01 d0                	add    %edx,%eax
  200d57:	0f b6 00             	movzbl (%eax),%eax
  200d5a:	3c 25                	cmp    $0x25,%al
  200d5c:	74 27                	je     200d85 <v_fprintf+0x57>
  200d5e:	8b 55 f0             	mov    -0x10(%ebp),%edx
  200d61:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200d64:	01 d0                	add    %edx,%eax
  200d66:	0f b6 00             	movzbl (%eax),%eax
  200d69:	88 45 eb             	mov    %al,-0x15(%ebp)
  200d6c:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
  200d70:	83 ec 0c             	sub    $0xc,%esp
  200d73:	50                   	push   %eax
  200d74:	8b 45 08             	mov    0x8(%ebp),%eax
  200d77:	ff d0                	call   *%eax
  200d79:	83 c4 10             	add    $0x10,%esp
  200d7c:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  200d80:	e9 2b 01 00 00       	jmp    200eb0 <v_fprintf+0x182>
  200d85:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  200d89:	8b 55 f0             	mov    -0x10(%ebp),%edx
  200d8c:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200d8f:	01 d0                	add    %edx,%eax
  200d91:	0f b6 00             	movzbl (%eax),%eax
  200d94:	3c 25                	cmp    $0x25,%al
  200d96:	75 16                	jne    200dae <v_fprintf+0x80>
  200d98:	83 ec 0c             	sub    $0xc,%esp
  200d9b:	6a 25                	push   $0x25
  200d9d:	8b 45 08             	mov    0x8(%ebp),%eax
  200da0:	ff d0                	call   *%eax
  200da2:	83 c4 10             	add    $0x10,%esp
  200da5:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  200da9:	e9 02 01 00 00       	jmp    200eb0 <v_fprintf+0x182>
  200dae:	8b 55 f0             	mov    -0x10(%ebp),%edx
  200db1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200db4:	01 d0                	add    %edx,%eax
  200db6:	0f b6 00             	movzbl (%eax),%eax
  200db9:	3c 63                	cmp    $0x63,%al
  200dbb:	75 26                	jne    200de3 <v_fprintf+0xb5>
  200dbd:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  200dc1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  200dc4:	0f b6 00             	movzbl (%eax),%eax
  200dc7:	88 45 eb             	mov    %al,-0x15(%ebp)
  200dca:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
  200dce:	83 ec 0c             	sub    $0xc,%esp
  200dd1:	50                   	push   %eax
  200dd2:	8b 45 08             	mov    0x8(%ebp),%eax
  200dd5:	ff d0                	call   *%eax
  200dd7:	83 c4 10             	add    $0x10,%esp
  200dda:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  200dde:	e9 cd 00 00 00       	jmp    200eb0 <v_fprintf+0x182>
  200de3:	8b 55 f0             	mov    -0x10(%ebp),%edx
  200de6:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200de9:	01 d0                	add    %edx,%eax
  200deb:	0f b6 00             	movzbl (%eax),%eax
  200dee:	3c 64                	cmp    $0x64,%al
  200df0:	75 36                	jne    200e28 <v_fprintf+0xfa>
  200df2:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  200df6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  200df9:	8b 00                	mov    (%eax),%eax
  200dfb:	83 ec 08             	sub    $0x8,%esp
  200dfe:	8d 55 87             	lea    -0x79(%ebp),%edx
  200e01:	52                   	push   %edx
  200e02:	50                   	push   %eax
  200e03:	e8 95 fd ff ff       	call   200b9d <change>
  200e08:	83 c4 10             	add    $0x10,%esp
  200e0b:	83 ec 04             	sub    $0x4,%esp
  200e0e:	6a 00                	push   $0x0
  200e10:	8d 45 87             	lea    -0x79(%ebp),%eax
  200e13:	50                   	push   %eax
  200e14:	ff 75 08             	pushl  0x8(%ebp)
  200e17:	e8 12 ff ff ff       	call   200d2e <v_fprintf>
  200e1c:	83 c4 10             	add    $0x10,%esp
  200e1f:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  200e23:	e9 88 00 00 00       	jmp    200eb0 <v_fprintf+0x182>
  200e28:	8b 55 f0             	mov    -0x10(%ebp),%edx
  200e2b:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200e2e:	01 d0                	add    %edx,%eax
  200e30:	0f b6 00             	movzbl (%eax),%eax
  200e33:	3c 78                	cmp    $0x78,%al
  200e35:	75 33                	jne    200e6a <v_fprintf+0x13c>
  200e37:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  200e3b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  200e3e:	8b 00                	mov    (%eax),%eax
  200e40:	83 ec 08             	sub    $0x8,%esp
  200e43:	8d 55 87             	lea    -0x79(%ebp),%edx
  200e46:	52                   	push   %edx
  200e47:	50                   	push   %eax
  200e48:	e8 30 fe ff ff       	call   200c7d <change_x>
  200e4d:	83 c4 10             	add    $0x10,%esp
  200e50:	83 ec 04             	sub    $0x4,%esp
  200e53:	6a 00                	push   $0x0
  200e55:	8d 45 87             	lea    -0x79(%ebp),%eax
  200e58:	50                   	push   %eax
  200e59:	ff 75 08             	pushl  0x8(%ebp)
  200e5c:	e8 cd fe ff ff       	call   200d2e <v_fprintf>
  200e61:	83 c4 10             	add    $0x10,%esp
  200e64:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  200e68:	eb 46                	jmp    200eb0 <v_fprintf+0x182>
  200e6a:	8b 55 f0             	mov    -0x10(%ebp),%edx
  200e6d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200e70:	01 d0                	add    %edx,%eax
  200e72:	0f b6 00             	movzbl (%eax),%eax
  200e75:	3c 73                	cmp    $0x73,%al
  200e77:	75 20                	jne    200e99 <v_fprintf+0x16b>
  200e79:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  200e7d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  200e80:	8b 00                	mov    (%eax),%eax
  200e82:	83 ec 04             	sub    $0x4,%esp
  200e85:	6a 00                	push   $0x0
  200e87:	50                   	push   %eax
  200e88:	ff 75 08             	pushl  0x8(%ebp)
  200e8b:	e8 9e fe ff ff       	call   200d2e <v_fprintf>
  200e90:	83 c4 10             	add    $0x10,%esp
  200e93:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  200e97:	eb 17                	jmp    200eb0 <v_fprintf+0x182>
  200e99:	83 ec 04             	sub    $0x4,%esp
  200e9c:	6a 00                	push   $0x0
  200e9e:	68 40 10 20 00       	push   $0x201040
  200ea3:	ff 75 08             	pushl  0x8(%ebp)
  200ea6:	e8 83 fe ff ff       	call   200d2e <v_fprintf>
  200eab:	83 c4 10             	add    $0x10,%esp
  200eae:	eb 13                	jmp    200ec3 <v_fprintf+0x195>
  200eb0:	8b 55 f0             	mov    -0x10(%ebp),%edx
  200eb3:	8b 45 ec             	mov    -0x14(%ebp),%eax
  200eb6:	01 d0                	add    %edx,%eax
  200eb8:	0f b6 00             	movzbl (%eax),%eax
  200ebb:	84 c0                	test   %al,%al
  200ebd:	0f 85 8c fe ff ff    	jne    200d4f <v_fprintf+0x21>
  200ec3:	c9                   	leave  
  200ec4:	c3                   	ret    

00200ec5 <put_buffer>:
  200ec5:	55                   	push   %ebp
  200ec6:	89 e5                	mov    %esp,%ebp
  200ec8:	83 ec 04             	sub    $0x4,%esp
  200ecb:	8b 45 08             	mov    0x8(%ebp),%eax
  200ece:	88 45 fc             	mov    %al,-0x4(%ebp)
  200ed1:	a1 c0 4d 21 00       	mov    0x214dc0,%eax
  200ed6:	8d 50 01             	lea    0x1(%eax),%edx
  200ed9:	89 15 c0 4d 21 00    	mov    %edx,0x214dc0
  200edf:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
  200ee3:	88 90 00 4e 21 00    	mov    %dl,0x214e00(%eax)
  200ee9:	c9                   	leave  
  200eea:	c3                   	ret    

00200eeb <print>:
  200eeb:	55                   	push   %ebp
  200eec:	89 e5                	mov    %esp,%ebp
  200eee:	53                   	push   %ebx
  200eef:	83 ec 14             	sub    $0x14,%esp
  200ef2:	8d 45 0c             	lea    0xc(%ebp),%eax
  200ef5:	89 45 f4             	mov    %eax,-0xc(%ebp)
  200ef8:	c7 05 c0 4d 21 00 00 	movl   $0x0,0x214dc0
  200eff:	00 00 00 
  200f02:	8b 45 08             	mov    0x8(%ebp),%eax
  200f05:	83 ec 04             	sub    $0x4,%esp
  200f08:	ff 75 f4             	pushl  -0xc(%ebp)
  200f0b:	50                   	push   %eax
  200f0c:	68 c5 0e 20 00       	push   $0x200ec5
  200f11:	e8 18 fe ff ff       	call   200d2e <v_fprintf>
  200f16:	83 c4 10             	add    $0x10,%esp
  200f19:	a1 c0 4d 21 00       	mov    0x214dc0,%eax
  200f1e:	c6 80 00 4e 21 00 00 	movb   $0x0,0x214e00(%eax)
  200f25:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
  200f2c:	ba 00 4e 21 00       	mov    $0x214e00,%edx
  200f31:	8b 45 f0             	mov    -0x10(%ebp),%eax
  200f34:	bb 01 00 00 00       	mov    $0x1,%ebx
  200f39:	89 d1                	mov    %edx,%ecx
  200f3b:	cd 80                	int    $0x80
  200f3d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  200f40:	c9                   	leave  
  200f41:	c3                   	ret    

00200f42 <my_memcpy>:
  200f42:	55                   	push   %ebp
  200f43:	89 e5                	mov    %esp,%ebp
  200f45:	57                   	push   %edi
  200f46:	56                   	push   %esi
  200f47:	53                   	push   %ebx
  200f48:	8b 45 10             	mov    0x10(%ebp),%eax
  200f4b:	8b 55 0c             	mov    0xc(%ebp),%edx
  200f4e:	8b 5d 08             	mov    0x8(%ebp),%ebx
  200f51:	89 c1                	mov    %eax,%ecx
  200f53:	89 d6                	mov    %edx,%esi
  200f55:	89 df                	mov    %ebx,%edi
  200f57:	fc                   	cld    
  200f58:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  200f5a:	5b                   	pop    %ebx
  200f5b:	5e                   	pop    %esi
  200f5c:	5f                   	pop    %edi
  200f5d:	5d                   	pop    %ebp
  200f5e:	c3                   	ret    

00200f5f <my_memset>:
  200f5f:	55                   	push   %ebp
  200f60:	89 e5                	mov    %esp,%ebp
  200f62:	57                   	push   %edi
  200f63:	53                   	push   %ebx
  200f64:	8b 55 10             	mov    0x10(%ebp),%edx
  200f67:	8b 45 0c             	mov    0xc(%ebp),%eax
  200f6a:	8b 5d 08             	mov    0x8(%ebp),%ebx
  200f6d:	89 d1                	mov    %edx,%ecx
  200f6f:	89 df                	mov    %ebx,%edi
  200f71:	fc                   	cld    
  200f72:	f3 aa                	rep stos %al,%es:(%edi)
  200f74:	5b                   	pop    %ebx
  200f75:	5f                   	pop    %edi
  200f76:	5d                   	pop    %ebp
  200f77:	c3                   	ret    

00200f78 <srand>:
  200f78:	55                   	push   %ebp
  200f79:	89 e5                	mov    %esp,%ebp
  200f7b:	8b 45 08             	mov    0x8(%ebp),%eax
  200f7e:	a3 40 1e 21 00       	mov    %eax,0x211e40
  200f83:	5d                   	pop    %ebp
  200f84:	c3                   	ret    

00200f85 <rand>:
  200f85:	55                   	push   %ebp
  200f86:	89 e5                	mov    %esp,%ebp
  200f88:	a1 40 1e 21 00       	mov    0x211e40,%eax
  200f8d:	69 c0 35 4e 5a 01    	imul   $0x15a4e35,%eax,%eax
  200f93:	83 c0 01             	add    $0x1,%eax
  200f96:	a3 40 1e 21 00       	mov    %eax,0x211e40
  200f9b:	a1 40 1e 21 00       	mov    0x211e40,%eax
  200fa0:	c1 f8 10             	sar    $0x10,%eax
  200fa3:	25 ff 7f 00 00       	and    $0x7fff,%eax
  200fa8:	5d                   	pop    %ebp
  200fa9:	c3                   	ret    

00200faa <getpid>:
  200faa:	55                   	push   %ebp
  200fab:	89 e5                	mov    %esp,%ebp
  200fad:	83 ec 10             	sub    $0x10,%esp
  200fb0:	b8 06 00 00 00       	mov    $0x6,%eax
  200fb5:	cd 80                	int    $0x80
  200fb7:	89 c0                	mov    %eax,%eax
  200fb9:	89 45 fc             	mov    %eax,-0x4(%ebp)
  200fbc:	8b 45 fc             	mov    -0x4(%ebp),%eax
  200fbf:	c9                   	leave  
  200fc0:	c3                   	ret    
