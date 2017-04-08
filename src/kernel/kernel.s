
kernel:     file format elf32-i386


Disassembly of section .text:

00100000 <timer_event>:
  100000:	55                   	push   %ebp
  100001:	89 e5                	mov    %esp,%ebp
  100003:	a1 80 20 10 00       	mov    0x102080,%eax
  100008:	83 c0 01             	add    $0x1,%eax
  10000b:	a3 80 20 10 00       	mov    %eax,0x102080
  100010:	5d                   	pop    %ebp
  100011:	c3                   	ret    

00100012 <get_time>:
  100012:	55                   	push   %ebp
  100013:	89 e5                	mov    %esp,%ebp
  100015:	a1 80 20 10 00       	mov    0x102080,%eax
  10001a:	5d                   	pop    %ebp
  10001b:	c3                   	ret    

0010001c <time_pop>:
  10001c:	55                   	push   %ebp
  10001d:	89 e5                	mov    %esp,%ebp
  10001f:	a1 80 20 10 00       	mov    0x102080,%eax
  100024:	83 c0 01             	add    $0x1,%eax
  100027:	a3 80 20 10 00       	mov    %eax,0x102080
  10002c:	5d                   	pop    %ebp
  10002d:	c3                   	ret    

0010002e <press_key>:
  10002e:	55                   	push   %ebp
  10002f:	89 e5                	mov    %esp,%ebp
  100031:	83 ec 10             	sub    $0x10,%esp
  100034:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10003b:	e9 91 00 00 00       	jmp    1000d1 <press_key+0xa3>
  100040:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100043:	8b 04 85 00 20 10 00 	mov    0x102000(,%eax,4),%eax
  10004a:	3b 45 08             	cmp    0x8(%ebp),%eax
  10004d:	75 7e                	jne    1000cd <press_key+0x9f>
  10004f:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100052:	c7 04 85 c0 20 10 00 	movl   $0x1,0x1020c0(,%eax,4)
  100059:	01 00 00 00 
  10005d:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  100061:	74 18                	je     10007b <press_key+0x4d>
  100063:	83 7d fc 12          	cmpl   $0x12,-0x4(%ebp)
  100067:	74 12                	je     10007b <press_key+0x4d>
  100069:	83 7d fc 03          	cmpl   $0x3,-0x4(%ebp)
  10006d:	74 0c                	je     10007b <press_key+0x4d>
  10006f:	83 7d fc 16          	cmpl   $0x16,-0x4(%ebp)
  100073:	74 06                	je     10007b <press_key+0x4d>
  100075:	83 7d fc 11          	cmpl   $0x11,-0x4(%ebp)
  100079:	75 52                	jne    1000cd <press_key+0x9f>
  10007b:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  10007f:	75 0f                	jne    100090 <press_key+0x62>
  100081:	a1 84 20 10 00       	mov    0x102084,%eax
  100086:	83 f8 03             	cmp    $0x3,%eax
  100089:	75 05                	jne    100090 <press_key+0x62>
  10008b:	e9 80 00 00 00       	jmp    100110 <press_key+0xe2>
  100090:	83 7d fc 03          	cmpl   $0x3,-0x4(%ebp)
  100094:	75 0b                	jne    1000a1 <press_key+0x73>
  100096:	a1 84 20 10 00       	mov    0x102084,%eax
  10009b:	85 c0                	test   %eax,%eax
  10009d:	75 02                	jne    1000a1 <press_key+0x73>
  10009f:	eb 6f                	jmp    100110 <press_key+0xe2>
  1000a1:	83 7d fc 12          	cmpl   $0x12,-0x4(%ebp)
  1000a5:	75 0c                	jne    1000b3 <press_key+0x85>
  1000a7:	a1 84 20 10 00       	mov    0x102084,%eax
  1000ac:	83 f8 16             	cmp    $0x16,%eax
  1000af:	75 02                	jne    1000b3 <press_key+0x85>
  1000b1:	eb 5d                	jmp    100110 <press_key+0xe2>
  1000b3:	83 7d fc 16          	cmpl   $0x16,-0x4(%ebp)
  1000b7:	75 0c                	jne    1000c5 <press_key+0x97>
  1000b9:	a1 84 20 10 00       	mov    0x102084,%eax
  1000be:	83 f8 12             	cmp    $0x12,%eax
  1000c1:	75 02                	jne    1000c5 <press_key+0x97>
  1000c3:	eb 4b                	jmp    100110 <press_key+0xe2>
  1000c5:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1000c8:	a3 84 20 10 00       	mov    %eax,0x102084
  1000cd:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1000d1:	83 7d fc 19          	cmpl   $0x19,-0x4(%ebp)
  1000d5:	0f 8e 65 ff ff ff    	jle    100040 <press_key+0x12>
  1000db:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1000e2:	eb 26                	jmp    10010a <press_key+0xdc>
  1000e4:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1000e7:	8b 04 85 00 20 10 00 	mov    0x102000(,%eax,4),%eax
  1000ee:	8b 55 08             	mov    0x8(%ebp),%edx
  1000f1:	83 c2 80             	add    $0xffffff80,%edx
  1000f4:	39 d0                	cmp    %edx,%eax
  1000f6:	75 0e                	jne    100106 <press_key+0xd8>
  1000f8:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1000fb:	c7 04 85 c0 20 10 00 	movl   $0x0,0x1020c0(,%eax,4)
  100102:	00 00 00 00 
  100106:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  10010a:	83 7d fc 19          	cmpl   $0x19,-0x4(%ebp)
  10010e:	7e d4                	jle    1000e4 <press_key+0xb6>
  100110:	c9                   	leave  
  100111:	c3                   	ret    

00100112 <last_key_code>:
  100112:	55                   	push   %ebp
  100113:	89 e5                	mov    %esp,%ebp
  100115:	a1 84 20 10 00       	mov    0x102084,%eax
  10011a:	5d                   	pop    %ebp
  10011b:	c3                   	ret    

0010011c <reset_last_key>:
  10011c:	55                   	push   %ebp
  10011d:	89 e5                	mov    %esp,%ebp
  10011f:	c7 05 84 20 10 00 00 	movl   $0x0,0x102084
  100126:	00 00 00 
  100129:	5d                   	pop    %ebp
  10012a:	c3                   	ret    

0010012b <keyboard_event>:
  10012b:	55                   	push   %ebp
  10012c:	89 e5                	mov    %esp,%ebp
  10012e:	ff 75 08             	pushl  0x8(%ebp)
  100131:	e8 f8 fe ff ff       	call   10002e <press_key>
  100136:	83 c4 04             	add    $0x4,%esp
  100139:	c9                   	leave  
  10013a:	c3                   	ret    

0010013b <disable_interrupt>:
  10013b:	55                   	push   %ebp
  10013c:	89 e5                	mov    %esp,%ebp
  10013e:	fa                   	cli    
  10013f:	5d                   	pop    %ebp
  100140:	c3                   	ret    

00100141 <main>:
  100141:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  100145:	83 e4 f0             	and    $0xfffffff0,%esp
  100148:	ff 71 fc             	pushl  -0x4(%ecx)
  10014b:	55                   	push   %ebp
  10014c:	89 e5                	mov    %esp,%ebp
  10014e:	51                   	push   %ecx
  10014f:	83 ec 04             	sub    $0x4,%esp
  100152:	e8 e4 ff ff ff       	call   10013b <disable_interrupt>
  100157:	e8 c6 00 00 00       	call   100222 <init_serial>
  10015c:	e8 7a 01 00 00       	call   1002db <init_timer>
  100161:	e8 ba 05 00 00       	call   100720 <init_intr>
  100166:	e8 f2 07 00 00       	call   10095d <init_idt>
  10016b:	e8 79 04 00 00       	call   1005e9 <init_seg>
  100170:	bc 00 00 28 00       	mov    $0x280000,%esp
  100175:	e8 f3 10 00 00       	call   10126d <load>
  10017a:	e8 bd 11 00 00       	call   10133c <init_PCB>
  10017f:	c7 05 40 21 10 00 60 	movl   $0x102160,0x102140
  100186:	21 10 00 
  100189:	a1 c0 2a 10 00       	mov    0x102ac0,%eax
  10018e:	a3 88 21 10 00       	mov    %eax,0x102188
  100193:	a1 c0 2a 10 00       	mov    0x102ac0,%eax
  100198:	83 ec 08             	sub    $0x8,%esp
  10019b:	50                   	push   %eax
  10019c:	68 44 15 10 00       	push   $0x101544
  1001a1:	e8 fb 0e 00 00       	call   1010a1 <printk>
  1001a6:	83 c4 10             	add    $0x10,%esp
  1001a9:	c7 05 8c 21 10 00 1b 	movl   $0x1b,0x10218c
  1001b0:	00 00 00 
  1001b3:	c7 05 90 21 10 00 02 	movl   $0x202,0x102190
  1001ba:	02 00 00 
  1001bd:	c7 05 94 21 10 00 00 	movl   $0x500000,0x102194
  1001c4:	00 50 00 
  1001c7:	c7 05 98 21 10 00 23 	movl   $0x23,0x102198
  1001ce:	00 00 00 
  1001d1:	a1 40 21 10 00       	mov    0x102140,%eax
  1001d6:	83 ec 0c             	sub    $0xc,%esp
  1001d9:	50                   	push   %eax
  1001da:	e8 94 11 00 00       	call   101373 <add_PCB>
  1001df:	83 c4 10             	add    $0x10,%esp
  1001e2:	a1 40 21 10 00       	mov    0x102140,%eax
  1001e7:	89 c4                	mov    %eax,%esp
  1001e9:	83 c4 28             	add    $0x28,%esp
  1001ec:	66 b8 23 00          	mov    $0x23,%ax
  1001f0:	8e d8                	mov    %eax,%ds
  1001f2:	8e c0                	mov    %eax,%es
  1001f4:	cf                   	iret   
  1001f5:	eb fe                	jmp    1001f5 <main+0xb4>

001001f7 <inb>:
  1001f7:	55                   	push   %ebp
  1001f8:	89 e5                	mov    %esp,%ebp
  1001fa:	83 ec 10             	sub    $0x10,%esp
  1001fd:	8b 45 08             	mov    0x8(%ebp),%eax
  100200:	89 c2                	mov    %eax,%edx
  100202:	ec                   	in     (%dx),%al
  100203:	88 45 ff             	mov    %al,-0x1(%ebp)
  100206:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  10020a:	c9                   	leave  
  10020b:	c3                   	ret    

0010020c <outb>:
  10020c:	55                   	push   %ebp
  10020d:	89 e5                	mov    %esp,%ebp
  10020f:	83 ec 04             	sub    $0x4,%esp
  100212:	8b 45 0c             	mov    0xc(%ebp),%eax
  100215:	88 45 fc             	mov    %al,-0x4(%ebp)
  100218:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  10021c:	8b 55 08             	mov    0x8(%ebp),%edx
  10021f:	ee                   	out    %al,(%dx)
  100220:	c9                   	leave  
  100221:	c3                   	ret    

00100222 <init_serial>:
  100222:	55                   	push   %ebp
  100223:	89 e5                	mov    %esp,%ebp
  100225:	6a 00                	push   $0x0
  100227:	68 f9 03 00 00       	push   $0x3f9
  10022c:	e8 db ff ff ff       	call   10020c <outb>
  100231:	83 c4 08             	add    $0x8,%esp
  100234:	68 80 00 00 00       	push   $0x80
  100239:	68 fb 03 00 00       	push   $0x3fb
  10023e:	e8 c9 ff ff ff       	call   10020c <outb>
  100243:	83 c4 08             	add    $0x8,%esp
  100246:	6a 03                	push   $0x3
  100248:	68 f8 03 00 00       	push   $0x3f8
  10024d:	e8 ba ff ff ff       	call   10020c <outb>
  100252:	83 c4 08             	add    $0x8,%esp
  100255:	6a 00                	push   $0x0
  100257:	68 f9 03 00 00       	push   $0x3f9
  10025c:	e8 ab ff ff ff       	call   10020c <outb>
  100261:	83 c4 08             	add    $0x8,%esp
  100264:	6a 03                	push   $0x3
  100266:	68 fb 03 00 00       	push   $0x3fb
  10026b:	e8 9c ff ff ff       	call   10020c <outb>
  100270:	83 c4 08             	add    $0x8,%esp
  100273:	68 c7 00 00 00       	push   $0xc7
  100278:	68 fa 03 00 00       	push   $0x3fa
  10027d:	e8 8a ff ff ff       	call   10020c <outb>
  100282:	83 c4 08             	add    $0x8,%esp
  100285:	6a 0b                	push   $0xb
  100287:	68 fc 03 00 00       	push   $0x3fc
  10028c:	e8 7b ff ff ff       	call   10020c <outb>
  100291:	83 c4 08             	add    $0x8,%esp
  100294:	c9                   	leave  
  100295:	c3                   	ret    

00100296 <is_serial_idle>:
  100296:	55                   	push   %ebp
  100297:	89 e5                	mov    %esp,%ebp
  100299:	68 fd 03 00 00       	push   $0x3fd
  10029e:	e8 54 ff ff ff       	call   1001f7 <inb>
  1002a3:	83 c4 04             	add    $0x4,%esp
  1002a6:	0f b6 c0             	movzbl %al,%eax
  1002a9:	83 e0 20             	and    $0x20,%eax
  1002ac:	c9                   	leave  
  1002ad:	c3                   	ret    

001002ae <serial_out>:
  1002ae:	55                   	push   %ebp
  1002af:	89 e5                	mov    %esp,%ebp
  1002b1:	83 ec 04             	sub    $0x4,%esp
  1002b4:	8b 45 08             	mov    0x8(%ebp),%eax
  1002b7:	88 45 fc             	mov    %al,-0x4(%ebp)
  1002ba:	90                   	nop
  1002bb:	e8 d6 ff ff ff       	call   100296 <is_serial_idle>
  1002c0:	85 c0                	test   %eax,%eax
  1002c2:	74 f7                	je     1002bb <serial_out+0xd>
  1002c4:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  1002c8:	0f b6 c0             	movzbl %al,%eax
  1002cb:	50                   	push   %eax
  1002cc:	68 f8 03 00 00       	push   $0x3f8
  1002d1:	e8 36 ff ff ff       	call   10020c <outb>
  1002d6:	83 c4 08             	add    $0x8,%esp
  1002d9:	c9                   	leave  
  1002da:	c3                   	ret    

001002db <init_timer>:
  1002db:	55                   	push   %ebp
  1002dc:	89 e5                	mov    %esp,%ebp
  1002de:	83 ec 20             	sub    $0x20,%esp
  1002e1:	c7 45 fc a9 04 00 00 	movl   $0x4a9,-0x4(%ebp)
  1002e8:	c7 45 f8 43 00 00 00 	movl   $0x43,-0x8(%ebp)
  1002ef:	c6 45 f7 34          	movb   $0x34,-0x9(%ebp)
  1002f3:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
  1002f7:	8b 55 f8             	mov    -0x8(%ebp),%edx
  1002fa:	ee                   	out    %al,(%dx)
  1002fb:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1002fe:	99                   	cltd   
  1002ff:	c1 ea 18             	shr    $0x18,%edx
  100302:	01 d0                	add    %edx,%eax
  100304:	0f b6 c0             	movzbl %al,%eax
  100307:	29 d0                	sub    %edx,%eax
  100309:	0f b6 c0             	movzbl %al,%eax
  10030c:	c7 45 f0 40 00 00 00 	movl   $0x40,-0x10(%ebp)
  100313:	88 45 ef             	mov    %al,-0x11(%ebp)
  100316:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
  10031a:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10031d:	ee                   	out    %al,(%dx)
  10031e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100321:	8d 90 ff 00 00 00    	lea    0xff(%eax),%edx
  100327:	85 c0                	test   %eax,%eax
  100329:	0f 48 c2             	cmovs  %edx,%eax
  10032c:	c1 f8 08             	sar    $0x8,%eax
  10032f:	0f b6 c0             	movzbl %al,%eax
  100332:	c7 45 e8 40 00 00 00 	movl   $0x40,-0x18(%ebp)
  100339:	88 45 e7             	mov    %al,-0x19(%ebp)
  10033c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  100340:	8b 55 e8             	mov    -0x18(%ebp),%edx
  100343:	ee                   	out    %al,(%dx)
  100344:	c9                   	leave  
  100345:	c3                   	ret    

00100346 <write_gdtr>:
  100346:	55                   	push   %ebp
  100347:	89 e5                	mov    %esp,%ebp
  100349:	8b 45 0c             	mov    0xc(%ebp),%eax
  10034c:	83 e8 01             	sub    $0x1,%eax
  10034f:	66 a3 2c 21 10 00    	mov    %ax,0x10212c
  100355:	8b 45 08             	mov    0x8(%ebp),%eax
  100358:	66 a3 2e 21 10 00    	mov    %ax,0x10212e
  10035e:	8b 45 08             	mov    0x8(%ebp),%eax
  100361:	c1 e8 10             	shr    $0x10,%eax
  100364:	66 a3 30 21 10 00    	mov    %ax,0x102130
  10036a:	b8 2c 21 10 00       	mov    $0x10212c,%eax
  10036f:	0f 01 10             	lgdtl  (%eax)
  100372:	5d                   	pop    %ebp
  100373:	c3                   	ret    

00100374 <Makegdt>:
  100374:	55                   	push   %ebp
  100375:	89 e5                	mov    %esp,%ebp
  100377:	8b 45 08             	mov    0x8(%ebp),%eax
  10037a:	c1 e8 0c             	shr    $0xc,%eax
  10037d:	89 c2                	mov    %eax,%edx
  10037f:	8b 45 18             	mov    0x18(%ebp),%eax
  100382:	66 89 14 c5 c0 21 10 	mov    %dx,0x1021c0(,%eax,8)
  100389:	00 
  10038a:	8b 45 0c             	mov    0xc(%ebp),%eax
  10038d:	89 c2                	mov    %eax,%edx
  10038f:	8b 45 18             	mov    0x18(%ebp),%eax
  100392:	66 89 14 c5 c2 21 10 	mov    %dx,0x1021c2(,%eax,8)
  100399:	00 
  10039a:	8b 45 0c             	mov    0xc(%ebp),%eax
  10039d:	c1 e8 10             	shr    $0x10,%eax
  1003a0:	89 c2                	mov    %eax,%edx
  1003a2:	8b 45 18             	mov    0x18(%ebp),%eax
  1003a5:	88 14 c5 c4 21 10 00 	mov    %dl,0x1021c4(,%eax,8)
  1003ac:	8b 45 10             	mov    0x10(%ebp),%eax
  1003af:	83 e0 0f             	and    $0xf,%eax
  1003b2:	89 c2                	mov    %eax,%edx
  1003b4:	8b 45 18             	mov    0x18(%ebp),%eax
  1003b7:	89 d1                	mov    %edx,%ecx
  1003b9:	83 e1 0f             	and    $0xf,%ecx
  1003bc:	0f b6 14 c5 c5 21 10 	movzbl 0x1021c5(,%eax,8),%edx
  1003c3:	00 
  1003c4:	83 e2 f0             	and    $0xfffffff0,%edx
  1003c7:	09 ca                	or     %ecx,%edx
  1003c9:	88 14 c5 c5 21 10 00 	mov    %dl,0x1021c5(,%eax,8)
  1003d0:	8b 45 18             	mov    0x18(%ebp),%eax
  1003d3:	0f b6 14 c5 c5 21 10 	movzbl 0x1021c5(,%eax,8),%edx
  1003da:	00 
  1003db:	83 ca 10             	or     $0x10,%edx
  1003de:	88 14 c5 c5 21 10 00 	mov    %dl,0x1021c5(,%eax,8)
  1003e5:	8b 45 14             	mov    0x14(%ebp),%eax
  1003e8:	83 e0 03             	and    $0x3,%eax
  1003eb:	89 c2                	mov    %eax,%edx
  1003ed:	8b 45 18             	mov    0x18(%ebp),%eax
  1003f0:	83 e2 03             	and    $0x3,%edx
  1003f3:	89 d1                	mov    %edx,%ecx
  1003f5:	c1 e1 05             	shl    $0x5,%ecx
  1003f8:	0f b6 14 c5 c5 21 10 	movzbl 0x1021c5(,%eax,8),%edx
  1003ff:	00 
  100400:	83 e2 9f             	and    $0xffffff9f,%edx
  100403:	09 ca                	or     %ecx,%edx
  100405:	88 14 c5 c5 21 10 00 	mov    %dl,0x1021c5(,%eax,8)
  10040c:	8b 45 18             	mov    0x18(%ebp),%eax
  10040f:	0f b6 14 c5 c5 21 10 	movzbl 0x1021c5(,%eax,8),%edx
  100416:	00 
  100417:	83 ca 80             	or     $0xffffff80,%edx
  10041a:	88 14 c5 c5 21 10 00 	mov    %dl,0x1021c5(,%eax,8)
  100421:	8b 45 08             	mov    0x8(%ebp),%eax
  100424:	c1 e8 1c             	shr    $0x1c,%eax
  100427:	83 e0 0f             	and    $0xf,%eax
  10042a:	89 c2                	mov    %eax,%edx
  10042c:	8b 45 18             	mov    0x18(%ebp),%eax
  10042f:	89 d1                	mov    %edx,%ecx
  100431:	83 e1 0f             	and    $0xf,%ecx
  100434:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  10043b:	00 
  10043c:	83 e2 f0             	and    $0xfffffff0,%edx
  10043f:	09 ca                	or     %ecx,%edx
  100441:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  100448:	8b 45 18             	mov    0x18(%ebp),%eax
  10044b:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  100452:	00 
  100453:	83 e2 ef             	and    $0xffffffef,%edx
  100456:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  10045d:	8b 45 18             	mov    0x18(%ebp),%eax
  100460:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  100467:	00 
  100468:	83 e2 df             	and    $0xffffffdf,%edx
  10046b:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  100472:	8b 45 18             	mov    0x18(%ebp),%eax
  100475:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  10047c:	00 
  10047d:	83 ca 40             	or     $0x40,%edx
  100480:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  100487:	8b 45 18             	mov    0x18(%ebp),%eax
  10048a:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  100491:	00 
  100492:	83 ca 80             	or     $0xffffff80,%edx
  100495:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  10049c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10049f:	c1 e8 18             	shr    $0x18,%eax
  1004a2:	89 c2                	mov    %eax,%edx
  1004a4:	8b 45 18             	mov    0x18(%ebp),%eax
  1004a7:	88 14 c5 c7 21 10 00 	mov    %dl,0x1021c7(,%eax,8)
  1004ae:	5d                   	pop    %ebp
  1004af:	c3                   	ret    

001004b0 <Maketss>:
  1004b0:	55                   	push   %ebp
  1004b1:	89 e5                	mov    %esp,%ebp
  1004b3:	8b 45 08             	mov    0x8(%ebp),%eax
  1004b6:	89 c2                	mov    %eax,%edx
  1004b8:	8b 45 18             	mov    0x18(%ebp),%eax
  1004bb:	66 89 14 c5 c0 21 10 	mov    %dx,0x1021c0(,%eax,8)
  1004c2:	00 
  1004c3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1004c6:	89 c2                	mov    %eax,%edx
  1004c8:	8b 45 18             	mov    0x18(%ebp),%eax
  1004cb:	66 89 14 c5 c2 21 10 	mov    %dx,0x1021c2(,%eax,8)
  1004d2:	00 
  1004d3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1004d6:	c1 e8 10             	shr    $0x10,%eax
  1004d9:	89 c2                	mov    %eax,%edx
  1004db:	8b 45 18             	mov    0x18(%ebp),%eax
  1004de:	88 14 c5 c4 21 10 00 	mov    %dl,0x1021c4(,%eax,8)
  1004e5:	8b 45 10             	mov    0x10(%ebp),%eax
  1004e8:	83 e0 0f             	and    $0xf,%eax
  1004eb:	89 c2                	mov    %eax,%edx
  1004ed:	8b 45 18             	mov    0x18(%ebp),%eax
  1004f0:	89 d1                	mov    %edx,%ecx
  1004f2:	83 e1 0f             	and    $0xf,%ecx
  1004f5:	0f b6 14 c5 c5 21 10 	movzbl 0x1021c5(,%eax,8),%edx
  1004fc:	00 
  1004fd:	83 e2 f0             	and    $0xfffffff0,%edx
  100500:	09 ca                	or     %ecx,%edx
  100502:	88 14 c5 c5 21 10 00 	mov    %dl,0x1021c5(,%eax,8)
  100509:	8b 45 18             	mov    0x18(%ebp),%eax
  10050c:	0f b6 14 c5 c5 21 10 	movzbl 0x1021c5(,%eax,8),%edx
  100513:	00 
  100514:	83 e2 ef             	and    $0xffffffef,%edx
  100517:	88 14 c5 c5 21 10 00 	mov    %dl,0x1021c5(,%eax,8)
  10051e:	8b 45 14             	mov    0x14(%ebp),%eax
  100521:	83 e0 03             	and    $0x3,%eax
  100524:	89 c2                	mov    %eax,%edx
  100526:	8b 45 18             	mov    0x18(%ebp),%eax
  100529:	83 e2 03             	and    $0x3,%edx
  10052c:	89 d1                	mov    %edx,%ecx
  10052e:	c1 e1 05             	shl    $0x5,%ecx
  100531:	0f b6 14 c5 c5 21 10 	movzbl 0x1021c5(,%eax,8),%edx
  100538:	00 
  100539:	83 e2 9f             	and    $0xffffff9f,%edx
  10053c:	09 ca                	or     %ecx,%edx
  10053e:	88 14 c5 c5 21 10 00 	mov    %dl,0x1021c5(,%eax,8)
  100545:	8b 45 18             	mov    0x18(%ebp),%eax
  100548:	0f b6 14 c5 c5 21 10 	movzbl 0x1021c5(,%eax,8),%edx
  10054f:	00 
  100550:	83 ca 80             	or     $0xffffff80,%edx
  100553:	88 14 c5 c5 21 10 00 	mov    %dl,0x1021c5(,%eax,8)
  10055a:	8b 45 08             	mov    0x8(%ebp),%eax
  10055d:	c1 e8 10             	shr    $0x10,%eax
  100560:	83 e0 0f             	and    $0xf,%eax
  100563:	89 c2                	mov    %eax,%edx
  100565:	8b 45 18             	mov    0x18(%ebp),%eax
  100568:	89 d1                	mov    %edx,%ecx
  10056a:	83 e1 0f             	and    $0xf,%ecx
  10056d:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  100574:	00 
  100575:	83 e2 f0             	and    $0xfffffff0,%edx
  100578:	09 ca                	or     %ecx,%edx
  10057a:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  100581:	8b 45 18             	mov    0x18(%ebp),%eax
  100584:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  10058b:	00 
  10058c:	83 e2 ef             	and    $0xffffffef,%edx
  10058f:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  100596:	8b 45 18             	mov    0x18(%ebp),%eax
  100599:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  1005a0:	00 
  1005a1:	83 e2 df             	and    $0xffffffdf,%edx
  1005a4:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  1005ab:	8b 45 18             	mov    0x18(%ebp),%eax
  1005ae:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  1005b5:	00 
  1005b6:	83 ca 40             	or     $0x40,%edx
  1005b9:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  1005c0:	8b 45 18             	mov    0x18(%ebp),%eax
  1005c3:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  1005ca:	00 
  1005cb:	83 ca 80             	or     $0xffffff80,%edx
  1005ce:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  1005d5:	8b 45 0c             	mov    0xc(%ebp),%eax
  1005d8:	c1 e8 18             	shr    $0x18,%eax
  1005db:	89 c2                	mov    %eax,%edx
  1005dd:	8b 45 18             	mov    0x18(%ebp),%eax
  1005e0:	88 14 c5 c7 21 10 00 	mov    %dl,0x1021c7(,%eax,8)
  1005e7:	5d                   	pop    %ebp
  1005e8:	c3                   	ret    

001005e9 <init_seg>:
  1005e9:	55                   	push   %ebp
  1005ea:	89 e5                	mov    %esp,%ebp
  1005ec:	83 ec 10             	sub    $0x10,%esp
  1005ef:	c7 05 28 21 10 00 00 	movl   $0x0,0x102128
  1005f6:	00 00 00 
  1005f9:	6a 00                	push   $0x0
  1005fb:	6a 00                	push   $0x0
  1005fd:	6a 00                	push   $0x0
  1005ff:	6a 00                	push   $0x0
  100601:	6a 00                	push   $0x0
  100603:	e8 6c fd ff ff       	call   100374 <Makegdt>
  100608:	83 c4 14             	add    $0x14,%esp
  10060b:	a1 28 21 10 00       	mov    0x102128,%eax
  100610:	83 c0 01             	add    $0x1,%eax
  100613:	a3 28 21 10 00       	mov    %eax,0x102128
  100618:	a1 28 21 10 00       	mov    0x102128,%eax
  10061d:	50                   	push   %eax
  10061e:	6a 00                	push   $0x0
  100620:	6a 0a                	push   $0xa
  100622:	6a 00                	push   $0x0
  100624:	68 00 00 08 00       	push   $0x80000
  100629:	e8 46 fd ff ff       	call   100374 <Makegdt>
  10062e:	83 c4 14             	add    $0x14,%esp
  100631:	a1 28 21 10 00       	mov    0x102128,%eax
  100636:	83 c0 01             	add    $0x1,%eax
  100639:	a3 28 21 10 00       	mov    %eax,0x102128
  10063e:	a1 28 21 10 00       	mov    0x102128,%eax
  100643:	50                   	push   %eax
  100644:	6a 00                	push   $0x0
  100646:	6a 02                	push   $0x2
  100648:	6a 00                	push   $0x0
  10064a:	68 00 00 08 00       	push   $0x80000
  10064f:	e8 20 fd ff ff       	call   100374 <Makegdt>
  100654:	83 c4 14             	add    $0x14,%esp
  100657:	a1 28 21 10 00       	mov    0x102128,%eax
  10065c:	83 c0 01             	add    $0x1,%eax
  10065f:	a3 28 21 10 00       	mov    %eax,0x102128
  100664:	a1 28 21 10 00       	mov    0x102128,%eax
  100669:	50                   	push   %eax
  10066a:	6a 03                	push   $0x3
  10066c:	6a 0a                	push   $0xa
  10066e:	6a 00                	push   $0x0
  100670:	6a ff                	push   $0xffffffff
  100672:	e8 fd fc ff ff       	call   100374 <Makegdt>
  100677:	83 c4 14             	add    $0x14,%esp
  10067a:	a1 28 21 10 00       	mov    0x102128,%eax
  10067f:	83 c0 01             	add    $0x1,%eax
  100682:	a3 28 21 10 00       	mov    %eax,0x102128
  100687:	a1 28 21 10 00       	mov    0x102128,%eax
  10068c:	50                   	push   %eax
  10068d:	6a 03                	push   $0x3
  10068f:	6a 02                	push   $0x2
  100691:	6a 00                	push   $0x0
  100693:	6a ff                	push   $0xffffffff
  100695:	e8 da fc ff ff       	call   100374 <Makegdt>
  10069a:	83 c4 14             	add    $0x14,%esp
  10069d:	a1 28 21 10 00       	mov    0x102128,%eax
  1006a2:	83 c0 01             	add    $0x1,%eax
  1006a5:	a3 28 21 10 00       	mov    %eax,0x102128
  1006aa:	c7 05 44 22 10 00 00 	movl   $0x280000,0x102244
  1006b1:	00 28 00 
  1006b4:	66 c7 05 48 22 10 00 	movw   $0x10,0x102248
  1006bb:	10 00 
  1006bd:	a1 28 21 10 00       	mov    0x102128,%eax
  1006c2:	ba 40 22 10 00       	mov    $0x102240,%edx
  1006c7:	50                   	push   %eax
  1006c8:	6a 00                	push   $0x0
  1006ca:	6a 09                	push   $0x9
  1006cc:	52                   	push   %edx
  1006cd:	6a ff                	push   $0xffffffff
  1006cf:	e8 dc fd ff ff       	call   1004b0 <Maketss>
  1006d4:	83 c4 14             	add    $0x14,%esp
  1006d7:	a1 28 21 10 00       	mov    0x102128,%eax
  1006dc:	83 c0 01             	add    $0x1,%eax
  1006df:	a3 28 21 10 00       	mov    %eax,0x102128
  1006e4:	66 c7 05 9c 22 10 00 	movw   $0x2b,0x10229c
  1006eb:	2b 00 
  1006ed:	66 b8 10 00          	mov    $0x10,%ax
  1006f1:	8e d8                	mov    %eax,%ds
  1006f3:	8e c0                	mov    %eax,%es
  1006f5:	8e d0                	mov    %eax,%ss
  1006f7:	68 80 00 00 00       	push   $0x80
  1006fc:	68 c0 21 10 00       	push   $0x1021c0
  100701:	e8 40 fc ff ff       	call   100346 <write_gdtr>
  100706:	83 c4 08             	add    $0x8,%esp
  100709:	0f b7 05 9c 22 10 00 	movzwl 0x10229c,%eax
  100710:	0f b7 c0             	movzwl %ax,%eax
  100713:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
  100717:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
  10071b:	0f 00 d8             	ltr    %ax
  10071e:	c9                   	leave  
  10071f:	c3                   	ret    

00100720 <init_intr>:
  100720:	55                   	push   %ebp
  100721:	89 e5                	mov    %esp,%ebp
  100723:	83 ec 70             	sub    $0x70,%esp
  100726:	c7 45 fc 21 00 00 00 	movl   $0x21,-0x4(%ebp)
  10072d:	c6 45 fb ff          	movb   $0xff,-0x5(%ebp)
  100731:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
  100735:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100738:	ee                   	out    %al,(%dx)
  100739:	c7 45 f4 a1 00 00 00 	movl   $0xa1,-0xc(%ebp)
  100740:	c6 45 f3 ff          	movb   $0xff,-0xd(%ebp)
  100744:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100748:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10074b:	ee                   	out    %al,(%dx)
  10074c:	c7 45 ec 20 00 00 00 	movl   $0x20,-0x14(%ebp)
  100753:	c6 45 eb 11          	movb   $0x11,-0x15(%ebp)
  100757:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  10075b:	8b 55 ec             	mov    -0x14(%ebp),%edx
  10075e:	ee                   	out    %al,(%dx)
  10075f:	c7 45 e4 21 00 00 00 	movl   $0x21,-0x1c(%ebp)
  100766:	c6 45 e3 20          	movb   $0x20,-0x1d(%ebp)
  10076a:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
  10076e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100771:	ee                   	out    %al,(%dx)
  100772:	c7 45 dc 21 00 00 00 	movl   $0x21,-0x24(%ebp)
  100779:	c6 45 db 04          	movb   $0x4,-0x25(%ebp)
  10077d:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
  100781:	8b 55 dc             	mov    -0x24(%ebp),%edx
  100784:	ee                   	out    %al,(%dx)
  100785:	c7 45 d4 21 00 00 00 	movl   $0x21,-0x2c(%ebp)
  10078c:	c6 45 d3 03          	movb   $0x3,-0x2d(%ebp)
  100790:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
  100794:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  100797:	ee                   	out    %al,(%dx)
  100798:	c7 45 cc a0 00 00 00 	movl   $0xa0,-0x34(%ebp)
  10079f:	c6 45 cb 11          	movb   $0x11,-0x35(%ebp)
  1007a3:	0f b6 45 cb          	movzbl -0x35(%ebp),%eax
  1007a7:	8b 55 cc             	mov    -0x34(%ebp),%edx
  1007aa:	ee                   	out    %al,(%dx)
  1007ab:	c7 45 c4 a1 00 00 00 	movl   $0xa1,-0x3c(%ebp)
  1007b2:	c6 45 c3 28          	movb   $0x28,-0x3d(%ebp)
  1007b6:	0f b6 45 c3          	movzbl -0x3d(%ebp),%eax
  1007ba:	8b 55 c4             	mov    -0x3c(%ebp),%edx
  1007bd:	ee                   	out    %al,(%dx)
  1007be:	c7 45 bc a1 00 00 00 	movl   $0xa1,-0x44(%ebp)
  1007c5:	c6 45 bb 02          	movb   $0x2,-0x45(%ebp)
  1007c9:	0f b6 45 bb          	movzbl -0x45(%ebp),%eax
  1007cd:	8b 55 bc             	mov    -0x44(%ebp),%edx
  1007d0:	ee                   	out    %al,(%dx)
  1007d1:	c7 45 b4 a1 00 00 00 	movl   $0xa1,-0x4c(%ebp)
  1007d8:	c6 45 b3 03          	movb   $0x3,-0x4d(%ebp)
  1007dc:	0f b6 45 b3          	movzbl -0x4d(%ebp),%eax
  1007e0:	8b 55 b4             	mov    -0x4c(%ebp),%edx
  1007e3:	ee                   	out    %al,(%dx)
  1007e4:	c7 45 ac 20 00 00 00 	movl   $0x20,-0x54(%ebp)
  1007eb:	c6 45 ab 68          	movb   $0x68,-0x55(%ebp)
  1007ef:	0f b6 45 ab          	movzbl -0x55(%ebp),%eax
  1007f3:	8b 55 ac             	mov    -0x54(%ebp),%edx
  1007f6:	ee                   	out    %al,(%dx)
  1007f7:	c7 45 a4 20 00 00 00 	movl   $0x20,-0x5c(%ebp)
  1007fe:	c6 45 a3 0a          	movb   $0xa,-0x5d(%ebp)
  100802:	0f b6 45 a3          	movzbl -0x5d(%ebp),%eax
  100806:	8b 55 a4             	mov    -0x5c(%ebp),%edx
  100809:	ee                   	out    %al,(%dx)
  10080a:	c7 45 9c a0 00 00 00 	movl   $0xa0,-0x64(%ebp)
  100811:	c6 45 9b 68          	movb   $0x68,-0x65(%ebp)
  100815:	0f b6 45 9b          	movzbl -0x65(%ebp),%eax
  100819:	8b 55 9c             	mov    -0x64(%ebp),%edx
  10081c:	ee                   	out    %al,(%dx)
  10081d:	c7 45 94 a0 00 00 00 	movl   $0xa0,-0x6c(%ebp)
  100824:	c6 45 93 0a          	movb   $0xa,-0x6d(%ebp)
  100828:	0f b6 45 93          	movzbl -0x6d(%ebp),%eax
  10082c:	8b 55 94             	mov    -0x6c(%ebp),%edx
  10082f:	ee                   	out    %al,(%dx)
  100830:	c9                   	leave  
  100831:	c3                   	ret    

00100832 <save_idt>:
  100832:	55                   	push   %ebp
  100833:	89 e5                	mov    %esp,%ebp
  100835:	8b 45 0c             	mov    0xc(%ebp),%eax
  100838:	83 e8 01             	sub    $0x1,%eax
  10083b:	66 a3 32 21 10 00    	mov    %ax,0x102132
  100841:	8b 45 08             	mov    0x8(%ebp),%eax
  100844:	66 a3 34 21 10 00    	mov    %ax,0x102134
  10084a:	8b 45 08             	mov    0x8(%ebp),%eax
  10084d:	c1 e8 10             	shr    $0x10,%eax
  100850:	66 a3 36 21 10 00    	mov    %ax,0x102136
  100856:	b8 32 21 10 00       	mov    $0x102132,%eax
  10085b:	0f 01 18             	lidtl  (%eax)
  10085e:	5d                   	pop    %ebp
  10085f:	c3                   	ret    

00100860 <set_intr>:
  100860:	55                   	push   %ebp
  100861:	89 e5                	mov    %esp,%ebp
  100863:	8b 45 10             	mov    0x10(%ebp),%eax
  100866:	89 c2                	mov    %eax,%edx
  100868:	8b 45 08             	mov    0x8(%ebp),%eax
  10086b:	66 89 10             	mov    %dx,(%eax)
  10086e:	8b 45 0c             	mov    0xc(%ebp),%eax
  100871:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100878:	8b 45 08             	mov    0x8(%ebp),%eax
  10087b:	66 89 50 02          	mov    %dx,0x2(%eax)
  10087f:	8b 45 08             	mov    0x8(%ebp),%eax
  100882:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  100886:	8b 45 08             	mov    0x8(%ebp),%eax
  100889:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  10088d:	83 e2 f0             	and    $0xfffffff0,%edx
  100890:	83 ca 0e             	or     $0xe,%edx
  100893:	88 50 05             	mov    %dl,0x5(%eax)
  100896:	8b 45 08             	mov    0x8(%ebp),%eax
  100899:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  10089d:	83 e2 ef             	and    $0xffffffef,%edx
  1008a0:	88 50 05             	mov    %dl,0x5(%eax)
  1008a3:	8b 45 14             	mov    0x14(%ebp),%eax
  1008a6:	83 e0 03             	and    $0x3,%eax
  1008a9:	89 c2                	mov    %eax,%edx
  1008ab:	8b 45 08             	mov    0x8(%ebp),%eax
  1008ae:	83 e2 03             	and    $0x3,%edx
  1008b1:	89 d1                	mov    %edx,%ecx
  1008b3:	c1 e1 05             	shl    $0x5,%ecx
  1008b6:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  1008ba:	83 e2 9f             	and    $0xffffff9f,%edx
  1008bd:	09 ca                	or     %ecx,%edx
  1008bf:	88 50 05             	mov    %dl,0x5(%eax)
  1008c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1008c5:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  1008c9:	83 ca 80             	or     $0xffffff80,%edx
  1008cc:	88 50 05             	mov    %dl,0x5(%eax)
  1008cf:	8b 45 10             	mov    0x10(%ebp),%eax
  1008d2:	c1 e8 10             	shr    $0x10,%eax
  1008d5:	89 c2                	mov    %eax,%edx
  1008d7:	8b 45 08             	mov    0x8(%ebp),%eax
  1008da:	66 89 50 06          	mov    %dx,0x6(%eax)
  1008de:	5d                   	pop    %ebp
  1008df:	c3                   	ret    

001008e0 <set_trap>:
  1008e0:	55                   	push   %ebp
  1008e1:	89 e5                	mov    %esp,%ebp
  1008e3:	8b 45 10             	mov    0x10(%ebp),%eax
  1008e6:	89 c2                	mov    %eax,%edx
  1008e8:	8b 45 08             	mov    0x8(%ebp),%eax
  1008eb:	66 89 10             	mov    %dx,(%eax)
  1008ee:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008f1:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1008f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1008fb:	66 89 50 02          	mov    %dx,0x2(%eax)
  1008ff:	8b 45 08             	mov    0x8(%ebp),%eax
  100902:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  100906:	8b 45 08             	mov    0x8(%ebp),%eax
  100909:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  10090d:	83 ca 0f             	or     $0xf,%edx
  100910:	88 50 05             	mov    %dl,0x5(%eax)
  100913:	8b 45 08             	mov    0x8(%ebp),%eax
  100916:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  10091a:	83 e2 ef             	and    $0xffffffef,%edx
  10091d:	88 50 05             	mov    %dl,0x5(%eax)
  100920:	8b 45 14             	mov    0x14(%ebp),%eax
  100923:	83 e0 03             	and    $0x3,%eax
  100926:	89 c2                	mov    %eax,%edx
  100928:	8b 45 08             	mov    0x8(%ebp),%eax
  10092b:	83 e2 03             	and    $0x3,%edx
  10092e:	89 d1                	mov    %edx,%ecx
  100930:	c1 e1 05             	shl    $0x5,%ecx
  100933:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  100937:	83 e2 9f             	and    $0xffffff9f,%edx
  10093a:	09 ca                	or     %ecx,%edx
  10093c:	88 50 05             	mov    %dl,0x5(%eax)
  10093f:	8b 45 08             	mov    0x8(%ebp),%eax
  100942:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  100946:	83 ca 80             	or     $0xffffff80,%edx
  100949:	88 50 05             	mov    %dl,0x5(%eax)
  10094c:	8b 45 10             	mov    0x10(%ebp),%eax
  10094f:	c1 e8 10             	shr    $0x10,%eax
  100952:	89 c2                	mov    %eax,%edx
  100954:	8b 45 08             	mov    0x8(%ebp),%eax
  100957:	66 89 50 06          	mov    %dx,0x6(%eax)
  10095b:	5d                   	pop    %ebp
  10095c:	c3                   	ret    

0010095d <init_idt>:
  10095d:	55                   	push   %ebp
  10095e:	89 e5                	mov    %esp,%ebp
  100960:	83 ec 10             	sub    $0x10,%esp
  100963:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10096a:	eb 22                	jmp    10098e <init_idt+0x31>
  10096c:	ba d6 0b 10 00       	mov    $0x100bd6,%edx
  100971:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100974:	c1 e0 03             	shl    $0x3,%eax
  100977:	05 c0 22 10 00       	add    $0x1022c0,%eax
  10097c:	6a 00                	push   $0x0
  10097e:	52                   	push   %edx
  10097f:	6a 01                	push   $0x1
  100981:	50                   	push   %eax
  100982:	e8 59 ff ff ff       	call   1008e0 <set_trap>
  100987:	83 c4 10             	add    $0x10,%esp
  10098a:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  10098e:	81 7d fc ff 00 00 00 	cmpl   $0xff,-0x4(%ebp)
  100995:	7e d5                	jle    10096c <init_idt+0xf>
  100997:	b8 49 0b 10 00       	mov    $0x100b49,%eax
  10099c:	6a 00                	push   $0x0
  10099e:	50                   	push   %eax
  10099f:	6a 08                	push   $0x8
  1009a1:	68 c0 22 10 00       	push   $0x1022c0
  1009a6:	e8 35 ff ff ff       	call   1008e0 <set_trap>
  1009ab:	83 c4 10             	add    $0x10,%esp
  1009ae:	b8 53 0b 10 00       	mov    $0x100b53,%eax
  1009b3:	6a 00                	push   $0x0
  1009b5:	50                   	push   %eax
  1009b6:	6a 08                	push   $0x8
  1009b8:	68 c8 22 10 00       	push   $0x1022c8
  1009bd:	e8 1e ff ff ff       	call   1008e0 <set_trap>
  1009c2:	83 c4 10             	add    $0x10,%esp
  1009c5:	b8 5d 0b 10 00       	mov    $0x100b5d,%eax
  1009ca:	6a 00                	push   $0x0
  1009cc:	50                   	push   %eax
  1009cd:	6a 08                	push   $0x8
  1009cf:	68 d0 22 10 00       	push   $0x1022d0
  1009d4:	e8 07 ff ff ff       	call   1008e0 <set_trap>
  1009d9:	83 c4 10             	add    $0x10,%esp
  1009dc:	b8 64 0b 10 00       	mov    $0x100b64,%eax
  1009e1:	6a 00                	push   $0x0
  1009e3:	50                   	push   %eax
  1009e4:	6a 08                	push   $0x8
  1009e6:	68 d8 22 10 00       	push   $0x1022d8
  1009eb:	e8 f0 fe ff ff       	call   1008e0 <set_trap>
  1009f0:	83 c4 10             	add    $0x10,%esp
  1009f3:	b8 6b 0b 10 00       	mov    $0x100b6b,%eax
  1009f8:	6a 00                	push   $0x0
  1009fa:	50                   	push   %eax
  1009fb:	6a 08                	push   $0x8
  1009fd:	68 e0 22 10 00       	push   $0x1022e0
  100a02:	e8 d9 fe ff ff       	call   1008e0 <set_trap>
  100a07:	83 c4 10             	add    $0x10,%esp
  100a0a:	b8 72 0b 10 00       	mov    $0x100b72,%eax
  100a0f:	6a 00                	push   $0x0
  100a11:	50                   	push   %eax
  100a12:	6a 08                	push   $0x8
  100a14:	68 e8 22 10 00       	push   $0x1022e8
  100a19:	e8 c2 fe ff ff       	call   1008e0 <set_trap>
  100a1e:	83 c4 10             	add    $0x10,%esp
  100a21:	b8 79 0b 10 00       	mov    $0x100b79,%eax
  100a26:	6a 00                	push   $0x0
  100a28:	50                   	push   %eax
  100a29:	6a 08                	push   $0x8
  100a2b:	68 f0 22 10 00       	push   $0x1022f0
  100a30:	e8 ab fe ff ff       	call   1008e0 <set_trap>
  100a35:	83 c4 10             	add    $0x10,%esp
  100a38:	b8 80 0b 10 00       	mov    $0x100b80,%eax
  100a3d:	6a 00                	push   $0x0
  100a3f:	50                   	push   %eax
  100a40:	6a 08                	push   $0x8
  100a42:	68 f8 22 10 00       	push   $0x1022f8
  100a47:	e8 94 fe ff ff       	call   1008e0 <set_trap>
  100a4c:	83 c4 10             	add    $0x10,%esp
  100a4f:	b8 87 0b 10 00       	mov    $0x100b87,%eax
  100a54:	6a 00                	push   $0x0
  100a56:	50                   	push   %eax
  100a57:	6a 08                	push   $0x8
  100a59:	68 00 23 10 00       	push   $0x102300
  100a5e:	e8 7d fe ff ff       	call   1008e0 <set_trap>
  100a63:	83 c4 10             	add    $0x10,%esp
  100a66:	b8 8e 0b 10 00       	mov    $0x100b8e,%eax
  100a6b:	6a 00                	push   $0x0
  100a6d:	50                   	push   %eax
  100a6e:	6a 08                	push   $0x8
  100a70:	68 08 23 10 00       	push   $0x102308
  100a75:	e8 66 fe ff ff       	call   1008e0 <set_trap>
  100a7a:	83 c4 10             	add    $0x10,%esp
  100a7d:	b8 95 0b 10 00       	mov    $0x100b95,%eax
  100a82:	6a 00                	push   $0x0
  100a84:	50                   	push   %eax
  100a85:	6a 08                	push   $0x8
  100a87:	68 10 23 10 00       	push   $0x102310
  100a8c:	e8 4f fe ff ff       	call   1008e0 <set_trap>
  100a91:	83 c4 10             	add    $0x10,%esp
  100a94:	b8 9c 0b 10 00       	mov    $0x100b9c,%eax
  100a99:	6a 00                	push   $0x0
  100a9b:	50                   	push   %eax
  100a9c:	6a 08                	push   $0x8
  100a9e:	68 18 23 10 00       	push   $0x102318
  100aa3:	e8 38 fe ff ff       	call   1008e0 <set_trap>
  100aa8:	83 c4 10             	add    $0x10,%esp
  100aab:	b8 a3 0b 10 00       	mov    $0x100ba3,%eax
  100ab0:	6a 00                	push   $0x0
  100ab2:	50                   	push   %eax
  100ab3:	6a 08                	push   $0x8
  100ab5:	68 20 23 10 00       	push   $0x102320
  100aba:	e8 21 fe ff ff       	call   1008e0 <set_trap>
  100abf:	83 c4 10             	add    $0x10,%esp
  100ac2:	b8 aa 0b 10 00       	mov    $0x100baa,%eax
  100ac7:	6a 00                	push   $0x0
  100ac9:	50                   	push   %eax
  100aca:	6a 08                	push   $0x8
  100acc:	68 28 23 10 00       	push   $0x102328
  100ad1:	e8 0a fe ff ff       	call   1008e0 <set_trap>
  100ad6:	83 c4 10             	add    $0x10,%esp
  100ad9:	b8 b1 0b 10 00       	mov    $0x100bb1,%eax
  100ade:	6a 00                	push   $0x0
  100ae0:	50                   	push   %eax
  100ae1:	6a 08                	push   $0x8
  100ae3:	68 30 23 10 00       	push   $0x102330
  100ae8:	e8 f3 fd ff ff       	call   1008e0 <set_trap>
  100aed:	83 c4 10             	add    $0x10,%esp
  100af0:	b8 b8 0b 10 00       	mov    $0x100bb8,%eax
  100af5:	6a 00                	push   $0x0
  100af7:	50                   	push   %eax
  100af8:	6a 01                	push   $0x1
  100afa:	68 c0 23 10 00       	push   $0x1023c0
  100aff:	e8 5c fd ff ff       	call   100860 <set_intr>
  100b04:	83 c4 10             	add    $0x10,%esp
  100b07:	b8 c2 0b 10 00       	mov    $0x100bc2,%eax
  100b0c:	6a 00                	push   $0x0
  100b0e:	50                   	push   %eax
  100b0f:	6a 01                	push   $0x1
  100b11:	68 c8 23 10 00       	push   $0x1023c8
  100b16:	e8 45 fd ff ff       	call   100860 <set_intr>
  100b1b:	83 c4 10             	add    $0x10,%esp
  100b1e:	b8 cc 0b 10 00       	mov    $0x100bcc,%eax
  100b23:	6a 00                	push   $0x0
  100b25:	50                   	push   %eax
  100b26:	6a 01                	push   $0x1
  100b28:	68 c0 26 10 00       	push   $0x1026c0
  100b2d:	e8 ae fd ff ff       	call   1008e0 <set_trap>
  100b32:	83 c4 10             	add    $0x10,%esp
  100b35:	68 00 08 00 00       	push   $0x800
  100b3a:	68 c0 22 10 00       	push   $0x1022c0
  100b3f:	e8 ee fc ff ff       	call   100832 <save_idt>
  100b44:	83 c4 08             	add    $0x8,%esp
  100b47:	c9                   	leave  
  100b48:	c3                   	ret    

00100b49 <vec0>:
  100b49:	fa                   	cli    
  100b4a:	6a 00                	push   $0x0
  100b4c:	6a 00                	push   $0x0
  100b4e:	e9 8a 00 00 00       	jmp    100bdd <asm_do_irq>

00100b53 <vec1>:
  100b53:	fa                   	cli    
  100b54:	6a 00                	push   $0x0
  100b56:	6a 01                	push   $0x1
  100b58:	e9 80 00 00 00       	jmp    100bdd <asm_do_irq>

00100b5d <vec2>:
  100b5d:	fa                   	cli    
  100b5e:	6a 00                	push   $0x0
  100b60:	6a 02                	push   $0x2
  100b62:	eb 79                	jmp    100bdd <asm_do_irq>

00100b64 <vec3>:
  100b64:	fa                   	cli    
  100b65:	6a 00                	push   $0x0
  100b67:	6a 03                	push   $0x3
  100b69:	eb 72                	jmp    100bdd <asm_do_irq>

00100b6b <vec4>:
  100b6b:	fa                   	cli    
  100b6c:	6a 00                	push   $0x0
  100b6e:	6a 04                	push   $0x4
  100b70:	eb 6b                	jmp    100bdd <asm_do_irq>

00100b72 <vec5>:
  100b72:	fa                   	cli    
  100b73:	6a 00                	push   $0x0
  100b75:	6a 05                	push   $0x5
  100b77:	eb 64                	jmp    100bdd <asm_do_irq>

00100b79 <vec6>:
  100b79:	fa                   	cli    
  100b7a:	6a 00                	push   $0x0
  100b7c:	6a 06                	push   $0x6
  100b7e:	eb 5d                	jmp    100bdd <asm_do_irq>

00100b80 <vec7>:
  100b80:	fa                   	cli    
  100b81:	6a 00                	push   $0x0
  100b83:	6a 07                	push   $0x7
  100b85:	eb 56                	jmp    100bdd <asm_do_irq>

00100b87 <vec8>:
  100b87:	fa                   	cli    
  100b88:	6a 00                	push   $0x0
  100b8a:	6a 08                	push   $0x8
  100b8c:	eb 4f                	jmp    100bdd <asm_do_irq>

00100b8e <vec9>:
  100b8e:	fa                   	cli    
  100b8f:	6a 00                	push   $0x0
  100b91:	6a 09                	push   $0x9
  100b93:	eb 48                	jmp    100bdd <asm_do_irq>

00100b95 <vec10>:
  100b95:	fa                   	cli    
  100b96:	6a 00                	push   $0x0
  100b98:	6a 0a                	push   $0xa
  100b9a:	eb 41                	jmp    100bdd <asm_do_irq>

00100b9c <vec11>:
  100b9c:	fa                   	cli    
  100b9d:	6a 00                	push   $0x0
  100b9f:	6a 0b                	push   $0xb
  100ba1:	eb 3a                	jmp    100bdd <asm_do_irq>

00100ba3 <vec12>:
  100ba3:	fa                   	cli    
  100ba4:	6a 00                	push   $0x0
  100ba6:	6a 0c                	push   $0xc
  100ba8:	eb 33                	jmp    100bdd <asm_do_irq>

00100baa <vec13>:
  100baa:	fa                   	cli    
  100bab:	6a 00                	push   $0x0
  100bad:	6a 0d                	push   $0xd
  100baf:	eb 2c                	jmp    100bdd <asm_do_irq>

00100bb1 <vec14>:
  100bb1:	fa                   	cli    
  100bb2:	6a 00                	push   $0x0
  100bb4:	6a 0e                	push   $0xe
  100bb6:	eb 25                	jmp    100bdd <asm_do_irq>

00100bb8 <irq0>:
  100bb8:	fa                   	cli    
  100bb9:	6a 00                	push   $0x0
  100bbb:	68 e8 03 00 00       	push   $0x3e8
  100bc0:	eb 1b                	jmp    100bdd <asm_do_irq>

00100bc2 <irq1>:
  100bc2:	fa                   	cli    
  100bc3:	6a 00                	push   $0x0
  100bc5:	68 e9 03 00 00       	push   $0x3e9
  100bca:	eb 11                	jmp    100bdd <asm_do_irq>

00100bcc <syscall>:
  100bcc:	fa                   	cli    
  100bcd:	6a 00                	push   $0x0
  100bcf:	68 80 00 00 00       	push   $0x80
  100bd4:	eb 07                	jmp    100bdd <asm_do_irq>

00100bd6 <irq_empty>:
  100bd6:	fa                   	cli    
  100bd7:	6a 00                	push   $0x0
  100bd9:	6a ff                	push   $0xffffffff
  100bdb:	eb 00                	jmp    100bdd <asm_do_irq>

00100bdd <asm_do_irq>:
  100bdd:	60                   	pusha  
  100bde:	54                   	push   %esp
  100bdf:	e8 09 00 00 00       	call   100bed <irq_handle>
  100be4:	83 c4 04             	add    $0x4,%esp
  100be7:	61                   	popa   
  100be8:	83 c4 08             	add    $0x8,%esp
  100beb:	fb                   	sti    
  100bec:	cf                   	iret   

00100bed <irq_handle>:
  100bed:	55                   	push   %ebp
  100bee:	89 e5                	mov    %esp,%ebp
  100bf0:	83 ec 38             	sub    $0x38,%esp
  100bf3:	8b 45 08             	mov    0x8(%ebp),%eax
  100bf6:	8b 40 20             	mov    0x20(%eax),%eax
  100bf9:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  100bfe:	75 0a                	jne    100c0a <irq_handle+0x1d>
  100c00:	e8 fb f3 ff ff       	call   100000 <timer_event>
  100c05:	e9 6d 01 00 00       	jmp    100d77 <irq_handle+0x18a>
  100c0a:	8b 45 08             	mov    0x8(%ebp),%eax
  100c0d:	8b 40 20             	mov    0x20(%eax),%eax
  100c10:	3d e9 03 00 00       	cmp    $0x3e9,%eax
  100c15:	75 7b                	jne    100c92 <irq_handle+0xa5>
  100c17:	c7 45 ec 60 00 00 00 	movl   $0x60,-0x14(%ebp)
  100c1e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c21:	89 c2                	mov    %eax,%edx
  100c23:	ec                   	in     (%dx),%al
  100c24:	88 45 eb             	mov    %al,-0x15(%ebp)
  100c27:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  100c2b:	0f b6 c0             	movzbl %al,%eax
  100c2e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c31:	c7 45 e4 61 00 00 00 	movl   $0x61,-0x1c(%ebp)
  100c38:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100c3b:	89 c2                	mov    %eax,%edx
  100c3d:	ec                   	in     (%dx),%al
  100c3e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  100c41:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
  100c45:	0f b6 c0             	movzbl %al,%eax
  100c48:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100c4b:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100c4e:	83 c8 80             	or     $0xffffff80,%eax
  100c51:	0f b6 c0             	movzbl %al,%eax
  100c54:	c7 45 dc 61 00 00 00 	movl   $0x61,-0x24(%ebp)
  100c5b:	88 45 db             	mov    %al,-0x25(%ebp)
  100c5e:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
  100c62:	8b 55 dc             	mov    -0x24(%ebp),%edx
  100c65:	ee                   	out    %al,(%dx)
  100c66:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100c69:	0f b6 c0             	movzbl %al,%eax
  100c6c:	c7 45 d4 61 00 00 00 	movl   $0x61,-0x2c(%ebp)
  100c73:	88 45 d3             	mov    %al,-0x2d(%ebp)
  100c76:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
  100c7a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  100c7d:	ee                   	out    %al,(%dx)
  100c7e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c81:	83 ec 0c             	sub    $0xc,%esp
  100c84:	50                   	push   %eax
  100c85:	e8 a1 f4 ff ff       	call   10012b <keyboard_event>
  100c8a:	83 c4 10             	add    $0x10,%esp
  100c8d:	e9 e5 00 00 00       	jmp    100d77 <irq_handle+0x18a>
  100c92:	8b 45 08             	mov    0x8(%ebp),%eax
  100c95:	8b 40 20             	mov    0x20(%eax),%eax
  100c98:	3d 80 00 00 00       	cmp    $0x80,%eax
  100c9d:	0f 85 d4 00 00 00    	jne    100d77 <irq_handle+0x18a>
  100ca3:	8b 45 08             	mov    0x8(%ebp),%eax
  100ca6:	8b 40 1c             	mov    0x1c(%eax),%eax
  100ca9:	83 f8 01             	cmp    $0x1,%eax
  100cac:	75 36                	jne    100ce4 <irq_handle+0xf7>
  100cae:	8b 45 08             	mov    0x8(%ebp),%eax
  100cb1:	8b 40 10             	mov    0x10(%eax),%eax
  100cb4:	83 f8 01             	cmp    $0x1,%eax
  100cb7:	0f 85 ba 00 00 00    	jne    100d77 <irq_handle+0x18a>
  100cbd:	83 ec 0c             	sub    $0xc,%esp
  100cc0:	68 47 15 10 00       	push   $0x101547
  100cc5:	e8 d7 03 00 00       	call   1010a1 <printk>
  100cca:	83 c4 10             	add    $0x10,%esp
  100ccd:	8b 45 08             	mov    0x8(%ebp),%eax
  100cd0:	8b 40 18             	mov    0x18(%eax),%eax
  100cd3:	83 ec 0c             	sub    $0xc,%esp
  100cd6:	50                   	push   %eax
  100cd7:	e8 c5 03 00 00       	call   1010a1 <printk>
  100cdc:	83 c4 10             	add    $0x10,%esp
  100cdf:	e9 93 00 00 00       	jmp    100d77 <irq_handle+0x18a>
  100ce4:	8b 45 08             	mov    0x8(%ebp),%eax
  100ce7:	8b 40 1c             	mov    0x1c(%eax),%eax
  100cea:	83 f8 02             	cmp    $0x2,%eax
  100ced:	75 2b                	jne    100d1a <irq_handle+0x12d>
  100cef:	8b 45 08             	mov    0x8(%ebp),%eax
  100cf2:	8b 40 10             	mov    0x10(%eax),%eax
  100cf5:	85 c0                	test   %eax,%eax
  100cf7:	75 0f                	jne    100d08 <irq_handle+0x11b>
  100cf9:	e8 14 f3 ff ff       	call   100012 <get_time>
  100cfe:	89 c2                	mov    %eax,%edx
  100d00:	8b 45 08             	mov    0x8(%ebp),%eax
  100d03:	89 50 1c             	mov    %edx,0x1c(%eax)
  100d06:	eb 6f                	jmp    100d77 <irq_handle+0x18a>
  100d08:	8b 45 08             	mov    0x8(%ebp),%eax
  100d0b:	8b 40 10             	mov    0x10(%eax),%eax
  100d0e:	83 f8 01             	cmp    $0x1,%eax
  100d11:	75 64                	jne    100d77 <irq_handle+0x18a>
  100d13:	e8 04 f3 ff ff       	call   10001c <time_pop>
  100d18:	eb 5d                	jmp    100d77 <irq_handle+0x18a>
  100d1a:	8b 45 08             	mov    0x8(%ebp),%eax
  100d1d:	8b 40 1c             	mov    0x1c(%eax),%eax
  100d20:	83 f8 03             	cmp    $0x3,%eax
  100d23:	75 2b                	jne    100d50 <irq_handle+0x163>
  100d25:	8b 45 08             	mov    0x8(%ebp),%eax
  100d28:	8b 40 10             	mov    0x10(%eax),%eax
  100d2b:	85 c0                	test   %eax,%eax
  100d2d:	75 0f                	jne    100d3e <irq_handle+0x151>
  100d2f:	e8 de f3 ff ff       	call   100112 <last_key_code>
  100d34:	89 c2                	mov    %eax,%edx
  100d36:	8b 45 08             	mov    0x8(%ebp),%eax
  100d39:	89 50 1c             	mov    %edx,0x1c(%eax)
  100d3c:	eb 39                	jmp    100d77 <irq_handle+0x18a>
  100d3e:	8b 45 08             	mov    0x8(%ebp),%eax
  100d41:	8b 40 10             	mov    0x10(%eax),%eax
  100d44:	83 f8 01             	cmp    $0x1,%eax
  100d47:	75 2e                	jne    100d77 <irq_handle+0x18a>
  100d49:	e8 ce f3 ff ff       	call   10011c <reset_last_key>
  100d4e:	eb 27                	jmp    100d77 <irq_handle+0x18a>
  100d50:	8b 45 08             	mov    0x8(%ebp),%eax
  100d53:	8b 40 1c             	mov    0x1c(%eax),%eax
  100d56:	83 f8 04             	cmp    $0x4,%eax
  100d59:	75 1c                	jne    100d77 <irq_handle+0x18a>
  100d5b:	8b 45 08             	mov    0x8(%ebp),%eax
  100d5e:	8b 40 10             	mov    0x10(%eax),%eax
  100d61:	83 ec 04             	sub    $0x4,%esp
  100d64:	68 00 00 01 00       	push   $0x10000
  100d69:	50                   	push   %eax
  100d6a:	68 00 00 0a 00       	push   $0xa0000
  100d6f:	e8 52 03 00 00       	call   1010c6 <my_memcpy>
  100d74:	83 c4 10             	add    $0x10,%esp
  100d77:	c9                   	leave  
  100d78:	c3                   	ret    

00100d79 <change>:
  100d79:	55                   	push   %ebp
  100d7a:	89 e5                	mov    %esp,%ebp
  100d7c:	53                   	push   %ebx
  100d7d:	83 c4 80             	add    $0xffffff80,%esp
  100d80:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100d87:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100d8e:	8b 45 08             	mov    0x8(%ebp),%eax
  100d91:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100d94:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  100d98:	75 14                	jne    100dae <change+0x35>
  100d9a:	8b 45 0c             	mov    0xc(%ebp),%eax
  100d9d:	c6 00 30             	movb   $0x30,(%eax)
  100da0:	8b 45 0c             	mov    0xc(%ebp),%eax
  100da3:	83 c0 01             	add    $0x1,%eax
  100da6:	c6 00 00             	movb   $0x0,(%eax)
  100da9:	e9 a5 00 00 00       	jmp    100e53 <change+0xda>
  100dae:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  100db2:	79 1d                	jns    100dd1 <change+0x58>
  100db4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100db7:	8d 50 01             	lea    0x1(%eax),%edx
  100dba:	89 55 f4             	mov    %edx,-0xc(%ebp)
  100dbd:	89 c2                	mov    %eax,%edx
  100dbf:	8b 45 0c             	mov    0xc(%ebp),%eax
  100dc2:	01 d0                	add    %edx,%eax
  100dc4:	c6 00 2d             	movb   $0x2d,(%eax)
  100dc7:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100dca:	f7 d8                	neg    %eax
  100dcc:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100dcf:	eb 06                	jmp    100dd7 <change+0x5e>
  100dd1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100dd4:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100dd7:	eb 40                	jmp    100e19 <change+0xa0>
  100dd9:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  100ddc:	8d 41 01             	lea    0x1(%ecx),%eax
  100ddf:	89 45 f8             	mov    %eax,-0x8(%ebp)
  100de2:	8b 5d f0             	mov    -0x10(%ebp),%ebx
  100de5:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  100dea:	89 d8                	mov    %ebx,%eax
  100dec:	f7 e2                	mul    %edx
  100dee:	c1 ea 03             	shr    $0x3,%edx
  100df1:	89 d0                	mov    %edx,%eax
  100df3:	c1 e0 02             	shl    $0x2,%eax
  100df6:	01 d0                	add    %edx,%eax
  100df8:	01 c0                	add    %eax,%eax
  100dfa:	29 c3                	sub    %eax,%ebx
  100dfc:	89 da                	mov    %ebx,%edx
  100dfe:	89 d0                	mov    %edx,%eax
  100e00:	83 c0 30             	add    $0x30,%eax
  100e03:	88 44 0d 88          	mov    %al,-0x78(%ebp,%ecx,1)
  100e07:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100e0a:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  100e0f:	f7 e2                	mul    %edx
  100e11:	89 d0                	mov    %edx,%eax
  100e13:	c1 e8 03             	shr    $0x3,%eax
  100e16:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100e19:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  100e1d:	75 ba                	jne    100dd9 <change+0x60>
  100e1f:	eb 21                	jmp    100e42 <change+0xc9>
  100e21:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e24:	8d 50 01             	lea    0x1(%eax),%edx
  100e27:	89 55 f4             	mov    %edx,-0xc(%ebp)
  100e2a:	89 c2                	mov    %eax,%edx
  100e2c:	8b 45 0c             	mov    0xc(%ebp),%eax
  100e2f:	01 c2                	add    %eax,%edx
  100e31:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
  100e35:	8d 4d 88             	lea    -0x78(%ebp),%ecx
  100e38:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100e3b:	01 c8                	add    %ecx,%eax
  100e3d:	0f b6 00             	movzbl (%eax),%eax
  100e40:	88 02                	mov    %al,(%edx)
  100e42:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  100e46:	75 d9                	jne    100e21 <change+0xa8>
  100e48:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100e4b:	8b 45 0c             	mov    0xc(%ebp),%eax
  100e4e:	01 d0                	add    %edx,%eax
  100e50:	c6 00 00             	movb   $0x0,(%eax)
  100e53:	83 ec 80             	sub    $0xffffff80,%esp
  100e56:	5b                   	pop    %ebx
  100e57:	5d                   	pop    %ebp
  100e58:	c3                   	ret    

00100e59 <change_x>:
  100e59:	55                   	push   %ebp
  100e5a:	89 e5                	mov    %esp,%ebp
  100e5c:	83 ec 70             	sub    $0x70,%esp
  100e5f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100e66:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100e6d:	8b 45 08             	mov    0x8(%ebp),%eax
  100e70:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100e73:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100e77:	75 11                	jne    100e8a <change_x+0x31>
  100e79:	8b 45 0c             	mov    0xc(%ebp),%eax
  100e7c:	c6 00 30             	movb   $0x30,(%eax)
  100e7f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100e82:	83 c0 01             	add    $0x1,%eax
  100e85:	c6 00 00             	movb   $0x0,(%eax)
  100e88:	eb 7e                	jmp    100f08 <change_x+0xaf>
  100e8a:	eb 42                	jmp    100ece <change_x+0x75>
  100e8c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e8f:	83 e0 0f             	and    $0xf,%eax
  100e92:	83 f8 09             	cmp    $0x9,%eax
  100e95:	77 18                	ja     100eaf <change_x+0x56>
  100e97:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100e9a:	8d 50 01             	lea    0x1(%eax),%edx
  100e9d:	89 55 fc             	mov    %edx,-0x4(%ebp)
  100ea0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ea3:	83 e2 0f             	and    $0xf,%edx
  100ea6:	83 c2 30             	add    $0x30,%edx
  100ea9:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
  100ead:	eb 16                	jmp    100ec5 <change_x+0x6c>
  100eaf:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100eb2:	8d 50 01             	lea    0x1(%eax),%edx
  100eb5:	89 55 fc             	mov    %edx,-0x4(%ebp)
  100eb8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ebb:	83 e2 0f             	and    $0xf,%edx
  100ebe:	83 c2 37             	add    $0x37,%edx
  100ec1:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
  100ec5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ec8:	c1 e8 04             	shr    $0x4,%eax
  100ecb:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100ece:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100ed2:	75 b8                	jne    100e8c <change_x+0x33>
  100ed4:	eb 21                	jmp    100ef7 <change_x+0x9e>
  100ed6:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100ed9:	8d 50 01             	lea    0x1(%eax),%edx
  100edc:	89 55 f8             	mov    %edx,-0x8(%ebp)
  100edf:	89 c2                	mov    %eax,%edx
  100ee1:	8b 45 0c             	mov    0xc(%ebp),%eax
  100ee4:	01 c2                	add    %eax,%edx
  100ee6:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
  100eea:	8d 4d 90             	lea    -0x70(%ebp),%ecx
  100eed:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100ef0:	01 c8                	add    %ecx,%eax
  100ef2:	0f b6 00             	movzbl (%eax),%eax
  100ef5:	88 02                	mov    %al,(%edx)
  100ef7:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  100efb:	75 d9                	jne    100ed6 <change_x+0x7d>
  100efd:	8b 55 f8             	mov    -0x8(%ebp),%edx
  100f00:	8b 45 0c             	mov    0xc(%ebp),%eax
  100f03:	01 d0                	add    %edx,%eax
  100f05:	c6 00 00             	movb   $0x0,(%eax)
  100f08:	c9                   	leave  
  100f09:	c3                   	ret    

00100f0a <v_fprintf>:
  100f0a:	55                   	push   %ebp
  100f0b:	89 e5                	mov    %esp,%ebp
  100f0d:	81 ec 88 00 00 00    	sub    $0x88,%esp
  100f13:	8b 45 0c             	mov    0xc(%ebp),%eax
  100f16:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100f19:	8b 45 10             	mov    0x10(%ebp),%eax
  100f1c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100f1f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  100f26:	e9 61 01 00 00       	jmp    10108c <v_fprintf+0x182>
  100f2b:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100f2e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100f31:	01 d0                	add    %edx,%eax
  100f33:	0f b6 00             	movzbl (%eax),%eax
  100f36:	3c 25                	cmp    $0x25,%al
  100f38:	74 27                	je     100f61 <v_fprintf+0x57>
  100f3a:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100f3d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100f40:	01 d0                	add    %edx,%eax
  100f42:	0f b6 00             	movzbl (%eax),%eax
  100f45:	88 45 eb             	mov    %al,-0x15(%ebp)
  100f48:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
  100f4c:	83 ec 0c             	sub    $0xc,%esp
  100f4f:	50                   	push   %eax
  100f50:	8b 45 08             	mov    0x8(%ebp),%eax
  100f53:	ff d0                	call   *%eax
  100f55:	83 c4 10             	add    $0x10,%esp
  100f58:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  100f5c:	e9 2b 01 00 00       	jmp    10108c <v_fprintf+0x182>
  100f61:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  100f65:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100f68:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100f6b:	01 d0                	add    %edx,%eax
  100f6d:	0f b6 00             	movzbl (%eax),%eax
  100f70:	3c 25                	cmp    $0x25,%al
  100f72:	75 16                	jne    100f8a <v_fprintf+0x80>
  100f74:	83 ec 0c             	sub    $0xc,%esp
  100f77:	6a 25                	push   $0x25
  100f79:	8b 45 08             	mov    0x8(%ebp),%eax
  100f7c:	ff d0                	call   *%eax
  100f7e:	83 c4 10             	add    $0x10,%esp
  100f81:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  100f85:	e9 02 01 00 00       	jmp    10108c <v_fprintf+0x182>
  100f8a:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100f8d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100f90:	01 d0                	add    %edx,%eax
  100f92:	0f b6 00             	movzbl (%eax),%eax
  100f95:	3c 63                	cmp    $0x63,%al
  100f97:	75 26                	jne    100fbf <v_fprintf+0xb5>
  100f99:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  100f9d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fa0:	0f b6 00             	movzbl (%eax),%eax
  100fa3:	88 45 eb             	mov    %al,-0x15(%ebp)
  100fa6:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
  100faa:	83 ec 0c             	sub    $0xc,%esp
  100fad:	50                   	push   %eax
  100fae:	8b 45 08             	mov    0x8(%ebp),%eax
  100fb1:	ff d0                	call   *%eax
  100fb3:	83 c4 10             	add    $0x10,%esp
  100fb6:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  100fba:	e9 cd 00 00 00       	jmp    10108c <v_fprintf+0x182>
  100fbf:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100fc2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100fc5:	01 d0                	add    %edx,%eax
  100fc7:	0f b6 00             	movzbl (%eax),%eax
  100fca:	3c 64                	cmp    $0x64,%al
  100fcc:	75 36                	jne    101004 <v_fprintf+0xfa>
  100fce:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  100fd2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fd5:	8b 00                	mov    (%eax),%eax
  100fd7:	83 ec 08             	sub    $0x8,%esp
  100fda:	8d 55 87             	lea    -0x79(%ebp),%edx
  100fdd:	52                   	push   %edx
  100fde:	50                   	push   %eax
  100fdf:	e8 95 fd ff ff       	call   100d79 <change>
  100fe4:	83 c4 10             	add    $0x10,%esp
  100fe7:	83 ec 04             	sub    $0x4,%esp
  100fea:	6a 00                	push   $0x0
  100fec:	8d 45 87             	lea    -0x79(%ebp),%eax
  100fef:	50                   	push   %eax
  100ff0:	ff 75 08             	pushl  0x8(%ebp)
  100ff3:	e8 12 ff ff ff       	call   100f0a <v_fprintf>
  100ff8:	83 c4 10             	add    $0x10,%esp
  100ffb:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  100fff:	e9 88 00 00 00       	jmp    10108c <v_fprintf+0x182>
  101004:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101007:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10100a:	01 d0                	add    %edx,%eax
  10100c:	0f b6 00             	movzbl (%eax),%eax
  10100f:	3c 78                	cmp    $0x78,%al
  101011:	75 33                	jne    101046 <v_fprintf+0x13c>
  101013:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  101017:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10101a:	8b 00                	mov    (%eax),%eax
  10101c:	83 ec 08             	sub    $0x8,%esp
  10101f:	8d 55 87             	lea    -0x79(%ebp),%edx
  101022:	52                   	push   %edx
  101023:	50                   	push   %eax
  101024:	e8 30 fe ff ff       	call   100e59 <change_x>
  101029:	83 c4 10             	add    $0x10,%esp
  10102c:	83 ec 04             	sub    $0x4,%esp
  10102f:	6a 00                	push   $0x0
  101031:	8d 45 87             	lea    -0x79(%ebp),%eax
  101034:	50                   	push   %eax
  101035:	ff 75 08             	pushl  0x8(%ebp)
  101038:	e8 cd fe ff ff       	call   100f0a <v_fprintf>
  10103d:	83 c4 10             	add    $0x10,%esp
  101040:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  101044:	eb 46                	jmp    10108c <v_fprintf+0x182>
  101046:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101049:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10104c:	01 d0                	add    %edx,%eax
  10104e:	0f b6 00             	movzbl (%eax),%eax
  101051:	3c 73                	cmp    $0x73,%al
  101053:	75 20                	jne    101075 <v_fprintf+0x16b>
  101055:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  101059:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10105c:	8b 00                	mov    (%eax),%eax
  10105e:	83 ec 04             	sub    $0x4,%esp
  101061:	6a 00                	push   $0x0
  101063:	50                   	push   %eax
  101064:	ff 75 08             	pushl  0x8(%ebp)
  101067:	e8 9e fe ff ff       	call   100f0a <v_fprintf>
  10106c:	83 c4 10             	add    $0x10,%esp
  10106f:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  101073:	eb 17                	jmp    10108c <v_fprintf+0x182>
  101075:	83 ec 04             	sub    $0x4,%esp
  101078:	6a 00                	push   $0x0
  10107a:	68 5c 15 10 00       	push   $0x10155c
  10107f:	ff 75 08             	pushl  0x8(%ebp)
  101082:	e8 83 fe ff ff       	call   100f0a <v_fprintf>
  101087:	83 c4 10             	add    $0x10,%esp
  10108a:	eb 13                	jmp    10109f <v_fprintf+0x195>
  10108c:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10108f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101092:	01 d0                	add    %edx,%eax
  101094:	0f b6 00             	movzbl (%eax),%eax
  101097:	84 c0                	test   %al,%al
  101099:	0f 85 8c fe ff ff    	jne    100f2b <v_fprintf+0x21>
  10109f:	c9                   	leave  
  1010a0:	c3                   	ret    

001010a1 <printk>:
  1010a1:	55                   	push   %ebp
  1010a2:	89 e5                	mov    %esp,%ebp
  1010a4:	83 ec 18             	sub    $0x18,%esp
  1010a7:	8d 45 0c             	lea    0xc(%ebp),%eax
  1010aa:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1010ad:	8b 45 08             	mov    0x8(%ebp),%eax
  1010b0:	83 ec 04             	sub    $0x4,%esp
  1010b3:	ff 75 f4             	pushl  -0xc(%ebp)
  1010b6:	50                   	push   %eax
  1010b7:	68 ae 02 10 00       	push   $0x1002ae
  1010bc:	e8 49 fe ff ff       	call   100f0a <v_fprintf>
  1010c1:	83 c4 10             	add    $0x10,%esp
  1010c4:	c9                   	leave  
  1010c5:	c3                   	ret    

001010c6 <my_memcpy>:
  1010c6:	55                   	push   %ebp
  1010c7:	89 e5                	mov    %esp,%ebp
  1010c9:	57                   	push   %edi
  1010ca:	56                   	push   %esi
  1010cb:	53                   	push   %ebx
  1010cc:	8b 45 10             	mov    0x10(%ebp),%eax
  1010cf:	8b 55 0c             	mov    0xc(%ebp),%edx
  1010d2:	8b 5d 08             	mov    0x8(%ebp),%ebx
  1010d5:	89 c1                	mov    %eax,%ecx
  1010d7:	89 d6                	mov    %edx,%esi
  1010d9:	89 df                	mov    %ebx,%edi
  1010db:	fc                   	cld    
  1010dc:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  1010de:	5b                   	pop    %ebx
  1010df:	5e                   	pop    %esi
  1010e0:	5f                   	pop    %edi
  1010e1:	5d                   	pop    %ebp
  1010e2:	c3                   	ret    

001010e3 <my_memset>:
  1010e3:	55                   	push   %ebp
  1010e4:	89 e5                	mov    %esp,%ebp
  1010e6:	57                   	push   %edi
  1010e7:	53                   	push   %ebx
  1010e8:	8b 55 10             	mov    0x10(%ebp),%edx
  1010eb:	8b 45 0c             	mov    0xc(%ebp),%eax
  1010ee:	8b 5d 08             	mov    0x8(%ebp),%ebx
  1010f1:	89 d1                	mov    %edx,%ecx
  1010f3:	89 df                	mov    %ebx,%edi
  1010f5:	fc                   	cld    
  1010f6:	f3 aa                	rep stos %al,%es:(%edi)
  1010f8:	5b                   	pop    %ebx
  1010f9:	5f                   	pop    %edi
  1010fa:	5d                   	pop    %ebp
  1010fb:	c3                   	ret    

001010fc <inb>:
  1010fc:	55                   	push   %ebp
  1010fd:	89 e5                	mov    %esp,%ebp
  1010ff:	83 ec 10             	sub    $0x10,%esp
  101102:	8b 45 08             	mov    0x8(%ebp),%eax
  101105:	89 c2                	mov    %eax,%edx
  101107:	ec                   	in     (%dx),%al
  101108:	88 45 ff             	mov    %al,-0x1(%ebp)
  10110b:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  10110f:	c9                   	leave  
  101110:	c3                   	ret    

00101111 <insl>:
  101111:	55                   	push   %ebp
  101112:	89 e5                	mov    %esp,%ebp
  101114:	57                   	push   %edi
  101115:	53                   	push   %ebx
  101116:	8b 55 08             	mov    0x8(%ebp),%edx
  101119:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  10111c:	8b 45 10             	mov    0x10(%ebp),%eax
  10111f:	89 cb                	mov    %ecx,%ebx
  101121:	89 df                	mov    %ebx,%edi
  101123:	89 c1                	mov    %eax,%ecx
  101125:	fc                   	cld    
  101126:	f2 6d                	repnz insl (%dx),%es:(%edi)
  101128:	89 c8                	mov    %ecx,%eax
  10112a:	89 fb                	mov    %edi,%ebx
  10112c:	89 5d 0c             	mov    %ebx,0xc(%ebp)
  10112f:	89 45 10             	mov    %eax,0x10(%ebp)
  101132:	5b                   	pop    %ebx
  101133:	5f                   	pop    %edi
  101134:	5d                   	pop    %ebp
  101135:	c3                   	ret    

00101136 <outb>:
  101136:	55                   	push   %ebp
  101137:	89 e5                	mov    %esp,%ebp
  101139:	83 ec 04             	sub    $0x4,%esp
  10113c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10113f:	88 45 fc             	mov    %al,-0x4(%ebp)
  101142:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  101146:	8b 55 08             	mov    0x8(%ebp),%edx
  101149:	ee                   	out    %al,(%dx)
  10114a:	c9                   	leave  
  10114b:	c3                   	ret    

0010114c <waitdisk>:
  10114c:	55                   	push   %ebp
  10114d:	89 e5                	mov    %esp,%ebp
  10114f:	90                   	nop
  101150:	68 f7 01 00 00       	push   $0x1f7
  101155:	e8 a2 ff ff ff       	call   1010fc <inb>
  10115a:	83 c4 04             	add    $0x4,%esp
  10115d:	0f b6 c0             	movzbl %al,%eax
  101160:	25 c0 00 00 00       	and    $0xc0,%eax
  101165:	83 f8 40             	cmp    $0x40,%eax
  101168:	75 e6                	jne    101150 <waitdisk+0x4>
  10116a:	c9                   	leave  
  10116b:	c3                   	ret    

0010116c <readsect>:
  10116c:	55                   	push   %ebp
  10116d:	89 e5                	mov    %esp,%ebp
  10116f:	e8 d8 ff ff ff       	call   10114c <waitdisk>
  101174:	6a 01                	push   $0x1
  101176:	68 f2 01 00 00       	push   $0x1f2
  10117b:	e8 b6 ff ff ff       	call   101136 <outb>
  101180:	83 c4 08             	add    $0x8,%esp
  101183:	8b 45 0c             	mov    0xc(%ebp),%eax
  101186:	0f b6 c0             	movzbl %al,%eax
  101189:	50                   	push   %eax
  10118a:	68 f3 01 00 00       	push   $0x1f3
  10118f:	e8 a2 ff ff ff       	call   101136 <outb>
  101194:	83 c4 08             	add    $0x8,%esp
  101197:	8b 45 0c             	mov    0xc(%ebp),%eax
  10119a:	c1 e8 08             	shr    $0x8,%eax
  10119d:	0f b6 c0             	movzbl %al,%eax
  1011a0:	50                   	push   %eax
  1011a1:	68 f4 01 00 00       	push   $0x1f4
  1011a6:	e8 8b ff ff ff       	call   101136 <outb>
  1011ab:	83 c4 08             	add    $0x8,%esp
  1011ae:	8b 45 0c             	mov    0xc(%ebp),%eax
  1011b1:	c1 e8 10             	shr    $0x10,%eax
  1011b4:	0f b6 c0             	movzbl %al,%eax
  1011b7:	50                   	push   %eax
  1011b8:	68 f5 01 00 00       	push   $0x1f5
  1011bd:	e8 74 ff ff ff       	call   101136 <outb>
  1011c2:	83 c4 08             	add    $0x8,%esp
  1011c5:	8b 45 0c             	mov    0xc(%ebp),%eax
  1011c8:	c1 e8 18             	shr    $0x18,%eax
  1011cb:	83 c8 e0             	or     $0xffffffe0,%eax
  1011ce:	0f b6 c0             	movzbl %al,%eax
  1011d1:	50                   	push   %eax
  1011d2:	68 f6 01 00 00       	push   $0x1f6
  1011d7:	e8 5a ff ff ff       	call   101136 <outb>
  1011dc:	83 c4 08             	add    $0x8,%esp
  1011df:	6a 20                	push   $0x20
  1011e1:	68 f7 01 00 00       	push   $0x1f7
  1011e6:	e8 4b ff ff ff       	call   101136 <outb>
  1011eb:	83 c4 08             	add    $0x8,%esp
  1011ee:	e8 59 ff ff ff       	call   10114c <waitdisk>
  1011f3:	68 80 00 00 00       	push   $0x80
  1011f8:	ff 75 08             	pushl  0x8(%ebp)
  1011fb:	68 f0 01 00 00       	push   $0x1f0
  101200:	e8 0c ff ff ff       	call   101111 <insl>
  101205:	83 c4 0c             	add    $0xc,%esp
  101208:	c9                   	leave  
  101209:	c3                   	ret    

0010120a <read_disk>:
  10120a:	55                   	push   %ebp
  10120b:	89 e5                	mov    %esp,%ebp
  10120d:	83 ec 10             	sub    $0x10,%esp
  101210:	8b 55 0c             	mov    0xc(%ebp),%edx
  101213:	8b 45 08             	mov    0x8(%ebp),%eax
  101216:	01 d0                	add    %edx,%eax
  101218:	89 45 f8             	mov    %eax,-0x8(%ebp)
  10121b:	8b 45 10             	mov    0x10(%ebp),%eax
  10121e:	99                   	cltd   
  10121f:	c1 ea 17             	shr    $0x17,%edx
  101222:	01 d0                	add    %edx,%eax
  101224:	25 ff 01 00 00       	and    $0x1ff,%eax
  101229:	29 d0                	sub    %edx,%eax
  10122b:	f7 d8                	neg    %eax
  10122d:	01 45 08             	add    %eax,0x8(%ebp)
  101230:	8b 45 10             	mov    0x10(%ebp),%eax
  101233:	8d 90 ff 01 00 00    	lea    0x1ff(%eax),%edx
  101239:	85 c0                	test   %eax,%eax
  10123b:	0f 48 c2             	cmovs  %edx,%eax
  10123e:	c1 f8 09             	sar    $0x9,%eax
  101241:	83 c0 01             	add    $0x1,%eax
  101244:	89 45 fc             	mov    %eax,-0x4(%ebp)
  101247:	eb 1a                	jmp    101263 <read_disk+0x59>
  101249:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10124c:	50                   	push   %eax
  10124d:	ff 75 08             	pushl  0x8(%ebp)
  101250:	e8 17 ff ff ff       	call   10116c <readsect>
  101255:	83 c4 08             	add    $0x8,%esp
  101258:	81 45 08 00 02 00 00 	addl   $0x200,0x8(%ebp)
  10125f:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  101263:	8b 45 08             	mov    0x8(%ebp),%eax
  101266:	3b 45 f8             	cmp    -0x8(%ebp),%eax
  101269:	72 de                	jb     101249 <read_disk+0x3f>
  10126b:	c9                   	leave  
  10126c:	c3                   	ret    

0010126d <load>:
  10126d:	55                   	push   %ebp
  10126e:	89 e5                	mov    %esp,%ebp
  101270:	83 ec 18             	sub    $0x18,%esp
  101273:	c7 45 ec 00 00 08 00 	movl   $0x80000,-0x14(%ebp)
  10127a:	68 00 90 01 00       	push   $0x19000
  10127f:	68 00 10 00 00       	push   $0x1000
  101284:	ff 75 ec             	pushl  -0x14(%ebp)
  101287:	e8 7e ff ff ff       	call   10120a <read_disk>
  10128c:	83 c4 0c             	add    $0xc,%esp
  10128f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101292:	8b 50 1c             	mov    0x1c(%eax),%edx
  101295:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101298:	01 d0                	add    %edx,%eax
  10129a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10129d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1012a0:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
  1012a4:	0f b7 c0             	movzwl %ax,%eax
  1012a7:	c1 e0 05             	shl    $0x5,%eax
  1012aa:	89 c2                	mov    %eax,%edx
  1012ac:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1012af:	01 d0                	add    %edx,%eax
  1012b1:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1012b4:	eb 5a                	jmp    101310 <load+0xa3>
  1012b6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1012b9:	8b 40 04             	mov    0x4(%eax),%eax
  1012bc:	05 00 90 01 00       	add    $0x19000,%eax
  1012c1:	89 c1                	mov    %eax,%ecx
  1012c3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1012c6:	8b 40 10             	mov    0x10(%eax),%eax
  1012c9:	89 c2                	mov    %eax,%edx
  1012cb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1012ce:	8b 40 0c             	mov    0xc(%eax),%eax
  1012d1:	51                   	push   %ecx
  1012d2:	52                   	push   %edx
  1012d3:	50                   	push   %eax
  1012d4:	e8 31 ff ff ff       	call   10120a <read_disk>
  1012d9:	83 c4 0c             	add    $0xc,%esp
  1012dc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1012df:	8b 50 0c             	mov    0xc(%eax),%edx
  1012e2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1012e5:	8b 40 10             	mov    0x10(%eax),%eax
  1012e8:	01 d0                	add    %edx,%eax
  1012ea:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1012ed:	eb 0a                	jmp    1012f9 <load+0x8c>
  1012ef:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1012f2:	c6 00 00             	movb   $0x0,(%eax)
  1012f5:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1012f9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1012fc:	8b 50 0c             	mov    0xc(%eax),%edx
  1012ff:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101302:	8b 40 14             	mov    0x14(%eax),%eax
  101305:	01 d0                	add    %edx,%eax
  101307:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  10130a:	77 e3                	ja     1012ef <load+0x82>
  10130c:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  101310:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101313:	3b 45 e8             	cmp    -0x18(%ebp),%eax
  101316:	72 9e                	jb     1012b6 <load+0x49>
  101318:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10131b:	8b 40 18             	mov    0x18(%eax),%eax
  10131e:	83 ec 08             	sub    $0x8,%esp
  101321:	50                   	push   %eax
  101322:	68 7c 15 10 00       	push   $0x10157c
  101327:	e8 75 fd ff ff       	call   1010a1 <printk>
  10132c:	83 c4 10             	add    $0x10,%esp
  10132f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101332:	8b 40 18             	mov    0x18(%eax),%eax
  101335:	a3 c0 2a 10 00       	mov    %eax,0x102ac0
  10133a:	c9                   	leave  
  10133b:	c3                   	ret    

0010133c <init_PCB>:
  10133c:	55                   	push   %ebp
  10133d:	89 e5                	mov    %esp,%ebp
  10133f:	c7 05 08 2b 10 00 00 	movl   $0x0,0x102b08
  101346:	00 00 00 
  101349:	c7 05 10 2b 10 00 00 	movl   $0x0,0x102b10
  101350:	00 00 00 
  101353:	c7 05 0c 2b 10 00 00 	movl   $0x0,0x102b0c
  10135a:	00 00 00 
  10135d:	c7 05 04 2b 10 00 01 	movl   $0x1,0x102b04
  101364:	00 00 00 
  101367:	c7 05 d0 72 16 00 01 	movl   $0x1,0x1672d0
  10136e:	00 00 00 
  101371:	5d                   	pop    %ebp
  101372:	c3                   	ret    

00101373 <add_PCB>:
  101373:	55                   	push   %ebp
  101374:	89 e5                	mov    %esp,%ebp
  101376:	83 ec 18             	sub    $0x18,%esp
  101379:	a1 d0 72 16 00       	mov    0x1672d0,%eax
  10137e:	83 f8 64             	cmp    $0x64,%eax
  101381:	75 15                	jne    101398 <add_PCB+0x25>
  101383:	83 ec 0c             	sub    $0xc,%esp
  101386:	68 80 15 10 00       	push   $0x101580
  10138b:	e8 11 fd ff ff       	call   1010a1 <printk>
  101390:	83 c4 10             	add    $0x10,%esp
  101393:	e9 d6 00 00 00       	jmp    10146e <add_PCB+0xfb>
  101398:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  10139f:	eb 1b                	jmp    1013bc <add_PCB+0x49>
  1013a1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1013a4:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  1013aa:	05 00 2b 10 00       	add    $0x102b00,%eax
  1013af:	8b 40 04             	mov    0x4(%eax),%eax
  1013b2:	85 c0                	test   %eax,%eax
  1013b4:	75 02                	jne    1013b8 <add_PCB+0x45>
  1013b6:	eb 0a                	jmp    1013c2 <add_PCB+0x4f>
  1013b8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1013bc:	83 7d f4 63          	cmpl   $0x63,-0xc(%ebp)
  1013c0:	7e df                	jle    1013a1 <add_PCB+0x2e>
  1013c2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1013c5:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  1013cb:	05 00 2b 10 00       	add    $0x102b00,%eax
  1013d0:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
  1013d7:	a1 3c 21 10 00       	mov    0x10213c,%eax
  1013dc:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  1013e2:	05 00 2b 10 00       	add    $0x102b00,%eax
  1013e7:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1013ea:	a1 3c 21 10 00       	mov    0x10213c,%eax
  1013ef:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1013f2:	69 d2 14 10 00 00    	imul   $0x1014,%edx,%edx
  1013f8:	81 c2 00 2b 10 00    	add    $0x102b00,%edx
  1013fe:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  101404:	05 00 2b 10 00       	add    $0x102b00,%eax
  101409:	89 50 0c             	mov    %edx,0xc(%eax)
  10140c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10140f:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  101415:	83 c0 10             	add    $0x10,%eax
  101418:	8d 90 00 2b 10 00    	lea    0x102b00(%eax),%edx
  10141e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101421:	89 02                	mov    %eax,(%edx)
  101423:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101426:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  10142c:	05 00 2b 10 00       	add    $0x102b00,%eax
  101431:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
  101438:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10143b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10143e:	69 d2 14 10 00 00    	imul   $0x1014,%edx,%edx
  101444:	81 c2 00 2b 10 00    	add    $0x102b00,%edx
  10144a:	89 42 08             	mov    %eax,0x8(%edx)
  10144d:	a1 d0 72 16 00       	mov    0x1672d0,%eax
  101452:	83 c0 01             	add    $0x1,%eax
  101455:	a3 d0 72 16 00       	mov    %eax,0x1672d0
  10145a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10145d:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  101463:	8d 90 00 2b 10 00    	lea    0x102b00(%eax),%edx
  101469:	8b 45 08             	mov    0x8(%ebp),%eax
  10146c:	89 02                	mov    %eax,(%edx)
  10146e:	c9                   	leave  
  10146f:	c3                   	ret    

00101470 <delete_PCB>:
  101470:	55                   	push   %ebp
  101471:	89 e5                	mov    %esp,%ebp
  101473:	83 ec 18             	sub    $0x18,%esp
  101476:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  10147a:	75 15                	jne    101491 <delete_PCB+0x21>
  10147c:	83 ec 0c             	sub    $0xc,%esp
  10147f:	68 94 15 10 00       	push   $0x101594
  101484:	e8 18 fc ff ff       	call   1010a1 <printk>
  101489:	83 c4 10             	add    $0x10,%esp
  10148c:	e9 b1 00 00 00       	jmp    101542 <delete_PCB+0xd2>
  101491:	8b 45 08             	mov    0x8(%ebp),%eax
  101494:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  10149a:	05 00 2b 10 00       	add    $0x102b00,%eax
  10149f:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  1014a6:	a1 3c 21 10 00       	mov    0x10213c,%eax
  1014ab:	3b 45 08             	cmp    0x8(%ebp),%eax
  1014ae:	75 1b                	jne    1014cb <delete_PCB+0x5b>
  1014b0:	8b 45 08             	mov    0x8(%ebp),%eax
  1014b3:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  1014b9:	83 c0 10             	add    $0x10,%eax
  1014bc:	05 00 2b 10 00       	add    $0x102b00,%eax
  1014c1:	8b 00                	mov    (%eax),%eax
  1014c3:	8b 40 08             	mov    0x8(%eax),%eax
  1014c6:	a3 3c 21 10 00       	mov    %eax,0x10213c
  1014cb:	8b 45 08             	mov    0x8(%ebp),%eax
  1014ce:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  1014d4:	83 c0 10             	add    $0x10,%eax
  1014d7:	05 00 2b 10 00       	add    $0x102b00,%eax
  1014dc:	8b 00                	mov    (%eax),%eax
  1014de:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1014e1:	8b 45 08             	mov    0x8(%ebp),%eax
  1014e4:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  1014ea:	83 c0 10             	add    $0x10,%eax
  1014ed:	05 00 2b 10 00       	add    $0x102b00,%eax
  1014f2:	8b 00                	mov    (%eax),%eax
  1014f4:	8b 55 08             	mov    0x8(%ebp),%edx
  1014f7:	69 d2 14 10 00 00    	imul   $0x1014,%edx,%edx
  1014fd:	81 c2 00 2b 10 00    	add    $0x102b00,%edx
  101503:	8b 52 0c             	mov    0xc(%edx),%edx
  101506:	89 50 0c             	mov    %edx,0xc(%eax)
  101509:	8b 45 08             	mov    0x8(%ebp),%eax
  10150c:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  101512:	05 00 2b 10 00       	add    $0x102b00,%eax
  101517:	8b 40 0c             	mov    0xc(%eax),%eax
  10151a:	85 c0                	test   %eax,%eax
  10151c:	74 17                	je     101535 <delete_PCB+0xc5>
  10151e:	8b 45 08             	mov    0x8(%ebp),%eax
  101521:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  101527:	05 00 2b 10 00       	add    $0x102b00,%eax
  10152c:	8b 40 0c             	mov    0xc(%eax),%eax
  10152f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101532:	89 50 10             	mov    %edx,0x10(%eax)
  101535:	a1 d0 72 16 00       	mov    0x1672d0,%eax
  10153a:	83 e8 01             	sub    $0x1,%eax
  10153d:	a3 d0 72 16 00       	mov    %eax,0x1672d0
  101542:	c9                   	leave  
  101543:	c3                   	ret    
