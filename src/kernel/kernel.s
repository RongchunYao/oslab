
kernel:     file format elf32-i386


Disassembly of section .text:

c0100000 <timer_event>:
c0100000:	55                   	push   %ebp
c0100001:	89 e5                	mov    %esp,%ebp
c0100003:	a1 00 f0 10 c0       	mov    0xc010f000,%eax
c0100008:	83 c0 01             	add    $0x1,%eax
c010000b:	a3 00 f0 10 c0       	mov    %eax,0xc010f000
c0100010:	5d                   	pop    %ebp
c0100011:	c3                   	ret    

c0100012 <get_time>:
c0100012:	55                   	push   %ebp
c0100013:	89 e5                	mov    %esp,%ebp
c0100015:	a1 00 f0 10 c0       	mov    0xc010f000,%eax
c010001a:	5d                   	pop    %ebp
c010001b:	c3                   	ret    

c010001c <time_pop>:
c010001c:	55                   	push   %ebp
c010001d:	89 e5                	mov    %esp,%ebp
c010001f:	a1 00 f0 10 c0       	mov    0xc010f000,%eax
c0100024:	83 c0 01             	add    $0x1,%eax
c0100027:	a3 00 f0 10 c0       	mov    %eax,0xc010f000
c010002c:	5d                   	pop    %ebp
c010002d:	c3                   	ret    

c010002e <press_key>:
c010002e:	55                   	push   %ebp
c010002f:	89 e5                	mov    %esp,%ebp
c0100031:	83 ec 10             	sub    $0x10,%esp
c0100034:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c010003b:	e9 91 00 00 00       	jmp    c01000d1 <press_key+0xa3>
c0100040:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100043:	8b 04 85 00 40 10 c0 	mov    -0x3fefc000(,%eax,4),%eax
c010004a:	3b 45 08             	cmp    0x8(%ebp),%eax
c010004d:	75 7e                	jne    c01000cd <press_key+0x9f>
c010004f:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100052:	c7 04 85 40 f0 10 c0 	movl   $0x1,-0x3fef0fc0(,%eax,4)
c0100059:	01 00 00 00 
c010005d:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
c0100061:	74 18                	je     c010007b <press_key+0x4d>
c0100063:	83 7d fc 12          	cmpl   $0x12,-0x4(%ebp)
c0100067:	74 12                	je     c010007b <press_key+0x4d>
c0100069:	83 7d fc 03          	cmpl   $0x3,-0x4(%ebp)
c010006d:	74 0c                	je     c010007b <press_key+0x4d>
c010006f:	83 7d fc 16          	cmpl   $0x16,-0x4(%ebp)
c0100073:	74 06                	je     c010007b <press_key+0x4d>
c0100075:	83 7d fc 11          	cmpl   $0x11,-0x4(%ebp)
c0100079:	75 52                	jne    c01000cd <press_key+0x9f>
c010007b:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
c010007f:	75 0f                	jne    c0100090 <press_key+0x62>
c0100081:	a1 04 f0 10 c0       	mov    0xc010f004,%eax
c0100086:	83 f8 03             	cmp    $0x3,%eax
c0100089:	75 05                	jne    c0100090 <press_key+0x62>
c010008b:	e9 80 00 00 00       	jmp    c0100110 <press_key+0xe2>
c0100090:	83 7d fc 03          	cmpl   $0x3,-0x4(%ebp)
c0100094:	75 0b                	jne    c01000a1 <press_key+0x73>
c0100096:	a1 04 f0 10 c0       	mov    0xc010f004,%eax
c010009b:	85 c0                	test   %eax,%eax
c010009d:	75 02                	jne    c01000a1 <press_key+0x73>
c010009f:	eb 6f                	jmp    c0100110 <press_key+0xe2>
c01000a1:	83 7d fc 12          	cmpl   $0x12,-0x4(%ebp)
c01000a5:	75 0c                	jne    c01000b3 <press_key+0x85>
c01000a7:	a1 04 f0 10 c0       	mov    0xc010f004,%eax
c01000ac:	83 f8 16             	cmp    $0x16,%eax
c01000af:	75 02                	jne    c01000b3 <press_key+0x85>
c01000b1:	eb 5d                	jmp    c0100110 <press_key+0xe2>
c01000b3:	83 7d fc 16          	cmpl   $0x16,-0x4(%ebp)
c01000b7:	75 0c                	jne    c01000c5 <press_key+0x97>
c01000b9:	a1 04 f0 10 c0       	mov    0xc010f004,%eax
c01000be:	83 f8 12             	cmp    $0x12,%eax
c01000c1:	75 02                	jne    c01000c5 <press_key+0x97>
c01000c3:	eb 4b                	jmp    c0100110 <press_key+0xe2>
c01000c5:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01000c8:	a3 04 f0 10 c0       	mov    %eax,0xc010f004
c01000cd:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c01000d1:	83 7d fc 19          	cmpl   $0x19,-0x4(%ebp)
c01000d5:	0f 8e 65 ff ff ff    	jle    c0100040 <press_key+0x12>
c01000db:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c01000e2:	eb 26                	jmp    c010010a <press_key+0xdc>
c01000e4:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01000e7:	8b 04 85 00 40 10 c0 	mov    -0x3fefc000(,%eax,4),%eax
c01000ee:	8b 55 08             	mov    0x8(%ebp),%edx
c01000f1:	83 c2 80             	add    $0xffffff80,%edx
c01000f4:	39 d0                	cmp    %edx,%eax
c01000f6:	75 0e                	jne    c0100106 <press_key+0xd8>
c01000f8:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01000fb:	c7 04 85 40 f0 10 c0 	movl   $0x0,-0x3fef0fc0(,%eax,4)
c0100102:	00 00 00 00 
c0100106:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c010010a:	83 7d fc 19          	cmpl   $0x19,-0x4(%ebp)
c010010e:	7e d4                	jle    c01000e4 <press_key+0xb6>
c0100110:	c9                   	leave  
c0100111:	c3                   	ret    

c0100112 <last_key_code>:
c0100112:	55                   	push   %ebp
c0100113:	89 e5                	mov    %esp,%ebp
c0100115:	a1 04 f0 10 c0       	mov    0xc010f004,%eax
c010011a:	5d                   	pop    %ebp
c010011b:	c3                   	ret    

c010011c <reset_last_key>:
c010011c:	55                   	push   %ebp
c010011d:	89 e5                	mov    %esp,%ebp
c010011f:	c7 05 04 f0 10 c0 00 	movl   $0x0,0xc010f004
c0100126:	00 00 00 
c0100129:	5d                   	pop    %ebp
c010012a:	c3                   	ret    

c010012b <keyboard_event>:
c010012b:	55                   	push   %ebp
c010012c:	89 e5                	mov    %esp,%ebp
c010012e:	ff 75 08             	pushl  0x8(%ebp)
c0100131:	e8 f8 fe ff ff       	call   c010002e <press_key>
c0100136:	83 c4 04             	add    $0x4,%esp
c0100139:	c9                   	leave  
c010013a:	c3                   	ret    

c010013b <disable_interrupt>:
c010013b:	55                   	push   %ebp
c010013c:	89 e5                	mov    %esp,%ebp
c010013e:	fa                   	cli    
c010013f:	5d                   	pop    %ebp
c0100140:	c3                   	ret    

c0100141 <main>:
c0100141:	8d 4c 24 04          	lea    0x4(%esp),%ecx
c0100145:	83 e4 f0             	and    $0xfffffff0,%esp
c0100148:	ff 71 fc             	pushl  -0x4(%ecx)
c010014b:	55                   	push   %ebp
c010014c:	89 e5                	mov    %esp,%ebp
c010014e:	51                   	push   %ecx
c010014f:	83 ec 04             	sub    $0x4,%esp
c0100152:	83 ec 0c             	sub    $0xc,%esp
c0100155:	68 40 2b 10 c0       	push   $0xc0102b40
c010015a:	e8 e7 0f 00 00       	call   c0101146 <printk>
c010015f:	83 c4 10             	add    $0x10,%esp
c0100162:	e8 d4 ff ff ff       	call   c010013b <disable_interrupt>
c0100167:	e8 65 00 00 00       	call   c01001d1 <init_serial>
c010016c:	e8 19 01 00 00       	call   c010028a <init_timer>
c0100171:	e8 94 05 00 00       	call   c010070a <init_intr>
c0100176:	e8 cc 07 00 00       	call   c0100947 <init_idt>
c010017b:	e8 25 04 00 00       	call   c01005a5 <init_seg>
c0100180:	e8 7f 24 00 00       	call   c0102604 <page_init>
c0100185:	e8 ac 14 00 00       	call   c0101636 <init_PCB>
c010018a:	83 ec 08             	sub    $0x8,%esp
c010018d:	68 57 2b 10 c0       	push   $0xc0102b57
c0100192:	68 00 90 01 00       	push   $0x19000
c0100197:	e8 48 20 00 00       	call   c01021e4 <load_PCB>
c010019c:	83 c4 10             	add    $0x10,%esp
c010019f:	e8 58 1c 00 00       	call   c0101dfc <reschedule>
c01001a4:	eb fe                	jmp    c01001a4 <main+0x63>

c01001a6 <inb>:
c01001a6:	55                   	push   %ebp
c01001a7:	89 e5                	mov    %esp,%ebp
c01001a9:	83 ec 10             	sub    $0x10,%esp
c01001ac:	8b 45 08             	mov    0x8(%ebp),%eax
c01001af:	89 c2                	mov    %eax,%edx
c01001b1:	ec                   	in     (%dx),%al
c01001b2:	88 45 ff             	mov    %al,-0x1(%ebp)
c01001b5:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c01001b9:	c9                   	leave  
c01001ba:	c3                   	ret    

c01001bb <outb>:
c01001bb:	55                   	push   %ebp
c01001bc:	89 e5                	mov    %esp,%ebp
c01001be:	83 ec 04             	sub    $0x4,%esp
c01001c1:	8b 45 0c             	mov    0xc(%ebp),%eax
c01001c4:	88 45 fc             	mov    %al,-0x4(%ebp)
c01001c7:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c01001cb:	8b 55 08             	mov    0x8(%ebp),%edx
c01001ce:	ee                   	out    %al,(%dx)
c01001cf:	c9                   	leave  
c01001d0:	c3                   	ret    

c01001d1 <init_serial>:
c01001d1:	55                   	push   %ebp
c01001d2:	89 e5                	mov    %esp,%ebp
c01001d4:	6a 00                	push   $0x0
c01001d6:	68 f9 03 00 00       	push   $0x3f9
c01001db:	e8 db ff ff ff       	call   c01001bb <outb>
c01001e0:	83 c4 08             	add    $0x8,%esp
c01001e3:	68 80 00 00 00       	push   $0x80
c01001e8:	68 fb 03 00 00       	push   $0x3fb
c01001ed:	e8 c9 ff ff ff       	call   c01001bb <outb>
c01001f2:	83 c4 08             	add    $0x8,%esp
c01001f5:	6a 03                	push   $0x3
c01001f7:	68 f8 03 00 00       	push   $0x3f8
c01001fc:	e8 ba ff ff ff       	call   c01001bb <outb>
c0100201:	83 c4 08             	add    $0x8,%esp
c0100204:	6a 00                	push   $0x0
c0100206:	68 f9 03 00 00       	push   $0x3f9
c010020b:	e8 ab ff ff ff       	call   c01001bb <outb>
c0100210:	83 c4 08             	add    $0x8,%esp
c0100213:	6a 03                	push   $0x3
c0100215:	68 fb 03 00 00       	push   $0x3fb
c010021a:	e8 9c ff ff ff       	call   c01001bb <outb>
c010021f:	83 c4 08             	add    $0x8,%esp
c0100222:	68 c7 00 00 00       	push   $0xc7
c0100227:	68 fa 03 00 00       	push   $0x3fa
c010022c:	e8 8a ff ff ff       	call   c01001bb <outb>
c0100231:	83 c4 08             	add    $0x8,%esp
c0100234:	6a 0b                	push   $0xb
c0100236:	68 fc 03 00 00       	push   $0x3fc
c010023b:	e8 7b ff ff ff       	call   c01001bb <outb>
c0100240:	83 c4 08             	add    $0x8,%esp
c0100243:	c9                   	leave  
c0100244:	c3                   	ret    

c0100245 <is_serial_idle>:
c0100245:	55                   	push   %ebp
c0100246:	89 e5                	mov    %esp,%ebp
c0100248:	68 fd 03 00 00       	push   $0x3fd
c010024d:	e8 54 ff ff ff       	call   c01001a6 <inb>
c0100252:	83 c4 04             	add    $0x4,%esp
c0100255:	0f b6 c0             	movzbl %al,%eax
c0100258:	83 e0 20             	and    $0x20,%eax
c010025b:	c9                   	leave  
c010025c:	c3                   	ret    

c010025d <serial_out>:
c010025d:	55                   	push   %ebp
c010025e:	89 e5                	mov    %esp,%ebp
c0100260:	83 ec 04             	sub    $0x4,%esp
c0100263:	8b 45 08             	mov    0x8(%ebp),%eax
c0100266:	88 45 fc             	mov    %al,-0x4(%ebp)
c0100269:	90                   	nop
c010026a:	e8 d6 ff ff ff       	call   c0100245 <is_serial_idle>
c010026f:	85 c0                	test   %eax,%eax
c0100271:	74 f7                	je     c010026a <serial_out+0xd>
c0100273:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c0100277:	0f b6 c0             	movzbl %al,%eax
c010027a:	50                   	push   %eax
c010027b:	68 f8 03 00 00       	push   $0x3f8
c0100280:	e8 36 ff ff ff       	call   c01001bb <outb>
c0100285:	83 c4 08             	add    $0x8,%esp
c0100288:	c9                   	leave  
c0100289:	c3                   	ret    

c010028a <init_timer>:
c010028a:	55                   	push   %ebp
c010028b:	89 e5                	mov    %esp,%ebp
c010028d:	83 ec 20             	sub    $0x20,%esp
c0100290:	c7 45 fc a9 04 00 00 	movl   $0x4a9,-0x4(%ebp)
c0100297:	c7 45 f8 43 00 00 00 	movl   $0x43,-0x8(%ebp)
c010029e:	c6 45 f7 34          	movb   $0x34,-0x9(%ebp)
c01002a2:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c01002a6:	8b 55 f8             	mov    -0x8(%ebp),%edx
c01002a9:	ee                   	out    %al,(%dx)
c01002aa:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01002ad:	99                   	cltd   
c01002ae:	c1 ea 18             	shr    $0x18,%edx
c01002b1:	01 d0                	add    %edx,%eax
c01002b3:	0f b6 c0             	movzbl %al,%eax
c01002b6:	29 d0                	sub    %edx,%eax
c01002b8:	0f b6 c0             	movzbl %al,%eax
c01002bb:	c7 45 f0 40 00 00 00 	movl   $0x40,-0x10(%ebp)
c01002c2:	88 45 ef             	mov    %al,-0x11(%ebp)
c01002c5:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
c01002c9:	8b 55 f0             	mov    -0x10(%ebp),%edx
c01002cc:	ee                   	out    %al,(%dx)
c01002cd:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01002d0:	8d 90 ff 00 00 00    	lea    0xff(%eax),%edx
c01002d6:	85 c0                	test   %eax,%eax
c01002d8:	0f 48 c2             	cmovs  %edx,%eax
c01002db:	c1 f8 08             	sar    $0x8,%eax
c01002de:	0f b6 c0             	movzbl %al,%eax
c01002e1:	c7 45 e8 40 00 00 00 	movl   $0x40,-0x18(%ebp)
c01002e8:	88 45 e7             	mov    %al,-0x19(%ebp)
c01002eb:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
c01002ef:	8b 55 e8             	mov    -0x18(%ebp),%edx
c01002f2:	ee                   	out    %al,(%dx)
c01002f3:	c9                   	leave  
c01002f4:	c3                   	ret    

c01002f5 <write_gdtr>:
c01002f5:	55                   	push   %ebp
c01002f6:	89 e5                	mov    %esp,%ebp
c01002f8:	8b 45 0c             	mov    0xc(%ebp),%eax
c01002fb:	83 e8 01             	sub    $0x1,%eax
c01002fe:	66 a3 ac f0 10 c0    	mov    %ax,0xc010f0ac
c0100304:	8b 45 08             	mov    0x8(%ebp),%eax
c0100307:	66 a3 ae f0 10 c0    	mov    %ax,0xc010f0ae
c010030d:	8b 45 08             	mov    0x8(%ebp),%eax
c0100310:	c1 e8 10             	shr    $0x10,%eax
c0100313:	66 a3 b0 f0 10 c0    	mov    %ax,0xc010f0b0
c0100319:	b8 ac f0 10 c0       	mov    $0xc010f0ac,%eax
c010031e:	0f 01 10             	lgdtl  (%eax)
c0100321:	5d                   	pop    %ebp
c0100322:	c3                   	ret    

c0100323 <set_tss>:
c0100323:	55                   	push   %ebp
c0100324:	89 e5                	mov    %esp,%ebp
c0100326:	8b 45 08             	mov    0x8(%ebp),%eax
c0100329:	a3 84 20 13 c0       	mov    %eax,0xc0132084
c010032e:	5d                   	pop    %ebp
c010032f:	c3                   	ret    

c0100330 <Makegdt>:
c0100330:	55                   	push   %ebp
c0100331:	89 e5                	mov    %esp,%ebp
c0100333:	8b 45 08             	mov    0x8(%ebp),%eax
c0100336:	c1 e8 0c             	shr    $0xc,%eax
c0100339:	89 c2                	mov    %eax,%edx
c010033b:	8b 45 18             	mov    0x18(%ebp),%eax
c010033e:	66 89 14 c5 00 20 13 	mov    %dx,-0x3fece000(,%eax,8)
c0100345:	c0 
c0100346:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100349:	89 c2                	mov    %eax,%edx
c010034b:	8b 45 18             	mov    0x18(%ebp),%eax
c010034e:	66 89 14 c5 02 20 13 	mov    %dx,-0x3fecdffe(,%eax,8)
c0100355:	c0 
c0100356:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100359:	c1 e8 10             	shr    $0x10,%eax
c010035c:	89 c2                	mov    %eax,%edx
c010035e:	8b 45 18             	mov    0x18(%ebp),%eax
c0100361:	88 14 c5 04 20 13 c0 	mov    %dl,-0x3fecdffc(,%eax,8)
c0100368:	8b 45 10             	mov    0x10(%ebp),%eax
c010036b:	83 e0 0f             	and    $0xf,%eax
c010036e:	89 c2                	mov    %eax,%edx
c0100370:	8b 45 18             	mov    0x18(%ebp),%eax
c0100373:	89 d1                	mov    %edx,%ecx
c0100375:	83 e1 0f             	and    $0xf,%ecx
c0100378:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c010037f:	c0 
c0100380:	83 e2 f0             	and    $0xfffffff0,%edx
c0100383:	09 ca                	or     %ecx,%edx
c0100385:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c010038c:	8b 45 18             	mov    0x18(%ebp),%eax
c010038f:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c0100396:	c0 
c0100397:	83 ca 10             	or     $0x10,%edx
c010039a:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c01003a1:	8b 45 14             	mov    0x14(%ebp),%eax
c01003a4:	83 e0 03             	and    $0x3,%eax
c01003a7:	89 c2                	mov    %eax,%edx
c01003a9:	8b 45 18             	mov    0x18(%ebp),%eax
c01003ac:	83 e2 03             	and    $0x3,%edx
c01003af:	89 d1                	mov    %edx,%ecx
c01003b1:	c1 e1 05             	shl    $0x5,%ecx
c01003b4:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c01003bb:	c0 
c01003bc:	83 e2 9f             	and    $0xffffff9f,%edx
c01003bf:	09 ca                	or     %ecx,%edx
c01003c1:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c01003c8:	8b 45 18             	mov    0x18(%ebp),%eax
c01003cb:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c01003d2:	c0 
c01003d3:	83 ca 80             	or     $0xffffff80,%edx
c01003d6:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c01003dd:	8b 45 08             	mov    0x8(%ebp),%eax
c01003e0:	c1 e8 1c             	shr    $0x1c,%eax
c01003e3:	83 e0 0f             	and    $0xf,%eax
c01003e6:	89 c2                	mov    %eax,%edx
c01003e8:	8b 45 18             	mov    0x18(%ebp),%eax
c01003eb:	89 d1                	mov    %edx,%ecx
c01003ed:	83 e1 0f             	and    $0xf,%ecx
c01003f0:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c01003f7:	c0 
c01003f8:	83 e2 f0             	and    $0xfffffff0,%edx
c01003fb:	09 ca                	or     %ecx,%edx
c01003fd:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c0100404:	8b 45 18             	mov    0x18(%ebp),%eax
c0100407:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c010040e:	c0 
c010040f:	83 e2 ef             	and    $0xffffffef,%edx
c0100412:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c0100419:	8b 45 18             	mov    0x18(%ebp),%eax
c010041c:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c0100423:	c0 
c0100424:	83 e2 df             	and    $0xffffffdf,%edx
c0100427:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c010042e:	8b 45 18             	mov    0x18(%ebp),%eax
c0100431:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c0100438:	c0 
c0100439:	83 ca 40             	or     $0x40,%edx
c010043c:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c0100443:	8b 45 18             	mov    0x18(%ebp),%eax
c0100446:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c010044d:	c0 
c010044e:	83 ca 80             	or     $0xffffff80,%edx
c0100451:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c0100458:	8b 45 0c             	mov    0xc(%ebp),%eax
c010045b:	c1 e8 18             	shr    $0x18,%eax
c010045e:	89 c2                	mov    %eax,%edx
c0100460:	8b 45 18             	mov    0x18(%ebp),%eax
c0100463:	88 14 c5 07 20 13 c0 	mov    %dl,-0x3fecdff9(,%eax,8)
c010046a:	5d                   	pop    %ebp
c010046b:	c3                   	ret    

c010046c <Maketss>:
c010046c:	55                   	push   %ebp
c010046d:	89 e5                	mov    %esp,%ebp
c010046f:	8b 45 08             	mov    0x8(%ebp),%eax
c0100472:	89 c2                	mov    %eax,%edx
c0100474:	8b 45 18             	mov    0x18(%ebp),%eax
c0100477:	66 89 14 c5 00 20 13 	mov    %dx,-0x3fece000(,%eax,8)
c010047e:	c0 
c010047f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100482:	89 c2                	mov    %eax,%edx
c0100484:	8b 45 18             	mov    0x18(%ebp),%eax
c0100487:	66 89 14 c5 02 20 13 	mov    %dx,-0x3fecdffe(,%eax,8)
c010048e:	c0 
c010048f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100492:	c1 e8 10             	shr    $0x10,%eax
c0100495:	89 c2                	mov    %eax,%edx
c0100497:	8b 45 18             	mov    0x18(%ebp),%eax
c010049a:	88 14 c5 04 20 13 c0 	mov    %dl,-0x3fecdffc(,%eax,8)
c01004a1:	8b 45 10             	mov    0x10(%ebp),%eax
c01004a4:	83 e0 0f             	and    $0xf,%eax
c01004a7:	89 c2                	mov    %eax,%edx
c01004a9:	8b 45 18             	mov    0x18(%ebp),%eax
c01004ac:	89 d1                	mov    %edx,%ecx
c01004ae:	83 e1 0f             	and    $0xf,%ecx
c01004b1:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c01004b8:	c0 
c01004b9:	83 e2 f0             	and    $0xfffffff0,%edx
c01004bc:	09 ca                	or     %ecx,%edx
c01004be:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c01004c5:	8b 45 18             	mov    0x18(%ebp),%eax
c01004c8:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c01004cf:	c0 
c01004d0:	83 e2 ef             	and    $0xffffffef,%edx
c01004d3:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c01004da:	8b 45 14             	mov    0x14(%ebp),%eax
c01004dd:	83 e0 03             	and    $0x3,%eax
c01004e0:	89 c2                	mov    %eax,%edx
c01004e2:	8b 45 18             	mov    0x18(%ebp),%eax
c01004e5:	83 e2 03             	and    $0x3,%edx
c01004e8:	89 d1                	mov    %edx,%ecx
c01004ea:	c1 e1 05             	shl    $0x5,%ecx
c01004ed:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c01004f4:	c0 
c01004f5:	83 e2 9f             	and    $0xffffff9f,%edx
c01004f8:	09 ca                	or     %ecx,%edx
c01004fa:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c0100501:	8b 45 18             	mov    0x18(%ebp),%eax
c0100504:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c010050b:	c0 
c010050c:	83 ca 80             	or     $0xffffff80,%edx
c010050f:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c0100516:	8b 45 08             	mov    0x8(%ebp),%eax
c0100519:	c1 e8 10             	shr    $0x10,%eax
c010051c:	83 e0 0f             	and    $0xf,%eax
c010051f:	89 c2                	mov    %eax,%edx
c0100521:	8b 45 18             	mov    0x18(%ebp),%eax
c0100524:	89 d1                	mov    %edx,%ecx
c0100526:	83 e1 0f             	and    $0xf,%ecx
c0100529:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c0100530:	c0 
c0100531:	83 e2 f0             	and    $0xfffffff0,%edx
c0100534:	09 ca                	or     %ecx,%edx
c0100536:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c010053d:	8b 45 18             	mov    0x18(%ebp),%eax
c0100540:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c0100547:	c0 
c0100548:	83 e2 ef             	and    $0xffffffef,%edx
c010054b:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c0100552:	8b 45 18             	mov    0x18(%ebp),%eax
c0100555:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c010055c:	c0 
c010055d:	83 e2 df             	and    $0xffffffdf,%edx
c0100560:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c0100567:	8b 45 18             	mov    0x18(%ebp),%eax
c010056a:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c0100571:	c0 
c0100572:	83 ca 40             	or     $0x40,%edx
c0100575:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c010057c:	8b 45 18             	mov    0x18(%ebp),%eax
c010057f:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c0100586:	c0 
c0100587:	83 ca 80             	or     $0xffffff80,%edx
c010058a:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c0100591:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100594:	c1 e8 18             	shr    $0x18,%eax
c0100597:	89 c2                	mov    %eax,%edx
c0100599:	8b 45 18             	mov    0x18(%ebp),%eax
c010059c:	88 14 c5 07 20 13 c0 	mov    %dl,-0x3fecdff9(,%eax,8)
c01005a3:	5d                   	pop    %ebp
c01005a4:	c3                   	ret    

c01005a5 <init_seg>:
c01005a5:	55                   	push   %ebp
c01005a6:	89 e5                	mov    %esp,%ebp
c01005a8:	83 ec 10             	sub    $0x10,%esp
c01005ab:	c7 05 a8 f0 10 c0 00 	movl   $0x0,0xc010f0a8
c01005b2:	00 00 00 
c01005b5:	6a 00                	push   $0x0
c01005b7:	6a 00                	push   $0x0
c01005b9:	6a 00                	push   $0x0
c01005bb:	6a 00                	push   $0x0
c01005bd:	6a 00                	push   $0x0
c01005bf:	e8 6c fd ff ff       	call   c0100330 <Makegdt>
c01005c4:	83 c4 14             	add    $0x14,%esp
c01005c7:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c01005cc:	83 c0 01             	add    $0x1,%eax
c01005cf:	a3 a8 f0 10 c0       	mov    %eax,0xc010f0a8
c01005d4:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c01005d9:	50                   	push   %eax
c01005da:	6a 00                	push   $0x0
c01005dc:	6a 0a                	push   $0xa
c01005de:	6a 00                	push   $0x0
c01005e0:	6a ff                	push   $0xffffffff
c01005e2:	e8 49 fd ff ff       	call   c0100330 <Makegdt>
c01005e7:	83 c4 14             	add    $0x14,%esp
c01005ea:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c01005ef:	83 c0 01             	add    $0x1,%eax
c01005f2:	a3 a8 f0 10 c0       	mov    %eax,0xc010f0a8
c01005f7:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c01005fc:	50                   	push   %eax
c01005fd:	6a 00                	push   $0x0
c01005ff:	6a 02                	push   $0x2
c0100601:	6a 00                	push   $0x0
c0100603:	6a ff                	push   $0xffffffff
c0100605:	e8 26 fd ff ff       	call   c0100330 <Makegdt>
c010060a:	83 c4 14             	add    $0x14,%esp
c010060d:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c0100612:	83 c0 01             	add    $0x1,%eax
c0100615:	a3 a8 f0 10 c0       	mov    %eax,0xc010f0a8
c010061a:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c010061f:	50                   	push   %eax
c0100620:	6a 03                	push   $0x3
c0100622:	6a 0a                	push   $0xa
c0100624:	6a 00                	push   $0x0
c0100626:	6a ff                	push   $0xffffffff
c0100628:	e8 03 fd ff ff       	call   c0100330 <Makegdt>
c010062d:	83 c4 14             	add    $0x14,%esp
c0100630:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c0100635:	83 c0 01             	add    $0x1,%eax
c0100638:	a3 a8 f0 10 c0       	mov    %eax,0xc010f0a8
c010063d:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c0100642:	50                   	push   %eax
c0100643:	6a 03                	push   $0x3
c0100645:	6a 02                	push   $0x2
c0100647:	6a 00                	push   $0x0
c0100649:	6a ff                	push   $0xffffffff
c010064b:	e8 e0 fc ff ff       	call   c0100330 <Makegdt>
c0100650:	83 c4 14             	add    $0x14,%esp
c0100653:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c0100658:	83 c0 01             	add    $0x1,%eax
c010065b:	a3 a8 f0 10 c0       	mov    %eax,0xc010f0a8
c0100660:	c7 05 84 20 13 c0 00 	movl   $0x2f0000,0xc0132084
c0100667:	00 2f 00 
c010066a:	66 c7 05 88 20 13 c0 	movw   $0x10,0xc0132088
c0100671:	10 00 
c0100673:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c0100678:	ba 80 20 13 c0       	mov    $0xc0132080,%edx
c010067d:	50                   	push   %eax
c010067e:	6a 00                	push   $0x0
c0100680:	6a 09                	push   $0x9
c0100682:	52                   	push   %edx
c0100683:	6a ff                	push   $0xffffffff
c0100685:	e8 e2 fd ff ff       	call   c010046c <Maketss>
c010068a:	83 c4 14             	add    $0x14,%esp
c010068d:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c0100692:	83 c0 01             	add    $0x1,%eax
c0100695:	a3 a8 f0 10 c0       	mov    %eax,0xc010f0a8
c010069a:	66 c7 05 dc 20 13 c0 	movw   $0x2b,0xc01320dc
c01006a1:	2b 00 
c01006a3:	66 b8 10 00          	mov    $0x10,%ax
c01006a7:	8e d8                	mov    %eax,%ds
c01006a9:	8e c0                	mov    %eax,%es
c01006ab:	8e d0                	mov    %eax,%ss
c01006ad:	68 80 00 00 00       	push   $0x80
c01006b2:	68 00 20 13 c0       	push   $0xc0132000
c01006b7:	e8 39 fc ff ff       	call   c01002f5 <write_gdtr>
c01006bc:	83 c4 08             	add    $0x8,%esp
c01006bf:	0f b7 05 dc 20 13 c0 	movzwl 0xc01320dc,%eax
c01006c6:	0f b7 c0             	movzwl %ax,%eax
c01006c9:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
c01006cd:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
c01006d1:	0f 00 d8             	ltr    %ax
c01006d4:	c9                   	leave  
c01006d5:	c3                   	ret    

c01006d6 <entry>:
c01006d6:	66 c7 05 72 04 00 00 	movw   $0x1234,0x472
c01006dd:	34 12 
c01006df:	b8 00 e0 10 00       	mov    $0x10e000,%eax
c01006e4:	0f 22 d8             	mov    %eax,%cr3
c01006e7:	0f 20 c0             	mov    %cr0,%eax
c01006ea:	0d 01 00 00 80       	or     $0x80000001,%eax
c01006ef:	0f 22 c0             	mov    %eax,%cr0
c01006f2:	b8 f9 06 10 c0       	mov    $0xc01006f9,%eax
c01006f7:	ff e0                	jmp    *%eax

c01006f9 <relocated>:
c01006f9:	bd 00 00 00 00       	mov    $0x0,%ebp
c01006fe:	bc 00 d0 10 c0       	mov    $0xc010d000,%esp
c0100703:	e8 39 fa ff ff       	call   c0100141 <main>

c0100708 <spin>:
c0100708:	eb fe                	jmp    c0100708 <spin>

c010070a <init_intr>:
c010070a:	55                   	push   %ebp
c010070b:	89 e5                	mov    %esp,%ebp
c010070d:	83 ec 70             	sub    $0x70,%esp
c0100710:	c7 45 fc 21 00 00 00 	movl   $0x21,-0x4(%ebp)
c0100717:	c6 45 fb ff          	movb   $0xff,-0x5(%ebp)
c010071b:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
c010071f:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0100722:	ee                   	out    %al,(%dx)
c0100723:	c7 45 f4 a1 00 00 00 	movl   $0xa1,-0xc(%ebp)
c010072a:	c6 45 f3 ff          	movb   $0xff,-0xd(%ebp)
c010072e:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
c0100732:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100735:	ee                   	out    %al,(%dx)
c0100736:	c7 45 ec 20 00 00 00 	movl   $0x20,-0x14(%ebp)
c010073d:	c6 45 eb 11          	movb   $0x11,-0x15(%ebp)
c0100741:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
c0100745:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0100748:	ee                   	out    %al,(%dx)
c0100749:	c7 45 e4 21 00 00 00 	movl   $0x21,-0x1c(%ebp)
c0100750:	c6 45 e3 20          	movb   $0x20,-0x1d(%ebp)
c0100754:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
c0100758:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c010075b:	ee                   	out    %al,(%dx)
c010075c:	c7 45 dc 21 00 00 00 	movl   $0x21,-0x24(%ebp)
c0100763:	c6 45 db 04          	movb   $0x4,-0x25(%ebp)
c0100767:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
c010076b:	8b 55 dc             	mov    -0x24(%ebp),%edx
c010076e:	ee                   	out    %al,(%dx)
c010076f:	c7 45 d4 21 00 00 00 	movl   $0x21,-0x2c(%ebp)
c0100776:	c6 45 d3 03          	movb   $0x3,-0x2d(%ebp)
c010077a:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
c010077e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0100781:	ee                   	out    %al,(%dx)
c0100782:	c7 45 cc a0 00 00 00 	movl   $0xa0,-0x34(%ebp)
c0100789:	c6 45 cb 11          	movb   $0x11,-0x35(%ebp)
c010078d:	0f b6 45 cb          	movzbl -0x35(%ebp),%eax
c0100791:	8b 55 cc             	mov    -0x34(%ebp),%edx
c0100794:	ee                   	out    %al,(%dx)
c0100795:	c7 45 c4 a1 00 00 00 	movl   $0xa1,-0x3c(%ebp)
c010079c:	c6 45 c3 28          	movb   $0x28,-0x3d(%ebp)
c01007a0:	0f b6 45 c3          	movzbl -0x3d(%ebp),%eax
c01007a4:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c01007a7:	ee                   	out    %al,(%dx)
c01007a8:	c7 45 bc a1 00 00 00 	movl   $0xa1,-0x44(%ebp)
c01007af:	c6 45 bb 02          	movb   $0x2,-0x45(%ebp)
c01007b3:	0f b6 45 bb          	movzbl -0x45(%ebp),%eax
c01007b7:	8b 55 bc             	mov    -0x44(%ebp),%edx
c01007ba:	ee                   	out    %al,(%dx)
c01007bb:	c7 45 b4 a1 00 00 00 	movl   $0xa1,-0x4c(%ebp)
c01007c2:	c6 45 b3 03          	movb   $0x3,-0x4d(%ebp)
c01007c6:	0f b6 45 b3          	movzbl -0x4d(%ebp),%eax
c01007ca:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c01007cd:	ee                   	out    %al,(%dx)
c01007ce:	c7 45 ac 20 00 00 00 	movl   $0x20,-0x54(%ebp)
c01007d5:	c6 45 ab 68          	movb   $0x68,-0x55(%ebp)
c01007d9:	0f b6 45 ab          	movzbl -0x55(%ebp),%eax
c01007dd:	8b 55 ac             	mov    -0x54(%ebp),%edx
c01007e0:	ee                   	out    %al,(%dx)
c01007e1:	c7 45 a4 20 00 00 00 	movl   $0x20,-0x5c(%ebp)
c01007e8:	c6 45 a3 0a          	movb   $0xa,-0x5d(%ebp)
c01007ec:	0f b6 45 a3          	movzbl -0x5d(%ebp),%eax
c01007f0:	8b 55 a4             	mov    -0x5c(%ebp),%edx
c01007f3:	ee                   	out    %al,(%dx)
c01007f4:	c7 45 9c a0 00 00 00 	movl   $0xa0,-0x64(%ebp)
c01007fb:	c6 45 9b 68          	movb   $0x68,-0x65(%ebp)
c01007ff:	0f b6 45 9b          	movzbl -0x65(%ebp),%eax
c0100803:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0100806:	ee                   	out    %al,(%dx)
c0100807:	c7 45 94 a0 00 00 00 	movl   $0xa0,-0x6c(%ebp)
c010080e:	c6 45 93 0a          	movb   $0xa,-0x6d(%ebp)
c0100812:	0f b6 45 93          	movzbl -0x6d(%ebp),%eax
c0100816:	8b 55 94             	mov    -0x6c(%ebp),%edx
c0100819:	ee                   	out    %al,(%dx)
c010081a:	c9                   	leave  
c010081b:	c3                   	ret    

c010081c <save_idt>:
c010081c:	55                   	push   %ebp
c010081d:	89 e5                	mov    %esp,%ebp
c010081f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100822:	83 e8 01             	sub    $0x1,%eax
c0100825:	66 a3 b2 f0 10 c0    	mov    %ax,0xc010f0b2
c010082b:	8b 45 08             	mov    0x8(%ebp),%eax
c010082e:	66 a3 b4 f0 10 c0    	mov    %ax,0xc010f0b4
c0100834:	8b 45 08             	mov    0x8(%ebp),%eax
c0100837:	c1 e8 10             	shr    $0x10,%eax
c010083a:	66 a3 b6 f0 10 c0    	mov    %ax,0xc010f0b6
c0100840:	b8 b2 f0 10 c0       	mov    $0xc010f0b2,%eax
c0100845:	0f 01 18             	lidtl  (%eax)
c0100848:	5d                   	pop    %ebp
c0100849:	c3                   	ret    

c010084a <set_intr>:
c010084a:	55                   	push   %ebp
c010084b:	89 e5                	mov    %esp,%ebp
c010084d:	8b 45 10             	mov    0x10(%ebp),%eax
c0100850:	89 c2                	mov    %eax,%edx
c0100852:	8b 45 08             	mov    0x8(%ebp),%eax
c0100855:	66 89 10             	mov    %dx,(%eax)
c0100858:	8b 45 0c             	mov    0xc(%ebp),%eax
c010085b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c0100862:	8b 45 08             	mov    0x8(%ebp),%eax
c0100865:	66 89 50 02          	mov    %dx,0x2(%eax)
c0100869:	8b 45 08             	mov    0x8(%ebp),%eax
c010086c:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0100870:	8b 45 08             	mov    0x8(%ebp),%eax
c0100873:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c0100877:	83 e2 f0             	and    $0xfffffff0,%edx
c010087a:	83 ca 0e             	or     $0xe,%edx
c010087d:	88 50 05             	mov    %dl,0x5(%eax)
c0100880:	8b 45 08             	mov    0x8(%ebp),%eax
c0100883:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c0100887:	83 e2 ef             	and    $0xffffffef,%edx
c010088a:	88 50 05             	mov    %dl,0x5(%eax)
c010088d:	8b 45 14             	mov    0x14(%ebp),%eax
c0100890:	83 e0 03             	and    $0x3,%eax
c0100893:	89 c2                	mov    %eax,%edx
c0100895:	8b 45 08             	mov    0x8(%ebp),%eax
c0100898:	83 e2 03             	and    $0x3,%edx
c010089b:	89 d1                	mov    %edx,%ecx
c010089d:	c1 e1 05             	shl    $0x5,%ecx
c01008a0:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c01008a4:	83 e2 9f             	and    $0xffffff9f,%edx
c01008a7:	09 ca                	or     %ecx,%edx
c01008a9:	88 50 05             	mov    %dl,0x5(%eax)
c01008ac:	8b 45 08             	mov    0x8(%ebp),%eax
c01008af:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c01008b3:	83 ca 80             	or     $0xffffff80,%edx
c01008b6:	88 50 05             	mov    %dl,0x5(%eax)
c01008b9:	8b 45 10             	mov    0x10(%ebp),%eax
c01008bc:	c1 e8 10             	shr    $0x10,%eax
c01008bf:	89 c2                	mov    %eax,%edx
c01008c1:	8b 45 08             	mov    0x8(%ebp),%eax
c01008c4:	66 89 50 06          	mov    %dx,0x6(%eax)
c01008c8:	5d                   	pop    %ebp
c01008c9:	c3                   	ret    

c01008ca <set_trap>:
c01008ca:	55                   	push   %ebp
c01008cb:	89 e5                	mov    %esp,%ebp
c01008cd:	8b 45 10             	mov    0x10(%ebp),%eax
c01008d0:	89 c2                	mov    %eax,%edx
c01008d2:	8b 45 08             	mov    0x8(%ebp),%eax
c01008d5:	66 89 10             	mov    %dx,(%eax)
c01008d8:	8b 45 0c             	mov    0xc(%ebp),%eax
c01008db:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c01008e2:	8b 45 08             	mov    0x8(%ebp),%eax
c01008e5:	66 89 50 02          	mov    %dx,0x2(%eax)
c01008e9:	8b 45 08             	mov    0x8(%ebp),%eax
c01008ec:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c01008f0:	8b 45 08             	mov    0x8(%ebp),%eax
c01008f3:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c01008f7:	83 ca 0f             	or     $0xf,%edx
c01008fa:	88 50 05             	mov    %dl,0x5(%eax)
c01008fd:	8b 45 08             	mov    0x8(%ebp),%eax
c0100900:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c0100904:	83 e2 ef             	and    $0xffffffef,%edx
c0100907:	88 50 05             	mov    %dl,0x5(%eax)
c010090a:	8b 45 14             	mov    0x14(%ebp),%eax
c010090d:	83 e0 03             	and    $0x3,%eax
c0100910:	89 c2                	mov    %eax,%edx
c0100912:	8b 45 08             	mov    0x8(%ebp),%eax
c0100915:	83 e2 03             	and    $0x3,%edx
c0100918:	89 d1                	mov    %edx,%ecx
c010091a:	c1 e1 05             	shl    $0x5,%ecx
c010091d:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c0100921:	83 e2 9f             	and    $0xffffff9f,%edx
c0100924:	09 ca                	or     %ecx,%edx
c0100926:	88 50 05             	mov    %dl,0x5(%eax)
c0100929:	8b 45 08             	mov    0x8(%ebp),%eax
c010092c:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c0100930:	83 ca 80             	or     $0xffffff80,%edx
c0100933:	88 50 05             	mov    %dl,0x5(%eax)
c0100936:	8b 45 10             	mov    0x10(%ebp),%eax
c0100939:	c1 e8 10             	shr    $0x10,%eax
c010093c:	89 c2                	mov    %eax,%edx
c010093e:	8b 45 08             	mov    0x8(%ebp),%eax
c0100941:	66 89 50 06          	mov    %dx,0x6(%eax)
c0100945:	5d                   	pop    %ebp
c0100946:	c3                   	ret    

c0100947 <init_idt>:
c0100947:	55                   	push   %ebp
c0100948:	89 e5                	mov    %esp,%ebp
c010094a:	83 ec 10             	sub    $0x10,%esp
c010094d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0100954:	eb 22                	jmp    c0100978 <init_idt+0x31>
c0100956:	ba e4 0b 10 c0       	mov    $0xc0100be4,%edx
c010095b:	8b 45 fc             	mov    -0x4(%ebp),%eax
c010095e:	c1 e0 03             	shl    $0x3,%eax
c0100961:	05 00 21 13 c0       	add    $0xc0132100,%eax
c0100966:	6a 00                	push   $0x0
c0100968:	52                   	push   %edx
c0100969:	6a 01                	push   $0x1
c010096b:	50                   	push   %eax
c010096c:	e8 59 ff ff ff       	call   c01008ca <set_trap>
c0100971:	83 c4 10             	add    $0x10,%esp
c0100974:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0100978:	81 7d fc ff 00 00 00 	cmpl   $0xff,-0x4(%ebp)
c010097f:	7e d5                	jle    c0100956 <init_idt+0xf>
c0100981:	b8 4a 0b 10 c0       	mov    $0xc0100b4a,%eax
c0100986:	6a 00                	push   $0x0
c0100988:	50                   	push   %eax
c0100989:	6a 01                	push   $0x1
c010098b:	68 00 21 13 c0       	push   $0xc0132100
c0100990:	e8 35 ff ff ff       	call   c01008ca <set_trap>
c0100995:	83 c4 10             	add    $0x10,%esp
c0100998:	b8 54 0b 10 c0       	mov    $0xc0100b54,%eax
c010099d:	6a 00                	push   $0x0
c010099f:	50                   	push   %eax
c01009a0:	6a 01                	push   $0x1
c01009a2:	68 08 21 13 c0       	push   $0xc0132108
c01009a7:	e8 1e ff ff ff       	call   c01008ca <set_trap>
c01009ac:	83 c4 10             	add    $0x10,%esp
c01009af:	b8 5e 0b 10 c0       	mov    $0xc0100b5e,%eax
c01009b4:	6a 00                	push   $0x0
c01009b6:	50                   	push   %eax
c01009b7:	6a 01                	push   $0x1
c01009b9:	68 10 21 13 c0       	push   $0xc0132110
c01009be:	e8 07 ff ff ff       	call   c01008ca <set_trap>
c01009c3:	83 c4 10             	add    $0x10,%esp
c01009c6:	b8 68 0b 10 c0       	mov    $0xc0100b68,%eax
c01009cb:	6a 00                	push   $0x0
c01009cd:	50                   	push   %eax
c01009ce:	6a 01                	push   $0x1
c01009d0:	68 18 21 13 c0       	push   $0xc0132118
c01009d5:	e8 f0 fe ff ff       	call   c01008ca <set_trap>
c01009da:	83 c4 10             	add    $0x10,%esp
c01009dd:	b8 6f 0b 10 c0       	mov    $0xc0100b6f,%eax
c01009e2:	6a 00                	push   $0x0
c01009e4:	50                   	push   %eax
c01009e5:	6a 01                	push   $0x1
c01009e7:	68 20 21 13 c0       	push   $0xc0132120
c01009ec:	e8 d9 fe ff ff       	call   c01008ca <set_trap>
c01009f1:	83 c4 10             	add    $0x10,%esp
c01009f4:	b8 76 0b 10 c0       	mov    $0xc0100b76,%eax
c01009f9:	6a 00                	push   $0x0
c01009fb:	50                   	push   %eax
c01009fc:	6a 01                	push   $0x1
c01009fe:	68 28 21 13 c0       	push   $0xc0132128
c0100a03:	e8 c2 fe ff ff       	call   c01008ca <set_trap>
c0100a08:	83 c4 10             	add    $0x10,%esp
c0100a0b:	b8 7d 0b 10 c0       	mov    $0xc0100b7d,%eax
c0100a10:	6a 00                	push   $0x0
c0100a12:	50                   	push   %eax
c0100a13:	6a 01                	push   $0x1
c0100a15:	68 30 21 13 c0       	push   $0xc0132130
c0100a1a:	e8 ab fe ff ff       	call   c01008ca <set_trap>
c0100a1f:	83 c4 10             	add    $0x10,%esp
c0100a22:	b8 84 0b 10 c0       	mov    $0xc0100b84,%eax
c0100a27:	6a 00                	push   $0x0
c0100a29:	50                   	push   %eax
c0100a2a:	6a 01                	push   $0x1
c0100a2c:	68 38 21 13 c0       	push   $0xc0132138
c0100a31:	e8 94 fe ff ff       	call   c01008ca <set_trap>
c0100a36:	83 c4 10             	add    $0x10,%esp
c0100a39:	b8 8b 0b 10 c0       	mov    $0xc0100b8b,%eax
c0100a3e:	6a 00                	push   $0x0
c0100a40:	50                   	push   %eax
c0100a41:	6a 01                	push   $0x1
c0100a43:	68 40 21 13 c0       	push   $0xc0132140
c0100a48:	e8 7d fe ff ff       	call   c01008ca <set_trap>
c0100a4d:	83 c4 10             	add    $0x10,%esp
c0100a50:	b8 92 0b 10 c0       	mov    $0xc0100b92,%eax
c0100a55:	6a 00                	push   $0x0
c0100a57:	50                   	push   %eax
c0100a58:	6a 01                	push   $0x1
c0100a5a:	68 48 21 13 c0       	push   $0xc0132148
c0100a5f:	e8 66 fe ff ff       	call   c01008ca <set_trap>
c0100a64:	83 c4 10             	add    $0x10,%esp
c0100a67:	b8 99 0b 10 c0       	mov    $0xc0100b99,%eax
c0100a6c:	6a 00                	push   $0x0
c0100a6e:	50                   	push   %eax
c0100a6f:	6a 01                	push   $0x1
c0100a71:	68 50 21 13 c0       	push   $0xc0132150
c0100a76:	e8 4f fe ff ff       	call   c01008ca <set_trap>
c0100a7b:	83 c4 10             	add    $0x10,%esp
c0100a7e:	b8 a0 0b 10 c0       	mov    $0xc0100ba0,%eax
c0100a83:	6a 00                	push   $0x0
c0100a85:	50                   	push   %eax
c0100a86:	6a 01                	push   $0x1
c0100a88:	68 58 21 13 c0       	push   $0xc0132158
c0100a8d:	e8 38 fe ff ff       	call   c01008ca <set_trap>
c0100a92:	83 c4 10             	add    $0x10,%esp
c0100a95:	b8 a7 0b 10 c0       	mov    $0xc0100ba7,%eax
c0100a9a:	6a 00                	push   $0x0
c0100a9c:	50                   	push   %eax
c0100a9d:	6a 01                	push   $0x1
c0100a9f:	68 60 21 13 c0       	push   $0xc0132160
c0100aa4:	e8 21 fe ff ff       	call   c01008ca <set_trap>
c0100aa9:	83 c4 10             	add    $0x10,%esp
c0100aac:	b8 ae 0b 10 c0       	mov    $0xc0100bae,%eax
c0100ab1:	6a 00                	push   $0x0
c0100ab3:	50                   	push   %eax
c0100ab4:	6a 01                	push   $0x1
c0100ab6:	68 68 21 13 c0       	push   $0xc0132168
c0100abb:	e8 0a fe ff ff       	call   c01008ca <set_trap>
c0100ac0:	83 c4 10             	add    $0x10,%esp
c0100ac3:	b8 b5 0b 10 c0       	mov    $0xc0100bb5,%eax
c0100ac8:	6a 00                	push   $0x0
c0100aca:	50                   	push   %eax
c0100acb:	6a 01                	push   $0x1
c0100acd:	68 70 21 13 c0       	push   $0xc0132170
c0100ad2:	e8 f3 fd ff ff       	call   c01008ca <set_trap>
c0100ad7:	83 c4 10             	add    $0x10,%esp
c0100ada:	b8 bc 0b 10 c0       	mov    $0xc0100bbc,%eax
c0100adf:	6a 00                	push   $0x0
c0100ae1:	50                   	push   %eax
c0100ae2:	6a 01                	push   $0x1
c0100ae4:	68 00 22 13 c0       	push   $0xc0132200
c0100ae9:	e8 5c fd ff ff       	call   c010084a <set_intr>
c0100aee:	83 c4 10             	add    $0x10,%esp
c0100af1:	b8 c6 0b 10 c0       	mov    $0xc0100bc6,%eax
c0100af6:	6a 00                	push   $0x0
c0100af8:	50                   	push   %eax
c0100af9:	6a 01                	push   $0x1
c0100afb:	68 08 22 13 c0       	push   $0xc0132208
c0100b00:	e8 45 fd ff ff       	call   c010084a <set_intr>
c0100b05:	83 c4 10             	add    $0x10,%esp
c0100b08:	b8 d0 0b 10 c0       	mov    $0xc0100bd0,%eax
c0100b0d:	6a 00                	push   $0x0
c0100b0f:	50                   	push   %eax
c0100b10:	6a 01                	push   $0x1
c0100b12:	68 70 22 13 c0       	push   $0xc0132270
c0100b17:	e8 2e fd ff ff       	call   c010084a <set_intr>
c0100b1c:	83 c4 10             	add    $0x10,%esp
c0100b1f:	b8 da 0b 10 c0       	mov    $0xc0100bda,%eax
c0100b24:	6a 03                	push   $0x3
c0100b26:	50                   	push   %eax
c0100b27:	6a 01                	push   $0x1
c0100b29:	68 00 25 13 c0       	push   $0xc0132500
c0100b2e:	e8 97 fd ff ff       	call   c01008ca <set_trap>
c0100b33:	83 c4 10             	add    $0x10,%esp
c0100b36:	68 00 08 00 00       	push   $0x800
c0100b3b:	68 00 21 13 c0       	push   $0xc0132100
c0100b40:	e8 d7 fc ff ff       	call   c010081c <save_idt>
c0100b45:	83 c4 08             	add    $0x8,%esp
c0100b48:	c9                   	leave  
c0100b49:	c3                   	ret    

c0100b4a <vec0>:
c0100b4a:	fa                   	cli    
c0100b4b:	6a 00                	push   $0x0
c0100b4d:	6a 00                	push   $0x0
c0100b4f:	e9 97 00 00 00       	jmp    c0100beb <asm_do_irq>

c0100b54 <vec1>:
c0100b54:	fa                   	cli    
c0100b55:	6a 00                	push   $0x0
c0100b57:	6a 01                	push   $0x1
c0100b59:	e9 8d 00 00 00       	jmp    c0100beb <asm_do_irq>

c0100b5e <vec2>:
c0100b5e:	fa                   	cli    
c0100b5f:	6a 00                	push   $0x0
c0100b61:	6a 02                	push   $0x2
c0100b63:	e9 83 00 00 00       	jmp    c0100beb <asm_do_irq>

c0100b68 <vec3>:
c0100b68:	fa                   	cli    
c0100b69:	6a 00                	push   $0x0
c0100b6b:	6a 03                	push   $0x3
c0100b6d:	eb 7c                	jmp    c0100beb <asm_do_irq>

c0100b6f <vec4>:
c0100b6f:	fa                   	cli    
c0100b70:	6a 00                	push   $0x0
c0100b72:	6a 04                	push   $0x4
c0100b74:	eb 75                	jmp    c0100beb <asm_do_irq>

c0100b76 <vec5>:
c0100b76:	fa                   	cli    
c0100b77:	6a 00                	push   $0x0
c0100b79:	6a 05                	push   $0x5
c0100b7b:	eb 6e                	jmp    c0100beb <asm_do_irq>

c0100b7d <vec6>:
c0100b7d:	fa                   	cli    
c0100b7e:	6a 00                	push   $0x0
c0100b80:	6a 06                	push   $0x6
c0100b82:	eb 67                	jmp    c0100beb <asm_do_irq>

c0100b84 <vec7>:
c0100b84:	fa                   	cli    
c0100b85:	6a 00                	push   $0x0
c0100b87:	6a 07                	push   $0x7
c0100b89:	eb 60                	jmp    c0100beb <asm_do_irq>

c0100b8b <vec8>:
c0100b8b:	fa                   	cli    
c0100b8c:	6a 00                	push   $0x0
c0100b8e:	6a 08                	push   $0x8
c0100b90:	eb 59                	jmp    c0100beb <asm_do_irq>

c0100b92 <vec9>:
c0100b92:	fa                   	cli    
c0100b93:	6a 00                	push   $0x0
c0100b95:	6a 09                	push   $0x9
c0100b97:	eb 52                	jmp    c0100beb <asm_do_irq>

c0100b99 <vec10>:
c0100b99:	fa                   	cli    
c0100b9a:	6a 00                	push   $0x0
c0100b9c:	6a 0a                	push   $0xa
c0100b9e:	eb 4b                	jmp    c0100beb <asm_do_irq>

c0100ba0 <vec11>:
c0100ba0:	fa                   	cli    
c0100ba1:	6a 00                	push   $0x0
c0100ba3:	6a 0b                	push   $0xb
c0100ba5:	eb 44                	jmp    c0100beb <asm_do_irq>

c0100ba7 <vec12>:
c0100ba7:	fa                   	cli    
c0100ba8:	6a 00                	push   $0x0
c0100baa:	6a 0c                	push   $0xc
c0100bac:	eb 3d                	jmp    c0100beb <asm_do_irq>

c0100bae <vec13>:
c0100bae:	fa                   	cli    
c0100baf:	6a 00                	push   $0x0
c0100bb1:	6a 0d                	push   $0xd
c0100bb3:	eb 36                	jmp    c0100beb <asm_do_irq>

c0100bb5 <vec14>:
c0100bb5:	fa                   	cli    
c0100bb6:	6a 00                	push   $0x0
c0100bb8:	6a 0e                	push   $0xe
c0100bba:	eb 2f                	jmp    c0100beb <asm_do_irq>

c0100bbc <irq0>:
c0100bbc:	fa                   	cli    
c0100bbd:	6a 00                	push   $0x0
c0100bbf:	68 e8 03 00 00       	push   $0x3e8
c0100bc4:	eb 25                	jmp    c0100beb <asm_do_irq>

c0100bc6 <irq1>:
c0100bc6:	fa                   	cli    
c0100bc7:	6a 00                	push   $0x0
c0100bc9:	68 e9 03 00 00       	push   $0x3e9
c0100bce:	eb 1b                	jmp    c0100beb <asm_do_irq>

c0100bd0 <irq14>:
c0100bd0:	fa                   	cli    
c0100bd1:	6a 00                	push   $0x0
c0100bd3:	68 f6 03 00 00       	push   $0x3f6
c0100bd8:	eb 11                	jmp    c0100beb <asm_do_irq>

c0100bda <syscall>:
c0100bda:	fa                   	cli    
c0100bdb:	6a 00                	push   $0x0
c0100bdd:	68 80 00 00 00       	push   $0x80
c0100be2:	eb 07                	jmp    c0100beb <asm_do_irq>

c0100be4 <irq_empty>:
c0100be4:	fa                   	cli    
c0100be5:	6a 00                	push   $0x0
c0100be7:	6a ff                	push   $0xffffffff
c0100be9:	eb 00                	jmp    c0100beb <asm_do_irq>

c0100beb <asm_do_irq>:
c0100beb:	60                   	pusha  
c0100bec:	54                   	push   %esp
c0100bed:	e8 08 00 00 00       	call   c0100bfa <irq_handle>
c0100bf2:	83 c4 04             	add    $0x4,%esp
c0100bf5:	61                   	popa   
c0100bf6:	83 c4 08             	add    $0x8,%esp
c0100bf9:	cf                   	iret   

c0100bfa <irq_handle>:
c0100bfa:	55                   	push   %ebp
c0100bfb:	89 e5                	mov    %esp,%ebp
c0100bfd:	83 ec 38             	sub    $0x38,%esp
c0100c00:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c03:	8b 40 20             	mov    0x20(%eax),%eax
c0100c06:	3d e8 03 00 00       	cmp    $0x3e8,%eax
c0100c0b:	75 18                	jne    c0100c25 <irq_handle+0x2b>
c0100c0d:	e8 ee f3 ff ff       	call   c0100000 <timer_event>
c0100c12:	83 ec 0c             	sub    $0xc,%esp
c0100c15:	ff 75 08             	pushl  0x8(%ebp)
c0100c18:	e8 f3 13 00 00       	call   c0102010 <time_treat>
c0100c1d:	83 c4 10             	add    $0x10,%esp
c0100c20:	e9 f7 01 00 00       	jmp    c0100e1c <irq_handle+0x222>
c0100c25:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c28:	8b 40 20             	mov    0x20(%eax),%eax
c0100c2b:	3d e9 03 00 00       	cmp    $0x3e9,%eax
c0100c30:	75 7b                	jne    c0100cad <irq_handle+0xb3>
c0100c32:	c7 45 ec 60 00 00 00 	movl   $0x60,-0x14(%ebp)
c0100c39:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100c3c:	89 c2                	mov    %eax,%edx
c0100c3e:	ec                   	in     (%dx),%al
c0100c3f:	88 45 eb             	mov    %al,-0x15(%ebp)
c0100c42:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
c0100c46:	0f b6 c0             	movzbl %al,%eax
c0100c49:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100c4c:	c7 45 e4 61 00 00 00 	movl   $0x61,-0x1c(%ebp)
c0100c53:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0100c56:	89 c2                	mov    %eax,%edx
c0100c58:	ec                   	in     (%dx),%al
c0100c59:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0100c5c:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
c0100c60:	0f b6 c0             	movzbl %al,%eax
c0100c63:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100c66:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0100c69:	83 c8 80             	or     $0xffffff80,%eax
c0100c6c:	0f b6 c0             	movzbl %al,%eax
c0100c6f:	c7 45 dc 61 00 00 00 	movl   $0x61,-0x24(%ebp)
c0100c76:	88 45 db             	mov    %al,-0x25(%ebp)
c0100c79:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
c0100c7d:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0100c80:	ee                   	out    %al,(%dx)
c0100c81:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0100c84:	0f b6 c0             	movzbl %al,%eax
c0100c87:	c7 45 d4 61 00 00 00 	movl   $0x61,-0x2c(%ebp)
c0100c8e:	88 45 d3             	mov    %al,-0x2d(%ebp)
c0100c91:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
c0100c95:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0100c98:	ee                   	out    %al,(%dx)
c0100c99:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100c9c:	83 ec 0c             	sub    $0xc,%esp
c0100c9f:	50                   	push   %eax
c0100ca0:	e8 86 f4 ff ff       	call   c010012b <keyboard_event>
c0100ca5:	83 c4 10             	add    $0x10,%esp
c0100ca8:	e9 6f 01 00 00       	jmp    c0100e1c <irq_handle+0x222>
c0100cad:	8b 45 08             	mov    0x8(%ebp),%eax
c0100cb0:	8b 40 20             	mov    0x20(%eax),%eax
c0100cb3:	3d f6 03 00 00       	cmp    $0x3f6,%eax
c0100cb8:	0f 84 5e 01 00 00    	je     c0100e1c <irq_handle+0x222>
c0100cbe:	8b 45 08             	mov    0x8(%ebp),%eax
c0100cc1:	8b 40 20             	mov    0x20(%eax),%eax
c0100cc4:	3d 80 00 00 00       	cmp    $0x80,%eax
c0100cc9:	0f 85 28 01 00 00    	jne    c0100df7 <irq_handle+0x1fd>
c0100ccf:	8b 45 08             	mov    0x8(%ebp),%eax
c0100cd2:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100cd5:	83 f8 01             	cmp    $0x1,%eax
c0100cd8:	75 26                	jne    c0100d00 <irq_handle+0x106>
c0100cda:	8b 45 08             	mov    0x8(%ebp),%eax
c0100cdd:	8b 40 10             	mov    0x10(%eax),%eax
c0100ce0:	83 f8 01             	cmp    $0x1,%eax
c0100ce3:	0f 85 33 01 00 00    	jne    c0100e1c <irq_handle+0x222>
c0100ce9:	8b 45 08             	mov    0x8(%ebp),%eax
c0100cec:	8b 40 18             	mov    0x18(%eax),%eax
c0100cef:	83 ec 0c             	sub    $0xc,%esp
c0100cf2:	50                   	push   %eax
c0100cf3:	e8 4e 04 00 00       	call   c0101146 <printk>
c0100cf8:	83 c4 10             	add    $0x10,%esp
c0100cfb:	e9 1c 01 00 00       	jmp    c0100e1c <irq_handle+0x222>
c0100d00:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d03:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100d06:	83 f8 02             	cmp    $0x2,%eax
c0100d09:	75 35                	jne    c0100d40 <irq_handle+0x146>
c0100d0b:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d0e:	8b 40 10             	mov    0x10(%eax),%eax
c0100d11:	85 c0                	test   %eax,%eax
c0100d13:	75 12                	jne    c0100d27 <irq_handle+0x12d>
c0100d15:	e8 f8 f2 ff ff       	call   c0100012 <get_time>
c0100d1a:	89 c2                	mov    %eax,%edx
c0100d1c:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d1f:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100d22:	e9 f5 00 00 00       	jmp    c0100e1c <irq_handle+0x222>
c0100d27:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d2a:	8b 40 10             	mov    0x10(%eax),%eax
c0100d2d:	83 f8 01             	cmp    $0x1,%eax
c0100d30:	0f 85 e6 00 00 00    	jne    c0100e1c <irq_handle+0x222>
c0100d36:	e8 e1 f2 ff ff       	call   c010001c <time_pop>
c0100d3b:	e9 dc 00 00 00       	jmp    c0100e1c <irq_handle+0x222>
c0100d40:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d43:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100d46:	83 f8 03             	cmp    $0x3,%eax
c0100d49:	75 35                	jne    c0100d80 <irq_handle+0x186>
c0100d4b:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d4e:	8b 40 10             	mov    0x10(%eax),%eax
c0100d51:	85 c0                	test   %eax,%eax
c0100d53:	75 12                	jne    c0100d67 <irq_handle+0x16d>
c0100d55:	e8 b8 f3 ff ff       	call   c0100112 <last_key_code>
c0100d5a:	89 c2                	mov    %eax,%edx
c0100d5c:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d5f:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100d62:	e9 b5 00 00 00       	jmp    c0100e1c <irq_handle+0x222>
c0100d67:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d6a:	8b 40 10             	mov    0x10(%eax),%eax
c0100d6d:	83 f8 01             	cmp    $0x1,%eax
c0100d70:	0f 85 a6 00 00 00    	jne    c0100e1c <irq_handle+0x222>
c0100d76:	e8 a1 f3 ff ff       	call   c010011c <reset_last_key>
c0100d7b:	e9 9c 00 00 00       	jmp    c0100e1c <irq_handle+0x222>
c0100d80:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d83:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100d86:	83 f8 04             	cmp    $0x4,%eax
c0100d89:	75 1e                	jne    c0100da9 <irq_handle+0x1af>
c0100d8b:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d8e:	8b 40 10             	mov    0x10(%eax),%eax
c0100d91:	83 ec 04             	sub    $0x4,%esp
c0100d94:	68 00 00 01 00       	push   $0x10000
c0100d99:	50                   	push   %eax
c0100d9a:	68 00 00 0a c0       	push   $0xc00a0000
c0100d9f:	e8 c7 03 00 00       	call   c010116b <my_memcpy>
c0100da4:	83 c4 10             	add    $0x10,%esp
c0100da7:	eb 73                	jmp    c0100e1c <irq_handle+0x222>
c0100da9:	8b 45 08             	mov    0x8(%ebp),%eax
c0100dac:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100daf:	83 f8 05             	cmp    $0x5,%eax
c0100db2:	75 07                	jne    c0100dbb <irq_handle+0x1c1>
c0100db4:	e8 f9 13 00 00       	call   c01021b2 <process_exit>
c0100db9:	eb 61                	jmp    c0100e1c <irq_handle+0x222>
c0100dbb:	8b 45 08             	mov    0x8(%ebp),%eax
c0100dbe:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100dc1:	83 f8 06             	cmp    $0x6,%eax
c0100dc4:	75 0f                	jne    c0100dd5 <irq_handle+0x1db>
c0100dc6:	e8 e5 07 00 00       	call   c01015b0 <getpid>
c0100dcb:	89 c2                	mov    %eax,%edx
c0100dcd:	8b 45 08             	mov    0x8(%ebp),%eax
c0100dd0:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100dd3:	eb 47                	jmp    c0100e1c <irq_handle+0x222>
c0100dd5:	8b 45 08             	mov    0x8(%ebp),%eax
c0100dd8:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100ddb:	83 f8 07             	cmp    $0x7,%eax
c0100dde:	75 3c                	jne    c0100e1c <irq_handle+0x222>
c0100de0:	8b 45 08             	mov    0x8(%ebp),%eax
c0100de3:	8b 40 10             	mov    0x10(%eax),%eax
c0100de6:	83 ec 08             	sub    $0x8,%esp
c0100de9:	ff 75 08             	pushl  0x8(%ebp)
c0100dec:	50                   	push   %eax
c0100ded:	e8 57 15 00 00       	call   c0102349 <my_sleep>
c0100df2:	83 c4 10             	add    $0x10,%esp
c0100df5:	eb 25                	jmp    c0100e1c <irq_handle+0x222>
c0100df7:	83 ec 0c             	sub    $0xc,%esp
c0100dfa:	ff 75 08             	pushl  0x8(%ebp)
c0100dfd:	e8 5c 06 00 00       	call   c010145e <print_tf>
c0100e02:	83 c4 10             	add    $0x10,%esp
c0100e05:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e08:	8b 40 20             	mov    0x20(%eax),%eax
c0100e0b:	83 ec 08             	sub    $0x8,%esp
c0100e0e:	50                   	push   %eax
c0100e0f:	68 5c 2b 10 c0       	push   $0xc0102b5c
c0100e14:	e8 2d 03 00 00       	call   c0101146 <printk>
c0100e19:	83 c4 10             	add    $0x10,%esp
c0100e1c:	c9                   	leave  
c0100e1d:	c3                   	ret    

c0100e1e <change>:
c0100e1e:	55                   	push   %ebp
c0100e1f:	89 e5                	mov    %esp,%ebp
c0100e21:	53                   	push   %ebx
c0100e22:	83 c4 80             	add    $0xffffff80,%esp
c0100e25:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0100e2c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0100e33:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e36:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0100e39:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0100e3d:	75 14                	jne    c0100e53 <change+0x35>
c0100e3f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100e42:	c6 00 30             	movb   $0x30,(%eax)
c0100e45:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100e48:	83 c0 01             	add    $0x1,%eax
c0100e4b:	c6 00 00             	movb   $0x0,(%eax)
c0100e4e:	e9 a5 00 00 00       	jmp    c0100ef8 <change+0xda>
c0100e53:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0100e57:	79 1d                	jns    c0100e76 <change+0x58>
c0100e59:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100e5c:	8d 50 01             	lea    0x1(%eax),%edx
c0100e5f:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0100e62:	89 c2                	mov    %eax,%edx
c0100e64:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100e67:	01 d0                	add    %edx,%eax
c0100e69:	c6 00 2d             	movb   $0x2d,(%eax)
c0100e6c:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100e6f:	f7 d8                	neg    %eax
c0100e71:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100e74:	eb 06                	jmp    c0100e7c <change+0x5e>
c0100e76:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100e79:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100e7c:	eb 40                	jmp    c0100ebe <change+0xa0>
c0100e7e:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0100e81:	8d 41 01             	lea    0x1(%ecx),%eax
c0100e84:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0100e87:	8b 5d f0             	mov    -0x10(%ebp),%ebx
c0100e8a:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c0100e8f:	89 d8                	mov    %ebx,%eax
c0100e91:	f7 e2                	mul    %edx
c0100e93:	c1 ea 03             	shr    $0x3,%edx
c0100e96:	89 d0                	mov    %edx,%eax
c0100e98:	c1 e0 02             	shl    $0x2,%eax
c0100e9b:	01 d0                	add    %edx,%eax
c0100e9d:	01 c0                	add    %eax,%eax
c0100e9f:	29 c3                	sub    %eax,%ebx
c0100ea1:	89 da                	mov    %ebx,%edx
c0100ea3:	89 d0                	mov    %edx,%eax
c0100ea5:	83 c0 30             	add    $0x30,%eax
c0100ea8:	88 44 0d 88          	mov    %al,-0x78(%ebp,%ecx,1)
c0100eac:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0100eaf:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c0100eb4:	f7 e2                	mul    %edx
c0100eb6:	89 d0                	mov    %edx,%eax
c0100eb8:	c1 e8 03             	shr    $0x3,%eax
c0100ebb:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100ebe:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0100ec2:	75 ba                	jne    c0100e7e <change+0x60>
c0100ec4:	eb 21                	jmp    c0100ee7 <change+0xc9>
c0100ec6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100ec9:	8d 50 01             	lea    0x1(%eax),%edx
c0100ecc:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0100ecf:	89 c2                	mov    %eax,%edx
c0100ed1:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100ed4:	01 c2                	add    %eax,%edx
c0100ed6:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
c0100eda:	8d 4d 88             	lea    -0x78(%ebp),%ecx
c0100edd:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0100ee0:	01 c8                	add    %ecx,%eax
c0100ee2:	0f b6 00             	movzbl (%eax),%eax
c0100ee5:	88 02                	mov    %al,(%edx)
c0100ee7:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
c0100eeb:	75 d9                	jne    c0100ec6 <change+0xa8>
c0100eed:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100ef0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100ef3:	01 d0                	add    %edx,%eax
c0100ef5:	c6 00 00             	movb   $0x0,(%eax)
c0100ef8:	83 ec 80             	sub    $0xffffff80,%esp
c0100efb:	5b                   	pop    %ebx
c0100efc:	5d                   	pop    %ebp
c0100efd:	c3                   	ret    

c0100efe <change_x>:
c0100efe:	55                   	push   %ebp
c0100eff:	89 e5                	mov    %esp,%ebp
c0100f01:	83 ec 70             	sub    $0x70,%esp
c0100f04:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0100f0b:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0100f12:	8b 45 08             	mov    0x8(%ebp),%eax
c0100f15:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100f18:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0100f1c:	75 11                	jne    c0100f2f <change_x+0x31>
c0100f1e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100f21:	c6 00 30             	movb   $0x30,(%eax)
c0100f24:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100f27:	83 c0 01             	add    $0x1,%eax
c0100f2a:	c6 00 00             	movb   $0x0,(%eax)
c0100f2d:	eb 7e                	jmp    c0100fad <change_x+0xaf>
c0100f2f:	eb 42                	jmp    c0100f73 <change_x+0x75>
c0100f31:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100f34:	83 e0 0f             	and    $0xf,%eax
c0100f37:	83 f8 09             	cmp    $0x9,%eax
c0100f3a:	77 18                	ja     c0100f54 <change_x+0x56>
c0100f3c:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100f3f:	8d 50 01             	lea    0x1(%eax),%edx
c0100f42:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0100f45:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100f48:	83 e2 0f             	and    $0xf,%edx
c0100f4b:	83 c2 30             	add    $0x30,%edx
c0100f4e:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
c0100f52:	eb 16                	jmp    c0100f6a <change_x+0x6c>
c0100f54:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100f57:	8d 50 01             	lea    0x1(%eax),%edx
c0100f5a:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0100f5d:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100f60:	83 e2 0f             	and    $0xf,%edx
c0100f63:	83 c2 37             	add    $0x37,%edx
c0100f66:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
c0100f6a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100f6d:	c1 e8 04             	shr    $0x4,%eax
c0100f70:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100f73:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0100f77:	75 b8                	jne    c0100f31 <change_x+0x33>
c0100f79:	eb 21                	jmp    c0100f9c <change_x+0x9e>
c0100f7b:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0100f7e:	8d 50 01             	lea    0x1(%eax),%edx
c0100f81:	89 55 f8             	mov    %edx,-0x8(%ebp)
c0100f84:	89 c2                	mov    %eax,%edx
c0100f86:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100f89:	01 c2                	add    %eax,%edx
c0100f8b:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
c0100f8f:	8d 4d 90             	lea    -0x70(%ebp),%ecx
c0100f92:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100f95:	01 c8                	add    %ecx,%eax
c0100f97:	0f b6 00             	movzbl (%eax),%eax
c0100f9a:	88 02                	mov    %al,(%edx)
c0100f9c:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
c0100fa0:	75 d9                	jne    c0100f7b <change_x+0x7d>
c0100fa2:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0100fa5:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100fa8:	01 d0                	add    %edx,%eax
c0100faa:	c6 00 00             	movb   $0x0,(%eax)
c0100fad:	c9                   	leave  
c0100fae:	c3                   	ret    

c0100faf <v_fprintf>:
c0100faf:	55                   	push   %ebp
c0100fb0:	89 e5                	mov    %esp,%ebp
c0100fb2:	81 ec 88 00 00 00    	sub    $0x88,%esp
c0100fb8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100fbb:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0100fbe:	8b 45 10             	mov    0x10(%ebp),%eax
c0100fc1:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100fc4:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0100fcb:	e9 61 01 00 00       	jmp    c0101131 <v_fprintf+0x182>
c0100fd0:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0100fd3:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100fd6:	01 d0                	add    %edx,%eax
c0100fd8:	0f b6 00             	movzbl (%eax),%eax
c0100fdb:	3c 25                	cmp    $0x25,%al
c0100fdd:	74 27                	je     c0101006 <v_fprintf+0x57>
c0100fdf:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0100fe2:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100fe5:	01 d0                	add    %edx,%eax
c0100fe7:	0f b6 00             	movzbl (%eax),%eax
c0100fea:	88 45 eb             	mov    %al,-0x15(%ebp)
c0100fed:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
c0100ff1:	83 ec 0c             	sub    $0xc,%esp
c0100ff4:	50                   	push   %eax
c0100ff5:	8b 45 08             	mov    0x8(%ebp),%eax
c0100ff8:	ff d0                	call   *%eax
c0100ffa:	83 c4 10             	add    $0x10,%esp
c0100ffd:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0101001:	e9 2b 01 00 00       	jmp    c0101131 <v_fprintf+0x182>
c0101006:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c010100a:	8b 55 f0             	mov    -0x10(%ebp),%edx
c010100d:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101010:	01 d0                	add    %edx,%eax
c0101012:	0f b6 00             	movzbl (%eax),%eax
c0101015:	3c 25                	cmp    $0x25,%al
c0101017:	75 16                	jne    c010102f <v_fprintf+0x80>
c0101019:	83 ec 0c             	sub    $0xc,%esp
c010101c:	6a 25                	push   $0x25
c010101e:	8b 45 08             	mov    0x8(%ebp),%eax
c0101021:	ff d0                	call   *%eax
c0101023:	83 c4 10             	add    $0x10,%esp
c0101026:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c010102a:	e9 02 01 00 00       	jmp    c0101131 <v_fprintf+0x182>
c010102f:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101032:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101035:	01 d0                	add    %edx,%eax
c0101037:	0f b6 00             	movzbl (%eax),%eax
c010103a:	3c 63                	cmp    $0x63,%al
c010103c:	75 26                	jne    c0101064 <v_fprintf+0xb5>
c010103e:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0101042:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101045:	0f b6 00             	movzbl (%eax),%eax
c0101048:	88 45 eb             	mov    %al,-0x15(%ebp)
c010104b:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
c010104f:	83 ec 0c             	sub    $0xc,%esp
c0101052:	50                   	push   %eax
c0101053:	8b 45 08             	mov    0x8(%ebp),%eax
c0101056:	ff d0                	call   *%eax
c0101058:	83 c4 10             	add    $0x10,%esp
c010105b:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c010105f:	e9 cd 00 00 00       	jmp    c0101131 <v_fprintf+0x182>
c0101064:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101067:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010106a:	01 d0                	add    %edx,%eax
c010106c:	0f b6 00             	movzbl (%eax),%eax
c010106f:	3c 64                	cmp    $0x64,%al
c0101071:	75 36                	jne    c01010a9 <v_fprintf+0xfa>
c0101073:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0101077:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010107a:	8b 00                	mov    (%eax),%eax
c010107c:	83 ec 08             	sub    $0x8,%esp
c010107f:	8d 55 87             	lea    -0x79(%ebp),%edx
c0101082:	52                   	push   %edx
c0101083:	50                   	push   %eax
c0101084:	e8 95 fd ff ff       	call   c0100e1e <change>
c0101089:	83 c4 10             	add    $0x10,%esp
c010108c:	83 ec 04             	sub    $0x4,%esp
c010108f:	6a 00                	push   $0x0
c0101091:	8d 45 87             	lea    -0x79(%ebp),%eax
c0101094:	50                   	push   %eax
c0101095:	ff 75 08             	pushl  0x8(%ebp)
c0101098:	e8 12 ff ff ff       	call   c0100faf <v_fprintf>
c010109d:	83 c4 10             	add    $0x10,%esp
c01010a0:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c01010a4:	e9 88 00 00 00       	jmp    c0101131 <v_fprintf+0x182>
c01010a9:	8b 55 f0             	mov    -0x10(%ebp),%edx
c01010ac:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01010af:	01 d0                	add    %edx,%eax
c01010b1:	0f b6 00             	movzbl (%eax),%eax
c01010b4:	3c 78                	cmp    $0x78,%al
c01010b6:	75 33                	jne    c01010eb <v_fprintf+0x13c>
c01010b8:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c01010bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01010bf:	8b 00                	mov    (%eax),%eax
c01010c1:	83 ec 08             	sub    $0x8,%esp
c01010c4:	8d 55 87             	lea    -0x79(%ebp),%edx
c01010c7:	52                   	push   %edx
c01010c8:	50                   	push   %eax
c01010c9:	e8 30 fe ff ff       	call   c0100efe <change_x>
c01010ce:	83 c4 10             	add    $0x10,%esp
c01010d1:	83 ec 04             	sub    $0x4,%esp
c01010d4:	6a 00                	push   $0x0
c01010d6:	8d 45 87             	lea    -0x79(%ebp),%eax
c01010d9:	50                   	push   %eax
c01010da:	ff 75 08             	pushl  0x8(%ebp)
c01010dd:	e8 cd fe ff ff       	call   c0100faf <v_fprintf>
c01010e2:	83 c4 10             	add    $0x10,%esp
c01010e5:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c01010e9:	eb 46                	jmp    c0101131 <v_fprintf+0x182>
c01010eb:	8b 55 f0             	mov    -0x10(%ebp),%edx
c01010ee:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01010f1:	01 d0                	add    %edx,%eax
c01010f3:	0f b6 00             	movzbl (%eax),%eax
c01010f6:	3c 73                	cmp    $0x73,%al
c01010f8:	75 20                	jne    c010111a <v_fprintf+0x16b>
c01010fa:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c01010fe:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101101:	8b 00                	mov    (%eax),%eax
c0101103:	83 ec 04             	sub    $0x4,%esp
c0101106:	6a 00                	push   $0x0
c0101108:	50                   	push   %eax
c0101109:	ff 75 08             	pushl  0x8(%ebp)
c010110c:	e8 9e fe ff ff       	call   c0100faf <v_fprintf>
c0101111:	83 c4 10             	add    $0x10,%esp
c0101114:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0101118:	eb 17                	jmp    c0101131 <v_fprintf+0x182>
c010111a:	83 ec 04             	sub    $0x4,%esp
c010111d:	6a 00                	push   $0x0
c010111f:	68 84 2b 10 c0       	push   $0xc0102b84
c0101124:	ff 75 08             	pushl  0x8(%ebp)
c0101127:	e8 83 fe ff ff       	call   c0100faf <v_fprintf>
c010112c:	83 c4 10             	add    $0x10,%esp
c010112f:	eb 13                	jmp    c0101144 <v_fprintf+0x195>
c0101131:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101134:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101137:	01 d0                	add    %edx,%eax
c0101139:	0f b6 00             	movzbl (%eax),%eax
c010113c:	84 c0                	test   %al,%al
c010113e:	0f 85 8c fe ff ff    	jne    c0100fd0 <v_fprintf+0x21>
c0101144:	c9                   	leave  
c0101145:	c3                   	ret    

c0101146 <printk>:
c0101146:	55                   	push   %ebp
c0101147:	89 e5                	mov    %esp,%ebp
c0101149:	83 ec 18             	sub    $0x18,%esp
c010114c:	8d 45 0c             	lea    0xc(%ebp),%eax
c010114f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101152:	8b 45 08             	mov    0x8(%ebp),%eax
c0101155:	83 ec 04             	sub    $0x4,%esp
c0101158:	ff 75 f4             	pushl  -0xc(%ebp)
c010115b:	50                   	push   %eax
c010115c:	68 5d 02 10 c0       	push   $0xc010025d
c0101161:	e8 49 fe ff ff       	call   c0100faf <v_fprintf>
c0101166:	83 c4 10             	add    $0x10,%esp
c0101169:	c9                   	leave  
c010116a:	c3                   	ret    

c010116b <my_memcpy>:
c010116b:	55                   	push   %ebp
c010116c:	89 e5                	mov    %esp,%ebp
c010116e:	57                   	push   %edi
c010116f:	56                   	push   %esi
c0101170:	53                   	push   %ebx
c0101171:	8b 45 10             	mov    0x10(%ebp),%eax
c0101174:	8b 55 0c             	mov    0xc(%ebp),%edx
c0101177:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010117a:	89 c1                	mov    %eax,%ecx
c010117c:	89 d6                	mov    %edx,%esi
c010117e:	89 df                	mov    %ebx,%edi
c0101180:	fc                   	cld    
c0101181:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0101183:	5b                   	pop    %ebx
c0101184:	5e                   	pop    %esi
c0101185:	5f                   	pop    %edi
c0101186:	5d                   	pop    %ebp
c0101187:	c3                   	ret    

c0101188 <my_memset>:
c0101188:	55                   	push   %ebp
c0101189:	89 e5                	mov    %esp,%ebp
c010118b:	57                   	push   %edi
c010118c:	53                   	push   %ebx
c010118d:	8b 55 10             	mov    0x10(%ebp),%edx
c0101190:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101193:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0101196:	89 d1                	mov    %edx,%ecx
c0101198:	89 df                	mov    %ebx,%edi
c010119a:	fc                   	cld    
c010119b:	f3 aa                	rep stos %al,%es:(%edi)
c010119d:	5b                   	pop    %ebx
c010119e:	5f                   	pop    %edi
c010119f:	5d                   	pop    %ebp
c01011a0:	c3                   	ret    

c01011a1 <_paddr>:
c01011a1:	55                   	push   %ebp
c01011a2:	89 e5                	mov    %esp,%ebp
c01011a4:	83 ec 08             	sub    $0x8,%esp
c01011a7:	8b 45 10             	mov    0x10(%ebp),%eax
c01011aa:	3d ff ff ff bf       	cmp    $0xbfffffff,%eax
c01011af:	77 16                	ja     c01011c7 <_paddr+0x26>
c01011b1:	ff 75 10             	pushl  0x10(%ebp)
c01011b4:	68 a4 2b 10 c0       	push   $0xc0102ba4
c01011b9:	ff 75 0c             	pushl  0xc(%ebp)
c01011bc:	ff 75 08             	pushl  0x8(%ebp)
c01011bf:	e8 82 ff ff ff       	call   c0101146 <printk>
c01011c4:	83 c4 10             	add    $0x10,%esp
c01011c7:	8b 45 10             	mov    0x10(%ebp),%eax
c01011ca:	05 00 00 00 40       	add    $0x40000000,%eax
c01011cf:	c9                   	leave  
c01011d0:	c3                   	ret    

c01011d1 <waitdisk>:
c01011d1:	55                   	push   %ebp
c01011d2:	89 e5                	mov    %esp,%ebp
c01011d4:	83 ec 10             	sub    $0x10,%esp
c01011d7:	90                   	nop
c01011d8:	c7 45 fc f7 01 00 00 	movl   $0x1f7,-0x4(%ebp)
c01011df:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01011e2:	89 c2                	mov    %eax,%edx
c01011e4:	ec                   	in     (%dx),%al
c01011e5:	88 45 fb             	mov    %al,-0x5(%ebp)
c01011e8:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
c01011ec:	0f b6 c0             	movzbl %al,%eax
c01011ef:	25 c0 00 00 00       	and    $0xc0,%eax
c01011f4:	83 f8 40             	cmp    $0x40,%eax
c01011f7:	75 df                	jne    c01011d8 <waitdisk+0x7>
c01011f9:	c9                   	leave  
c01011fa:	c3                   	ret    

c01011fb <readsect>:
c01011fb:	55                   	push   %ebp
c01011fc:	89 e5                	mov    %esp,%ebp
c01011fe:	57                   	push   %edi
c01011ff:	53                   	push   %ebx
c0101200:	83 ec 40             	sub    $0x40,%esp
c0101203:	e8 c9 ff ff ff       	call   c01011d1 <waitdisk>
c0101208:	c7 45 f4 f2 01 00 00 	movl   $0x1f2,-0xc(%ebp)
c010120f:	c6 45 f3 01          	movb   $0x1,-0xd(%ebp)
c0101213:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
c0101217:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010121a:	ee                   	out    %al,(%dx)
c010121b:	8b 45 0c             	mov    0xc(%ebp),%eax
c010121e:	0f b6 c0             	movzbl %al,%eax
c0101221:	c7 45 ec f3 01 00 00 	movl   $0x1f3,-0x14(%ebp)
c0101228:	88 45 eb             	mov    %al,-0x15(%ebp)
c010122b:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
c010122f:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0101232:	ee                   	out    %al,(%dx)
c0101233:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101236:	c1 e8 08             	shr    $0x8,%eax
c0101239:	0f b6 c0             	movzbl %al,%eax
c010123c:	c7 45 e4 f4 01 00 00 	movl   $0x1f4,-0x1c(%ebp)
c0101243:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0101246:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
c010124a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c010124d:	ee                   	out    %al,(%dx)
c010124e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101251:	c1 e8 10             	shr    $0x10,%eax
c0101254:	0f b6 c0             	movzbl %al,%eax
c0101257:	c7 45 dc f5 01 00 00 	movl   $0x1f5,-0x24(%ebp)
c010125e:	88 45 db             	mov    %al,-0x25(%ebp)
c0101261:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
c0101265:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0101268:	ee                   	out    %al,(%dx)
c0101269:	8b 45 0c             	mov    0xc(%ebp),%eax
c010126c:	c1 e8 18             	shr    $0x18,%eax
c010126f:	83 c8 e0             	or     $0xffffffe0,%eax
c0101272:	0f b6 c0             	movzbl %al,%eax
c0101275:	c7 45 d4 f6 01 00 00 	movl   $0x1f6,-0x2c(%ebp)
c010127c:	88 45 d3             	mov    %al,-0x2d(%ebp)
c010127f:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
c0101283:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0101286:	ee                   	out    %al,(%dx)
c0101287:	c7 45 cc f7 01 00 00 	movl   $0x1f7,-0x34(%ebp)
c010128e:	c6 45 cb 20          	movb   $0x20,-0x35(%ebp)
c0101292:	0f b6 45 cb          	movzbl -0x35(%ebp),%eax
c0101296:	8b 55 cc             	mov    -0x34(%ebp),%edx
c0101299:	ee                   	out    %al,(%dx)
c010129a:	e8 32 ff ff ff       	call   c01011d1 <waitdisk>
c010129f:	c7 45 c4 f0 01 00 00 	movl   $0x1f0,-0x3c(%ebp)
c01012a6:	8b 45 08             	mov    0x8(%ebp),%eax
c01012a9:	89 45 c0             	mov    %eax,-0x40(%ebp)
c01012ac:	c7 45 bc 80 00 00 00 	movl   $0x80,-0x44(%ebp)
c01012b3:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c01012b6:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c01012b9:	8b 45 bc             	mov    -0x44(%ebp),%eax
c01012bc:	89 cb                	mov    %ecx,%ebx
c01012be:	89 df                	mov    %ebx,%edi
c01012c0:	89 c1                	mov    %eax,%ecx
c01012c2:	fc                   	cld    
c01012c3:	f2 6d                	repnz insl (%dx),%es:(%edi)
c01012c5:	89 c8                	mov    %ecx,%eax
c01012c7:	89 fb                	mov    %edi,%ebx
c01012c9:	89 5d c0             	mov    %ebx,-0x40(%ebp)
c01012cc:	89 45 bc             	mov    %eax,-0x44(%ebp)
c01012cf:	83 c4 40             	add    $0x40,%esp
c01012d2:	5b                   	pop    %ebx
c01012d3:	5f                   	pop    %edi
c01012d4:	5d                   	pop    %ebp
c01012d5:	c3                   	ret    

c01012d6 <read_disk>:
c01012d6:	55                   	push   %ebp
c01012d7:	89 e5                	mov    %esp,%ebp
c01012d9:	83 ec 10             	sub    $0x10,%esp
c01012dc:	8b 55 0c             	mov    0xc(%ebp),%edx
c01012df:	8b 45 08             	mov    0x8(%ebp),%eax
c01012e2:	01 d0                	add    %edx,%eax
c01012e4:	89 45 f8             	mov    %eax,-0x8(%ebp)
c01012e7:	8b 45 10             	mov    0x10(%ebp),%eax
c01012ea:	99                   	cltd   
c01012eb:	c1 ea 17             	shr    $0x17,%edx
c01012ee:	01 d0                	add    %edx,%eax
c01012f0:	25 ff 01 00 00       	and    $0x1ff,%eax
c01012f5:	29 d0                	sub    %edx,%eax
c01012f7:	f7 d8                	neg    %eax
c01012f9:	01 45 08             	add    %eax,0x8(%ebp)
c01012fc:	8b 45 10             	mov    0x10(%ebp),%eax
c01012ff:	8d 90 ff 01 00 00    	lea    0x1ff(%eax),%edx
c0101305:	85 c0                	test   %eax,%eax
c0101307:	0f 48 c2             	cmovs  %edx,%eax
c010130a:	c1 f8 09             	sar    $0x9,%eax
c010130d:	83 c0 01             	add    $0x1,%eax
c0101310:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0101313:	eb 1a                	jmp    c010132f <read_disk+0x59>
c0101315:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0101318:	50                   	push   %eax
c0101319:	ff 75 08             	pushl  0x8(%ebp)
c010131c:	e8 da fe ff ff       	call   c01011fb <readsect>
c0101321:	83 c4 08             	add    $0x8,%esp
c0101324:	81 45 08 00 02 00 00 	addl   $0x200,0x8(%ebp)
c010132b:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c010132f:	8b 45 08             	mov    0x8(%ebp),%eax
c0101332:	3b 45 f8             	cmp    -0x8(%ebp),%eax
c0101335:	72 de                	jb     c0101315 <read_disk+0x3f>
c0101337:	c9                   	leave  
c0101338:	c3                   	ret    

c0101339 <load>:
c0101339:	55                   	push   %ebp
c010133a:	89 e5                	mov    %esp,%ebp
c010133c:	83 ec 28             	sub    $0x28,%esp
c010133f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0101346:	83 ec 04             	sub    $0x4,%esp
c0101349:	68 00 10 00 00       	push   $0x1000
c010134e:	6a 00                	push   $0x0
c0101350:	ff 75 0c             	pushl  0xc(%ebp)
c0101353:	e8 74 11 00 00       	call   c01024cc <mm_alloc>
c0101358:	83 c4 10             	add    $0x10,%esp
c010135b:	8b 45 08             	mov    0x8(%ebp),%eax
c010135e:	83 ec 04             	sub    $0x4,%esp
c0101361:	50                   	push   %eax
c0101362:	68 00 10 00 00       	push   $0x1000
c0101367:	ff 75 ec             	pushl  -0x14(%ebp)
c010136a:	e8 67 ff ff ff       	call   c01012d6 <read_disk>
c010136f:	83 c4 10             	add    $0x10,%esp
c0101372:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101375:	8b 50 1c             	mov    0x1c(%eax),%edx
c0101378:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010137b:	01 d0                	add    %edx,%eax
c010137d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101380:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101383:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
c0101387:	0f b7 c0             	movzwl %ax,%eax
c010138a:	c1 e0 05             	shl    $0x5,%eax
c010138d:	89 c2                	mov    %eax,%edx
c010138f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101392:	01 d0                	add    %edx,%eax
c0101394:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0101397:	83 ec 04             	sub    $0x4,%esp
c010139a:	ff 75 0c             	pushl  0xc(%ebp)
c010139d:	6a 52                	push   $0x52
c010139f:	68 c7 2b 10 c0       	push   $0xc0102bc7
c01013a4:	e8 f8 fd ff ff       	call   c01011a1 <_paddr>
c01013a9:	83 c4 10             	add    $0x10,%esp
c01013ac:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01013af:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01013b2:	0f 22 d8             	mov    %eax,%cr3
c01013b5:	eb 7b                	jmp    c0101432 <load+0xf9>
c01013b7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01013ba:	8b 40 14             	mov    0x14(%eax),%eax
c01013bd:	89 c2                	mov    %eax,%edx
c01013bf:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01013c2:	8b 40 0c             	mov    0xc(%eax),%eax
c01013c5:	83 ec 04             	sub    $0x4,%esp
c01013c8:	52                   	push   %edx
c01013c9:	50                   	push   %eax
c01013ca:	ff 75 0c             	pushl  0xc(%ebp)
c01013cd:	e8 fa 10 00 00       	call   c01024cc <mm_alloc>
c01013d2:	83 c4 10             	add    $0x10,%esp
c01013d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01013d8:	8b 50 04             	mov    0x4(%eax),%edx
c01013db:	8b 45 08             	mov    0x8(%ebp),%eax
c01013de:	01 d0                	add    %edx,%eax
c01013e0:	89 c1                	mov    %eax,%ecx
c01013e2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01013e5:	8b 40 10             	mov    0x10(%eax),%eax
c01013e8:	89 c2                	mov    %eax,%edx
c01013ea:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01013ed:	8b 40 0c             	mov    0xc(%eax),%eax
c01013f0:	83 ec 04             	sub    $0x4,%esp
c01013f3:	51                   	push   %ecx
c01013f4:	52                   	push   %edx
c01013f5:	50                   	push   %eax
c01013f6:	e8 db fe ff ff       	call   c01012d6 <read_disk>
c01013fb:	83 c4 10             	add    $0x10,%esp
c01013fe:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101401:	8b 50 0c             	mov    0xc(%eax),%edx
c0101404:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101407:	8b 40 10             	mov    0x10(%eax),%eax
c010140a:	01 d0                	add    %edx,%eax
c010140c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010140f:	eb 0a                	jmp    c010141b <load+0xe2>
c0101411:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101414:	c6 00 00             	movb   $0x0,(%eax)
c0101417:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c010141b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010141e:	8b 50 0c             	mov    0xc(%eax),%edx
c0101421:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101424:	8b 40 14             	mov    0x14(%eax),%eax
c0101427:	01 d0                	add    %edx,%eax
c0101429:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c010142c:	77 e3                	ja     c0101411 <load+0xd8>
c010142e:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c0101432:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101435:	3b 45 e8             	cmp    -0x18(%ebp),%eax
c0101438:	0f 82 79 ff ff ff    	jb     c01013b7 <load+0x7e>
c010143e:	83 ec 04             	sub    $0x4,%esp
c0101441:	68 00 00 01 00       	push   $0x10000
c0101446:	68 00 00 60 00       	push   $0x600000
c010144b:	ff 75 0c             	pushl  0xc(%ebp)
c010144e:	e8 79 10 00 00       	call   c01024cc <mm_alloc>
c0101453:	83 c4 10             	add    $0x10,%esp
c0101456:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101459:	8b 40 18             	mov    0x18(%eax),%eax
c010145c:	c9                   	leave  
c010145d:	c3                   	ret    

c010145e <print_tf>:
c010145e:	55                   	push   %ebp
c010145f:	89 e5                	mov    %esp,%ebp
c0101461:	83 ec 08             	sub    $0x8,%esp
c0101464:	8b 45 08             	mov    0x8(%ebp),%eax
c0101467:	8b 40 1c             	mov    0x1c(%eax),%eax
c010146a:	83 ec 08             	sub    $0x8,%esp
c010146d:	50                   	push   %eax
c010146e:	68 d0 2b 10 c0       	push   $0xc0102bd0
c0101473:	e8 ce fc ff ff       	call   c0101146 <printk>
c0101478:	83 c4 10             	add    $0x10,%esp
c010147b:	8b 45 08             	mov    0x8(%ebp),%eax
c010147e:	8b 40 10             	mov    0x10(%eax),%eax
c0101481:	83 ec 08             	sub    $0x8,%esp
c0101484:	50                   	push   %eax
c0101485:	68 d7 2b 10 c0       	push   $0xc0102bd7
c010148a:	e8 b7 fc ff ff       	call   c0101146 <printk>
c010148f:	83 c4 10             	add    $0x10,%esp
c0101492:	8b 45 08             	mov    0x8(%ebp),%eax
c0101495:	8b 40 18             	mov    0x18(%eax),%eax
c0101498:	83 ec 08             	sub    $0x8,%esp
c010149b:	50                   	push   %eax
c010149c:	68 de 2b 10 c0       	push   $0xc0102bde
c01014a1:	e8 a0 fc ff ff       	call   c0101146 <printk>
c01014a6:	83 c4 10             	add    $0x10,%esp
c01014a9:	8b 45 08             	mov    0x8(%ebp),%eax
c01014ac:	8b 40 14             	mov    0x14(%eax),%eax
c01014af:	83 ec 08             	sub    $0x8,%esp
c01014b2:	50                   	push   %eax
c01014b3:	68 e5 2b 10 c0       	push   $0xc0102be5
c01014b8:	e8 89 fc ff ff       	call   c0101146 <printk>
c01014bd:	83 c4 10             	add    $0x10,%esp
c01014c0:	8b 45 08             	mov    0x8(%ebp),%eax
c01014c3:	8b 00                	mov    (%eax),%eax
c01014c5:	83 ec 08             	sub    $0x8,%esp
c01014c8:	50                   	push   %eax
c01014c9:	68 ec 2b 10 c0       	push   $0xc0102bec
c01014ce:	e8 73 fc ff ff       	call   c0101146 <printk>
c01014d3:	83 c4 10             	add    $0x10,%esp
c01014d6:	8b 45 08             	mov    0x8(%ebp),%eax
c01014d9:	8b 40 34             	mov    0x34(%eax),%eax
c01014dc:	83 ec 08             	sub    $0x8,%esp
c01014df:	50                   	push   %eax
c01014e0:	68 f3 2b 10 c0       	push   $0xc0102bf3
c01014e5:	e8 5c fc ff ff       	call   c0101146 <printk>
c01014ea:	83 c4 10             	add    $0x10,%esp
c01014ed:	8b 45 08             	mov    0x8(%ebp),%eax
c01014f0:	8b 40 08             	mov    0x8(%eax),%eax
c01014f3:	83 ec 08             	sub    $0x8,%esp
c01014f6:	50                   	push   %eax
c01014f7:	68 fa 2b 10 c0       	push   $0xc0102bfa
c01014fc:	e8 45 fc ff ff       	call   c0101146 <printk>
c0101501:	83 c4 10             	add    $0x10,%esp
c0101504:	8b 45 08             	mov    0x8(%ebp),%eax
c0101507:	8b 40 28             	mov    0x28(%eax),%eax
c010150a:	83 ec 08             	sub    $0x8,%esp
c010150d:	50                   	push   %eax
c010150e:	68 01 2c 10 c0       	push   $0xc0102c01
c0101513:	e8 2e fc ff ff       	call   c0101146 <printk>
c0101518:	83 c4 10             	add    $0x10,%esp
c010151b:	8b 45 08             	mov    0x8(%ebp),%eax
c010151e:	8b 40 2c             	mov    0x2c(%eax),%eax
c0101521:	83 ec 08             	sub    $0x8,%esp
c0101524:	50                   	push   %eax
c0101525:	68 08 2c 10 c0       	push   $0xc0102c08
c010152a:	e8 17 fc ff ff       	call   c0101146 <printk>
c010152f:	83 c4 10             	add    $0x10,%esp
c0101532:	c9                   	leave  
c0101533:	c3                   	ret    

c0101534 <my_strcpy>:
c0101534:	55                   	push   %ebp
c0101535:	89 e5                	mov    %esp,%ebp
c0101537:	83 ec 10             	sub    $0x10,%esp
c010153a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0101541:	eb 2c                	jmp    c010156f <my_strcpy+0x3b>
c0101543:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0101546:	8b 45 08             	mov    0x8(%ebp),%eax
c0101549:	01 c2                	add    %eax,%edx
c010154b:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c010154e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101551:	01 c8                	add    %ecx,%eax
c0101553:	0f b6 00             	movzbl (%eax),%eax
c0101556:	88 02                	mov    %al,(%edx)
c0101558:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c010155c:	83 7d fc 1d          	cmpl   $0x1d,-0x4(%ebp)
c0101560:	75 0d                	jne    c010156f <my_strcpy+0x3b>
c0101562:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0101565:	8b 45 08             	mov    0x8(%ebp),%eax
c0101568:	01 d0                	add    %edx,%eax
c010156a:	c6 00 00             	movb   $0x0,(%eax)
c010156d:	eb 1a                	jmp    c0101589 <my_strcpy+0x55>
c010156f:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0101572:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101575:	01 d0                	add    %edx,%eax
c0101577:	0f b6 00             	movzbl (%eax),%eax
c010157a:	84 c0                	test   %al,%al
c010157c:	75 c5                	jne    c0101543 <my_strcpy+0xf>
c010157e:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0101581:	8b 45 08             	mov    0x8(%ebp),%eax
c0101584:	01 d0                	add    %edx,%eax
c0101586:	c6 00 00             	movb   $0x0,(%eax)
c0101589:	c9                   	leave  
c010158a:	c3                   	ret    

c010158b <debug>:
c010158b:	55                   	push   %ebp
c010158c:	89 e5                	mov    %esp,%ebp
c010158e:	83 ec 08             	sub    $0x8,%esp
c0101591:	8b 15 04 d0 1a c0    	mov    0xc01ad004,%edx
c0101597:	a1 00 d0 1a c0       	mov    0xc01ad000,%eax
c010159c:	83 ec 04             	sub    $0x4,%esp
c010159f:	52                   	push   %edx
c01015a0:	50                   	push   %eax
c01015a1:	68 0e 2c 10 c0       	push   $0xc0102c0e
c01015a6:	e8 9b fb ff ff       	call   c0101146 <printk>
c01015ab:	83 c4 10             	add    $0x10,%esp
c01015ae:	c9                   	leave  
c01015af:	c3                   	ret    

c01015b0 <getpid>:
c01015b0:	55                   	push   %ebp
c01015b1:	89 e5                	mov    %esp,%ebp
c01015b3:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01015b8:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01015be:	83 c0 30             	add    $0x30,%eax
c01015c1:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01015c6:	8b 40 0c             	mov    0xc(%eax),%eax
c01015c9:	8b 40 08             	mov    0x8(%eax),%eax
c01015cc:	5d                   	pop    %ebp
c01015cd:	c3                   	ret    

c01015ce <get_free_pid>:
c01015ce:	55                   	push   %ebp
c01015cf:	89 e5                	mov    %esp,%ebp
c01015d1:	83 ec 18             	sub    $0x18,%esp
c01015d4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01015db:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01015e2:	eb 25                	jmp    c0101609 <get_free_pid+0x3b>
c01015e4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01015e7:	8b 04 85 00 30 13 c0 	mov    -0x3fecd000(,%eax,4),%eax
c01015ee:	85 c0                	test   %eax,%eax
c01015f0:	75 13                	jne    c0101605 <get_free_pid+0x37>
c01015f2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01015f5:	c7 04 85 00 30 13 c0 	movl   $0x1,-0x3fecd000(,%eax,4)
c01015fc:	01 00 00 00 
c0101600:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101603:	eb 1c                	jmp    c0101621 <get_free_pid+0x53>
c0101605:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0101609:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c010160d:	7e d5                	jle    c01015e4 <get_free_pid+0x16>
c010160f:	83 ec 0c             	sub    $0xc,%esp
c0101612:	68 27 2c 10 c0       	push   $0xc0102c27
c0101617:	e8 2a fb ff ff       	call   c0101146 <printk>
c010161c:	83 c4 10             	add    $0x10,%esp
c010161f:	eb fe                	jmp    c010161f <get_free_pid+0x51>
c0101621:	c9                   	leave  
c0101622:	c3                   	ret    

c0101623 <free_pid>:
c0101623:	55                   	push   %ebp
c0101624:	89 e5                	mov    %esp,%ebp
c0101626:	8b 45 08             	mov    0x8(%ebp),%eax
c0101629:	c7 04 85 00 30 13 c0 	movl   $0x0,-0x3fecd000(,%eax,4)
c0101630:	00 00 00 00 
c0101634:	5d                   	pop    %ebp
c0101635:	c3                   	ret    

c0101636 <init_PCB>:
c0101636:	55                   	push   %ebp
c0101637:	89 e5                	mov    %esp,%ebp
c0101639:	83 ec 18             	sub    $0x18,%esp
c010163c:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c0101641:	83 ec 04             	sub    $0x4,%esp
c0101644:	68 00 10 00 00       	push   $0x1000
c0101649:	50                   	push   %eax
c010164a:	68 00 10 17 c0       	push   $0xc0171000
c010164f:	e8 17 fb ff ff       	call   c010116b <my_memcpy>
c0101654:	83 c4 10             	add    $0x10,%esp
c0101657:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
c010165e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0101665:	eb 1d                	jmp    c0101684 <init_PCB+0x4e>
c0101667:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010166a:	0f b7 04 c5 44 f0 1a 	movzwl -0x3fe50fbc(,%eax,8),%eax
c0101671:	c0 
c0101672:	8d 50 01             	lea    0x1(%eax),%edx
c0101675:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101678:	66 89 14 c5 44 f0 1a 	mov    %dx,-0x3fe50fbc(,%eax,8)
c010167f:	c0 
c0101680:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0101684:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101687:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c010168a:	7c db                	jl     c0101667 <init_PCB+0x31>
c010168c:	83 ec 08             	sub    $0x8,%esp
c010168f:	68 00 10 17 c0       	push   $0xc0171000
c0101694:	68 00 20 03 00       	push   $0x32000
c0101699:	e8 9b fc ff ff       	call   c0101339 <load>
c010169e:	83 c4 10             	add    $0x10,%esp
c01016a1:	a3 28 31 13 c0       	mov    %eax,0xc0133128
c01016a6:	c7 05 2c 31 13 c0 1b 	movl   $0x1b,0xc013312c
c01016ad:	00 00 00 
c01016b0:	c7 05 30 31 13 c0 02 	movl   $0x202,0xc0133130
c01016b7:	02 00 00 
c01016ba:	c7 05 34 31 13 c0 f0 	movl   $0x60fff0,0xc0133134
c01016c1:	ff 60 00 
c01016c4:	c7 05 38 31 13 c0 23 	movl   $0x23,0xc0133138
c01016cb:	00 00 00 
c01016ce:	83 ec 08             	sub    $0x8,%esp
c01016d1:	68 35 2c 10 c0       	push   $0xc0102c35
c01016d6:	68 4c 3f 13 c0       	push   $0xc0133f4c
c01016db:	e8 54 fe ff ff       	call   c0101534 <my_strcpy>
c01016e0:	83 c4 10             	add    $0x10,%esp
c01016e3:	c7 05 48 3f 13 c0 00 	movl   $0x0,0xc0133f48
c01016ea:	00 00 00 
c01016ed:	c7 05 70 3f 13 c0 00 	movl   $0x0,0xc0133f70
c01016f4:	00 00 00 
c01016f7:	c7 05 80 3f 13 c0 00 	movl   $0x0,0xc0133f80
c01016fe:	00 00 00 
c0101701:	c7 05 7c 3f 13 c0 00 	movl   $0x0,0xc0133f7c
c0101708:	00 00 00 
c010170b:	c7 05 6c 3f 13 c0 01 	movl   $0x1,0xc0133f6c
c0101712:	00 00 00 
c0101715:	c7 05 74 3f 13 c0 01 	movl   $0x1,0xc0133f74
c010171c:	00 00 00 
c010171f:	c7 05 78 3f 13 c0 64 	movl   $0x64,0xc0133f78
c0101726:	00 00 00 
c0101729:	c7 05 44 3f 13 c0 00 	movl   $0xc0133100,0xc0133f44
c0101730:	31 13 c0 
c0101733:	c7 05 00 d0 1a c0 01 	movl   $0x1,0xc01ad000
c010173a:	00 00 00 
c010173d:	c7 05 04 d0 1a c0 00 	movl   $0x0,0xc01ad004
c0101744:	00 00 00 
c0101747:	c7 05 10 3f 13 c0 00 	movl   $0x0,0xc0133f10
c010174e:	00 00 00 
c0101751:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0101758:	eb 26                	jmp    c0101780 <init_PCB+0x14a>
c010175a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010175d:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101763:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101769:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010176c:	89 02                	mov    %eax,(%edx)
c010176e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101771:	c7 04 85 00 30 13 c0 	movl   $0x0,-0x3fecd000(,%eax,4)
c0101778:	00 00 00 00 
c010177c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0101780:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c0101784:	7e d4                	jle    c010175a <init_PCB+0x124>
c0101786:	c7 05 00 30 13 c0 01 	movl   $0x1,0xc0133000
c010178d:	00 00 00 
c0101790:	c9                   	leave  
c0101791:	c3                   	ret    

c0101792 <add_PCB>:
c0101792:	55                   	push   %ebp
c0101793:	89 e5                	mov    %esp,%ebp
c0101795:	83 ec 18             	sub    $0x18,%esp
c0101798:	8b 15 00 d0 1a c0    	mov    0xc01ad000,%edx
c010179e:	a1 04 d0 1a c0       	mov    0xc01ad004,%eax
c01017a3:	01 c2                	add    %eax,%edx
c01017a5:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c01017aa:	01 d0                	add    %edx,%eax
c01017ac:	83 f8 3c             	cmp    $0x3c,%eax
c01017af:	75 1b                	jne    c01017cc <add_PCB+0x3a>
c01017b1:	83 ec 0c             	sub    $0xc,%esp
c01017b4:	68 3a 2c 10 c0       	push   $0xc0102c3a
c01017b9:	e8 88 f9 ff ff       	call   c0101146 <printk>
c01017be:	83 c4 10             	add    $0x10,%esp
c01017c1:	fb                   	sti    
c01017c2:	b8 00 00 00 00       	mov    $0x0,%eax
c01017c7:	e9 1c 03 00 00       	jmp    c0101ae8 <add_PCB+0x356>
c01017cc:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c01017d3:	eb 1e                	jmp    c01017f3 <add_PCB+0x61>
c01017d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01017d8:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01017de:	83 c0 20             	add    $0x20,%eax
c01017e1:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01017e6:	8b 40 0c             	mov    0xc(%eax),%eax
c01017e9:	85 c0                	test   %eax,%eax
c01017eb:	75 02                	jne    c01017ef <add_PCB+0x5d>
c01017ed:	eb 0a                	jmp    c01017f9 <add_PCB+0x67>
c01017ef:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01017f3:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c01017f7:	7e dc                	jle    c01017d5 <add_PCB+0x43>
c01017f9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01017fc:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101802:	83 c0 20             	add    $0x20,%eax
c0101805:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010180a:	c7 40 0c 01 00 00 00 	movl   $0x1,0xc(%eax)
c0101811:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0101815:	0f 85 81 00 00 00    	jne    c010189c <add_PCB+0x10a>
c010181b:	a1 bc f0 10 c0       	mov    0xc010f0bc,%eax
c0101820:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101826:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010182b:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010182e:	a1 bc f0 10 c0       	mov    0xc010f0bc,%eax
c0101833:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101836:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c010183c:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c0101842:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101848:	83 c0 30             	add    $0x30,%eax
c010184b:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101850:	89 50 0c             	mov    %edx,0xc(%eax)
c0101853:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101856:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c010185c:	83 c0 40             	add    $0x40,%eax
c010185f:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101865:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101868:	89 02                	mov    %eax,(%edx)
c010186a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010186d:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101873:	83 c0 30             	add    $0x30,%eax
c0101876:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010187b:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101882:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101885:	a3 bc f0 10 c0       	mov    %eax,0xc010f0bc
c010188a:	a1 00 d0 1a c0       	mov    0xc01ad000,%eax
c010188f:	83 c0 01             	add    $0x1,%eax
c0101892:	a3 00 d0 1a c0       	mov    %eax,0xc01ad000
c0101897:	e9 b8 01 00 00       	jmp    c0101a54 <add_PCB+0x2c2>
c010189c:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c01018a0:	0f 85 db 00 00 00    	jne    c0101981 <add_PCB+0x1ef>
c01018a6:	a1 04 d0 1a c0       	mov    0xc01ad004,%eax
c01018ab:	85 c0                	test   %eax,%eax
c01018ad:	75 51                	jne    c0101900 <add_PCB+0x16e>
c01018af:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018b2:	a3 c0 f0 10 c0       	mov    %eax,0xc010f0c0
c01018b7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018ba:	a3 c4 f0 10 c0       	mov    %eax,0xc010f0c4
c01018bf:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018c2:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01018c8:	83 c0 40             	add    $0x40,%eax
c01018cb:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01018d0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c01018d6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018d9:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01018df:	83 c0 30             	add    $0x30,%eax
c01018e2:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01018e7:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c01018ee:	a1 04 d0 1a c0       	mov    0xc01ad004,%eax
c01018f3:	83 c0 01             	add    $0x1,%eax
c01018f6:	a3 04 d0 1a c0       	mov    %eax,0xc01ad004
c01018fb:	e9 54 01 00 00       	jmp    c0101a54 <add_PCB+0x2c2>
c0101900:	a1 c4 f0 10 c0       	mov    0xc010f0c4,%eax
c0101905:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c010190b:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101910:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101913:	a1 c4 f0 10 c0       	mov    0xc010f0c4,%eax
c0101918:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010191b:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c0101921:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c0101927:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c010192d:	83 c0 30             	add    $0x30,%eax
c0101930:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101935:	89 50 0c             	mov    %edx,0xc(%eax)
c0101938:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010193b:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101941:	83 c0 40             	add    $0x40,%eax
c0101944:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c010194a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010194d:	89 02                	mov    %eax,(%edx)
c010194f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101952:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101958:	83 c0 30             	add    $0x30,%eax
c010195b:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101960:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101967:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010196a:	a3 c4 f0 10 c0       	mov    %eax,0xc010f0c4
c010196f:	a1 04 d0 1a c0       	mov    0xc01ad004,%eax
c0101974:	83 c0 01             	add    $0x1,%eax
c0101977:	a3 04 d0 1a c0       	mov    %eax,0xc01ad004
c010197c:	e9 d3 00 00 00       	jmp    c0101a54 <add_PCB+0x2c2>
c0101981:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101986:	85 c0                	test   %eax,%eax
c0101988:	75 4e                	jne    c01019d8 <add_PCB+0x246>
c010198a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010198d:	a3 c8 f0 10 c0       	mov    %eax,0xc010f0c8
c0101992:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101995:	a3 cc f0 10 c0       	mov    %eax,0xc010f0cc
c010199a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010199d:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01019a3:	83 c0 40             	add    $0x40,%eax
c01019a6:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01019ab:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c01019b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01019b4:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01019ba:	83 c0 30             	add    $0x30,%eax
c01019bd:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01019c2:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c01019c9:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c01019ce:	83 c0 01             	add    $0x1,%eax
c01019d1:	a3 10 3f 13 c0       	mov    %eax,0xc0133f10
c01019d6:	eb 7c                	jmp    c0101a54 <add_PCB+0x2c2>
c01019d8:	a1 cc f0 10 c0       	mov    0xc010f0cc,%eax
c01019dd:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01019e3:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01019e8:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01019eb:	a1 cc f0 10 c0       	mov    0xc010f0cc,%eax
c01019f0:	8b 55 f4             	mov    -0xc(%ebp),%edx
c01019f3:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c01019f9:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c01019ff:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101a05:	83 c0 30             	add    $0x30,%eax
c0101a08:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101a0d:	89 50 0c             	mov    %edx,0xc(%eax)
c0101a10:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a13:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101a19:	83 c0 40             	add    $0x40,%eax
c0101a1c:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101a22:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101a25:	89 02                	mov    %eax,(%edx)
c0101a27:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a2a:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101a30:	83 c0 30             	add    $0x30,%eax
c0101a33:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101a38:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101a3f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a42:	a3 cc f0 10 c0       	mov    %eax,0xc010f0cc
c0101a47:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101a4c:	83 c0 01             	add    $0x1,%eax
c0101a4f:	a3 10 3f 13 c0       	mov    %eax,0xc0133f10
c0101a54:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a57:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101a5d:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101a62:	83 c0 0c             	add    $0xc,%eax
c0101a65:	83 ec 08             	sub    $0x8,%esp
c0101a68:	ff 75 10             	pushl  0x10(%ebp)
c0101a6b:	50                   	push   %eax
c0101a6c:	e8 c3 fa ff ff       	call   c0101534 <my_strcpy>
c0101a71:	83 c4 10             	add    $0x10,%esp
c0101a74:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a77:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101a7d:	83 c0 30             	add    $0x30,%eax
c0101a80:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101a86:	8b 45 14             	mov    0x14(%ebp),%eax
c0101a89:	89 42 08             	mov    %eax,0x8(%edx)
c0101a8c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a8f:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101a95:	83 c0 30             	add    $0x30,%eax
c0101a98:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101a9e:	8b 45 08             	mov    0x8(%ebp),%eax
c0101aa1:	89 42 04             	mov    %eax,0x4(%edx)
c0101aa4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101aa7:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101aad:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101ab3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101ab6:	89 42 04             	mov    %eax,0x4(%edx)
c0101ab9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101abc:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101ac2:	83 c0 30             	add    $0x30,%eax
c0101ac5:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101acb:	8b 45 18             	mov    0x18(%ebp),%eax
c0101ace:	89 02                	mov    %eax,(%edx)
c0101ad0:	8b 45 1c             	mov    0x1c(%ebp),%eax
c0101ad3:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101ad6:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c0101adc:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c0101ae2:	89 42 08             	mov    %eax,0x8(%edx)
c0101ae5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101ae8:	c9                   	leave  
c0101ae9:	c3                   	ret    

c0101aea <delete_PCB>:
c0101aea:	55                   	push   %ebp
c0101aeb:	89 e5                	mov    %esp,%ebp
c0101aed:	83 ec 18             	sub    $0x18,%esp
c0101af0:	8b 45 08             	mov    0x8(%ebp),%eax
c0101af3:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101af9:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101afe:	8b 40 08             	mov    0x8(%eax),%eax
c0101b01:	50                   	push   %eax
c0101b02:	e8 1c fb ff ff       	call   c0101623 <free_pid>
c0101b07:	83 c4 04             	add    $0x4,%esp
c0101b0a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0101b0e:	75 15                	jne    c0101b25 <delete_PCB+0x3b>
c0101b10:	83 ec 0c             	sub    $0xc,%esp
c0101b13:	68 50 2c 10 c0       	push   $0xc0102c50
c0101b18:	e8 29 f6 ff ff       	call   c0101146 <printk>
c0101b1d:	83 c4 10             	add    $0x10,%esp
c0101b20:	e9 d5 02 00 00       	jmp    c0101dfa <delete_PCB+0x310>
c0101b25:	8b 45 08             	mov    0x8(%ebp),%eax
c0101b28:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101b2e:	83 c0 20             	add    $0x20,%eax
c0101b31:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101b36:	8b 40 0c             	mov    0xc(%eax),%eax
c0101b39:	85 c0                	test   %eax,%eax
c0101b3b:	75 15                	jne    c0101b52 <delete_PCB+0x68>
c0101b3d:	83 ec 0c             	sub    $0xc,%esp
c0101b40:	68 73 2c 10 c0       	push   $0xc0102c73
c0101b45:	e8 fc f5 ff ff       	call   c0101146 <printk>
c0101b4a:	83 c4 10             	add    $0x10,%esp
c0101b4d:	e9 a8 02 00 00       	jmp    c0101dfa <delete_PCB+0x310>
c0101b52:	8b 45 08             	mov    0x8(%ebp),%eax
c0101b55:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101b5b:	83 c0 20             	add    $0x20,%eax
c0101b5e:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101b63:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101b6a:	8b 45 08             	mov    0x8(%ebp),%eax
c0101b6d:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101b73:	83 c0 30             	add    $0x30,%eax
c0101b76:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101b7b:	8b 40 04             	mov    0x4(%eax),%eax
c0101b7e:	83 f8 01             	cmp    $0x1,%eax
c0101b81:	0f 85 bf 00 00 00    	jne    c0101c46 <delete_PCB+0x15c>
c0101b87:	a1 bc f0 10 c0       	mov    0xc010f0bc,%eax
c0101b8c:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101b8f:	75 48                	jne    c0101bd9 <delete_PCB+0xef>
c0101b91:	8b 45 08             	mov    0x8(%ebp),%eax
c0101b94:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101b9a:	83 c0 40             	add    $0x40,%eax
c0101b9d:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101ba2:	8b 00                	mov    (%eax),%eax
c0101ba4:	8b 40 08             	mov    0x8(%eax),%eax
c0101ba7:	a3 bc f0 10 c0       	mov    %eax,0xc010f0bc
c0101bac:	8b 45 08             	mov    0x8(%ebp),%eax
c0101baf:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101bb5:	83 c0 40             	add    $0x40,%eax
c0101bb8:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101bbd:	8b 00                	mov    (%eax),%eax
c0101bbf:	8b 55 08             	mov    0x8(%ebp),%edx
c0101bc2:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c0101bc8:	83 c2 30             	add    $0x30,%edx
c0101bcb:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c0101bd1:	8b 52 0c             	mov    0xc(%edx),%edx
c0101bd4:	89 50 3c             	mov    %edx,0x3c(%eax)
c0101bd7:	eb 5b                	jmp    c0101c34 <delete_PCB+0x14a>
c0101bd9:	8b 45 08             	mov    0x8(%ebp),%eax
c0101bdc:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101be2:	83 c0 40             	add    $0x40,%eax
c0101be5:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101bea:	8b 00                	mov    (%eax),%eax
c0101bec:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101bef:	8b 45 08             	mov    0x8(%ebp),%eax
c0101bf2:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101bf8:	83 c0 40             	add    $0x40,%eax
c0101bfb:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101c00:	8b 00                	mov    (%eax),%eax
c0101c02:	8b 55 08             	mov    0x8(%ebp),%edx
c0101c05:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c0101c0b:	83 c2 30             	add    $0x30,%edx
c0101c0e:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c0101c14:	8b 52 0c             	mov    0xc(%edx),%edx
c0101c17:	89 50 3c             	mov    %edx,0x3c(%eax)
c0101c1a:	8b 45 08             	mov    0x8(%ebp),%eax
c0101c1d:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101c23:	83 c0 30             	add    $0x30,%eax
c0101c26:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101c2b:	8b 40 0c             	mov    0xc(%eax),%eax
c0101c2e:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101c31:	89 50 40             	mov    %edx,0x40(%eax)
c0101c34:	a1 00 d0 1a c0       	mov    0xc01ad000,%eax
c0101c39:	83 e8 01             	sub    $0x1,%eax
c0101c3c:	a3 00 d0 1a c0       	mov    %eax,0xc01ad000
c0101c41:	e9 b4 01 00 00       	jmp    c0101dfa <delete_PCB+0x310>
c0101c46:	8b 45 08             	mov    0x8(%ebp),%eax
c0101c49:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101c4f:	83 c0 30             	add    $0x30,%eax
c0101c52:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101c57:	8b 40 04             	mov    0x4(%eax),%eax
c0101c5a:	83 f8 02             	cmp    $0x2,%eax
c0101c5d:	0f 85 d0 00 00 00    	jne    c0101d33 <delete_PCB+0x249>
c0101c63:	a1 04 d0 1a c0       	mov    0xc01ad004,%eax
c0101c68:	83 e8 01             	sub    $0x1,%eax
c0101c6b:	a3 04 d0 1a c0       	mov    %eax,0xc01ad004
c0101c70:	a1 04 d0 1a c0       	mov    0xc01ad004,%eax
c0101c75:	85 c0                	test   %eax,%eax
c0101c77:	75 19                	jne    c0101c92 <delete_PCB+0x1a8>
c0101c79:	c7 05 c0 f0 10 c0 00 	movl   $0x0,0xc010f0c0
c0101c80:	00 00 00 
c0101c83:	c7 05 c4 f0 10 c0 00 	movl   $0x0,0xc010f0c4
c0101c8a:	00 00 00 
c0101c8d:	e9 68 01 00 00       	jmp    c0101dfa <delete_PCB+0x310>
c0101c92:	a1 c4 f0 10 c0       	mov    0xc010f0c4,%eax
c0101c97:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101c9a:	75 1b                	jne    c0101cb7 <delete_PCB+0x1cd>
c0101c9c:	8b 45 08             	mov    0x8(%ebp),%eax
c0101c9f:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101ca5:	83 c0 40             	add    $0x40,%eax
c0101ca8:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101cad:	8b 00                	mov    (%eax),%eax
c0101caf:	8b 40 08             	mov    0x8(%eax),%eax
c0101cb2:	a3 c4 f0 10 c0       	mov    %eax,0xc010f0c4
c0101cb7:	8b 45 08             	mov    0x8(%ebp),%eax
c0101cba:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101cc0:	83 c0 40             	add    $0x40,%eax
c0101cc3:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101cc8:	8b 00                	mov    (%eax),%eax
c0101cca:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101ccd:	8b 45 08             	mov    0x8(%ebp),%eax
c0101cd0:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101cd6:	83 c0 40             	add    $0x40,%eax
c0101cd9:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101cde:	8b 00                	mov    (%eax),%eax
c0101ce0:	8b 55 08             	mov    0x8(%ebp),%edx
c0101ce3:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c0101ce9:	83 c2 30             	add    $0x30,%edx
c0101cec:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c0101cf2:	8b 52 0c             	mov    0xc(%edx),%edx
c0101cf5:	89 50 3c             	mov    %edx,0x3c(%eax)
c0101cf8:	8b 45 08             	mov    0x8(%ebp),%eax
c0101cfb:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101d01:	83 c0 30             	add    $0x30,%eax
c0101d04:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d09:	8b 40 0c             	mov    0xc(%eax),%eax
c0101d0c:	85 c0                	test   %eax,%eax
c0101d0e:	0f 84 e6 00 00 00    	je     c0101dfa <delete_PCB+0x310>
c0101d14:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d17:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101d1d:	83 c0 30             	add    $0x30,%eax
c0101d20:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d25:	8b 40 0c             	mov    0xc(%eax),%eax
c0101d28:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101d2b:	89 50 40             	mov    %edx,0x40(%eax)
c0101d2e:	e9 c7 00 00 00       	jmp    c0101dfa <delete_PCB+0x310>
c0101d33:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101d38:	83 e8 01             	sub    $0x1,%eax
c0101d3b:	a3 10 3f 13 c0       	mov    %eax,0xc0133f10
c0101d40:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101d45:	85 c0                	test   %eax,%eax
c0101d47:	75 19                	jne    c0101d62 <delete_PCB+0x278>
c0101d49:	c7 05 c8 f0 10 c0 00 	movl   $0x0,0xc010f0c8
c0101d50:	00 00 00 
c0101d53:	c7 05 cc f0 10 c0 00 	movl   $0x0,0xc010f0cc
c0101d5a:	00 00 00 
c0101d5d:	e9 98 00 00 00       	jmp    c0101dfa <delete_PCB+0x310>
c0101d62:	a1 cc f0 10 c0       	mov    0xc010f0cc,%eax
c0101d67:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101d6a:	75 1b                	jne    c0101d87 <delete_PCB+0x29d>
c0101d6c:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d6f:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101d75:	83 c0 40             	add    $0x40,%eax
c0101d78:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d7d:	8b 00                	mov    (%eax),%eax
c0101d7f:	8b 40 08             	mov    0x8(%eax),%eax
c0101d82:	a3 cc f0 10 c0       	mov    %eax,0xc010f0cc
c0101d87:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d8a:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101d90:	83 c0 40             	add    $0x40,%eax
c0101d93:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d98:	8b 00                	mov    (%eax),%eax
c0101d9a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101d9d:	8b 45 08             	mov    0x8(%ebp),%eax
c0101da0:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101da6:	83 c0 40             	add    $0x40,%eax
c0101da9:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101dae:	8b 00                	mov    (%eax),%eax
c0101db0:	8b 55 08             	mov    0x8(%ebp),%edx
c0101db3:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c0101db9:	83 c2 30             	add    $0x30,%edx
c0101dbc:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c0101dc2:	8b 52 0c             	mov    0xc(%edx),%edx
c0101dc5:	89 50 3c             	mov    %edx,0x3c(%eax)
c0101dc8:	8b 45 08             	mov    0x8(%ebp),%eax
c0101dcb:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101dd1:	83 c0 30             	add    $0x30,%eax
c0101dd4:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101dd9:	8b 40 0c             	mov    0xc(%eax),%eax
c0101ddc:	85 c0                	test   %eax,%eax
c0101dde:	74 1a                	je     c0101dfa <delete_PCB+0x310>
c0101de0:	8b 45 08             	mov    0x8(%ebp),%eax
c0101de3:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101de9:	83 c0 30             	add    $0x30,%eax
c0101dec:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101df1:	8b 40 0c             	mov    0xc(%eax),%eax
c0101df4:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101df7:	89 50 40             	mov    %edx,0x40(%eax)
c0101dfa:	c9                   	leave  
c0101dfb:	c3                   	ret    

c0101dfc <reschedule>:
c0101dfc:	55                   	push   %ebp
c0101dfd:	89 e5                	mov    %esp,%ebp
c0101dff:	83 ec 28             	sub    $0x28,%esp
c0101e02:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0101e07:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101e0a:	a1 00 d0 1a c0       	mov    0xc01ad000,%eax
c0101e0f:	83 f8 01             	cmp    $0x1,%eax
c0101e12:	75 46                	jne    c0101e5a <reschedule+0x5e>
c0101e14:	a1 04 d0 1a c0       	mov    0xc01ad004,%eax
c0101e19:	85 c0                	test   %eax,%eax
c0101e1b:	75 3d                	jne    c0101e5a <reschedule+0x5e>
c0101e1d:	b8 7c 4f 13 c0       	mov    $0xc0134f7c,%eax
c0101e22:	83 ec 0c             	sub    $0xc,%esp
c0101e25:	50                   	push   %eax
c0101e26:	e8 f8 e4 ff ff       	call   c0100323 <set_tss>
c0101e2b:	83 c4 10             	add    $0x10,%esp
c0101e2e:	b8 00 10 17 c0       	mov    $0xc0171000,%eax
c0101e33:	05 00 00 00 40       	add    $0x40000000,%eax
c0101e38:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0101e3b:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101e3e:	0f 22 d8             	mov    %eax,%cr3
c0101e41:	66 b8 23 00          	mov    $0x23,%ax
c0101e45:	8e d8                	mov    %eax,%ds
c0101e47:	8e c0                	mov    %eax,%es
c0101e49:	a1 44 3f 13 c0       	mov    0xc0133f44,%eax
c0101e4e:	89 c4                	mov    %eax,%esp
c0101e50:	61                   	popa   
c0101e51:	83 c4 08             	add    $0x8,%esp
c0101e54:	cf                   	iret   
c0101e55:	e9 b4 01 00 00       	jmp    c010200e <reschedule+0x212>
c0101e5a:	a1 00 d0 1a c0       	mov    0xc01ad000,%eax
c0101e5f:	83 f8 01             	cmp    $0x1,%eax
c0101e62:	0f 8e 80 00 00 00    	jle    c0101ee8 <reschedule+0xec>
c0101e68:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101e6b:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101e71:	83 c0 30             	add    $0x30,%eax
c0101e74:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101e79:	8b 40 0c             	mov    0xc(%eax),%eax
c0101e7c:	83 c0 44             	add    $0x44,%eax
c0101e7f:	05 f8 0f 00 00       	add    $0xff8,%eax
c0101e84:	83 ec 0c             	sub    $0xc,%esp
c0101e87:	50                   	push   %eax
c0101e88:	e8 96 e4 ff ff       	call   c0100323 <set_tss>
c0101e8d:	83 c4 10             	add    $0x10,%esp
c0101e90:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101e93:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101e99:	83 c0 30             	add    $0x30,%eax
c0101e9c:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101ea1:	8b 40 0c             	mov    0xc(%eax),%eax
c0101ea4:	8b 40 08             	mov    0x8(%eax),%eax
c0101ea7:	c1 e0 0c             	shl    $0xc,%eax
c0101eaa:	05 00 10 17 c0       	add    $0xc0171000,%eax
c0101eaf:	05 00 00 00 40       	add    $0x40000000,%eax
c0101eb4:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0101eb7:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0101eba:	0f 22 d8             	mov    %eax,%cr3
c0101ebd:	66 b8 23 00          	mov    $0x23,%ax
c0101ec1:	8e d8                	mov    %eax,%ds
c0101ec3:	8e c0                	mov    %eax,%es
c0101ec5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101ec8:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101ece:	83 c0 30             	add    $0x30,%eax
c0101ed1:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101ed6:	8b 40 0c             	mov    0xc(%eax),%eax
c0101ed9:	8b 40 04             	mov    0x4(%eax),%eax
c0101edc:	89 c4                	mov    %eax,%esp
c0101ede:	61                   	popa   
c0101edf:	83 c4 08             	add    $0x8,%esp
c0101ee2:	cf                   	iret   
c0101ee3:	e9 26 01 00 00       	jmp    c010200e <reschedule+0x212>
c0101ee8:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0101eed:	8b 15 c0 f0 10 c0    	mov    0xc010f0c0,%edx
c0101ef3:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c0101ef9:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c0101eff:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101f05:	83 c0 30             	add    $0x30,%eax
c0101f08:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101f0d:	89 50 0c             	mov    %edx,0xc(%eax)
c0101f10:	a1 c0 f0 10 c0       	mov    0xc010f0c0,%eax
c0101f15:	8b 15 b8 f0 10 c0    	mov    0xc010f0b8,%edx
c0101f1b:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c0101f21:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c0101f27:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101f2d:	83 c0 40             	add    $0x40,%eax
c0101f30:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101f35:	89 10                	mov    %edx,(%eax)
c0101f37:	a1 c4 f0 10 c0       	mov    0xc010f0c4,%eax
c0101f3c:	a3 bc f0 10 c0       	mov    %eax,0xc010f0bc
c0101f41:	c7 05 c0 f0 10 c0 00 	movl   $0x0,0xc010f0c0
c0101f48:	00 00 00 
c0101f4b:	c7 05 c4 f0 10 c0 00 	movl   $0x0,0xc010f0c4
c0101f52:	00 00 00 
c0101f55:	8b 15 00 d0 1a c0    	mov    0xc01ad000,%edx
c0101f5b:	a1 04 d0 1a c0       	mov    0xc01ad004,%eax
c0101f60:	01 d0                	add    %edx,%eax
c0101f62:	a3 00 d0 1a c0       	mov    %eax,0xc01ad000
c0101f67:	c7 05 04 d0 1a c0 00 	movl   $0x0,0xc01ad004
c0101f6e:	00 00 00 
c0101f71:	c7 45 f4 40 3f 13 c0 	movl   $0xc0133f40,-0xc(%ebp)
c0101f78:	eb 13                	jmp    c0101f8d <reschedule+0x191>
c0101f7a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101f7d:	c7 40 34 01 00 00 00 	movl   $0x1,0x34(%eax)
c0101f84:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101f87:	8b 40 3c             	mov    0x3c(%eax),%eax
c0101f8a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101f8d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0101f91:	75 e7                	jne    c0101f7a <reschedule+0x17e>
c0101f93:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101f96:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101f9c:	83 c0 30             	add    $0x30,%eax
c0101f9f:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101fa4:	8b 40 0c             	mov    0xc(%eax),%eax
c0101fa7:	83 c0 44             	add    $0x44,%eax
c0101faa:	05 f8 0f 00 00       	add    $0xff8,%eax
c0101faf:	83 ec 0c             	sub    $0xc,%esp
c0101fb2:	50                   	push   %eax
c0101fb3:	e8 6b e3 ff ff       	call   c0100323 <set_tss>
c0101fb8:	83 c4 10             	add    $0x10,%esp
c0101fbb:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101fbe:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101fc4:	83 c0 30             	add    $0x30,%eax
c0101fc7:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101fcc:	8b 40 0c             	mov    0xc(%eax),%eax
c0101fcf:	8b 40 08             	mov    0x8(%eax),%eax
c0101fd2:	c1 e0 0c             	shl    $0xc,%eax
c0101fd5:	05 00 10 17 c0       	add    $0xc0171000,%eax
c0101fda:	05 00 00 00 40       	add    $0x40000000,%eax
c0101fdf:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0101fe2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0101fe5:	0f 22 d8             	mov    %eax,%cr3
c0101fe8:	66 b8 23 00          	mov    $0x23,%ax
c0101fec:	8e d8                	mov    %eax,%ds
c0101fee:	8e c0                	mov    %eax,%es
c0101ff0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101ff3:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101ff9:	83 c0 30             	add    $0x30,%eax
c0101ffc:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102001:	8b 40 0c             	mov    0xc(%eax),%eax
c0102004:	8b 40 04             	mov    0x4(%eax),%eax
c0102007:	89 c4                	mov    %eax,%esp
c0102009:	61                   	popa   
c010200a:	83 c4 08             	add    $0x8,%esp
c010200d:	cf                   	iret   
c010200e:	c9                   	leave  
c010200f:	c3                   	ret    

c0102010 <time_treat>:
c0102010:	55                   	push   %ebp
c0102011:	89 e5                	mov    %esp,%ebp
c0102013:	53                   	push   %ebx
c0102014:	83 ec 14             	sub    $0x14,%esp
c0102017:	a1 00 d0 1a c0       	mov    0xc01ad000,%eax
c010201c:	83 f8 01             	cmp    $0x1,%eax
c010201f:	0f 84 d2 00 00 00    	je     c01020f7 <time_treat+0xe7>
c0102025:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c010202a:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0102030:	83 c0 30             	add    $0x30,%eax
c0102033:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102038:	8b 40 0c             	mov    0xc(%eax),%eax
c010203b:	8b 50 38             	mov    0x38(%eax),%edx
c010203e:	83 ea 01             	sub    $0x1,%edx
c0102041:	89 50 38             	mov    %edx,0x38(%eax)
c0102044:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102049:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c010204f:	83 c0 30             	add    $0x30,%eax
c0102052:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102057:	8b 40 0c             	mov    0xc(%eax),%eax
c010205a:	8b 40 38             	mov    0x38(%eax),%eax
c010205d:	85 c0                	test   %eax,%eax
c010205f:	0f 85 9a 00 00 00    	jne    c01020ff <time_treat+0xef>
c0102065:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c010206a:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0102070:	83 c0 30             	add    $0x30,%eax
c0102073:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102078:	8b 40 0c             	mov    0xc(%eax),%eax
c010207b:	8b 40 08             	mov    0x8(%eax),%eax
c010207e:	89 c1                	mov    %eax,%ecx
c0102080:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102085:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c010208b:	83 c0 30             	add    $0x30,%eax
c010208e:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102093:	8b 40 0c             	mov    0xc(%eax),%eax
c0102096:	8b 40 30             	mov    0x30(%eax),%eax
c0102099:	8b 15 b8 f0 10 c0    	mov    0xc010f0b8,%edx
c010209f:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c01020a5:	83 c2 30             	add    $0x30,%edx
c01020a8:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c01020ae:	8b 52 0c             	mov    0xc(%edx),%edx
c01020b1:	83 c2 0c             	add    $0xc,%edx
c01020b4:	83 ec 08             	sub    $0x8,%esp
c01020b7:	51                   	push   %ecx
c01020b8:	50                   	push   %eax
c01020b9:	68 c8 00 00 00       	push   $0xc8
c01020be:	52                   	push   %edx
c01020bf:	ff 75 08             	pushl  0x8(%ebp)
c01020c2:	6a 02                	push   $0x2
c01020c4:	e8 c9 f6 ff ff       	call   c0101792 <add_PCB>
c01020c9:	83 c4 20             	add    $0x20,%esp
c01020cc:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01020d1:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01020d7:	83 c0 30             	add    $0x30,%eax
c01020da:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01020df:	8b 40 0c             	mov    0xc(%eax),%eax
c01020e2:	8b 00                	mov    (%eax),%eax
c01020e4:	83 ec 0c             	sub    $0xc,%esp
c01020e7:	50                   	push   %eax
c01020e8:	e8 fd f9 ff ff       	call   c0101aea <delete_PCB>
c01020ed:	83 c4 10             	add    $0x10,%esp
c01020f0:	e8 07 fd ff ff       	call   c0101dfc <reschedule>
c01020f5:	eb 08                	jmp    c01020ff <time_treat+0xef>
c01020f7:	8b 45 08             	mov    0x8(%ebp),%eax
c01020fa:	a3 44 3f 13 c0       	mov    %eax,0xc0133f44
c01020ff:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102106:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c010210b:	85 c0                	test   %eax,%eax
c010210d:	0f 84 85 00 00 00    	je     c0102198 <time_treat+0x188>
c0102113:	a1 c8 f0 10 c0       	mov    0xc010f0c8,%eax
c0102118:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c010211e:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102123:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102126:	eb 6a                	jmp    c0102192 <time_treat+0x182>
c0102128:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010212b:	8b 40 38             	mov    0x38(%eax),%eax
c010212e:	8d 50 ff             	lea    -0x1(%eax),%edx
c0102131:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102134:	89 50 38             	mov    %edx,0x38(%eax)
c0102137:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010213a:	8b 40 38             	mov    0x38(%eax),%eax
c010213d:	85 c0                	test   %eax,%eax
c010213f:	75 48                	jne    c0102189 <time_treat+0x179>
c0102141:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0102148:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010214b:	8b 40 08             	mov    0x8(%eax),%eax
c010214e:	89 c3                	mov    %eax,%ebx
c0102150:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102153:	8b 50 30             	mov    0x30(%eax),%edx
c0102156:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102159:	8d 48 0c             	lea    0xc(%eax),%ecx
c010215c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010215f:	8b 40 04             	mov    0x4(%eax),%eax
c0102162:	83 ec 08             	sub    $0x8,%esp
c0102165:	53                   	push   %ebx
c0102166:	52                   	push   %edx
c0102167:	68 c8 00 00 00       	push   $0xc8
c010216c:	51                   	push   %ecx
c010216d:	50                   	push   %eax
c010216e:	6a 02                	push   $0x2
c0102170:	e8 1d f6 ff ff       	call   c0101792 <add_PCB>
c0102175:	83 c4 20             	add    $0x20,%esp
c0102178:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010217b:	8b 00                	mov    (%eax),%eax
c010217d:	83 ec 0c             	sub    $0xc,%esp
c0102180:	50                   	push   %eax
c0102181:	e8 64 f9 ff ff       	call   c0101aea <delete_PCB>
c0102186:	83 c4 10             	add    $0x10,%esp
c0102189:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010218c:	8b 40 3c             	mov    0x3c(%eax),%eax
c010218f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102192:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0102196:	75 90                	jne    c0102128 <time_treat+0x118>
c0102198:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c010219c:	74 0f                	je     c01021ad <time_treat+0x19d>
c010219e:	a1 00 d0 1a c0       	mov    0xc01ad000,%eax
c01021a3:	83 f8 01             	cmp    $0x1,%eax
c01021a6:	75 05                	jne    c01021ad <time_treat+0x19d>
c01021a8:	e8 4f fc ff ff       	call   c0101dfc <reschedule>
c01021ad:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c01021b0:	c9                   	leave  
c01021b1:	c3                   	ret    

c01021b2 <process_exit>:
c01021b2:	55                   	push   %ebp
c01021b3:	89 e5                	mov    %esp,%ebp
c01021b5:	83 ec 08             	sub    $0x8,%esp
c01021b8:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01021bd:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01021c3:	83 c0 30             	add    $0x30,%eax
c01021c6:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01021cb:	8b 40 0c             	mov    0xc(%eax),%eax
c01021ce:	8b 40 08             	mov    0x8(%eax),%eax
c01021d1:	83 ec 0c             	sub    $0xc,%esp
c01021d4:	50                   	push   %eax
c01021d5:	e8 10 f9 ff ff       	call   c0101aea <delete_PCB>
c01021da:	83 c4 10             	add    $0x10,%esp
c01021dd:	e8 1a fc ff ff       	call   c0101dfc <reschedule>
c01021e2:	c9                   	leave  
c01021e3:	c3                   	ret    

c01021e4 <load_PCB>:
c01021e4:	55                   	push   %ebp
c01021e5:	89 e5                	mov    %esp,%ebp
c01021e7:	83 ec 18             	sub    $0x18,%esp
c01021ea:	e8 df f3 ff ff       	call   c01015ce <get_free_pid>
c01021ef:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01021f2:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c01021f7:	8b 55 f0             	mov    -0x10(%ebp),%edx
c01021fa:	c1 e2 0c             	shl    $0xc,%edx
c01021fd:	81 c2 00 10 17 c0    	add    $0xc0171000,%edx
c0102203:	83 ec 04             	sub    $0x4,%esp
c0102206:	68 00 10 00 00       	push   $0x1000
c010220b:	50                   	push   %eax
c010220c:	52                   	push   %edx
c010220d:	e8 59 ef ff ff       	call   c010116b <my_memcpy>
c0102212:	83 c4 10             	add    $0x10,%esp
c0102215:	c7 45 ec 00 04 00 00 	movl   $0x400,-0x14(%ebp)
c010221c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102223:	eb 1d                	jmp    c0102242 <load_PCB+0x5e>
c0102225:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102228:	0f b7 04 c5 44 f0 1a 	movzwl -0x3fe50fbc(,%eax,8),%eax
c010222f:	c0 
c0102230:	8d 50 01             	lea    0x1(%eax),%edx
c0102233:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102236:	66 89 14 c5 44 f0 1a 	mov    %dx,-0x3fe50fbc(,%eax,8)
c010223d:	c0 
c010223e:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102242:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102245:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c0102248:	7c db                	jl     c0102225 <load_PCB+0x41>
c010224a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010224d:	c1 e0 0c             	shl    $0xc,%eax
c0102250:	05 00 10 17 c0       	add    $0xc0171000,%eax
c0102255:	83 ec 08             	sub    $0x8,%esp
c0102258:	50                   	push   %eax
c0102259:	ff 75 08             	pushl  0x8(%ebp)
c010225c:	e8 d8 f0 ff ff       	call   c0101339 <load>
c0102261:	83 c4 10             	add    $0x10,%esp
c0102264:	89 c1                	mov    %eax,%ecx
c0102266:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102269:	89 c2                	mov    %eax,%edx
c010226b:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102272:	89 c2                	mov    %eax,%edx
c0102274:	89 d0                	mov    %edx,%eax
c0102276:	c1 e0 04             	shl    $0x4,%eax
c0102279:	29 d0                	sub    %edx,%eax
c010227b:	83 c0 20             	add    $0x20,%eax
c010227e:	05 00 31 13 c0       	add    $0xc0133100,%eax
c0102283:	89 48 08             	mov    %ecx,0x8(%eax)
c0102286:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102289:	89 c2                	mov    %eax,%edx
c010228b:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102292:	89 c2                	mov    %eax,%edx
c0102294:	89 d0                	mov    %edx,%eax
c0102296:	c1 e0 04             	shl    $0x4,%eax
c0102299:	29 d0                	sub    %edx,%eax
c010229b:	83 c0 20             	add    $0x20,%eax
c010229e:	05 00 31 13 c0       	add    $0xc0133100,%eax
c01022a3:	c7 40 0c 1b 00 00 00 	movl   $0x1b,0xc(%eax)
c01022aa:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01022ad:	89 c2                	mov    %eax,%edx
c01022af:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01022b6:	89 c2                	mov    %eax,%edx
c01022b8:	89 d0                	mov    %edx,%eax
c01022ba:	c1 e0 04             	shl    $0x4,%eax
c01022bd:	29 d0                	sub    %edx,%eax
c01022bf:	83 c0 30             	add    $0x30,%eax
c01022c2:	05 00 31 13 c0       	add    $0xc0133100,%eax
c01022c7:	c7 00 02 02 00 00    	movl   $0x202,(%eax)
c01022cd:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01022d0:	89 c2                	mov    %eax,%edx
c01022d2:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01022d9:	89 c2                	mov    %eax,%edx
c01022db:	89 d0                	mov    %edx,%eax
c01022dd:	c1 e0 04             	shl    $0x4,%eax
c01022e0:	29 d0                	sub    %edx,%eax
c01022e2:	83 c0 30             	add    $0x30,%eax
c01022e5:	05 00 31 13 c0       	add    $0xc0133100,%eax
c01022ea:	c7 40 04 f0 ff 60 00 	movl   $0x60fff0,0x4(%eax)
c01022f1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01022f4:	89 c2                	mov    %eax,%edx
c01022f6:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01022fd:	89 c2                	mov    %eax,%edx
c01022ff:	89 d0                	mov    %edx,%eax
c0102301:	c1 e0 04             	shl    $0x4,%eax
c0102304:	29 d0                	sub    %edx,%eax
c0102306:	83 c0 30             	add    $0x30,%eax
c0102309:	05 00 31 13 c0       	add    $0xc0133100,%eax
c010230e:	c7 40 08 23 00 00 00 	movl   $0x23,0x8(%eax)
c0102315:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102318:	89 c2                	mov    %eax,%edx
c010231a:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102321:	89 c2                	mov    %eax,%edx
c0102323:	89 d0                	mov    %edx,%eax
c0102325:	c1 e0 04             	shl    $0x4,%eax
c0102328:	29 d0                	sub    %edx,%eax
c010232a:	05 00 31 13 c0       	add    $0xc0133100,%eax
c010232f:	83 ec 08             	sub    $0x8,%esp
c0102332:	ff 75 f0             	pushl  -0x10(%ebp)
c0102335:	6a 00                	push   $0x0
c0102337:	6a 64                	push   $0x64
c0102339:	ff 75 0c             	pushl  0xc(%ebp)
c010233c:	50                   	push   %eax
c010233d:	6a 01                	push   $0x1
c010233f:	e8 4e f4 ff ff       	call   c0101792 <add_PCB>
c0102344:	83 c4 20             	add    $0x20,%esp
c0102347:	c9                   	leave  
c0102348:	c3                   	ret    

c0102349 <my_sleep>:
c0102349:	55                   	push   %ebp
c010234a:	89 e5                	mov    %esp,%ebp
c010234c:	83 ec 08             	sub    $0x8,%esp
c010234f:	a1 00 d0 1a c0       	mov    0xc01ad000,%eax
c0102354:	83 f8 01             	cmp    $0x1,%eax
c0102357:	75 15                	jne    c010236e <my_sleep+0x25>
c0102359:	83 ec 0c             	sub    $0xc,%esp
c010235c:	68 91 2c 10 c0       	push   $0xc0102c91
c0102361:	e8 e0 ed ff ff       	call   c0101146 <printk>
c0102366:	83 c4 10             	add    $0x10,%esp
c0102369:	e9 8e 00 00 00       	jmp    c01023fc <my_sleep+0xb3>
c010236e:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102373:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0102379:	83 c0 30             	add    $0x30,%eax
c010237c:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102381:	8b 40 0c             	mov    0xc(%eax),%eax
c0102384:	8b 40 08             	mov    0x8(%eax),%eax
c0102387:	89 c1                	mov    %eax,%ecx
c0102389:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c010238e:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0102394:	83 c0 30             	add    $0x30,%eax
c0102397:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010239c:	8b 40 0c             	mov    0xc(%eax),%eax
c010239f:	8b 40 30             	mov    0x30(%eax),%eax
c01023a2:	8b 15 b8 f0 10 c0    	mov    0xc010f0b8,%edx
c01023a8:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c01023ae:	83 c2 30             	add    $0x30,%edx
c01023b1:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c01023b7:	8b 52 0c             	mov    0xc(%edx),%edx
c01023ba:	83 c2 0c             	add    $0xc,%edx
c01023bd:	83 ec 08             	sub    $0x8,%esp
c01023c0:	51                   	push   %ecx
c01023c1:	50                   	push   %eax
c01023c2:	ff 75 08             	pushl  0x8(%ebp)
c01023c5:	52                   	push   %edx
c01023c6:	ff 75 0c             	pushl  0xc(%ebp)
c01023c9:	6a 03                	push   $0x3
c01023cb:	e8 c2 f3 ff ff       	call   c0101792 <add_PCB>
c01023d0:	83 c4 20             	add    $0x20,%esp
c01023d3:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01023d8:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01023de:	83 c0 30             	add    $0x30,%eax
c01023e1:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01023e6:	8b 40 0c             	mov    0xc(%eax),%eax
c01023e9:	8b 00                	mov    (%eax),%eax
c01023eb:	83 ec 0c             	sub    $0xc,%esp
c01023ee:	50                   	push   %eax
c01023ef:	e8 f6 f6 ff ff       	call   c0101aea <delete_PCB>
c01023f4:	83 c4 10             	add    $0x10,%esp
c01023f7:	e8 00 fa ff ff       	call   c0101dfc <reschedule>
c01023fc:	c9                   	leave  
c01023fd:	c3                   	ret    

c01023fe <_paddr>:
c01023fe:	55                   	push   %ebp
c01023ff:	89 e5                	mov    %esp,%ebp
c0102401:	83 ec 08             	sub    $0x8,%esp
c0102404:	8b 45 10             	mov    0x10(%ebp),%eax
c0102407:	3d ff ff ff bf       	cmp    $0xbfffffff,%eax
c010240c:	77 16                	ja     c0102424 <_paddr+0x26>
c010240e:	ff 75 10             	pushl  0x10(%ebp)
c0102411:	68 a8 2c 10 c0       	push   $0xc0102ca8
c0102416:	ff 75 0c             	pushl  0xc(%ebp)
c0102419:	ff 75 08             	pushl  0x8(%ebp)
c010241c:	e8 25 ed ff ff       	call   c0101146 <printk>
c0102421:	83 c4 10             	add    $0x10,%esp
c0102424:	8b 45 10             	mov    0x10(%ebp),%eax
c0102427:	05 00 00 00 40       	add    $0x40000000,%eax
c010242c:	c9                   	leave  
c010242d:	c3                   	ret    

c010242e <_kaddr>:
c010242e:	55                   	push   %ebp
c010242f:	89 e5                	mov    %esp,%ebp
c0102431:	83 ec 08             	sub    $0x8,%esp
c0102434:	8b 45 10             	mov    0x10(%ebp),%eax
c0102437:	c1 e8 0c             	shr    $0xc,%eax
c010243a:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c010243f:	76 13                	jbe    c0102454 <_kaddr+0x26>
c0102441:	83 ec 08             	sub    $0x8,%esp
c0102444:	ff 75 10             	pushl  0x10(%ebp)
c0102447:	68 cc 2c 10 c0       	push   $0xc0102ccc
c010244c:	e8 f5 ec ff ff       	call   c0101146 <printk>
c0102451:	83 c4 10             	add    $0x10,%esp
c0102454:	8b 45 10             	mov    0x10(%ebp),%eax
c0102457:	2d 00 00 00 40       	sub    $0x40000000,%eax
c010245c:	c9                   	leave  
c010245d:	c3                   	ret    

c010245e <page2pa>:
c010245e:	55                   	push   %ebp
c010245f:	89 e5                	mov    %esp,%ebp
c0102461:	8b 45 08             	mov    0x8(%ebp),%eax
c0102464:	ba 40 f0 1a c0       	mov    $0xc01af040,%edx
c0102469:	29 d0                	sub    %edx,%eax
c010246b:	c1 f8 03             	sar    $0x3,%eax
c010246e:	c1 e0 0c             	shl    $0xc,%eax
c0102471:	5d                   	pop    %ebp
c0102472:	c3                   	ret    

c0102473 <pa2page>:
c0102473:	55                   	push   %ebp
c0102474:	89 e5                	mov    %esp,%ebp
c0102476:	83 ec 08             	sub    $0x8,%esp
c0102479:	8b 45 08             	mov    0x8(%ebp),%eax
c010247c:	c1 e8 0c             	shr    $0xc,%eax
c010247f:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0102484:	76 10                	jbe    c0102496 <pa2page+0x23>
c0102486:	83 ec 0c             	sub    $0xc,%esp
c0102489:	68 f0 2c 10 c0       	push   $0xc0102cf0
c010248e:	e8 b3 ec ff ff       	call   c0101146 <printk>
c0102493:	83 c4 10             	add    $0x10,%esp
c0102496:	8b 45 08             	mov    0x8(%ebp),%eax
c0102499:	c1 e8 0c             	shr    $0xc,%eax
c010249c:	c1 e0 03             	shl    $0x3,%eax
c010249f:	05 40 f0 1a c0       	add    $0xc01af040,%eax
c01024a4:	c9                   	leave  
c01024a5:	c3                   	ret    

c01024a6 <page2kva>:
c01024a6:	55                   	push   %ebp
c01024a7:	89 e5                	mov    %esp,%ebp
c01024a9:	83 ec 08             	sub    $0x8,%esp
c01024ac:	ff 75 08             	pushl  0x8(%ebp)
c01024af:	e8 aa ff ff ff       	call   c010245e <page2pa>
c01024b4:	83 c4 04             	add    $0x4,%esp
c01024b7:	83 ec 04             	sub    $0x4,%esp
c01024ba:	50                   	push   %eax
c01024bb:	6a 52                	push   $0x52
c01024bd:	68 0f 2d 10 c0       	push   $0xc0102d0f
c01024c2:	e8 67 ff ff ff       	call   c010242e <_kaddr>
c01024c7:	83 c4 10             	add    $0x10,%esp
c01024ca:	c9                   	leave  
c01024cb:	c3                   	ret    

c01024cc <mm_alloc>:
c01024cc:	55                   	push   %ebp
c01024cd:	89 e5                	mov    %esp,%ebp
c01024cf:	83 ec 28             	sub    $0x28,%esp
c01024d2:	8b 45 0c             	mov    0xc(%ebp),%eax
c01024d5:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01024d8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024db:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01024e0:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01024e3:	c7 45 e8 00 10 00 00 	movl   $0x1000,-0x18(%ebp)
c01024ea:	8b 55 10             	mov    0x10(%ebp),%edx
c01024ed:	8b 45 0c             	mov    0xc(%ebp),%eax
c01024f0:	01 c2                	add    %eax,%edx
c01024f2:	8b 45 e8             	mov    -0x18(%ebp),%eax
c01024f5:	01 d0                	add    %edx,%eax
c01024f7:	83 e8 01             	sub    $0x1,%eax
c01024fa:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01024fd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0102500:	ba 00 00 00 00       	mov    $0x0,%edx
c0102505:	f7 75 e8             	divl   -0x18(%ebp)
c0102508:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c010250b:	29 d0                	sub    %edx,%eax
c010250d:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0102510:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102513:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102516:	eb 2b                	jmp    c0102543 <mm_alloc+0x77>
c0102518:	83 ec 0c             	sub    $0xc,%esp
c010251b:	6a 00                	push   $0x0
c010251d:	e8 9c 01 00 00       	call   c01026be <page_alloc>
c0102522:	83 c4 10             	add    $0x10,%esp
c0102525:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0102528:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010252b:	6a 07                	push   $0x7
c010252d:	50                   	push   %eax
c010252e:	ff 75 dc             	pushl  -0x24(%ebp)
c0102531:	ff 75 08             	pushl  0x8(%ebp)
c0102534:	e8 84 03 00 00       	call   c01028bd <page_insert>
c0102539:	83 c4 10             	add    $0x10,%esp
c010253c:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
c0102543:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102546:	3b 45 e0             	cmp    -0x20(%ebp),%eax
c0102549:	72 cd                	jb     c0102518 <mm_alloc+0x4c>
c010254b:	c9                   	leave  
c010254c:	c3                   	ret    

c010254d <init_kern_pgdir>:
c010254d:	55                   	push   %ebp
c010254e:	89 e5                	mov    %esp,%ebp
c0102550:	53                   	push   %ebx
c0102551:	83 ec 24             	sub    $0x24,%esp
c0102554:	c7 45 e8 00 10 11 c0 	movl   $0xc0111000,-0x18(%ebp)
c010255b:	c7 45 f0 00 20 11 c0 	movl   $0xc0112000,-0x10(%ebp)
c0102562:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102569:	eb 3a                	jmp    c01025a5 <init_kern_pgdir+0x58>
c010256b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010256e:	05 00 03 00 00       	add    $0x300,%eax
c0102573:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010257a:	8b 45 e8             	mov    -0x18(%ebp),%eax
c010257d:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0102580:	83 ec 04             	sub    $0x4,%esp
c0102583:	ff 75 f0             	pushl  -0x10(%ebp)
c0102586:	6a 42                	push   $0x42
c0102588:	68 1e 2d 10 c0       	push   $0xc0102d1e
c010258d:	e8 6c fe ff ff       	call   c01023fe <_paddr>
c0102592:	83 c4 10             	add    $0x10,%esp
c0102595:	83 c8 03             	or     $0x3,%eax
c0102598:	89 03                	mov    %eax,(%ebx)
c010259a:	81 45 f0 00 10 00 00 	addl   $0x1000,-0x10(%ebp)
c01025a1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01025a5:	83 7d f4 1f          	cmpl   $0x1f,-0xc(%ebp)
c01025a9:	7e c0                	jle    c010256b <init_kern_pgdir+0x1e>
c01025ab:	c7 45 ec 00 f0 ff 07 	movl   $0x7fff000,-0x14(%ebp)
c01025b2:	83 6d f0 04          	subl   $0x4,-0x10(%ebp)
c01025b6:	eb 18                	jmp    c01025d0 <init_kern_pgdir+0x83>
c01025b8:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01025bb:	83 c8 07             	or     $0x7,%eax
c01025be:	89 c2                	mov    %eax,%edx
c01025c0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01025c3:	89 10                	mov    %edx,(%eax)
c01025c5:	83 6d f0 04          	subl   $0x4,-0x10(%ebp)
c01025c9:	81 6d ec 00 10 00 00 	subl   $0x1000,-0x14(%ebp)
c01025d0:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c01025d4:	79 e2                	jns    c01025b8 <init_kern_pgdir+0x6b>
c01025d6:	8b 45 e8             	mov    -0x18(%ebp),%eax
c01025d9:	a3 04 f0 1a c0       	mov    %eax,0xc01af004
c01025de:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c01025e3:	83 ec 04             	sub    $0x4,%esp
c01025e6:	50                   	push   %eax
c01025e7:	6a 4f                	push   $0x4f
c01025e9:	68 1e 2d 10 c0       	push   $0xc0102d1e
c01025ee:	e8 0b fe ff ff       	call   c01023fe <_paddr>
c01025f3:	83 c4 10             	add    $0x10,%esp
c01025f6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01025f9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01025fc:	0f 22 d8             	mov    %eax,%cr3
c01025ff:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102602:	c9                   	leave  
c0102603:	c3                   	ret    

c0102604 <page_init>:
c0102604:	55                   	push   %ebp
c0102605:	89 e5                	mov    %esp,%ebp
c0102607:	83 ec 18             	sub    $0x18,%esp
c010260a:	e8 3e ff ff ff       	call   c010254d <init_kern_pgdir>
c010260f:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
c0102616:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c010261d:	eb 11                	jmp    c0102630 <page_init+0x2c>
c010261f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102622:	66 c7 04 c5 44 f0 1a 	movw   $0x1,-0x3fe50fbc(,%eax,8)
c0102629:	c0 01 00 
c010262c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102630:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102633:	3b 45 f4             	cmp    -0xc(%ebp),%eax
c0102636:	77 e7                	ja     c010261f <page_init+0x1b>
c0102638:	c7 45 f4 ff 7f 00 00 	movl   $0x7fff,-0xc(%ebp)
c010263f:	eb 31                	jmp    c0102672 <page_init+0x6e>
c0102641:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102644:	66 c7 04 c5 44 f0 1a 	movw   $0x0,-0x3fe50fbc(,%eax,8)
c010264b:	c0 00 00 
c010264e:	8b 15 00 00 11 c0    	mov    0xc0110000,%edx
c0102654:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102657:	89 14 c5 40 f0 1a c0 	mov    %edx,-0x3fe50fc0(,%eax,8)
c010265e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102661:	c1 e0 03             	shl    $0x3,%eax
c0102664:	05 40 f0 1a c0       	add    $0xc01af040,%eax
c0102669:	a3 00 00 11 c0       	mov    %eax,0xc0110000
c010266e:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
c0102672:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102675:	3b 45 f4             	cmp    -0xc(%ebp),%eax
c0102678:	76 c7                	jbe    c0102641 <page_init+0x3d>
c010267a:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
c0102681:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102684:	05 ff f9 00 00       	add    $0xf9ff,%eax
c0102689:	89 45 e8             	mov    %eax,-0x18(%ebp)
c010268c:	8b 45 e8             	mov    -0x18(%ebp),%eax
c010268f:	ba 00 00 00 00       	mov    $0x0,%edx
c0102694:	f7 75 ec             	divl   -0x14(%ebp)
c0102697:	8b 45 e8             	mov    -0x18(%ebp),%eax
c010269a:	29 d0                	sub    %edx,%eax
c010269c:	89 c2                	mov    %eax,%edx
c010269e:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c01026a3:	83 ec 0c             	sub    $0xc,%esp
c01026a6:	6a 03                	push   $0x3
c01026a8:	68 00 00 0a 00       	push   $0xa0000
c01026ad:	52                   	push   %edx
c01026ae:	68 00 00 0a 00       	push   $0xa0000
c01026b3:	50                   	push   %eax
c01026b4:	e8 a1 01 00 00       	call   c010285a <boot_map_region>
c01026b9:	83 c4 20             	add    $0x20,%esp
c01026bc:	c9                   	leave  
c01026bd:	c3                   	ret    

c01026be <page_alloc>:
c01026be:	55                   	push   %ebp
c01026bf:	89 e5                	mov    %esp,%ebp
c01026c1:	83 ec 18             	sub    $0x18,%esp
c01026c4:	a1 00 00 11 c0       	mov    0xc0110000,%eax
c01026c9:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01026cc:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c01026d0:	75 07                	jne    c01026d9 <page_alloc+0x1b>
c01026d2:	b8 00 00 00 00       	mov    $0x0,%eax
c01026d7:	eb 43                	jmp    c010271c <page_alloc+0x5e>
c01026d9:	8b 45 08             	mov    0x8(%ebp),%eax
c01026dc:	83 e0 01             	and    $0x1,%eax
c01026df:	85 c0                	test   %eax,%eax
c01026e1:	74 21                	je     c0102704 <page_alloc+0x46>
c01026e3:	83 ec 0c             	sub    $0xc,%esp
c01026e6:	ff 75 f4             	pushl  -0xc(%ebp)
c01026e9:	e8 b8 fd ff ff       	call   c01024a6 <page2kva>
c01026ee:	83 c4 10             	add    $0x10,%esp
c01026f1:	83 ec 04             	sub    $0x4,%esp
c01026f4:	68 00 10 00 00       	push   $0x1000
c01026f9:	6a 00                	push   $0x0
c01026fb:	50                   	push   %eax
c01026fc:	e8 87 ea ff ff       	call   c0101188 <my_memset>
c0102701:	83 c4 10             	add    $0x10,%esp
c0102704:	a1 00 00 11 c0       	mov    0xc0110000,%eax
c0102709:	8b 00                	mov    (%eax),%eax
c010270b:	a3 00 00 11 c0       	mov    %eax,0xc0110000
c0102710:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102713:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0102719:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010271c:	c9                   	leave  
c010271d:	c3                   	ret    

c010271e <page_free>:
c010271e:	55                   	push   %ebp
c010271f:	89 e5                	mov    %esp,%ebp
c0102721:	8b 15 00 00 11 c0    	mov    0xc0110000,%edx
c0102727:	8b 45 08             	mov    0x8(%ebp),%eax
c010272a:	89 10                	mov    %edx,(%eax)
c010272c:	8b 45 08             	mov    0x8(%ebp),%eax
c010272f:	a3 00 00 11 c0       	mov    %eax,0xc0110000
c0102734:	5d                   	pop    %ebp
c0102735:	c3                   	ret    

c0102736 <page_decref>:
c0102736:	55                   	push   %ebp
c0102737:	89 e5                	mov    %esp,%ebp
c0102739:	8b 45 08             	mov    0x8(%ebp),%eax
c010273c:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102740:	8d 50 ff             	lea    -0x1(%eax),%edx
c0102743:	8b 45 08             	mov    0x8(%ebp),%eax
c0102746:	66 89 50 04          	mov    %dx,0x4(%eax)
c010274a:	8b 45 08             	mov    0x8(%ebp),%eax
c010274d:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102751:	66 85 c0             	test   %ax,%ax
c0102754:	75 0b                	jne    c0102761 <page_decref+0x2b>
c0102756:	ff 75 08             	pushl  0x8(%ebp)
c0102759:	e8 c0 ff ff ff       	call   c010271e <page_free>
c010275e:	83 c4 04             	add    $0x4,%esp
c0102761:	c9                   	leave  
c0102762:	c3                   	ret    

c0102763 <pgdir_walk>:
c0102763:	55                   	push   %ebp
c0102764:	89 e5                	mov    %esp,%ebp
c0102766:	53                   	push   %ebx
c0102767:	83 ec 14             	sub    $0x14,%esp
c010276a:	8b 45 0c             	mov    0xc(%ebp),%eax
c010276d:	c1 e8 16             	shr    $0x16,%eax
c0102770:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102773:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102776:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010277d:	8b 45 08             	mov    0x8(%ebp),%eax
c0102780:	01 d0                	add    %edx,%eax
c0102782:	8b 00                	mov    (%eax),%eax
c0102784:	83 e0 01             	and    $0x1,%eax
c0102787:	85 c0                	test   %eax,%eax
c0102789:	74 31                	je     c01027bc <pgdir_walk+0x59>
c010278b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010278e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102795:	8b 45 08             	mov    0x8(%ebp),%eax
c0102798:	01 d0                	add    %edx,%eax
c010279a:	8b 00                	mov    (%eax),%eax
c010279c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01027a1:	83 ec 04             	sub    $0x4,%esp
c01027a4:	50                   	push   %eax
c01027a5:	68 c8 00 00 00       	push   $0xc8
c01027aa:	68 1e 2d 10 c0       	push   $0xc0102d1e
c01027af:	e8 7a fc ff ff       	call   c010242e <_kaddr>
c01027b4:	83 c4 10             	add    $0x10,%esp
c01027b7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01027ba:	eb 7c                	jmp    c0102838 <pgdir_walk+0xd5>
c01027bc:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c01027c0:	75 0a                	jne    c01027cc <pgdir_walk+0x69>
c01027c2:	b8 00 00 00 00       	mov    $0x0,%eax
c01027c7:	e9 89 00 00 00       	jmp    c0102855 <pgdir_walk+0xf2>
c01027cc:	83 ec 0c             	sub    $0xc,%esp
c01027cf:	6a 01                	push   $0x1
c01027d1:	e8 e8 fe ff ff       	call   c01026be <page_alloc>
c01027d6:	83 c4 10             	add    $0x10,%esp
c01027d9:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01027dc:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c01027e0:	75 07                	jne    c01027e9 <pgdir_walk+0x86>
c01027e2:	b8 00 00 00 00       	mov    $0x0,%eax
c01027e7:	eb 6c                	jmp    c0102855 <pgdir_walk+0xf2>
c01027e9:	83 ec 0c             	sub    $0xc,%esp
c01027ec:	ff 75 ec             	pushl  -0x14(%ebp)
c01027ef:	e8 b2 fc ff ff       	call   c01024a6 <page2kva>
c01027f4:	83 c4 10             	add    $0x10,%esp
c01027f7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01027fa:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01027fd:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102801:	8d 50 01             	lea    0x1(%eax),%edx
c0102804:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102807:	66 89 50 04          	mov    %dx,0x4(%eax)
c010280b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010280e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102815:	8b 45 08             	mov    0x8(%ebp),%eax
c0102818:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c010281b:	83 ec 04             	sub    $0x4,%esp
c010281e:	ff 75 f4             	pushl  -0xc(%ebp)
c0102821:	68 d3 00 00 00       	push   $0xd3
c0102826:	68 1e 2d 10 c0       	push   $0xc0102d1e
c010282b:	e8 ce fb ff ff       	call   c01023fe <_paddr>
c0102830:	83 c4 10             	add    $0x10,%esp
c0102833:	83 c8 07             	or     $0x7,%eax
c0102836:	89 03                	mov    %eax,(%ebx)
c0102838:	8b 45 0c             	mov    0xc(%ebp),%eax
c010283b:	c1 e8 0c             	shr    $0xc,%eax
c010283e:	25 ff 03 00 00       	and    $0x3ff,%eax
c0102843:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0102846:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102849:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102850:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102853:	01 d0                	add    %edx,%eax
c0102855:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102858:	c9                   	leave  
c0102859:	c3                   	ret    

c010285a <boot_map_region>:
c010285a:	55                   	push   %ebp
c010285b:	89 e5                	mov    %esp,%ebp
c010285d:	83 ec 18             	sub    $0x18,%esp
c0102860:	8b 45 10             	mov    0x10(%ebp),%eax
c0102863:	c1 e8 0c             	shr    $0xc,%eax
c0102866:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102869:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102870:	eb 41                	jmp    c01028b3 <boot_map_region+0x59>
c0102872:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102875:	83 ec 04             	sub    $0x4,%esp
c0102878:	6a 01                	push   $0x1
c010287a:	50                   	push   %eax
c010287b:	ff 75 08             	pushl  0x8(%ebp)
c010287e:	e8 e0 fe ff ff       	call   c0102763 <pgdir_walk>
c0102883:	83 c4 10             	add    $0x10,%esp
c0102886:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102889:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c010288d:	75 02                	jne    c0102891 <boot_map_region+0x37>
c010288f:	eb 2a                	jmp    c01028bb <boot_map_region+0x61>
c0102891:	8b 45 18             	mov    0x18(%ebp),%eax
c0102894:	0b 45 14             	or     0x14(%ebp),%eax
c0102897:	83 c8 01             	or     $0x1,%eax
c010289a:	89 c2                	mov    %eax,%edx
c010289c:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010289f:	89 10                	mov    %edx,(%eax)
c01028a1:	81 45 0c 00 10 00 00 	addl   $0x1000,0xc(%ebp)
c01028a8:	81 45 14 00 10 00 00 	addl   $0x1000,0x14(%ebp)
c01028af:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01028b3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01028b6:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c01028b9:	7c b7                	jl     c0102872 <boot_map_region+0x18>
c01028bb:	c9                   	leave  
c01028bc:	c3                   	ret    

c01028bd <page_insert>:
c01028bd:	55                   	push   %ebp
c01028be:	89 e5                	mov    %esp,%ebp
c01028c0:	83 ec 18             	sub    $0x18,%esp
c01028c3:	83 ec 04             	sub    $0x4,%esp
c01028c6:	6a 01                	push   $0x1
c01028c8:	ff 75 10             	pushl  0x10(%ebp)
c01028cb:	ff 75 08             	pushl  0x8(%ebp)
c01028ce:	e8 90 fe ff ff       	call   c0102763 <pgdir_walk>
c01028d3:	83 c4 10             	add    $0x10,%esp
c01028d6:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01028d9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c01028dd:	75 07                	jne    c01028e6 <page_insert+0x29>
c01028df:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c01028e4:	eb 75                	jmp    c010295b <page_insert+0x9e>
c01028e6:	83 ec 0c             	sub    $0xc,%esp
c01028e9:	ff 75 0c             	pushl  0xc(%ebp)
c01028ec:	e8 6d fb ff ff       	call   c010245e <page2pa>
c01028f1:	83 c4 10             	add    $0x10,%esp
c01028f4:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01028f7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01028fa:	8b 00                	mov    (%eax),%eax
c01028fc:	83 e0 01             	and    $0x1,%eax
c01028ff:	85 c0                	test   %eax,%eax
c0102901:	74 32                	je     c0102935 <page_insert+0x78>
c0102903:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102906:	8b 00                	mov    (%eax),%eax
c0102908:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c010290d:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0102910:	75 12                	jne    c0102924 <page_insert+0x67>
c0102912:	8b 45 14             	mov    0x14(%ebp),%eax
c0102915:	0b 45 f0             	or     -0x10(%ebp),%eax
c0102918:	83 c8 01             	or     $0x1,%eax
c010291b:	89 c2                	mov    %eax,%edx
c010291d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102920:	89 10                	mov    %edx,(%eax)
c0102922:	eb 11                	jmp    c0102935 <page_insert+0x78>
c0102924:	83 ec 08             	sub    $0x8,%esp
c0102927:	ff 75 10             	pushl  0x10(%ebp)
c010292a:	ff 75 08             	pushl  0x8(%ebp)
c010292d:	e8 7a 00 00 00       	call   c01029ac <page_remove>
c0102932:	83 c4 10             	add    $0x10,%esp
c0102935:	8b 45 14             	mov    0x14(%ebp),%eax
c0102938:	0b 45 f0             	or     -0x10(%ebp),%eax
c010293b:	83 c8 01             	or     $0x1,%eax
c010293e:	89 c2                	mov    %eax,%edx
c0102940:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102943:	89 10                	mov    %edx,(%eax)
c0102945:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102948:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c010294c:	8d 50 01             	lea    0x1(%eax),%edx
c010294f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102952:	66 89 50 04          	mov    %dx,0x4(%eax)
c0102956:	b8 00 00 00 00       	mov    $0x0,%eax
c010295b:	c9                   	leave  
c010295c:	c3                   	ret    

c010295d <page_lookup>:
c010295d:	55                   	push   %ebp
c010295e:	89 e5                	mov    %esp,%ebp
c0102960:	83 ec 18             	sub    $0x18,%esp
c0102963:	83 ec 04             	sub    $0x4,%esp
c0102966:	6a 00                	push   $0x0
c0102968:	ff 75 0c             	pushl  0xc(%ebp)
c010296b:	ff 75 08             	pushl  0x8(%ebp)
c010296e:	e8 f0 fd ff ff       	call   c0102763 <pgdir_walk>
c0102973:	83 c4 10             	add    $0x10,%esp
c0102976:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102979:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c010297d:	75 07                	jne    c0102986 <page_lookup+0x29>
c010297f:	b8 00 00 00 00       	mov    $0x0,%eax
c0102984:	eb 24                	jmp    c01029aa <page_lookup+0x4d>
c0102986:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c010298a:	74 08                	je     c0102994 <page_lookup+0x37>
c010298c:	8b 45 10             	mov    0x10(%ebp),%eax
c010298f:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102992:	89 10                	mov    %edx,(%eax)
c0102994:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102997:	8b 00                	mov    (%eax),%eax
c0102999:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c010299e:	83 ec 0c             	sub    $0xc,%esp
c01029a1:	50                   	push   %eax
c01029a2:	e8 cc fa ff ff       	call   c0102473 <pa2page>
c01029a7:	83 c4 10             	add    $0x10,%esp
c01029aa:	c9                   	leave  
c01029ab:	c3                   	ret    

c01029ac <page_remove>:
c01029ac:	55                   	push   %ebp
c01029ad:	89 e5                	mov    %esp,%ebp
c01029af:	83 ec 18             	sub    $0x18,%esp
c01029b2:	8d 45 ec             	lea    -0x14(%ebp),%eax
c01029b5:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01029b8:	83 ec 04             	sub    $0x4,%esp
c01029bb:	ff 75 f4             	pushl  -0xc(%ebp)
c01029be:	ff 75 0c             	pushl  0xc(%ebp)
c01029c1:	ff 75 08             	pushl  0x8(%ebp)
c01029c4:	e8 94 ff ff ff       	call   c010295d <page_lookup>
c01029c9:	83 c4 10             	add    $0x10,%esp
c01029cc:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01029cf:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c01029d3:	74 2a                	je     c01029ff <page_remove+0x53>
c01029d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01029d8:	8b 00                	mov    (%eax),%eax
c01029da:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c01029e0:	83 ec 0c             	sub    $0xc,%esp
c01029e3:	ff 75 f0             	pushl  -0x10(%ebp)
c01029e6:	e8 4b fd ff ff       	call   c0102736 <page_decref>
c01029eb:	83 c4 10             	add    $0x10,%esp
c01029ee:	83 ec 08             	sub    $0x8,%esp
c01029f1:	ff 75 0c             	pushl  0xc(%ebp)
c01029f4:	ff 75 08             	pushl  0x8(%ebp)
c01029f7:	e8 05 00 00 00       	call   c0102a01 <tlb_invalidate>
c01029fc:	83 c4 10             	add    $0x10,%esp
c01029ff:	c9                   	leave  
c0102a00:	c3                   	ret    

c0102a01 <tlb_invalidate>:
c0102a01:	55                   	push   %ebp
c0102a02:	89 e5                	mov    %esp,%ebp
c0102a04:	83 ec 10             	sub    $0x10,%esp
c0102a07:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102a0a:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0102a0d:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0102a10:	0f 01 38             	invlpg (%eax)
c0102a13:	c9                   	leave  
c0102a14:	c3                   	ret    

c0102a15 <free_pgdir>:
c0102a15:	55                   	push   %ebp
c0102a16:	89 e5                	mov    %esp,%ebp
c0102a18:	83 ec 18             	sub    $0x18,%esp
c0102a1b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102a22:	e9 09 01 00 00       	jmp    c0102b30 <free_pgdir+0x11b>
c0102a27:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102a2a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102a31:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a34:	01 d0                	add    %edx,%eax
c0102a36:	8b 00                	mov    (%eax),%eax
c0102a38:	83 e0 01             	and    $0x1,%eax
c0102a3b:	85 c0                	test   %eax,%eax
c0102a3d:	0f 84 e9 00 00 00    	je     c0102b2c <free_pgdir+0x117>
c0102a43:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c0102a48:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102a4b:	c1 e2 02             	shl    $0x2,%edx
c0102a4e:	01 d0                	add    %edx,%eax
c0102a50:	8b 00                	mov    (%eax),%eax
c0102a52:	83 e0 01             	and    $0x1,%eax
c0102a55:	85 c0                	test   %eax,%eax
c0102a57:	74 05                	je     c0102a5e <free_pgdir+0x49>
c0102a59:	e9 ce 00 00 00       	jmp    c0102b2c <free_pgdir+0x117>
c0102a5e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102a61:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102a68:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a6b:	01 d0                	add    %edx,%eax
c0102a6d:	8b 00                	mov    (%eax),%eax
c0102a6f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102a74:	83 ec 04             	sub    $0x4,%esp
c0102a77:	50                   	push   %eax
c0102a78:	68 68 01 00 00       	push   $0x168
c0102a7d:	68 1e 2d 10 c0       	push   $0xc0102d1e
c0102a82:	e8 a7 f9 ff ff       	call   c010242e <_kaddr>
c0102a87:	83 c4 10             	add    $0x10,%esp
c0102a8a:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102a8d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0102a94:	eb 4a                	jmp    c0102ae0 <free_pgdir+0xcb>
c0102a96:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102a99:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102aa0:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102aa3:	01 d0                	add    %edx,%eax
c0102aa5:	8b 00                	mov    (%eax),%eax
c0102aa7:	83 e0 01             	and    $0x1,%eax
c0102aaa:	85 c0                	test   %eax,%eax
c0102aac:	74 2e                	je     c0102adc <free_pgdir+0xc7>
c0102aae:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102ab1:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102ab8:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102abb:	01 d0                	add    %edx,%eax
c0102abd:	8b 00                	mov    (%eax),%eax
c0102abf:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102ac4:	83 ec 0c             	sub    $0xc,%esp
c0102ac7:	50                   	push   %eax
c0102ac8:	e8 a6 f9 ff ff       	call   c0102473 <pa2page>
c0102acd:	83 c4 10             	add    $0x10,%esp
c0102ad0:	83 ec 0c             	sub    $0xc,%esp
c0102ad3:	50                   	push   %eax
c0102ad4:	e8 5d fc ff ff       	call   c0102736 <page_decref>
c0102ad9:	83 c4 10             	add    $0x10,%esp
c0102adc:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0102ae0:	81 7d f0 ff 03 00 00 	cmpl   $0x3ff,-0x10(%ebp)
c0102ae7:	7e ad                	jle    c0102a96 <free_pgdir+0x81>
c0102ae9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102aec:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102af3:	8b 45 08             	mov    0x8(%ebp),%eax
c0102af6:	01 d0                	add    %edx,%eax
c0102af8:	8b 00                	mov    (%eax),%eax
c0102afa:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102aff:	83 ec 0c             	sub    $0xc,%esp
c0102b02:	50                   	push   %eax
c0102b03:	e8 6b f9 ff ff       	call   c0102473 <pa2page>
c0102b08:	83 c4 10             	add    $0x10,%esp
c0102b0b:	83 ec 0c             	sub    $0xc,%esp
c0102b0e:	50                   	push   %eax
c0102b0f:	e8 22 fc ff ff       	call   c0102736 <page_decref>
c0102b14:	83 c4 10             	add    $0x10,%esp
c0102b17:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102b1a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102b21:	8b 45 08             	mov    0x8(%ebp),%eax
c0102b24:	01 d0                	add    %edx,%eax
c0102b26:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0102b2c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102b30:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
c0102b37:	0f 8e ea fe ff ff    	jle    c0102a27 <free_pgdir+0x12>
c0102b3d:	c9                   	leave  
c0102b3e:	c3                   	ret    
