
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

0010013b <enable_interrupt>:
  10013b:	55                   	push   %ebp
  10013c:	89 e5                	mov    %esp,%ebp
  10013e:	fb                   	sti    
  10013f:	5d                   	pop    %ebp
  100140:	c3                   	ret    

00100141 <disable_interrupt>:
  100141:	55                   	push   %ebp
  100142:	89 e5                	mov    %esp,%ebp
  100144:	fa                   	cli    
  100145:	5d                   	pop    %ebp
  100146:	c3                   	ret    

00100147 <main>:
  100147:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  10014b:	83 e4 f0             	and    $0xfffffff0,%esp
  10014e:	ff 71 fc             	pushl  -0x4(%ecx)
  100151:	55                   	push   %ebp
  100152:	89 e5                	mov    %esp,%ebp
  100154:	51                   	push   %ecx
  100155:	83 ec 04             	sub    $0x4,%esp
  100158:	e8 e4 ff ff ff       	call   100141 <disable_interrupt>
  10015d:	e8 b5 00 00 00       	call   100217 <init_serial>
  100162:	e8 69 01 00 00       	call   1002d0 <init_timer>
  100167:	e8 a9 05 00 00       	call   100715 <init_intr>
  10016c:	e8 e1 07 00 00       	call   100952 <init_idt>
  100171:	e8 68 04 00 00       	call   1005de <init_seg>
  100176:	bc 00 00 28 00       	mov    $0x280000,%esp
  10017b:	e8 17 11 00 00       	call   101297 <load>
  100180:	e8 b6 ff ff ff       	call   10013b <enable_interrupt>
  100185:	e8 dc 11 00 00       	call   101366 <init_PCB>
  10018a:	c7 05 40 21 10 00 60 	movl   $0x102160,0x102140
  100191:	21 10 00 
  100194:	a1 c0 2a 10 00       	mov    0x102ac0,%eax
  100199:	a3 88 21 10 00       	mov    %eax,0x102188
  10019e:	c7 05 8c 21 10 00 1b 	movl   $0x1b,0x10218c
  1001a5:	00 00 00 
  1001a8:	c7 05 90 21 10 00 02 	movl   $0x202,0x102190
  1001af:	02 00 00 
  1001b2:	c7 05 94 21 10 00 00 	movl   $0x500000,0x102194
  1001b9:	00 50 00 
  1001bc:	c7 05 98 21 10 00 23 	movl   $0x23,0x102198
  1001c3:	00 00 00 
  1001c6:	a1 40 21 10 00       	mov    0x102140,%eax
  1001cb:	83 ec 0c             	sub    $0xc,%esp
  1001ce:	50                   	push   %eax
  1001cf:	e8 c9 11 00 00       	call   10139d <add_PCB>
  1001d4:	83 c4 10             	add    $0x10,%esp
  1001d7:	66 b8 23 00          	mov    $0x23,%ax
  1001db:	8e d8                	mov    %eax,%ds
  1001dd:	8e c0                	mov    %eax,%es
  1001df:	a1 40 21 10 00       	mov    0x102140,%eax
  1001e4:	89 c4                	mov    %eax,%esp
  1001e6:	83 c4 28             	add    $0x28,%esp
  1001e9:	cf                   	iret   
  1001ea:	eb fe                	jmp    1001ea <main+0xa3>

001001ec <inb>:
  1001ec:	55                   	push   %ebp
  1001ed:	89 e5                	mov    %esp,%ebp
  1001ef:	83 ec 10             	sub    $0x10,%esp
  1001f2:	8b 45 08             	mov    0x8(%ebp),%eax
  1001f5:	89 c2                	mov    %eax,%edx
  1001f7:	ec                   	in     (%dx),%al
  1001f8:	88 45 ff             	mov    %al,-0x1(%ebp)
  1001fb:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  1001ff:	c9                   	leave  
  100200:	c3                   	ret    

00100201 <outb>:
  100201:	55                   	push   %ebp
  100202:	89 e5                	mov    %esp,%ebp
  100204:	83 ec 04             	sub    $0x4,%esp
  100207:	8b 45 0c             	mov    0xc(%ebp),%eax
  10020a:	88 45 fc             	mov    %al,-0x4(%ebp)
  10020d:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  100211:	8b 55 08             	mov    0x8(%ebp),%edx
  100214:	ee                   	out    %al,(%dx)
  100215:	c9                   	leave  
  100216:	c3                   	ret    

00100217 <init_serial>:
  100217:	55                   	push   %ebp
  100218:	89 e5                	mov    %esp,%ebp
  10021a:	6a 00                	push   $0x0
  10021c:	68 f9 03 00 00       	push   $0x3f9
  100221:	e8 db ff ff ff       	call   100201 <outb>
  100226:	83 c4 08             	add    $0x8,%esp
  100229:	68 80 00 00 00       	push   $0x80
  10022e:	68 fb 03 00 00       	push   $0x3fb
  100233:	e8 c9 ff ff ff       	call   100201 <outb>
  100238:	83 c4 08             	add    $0x8,%esp
  10023b:	6a 03                	push   $0x3
  10023d:	68 f8 03 00 00       	push   $0x3f8
  100242:	e8 ba ff ff ff       	call   100201 <outb>
  100247:	83 c4 08             	add    $0x8,%esp
  10024a:	6a 00                	push   $0x0
  10024c:	68 f9 03 00 00       	push   $0x3f9
  100251:	e8 ab ff ff ff       	call   100201 <outb>
  100256:	83 c4 08             	add    $0x8,%esp
  100259:	6a 03                	push   $0x3
  10025b:	68 fb 03 00 00       	push   $0x3fb
  100260:	e8 9c ff ff ff       	call   100201 <outb>
  100265:	83 c4 08             	add    $0x8,%esp
  100268:	68 c7 00 00 00       	push   $0xc7
  10026d:	68 fa 03 00 00       	push   $0x3fa
  100272:	e8 8a ff ff ff       	call   100201 <outb>
  100277:	83 c4 08             	add    $0x8,%esp
  10027a:	6a 0b                	push   $0xb
  10027c:	68 fc 03 00 00       	push   $0x3fc
  100281:	e8 7b ff ff ff       	call   100201 <outb>
  100286:	83 c4 08             	add    $0x8,%esp
  100289:	c9                   	leave  
  10028a:	c3                   	ret    

0010028b <is_serial_idle>:
  10028b:	55                   	push   %ebp
  10028c:	89 e5                	mov    %esp,%ebp
  10028e:	68 fd 03 00 00       	push   $0x3fd
  100293:	e8 54 ff ff ff       	call   1001ec <inb>
  100298:	83 c4 04             	add    $0x4,%esp
  10029b:	0f b6 c0             	movzbl %al,%eax
  10029e:	83 e0 20             	and    $0x20,%eax
  1002a1:	c9                   	leave  
  1002a2:	c3                   	ret    

001002a3 <serial_out>:
  1002a3:	55                   	push   %ebp
  1002a4:	89 e5                	mov    %esp,%ebp
  1002a6:	83 ec 04             	sub    $0x4,%esp
  1002a9:	8b 45 08             	mov    0x8(%ebp),%eax
  1002ac:	88 45 fc             	mov    %al,-0x4(%ebp)
  1002af:	90                   	nop
  1002b0:	e8 d6 ff ff ff       	call   10028b <is_serial_idle>
  1002b5:	85 c0                	test   %eax,%eax
  1002b7:	74 f7                	je     1002b0 <serial_out+0xd>
  1002b9:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  1002bd:	0f b6 c0             	movzbl %al,%eax
  1002c0:	50                   	push   %eax
  1002c1:	68 f8 03 00 00       	push   $0x3f8
  1002c6:	e8 36 ff ff ff       	call   100201 <outb>
  1002cb:	83 c4 08             	add    $0x8,%esp
  1002ce:	c9                   	leave  
  1002cf:	c3                   	ret    

001002d0 <init_timer>:
  1002d0:	55                   	push   %ebp
  1002d1:	89 e5                	mov    %esp,%ebp
  1002d3:	83 ec 20             	sub    $0x20,%esp
  1002d6:	c7 45 fc a9 04 00 00 	movl   $0x4a9,-0x4(%ebp)
  1002dd:	c7 45 f8 43 00 00 00 	movl   $0x43,-0x8(%ebp)
  1002e4:	c6 45 f7 34          	movb   $0x34,-0x9(%ebp)
  1002e8:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
  1002ec:	8b 55 f8             	mov    -0x8(%ebp),%edx
  1002ef:	ee                   	out    %al,(%dx)
  1002f0:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1002f3:	99                   	cltd   
  1002f4:	c1 ea 18             	shr    $0x18,%edx
  1002f7:	01 d0                	add    %edx,%eax
  1002f9:	0f b6 c0             	movzbl %al,%eax
  1002fc:	29 d0                	sub    %edx,%eax
  1002fe:	0f b6 c0             	movzbl %al,%eax
  100301:	c7 45 f0 40 00 00 00 	movl   $0x40,-0x10(%ebp)
  100308:	88 45 ef             	mov    %al,-0x11(%ebp)
  10030b:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
  10030f:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100312:	ee                   	out    %al,(%dx)
  100313:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100316:	8d 90 ff 00 00 00    	lea    0xff(%eax),%edx
  10031c:	85 c0                	test   %eax,%eax
  10031e:	0f 48 c2             	cmovs  %edx,%eax
  100321:	c1 f8 08             	sar    $0x8,%eax
  100324:	0f b6 c0             	movzbl %al,%eax
  100327:	c7 45 e8 40 00 00 00 	movl   $0x40,-0x18(%ebp)
  10032e:	88 45 e7             	mov    %al,-0x19(%ebp)
  100331:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  100335:	8b 55 e8             	mov    -0x18(%ebp),%edx
  100338:	ee                   	out    %al,(%dx)
  100339:	c9                   	leave  
  10033a:	c3                   	ret    

0010033b <write_gdtr>:
  10033b:	55                   	push   %ebp
  10033c:	89 e5                	mov    %esp,%ebp
  10033e:	8b 45 0c             	mov    0xc(%ebp),%eax
  100341:	83 e8 01             	sub    $0x1,%eax
  100344:	66 a3 2c 21 10 00    	mov    %ax,0x10212c
  10034a:	8b 45 08             	mov    0x8(%ebp),%eax
  10034d:	66 a3 2e 21 10 00    	mov    %ax,0x10212e
  100353:	8b 45 08             	mov    0x8(%ebp),%eax
  100356:	c1 e8 10             	shr    $0x10,%eax
  100359:	66 a3 30 21 10 00    	mov    %ax,0x102130
  10035f:	b8 2c 21 10 00       	mov    $0x10212c,%eax
  100364:	0f 01 10             	lgdtl  (%eax)
  100367:	5d                   	pop    %ebp
  100368:	c3                   	ret    

00100369 <Makegdt>:
  100369:	55                   	push   %ebp
  10036a:	89 e5                	mov    %esp,%ebp
  10036c:	8b 45 08             	mov    0x8(%ebp),%eax
  10036f:	c1 e8 0c             	shr    $0xc,%eax
  100372:	89 c2                	mov    %eax,%edx
  100374:	8b 45 18             	mov    0x18(%ebp),%eax
  100377:	66 89 14 c5 c0 21 10 	mov    %dx,0x1021c0(,%eax,8)
  10037e:	00 
  10037f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100382:	89 c2                	mov    %eax,%edx
  100384:	8b 45 18             	mov    0x18(%ebp),%eax
  100387:	66 89 14 c5 c2 21 10 	mov    %dx,0x1021c2(,%eax,8)
  10038e:	00 
  10038f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100392:	c1 e8 10             	shr    $0x10,%eax
  100395:	89 c2                	mov    %eax,%edx
  100397:	8b 45 18             	mov    0x18(%ebp),%eax
  10039a:	88 14 c5 c4 21 10 00 	mov    %dl,0x1021c4(,%eax,8)
  1003a1:	8b 45 10             	mov    0x10(%ebp),%eax
  1003a4:	83 e0 0f             	and    $0xf,%eax
  1003a7:	89 c2                	mov    %eax,%edx
  1003a9:	8b 45 18             	mov    0x18(%ebp),%eax
  1003ac:	89 d1                	mov    %edx,%ecx
  1003ae:	83 e1 0f             	and    $0xf,%ecx
  1003b1:	0f b6 14 c5 c5 21 10 	movzbl 0x1021c5(,%eax,8),%edx
  1003b8:	00 
  1003b9:	83 e2 f0             	and    $0xfffffff0,%edx
  1003bc:	09 ca                	or     %ecx,%edx
  1003be:	88 14 c5 c5 21 10 00 	mov    %dl,0x1021c5(,%eax,8)
  1003c5:	8b 45 18             	mov    0x18(%ebp),%eax
  1003c8:	0f b6 14 c5 c5 21 10 	movzbl 0x1021c5(,%eax,8),%edx
  1003cf:	00 
  1003d0:	83 ca 10             	or     $0x10,%edx
  1003d3:	88 14 c5 c5 21 10 00 	mov    %dl,0x1021c5(,%eax,8)
  1003da:	8b 45 14             	mov    0x14(%ebp),%eax
  1003dd:	83 e0 03             	and    $0x3,%eax
  1003e0:	89 c2                	mov    %eax,%edx
  1003e2:	8b 45 18             	mov    0x18(%ebp),%eax
  1003e5:	83 e2 03             	and    $0x3,%edx
  1003e8:	89 d1                	mov    %edx,%ecx
  1003ea:	c1 e1 05             	shl    $0x5,%ecx
  1003ed:	0f b6 14 c5 c5 21 10 	movzbl 0x1021c5(,%eax,8),%edx
  1003f4:	00 
  1003f5:	83 e2 9f             	and    $0xffffff9f,%edx
  1003f8:	09 ca                	or     %ecx,%edx
  1003fa:	88 14 c5 c5 21 10 00 	mov    %dl,0x1021c5(,%eax,8)
  100401:	8b 45 18             	mov    0x18(%ebp),%eax
  100404:	0f b6 14 c5 c5 21 10 	movzbl 0x1021c5(,%eax,8),%edx
  10040b:	00 
  10040c:	83 ca 80             	or     $0xffffff80,%edx
  10040f:	88 14 c5 c5 21 10 00 	mov    %dl,0x1021c5(,%eax,8)
  100416:	8b 45 08             	mov    0x8(%ebp),%eax
  100419:	c1 e8 1c             	shr    $0x1c,%eax
  10041c:	83 e0 0f             	and    $0xf,%eax
  10041f:	89 c2                	mov    %eax,%edx
  100421:	8b 45 18             	mov    0x18(%ebp),%eax
  100424:	89 d1                	mov    %edx,%ecx
  100426:	83 e1 0f             	and    $0xf,%ecx
  100429:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  100430:	00 
  100431:	83 e2 f0             	and    $0xfffffff0,%edx
  100434:	09 ca                	or     %ecx,%edx
  100436:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  10043d:	8b 45 18             	mov    0x18(%ebp),%eax
  100440:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  100447:	00 
  100448:	83 e2 ef             	and    $0xffffffef,%edx
  10044b:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  100452:	8b 45 18             	mov    0x18(%ebp),%eax
  100455:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  10045c:	00 
  10045d:	83 e2 df             	and    $0xffffffdf,%edx
  100460:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  100467:	8b 45 18             	mov    0x18(%ebp),%eax
  10046a:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  100471:	00 
  100472:	83 ca 40             	or     $0x40,%edx
  100475:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  10047c:	8b 45 18             	mov    0x18(%ebp),%eax
  10047f:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  100486:	00 
  100487:	83 ca 80             	or     $0xffffff80,%edx
  10048a:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  100491:	8b 45 0c             	mov    0xc(%ebp),%eax
  100494:	c1 e8 18             	shr    $0x18,%eax
  100497:	89 c2                	mov    %eax,%edx
  100499:	8b 45 18             	mov    0x18(%ebp),%eax
  10049c:	88 14 c5 c7 21 10 00 	mov    %dl,0x1021c7(,%eax,8)
  1004a3:	5d                   	pop    %ebp
  1004a4:	c3                   	ret    

001004a5 <Maketss>:
  1004a5:	55                   	push   %ebp
  1004a6:	89 e5                	mov    %esp,%ebp
  1004a8:	8b 45 08             	mov    0x8(%ebp),%eax
  1004ab:	89 c2                	mov    %eax,%edx
  1004ad:	8b 45 18             	mov    0x18(%ebp),%eax
  1004b0:	66 89 14 c5 c0 21 10 	mov    %dx,0x1021c0(,%eax,8)
  1004b7:	00 
  1004b8:	8b 45 0c             	mov    0xc(%ebp),%eax
  1004bb:	89 c2                	mov    %eax,%edx
  1004bd:	8b 45 18             	mov    0x18(%ebp),%eax
  1004c0:	66 89 14 c5 c2 21 10 	mov    %dx,0x1021c2(,%eax,8)
  1004c7:	00 
  1004c8:	8b 45 0c             	mov    0xc(%ebp),%eax
  1004cb:	c1 e8 10             	shr    $0x10,%eax
  1004ce:	89 c2                	mov    %eax,%edx
  1004d0:	8b 45 18             	mov    0x18(%ebp),%eax
  1004d3:	88 14 c5 c4 21 10 00 	mov    %dl,0x1021c4(,%eax,8)
  1004da:	8b 45 10             	mov    0x10(%ebp),%eax
  1004dd:	83 e0 0f             	and    $0xf,%eax
  1004e0:	89 c2                	mov    %eax,%edx
  1004e2:	8b 45 18             	mov    0x18(%ebp),%eax
  1004e5:	89 d1                	mov    %edx,%ecx
  1004e7:	83 e1 0f             	and    $0xf,%ecx
  1004ea:	0f b6 14 c5 c5 21 10 	movzbl 0x1021c5(,%eax,8),%edx
  1004f1:	00 
  1004f2:	83 e2 f0             	and    $0xfffffff0,%edx
  1004f5:	09 ca                	or     %ecx,%edx
  1004f7:	88 14 c5 c5 21 10 00 	mov    %dl,0x1021c5(,%eax,8)
  1004fe:	8b 45 18             	mov    0x18(%ebp),%eax
  100501:	0f b6 14 c5 c5 21 10 	movzbl 0x1021c5(,%eax,8),%edx
  100508:	00 
  100509:	83 e2 ef             	and    $0xffffffef,%edx
  10050c:	88 14 c5 c5 21 10 00 	mov    %dl,0x1021c5(,%eax,8)
  100513:	8b 45 14             	mov    0x14(%ebp),%eax
  100516:	83 e0 03             	and    $0x3,%eax
  100519:	89 c2                	mov    %eax,%edx
  10051b:	8b 45 18             	mov    0x18(%ebp),%eax
  10051e:	83 e2 03             	and    $0x3,%edx
  100521:	89 d1                	mov    %edx,%ecx
  100523:	c1 e1 05             	shl    $0x5,%ecx
  100526:	0f b6 14 c5 c5 21 10 	movzbl 0x1021c5(,%eax,8),%edx
  10052d:	00 
  10052e:	83 e2 9f             	and    $0xffffff9f,%edx
  100531:	09 ca                	or     %ecx,%edx
  100533:	88 14 c5 c5 21 10 00 	mov    %dl,0x1021c5(,%eax,8)
  10053a:	8b 45 18             	mov    0x18(%ebp),%eax
  10053d:	0f b6 14 c5 c5 21 10 	movzbl 0x1021c5(,%eax,8),%edx
  100544:	00 
  100545:	83 ca 80             	or     $0xffffff80,%edx
  100548:	88 14 c5 c5 21 10 00 	mov    %dl,0x1021c5(,%eax,8)
  10054f:	8b 45 08             	mov    0x8(%ebp),%eax
  100552:	c1 e8 10             	shr    $0x10,%eax
  100555:	83 e0 0f             	and    $0xf,%eax
  100558:	89 c2                	mov    %eax,%edx
  10055a:	8b 45 18             	mov    0x18(%ebp),%eax
  10055d:	89 d1                	mov    %edx,%ecx
  10055f:	83 e1 0f             	and    $0xf,%ecx
  100562:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  100569:	00 
  10056a:	83 e2 f0             	and    $0xfffffff0,%edx
  10056d:	09 ca                	or     %ecx,%edx
  10056f:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  100576:	8b 45 18             	mov    0x18(%ebp),%eax
  100579:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  100580:	00 
  100581:	83 e2 ef             	and    $0xffffffef,%edx
  100584:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  10058b:	8b 45 18             	mov    0x18(%ebp),%eax
  10058e:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  100595:	00 
  100596:	83 e2 df             	and    $0xffffffdf,%edx
  100599:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  1005a0:	8b 45 18             	mov    0x18(%ebp),%eax
  1005a3:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  1005aa:	00 
  1005ab:	83 ca 40             	or     $0x40,%edx
  1005ae:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  1005b5:	8b 45 18             	mov    0x18(%ebp),%eax
  1005b8:	0f b6 14 c5 c6 21 10 	movzbl 0x1021c6(,%eax,8),%edx
  1005bf:	00 
  1005c0:	83 ca 80             	or     $0xffffff80,%edx
  1005c3:	88 14 c5 c6 21 10 00 	mov    %dl,0x1021c6(,%eax,8)
  1005ca:	8b 45 0c             	mov    0xc(%ebp),%eax
  1005cd:	c1 e8 18             	shr    $0x18,%eax
  1005d0:	89 c2                	mov    %eax,%edx
  1005d2:	8b 45 18             	mov    0x18(%ebp),%eax
  1005d5:	88 14 c5 c7 21 10 00 	mov    %dl,0x1021c7(,%eax,8)
  1005dc:	5d                   	pop    %ebp
  1005dd:	c3                   	ret    

001005de <init_seg>:
  1005de:	55                   	push   %ebp
  1005df:	89 e5                	mov    %esp,%ebp
  1005e1:	83 ec 10             	sub    $0x10,%esp
  1005e4:	c7 05 28 21 10 00 00 	movl   $0x0,0x102128
  1005eb:	00 00 00 
  1005ee:	6a 00                	push   $0x0
  1005f0:	6a 00                	push   $0x0
  1005f2:	6a 00                	push   $0x0
  1005f4:	6a 00                	push   $0x0
  1005f6:	6a 00                	push   $0x0
  1005f8:	e8 6c fd ff ff       	call   100369 <Makegdt>
  1005fd:	83 c4 14             	add    $0x14,%esp
  100600:	a1 28 21 10 00       	mov    0x102128,%eax
  100605:	83 c0 01             	add    $0x1,%eax
  100608:	a3 28 21 10 00       	mov    %eax,0x102128
  10060d:	a1 28 21 10 00       	mov    0x102128,%eax
  100612:	50                   	push   %eax
  100613:	6a 00                	push   $0x0
  100615:	6a 0a                	push   $0xa
  100617:	6a 00                	push   $0x0
  100619:	68 00 00 08 00       	push   $0x80000
  10061e:	e8 46 fd ff ff       	call   100369 <Makegdt>
  100623:	83 c4 14             	add    $0x14,%esp
  100626:	a1 28 21 10 00       	mov    0x102128,%eax
  10062b:	83 c0 01             	add    $0x1,%eax
  10062e:	a3 28 21 10 00       	mov    %eax,0x102128
  100633:	a1 28 21 10 00       	mov    0x102128,%eax
  100638:	50                   	push   %eax
  100639:	6a 00                	push   $0x0
  10063b:	6a 02                	push   $0x2
  10063d:	6a 00                	push   $0x0
  10063f:	68 00 00 08 00       	push   $0x80000
  100644:	e8 20 fd ff ff       	call   100369 <Makegdt>
  100649:	83 c4 14             	add    $0x14,%esp
  10064c:	a1 28 21 10 00       	mov    0x102128,%eax
  100651:	83 c0 01             	add    $0x1,%eax
  100654:	a3 28 21 10 00       	mov    %eax,0x102128
  100659:	a1 28 21 10 00       	mov    0x102128,%eax
  10065e:	50                   	push   %eax
  10065f:	6a 03                	push   $0x3
  100661:	6a 0a                	push   $0xa
  100663:	6a 00                	push   $0x0
  100665:	6a ff                	push   $0xffffffff
  100667:	e8 fd fc ff ff       	call   100369 <Makegdt>
  10066c:	83 c4 14             	add    $0x14,%esp
  10066f:	a1 28 21 10 00       	mov    0x102128,%eax
  100674:	83 c0 01             	add    $0x1,%eax
  100677:	a3 28 21 10 00       	mov    %eax,0x102128
  10067c:	a1 28 21 10 00       	mov    0x102128,%eax
  100681:	50                   	push   %eax
  100682:	6a 03                	push   $0x3
  100684:	6a 02                	push   $0x2
  100686:	6a 00                	push   $0x0
  100688:	6a ff                	push   $0xffffffff
  10068a:	e8 da fc ff ff       	call   100369 <Makegdt>
  10068f:	83 c4 14             	add    $0x14,%esp
  100692:	a1 28 21 10 00       	mov    0x102128,%eax
  100697:	83 c0 01             	add    $0x1,%eax
  10069a:	a3 28 21 10 00       	mov    %eax,0x102128
  10069f:	c7 05 44 22 10 00 00 	movl   $0x280000,0x102244
  1006a6:	00 28 00 
  1006a9:	66 c7 05 48 22 10 00 	movw   $0x10,0x102248
  1006b0:	10 00 
  1006b2:	a1 28 21 10 00       	mov    0x102128,%eax
  1006b7:	ba 40 22 10 00       	mov    $0x102240,%edx
  1006bc:	50                   	push   %eax
  1006bd:	6a 00                	push   $0x0
  1006bf:	6a 09                	push   $0x9
  1006c1:	52                   	push   %edx
  1006c2:	6a ff                	push   $0xffffffff
  1006c4:	e8 dc fd ff ff       	call   1004a5 <Maketss>
  1006c9:	83 c4 14             	add    $0x14,%esp
  1006cc:	a1 28 21 10 00       	mov    0x102128,%eax
  1006d1:	83 c0 01             	add    $0x1,%eax
  1006d4:	a3 28 21 10 00       	mov    %eax,0x102128
  1006d9:	66 c7 05 9c 22 10 00 	movw   $0x2b,0x10229c
  1006e0:	2b 00 
  1006e2:	66 b8 10 00          	mov    $0x10,%ax
  1006e6:	8e d8                	mov    %eax,%ds
  1006e8:	8e c0                	mov    %eax,%es
  1006ea:	8e d0                	mov    %eax,%ss
  1006ec:	68 80 00 00 00       	push   $0x80
  1006f1:	68 c0 21 10 00       	push   $0x1021c0
  1006f6:	e8 40 fc ff ff       	call   10033b <write_gdtr>
  1006fb:	83 c4 08             	add    $0x8,%esp
  1006fe:	0f b7 05 9c 22 10 00 	movzwl 0x10229c,%eax
  100705:	0f b7 c0             	movzwl %ax,%eax
  100708:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
  10070c:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
  100710:	0f 00 d8             	ltr    %ax
  100713:	c9                   	leave  
  100714:	c3                   	ret    

00100715 <init_intr>:
  100715:	55                   	push   %ebp
  100716:	89 e5                	mov    %esp,%ebp
  100718:	83 ec 70             	sub    $0x70,%esp
  10071b:	c7 45 fc 21 00 00 00 	movl   $0x21,-0x4(%ebp)
  100722:	c6 45 fb ff          	movb   $0xff,-0x5(%ebp)
  100726:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
  10072a:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10072d:	ee                   	out    %al,(%dx)
  10072e:	c7 45 f4 a1 00 00 00 	movl   $0xa1,-0xc(%ebp)
  100735:	c6 45 f3 ff          	movb   $0xff,-0xd(%ebp)
  100739:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  10073d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100740:	ee                   	out    %al,(%dx)
  100741:	c7 45 ec 20 00 00 00 	movl   $0x20,-0x14(%ebp)
  100748:	c6 45 eb 11          	movb   $0x11,-0x15(%ebp)
  10074c:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  100750:	8b 55 ec             	mov    -0x14(%ebp),%edx
  100753:	ee                   	out    %al,(%dx)
  100754:	c7 45 e4 21 00 00 00 	movl   $0x21,-0x1c(%ebp)
  10075b:	c6 45 e3 20          	movb   $0x20,-0x1d(%ebp)
  10075f:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
  100763:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100766:	ee                   	out    %al,(%dx)
  100767:	c7 45 dc 21 00 00 00 	movl   $0x21,-0x24(%ebp)
  10076e:	c6 45 db 04          	movb   $0x4,-0x25(%ebp)
  100772:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
  100776:	8b 55 dc             	mov    -0x24(%ebp),%edx
  100779:	ee                   	out    %al,(%dx)
  10077a:	c7 45 d4 21 00 00 00 	movl   $0x21,-0x2c(%ebp)
  100781:	c6 45 d3 03          	movb   $0x3,-0x2d(%ebp)
  100785:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
  100789:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  10078c:	ee                   	out    %al,(%dx)
  10078d:	c7 45 cc a0 00 00 00 	movl   $0xa0,-0x34(%ebp)
  100794:	c6 45 cb 11          	movb   $0x11,-0x35(%ebp)
  100798:	0f b6 45 cb          	movzbl -0x35(%ebp),%eax
  10079c:	8b 55 cc             	mov    -0x34(%ebp),%edx
  10079f:	ee                   	out    %al,(%dx)
  1007a0:	c7 45 c4 a1 00 00 00 	movl   $0xa1,-0x3c(%ebp)
  1007a7:	c6 45 c3 28          	movb   $0x28,-0x3d(%ebp)
  1007ab:	0f b6 45 c3          	movzbl -0x3d(%ebp),%eax
  1007af:	8b 55 c4             	mov    -0x3c(%ebp),%edx
  1007b2:	ee                   	out    %al,(%dx)
  1007b3:	c7 45 bc a1 00 00 00 	movl   $0xa1,-0x44(%ebp)
  1007ba:	c6 45 bb 02          	movb   $0x2,-0x45(%ebp)
  1007be:	0f b6 45 bb          	movzbl -0x45(%ebp),%eax
  1007c2:	8b 55 bc             	mov    -0x44(%ebp),%edx
  1007c5:	ee                   	out    %al,(%dx)
  1007c6:	c7 45 b4 a1 00 00 00 	movl   $0xa1,-0x4c(%ebp)
  1007cd:	c6 45 b3 03          	movb   $0x3,-0x4d(%ebp)
  1007d1:	0f b6 45 b3          	movzbl -0x4d(%ebp),%eax
  1007d5:	8b 55 b4             	mov    -0x4c(%ebp),%edx
  1007d8:	ee                   	out    %al,(%dx)
  1007d9:	c7 45 ac 20 00 00 00 	movl   $0x20,-0x54(%ebp)
  1007e0:	c6 45 ab 68          	movb   $0x68,-0x55(%ebp)
  1007e4:	0f b6 45 ab          	movzbl -0x55(%ebp),%eax
  1007e8:	8b 55 ac             	mov    -0x54(%ebp),%edx
  1007eb:	ee                   	out    %al,(%dx)
  1007ec:	c7 45 a4 20 00 00 00 	movl   $0x20,-0x5c(%ebp)
  1007f3:	c6 45 a3 0a          	movb   $0xa,-0x5d(%ebp)
  1007f7:	0f b6 45 a3          	movzbl -0x5d(%ebp),%eax
  1007fb:	8b 55 a4             	mov    -0x5c(%ebp),%edx
  1007fe:	ee                   	out    %al,(%dx)
  1007ff:	c7 45 9c a0 00 00 00 	movl   $0xa0,-0x64(%ebp)
  100806:	c6 45 9b 68          	movb   $0x68,-0x65(%ebp)
  10080a:	0f b6 45 9b          	movzbl -0x65(%ebp),%eax
  10080e:	8b 55 9c             	mov    -0x64(%ebp),%edx
  100811:	ee                   	out    %al,(%dx)
  100812:	c7 45 94 a0 00 00 00 	movl   $0xa0,-0x6c(%ebp)
  100819:	c6 45 93 0a          	movb   $0xa,-0x6d(%ebp)
  10081d:	0f b6 45 93          	movzbl -0x6d(%ebp),%eax
  100821:	8b 55 94             	mov    -0x6c(%ebp),%edx
  100824:	ee                   	out    %al,(%dx)
  100825:	c9                   	leave  
  100826:	c3                   	ret    

00100827 <save_idt>:
  100827:	55                   	push   %ebp
  100828:	89 e5                	mov    %esp,%ebp
  10082a:	8b 45 0c             	mov    0xc(%ebp),%eax
  10082d:	83 e8 01             	sub    $0x1,%eax
  100830:	66 a3 32 21 10 00    	mov    %ax,0x102132
  100836:	8b 45 08             	mov    0x8(%ebp),%eax
  100839:	66 a3 34 21 10 00    	mov    %ax,0x102134
  10083f:	8b 45 08             	mov    0x8(%ebp),%eax
  100842:	c1 e8 10             	shr    $0x10,%eax
  100845:	66 a3 36 21 10 00    	mov    %ax,0x102136
  10084b:	b8 32 21 10 00       	mov    $0x102132,%eax
  100850:	0f 01 18             	lidtl  (%eax)
  100853:	5d                   	pop    %ebp
  100854:	c3                   	ret    

00100855 <set_intr>:
  100855:	55                   	push   %ebp
  100856:	89 e5                	mov    %esp,%ebp
  100858:	8b 45 10             	mov    0x10(%ebp),%eax
  10085b:	89 c2                	mov    %eax,%edx
  10085d:	8b 45 08             	mov    0x8(%ebp),%eax
  100860:	66 89 10             	mov    %dx,(%eax)
  100863:	8b 45 0c             	mov    0xc(%ebp),%eax
  100866:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10086d:	8b 45 08             	mov    0x8(%ebp),%eax
  100870:	66 89 50 02          	mov    %dx,0x2(%eax)
  100874:	8b 45 08             	mov    0x8(%ebp),%eax
  100877:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  10087b:	8b 45 08             	mov    0x8(%ebp),%eax
  10087e:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  100882:	83 e2 f0             	and    $0xfffffff0,%edx
  100885:	83 ca 0e             	or     $0xe,%edx
  100888:	88 50 05             	mov    %dl,0x5(%eax)
  10088b:	8b 45 08             	mov    0x8(%ebp),%eax
  10088e:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  100892:	83 e2 ef             	and    $0xffffffef,%edx
  100895:	88 50 05             	mov    %dl,0x5(%eax)
  100898:	8b 45 14             	mov    0x14(%ebp),%eax
  10089b:	83 e0 03             	and    $0x3,%eax
  10089e:	89 c2                	mov    %eax,%edx
  1008a0:	8b 45 08             	mov    0x8(%ebp),%eax
  1008a3:	83 e2 03             	and    $0x3,%edx
  1008a6:	89 d1                	mov    %edx,%ecx
  1008a8:	c1 e1 05             	shl    $0x5,%ecx
  1008ab:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  1008af:	83 e2 9f             	and    $0xffffff9f,%edx
  1008b2:	09 ca                	or     %ecx,%edx
  1008b4:	88 50 05             	mov    %dl,0x5(%eax)
  1008b7:	8b 45 08             	mov    0x8(%ebp),%eax
  1008ba:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  1008be:	83 ca 80             	or     $0xffffff80,%edx
  1008c1:	88 50 05             	mov    %dl,0x5(%eax)
  1008c4:	8b 45 10             	mov    0x10(%ebp),%eax
  1008c7:	c1 e8 10             	shr    $0x10,%eax
  1008ca:	89 c2                	mov    %eax,%edx
  1008cc:	8b 45 08             	mov    0x8(%ebp),%eax
  1008cf:	66 89 50 06          	mov    %dx,0x6(%eax)
  1008d3:	5d                   	pop    %ebp
  1008d4:	c3                   	ret    

001008d5 <set_trap>:
  1008d5:	55                   	push   %ebp
  1008d6:	89 e5                	mov    %esp,%ebp
  1008d8:	8b 45 10             	mov    0x10(%ebp),%eax
  1008db:	89 c2                	mov    %eax,%edx
  1008dd:	8b 45 08             	mov    0x8(%ebp),%eax
  1008e0:	66 89 10             	mov    %dx,(%eax)
  1008e3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008e6:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1008ed:	8b 45 08             	mov    0x8(%ebp),%eax
  1008f0:	66 89 50 02          	mov    %dx,0x2(%eax)
  1008f4:	8b 45 08             	mov    0x8(%ebp),%eax
  1008f7:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  1008fb:	8b 45 08             	mov    0x8(%ebp),%eax
  1008fe:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  100902:	83 ca 0f             	or     $0xf,%edx
  100905:	88 50 05             	mov    %dl,0x5(%eax)
  100908:	8b 45 08             	mov    0x8(%ebp),%eax
  10090b:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  10090f:	83 e2 ef             	and    $0xffffffef,%edx
  100912:	88 50 05             	mov    %dl,0x5(%eax)
  100915:	8b 45 14             	mov    0x14(%ebp),%eax
  100918:	83 e0 03             	and    $0x3,%eax
  10091b:	89 c2                	mov    %eax,%edx
  10091d:	8b 45 08             	mov    0x8(%ebp),%eax
  100920:	83 e2 03             	and    $0x3,%edx
  100923:	89 d1                	mov    %edx,%ecx
  100925:	c1 e1 05             	shl    $0x5,%ecx
  100928:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  10092c:	83 e2 9f             	and    $0xffffff9f,%edx
  10092f:	09 ca                	or     %ecx,%edx
  100931:	88 50 05             	mov    %dl,0x5(%eax)
  100934:	8b 45 08             	mov    0x8(%ebp),%eax
  100937:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  10093b:	83 ca 80             	or     $0xffffff80,%edx
  10093e:	88 50 05             	mov    %dl,0x5(%eax)
  100941:	8b 45 10             	mov    0x10(%ebp),%eax
  100944:	c1 e8 10             	shr    $0x10,%eax
  100947:	89 c2                	mov    %eax,%edx
  100949:	8b 45 08             	mov    0x8(%ebp),%eax
  10094c:	66 89 50 06          	mov    %dx,0x6(%eax)
  100950:	5d                   	pop    %ebp
  100951:	c3                   	ret    

00100952 <init_idt>:
  100952:	55                   	push   %ebp
  100953:	89 e5                	mov    %esp,%ebp
  100955:	83 ec 10             	sub    $0x10,%esp
  100958:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10095f:	eb 22                	jmp    100983 <init_idt+0x31>
  100961:	ba ef 0b 10 00       	mov    $0x100bef,%edx
  100966:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100969:	c1 e0 03             	shl    $0x3,%eax
  10096c:	05 c0 22 10 00       	add    $0x1022c0,%eax
  100971:	6a 00                	push   $0x0
  100973:	52                   	push   %edx
  100974:	6a 01                	push   $0x1
  100976:	50                   	push   %eax
  100977:	e8 59 ff ff ff       	call   1008d5 <set_trap>
  10097c:	83 c4 10             	add    $0x10,%esp
  10097f:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100983:	81 7d fc ff 00 00 00 	cmpl   $0xff,-0x4(%ebp)
  10098a:	7e d5                	jle    100961 <init_idt+0xf>
  10098c:	b8 55 0b 10 00       	mov    $0x100b55,%eax
  100991:	6a 00                	push   $0x0
  100993:	50                   	push   %eax
  100994:	6a 01                	push   $0x1
  100996:	68 c0 22 10 00       	push   $0x1022c0
  10099b:	e8 35 ff ff ff       	call   1008d5 <set_trap>
  1009a0:	83 c4 10             	add    $0x10,%esp
  1009a3:	b8 5f 0b 10 00       	mov    $0x100b5f,%eax
  1009a8:	6a 00                	push   $0x0
  1009aa:	50                   	push   %eax
  1009ab:	6a 01                	push   $0x1
  1009ad:	68 c8 22 10 00       	push   $0x1022c8
  1009b2:	e8 1e ff ff ff       	call   1008d5 <set_trap>
  1009b7:	83 c4 10             	add    $0x10,%esp
  1009ba:	b8 69 0b 10 00       	mov    $0x100b69,%eax
  1009bf:	6a 00                	push   $0x0
  1009c1:	50                   	push   %eax
  1009c2:	6a 01                	push   $0x1
  1009c4:	68 d0 22 10 00       	push   $0x1022d0
  1009c9:	e8 07 ff ff ff       	call   1008d5 <set_trap>
  1009ce:	83 c4 10             	add    $0x10,%esp
  1009d1:	b8 73 0b 10 00       	mov    $0x100b73,%eax
  1009d6:	6a 00                	push   $0x0
  1009d8:	50                   	push   %eax
  1009d9:	6a 01                	push   $0x1
  1009db:	68 d8 22 10 00       	push   $0x1022d8
  1009e0:	e8 f0 fe ff ff       	call   1008d5 <set_trap>
  1009e5:	83 c4 10             	add    $0x10,%esp
  1009e8:	b8 7a 0b 10 00       	mov    $0x100b7a,%eax
  1009ed:	6a 00                	push   $0x0
  1009ef:	50                   	push   %eax
  1009f0:	6a 01                	push   $0x1
  1009f2:	68 e0 22 10 00       	push   $0x1022e0
  1009f7:	e8 d9 fe ff ff       	call   1008d5 <set_trap>
  1009fc:	83 c4 10             	add    $0x10,%esp
  1009ff:	b8 81 0b 10 00       	mov    $0x100b81,%eax
  100a04:	6a 00                	push   $0x0
  100a06:	50                   	push   %eax
  100a07:	6a 01                	push   $0x1
  100a09:	68 e8 22 10 00       	push   $0x1022e8
  100a0e:	e8 c2 fe ff ff       	call   1008d5 <set_trap>
  100a13:	83 c4 10             	add    $0x10,%esp
  100a16:	b8 88 0b 10 00       	mov    $0x100b88,%eax
  100a1b:	6a 00                	push   $0x0
  100a1d:	50                   	push   %eax
  100a1e:	6a 01                	push   $0x1
  100a20:	68 f0 22 10 00       	push   $0x1022f0
  100a25:	e8 ab fe ff ff       	call   1008d5 <set_trap>
  100a2a:	83 c4 10             	add    $0x10,%esp
  100a2d:	b8 8f 0b 10 00       	mov    $0x100b8f,%eax
  100a32:	6a 00                	push   $0x0
  100a34:	50                   	push   %eax
  100a35:	6a 01                	push   $0x1
  100a37:	68 f8 22 10 00       	push   $0x1022f8
  100a3c:	e8 94 fe ff ff       	call   1008d5 <set_trap>
  100a41:	83 c4 10             	add    $0x10,%esp
  100a44:	b8 96 0b 10 00       	mov    $0x100b96,%eax
  100a49:	6a 00                	push   $0x0
  100a4b:	50                   	push   %eax
  100a4c:	6a 01                	push   $0x1
  100a4e:	68 00 23 10 00       	push   $0x102300
  100a53:	e8 7d fe ff ff       	call   1008d5 <set_trap>
  100a58:	83 c4 10             	add    $0x10,%esp
  100a5b:	b8 9d 0b 10 00       	mov    $0x100b9d,%eax
  100a60:	6a 00                	push   $0x0
  100a62:	50                   	push   %eax
  100a63:	6a 01                	push   $0x1
  100a65:	68 08 23 10 00       	push   $0x102308
  100a6a:	e8 66 fe ff ff       	call   1008d5 <set_trap>
  100a6f:	83 c4 10             	add    $0x10,%esp
  100a72:	b8 a4 0b 10 00       	mov    $0x100ba4,%eax
  100a77:	6a 00                	push   $0x0
  100a79:	50                   	push   %eax
  100a7a:	6a 01                	push   $0x1
  100a7c:	68 10 23 10 00       	push   $0x102310
  100a81:	e8 4f fe ff ff       	call   1008d5 <set_trap>
  100a86:	83 c4 10             	add    $0x10,%esp
  100a89:	b8 ab 0b 10 00       	mov    $0x100bab,%eax
  100a8e:	6a 00                	push   $0x0
  100a90:	50                   	push   %eax
  100a91:	6a 01                	push   $0x1
  100a93:	68 18 23 10 00       	push   $0x102318
  100a98:	e8 38 fe ff ff       	call   1008d5 <set_trap>
  100a9d:	83 c4 10             	add    $0x10,%esp
  100aa0:	b8 b2 0b 10 00       	mov    $0x100bb2,%eax
  100aa5:	6a 00                	push   $0x0
  100aa7:	50                   	push   %eax
  100aa8:	6a 01                	push   $0x1
  100aaa:	68 20 23 10 00       	push   $0x102320
  100aaf:	e8 21 fe ff ff       	call   1008d5 <set_trap>
  100ab4:	83 c4 10             	add    $0x10,%esp
  100ab7:	b8 b9 0b 10 00       	mov    $0x100bb9,%eax
  100abc:	6a 00                	push   $0x0
  100abe:	50                   	push   %eax
  100abf:	6a 01                	push   $0x1
  100ac1:	68 28 23 10 00       	push   $0x102328
  100ac6:	e8 0a fe ff ff       	call   1008d5 <set_trap>
  100acb:	83 c4 10             	add    $0x10,%esp
  100ace:	b8 c0 0b 10 00       	mov    $0x100bc0,%eax
  100ad3:	6a 00                	push   $0x0
  100ad5:	50                   	push   %eax
  100ad6:	6a 01                	push   $0x1
  100ad8:	68 30 23 10 00       	push   $0x102330
  100add:	e8 f3 fd ff ff       	call   1008d5 <set_trap>
  100ae2:	83 c4 10             	add    $0x10,%esp
  100ae5:	b8 c7 0b 10 00       	mov    $0x100bc7,%eax
  100aea:	6a 00                	push   $0x0
  100aec:	50                   	push   %eax
  100aed:	6a 01                	push   $0x1
  100aef:	68 c0 23 10 00       	push   $0x1023c0
  100af4:	e8 5c fd ff ff       	call   100855 <set_intr>
  100af9:	83 c4 10             	add    $0x10,%esp
  100afc:	b8 d1 0b 10 00       	mov    $0x100bd1,%eax
  100b01:	6a 00                	push   $0x0
  100b03:	50                   	push   %eax
  100b04:	6a 01                	push   $0x1
  100b06:	68 c8 23 10 00       	push   $0x1023c8
  100b0b:	e8 45 fd ff ff       	call   100855 <set_intr>
  100b10:	83 c4 10             	add    $0x10,%esp
  100b13:	b8 db 0b 10 00       	mov    $0x100bdb,%eax
  100b18:	6a 00                	push   $0x0
  100b1a:	50                   	push   %eax
  100b1b:	6a 01                	push   $0x1
  100b1d:	68 30 24 10 00       	push   $0x102430
  100b22:	e8 2e fd ff ff       	call   100855 <set_intr>
  100b27:	83 c4 10             	add    $0x10,%esp
  100b2a:	b8 e5 0b 10 00       	mov    $0x100be5,%eax
  100b2f:	6a 03                	push   $0x3
  100b31:	50                   	push   %eax
  100b32:	6a 01                	push   $0x1
  100b34:	68 c0 26 10 00       	push   $0x1026c0
  100b39:	e8 97 fd ff ff       	call   1008d5 <set_trap>
  100b3e:	83 c4 10             	add    $0x10,%esp
  100b41:	68 00 08 00 00       	push   $0x800
  100b46:	68 c0 22 10 00       	push   $0x1022c0
  100b4b:	e8 d7 fc ff ff       	call   100827 <save_idt>
  100b50:	83 c4 08             	add    $0x8,%esp
  100b53:	c9                   	leave  
  100b54:	c3                   	ret    

00100b55 <vec0>:
  100b55:	fa                   	cli    
  100b56:	6a 00                	push   $0x0
  100b58:	6a 00                	push   $0x0
  100b5a:	e9 97 00 00 00       	jmp    100bf6 <asm_do_irq>

00100b5f <vec1>:
  100b5f:	fa                   	cli    
  100b60:	6a 00                	push   $0x0
  100b62:	6a 01                	push   $0x1
  100b64:	e9 8d 00 00 00       	jmp    100bf6 <asm_do_irq>

00100b69 <vec2>:
  100b69:	fa                   	cli    
  100b6a:	6a 00                	push   $0x0
  100b6c:	6a 02                	push   $0x2
  100b6e:	e9 83 00 00 00       	jmp    100bf6 <asm_do_irq>

00100b73 <vec3>:
  100b73:	fa                   	cli    
  100b74:	6a 00                	push   $0x0
  100b76:	6a 03                	push   $0x3
  100b78:	eb 7c                	jmp    100bf6 <asm_do_irq>

00100b7a <vec4>:
  100b7a:	fa                   	cli    
  100b7b:	6a 00                	push   $0x0
  100b7d:	6a 04                	push   $0x4
  100b7f:	eb 75                	jmp    100bf6 <asm_do_irq>

00100b81 <vec5>:
  100b81:	fa                   	cli    
  100b82:	6a 00                	push   $0x0
  100b84:	6a 05                	push   $0x5
  100b86:	eb 6e                	jmp    100bf6 <asm_do_irq>

00100b88 <vec6>:
  100b88:	fa                   	cli    
  100b89:	6a 00                	push   $0x0
  100b8b:	6a 06                	push   $0x6
  100b8d:	eb 67                	jmp    100bf6 <asm_do_irq>

00100b8f <vec7>:
  100b8f:	fa                   	cli    
  100b90:	6a 00                	push   $0x0
  100b92:	6a 07                	push   $0x7
  100b94:	eb 60                	jmp    100bf6 <asm_do_irq>

00100b96 <vec8>:
  100b96:	fa                   	cli    
  100b97:	6a 00                	push   $0x0
  100b99:	6a 08                	push   $0x8
  100b9b:	eb 59                	jmp    100bf6 <asm_do_irq>

00100b9d <vec9>:
  100b9d:	fa                   	cli    
  100b9e:	6a 00                	push   $0x0
  100ba0:	6a 09                	push   $0x9
  100ba2:	eb 52                	jmp    100bf6 <asm_do_irq>

00100ba4 <vec10>:
  100ba4:	fa                   	cli    
  100ba5:	6a 00                	push   $0x0
  100ba7:	6a 0a                	push   $0xa
  100ba9:	eb 4b                	jmp    100bf6 <asm_do_irq>

00100bab <vec11>:
  100bab:	fa                   	cli    
  100bac:	6a 00                	push   $0x0
  100bae:	6a 0b                	push   $0xb
  100bb0:	eb 44                	jmp    100bf6 <asm_do_irq>

00100bb2 <vec12>:
  100bb2:	fa                   	cli    
  100bb3:	6a 00                	push   $0x0
  100bb5:	6a 0c                	push   $0xc
  100bb7:	eb 3d                	jmp    100bf6 <asm_do_irq>

00100bb9 <vec13>:
  100bb9:	fa                   	cli    
  100bba:	6a 00                	push   $0x0
  100bbc:	6a 0d                	push   $0xd
  100bbe:	eb 36                	jmp    100bf6 <asm_do_irq>

00100bc0 <vec14>:
  100bc0:	fa                   	cli    
  100bc1:	6a 00                	push   $0x0
  100bc3:	6a 0e                	push   $0xe
  100bc5:	eb 2f                	jmp    100bf6 <asm_do_irq>

00100bc7 <irq0>:
  100bc7:	fa                   	cli    
  100bc8:	6a 00                	push   $0x0
  100bca:	68 e8 03 00 00       	push   $0x3e8
  100bcf:	eb 25                	jmp    100bf6 <asm_do_irq>

00100bd1 <irq1>:
  100bd1:	fa                   	cli    
  100bd2:	6a 00                	push   $0x0
  100bd4:	68 e9 03 00 00       	push   $0x3e9
  100bd9:	eb 1b                	jmp    100bf6 <asm_do_irq>

00100bdb <irq14>:
  100bdb:	fa                   	cli    
  100bdc:	6a 00                	push   $0x0
  100bde:	68 f6 03 00 00       	push   $0x3f6
  100be3:	eb 11                	jmp    100bf6 <asm_do_irq>

00100be5 <syscall>:
  100be5:	fa                   	cli    
  100be6:	6a 00                	push   $0x0
  100be8:	68 80 00 00 00       	push   $0x80
  100bed:	eb 07                	jmp    100bf6 <asm_do_irq>

00100bef <irq_empty>:
  100bef:	fa                   	cli    
  100bf0:	6a 00                	push   $0x0
  100bf2:	6a ff                	push   $0xffffffff
  100bf4:	eb 00                	jmp    100bf6 <asm_do_irq>

00100bf6 <asm_do_irq>:
  100bf6:	60                   	pusha  
  100bf7:	54                   	push   %esp
  100bf8:	e8 09 00 00 00       	call   100c06 <irq_handle>
  100bfd:	83 c4 04             	add    $0x4,%esp
  100c00:	61                   	popa   
  100c01:	83 c4 08             	add    $0x8,%esp
  100c04:	fb                   	sti    
  100c05:	cf                   	iret   

00100c06 <irq_handle>:
  100c06:	55                   	push   %ebp
  100c07:	89 e5                	mov    %esp,%ebp
  100c09:	83 ec 38             	sub    $0x38,%esp
  100c0c:	8b 45 08             	mov    0x8(%ebp),%eax
  100c0f:	8b 40 20             	mov    0x20(%eax),%eax
  100c12:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  100c17:	75 0a                	jne    100c23 <irq_handle+0x1d>
  100c19:	e8 e2 f3 ff ff       	call   100000 <timer_event>
  100c1e:	e9 7e 01 00 00       	jmp    100da1 <irq_handle+0x19b>
  100c23:	8b 45 08             	mov    0x8(%ebp),%eax
  100c26:	8b 40 20             	mov    0x20(%eax),%eax
  100c29:	3d e9 03 00 00       	cmp    $0x3e9,%eax
  100c2e:	75 7b                	jne    100cab <irq_handle+0xa5>
  100c30:	c7 45 ec 60 00 00 00 	movl   $0x60,-0x14(%ebp)
  100c37:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c3a:	89 c2                	mov    %eax,%edx
  100c3c:	ec                   	in     (%dx),%al
  100c3d:	88 45 eb             	mov    %al,-0x15(%ebp)
  100c40:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  100c44:	0f b6 c0             	movzbl %al,%eax
  100c47:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c4a:	c7 45 e4 61 00 00 00 	movl   $0x61,-0x1c(%ebp)
  100c51:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100c54:	89 c2                	mov    %eax,%edx
  100c56:	ec                   	in     (%dx),%al
  100c57:	88 45 e3             	mov    %al,-0x1d(%ebp)
  100c5a:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
  100c5e:	0f b6 c0             	movzbl %al,%eax
  100c61:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100c64:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100c67:	83 c8 80             	or     $0xffffff80,%eax
  100c6a:	0f b6 c0             	movzbl %al,%eax
  100c6d:	c7 45 dc 61 00 00 00 	movl   $0x61,-0x24(%ebp)
  100c74:	88 45 db             	mov    %al,-0x25(%ebp)
  100c77:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
  100c7b:	8b 55 dc             	mov    -0x24(%ebp),%edx
  100c7e:	ee                   	out    %al,(%dx)
  100c7f:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100c82:	0f b6 c0             	movzbl %al,%eax
  100c85:	c7 45 d4 61 00 00 00 	movl   $0x61,-0x2c(%ebp)
  100c8c:	88 45 d3             	mov    %al,-0x2d(%ebp)
  100c8f:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
  100c93:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  100c96:	ee                   	out    %al,(%dx)
  100c97:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c9a:	83 ec 0c             	sub    $0xc,%esp
  100c9d:	50                   	push   %eax
  100c9e:	e8 88 f4 ff ff       	call   10012b <keyboard_event>
  100ca3:	83 c4 10             	add    $0x10,%esp
  100ca6:	e9 f6 00 00 00       	jmp    100da1 <irq_handle+0x19b>
  100cab:	8b 45 08             	mov    0x8(%ebp),%eax
  100cae:	8b 40 20             	mov    0x20(%eax),%eax
  100cb1:	3d f6 03 00 00       	cmp    $0x3f6,%eax
  100cb6:	0f 84 e5 00 00 00    	je     100da1 <irq_handle+0x19b>
  100cbc:	8b 45 08             	mov    0x8(%ebp),%eax
  100cbf:	8b 40 20             	mov    0x20(%eax),%eax
  100cc2:	3d 80 00 00 00       	cmp    $0x80,%eax
  100cc7:	0f 85 d4 00 00 00    	jne    100da1 <irq_handle+0x19b>
  100ccd:	8b 45 08             	mov    0x8(%ebp),%eax
  100cd0:	8b 40 1c             	mov    0x1c(%eax),%eax
  100cd3:	83 f8 01             	cmp    $0x1,%eax
  100cd6:	75 26                	jne    100cfe <irq_handle+0xf8>
  100cd8:	8b 45 08             	mov    0x8(%ebp),%eax
  100cdb:	8b 40 10             	mov    0x10(%eax),%eax
  100cde:	83 f8 01             	cmp    $0x1,%eax
  100ce1:	0f 85 ba 00 00 00    	jne    100da1 <irq_handle+0x19b>
  100ce7:	8b 45 08             	mov    0x8(%ebp),%eax
  100cea:	8b 40 18             	mov    0x18(%eax),%eax
  100ced:	83 ec 0c             	sub    $0xc,%esp
  100cf0:	50                   	push   %eax
  100cf1:	e8 d5 03 00 00       	call   1010cb <printk>
  100cf6:	83 c4 10             	add    $0x10,%esp
  100cf9:	e9 a3 00 00 00       	jmp    100da1 <irq_handle+0x19b>
  100cfe:	8b 45 08             	mov    0x8(%ebp),%eax
  100d01:	8b 40 1c             	mov    0x1c(%eax),%eax
  100d04:	83 f8 02             	cmp    $0x2,%eax
  100d07:	75 2b                	jne    100d34 <irq_handle+0x12e>
  100d09:	8b 45 08             	mov    0x8(%ebp),%eax
  100d0c:	8b 40 10             	mov    0x10(%eax),%eax
  100d0f:	85 c0                	test   %eax,%eax
  100d11:	75 0f                	jne    100d22 <irq_handle+0x11c>
  100d13:	e8 fa f2 ff ff       	call   100012 <get_time>
  100d18:	89 c2                	mov    %eax,%edx
  100d1a:	8b 45 08             	mov    0x8(%ebp),%eax
  100d1d:	89 50 1c             	mov    %edx,0x1c(%eax)
  100d20:	eb 7f                	jmp    100da1 <irq_handle+0x19b>
  100d22:	8b 45 08             	mov    0x8(%ebp),%eax
  100d25:	8b 40 10             	mov    0x10(%eax),%eax
  100d28:	83 f8 01             	cmp    $0x1,%eax
  100d2b:	75 74                	jne    100da1 <irq_handle+0x19b>
  100d2d:	e8 ea f2 ff ff       	call   10001c <time_pop>
  100d32:	eb 6d                	jmp    100da1 <irq_handle+0x19b>
  100d34:	8b 45 08             	mov    0x8(%ebp),%eax
  100d37:	8b 40 1c             	mov    0x1c(%eax),%eax
  100d3a:	83 f8 03             	cmp    $0x3,%eax
  100d3d:	75 2b                	jne    100d6a <irq_handle+0x164>
  100d3f:	8b 45 08             	mov    0x8(%ebp),%eax
  100d42:	8b 40 10             	mov    0x10(%eax),%eax
  100d45:	85 c0                	test   %eax,%eax
  100d47:	75 0f                	jne    100d58 <irq_handle+0x152>
  100d49:	e8 c4 f3 ff ff       	call   100112 <last_key_code>
  100d4e:	89 c2                	mov    %eax,%edx
  100d50:	8b 45 08             	mov    0x8(%ebp),%eax
  100d53:	89 50 1c             	mov    %edx,0x1c(%eax)
  100d56:	eb 49                	jmp    100da1 <irq_handle+0x19b>
  100d58:	8b 45 08             	mov    0x8(%ebp),%eax
  100d5b:	8b 40 10             	mov    0x10(%eax),%eax
  100d5e:	83 f8 01             	cmp    $0x1,%eax
  100d61:	75 3e                	jne    100da1 <irq_handle+0x19b>
  100d63:	e8 b4 f3 ff ff       	call   10011c <reset_last_key>
  100d68:	eb 37                	jmp    100da1 <irq_handle+0x19b>
  100d6a:	8b 45 08             	mov    0x8(%ebp),%eax
  100d6d:	8b 40 1c             	mov    0x1c(%eax),%eax
  100d70:	83 f8 04             	cmp    $0x4,%eax
  100d73:	75 2c                	jne    100da1 <irq_handle+0x19b>
  100d75:	83 ec 0c             	sub    $0xc,%esp
  100d78:	68 70 15 10 00       	push   $0x101570
  100d7d:	e8 49 03 00 00       	call   1010cb <printk>
  100d82:	83 c4 10             	add    $0x10,%esp
  100d85:	8b 45 08             	mov    0x8(%ebp),%eax
  100d88:	8b 40 10             	mov    0x10(%eax),%eax
  100d8b:	83 ec 04             	sub    $0x4,%esp
  100d8e:	68 00 00 01 00       	push   $0x10000
  100d93:	50                   	push   %eax
  100d94:	68 00 00 0a 00       	push   $0xa0000
  100d99:	e8 52 03 00 00       	call   1010f0 <my_memcpy>
  100d9e:	83 c4 10             	add    $0x10,%esp
  100da1:	c9                   	leave  
  100da2:	c3                   	ret    

00100da3 <change>:
  100da3:	55                   	push   %ebp
  100da4:	89 e5                	mov    %esp,%ebp
  100da6:	53                   	push   %ebx
  100da7:	83 c4 80             	add    $0xffffff80,%esp
  100daa:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100db1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100db8:	8b 45 08             	mov    0x8(%ebp),%eax
  100dbb:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100dbe:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  100dc2:	75 14                	jne    100dd8 <change+0x35>
  100dc4:	8b 45 0c             	mov    0xc(%ebp),%eax
  100dc7:	c6 00 30             	movb   $0x30,(%eax)
  100dca:	8b 45 0c             	mov    0xc(%ebp),%eax
  100dcd:	83 c0 01             	add    $0x1,%eax
  100dd0:	c6 00 00             	movb   $0x0,(%eax)
  100dd3:	e9 a5 00 00 00       	jmp    100e7d <change+0xda>
  100dd8:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  100ddc:	79 1d                	jns    100dfb <change+0x58>
  100dde:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100de1:	8d 50 01             	lea    0x1(%eax),%edx
  100de4:	89 55 f4             	mov    %edx,-0xc(%ebp)
  100de7:	89 c2                	mov    %eax,%edx
  100de9:	8b 45 0c             	mov    0xc(%ebp),%eax
  100dec:	01 d0                	add    %edx,%eax
  100dee:	c6 00 2d             	movb   $0x2d,(%eax)
  100df1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100df4:	f7 d8                	neg    %eax
  100df6:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100df9:	eb 06                	jmp    100e01 <change+0x5e>
  100dfb:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100dfe:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100e01:	eb 40                	jmp    100e43 <change+0xa0>
  100e03:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  100e06:	8d 41 01             	lea    0x1(%ecx),%eax
  100e09:	89 45 f8             	mov    %eax,-0x8(%ebp)
  100e0c:	8b 5d f0             	mov    -0x10(%ebp),%ebx
  100e0f:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  100e14:	89 d8                	mov    %ebx,%eax
  100e16:	f7 e2                	mul    %edx
  100e18:	c1 ea 03             	shr    $0x3,%edx
  100e1b:	89 d0                	mov    %edx,%eax
  100e1d:	c1 e0 02             	shl    $0x2,%eax
  100e20:	01 d0                	add    %edx,%eax
  100e22:	01 c0                	add    %eax,%eax
  100e24:	29 c3                	sub    %eax,%ebx
  100e26:	89 da                	mov    %ebx,%edx
  100e28:	89 d0                	mov    %edx,%eax
  100e2a:	83 c0 30             	add    $0x30,%eax
  100e2d:	88 44 0d 88          	mov    %al,-0x78(%ebp,%ecx,1)
  100e31:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100e34:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  100e39:	f7 e2                	mul    %edx
  100e3b:	89 d0                	mov    %edx,%eax
  100e3d:	c1 e8 03             	shr    $0x3,%eax
  100e40:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100e43:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  100e47:	75 ba                	jne    100e03 <change+0x60>
  100e49:	eb 21                	jmp    100e6c <change+0xc9>
  100e4b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e4e:	8d 50 01             	lea    0x1(%eax),%edx
  100e51:	89 55 f4             	mov    %edx,-0xc(%ebp)
  100e54:	89 c2                	mov    %eax,%edx
  100e56:	8b 45 0c             	mov    0xc(%ebp),%eax
  100e59:	01 c2                	add    %eax,%edx
  100e5b:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
  100e5f:	8d 4d 88             	lea    -0x78(%ebp),%ecx
  100e62:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100e65:	01 c8                	add    %ecx,%eax
  100e67:	0f b6 00             	movzbl (%eax),%eax
  100e6a:	88 02                	mov    %al,(%edx)
  100e6c:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  100e70:	75 d9                	jne    100e4b <change+0xa8>
  100e72:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100e75:	8b 45 0c             	mov    0xc(%ebp),%eax
  100e78:	01 d0                	add    %edx,%eax
  100e7a:	c6 00 00             	movb   $0x0,(%eax)
  100e7d:	83 ec 80             	sub    $0xffffff80,%esp
  100e80:	5b                   	pop    %ebx
  100e81:	5d                   	pop    %ebp
  100e82:	c3                   	ret    

00100e83 <change_x>:
  100e83:	55                   	push   %ebp
  100e84:	89 e5                	mov    %esp,%ebp
  100e86:	83 ec 70             	sub    $0x70,%esp
  100e89:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100e90:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100e97:	8b 45 08             	mov    0x8(%ebp),%eax
  100e9a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100e9d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100ea1:	75 11                	jne    100eb4 <change_x+0x31>
  100ea3:	8b 45 0c             	mov    0xc(%ebp),%eax
  100ea6:	c6 00 30             	movb   $0x30,(%eax)
  100ea9:	8b 45 0c             	mov    0xc(%ebp),%eax
  100eac:	83 c0 01             	add    $0x1,%eax
  100eaf:	c6 00 00             	movb   $0x0,(%eax)
  100eb2:	eb 7e                	jmp    100f32 <change_x+0xaf>
  100eb4:	eb 42                	jmp    100ef8 <change_x+0x75>
  100eb6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100eb9:	83 e0 0f             	and    $0xf,%eax
  100ebc:	83 f8 09             	cmp    $0x9,%eax
  100ebf:	77 18                	ja     100ed9 <change_x+0x56>
  100ec1:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100ec4:	8d 50 01             	lea    0x1(%eax),%edx
  100ec7:	89 55 fc             	mov    %edx,-0x4(%ebp)
  100eca:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ecd:	83 e2 0f             	and    $0xf,%edx
  100ed0:	83 c2 30             	add    $0x30,%edx
  100ed3:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
  100ed7:	eb 16                	jmp    100eef <change_x+0x6c>
  100ed9:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100edc:	8d 50 01             	lea    0x1(%eax),%edx
  100edf:	89 55 fc             	mov    %edx,-0x4(%ebp)
  100ee2:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ee5:	83 e2 0f             	and    $0xf,%edx
  100ee8:	83 c2 37             	add    $0x37,%edx
  100eeb:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
  100eef:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ef2:	c1 e8 04             	shr    $0x4,%eax
  100ef5:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100ef8:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100efc:	75 b8                	jne    100eb6 <change_x+0x33>
  100efe:	eb 21                	jmp    100f21 <change_x+0x9e>
  100f00:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100f03:	8d 50 01             	lea    0x1(%eax),%edx
  100f06:	89 55 f8             	mov    %edx,-0x8(%ebp)
  100f09:	89 c2                	mov    %eax,%edx
  100f0b:	8b 45 0c             	mov    0xc(%ebp),%eax
  100f0e:	01 c2                	add    %eax,%edx
  100f10:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
  100f14:	8d 4d 90             	lea    -0x70(%ebp),%ecx
  100f17:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100f1a:	01 c8                	add    %ecx,%eax
  100f1c:	0f b6 00             	movzbl (%eax),%eax
  100f1f:	88 02                	mov    %al,(%edx)
  100f21:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  100f25:	75 d9                	jne    100f00 <change_x+0x7d>
  100f27:	8b 55 f8             	mov    -0x8(%ebp),%edx
  100f2a:	8b 45 0c             	mov    0xc(%ebp),%eax
  100f2d:	01 d0                	add    %edx,%eax
  100f2f:	c6 00 00             	movb   $0x0,(%eax)
  100f32:	c9                   	leave  
  100f33:	c3                   	ret    

00100f34 <v_fprintf>:
  100f34:	55                   	push   %ebp
  100f35:	89 e5                	mov    %esp,%ebp
  100f37:	81 ec 88 00 00 00    	sub    $0x88,%esp
  100f3d:	8b 45 0c             	mov    0xc(%ebp),%eax
  100f40:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100f43:	8b 45 10             	mov    0x10(%ebp),%eax
  100f46:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100f49:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  100f50:	e9 61 01 00 00       	jmp    1010b6 <v_fprintf+0x182>
  100f55:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100f58:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100f5b:	01 d0                	add    %edx,%eax
  100f5d:	0f b6 00             	movzbl (%eax),%eax
  100f60:	3c 25                	cmp    $0x25,%al
  100f62:	74 27                	je     100f8b <v_fprintf+0x57>
  100f64:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100f67:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100f6a:	01 d0                	add    %edx,%eax
  100f6c:	0f b6 00             	movzbl (%eax),%eax
  100f6f:	88 45 eb             	mov    %al,-0x15(%ebp)
  100f72:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
  100f76:	83 ec 0c             	sub    $0xc,%esp
  100f79:	50                   	push   %eax
  100f7a:	8b 45 08             	mov    0x8(%ebp),%eax
  100f7d:	ff d0                	call   *%eax
  100f7f:	83 c4 10             	add    $0x10,%esp
  100f82:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  100f86:	e9 2b 01 00 00       	jmp    1010b6 <v_fprintf+0x182>
  100f8b:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  100f8f:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100f92:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100f95:	01 d0                	add    %edx,%eax
  100f97:	0f b6 00             	movzbl (%eax),%eax
  100f9a:	3c 25                	cmp    $0x25,%al
  100f9c:	75 16                	jne    100fb4 <v_fprintf+0x80>
  100f9e:	83 ec 0c             	sub    $0xc,%esp
  100fa1:	6a 25                	push   $0x25
  100fa3:	8b 45 08             	mov    0x8(%ebp),%eax
  100fa6:	ff d0                	call   *%eax
  100fa8:	83 c4 10             	add    $0x10,%esp
  100fab:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  100faf:	e9 02 01 00 00       	jmp    1010b6 <v_fprintf+0x182>
  100fb4:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100fb7:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100fba:	01 d0                	add    %edx,%eax
  100fbc:	0f b6 00             	movzbl (%eax),%eax
  100fbf:	3c 63                	cmp    $0x63,%al
  100fc1:	75 26                	jne    100fe9 <v_fprintf+0xb5>
  100fc3:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  100fc7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fca:	0f b6 00             	movzbl (%eax),%eax
  100fcd:	88 45 eb             	mov    %al,-0x15(%ebp)
  100fd0:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
  100fd4:	83 ec 0c             	sub    $0xc,%esp
  100fd7:	50                   	push   %eax
  100fd8:	8b 45 08             	mov    0x8(%ebp),%eax
  100fdb:	ff d0                	call   *%eax
  100fdd:	83 c4 10             	add    $0x10,%esp
  100fe0:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  100fe4:	e9 cd 00 00 00       	jmp    1010b6 <v_fprintf+0x182>
  100fe9:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100fec:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100fef:	01 d0                	add    %edx,%eax
  100ff1:	0f b6 00             	movzbl (%eax),%eax
  100ff4:	3c 64                	cmp    $0x64,%al
  100ff6:	75 36                	jne    10102e <v_fprintf+0xfa>
  100ff8:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  100ffc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fff:	8b 00                	mov    (%eax),%eax
  101001:	83 ec 08             	sub    $0x8,%esp
  101004:	8d 55 87             	lea    -0x79(%ebp),%edx
  101007:	52                   	push   %edx
  101008:	50                   	push   %eax
  101009:	e8 95 fd ff ff       	call   100da3 <change>
  10100e:	83 c4 10             	add    $0x10,%esp
  101011:	83 ec 04             	sub    $0x4,%esp
  101014:	6a 00                	push   $0x0
  101016:	8d 45 87             	lea    -0x79(%ebp),%eax
  101019:	50                   	push   %eax
  10101a:	ff 75 08             	pushl  0x8(%ebp)
  10101d:	e8 12 ff ff ff       	call   100f34 <v_fprintf>
  101022:	83 c4 10             	add    $0x10,%esp
  101025:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  101029:	e9 88 00 00 00       	jmp    1010b6 <v_fprintf+0x182>
  10102e:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101031:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101034:	01 d0                	add    %edx,%eax
  101036:	0f b6 00             	movzbl (%eax),%eax
  101039:	3c 78                	cmp    $0x78,%al
  10103b:	75 33                	jne    101070 <v_fprintf+0x13c>
  10103d:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  101041:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101044:	8b 00                	mov    (%eax),%eax
  101046:	83 ec 08             	sub    $0x8,%esp
  101049:	8d 55 87             	lea    -0x79(%ebp),%edx
  10104c:	52                   	push   %edx
  10104d:	50                   	push   %eax
  10104e:	e8 30 fe ff ff       	call   100e83 <change_x>
  101053:	83 c4 10             	add    $0x10,%esp
  101056:	83 ec 04             	sub    $0x4,%esp
  101059:	6a 00                	push   $0x0
  10105b:	8d 45 87             	lea    -0x79(%ebp),%eax
  10105e:	50                   	push   %eax
  10105f:	ff 75 08             	pushl  0x8(%ebp)
  101062:	e8 cd fe ff ff       	call   100f34 <v_fprintf>
  101067:	83 c4 10             	add    $0x10,%esp
  10106a:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  10106e:	eb 46                	jmp    1010b6 <v_fprintf+0x182>
  101070:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101073:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101076:	01 d0                	add    %edx,%eax
  101078:	0f b6 00             	movzbl (%eax),%eax
  10107b:	3c 73                	cmp    $0x73,%al
  10107d:	75 20                	jne    10109f <v_fprintf+0x16b>
  10107f:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  101083:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101086:	8b 00                	mov    (%eax),%eax
  101088:	83 ec 04             	sub    $0x4,%esp
  10108b:	6a 00                	push   $0x0
  10108d:	50                   	push   %eax
  10108e:	ff 75 08             	pushl  0x8(%ebp)
  101091:	e8 9e fe ff ff       	call   100f34 <v_fprintf>
  101096:	83 c4 10             	add    $0x10,%esp
  101099:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  10109d:	eb 17                	jmp    1010b6 <v_fprintf+0x182>
  10109f:	83 ec 04             	sub    $0x4,%esp
  1010a2:	6a 00                	push   $0x0
  1010a4:	68 84 15 10 00       	push   $0x101584
  1010a9:	ff 75 08             	pushl  0x8(%ebp)
  1010ac:	e8 83 fe ff ff       	call   100f34 <v_fprintf>
  1010b1:	83 c4 10             	add    $0x10,%esp
  1010b4:	eb 13                	jmp    1010c9 <v_fprintf+0x195>
  1010b6:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1010b9:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1010bc:	01 d0                	add    %edx,%eax
  1010be:	0f b6 00             	movzbl (%eax),%eax
  1010c1:	84 c0                	test   %al,%al
  1010c3:	0f 85 8c fe ff ff    	jne    100f55 <v_fprintf+0x21>
  1010c9:	c9                   	leave  
  1010ca:	c3                   	ret    

001010cb <printk>:
  1010cb:	55                   	push   %ebp
  1010cc:	89 e5                	mov    %esp,%ebp
  1010ce:	83 ec 18             	sub    $0x18,%esp
  1010d1:	8d 45 0c             	lea    0xc(%ebp),%eax
  1010d4:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1010d7:	8b 45 08             	mov    0x8(%ebp),%eax
  1010da:	83 ec 04             	sub    $0x4,%esp
  1010dd:	ff 75 f4             	pushl  -0xc(%ebp)
  1010e0:	50                   	push   %eax
  1010e1:	68 a3 02 10 00       	push   $0x1002a3
  1010e6:	e8 49 fe ff ff       	call   100f34 <v_fprintf>
  1010eb:	83 c4 10             	add    $0x10,%esp
  1010ee:	c9                   	leave  
  1010ef:	c3                   	ret    

001010f0 <my_memcpy>:
  1010f0:	55                   	push   %ebp
  1010f1:	89 e5                	mov    %esp,%ebp
  1010f3:	57                   	push   %edi
  1010f4:	56                   	push   %esi
  1010f5:	53                   	push   %ebx
  1010f6:	8b 45 10             	mov    0x10(%ebp),%eax
  1010f9:	8b 55 0c             	mov    0xc(%ebp),%edx
  1010fc:	8b 5d 08             	mov    0x8(%ebp),%ebx
  1010ff:	89 c1                	mov    %eax,%ecx
  101101:	89 d6                	mov    %edx,%esi
  101103:	89 df                	mov    %ebx,%edi
  101105:	fc                   	cld    
  101106:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  101108:	5b                   	pop    %ebx
  101109:	5e                   	pop    %esi
  10110a:	5f                   	pop    %edi
  10110b:	5d                   	pop    %ebp
  10110c:	c3                   	ret    

0010110d <my_memset>:
  10110d:	55                   	push   %ebp
  10110e:	89 e5                	mov    %esp,%ebp
  101110:	57                   	push   %edi
  101111:	53                   	push   %ebx
  101112:	8b 55 10             	mov    0x10(%ebp),%edx
  101115:	8b 45 0c             	mov    0xc(%ebp),%eax
  101118:	8b 5d 08             	mov    0x8(%ebp),%ebx
  10111b:	89 d1                	mov    %edx,%ecx
  10111d:	89 df                	mov    %ebx,%edi
  10111f:	fc                   	cld    
  101120:	f3 aa                	rep stos %al,%es:(%edi)
  101122:	5b                   	pop    %ebx
  101123:	5f                   	pop    %edi
  101124:	5d                   	pop    %ebp
  101125:	c3                   	ret    

00101126 <inb>:
  101126:	55                   	push   %ebp
  101127:	89 e5                	mov    %esp,%ebp
  101129:	83 ec 10             	sub    $0x10,%esp
  10112c:	8b 45 08             	mov    0x8(%ebp),%eax
  10112f:	89 c2                	mov    %eax,%edx
  101131:	ec                   	in     (%dx),%al
  101132:	88 45 ff             	mov    %al,-0x1(%ebp)
  101135:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  101139:	c9                   	leave  
  10113a:	c3                   	ret    

0010113b <insl>:
  10113b:	55                   	push   %ebp
  10113c:	89 e5                	mov    %esp,%ebp
  10113e:	57                   	push   %edi
  10113f:	53                   	push   %ebx
  101140:	8b 55 08             	mov    0x8(%ebp),%edx
  101143:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  101146:	8b 45 10             	mov    0x10(%ebp),%eax
  101149:	89 cb                	mov    %ecx,%ebx
  10114b:	89 df                	mov    %ebx,%edi
  10114d:	89 c1                	mov    %eax,%ecx
  10114f:	fc                   	cld    
  101150:	f2 6d                	repnz insl (%dx),%es:(%edi)
  101152:	89 c8                	mov    %ecx,%eax
  101154:	89 fb                	mov    %edi,%ebx
  101156:	89 5d 0c             	mov    %ebx,0xc(%ebp)
  101159:	89 45 10             	mov    %eax,0x10(%ebp)
  10115c:	5b                   	pop    %ebx
  10115d:	5f                   	pop    %edi
  10115e:	5d                   	pop    %ebp
  10115f:	c3                   	ret    

00101160 <outb>:
  101160:	55                   	push   %ebp
  101161:	89 e5                	mov    %esp,%ebp
  101163:	83 ec 04             	sub    $0x4,%esp
  101166:	8b 45 0c             	mov    0xc(%ebp),%eax
  101169:	88 45 fc             	mov    %al,-0x4(%ebp)
  10116c:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  101170:	8b 55 08             	mov    0x8(%ebp),%edx
  101173:	ee                   	out    %al,(%dx)
  101174:	c9                   	leave  
  101175:	c3                   	ret    

00101176 <waitdisk>:
  101176:	55                   	push   %ebp
  101177:	89 e5                	mov    %esp,%ebp
  101179:	90                   	nop
  10117a:	68 f7 01 00 00       	push   $0x1f7
  10117f:	e8 a2 ff ff ff       	call   101126 <inb>
  101184:	83 c4 04             	add    $0x4,%esp
  101187:	0f b6 c0             	movzbl %al,%eax
  10118a:	25 c0 00 00 00       	and    $0xc0,%eax
  10118f:	83 f8 40             	cmp    $0x40,%eax
  101192:	75 e6                	jne    10117a <waitdisk+0x4>
  101194:	c9                   	leave  
  101195:	c3                   	ret    

00101196 <readsect>:
  101196:	55                   	push   %ebp
  101197:	89 e5                	mov    %esp,%ebp
  101199:	e8 d8 ff ff ff       	call   101176 <waitdisk>
  10119e:	6a 01                	push   $0x1
  1011a0:	68 f2 01 00 00       	push   $0x1f2
  1011a5:	e8 b6 ff ff ff       	call   101160 <outb>
  1011aa:	83 c4 08             	add    $0x8,%esp
  1011ad:	8b 45 0c             	mov    0xc(%ebp),%eax
  1011b0:	0f b6 c0             	movzbl %al,%eax
  1011b3:	50                   	push   %eax
  1011b4:	68 f3 01 00 00       	push   $0x1f3
  1011b9:	e8 a2 ff ff ff       	call   101160 <outb>
  1011be:	83 c4 08             	add    $0x8,%esp
  1011c1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1011c4:	c1 e8 08             	shr    $0x8,%eax
  1011c7:	0f b6 c0             	movzbl %al,%eax
  1011ca:	50                   	push   %eax
  1011cb:	68 f4 01 00 00       	push   $0x1f4
  1011d0:	e8 8b ff ff ff       	call   101160 <outb>
  1011d5:	83 c4 08             	add    $0x8,%esp
  1011d8:	8b 45 0c             	mov    0xc(%ebp),%eax
  1011db:	c1 e8 10             	shr    $0x10,%eax
  1011de:	0f b6 c0             	movzbl %al,%eax
  1011e1:	50                   	push   %eax
  1011e2:	68 f5 01 00 00       	push   $0x1f5
  1011e7:	e8 74 ff ff ff       	call   101160 <outb>
  1011ec:	83 c4 08             	add    $0x8,%esp
  1011ef:	8b 45 0c             	mov    0xc(%ebp),%eax
  1011f2:	c1 e8 18             	shr    $0x18,%eax
  1011f5:	83 c8 e0             	or     $0xffffffe0,%eax
  1011f8:	0f b6 c0             	movzbl %al,%eax
  1011fb:	50                   	push   %eax
  1011fc:	68 f6 01 00 00       	push   $0x1f6
  101201:	e8 5a ff ff ff       	call   101160 <outb>
  101206:	83 c4 08             	add    $0x8,%esp
  101209:	6a 20                	push   $0x20
  10120b:	68 f7 01 00 00       	push   $0x1f7
  101210:	e8 4b ff ff ff       	call   101160 <outb>
  101215:	83 c4 08             	add    $0x8,%esp
  101218:	e8 59 ff ff ff       	call   101176 <waitdisk>
  10121d:	68 80 00 00 00       	push   $0x80
  101222:	ff 75 08             	pushl  0x8(%ebp)
  101225:	68 f0 01 00 00       	push   $0x1f0
  10122a:	e8 0c ff ff ff       	call   10113b <insl>
  10122f:	83 c4 0c             	add    $0xc,%esp
  101232:	c9                   	leave  
  101233:	c3                   	ret    

00101234 <read_disk>:
  101234:	55                   	push   %ebp
  101235:	89 e5                	mov    %esp,%ebp
  101237:	83 ec 10             	sub    $0x10,%esp
  10123a:	8b 55 0c             	mov    0xc(%ebp),%edx
  10123d:	8b 45 08             	mov    0x8(%ebp),%eax
  101240:	01 d0                	add    %edx,%eax
  101242:	89 45 f8             	mov    %eax,-0x8(%ebp)
  101245:	8b 45 10             	mov    0x10(%ebp),%eax
  101248:	99                   	cltd   
  101249:	c1 ea 17             	shr    $0x17,%edx
  10124c:	01 d0                	add    %edx,%eax
  10124e:	25 ff 01 00 00       	and    $0x1ff,%eax
  101253:	29 d0                	sub    %edx,%eax
  101255:	f7 d8                	neg    %eax
  101257:	01 45 08             	add    %eax,0x8(%ebp)
  10125a:	8b 45 10             	mov    0x10(%ebp),%eax
  10125d:	8d 90 ff 01 00 00    	lea    0x1ff(%eax),%edx
  101263:	85 c0                	test   %eax,%eax
  101265:	0f 48 c2             	cmovs  %edx,%eax
  101268:	c1 f8 09             	sar    $0x9,%eax
  10126b:	83 c0 01             	add    $0x1,%eax
  10126e:	89 45 fc             	mov    %eax,-0x4(%ebp)
  101271:	eb 1a                	jmp    10128d <read_disk+0x59>
  101273:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101276:	50                   	push   %eax
  101277:	ff 75 08             	pushl  0x8(%ebp)
  10127a:	e8 17 ff ff ff       	call   101196 <readsect>
  10127f:	83 c4 08             	add    $0x8,%esp
  101282:	81 45 08 00 02 00 00 	addl   $0x200,0x8(%ebp)
  101289:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  10128d:	8b 45 08             	mov    0x8(%ebp),%eax
  101290:	3b 45 f8             	cmp    -0x8(%ebp),%eax
  101293:	72 de                	jb     101273 <read_disk+0x3f>
  101295:	c9                   	leave  
  101296:	c3                   	ret    

00101297 <load>:
  101297:	55                   	push   %ebp
  101298:	89 e5                	mov    %esp,%ebp
  10129a:	83 ec 18             	sub    $0x18,%esp
  10129d:	c7 45 ec 00 00 08 00 	movl   $0x80000,-0x14(%ebp)
  1012a4:	68 00 90 01 00       	push   $0x19000
  1012a9:	68 00 10 00 00       	push   $0x1000
  1012ae:	ff 75 ec             	pushl  -0x14(%ebp)
  1012b1:	e8 7e ff ff ff       	call   101234 <read_disk>
  1012b6:	83 c4 0c             	add    $0xc,%esp
  1012b9:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1012bc:	8b 50 1c             	mov    0x1c(%eax),%edx
  1012bf:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1012c2:	01 d0                	add    %edx,%eax
  1012c4:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1012c7:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1012ca:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
  1012ce:	0f b7 c0             	movzwl %ax,%eax
  1012d1:	c1 e0 05             	shl    $0x5,%eax
  1012d4:	89 c2                	mov    %eax,%edx
  1012d6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1012d9:	01 d0                	add    %edx,%eax
  1012db:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1012de:	eb 5a                	jmp    10133a <load+0xa3>
  1012e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1012e3:	8b 40 04             	mov    0x4(%eax),%eax
  1012e6:	05 00 90 01 00       	add    $0x19000,%eax
  1012eb:	89 c1                	mov    %eax,%ecx
  1012ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1012f0:	8b 40 10             	mov    0x10(%eax),%eax
  1012f3:	89 c2                	mov    %eax,%edx
  1012f5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1012f8:	8b 40 0c             	mov    0xc(%eax),%eax
  1012fb:	51                   	push   %ecx
  1012fc:	52                   	push   %edx
  1012fd:	50                   	push   %eax
  1012fe:	e8 31 ff ff ff       	call   101234 <read_disk>
  101303:	83 c4 0c             	add    $0xc,%esp
  101306:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101309:	8b 50 0c             	mov    0xc(%eax),%edx
  10130c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10130f:	8b 40 10             	mov    0x10(%eax),%eax
  101312:	01 d0                	add    %edx,%eax
  101314:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101317:	eb 0a                	jmp    101323 <load+0x8c>
  101319:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10131c:	c6 00 00             	movb   $0x0,(%eax)
  10131f:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  101323:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101326:	8b 50 0c             	mov    0xc(%eax),%edx
  101329:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10132c:	8b 40 14             	mov    0x14(%eax),%eax
  10132f:	01 d0                	add    %edx,%eax
  101331:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  101334:	77 e3                	ja     101319 <load+0x82>
  101336:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  10133a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10133d:	3b 45 e8             	cmp    -0x18(%ebp),%eax
  101340:	72 9e                	jb     1012e0 <load+0x49>
  101342:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101345:	8b 40 18             	mov    0x18(%eax),%eax
  101348:	83 ec 08             	sub    $0x8,%esp
  10134b:	50                   	push   %eax
  10134c:	68 a4 15 10 00       	push   $0x1015a4
  101351:	e8 75 fd ff ff       	call   1010cb <printk>
  101356:	83 c4 10             	add    $0x10,%esp
  101359:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10135c:	8b 40 18             	mov    0x18(%eax),%eax
  10135f:	a3 c0 2a 10 00       	mov    %eax,0x102ac0
  101364:	c9                   	leave  
  101365:	c3                   	ret    

00101366 <init_PCB>:
  101366:	55                   	push   %ebp
  101367:	89 e5                	mov    %esp,%ebp
  101369:	c7 05 08 2b 10 00 00 	movl   $0x0,0x102b08
  101370:	00 00 00 
  101373:	c7 05 10 2b 10 00 00 	movl   $0x0,0x102b10
  10137a:	00 00 00 
  10137d:	c7 05 0c 2b 10 00 00 	movl   $0x0,0x102b0c
  101384:	00 00 00 
  101387:	c7 05 04 2b 10 00 01 	movl   $0x1,0x102b04
  10138e:	00 00 00 
  101391:	c7 05 d0 72 16 00 01 	movl   $0x1,0x1672d0
  101398:	00 00 00 
  10139b:	5d                   	pop    %ebp
  10139c:	c3                   	ret    

0010139d <add_PCB>:
  10139d:	55                   	push   %ebp
  10139e:	89 e5                	mov    %esp,%ebp
  1013a0:	83 ec 18             	sub    $0x18,%esp
  1013a3:	a1 d0 72 16 00       	mov    0x1672d0,%eax
  1013a8:	83 f8 64             	cmp    $0x64,%eax
  1013ab:	75 15                	jne    1013c2 <add_PCB+0x25>
  1013ad:	83 ec 0c             	sub    $0xc,%esp
  1013b0:	68 a8 15 10 00       	push   $0x1015a8
  1013b5:	e8 11 fd ff ff       	call   1010cb <printk>
  1013ba:	83 c4 10             	add    $0x10,%esp
  1013bd:	e9 d6 00 00 00       	jmp    101498 <add_PCB+0xfb>
  1013c2:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  1013c9:	eb 1b                	jmp    1013e6 <add_PCB+0x49>
  1013cb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1013ce:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  1013d4:	05 00 2b 10 00       	add    $0x102b00,%eax
  1013d9:	8b 40 04             	mov    0x4(%eax),%eax
  1013dc:	85 c0                	test   %eax,%eax
  1013de:	75 02                	jne    1013e2 <add_PCB+0x45>
  1013e0:	eb 0a                	jmp    1013ec <add_PCB+0x4f>
  1013e2:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1013e6:	83 7d f4 63          	cmpl   $0x63,-0xc(%ebp)
  1013ea:	7e df                	jle    1013cb <add_PCB+0x2e>
  1013ec:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1013ef:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  1013f5:	05 00 2b 10 00       	add    $0x102b00,%eax
  1013fa:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
  101401:	a1 3c 21 10 00       	mov    0x10213c,%eax
  101406:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  10140c:	05 00 2b 10 00       	add    $0x102b00,%eax
  101411:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101414:	a1 3c 21 10 00       	mov    0x10213c,%eax
  101419:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10141c:	69 d2 14 10 00 00    	imul   $0x1014,%edx,%edx
  101422:	81 c2 00 2b 10 00    	add    $0x102b00,%edx
  101428:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  10142e:	05 00 2b 10 00       	add    $0x102b00,%eax
  101433:	89 50 0c             	mov    %edx,0xc(%eax)
  101436:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101439:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  10143f:	83 c0 10             	add    $0x10,%eax
  101442:	8d 90 00 2b 10 00    	lea    0x102b00(%eax),%edx
  101448:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10144b:	89 02                	mov    %eax,(%edx)
  10144d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101450:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  101456:	05 00 2b 10 00       	add    $0x102b00,%eax
  10145b:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
  101462:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101465:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101468:	69 d2 14 10 00 00    	imul   $0x1014,%edx,%edx
  10146e:	81 c2 00 2b 10 00    	add    $0x102b00,%edx
  101474:	89 42 08             	mov    %eax,0x8(%edx)
  101477:	a1 d0 72 16 00       	mov    0x1672d0,%eax
  10147c:	83 c0 01             	add    $0x1,%eax
  10147f:	a3 d0 72 16 00       	mov    %eax,0x1672d0
  101484:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101487:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  10148d:	8d 90 00 2b 10 00    	lea    0x102b00(%eax),%edx
  101493:	8b 45 08             	mov    0x8(%ebp),%eax
  101496:	89 02                	mov    %eax,(%edx)
  101498:	c9                   	leave  
  101499:	c3                   	ret    

0010149a <delete_PCB>:
  10149a:	55                   	push   %ebp
  10149b:	89 e5                	mov    %esp,%ebp
  10149d:	83 ec 18             	sub    $0x18,%esp
  1014a0:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1014a4:	75 15                	jne    1014bb <delete_PCB+0x21>
  1014a6:	83 ec 0c             	sub    $0xc,%esp
  1014a9:	68 bc 15 10 00       	push   $0x1015bc
  1014ae:	e8 18 fc ff ff       	call   1010cb <printk>
  1014b3:	83 c4 10             	add    $0x10,%esp
  1014b6:	e9 b1 00 00 00       	jmp    10156c <delete_PCB+0xd2>
  1014bb:	8b 45 08             	mov    0x8(%ebp),%eax
  1014be:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  1014c4:	05 00 2b 10 00       	add    $0x102b00,%eax
  1014c9:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  1014d0:	a1 3c 21 10 00       	mov    0x10213c,%eax
  1014d5:	3b 45 08             	cmp    0x8(%ebp),%eax
  1014d8:	75 1b                	jne    1014f5 <delete_PCB+0x5b>
  1014da:	8b 45 08             	mov    0x8(%ebp),%eax
  1014dd:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  1014e3:	83 c0 10             	add    $0x10,%eax
  1014e6:	05 00 2b 10 00       	add    $0x102b00,%eax
  1014eb:	8b 00                	mov    (%eax),%eax
  1014ed:	8b 40 08             	mov    0x8(%eax),%eax
  1014f0:	a3 3c 21 10 00       	mov    %eax,0x10213c
  1014f5:	8b 45 08             	mov    0x8(%ebp),%eax
  1014f8:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  1014fe:	83 c0 10             	add    $0x10,%eax
  101501:	05 00 2b 10 00       	add    $0x102b00,%eax
  101506:	8b 00                	mov    (%eax),%eax
  101508:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10150b:	8b 45 08             	mov    0x8(%ebp),%eax
  10150e:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  101514:	83 c0 10             	add    $0x10,%eax
  101517:	05 00 2b 10 00       	add    $0x102b00,%eax
  10151c:	8b 00                	mov    (%eax),%eax
  10151e:	8b 55 08             	mov    0x8(%ebp),%edx
  101521:	69 d2 14 10 00 00    	imul   $0x1014,%edx,%edx
  101527:	81 c2 00 2b 10 00    	add    $0x102b00,%edx
  10152d:	8b 52 0c             	mov    0xc(%edx),%edx
  101530:	89 50 0c             	mov    %edx,0xc(%eax)
  101533:	8b 45 08             	mov    0x8(%ebp),%eax
  101536:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  10153c:	05 00 2b 10 00       	add    $0x102b00,%eax
  101541:	8b 40 0c             	mov    0xc(%eax),%eax
  101544:	85 c0                	test   %eax,%eax
  101546:	74 17                	je     10155f <delete_PCB+0xc5>
  101548:	8b 45 08             	mov    0x8(%ebp),%eax
  10154b:	69 c0 14 10 00 00    	imul   $0x1014,%eax,%eax
  101551:	05 00 2b 10 00       	add    $0x102b00,%eax
  101556:	8b 40 0c             	mov    0xc(%eax),%eax
  101559:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10155c:	89 50 10             	mov    %edx,0x10(%eax)
  10155f:	a1 d0 72 16 00       	mov    0x1672d0,%eax
  101564:	83 e8 01             	sub    $0x1,%eax
  101567:	a3 d0 72 16 00       	mov    %eax,0x1672d0
  10156c:	c9                   	leave  
  10156d:	c3                   	ret    
