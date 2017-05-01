
kernel:     file format elf32-i386


Disassembly of section .text:

c0100000 <timer_event>:
c0100000:	55                   	push   %ebp
c0100001:	89 e5                	mov    %esp,%ebp
c0100003:	a1 00 80 10 c0       	mov    0xc0108000,%eax
c0100008:	83 c0 01             	add    $0x1,%eax
c010000b:	a3 00 80 10 c0       	mov    %eax,0xc0108000
c0100010:	5d                   	pop    %ebp
c0100011:	c3                   	ret    

c0100012 <get_time>:
c0100012:	55                   	push   %ebp
c0100013:	89 e5                	mov    %esp,%ebp
c0100015:	a1 00 80 10 c0       	mov    0xc0108000,%eax
c010001a:	5d                   	pop    %ebp
c010001b:	c3                   	ret    

c010001c <time_pop>:
c010001c:	55                   	push   %ebp
c010001d:	89 e5                	mov    %esp,%ebp
c010001f:	a1 00 80 10 c0       	mov    0xc0108000,%eax
c0100024:	83 c0 01             	add    $0x1,%eax
c0100027:	a3 00 80 10 c0       	mov    %eax,0xc0108000
c010002c:	5d                   	pop    %ebp
c010002d:	c3                   	ret    

c010002e <press_key>:
c010002e:	55                   	push   %ebp
c010002f:	89 e5                	mov    %esp,%ebp
c0100031:	83 ec 10             	sub    $0x10,%esp
c0100034:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c010003b:	e9 91 00 00 00       	jmp    c01000d1 <press_key+0xa3>
c0100040:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100043:	8b 04 85 00 30 10 c0 	mov    -0x3fefd000(,%eax,4),%eax
c010004a:	3b 45 08             	cmp    0x8(%ebp),%eax
c010004d:	75 7e                	jne    c01000cd <press_key+0x9f>
c010004f:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100052:	c7 04 85 40 80 10 c0 	movl   $0x1,-0x3fef7fc0(,%eax,4)
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
c0100081:	a1 04 80 10 c0       	mov    0xc0108004,%eax
c0100086:	83 f8 03             	cmp    $0x3,%eax
c0100089:	75 05                	jne    c0100090 <press_key+0x62>
c010008b:	e9 80 00 00 00       	jmp    c0100110 <press_key+0xe2>
c0100090:	83 7d fc 03          	cmpl   $0x3,-0x4(%ebp)
c0100094:	75 0b                	jne    c01000a1 <press_key+0x73>
c0100096:	a1 04 80 10 c0       	mov    0xc0108004,%eax
c010009b:	85 c0                	test   %eax,%eax
c010009d:	75 02                	jne    c01000a1 <press_key+0x73>
c010009f:	eb 6f                	jmp    c0100110 <press_key+0xe2>
c01000a1:	83 7d fc 12          	cmpl   $0x12,-0x4(%ebp)
c01000a5:	75 0c                	jne    c01000b3 <press_key+0x85>
c01000a7:	a1 04 80 10 c0       	mov    0xc0108004,%eax
c01000ac:	83 f8 16             	cmp    $0x16,%eax
c01000af:	75 02                	jne    c01000b3 <press_key+0x85>
c01000b1:	eb 5d                	jmp    c0100110 <press_key+0xe2>
c01000b3:	83 7d fc 16          	cmpl   $0x16,-0x4(%ebp)
c01000b7:	75 0c                	jne    c01000c5 <press_key+0x97>
c01000b9:	a1 04 80 10 c0       	mov    0xc0108004,%eax
c01000be:	83 f8 12             	cmp    $0x12,%eax
c01000c1:	75 02                	jne    c01000c5 <press_key+0x97>
c01000c3:	eb 4b                	jmp    c0100110 <press_key+0xe2>
c01000c5:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01000c8:	a3 04 80 10 c0       	mov    %eax,0xc0108004
c01000cd:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c01000d1:	83 7d fc 19          	cmpl   $0x19,-0x4(%ebp)
c01000d5:	0f 8e 65 ff ff ff    	jle    c0100040 <press_key+0x12>
c01000db:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c01000e2:	eb 26                	jmp    c010010a <press_key+0xdc>
c01000e4:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01000e7:	8b 04 85 00 30 10 c0 	mov    -0x3fefd000(,%eax,4),%eax
c01000ee:	8b 55 08             	mov    0x8(%ebp),%edx
c01000f1:	83 c2 80             	add    $0xffffff80,%edx
c01000f4:	39 d0                	cmp    %edx,%eax
c01000f6:	75 0e                	jne    c0100106 <press_key+0xd8>
c01000f8:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01000fb:	c7 04 85 40 80 10 c0 	movl   $0x0,-0x3fef7fc0(,%eax,4)
c0100102:	00 00 00 00 
c0100106:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c010010a:	83 7d fc 19          	cmpl   $0x19,-0x4(%ebp)
c010010e:	7e d4                	jle    c01000e4 <press_key+0xb6>
c0100110:	c9                   	leave  
c0100111:	c3                   	ret    

c0100112 <last_key_code>:
c0100112:	55                   	push   %ebp
c0100113:	89 e5                	mov    %esp,%ebp
c0100115:	a1 04 80 10 c0       	mov    0xc0108004,%eax
c010011a:	5d                   	pop    %ebp
c010011b:	c3                   	ret    

c010011c <reset_last_key>:
c010011c:	55                   	push   %ebp
c010011d:	89 e5                	mov    %esp,%ebp
c010011f:	c7 05 04 80 10 c0 00 	movl   $0x0,0xc0108004
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
c0100155:	68 f0 1f 10 c0       	push   $0xc0101ff0
c010015a:	e8 01 10 00 00       	call   c0101160 <printk>
c010015f:	83 c4 10             	add    $0x10,%esp
c0100162:	fa                   	cli    
c0100163:	e8 d3 ff ff ff       	call   c010013b <disable_interrupt>
c0100168:	e8 a3 00 00 00       	call   c0100210 <init_serial>
c010016d:	e8 57 01 00 00       	call   c01002c9 <init_timer>
c0100172:	e8 d2 05 00 00       	call   c0100749 <init_intr>
c0100177:	e8 0a 08 00 00       	call   c0100986 <init_idt>
c010017c:	e8 63 04 00 00       	call   c01005e4 <init_seg>
c0100181:	e8 85 13 00 00       	call   c010150b <init_PCB>
c0100186:	83 ec 0c             	sub    $0xc,%esp
c0100189:	68 00 90 01 00       	push   $0x19000
c010018e:	e8 99 11 00 00       	call   c010132c <load>
c0100193:	83 c4 10             	add    $0x10,%esp
c0100196:	a3 48 81 10 c0       	mov    %eax,0xc0108148
c010019b:	c7 05 4c 81 10 c0 1b 	movl   $0x1b,0xc010814c
c01001a2:	00 00 00 
c01001a5:	c7 05 50 81 10 c0 02 	movl   $0x202,0xc0108150
c01001ac:	02 00 00 
c01001af:	c7 05 54 81 10 c0 00 	movl   $0x1f0000,0xc0108154
c01001b6:	00 1f 00 
c01001b9:	c7 05 58 81 10 c0 23 	movl   $0x23,0xc0108158
c01001c0:	00 00 00 
c01001c3:	83 ec 0c             	sub    $0xc,%esp
c01001c6:	6a 00                	push   $0x0
c01001c8:	6a 0a                	push   $0xa
c01001ca:	68 07 20 10 c0       	push   $0xc0102007
c01001cf:	68 20 81 10 c0       	push   $0xc0108120
c01001d4:	6a 01                	push   $0x1
c01001d6:	e8 d9 13 00 00       	call   c01015b4 <add_PCB>
c01001db:	83 c4 20             	add    $0x20,%esp
c01001de:	e8 e9 1a 00 00       	call   c0101ccc <reschedule>
c01001e3:	eb fe                	jmp    c01001e3 <main+0xa2>

c01001e5 <inb>:
c01001e5:	55                   	push   %ebp
c01001e6:	89 e5                	mov    %esp,%ebp
c01001e8:	83 ec 10             	sub    $0x10,%esp
c01001eb:	8b 45 08             	mov    0x8(%ebp),%eax
c01001ee:	89 c2                	mov    %eax,%edx
c01001f0:	ec                   	in     (%dx),%al
c01001f1:	88 45 ff             	mov    %al,-0x1(%ebp)
c01001f4:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c01001f8:	c9                   	leave  
c01001f9:	c3                   	ret    

c01001fa <outb>:
c01001fa:	55                   	push   %ebp
c01001fb:	89 e5                	mov    %esp,%ebp
c01001fd:	83 ec 04             	sub    $0x4,%esp
c0100200:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100203:	88 45 fc             	mov    %al,-0x4(%ebp)
c0100206:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c010020a:	8b 55 08             	mov    0x8(%ebp),%edx
c010020d:	ee                   	out    %al,(%dx)
c010020e:	c9                   	leave  
c010020f:	c3                   	ret    

c0100210 <init_serial>:
c0100210:	55                   	push   %ebp
c0100211:	89 e5                	mov    %esp,%ebp
c0100213:	6a 00                	push   $0x0
c0100215:	68 f9 03 00 00       	push   $0x3f9
c010021a:	e8 db ff ff ff       	call   c01001fa <outb>
c010021f:	83 c4 08             	add    $0x8,%esp
c0100222:	68 80 00 00 00       	push   $0x80
c0100227:	68 fb 03 00 00       	push   $0x3fb
c010022c:	e8 c9 ff ff ff       	call   c01001fa <outb>
c0100231:	83 c4 08             	add    $0x8,%esp
c0100234:	6a 03                	push   $0x3
c0100236:	68 f8 03 00 00       	push   $0x3f8
c010023b:	e8 ba ff ff ff       	call   c01001fa <outb>
c0100240:	83 c4 08             	add    $0x8,%esp
c0100243:	6a 00                	push   $0x0
c0100245:	68 f9 03 00 00       	push   $0x3f9
c010024a:	e8 ab ff ff ff       	call   c01001fa <outb>
c010024f:	83 c4 08             	add    $0x8,%esp
c0100252:	6a 03                	push   $0x3
c0100254:	68 fb 03 00 00       	push   $0x3fb
c0100259:	e8 9c ff ff ff       	call   c01001fa <outb>
c010025e:	83 c4 08             	add    $0x8,%esp
c0100261:	68 c7 00 00 00       	push   $0xc7
c0100266:	68 fa 03 00 00       	push   $0x3fa
c010026b:	e8 8a ff ff ff       	call   c01001fa <outb>
c0100270:	83 c4 08             	add    $0x8,%esp
c0100273:	6a 0b                	push   $0xb
c0100275:	68 fc 03 00 00       	push   $0x3fc
c010027a:	e8 7b ff ff ff       	call   c01001fa <outb>
c010027f:	83 c4 08             	add    $0x8,%esp
c0100282:	c9                   	leave  
c0100283:	c3                   	ret    

c0100284 <is_serial_idle>:
c0100284:	55                   	push   %ebp
c0100285:	89 e5                	mov    %esp,%ebp
c0100287:	68 fd 03 00 00       	push   $0x3fd
c010028c:	e8 54 ff ff ff       	call   c01001e5 <inb>
c0100291:	83 c4 04             	add    $0x4,%esp
c0100294:	0f b6 c0             	movzbl %al,%eax
c0100297:	83 e0 20             	and    $0x20,%eax
c010029a:	c9                   	leave  
c010029b:	c3                   	ret    

c010029c <serial_out>:
c010029c:	55                   	push   %ebp
c010029d:	89 e5                	mov    %esp,%ebp
c010029f:	83 ec 04             	sub    $0x4,%esp
c01002a2:	8b 45 08             	mov    0x8(%ebp),%eax
c01002a5:	88 45 fc             	mov    %al,-0x4(%ebp)
c01002a8:	90                   	nop
c01002a9:	e8 d6 ff ff ff       	call   c0100284 <is_serial_idle>
c01002ae:	85 c0                	test   %eax,%eax
c01002b0:	74 f7                	je     c01002a9 <serial_out+0xd>
c01002b2:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c01002b6:	0f b6 c0             	movzbl %al,%eax
c01002b9:	50                   	push   %eax
c01002ba:	68 f8 03 00 00       	push   $0x3f8
c01002bf:	e8 36 ff ff ff       	call   c01001fa <outb>
c01002c4:	83 c4 08             	add    $0x8,%esp
c01002c7:	c9                   	leave  
c01002c8:	c3                   	ret    

c01002c9 <init_timer>:
c01002c9:	55                   	push   %ebp
c01002ca:	89 e5                	mov    %esp,%ebp
c01002cc:	83 ec 20             	sub    $0x20,%esp
c01002cf:	c7 45 fc a9 04 00 00 	movl   $0x4a9,-0x4(%ebp)
c01002d6:	c7 45 f8 43 00 00 00 	movl   $0x43,-0x8(%ebp)
c01002dd:	c6 45 f7 34          	movb   $0x34,-0x9(%ebp)
c01002e1:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c01002e5:	8b 55 f8             	mov    -0x8(%ebp),%edx
c01002e8:	ee                   	out    %al,(%dx)
c01002e9:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01002ec:	99                   	cltd   
c01002ed:	c1 ea 18             	shr    $0x18,%edx
c01002f0:	01 d0                	add    %edx,%eax
c01002f2:	0f b6 c0             	movzbl %al,%eax
c01002f5:	29 d0                	sub    %edx,%eax
c01002f7:	0f b6 c0             	movzbl %al,%eax
c01002fa:	c7 45 f0 40 00 00 00 	movl   $0x40,-0x10(%ebp)
c0100301:	88 45 ef             	mov    %al,-0x11(%ebp)
c0100304:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
c0100308:	8b 55 f0             	mov    -0x10(%ebp),%edx
c010030b:	ee                   	out    %al,(%dx)
c010030c:	8b 45 fc             	mov    -0x4(%ebp),%eax
c010030f:	8d 90 ff 00 00 00    	lea    0xff(%eax),%edx
c0100315:	85 c0                	test   %eax,%eax
c0100317:	0f 48 c2             	cmovs  %edx,%eax
c010031a:	c1 f8 08             	sar    $0x8,%eax
c010031d:	0f b6 c0             	movzbl %al,%eax
c0100320:	c7 45 e8 40 00 00 00 	movl   $0x40,-0x18(%ebp)
c0100327:	88 45 e7             	mov    %al,-0x19(%ebp)
c010032a:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
c010032e:	8b 55 e8             	mov    -0x18(%ebp),%edx
c0100331:	ee                   	out    %al,(%dx)
c0100332:	c9                   	leave  
c0100333:	c3                   	ret    

c0100334 <write_gdtr>:
c0100334:	55                   	push   %ebp
c0100335:	89 e5                	mov    %esp,%ebp
c0100337:	8b 45 0c             	mov    0xc(%ebp),%eax
c010033a:	83 e8 01             	sub    $0x1,%eax
c010033d:	66 a3 ac 80 10 c0    	mov    %ax,0xc01080ac
c0100343:	8b 45 08             	mov    0x8(%ebp),%eax
c0100346:	66 a3 ae 80 10 c0    	mov    %ax,0xc01080ae
c010034c:	8b 45 08             	mov    0x8(%ebp),%eax
c010034f:	c1 e8 10             	shr    $0x10,%eax
c0100352:	66 a3 b0 80 10 c0    	mov    %ax,0xc01080b0
c0100358:	b8 ac 80 10 c0       	mov    $0xc01080ac,%eax
c010035d:	0f 01 10             	lgdtl  (%eax)
c0100360:	5d                   	pop    %ebp
c0100361:	c3                   	ret    

c0100362 <set_tss>:
c0100362:	55                   	push   %ebp
c0100363:	89 e5                	mov    %esp,%ebp
c0100365:	8b 45 08             	mov    0x8(%ebp),%eax
c0100368:	a3 04 82 10 c0       	mov    %eax,0xc0108204
c010036d:	5d                   	pop    %ebp
c010036e:	c3                   	ret    

c010036f <Makegdt>:
c010036f:	55                   	push   %ebp
c0100370:	89 e5                	mov    %esp,%ebp
c0100372:	8b 45 08             	mov    0x8(%ebp),%eax
c0100375:	c1 e8 0c             	shr    $0xc,%eax
c0100378:	89 c2                	mov    %eax,%edx
c010037a:	8b 45 18             	mov    0x18(%ebp),%eax
c010037d:	66 89 14 c5 80 81 10 	mov    %dx,-0x3fef7e80(,%eax,8)
c0100384:	c0 
c0100385:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100388:	89 c2                	mov    %eax,%edx
c010038a:	8b 45 18             	mov    0x18(%ebp),%eax
c010038d:	66 89 14 c5 82 81 10 	mov    %dx,-0x3fef7e7e(,%eax,8)
c0100394:	c0 
c0100395:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100398:	c1 e8 10             	shr    $0x10,%eax
c010039b:	89 c2                	mov    %eax,%edx
c010039d:	8b 45 18             	mov    0x18(%ebp),%eax
c01003a0:	88 14 c5 84 81 10 c0 	mov    %dl,-0x3fef7e7c(,%eax,8)
c01003a7:	8b 45 10             	mov    0x10(%ebp),%eax
c01003aa:	83 e0 0f             	and    $0xf,%eax
c01003ad:	89 c2                	mov    %eax,%edx
c01003af:	8b 45 18             	mov    0x18(%ebp),%eax
c01003b2:	89 d1                	mov    %edx,%ecx
c01003b4:	83 e1 0f             	and    $0xf,%ecx
c01003b7:	0f b6 14 c5 85 81 10 	movzbl -0x3fef7e7b(,%eax,8),%edx
c01003be:	c0 
c01003bf:	83 e2 f0             	and    $0xfffffff0,%edx
c01003c2:	09 ca                	or     %ecx,%edx
c01003c4:	88 14 c5 85 81 10 c0 	mov    %dl,-0x3fef7e7b(,%eax,8)
c01003cb:	8b 45 18             	mov    0x18(%ebp),%eax
c01003ce:	0f b6 14 c5 85 81 10 	movzbl -0x3fef7e7b(,%eax,8),%edx
c01003d5:	c0 
c01003d6:	83 ca 10             	or     $0x10,%edx
c01003d9:	88 14 c5 85 81 10 c0 	mov    %dl,-0x3fef7e7b(,%eax,8)
c01003e0:	8b 45 14             	mov    0x14(%ebp),%eax
c01003e3:	83 e0 03             	and    $0x3,%eax
c01003e6:	89 c2                	mov    %eax,%edx
c01003e8:	8b 45 18             	mov    0x18(%ebp),%eax
c01003eb:	83 e2 03             	and    $0x3,%edx
c01003ee:	89 d1                	mov    %edx,%ecx
c01003f0:	c1 e1 05             	shl    $0x5,%ecx
c01003f3:	0f b6 14 c5 85 81 10 	movzbl -0x3fef7e7b(,%eax,8),%edx
c01003fa:	c0 
c01003fb:	83 e2 9f             	and    $0xffffff9f,%edx
c01003fe:	09 ca                	or     %ecx,%edx
c0100400:	88 14 c5 85 81 10 c0 	mov    %dl,-0x3fef7e7b(,%eax,8)
c0100407:	8b 45 18             	mov    0x18(%ebp),%eax
c010040a:	0f b6 14 c5 85 81 10 	movzbl -0x3fef7e7b(,%eax,8),%edx
c0100411:	c0 
c0100412:	83 ca 80             	or     $0xffffff80,%edx
c0100415:	88 14 c5 85 81 10 c0 	mov    %dl,-0x3fef7e7b(,%eax,8)
c010041c:	8b 45 08             	mov    0x8(%ebp),%eax
c010041f:	c1 e8 1c             	shr    $0x1c,%eax
c0100422:	83 e0 0f             	and    $0xf,%eax
c0100425:	89 c2                	mov    %eax,%edx
c0100427:	8b 45 18             	mov    0x18(%ebp),%eax
c010042a:	89 d1                	mov    %edx,%ecx
c010042c:	83 e1 0f             	and    $0xf,%ecx
c010042f:	0f b6 14 c5 86 81 10 	movzbl -0x3fef7e7a(,%eax,8),%edx
c0100436:	c0 
c0100437:	83 e2 f0             	and    $0xfffffff0,%edx
c010043a:	09 ca                	or     %ecx,%edx
c010043c:	88 14 c5 86 81 10 c0 	mov    %dl,-0x3fef7e7a(,%eax,8)
c0100443:	8b 45 18             	mov    0x18(%ebp),%eax
c0100446:	0f b6 14 c5 86 81 10 	movzbl -0x3fef7e7a(,%eax,8),%edx
c010044d:	c0 
c010044e:	83 e2 ef             	and    $0xffffffef,%edx
c0100451:	88 14 c5 86 81 10 c0 	mov    %dl,-0x3fef7e7a(,%eax,8)
c0100458:	8b 45 18             	mov    0x18(%ebp),%eax
c010045b:	0f b6 14 c5 86 81 10 	movzbl -0x3fef7e7a(,%eax,8),%edx
c0100462:	c0 
c0100463:	83 e2 df             	and    $0xffffffdf,%edx
c0100466:	88 14 c5 86 81 10 c0 	mov    %dl,-0x3fef7e7a(,%eax,8)
c010046d:	8b 45 18             	mov    0x18(%ebp),%eax
c0100470:	0f b6 14 c5 86 81 10 	movzbl -0x3fef7e7a(,%eax,8),%edx
c0100477:	c0 
c0100478:	83 ca 40             	or     $0x40,%edx
c010047b:	88 14 c5 86 81 10 c0 	mov    %dl,-0x3fef7e7a(,%eax,8)
c0100482:	8b 45 18             	mov    0x18(%ebp),%eax
c0100485:	0f b6 14 c5 86 81 10 	movzbl -0x3fef7e7a(,%eax,8),%edx
c010048c:	c0 
c010048d:	83 ca 80             	or     $0xffffff80,%edx
c0100490:	88 14 c5 86 81 10 c0 	mov    %dl,-0x3fef7e7a(,%eax,8)
c0100497:	8b 45 0c             	mov    0xc(%ebp),%eax
c010049a:	c1 e8 18             	shr    $0x18,%eax
c010049d:	89 c2                	mov    %eax,%edx
c010049f:	8b 45 18             	mov    0x18(%ebp),%eax
c01004a2:	88 14 c5 87 81 10 c0 	mov    %dl,-0x3fef7e79(,%eax,8)
c01004a9:	5d                   	pop    %ebp
c01004aa:	c3                   	ret    

c01004ab <Maketss>:
c01004ab:	55                   	push   %ebp
c01004ac:	89 e5                	mov    %esp,%ebp
c01004ae:	8b 45 08             	mov    0x8(%ebp),%eax
c01004b1:	89 c2                	mov    %eax,%edx
c01004b3:	8b 45 18             	mov    0x18(%ebp),%eax
c01004b6:	66 89 14 c5 80 81 10 	mov    %dx,-0x3fef7e80(,%eax,8)
c01004bd:	c0 
c01004be:	8b 45 0c             	mov    0xc(%ebp),%eax
c01004c1:	89 c2                	mov    %eax,%edx
c01004c3:	8b 45 18             	mov    0x18(%ebp),%eax
c01004c6:	66 89 14 c5 82 81 10 	mov    %dx,-0x3fef7e7e(,%eax,8)
c01004cd:	c0 
c01004ce:	8b 45 0c             	mov    0xc(%ebp),%eax
c01004d1:	c1 e8 10             	shr    $0x10,%eax
c01004d4:	89 c2                	mov    %eax,%edx
c01004d6:	8b 45 18             	mov    0x18(%ebp),%eax
c01004d9:	88 14 c5 84 81 10 c0 	mov    %dl,-0x3fef7e7c(,%eax,8)
c01004e0:	8b 45 10             	mov    0x10(%ebp),%eax
c01004e3:	83 e0 0f             	and    $0xf,%eax
c01004e6:	89 c2                	mov    %eax,%edx
c01004e8:	8b 45 18             	mov    0x18(%ebp),%eax
c01004eb:	89 d1                	mov    %edx,%ecx
c01004ed:	83 e1 0f             	and    $0xf,%ecx
c01004f0:	0f b6 14 c5 85 81 10 	movzbl -0x3fef7e7b(,%eax,8),%edx
c01004f7:	c0 
c01004f8:	83 e2 f0             	and    $0xfffffff0,%edx
c01004fb:	09 ca                	or     %ecx,%edx
c01004fd:	88 14 c5 85 81 10 c0 	mov    %dl,-0x3fef7e7b(,%eax,8)
c0100504:	8b 45 18             	mov    0x18(%ebp),%eax
c0100507:	0f b6 14 c5 85 81 10 	movzbl -0x3fef7e7b(,%eax,8),%edx
c010050e:	c0 
c010050f:	83 e2 ef             	and    $0xffffffef,%edx
c0100512:	88 14 c5 85 81 10 c0 	mov    %dl,-0x3fef7e7b(,%eax,8)
c0100519:	8b 45 14             	mov    0x14(%ebp),%eax
c010051c:	83 e0 03             	and    $0x3,%eax
c010051f:	89 c2                	mov    %eax,%edx
c0100521:	8b 45 18             	mov    0x18(%ebp),%eax
c0100524:	83 e2 03             	and    $0x3,%edx
c0100527:	89 d1                	mov    %edx,%ecx
c0100529:	c1 e1 05             	shl    $0x5,%ecx
c010052c:	0f b6 14 c5 85 81 10 	movzbl -0x3fef7e7b(,%eax,8),%edx
c0100533:	c0 
c0100534:	83 e2 9f             	and    $0xffffff9f,%edx
c0100537:	09 ca                	or     %ecx,%edx
c0100539:	88 14 c5 85 81 10 c0 	mov    %dl,-0x3fef7e7b(,%eax,8)
c0100540:	8b 45 18             	mov    0x18(%ebp),%eax
c0100543:	0f b6 14 c5 85 81 10 	movzbl -0x3fef7e7b(,%eax,8),%edx
c010054a:	c0 
c010054b:	83 ca 80             	or     $0xffffff80,%edx
c010054e:	88 14 c5 85 81 10 c0 	mov    %dl,-0x3fef7e7b(,%eax,8)
c0100555:	8b 45 08             	mov    0x8(%ebp),%eax
c0100558:	c1 e8 10             	shr    $0x10,%eax
c010055b:	83 e0 0f             	and    $0xf,%eax
c010055e:	89 c2                	mov    %eax,%edx
c0100560:	8b 45 18             	mov    0x18(%ebp),%eax
c0100563:	89 d1                	mov    %edx,%ecx
c0100565:	83 e1 0f             	and    $0xf,%ecx
c0100568:	0f b6 14 c5 86 81 10 	movzbl -0x3fef7e7a(,%eax,8),%edx
c010056f:	c0 
c0100570:	83 e2 f0             	and    $0xfffffff0,%edx
c0100573:	09 ca                	or     %ecx,%edx
c0100575:	88 14 c5 86 81 10 c0 	mov    %dl,-0x3fef7e7a(,%eax,8)
c010057c:	8b 45 18             	mov    0x18(%ebp),%eax
c010057f:	0f b6 14 c5 86 81 10 	movzbl -0x3fef7e7a(,%eax,8),%edx
c0100586:	c0 
c0100587:	83 e2 ef             	and    $0xffffffef,%edx
c010058a:	88 14 c5 86 81 10 c0 	mov    %dl,-0x3fef7e7a(,%eax,8)
c0100591:	8b 45 18             	mov    0x18(%ebp),%eax
c0100594:	0f b6 14 c5 86 81 10 	movzbl -0x3fef7e7a(,%eax,8),%edx
c010059b:	c0 
c010059c:	83 e2 df             	and    $0xffffffdf,%edx
c010059f:	88 14 c5 86 81 10 c0 	mov    %dl,-0x3fef7e7a(,%eax,8)
c01005a6:	8b 45 18             	mov    0x18(%ebp),%eax
c01005a9:	0f b6 14 c5 86 81 10 	movzbl -0x3fef7e7a(,%eax,8),%edx
c01005b0:	c0 
c01005b1:	83 ca 40             	or     $0x40,%edx
c01005b4:	88 14 c5 86 81 10 c0 	mov    %dl,-0x3fef7e7a(,%eax,8)
c01005bb:	8b 45 18             	mov    0x18(%ebp),%eax
c01005be:	0f b6 14 c5 86 81 10 	movzbl -0x3fef7e7a(,%eax,8),%edx
c01005c5:	c0 
c01005c6:	83 ca 80             	or     $0xffffff80,%edx
c01005c9:	88 14 c5 86 81 10 c0 	mov    %dl,-0x3fef7e7a(,%eax,8)
c01005d0:	8b 45 0c             	mov    0xc(%ebp),%eax
c01005d3:	c1 e8 18             	shr    $0x18,%eax
c01005d6:	89 c2                	mov    %eax,%edx
c01005d8:	8b 45 18             	mov    0x18(%ebp),%eax
c01005db:	88 14 c5 87 81 10 c0 	mov    %dl,-0x3fef7e79(,%eax,8)
c01005e2:	5d                   	pop    %ebp
c01005e3:	c3                   	ret    

c01005e4 <init_seg>:
c01005e4:	55                   	push   %ebp
c01005e5:	89 e5                	mov    %esp,%ebp
c01005e7:	83 ec 10             	sub    $0x10,%esp
c01005ea:	c7 05 a8 80 10 c0 00 	movl   $0x0,0xc01080a8
c01005f1:	00 00 00 
c01005f4:	6a 00                	push   $0x0
c01005f6:	6a 00                	push   $0x0
c01005f8:	6a 00                	push   $0x0
c01005fa:	6a 00                	push   $0x0
c01005fc:	6a 00                	push   $0x0
c01005fe:	e8 6c fd ff ff       	call   c010036f <Makegdt>
c0100603:	83 c4 14             	add    $0x14,%esp
c0100606:	a1 a8 80 10 c0       	mov    0xc01080a8,%eax
c010060b:	83 c0 01             	add    $0x1,%eax
c010060e:	a3 a8 80 10 c0       	mov    %eax,0xc01080a8
c0100613:	a1 a8 80 10 c0       	mov    0xc01080a8,%eax
c0100618:	50                   	push   %eax
c0100619:	6a 00                	push   $0x0
c010061b:	6a 0a                	push   $0xa
c010061d:	6a 00                	push   $0x0
c010061f:	6a ff                	push   $0xffffffff
c0100621:	e8 49 fd ff ff       	call   c010036f <Makegdt>
c0100626:	83 c4 14             	add    $0x14,%esp
c0100629:	a1 a8 80 10 c0       	mov    0xc01080a8,%eax
c010062e:	83 c0 01             	add    $0x1,%eax
c0100631:	a3 a8 80 10 c0       	mov    %eax,0xc01080a8
c0100636:	a1 a8 80 10 c0       	mov    0xc01080a8,%eax
c010063b:	50                   	push   %eax
c010063c:	6a 00                	push   $0x0
c010063e:	6a 02                	push   $0x2
c0100640:	6a 00                	push   $0x0
c0100642:	6a ff                	push   $0xffffffff
c0100644:	e8 26 fd ff ff       	call   c010036f <Makegdt>
c0100649:	83 c4 14             	add    $0x14,%esp
c010064c:	a1 a8 80 10 c0       	mov    0xc01080a8,%eax
c0100651:	83 c0 01             	add    $0x1,%eax
c0100654:	a3 a8 80 10 c0       	mov    %eax,0xc01080a8
c0100659:	a1 a8 80 10 c0       	mov    0xc01080a8,%eax
c010065e:	50                   	push   %eax
c010065f:	6a 03                	push   $0x3
c0100661:	6a 0a                	push   $0xa
c0100663:	6a 00                	push   $0x0
c0100665:	6a ff                	push   $0xffffffff
c0100667:	e8 03 fd ff ff       	call   c010036f <Makegdt>
c010066c:	83 c4 14             	add    $0x14,%esp
c010066f:	a1 a8 80 10 c0       	mov    0xc01080a8,%eax
c0100674:	83 c0 01             	add    $0x1,%eax
c0100677:	a3 a8 80 10 c0       	mov    %eax,0xc01080a8
c010067c:	a1 a8 80 10 c0       	mov    0xc01080a8,%eax
c0100681:	50                   	push   %eax
c0100682:	6a 03                	push   $0x3
c0100684:	6a 02                	push   $0x2
c0100686:	6a 00                	push   $0x0
c0100688:	6a ff                	push   $0xffffffff
c010068a:	e8 e0 fc ff ff       	call   c010036f <Makegdt>
c010068f:	83 c4 14             	add    $0x14,%esp
c0100692:	a1 a8 80 10 c0       	mov    0xc01080a8,%eax
c0100697:	83 c0 01             	add    $0x1,%eax
c010069a:	a3 a8 80 10 c0       	mov    %eax,0xc01080a8
c010069f:	c7 05 04 82 10 c0 00 	movl   $0x2f0000,0xc0108204
c01006a6:	00 2f 00 
c01006a9:	66 c7 05 08 82 10 c0 	movw   $0x10,0xc0108208
c01006b0:	10 00 
c01006b2:	a1 a8 80 10 c0       	mov    0xc01080a8,%eax
c01006b7:	ba 00 82 10 c0       	mov    $0xc0108200,%edx
c01006bc:	50                   	push   %eax
c01006bd:	6a 00                	push   $0x0
c01006bf:	6a 09                	push   $0x9
c01006c1:	52                   	push   %edx
c01006c2:	6a ff                	push   $0xffffffff
c01006c4:	e8 e2 fd ff ff       	call   c01004ab <Maketss>
c01006c9:	83 c4 14             	add    $0x14,%esp
c01006cc:	a1 a8 80 10 c0       	mov    0xc01080a8,%eax
c01006d1:	83 c0 01             	add    $0x1,%eax
c01006d4:	a3 a8 80 10 c0       	mov    %eax,0xc01080a8
c01006d9:	66 c7 05 5c 82 10 c0 	movw   $0x2b,0xc010825c
c01006e0:	2b 00 
c01006e2:	66 b8 10 00          	mov    $0x10,%ax
c01006e6:	8e d8                	mov    %eax,%ds
c01006e8:	8e c0                	mov    %eax,%es
c01006ea:	8e d0                	mov    %eax,%ss
c01006ec:	68 80 00 00 00       	push   $0x80
c01006f1:	68 80 81 10 c0       	push   $0xc0108180
c01006f6:	e8 39 fc ff ff       	call   c0100334 <write_gdtr>
c01006fb:	83 c4 08             	add    $0x8,%esp
c01006fe:	0f b7 05 5c 82 10 c0 	movzwl 0xc010825c,%eax
c0100705:	0f b7 c0             	movzwl %ax,%eax
c0100708:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
c010070c:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
c0100710:	0f 00 d8             	ltr    %ax
c0100713:	c9                   	leave  
c0100714:	c3                   	ret    

c0100715 <entry>:
c0100715:	66 c7 05 72 04 00 00 	movw   $0x1234,0x472
c010071c:	34 12 
c010071e:	b8 00 70 10 00       	mov    $0x107000,%eax
c0100723:	0f 22 d8             	mov    %eax,%cr3
c0100726:	0f 20 c0             	mov    %cr0,%eax
c0100729:	0d 01 00 00 80       	or     $0x80000001,%eax
c010072e:	0f 22 c0             	mov    %eax,%cr0
c0100731:	b8 38 07 10 c0       	mov    $0xc0100738,%eax
c0100736:	ff e0                	jmp    *%eax

c0100738 <relocated>:
c0100738:	bd 00 00 00 00       	mov    $0x0,%ebp
c010073d:	bc 00 60 10 c0       	mov    $0xc0106000,%esp
c0100742:	e8 fa f9 ff ff       	call   c0100141 <main>

c0100747 <spin>:
c0100747:	eb fe                	jmp    c0100747 <spin>

c0100749 <init_intr>:
c0100749:	55                   	push   %ebp
c010074a:	89 e5                	mov    %esp,%ebp
c010074c:	83 ec 70             	sub    $0x70,%esp
c010074f:	c7 45 fc 21 00 00 00 	movl   $0x21,-0x4(%ebp)
c0100756:	c6 45 fb ff          	movb   $0xff,-0x5(%ebp)
c010075a:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
c010075e:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0100761:	ee                   	out    %al,(%dx)
c0100762:	c7 45 f4 a1 00 00 00 	movl   $0xa1,-0xc(%ebp)
c0100769:	c6 45 f3 ff          	movb   $0xff,-0xd(%ebp)
c010076d:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
c0100771:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100774:	ee                   	out    %al,(%dx)
c0100775:	c7 45 ec 20 00 00 00 	movl   $0x20,-0x14(%ebp)
c010077c:	c6 45 eb 11          	movb   $0x11,-0x15(%ebp)
c0100780:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
c0100784:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0100787:	ee                   	out    %al,(%dx)
c0100788:	c7 45 e4 21 00 00 00 	movl   $0x21,-0x1c(%ebp)
c010078f:	c6 45 e3 20          	movb   $0x20,-0x1d(%ebp)
c0100793:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
c0100797:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c010079a:	ee                   	out    %al,(%dx)
c010079b:	c7 45 dc 21 00 00 00 	movl   $0x21,-0x24(%ebp)
c01007a2:	c6 45 db 04          	movb   $0x4,-0x25(%ebp)
c01007a6:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
c01007aa:	8b 55 dc             	mov    -0x24(%ebp),%edx
c01007ad:	ee                   	out    %al,(%dx)
c01007ae:	c7 45 d4 21 00 00 00 	movl   $0x21,-0x2c(%ebp)
c01007b5:	c6 45 d3 03          	movb   $0x3,-0x2d(%ebp)
c01007b9:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
c01007bd:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c01007c0:	ee                   	out    %al,(%dx)
c01007c1:	c7 45 cc a0 00 00 00 	movl   $0xa0,-0x34(%ebp)
c01007c8:	c6 45 cb 11          	movb   $0x11,-0x35(%ebp)
c01007cc:	0f b6 45 cb          	movzbl -0x35(%ebp),%eax
c01007d0:	8b 55 cc             	mov    -0x34(%ebp),%edx
c01007d3:	ee                   	out    %al,(%dx)
c01007d4:	c7 45 c4 a1 00 00 00 	movl   $0xa1,-0x3c(%ebp)
c01007db:	c6 45 c3 28          	movb   $0x28,-0x3d(%ebp)
c01007df:	0f b6 45 c3          	movzbl -0x3d(%ebp),%eax
c01007e3:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c01007e6:	ee                   	out    %al,(%dx)
c01007e7:	c7 45 bc a1 00 00 00 	movl   $0xa1,-0x44(%ebp)
c01007ee:	c6 45 bb 02          	movb   $0x2,-0x45(%ebp)
c01007f2:	0f b6 45 bb          	movzbl -0x45(%ebp),%eax
c01007f6:	8b 55 bc             	mov    -0x44(%ebp),%edx
c01007f9:	ee                   	out    %al,(%dx)
c01007fa:	c7 45 b4 a1 00 00 00 	movl   $0xa1,-0x4c(%ebp)
c0100801:	c6 45 b3 03          	movb   $0x3,-0x4d(%ebp)
c0100805:	0f b6 45 b3          	movzbl -0x4d(%ebp),%eax
c0100809:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c010080c:	ee                   	out    %al,(%dx)
c010080d:	c7 45 ac 20 00 00 00 	movl   $0x20,-0x54(%ebp)
c0100814:	c6 45 ab 68          	movb   $0x68,-0x55(%ebp)
c0100818:	0f b6 45 ab          	movzbl -0x55(%ebp),%eax
c010081c:	8b 55 ac             	mov    -0x54(%ebp),%edx
c010081f:	ee                   	out    %al,(%dx)
c0100820:	c7 45 a4 20 00 00 00 	movl   $0x20,-0x5c(%ebp)
c0100827:	c6 45 a3 0a          	movb   $0xa,-0x5d(%ebp)
c010082b:	0f b6 45 a3          	movzbl -0x5d(%ebp),%eax
c010082f:	8b 55 a4             	mov    -0x5c(%ebp),%edx
c0100832:	ee                   	out    %al,(%dx)
c0100833:	c7 45 9c a0 00 00 00 	movl   $0xa0,-0x64(%ebp)
c010083a:	c6 45 9b 68          	movb   $0x68,-0x65(%ebp)
c010083e:	0f b6 45 9b          	movzbl -0x65(%ebp),%eax
c0100842:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0100845:	ee                   	out    %al,(%dx)
c0100846:	c7 45 94 a0 00 00 00 	movl   $0xa0,-0x6c(%ebp)
c010084d:	c6 45 93 0a          	movb   $0xa,-0x6d(%ebp)
c0100851:	0f b6 45 93          	movzbl -0x6d(%ebp),%eax
c0100855:	8b 55 94             	mov    -0x6c(%ebp),%edx
c0100858:	ee                   	out    %al,(%dx)
c0100859:	c9                   	leave  
c010085a:	c3                   	ret    

c010085b <save_idt>:
c010085b:	55                   	push   %ebp
c010085c:	89 e5                	mov    %esp,%ebp
c010085e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100861:	83 e8 01             	sub    $0x1,%eax
c0100864:	66 a3 b2 80 10 c0    	mov    %ax,0xc01080b2
c010086a:	8b 45 08             	mov    0x8(%ebp),%eax
c010086d:	66 a3 b4 80 10 c0    	mov    %ax,0xc01080b4
c0100873:	8b 45 08             	mov    0x8(%ebp),%eax
c0100876:	c1 e8 10             	shr    $0x10,%eax
c0100879:	66 a3 b6 80 10 c0    	mov    %ax,0xc01080b6
c010087f:	b8 b2 80 10 c0       	mov    $0xc01080b2,%eax
c0100884:	0f 01 18             	lidtl  (%eax)
c0100887:	5d                   	pop    %ebp
c0100888:	c3                   	ret    

c0100889 <set_intr>:
c0100889:	55                   	push   %ebp
c010088a:	89 e5                	mov    %esp,%ebp
c010088c:	8b 45 10             	mov    0x10(%ebp),%eax
c010088f:	89 c2                	mov    %eax,%edx
c0100891:	8b 45 08             	mov    0x8(%ebp),%eax
c0100894:	66 89 10             	mov    %dx,(%eax)
c0100897:	8b 45 0c             	mov    0xc(%ebp),%eax
c010089a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c01008a1:	8b 45 08             	mov    0x8(%ebp),%eax
c01008a4:	66 89 50 02          	mov    %dx,0x2(%eax)
c01008a8:	8b 45 08             	mov    0x8(%ebp),%eax
c01008ab:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c01008af:	8b 45 08             	mov    0x8(%ebp),%eax
c01008b2:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c01008b6:	83 e2 f0             	and    $0xfffffff0,%edx
c01008b9:	83 ca 0e             	or     $0xe,%edx
c01008bc:	88 50 05             	mov    %dl,0x5(%eax)
c01008bf:	8b 45 08             	mov    0x8(%ebp),%eax
c01008c2:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c01008c6:	83 e2 ef             	and    $0xffffffef,%edx
c01008c9:	88 50 05             	mov    %dl,0x5(%eax)
c01008cc:	8b 45 14             	mov    0x14(%ebp),%eax
c01008cf:	83 e0 03             	and    $0x3,%eax
c01008d2:	89 c2                	mov    %eax,%edx
c01008d4:	8b 45 08             	mov    0x8(%ebp),%eax
c01008d7:	83 e2 03             	and    $0x3,%edx
c01008da:	89 d1                	mov    %edx,%ecx
c01008dc:	c1 e1 05             	shl    $0x5,%ecx
c01008df:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c01008e3:	83 e2 9f             	and    $0xffffff9f,%edx
c01008e6:	09 ca                	or     %ecx,%edx
c01008e8:	88 50 05             	mov    %dl,0x5(%eax)
c01008eb:	8b 45 08             	mov    0x8(%ebp),%eax
c01008ee:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c01008f2:	83 ca 80             	or     $0xffffff80,%edx
c01008f5:	88 50 05             	mov    %dl,0x5(%eax)
c01008f8:	8b 45 10             	mov    0x10(%ebp),%eax
c01008fb:	c1 e8 10             	shr    $0x10,%eax
c01008fe:	89 c2                	mov    %eax,%edx
c0100900:	8b 45 08             	mov    0x8(%ebp),%eax
c0100903:	66 89 50 06          	mov    %dx,0x6(%eax)
c0100907:	5d                   	pop    %ebp
c0100908:	c3                   	ret    

c0100909 <set_trap>:
c0100909:	55                   	push   %ebp
c010090a:	89 e5                	mov    %esp,%ebp
c010090c:	8b 45 10             	mov    0x10(%ebp),%eax
c010090f:	89 c2                	mov    %eax,%edx
c0100911:	8b 45 08             	mov    0x8(%ebp),%eax
c0100914:	66 89 10             	mov    %dx,(%eax)
c0100917:	8b 45 0c             	mov    0xc(%ebp),%eax
c010091a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c0100921:	8b 45 08             	mov    0x8(%ebp),%eax
c0100924:	66 89 50 02          	mov    %dx,0x2(%eax)
c0100928:	8b 45 08             	mov    0x8(%ebp),%eax
c010092b:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c010092f:	8b 45 08             	mov    0x8(%ebp),%eax
c0100932:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c0100936:	83 ca 0f             	or     $0xf,%edx
c0100939:	88 50 05             	mov    %dl,0x5(%eax)
c010093c:	8b 45 08             	mov    0x8(%ebp),%eax
c010093f:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c0100943:	83 e2 ef             	and    $0xffffffef,%edx
c0100946:	88 50 05             	mov    %dl,0x5(%eax)
c0100949:	8b 45 14             	mov    0x14(%ebp),%eax
c010094c:	83 e0 03             	and    $0x3,%eax
c010094f:	89 c2                	mov    %eax,%edx
c0100951:	8b 45 08             	mov    0x8(%ebp),%eax
c0100954:	83 e2 03             	and    $0x3,%edx
c0100957:	89 d1                	mov    %edx,%ecx
c0100959:	c1 e1 05             	shl    $0x5,%ecx
c010095c:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c0100960:	83 e2 9f             	and    $0xffffff9f,%edx
c0100963:	09 ca                	or     %ecx,%edx
c0100965:	88 50 05             	mov    %dl,0x5(%eax)
c0100968:	8b 45 08             	mov    0x8(%ebp),%eax
c010096b:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c010096f:	83 ca 80             	or     $0xffffff80,%edx
c0100972:	88 50 05             	mov    %dl,0x5(%eax)
c0100975:	8b 45 10             	mov    0x10(%ebp),%eax
c0100978:	c1 e8 10             	shr    $0x10,%eax
c010097b:	89 c2                	mov    %eax,%edx
c010097d:	8b 45 08             	mov    0x8(%ebp),%eax
c0100980:	66 89 50 06          	mov    %dx,0x6(%eax)
c0100984:	5d                   	pop    %ebp
c0100985:	c3                   	ret    

c0100986 <init_idt>:
c0100986:	55                   	push   %ebp
c0100987:	89 e5                	mov    %esp,%ebp
c0100989:	83 ec 10             	sub    $0x10,%esp
c010098c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0100993:	eb 22                	jmp    c01009b7 <init_idt+0x31>
c0100995:	ba 23 0c 10 c0       	mov    $0xc0100c23,%edx
c010099a:	8b 45 fc             	mov    -0x4(%ebp),%eax
c010099d:	c1 e0 03             	shl    $0x3,%eax
c01009a0:	05 80 82 10 c0       	add    $0xc0108280,%eax
c01009a5:	6a 00                	push   $0x0
c01009a7:	52                   	push   %edx
c01009a8:	6a 01                	push   $0x1
c01009aa:	50                   	push   %eax
c01009ab:	e8 59 ff ff ff       	call   c0100909 <set_trap>
c01009b0:	83 c4 10             	add    $0x10,%esp
c01009b3:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c01009b7:	81 7d fc ff 00 00 00 	cmpl   $0xff,-0x4(%ebp)
c01009be:	7e d5                	jle    c0100995 <init_idt+0xf>
c01009c0:	b8 89 0b 10 c0       	mov    $0xc0100b89,%eax
c01009c5:	6a 00                	push   $0x0
c01009c7:	50                   	push   %eax
c01009c8:	6a 01                	push   $0x1
c01009ca:	68 80 82 10 c0       	push   $0xc0108280
c01009cf:	e8 35 ff ff ff       	call   c0100909 <set_trap>
c01009d4:	83 c4 10             	add    $0x10,%esp
c01009d7:	b8 93 0b 10 c0       	mov    $0xc0100b93,%eax
c01009dc:	6a 00                	push   $0x0
c01009de:	50                   	push   %eax
c01009df:	6a 01                	push   $0x1
c01009e1:	68 88 82 10 c0       	push   $0xc0108288
c01009e6:	e8 1e ff ff ff       	call   c0100909 <set_trap>
c01009eb:	83 c4 10             	add    $0x10,%esp
c01009ee:	b8 9d 0b 10 c0       	mov    $0xc0100b9d,%eax
c01009f3:	6a 00                	push   $0x0
c01009f5:	50                   	push   %eax
c01009f6:	6a 01                	push   $0x1
c01009f8:	68 90 82 10 c0       	push   $0xc0108290
c01009fd:	e8 07 ff ff ff       	call   c0100909 <set_trap>
c0100a02:	83 c4 10             	add    $0x10,%esp
c0100a05:	b8 a7 0b 10 c0       	mov    $0xc0100ba7,%eax
c0100a0a:	6a 00                	push   $0x0
c0100a0c:	50                   	push   %eax
c0100a0d:	6a 01                	push   $0x1
c0100a0f:	68 98 82 10 c0       	push   $0xc0108298
c0100a14:	e8 f0 fe ff ff       	call   c0100909 <set_trap>
c0100a19:	83 c4 10             	add    $0x10,%esp
c0100a1c:	b8 ae 0b 10 c0       	mov    $0xc0100bae,%eax
c0100a21:	6a 00                	push   $0x0
c0100a23:	50                   	push   %eax
c0100a24:	6a 01                	push   $0x1
c0100a26:	68 a0 82 10 c0       	push   $0xc01082a0
c0100a2b:	e8 d9 fe ff ff       	call   c0100909 <set_trap>
c0100a30:	83 c4 10             	add    $0x10,%esp
c0100a33:	b8 b5 0b 10 c0       	mov    $0xc0100bb5,%eax
c0100a38:	6a 00                	push   $0x0
c0100a3a:	50                   	push   %eax
c0100a3b:	6a 01                	push   $0x1
c0100a3d:	68 a8 82 10 c0       	push   $0xc01082a8
c0100a42:	e8 c2 fe ff ff       	call   c0100909 <set_trap>
c0100a47:	83 c4 10             	add    $0x10,%esp
c0100a4a:	b8 bc 0b 10 c0       	mov    $0xc0100bbc,%eax
c0100a4f:	6a 00                	push   $0x0
c0100a51:	50                   	push   %eax
c0100a52:	6a 01                	push   $0x1
c0100a54:	68 b0 82 10 c0       	push   $0xc01082b0
c0100a59:	e8 ab fe ff ff       	call   c0100909 <set_trap>
c0100a5e:	83 c4 10             	add    $0x10,%esp
c0100a61:	b8 c3 0b 10 c0       	mov    $0xc0100bc3,%eax
c0100a66:	6a 00                	push   $0x0
c0100a68:	50                   	push   %eax
c0100a69:	6a 01                	push   $0x1
c0100a6b:	68 b8 82 10 c0       	push   $0xc01082b8
c0100a70:	e8 94 fe ff ff       	call   c0100909 <set_trap>
c0100a75:	83 c4 10             	add    $0x10,%esp
c0100a78:	b8 ca 0b 10 c0       	mov    $0xc0100bca,%eax
c0100a7d:	6a 00                	push   $0x0
c0100a7f:	50                   	push   %eax
c0100a80:	6a 01                	push   $0x1
c0100a82:	68 c0 82 10 c0       	push   $0xc01082c0
c0100a87:	e8 7d fe ff ff       	call   c0100909 <set_trap>
c0100a8c:	83 c4 10             	add    $0x10,%esp
c0100a8f:	b8 d1 0b 10 c0       	mov    $0xc0100bd1,%eax
c0100a94:	6a 00                	push   $0x0
c0100a96:	50                   	push   %eax
c0100a97:	6a 01                	push   $0x1
c0100a99:	68 c8 82 10 c0       	push   $0xc01082c8
c0100a9e:	e8 66 fe ff ff       	call   c0100909 <set_trap>
c0100aa3:	83 c4 10             	add    $0x10,%esp
c0100aa6:	b8 d8 0b 10 c0       	mov    $0xc0100bd8,%eax
c0100aab:	6a 00                	push   $0x0
c0100aad:	50                   	push   %eax
c0100aae:	6a 01                	push   $0x1
c0100ab0:	68 d0 82 10 c0       	push   $0xc01082d0
c0100ab5:	e8 4f fe ff ff       	call   c0100909 <set_trap>
c0100aba:	83 c4 10             	add    $0x10,%esp
c0100abd:	b8 df 0b 10 c0       	mov    $0xc0100bdf,%eax
c0100ac2:	6a 00                	push   $0x0
c0100ac4:	50                   	push   %eax
c0100ac5:	6a 01                	push   $0x1
c0100ac7:	68 d8 82 10 c0       	push   $0xc01082d8
c0100acc:	e8 38 fe ff ff       	call   c0100909 <set_trap>
c0100ad1:	83 c4 10             	add    $0x10,%esp
c0100ad4:	b8 e6 0b 10 c0       	mov    $0xc0100be6,%eax
c0100ad9:	6a 00                	push   $0x0
c0100adb:	50                   	push   %eax
c0100adc:	6a 01                	push   $0x1
c0100ade:	68 e0 82 10 c0       	push   $0xc01082e0
c0100ae3:	e8 21 fe ff ff       	call   c0100909 <set_trap>
c0100ae8:	83 c4 10             	add    $0x10,%esp
c0100aeb:	b8 ed 0b 10 c0       	mov    $0xc0100bed,%eax
c0100af0:	6a 00                	push   $0x0
c0100af2:	50                   	push   %eax
c0100af3:	6a 01                	push   $0x1
c0100af5:	68 e8 82 10 c0       	push   $0xc01082e8
c0100afa:	e8 0a fe ff ff       	call   c0100909 <set_trap>
c0100aff:	83 c4 10             	add    $0x10,%esp
c0100b02:	b8 f4 0b 10 c0       	mov    $0xc0100bf4,%eax
c0100b07:	6a 00                	push   $0x0
c0100b09:	50                   	push   %eax
c0100b0a:	6a 01                	push   $0x1
c0100b0c:	68 f0 82 10 c0       	push   $0xc01082f0
c0100b11:	e8 f3 fd ff ff       	call   c0100909 <set_trap>
c0100b16:	83 c4 10             	add    $0x10,%esp
c0100b19:	b8 fb 0b 10 c0       	mov    $0xc0100bfb,%eax
c0100b1e:	6a 00                	push   $0x0
c0100b20:	50                   	push   %eax
c0100b21:	6a 01                	push   $0x1
c0100b23:	68 80 83 10 c0       	push   $0xc0108380
c0100b28:	e8 5c fd ff ff       	call   c0100889 <set_intr>
c0100b2d:	83 c4 10             	add    $0x10,%esp
c0100b30:	b8 05 0c 10 c0       	mov    $0xc0100c05,%eax
c0100b35:	6a 00                	push   $0x0
c0100b37:	50                   	push   %eax
c0100b38:	6a 01                	push   $0x1
c0100b3a:	68 88 83 10 c0       	push   $0xc0108388
c0100b3f:	e8 45 fd ff ff       	call   c0100889 <set_intr>
c0100b44:	83 c4 10             	add    $0x10,%esp
c0100b47:	b8 0f 0c 10 c0       	mov    $0xc0100c0f,%eax
c0100b4c:	6a 00                	push   $0x0
c0100b4e:	50                   	push   %eax
c0100b4f:	6a 01                	push   $0x1
c0100b51:	68 f0 83 10 c0       	push   $0xc01083f0
c0100b56:	e8 2e fd ff ff       	call   c0100889 <set_intr>
c0100b5b:	83 c4 10             	add    $0x10,%esp
c0100b5e:	b8 19 0c 10 c0       	mov    $0xc0100c19,%eax
c0100b63:	6a 03                	push   $0x3
c0100b65:	50                   	push   %eax
c0100b66:	6a 01                	push   $0x1
c0100b68:	68 80 86 10 c0       	push   $0xc0108680
c0100b6d:	e8 97 fd ff ff       	call   c0100909 <set_trap>
c0100b72:	83 c4 10             	add    $0x10,%esp
c0100b75:	68 00 08 00 00       	push   $0x800
c0100b7a:	68 80 82 10 c0       	push   $0xc0108280
c0100b7f:	e8 d7 fc ff ff       	call   c010085b <save_idt>
c0100b84:	83 c4 08             	add    $0x8,%esp
c0100b87:	c9                   	leave  
c0100b88:	c3                   	ret    

c0100b89 <vec0>:
c0100b89:	fa                   	cli    
c0100b8a:	6a 00                	push   $0x0
c0100b8c:	6a 00                	push   $0x0
c0100b8e:	e9 97 00 00 00       	jmp    c0100c2a <asm_do_irq>

c0100b93 <vec1>:
c0100b93:	fa                   	cli    
c0100b94:	6a 00                	push   $0x0
c0100b96:	6a 01                	push   $0x1
c0100b98:	e9 8d 00 00 00       	jmp    c0100c2a <asm_do_irq>

c0100b9d <vec2>:
c0100b9d:	fa                   	cli    
c0100b9e:	6a 00                	push   $0x0
c0100ba0:	6a 02                	push   $0x2
c0100ba2:	e9 83 00 00 00       	jmp    c0100c2a <asm_do_irq>

c0100ba7 <vec3>:
c0100ba7:	fa                   	cli    
c0100ba8:	6a 00                	push   $0x0
c0100baa:	6a 03                	push   $0x3
c0100bac:	eb 7c                	jmp    c0100c2a <asm_do_irq>

c0100bae <vec4>:
c0100bae:	fa                   	cli    
c0100baf:	6a 00                	push   $0x0
c0100bb1:	6a 04                	push   $0x4
c0100bb3:	eb 75                	jmp    c0100c2a <asm_do_irq>

c0100bb5 <vec5>:
c0100bb5:	fa                   	cli    
c0100bb6:	6a 00                	push   $0x0
c0100bb8:	6a 05                	push   $0x5
c0100bba:	eb 6e                	jmp    c0100c2a <asm_do_irq>

c0100bbc <vec6>:
c0100bbc:	fa                   	cli    
c0100bbd:	6a 00                	push   $0x0
c0100bbf:	6a 06                	push   $0x6
c0100bc1:	eb 67                	jmp    c0100c2a <asm_do_irq>

c0100bc3 <vec7>:
c0100bc3:	fa                   	cli    
c0100bc4:	6a 00                	push   $0x0
c0100bc6:	6a 07                	push   $0x7
c0100bc8:	eb 60                	jmp    c0100c2a <asm_do_irq>

c0100bca <vec8>:
c0100bca:	fa                   	cli    
c0100bcb:	6a 00                	push   $0x0
c0100bcd:	6a 08                	push   $0x8
c0100bcf:	eb 59                	jmp    c0100c2a <asm_do_irq>

c0100bd1 <vec9>:
c0100bd1:	fa                   	cli    
c0100bd2:	6a 00                	push   $0x0
c0100bd4:	6a 09                	push   $0x9
c0100bd6:	eb 52                	jmp    c0100c2a <asm_do_irq>

c0100bd8 <vec10>:
c0100bd8:	fa                   	cli    
c0100bd9:	6a 00                	push   $0x0
c0100bdb:	6a 0a                	push   $0xa
c0100bdd:	eb 4b                	jmp    c0100c2a <asm_do_irq>

c0100bdf <vec11>:
c0100bdf:	fa                   	cli    
c0100be0:	6a 00                	push   $0x0
c0100be2:	6a 0b                	push   $0xb
c0100be4:	eb 44                	jmp    c0100c2a <asm_do_irq>

c0100be6 <vec12>:
c0100be6:	fa                   	cli    
c0100be7:	6a 00                	push   $0x0
c0100be9:	6a 0c                	push   $0xc
c0100beb:	eb 3d                	jmp    c0100c2a <asm_do_irq>

c0100bed <vec13>:
c0100bed:	fa                   	cli    
c0100bee:	6a 00                	push   $0x0
c0100bf0:	6a 0d                	push   $0xd
c0100bf2:	eb 36                	jmp    c0100c2a <asm_do_irq>

c0100bf4 <vec14>:
c0100bf4:	fa                   	cli    
c0100bf5:	6a 00                	push   $0x0
c0100bf7:	6a 0e                	push   $0xe
c0100bf9:	eb 2f                	jmp    c0100c2a <asm_do_irq>

c0100bfb <irq0>:
c0100bfb:	fa                   	cli    
c0100bfc:	6a 00                	push   $0x0
c0100bfe:	68 e8 03 00 00       	push   $0x3e8
c0100c03:	eb 25                	jmp    c0100c2a <asm_do_irq>

c0100c05 <irq1>:
c0100c05:	fa                   	cli    
c0100c06:	6a 00                	push   $0x0
c0100c08:	68 e9 03 00 00       	push   $0x3e9
c0100c0d:	eb 1b                	jmp    c0100c2a <asm_do_irq>

c0100c0f <irq14>:
c0100c0f:	fa                   	cli    
c0100c10:	6a 00                	push   $0x0
c0100c12:	68 f6 03 00 00       	push   $0x3f6
c0100c17:	eb 11                	jmp    c0100c2a <asm_do_irq>

c0100c19 <syscall>:
c0100c19:	fa                   	cli    
c0100c1a:	6a 00                	push   $0x0
c0100c1c:	68 80 00 00 00       	push   $0x80
c0100c21:	eb 07                	jmp    c0100c2a <asm_do_irq>

c0100c23 <irq_empty>:
c0100c23:	fa                   	cli    
c0100c24:	6a 00                	push   $0x0
c0100c26:	6a ff                	push   $0xffffffff
c0100c28:	eb 00                	jmp    c0100c2a <asm_do_irq>

c0100c2a <asm_do_irq>:
c0100c2a:	60                   	pusha  
c0100c2b:	54                   	push   %esp
c0100c2c:	e8 08 00 00 00       	call   c0100c39 <irq_handle>
c0100c31:	83 c4 04             	add    $0x4,%esp
c0100c34:	61                   	popa   
c0100c35:	83 c4 08             	add    $0x8,%esp
c0100c38:	cf                   	iret   

c0100c39 <irq_handle>:
c0100c39:	55                   	push   %ebp
c0100c3a:	89 e5                	mov    %esp,%ebp
c0100c3c:	83 ec 38             	sub    $0x38,%esp
c0100c3f:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c42:	8b 40 20             	mov    0x20(%eax),%eax
c0100c45:	3d e8 03 00 00       	cmp    $0x3e8,%eax
c0100c4a:	75 18                	jne    c0100c64 <irq_handle+0x2b>
c0100c4c:	e8 af f3 ff ff       	call   c0100000 <timer_event>
c0100c51:	83 ec 0c             	sub    $0xc,%esp
c0100c54:	ff 75 08             	pushl  0x8(%ebp)
c0100c57:	e8 3d 12 00 00       	call   c0101e99 <time_treat>
c0100c5c:	83 c4 10             	add    $0x10,%esp
c0100c5f:	e9 d2 01 00 00       	jmp    c0100e36 <irq_handle+0x1fd>
c0100c64:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c67:	8b 40 20             	mov    0x20(%eax),%eax
c0100c6a:	3d e9 03 00 00       	cmp    $0x3e9,%eax
c0100c6f:	75 7b                	jne    c0100cec <irq_handle+0xb3>
c0100c71:	c7 45 ec 60 00 00 00 	movl   $0x60,-0x14(%ebp)
c0100c78:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100c7b:	89 c2                	mov    %eax,%edx
c0100c7d:	ec                   	in     (%dx),%al
c0100c7e:	88 45 eb             	mov    %al,-0x15(%ebp)
c0100c81:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
c0100c85:	0f b6 c0             	movzbl %al,%eax
c0100c88:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100c8b:	c7 45 e4 61 00 00 00 	movl   $0x61,-0x1c(%ebp)
c0100c92:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0100c95:	89 c2                	mov    %eax,%edx
c0100c97:	ec                   	in     (%dx),%al
c0100c98:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0100c9b:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
c0100c9f:	0f b6 c0             	movzbl %al,%eax
c0100ca2:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100ca5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0100ca8:	83 c8 80             	or     $0xffffff80,%eax
c0100cab:	0f b6 c0             	movzbl %al,%eax
c0100cae:	c7 45 dc 61 00 00 00 	movl   $0x61,-0x24(%ebp)
c0100cb5:	88 45 db             	mov    %al,-0x25(%ebp)
c0100cb8:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
c0100cbc:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0100cbf:	ee                   	out    %al,(%dx)
c0100cc0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0100cc3:	0f b6 c0             	movzbl %al,%eax
c0100cc6:	c7 45 d4 61 00 00 00 	movl   $0x61,-0x2c(%ebp)
c0100ccd:	88 45 d3             	mov    %al,-0x2d(%ebp)
c0100cd0:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
c0100cd4:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0100cd7:	ee                   	out    %al,(%dx)
c0100cd8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100cdb:	83 ec 0c             	sub    $0xc,%esp
c0100cde:	50                   	push   %eax
c0100cdf:	e8 47 f4 ff ff       	call   c010012b <keyboard_event>
c0100ce4:	83 c4 10             	add    $0x10,%esp
c0100ce7:	e9 4a 01 00 00       	jmp    c0100e36 <irq_handle+0x1fd>
c0100cec:	8b 45 08             	mov    0x8(%ebp),%eax
c0100cef:	8b 40 20             	mov    0x20(%eax),%eax
c0100cf2:	3d f6 03 00 00       	cmp    $0x3f6,%eax
c0100cf7:	0f 84 39 01 00 00    	je     c0100e36 <irq_handle+0x1fd>
c0100cfd:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d00:	8b 40 20             	mov    0x20(%eax),%eax
c0100d03:	3d 80 00 00 00       	cmp    $0x80,%eax
c0100d08:	0f 85 03 01 00 00    	jne    c0100e11 <irq_handle+0x1d8>
c0100d0e:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d11:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100d14:	83 f8 01             	cmp    $0x1,%eax
c0100d17:	75 26                	jne    c0100d3f <irq_handle+0x106>
c0100d19:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d1c:	8b 40 10             	mov    0x10(%eax),%eax
c0100d1f:	83 f8 01             	cmp    $0x1,%eax
c0100d22:	0f 85 0e 01 00 00    	jne    c0100e36 <irq_handle+0x1fd>
c0100d28:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d2b:	8b 40 18             	mov    0x18(%eax),%eax
c0100d2e:	83 ec 0c             	sub    $0xc,%esp
c0100d31:	50                   	push   %eax
c0100d32:	e8 29 04 00 00       	call   c0101160 <printk>
c0100d37:	83 c4 10             	add    $0x10,%esp
c0100d3a:	e9 f7 00 00 00       	jmp    c0100e36 <irq_handle+0x1fd>
c0100d3f:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d42:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100d45:	83 f8 02             	cmp    $0x2,%eax
c0100d48:	75 35                	jne    c0100d7f <irq_handle+0x146>
c0100d4a:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d4d:	8b 40 10             	mov    0x10(%eax),%eax
c0100d50:	85 c0                	test   %eax,%eax
c0100d52:	75 12                	jne    c0100d66 <irq_handle+0x12d>
c0100d54:	e8 b9 f2 ff ff       	call   c0100012 <get_time>
c0100d59:	89 c2                	mov    %eax,%edx
c0100d5b:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d5e:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100d61:	e9 d0 00 00 00       	jmp    c0100e36 <irq_handle+0x1fd>
c0100d66:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d69:	8b 40 10             	mov    0x10(%eax),%eax
c0100d6c:	83 f8 01             	cmp    $0x1,%eax
c0100d6f:	0f 85 c1 00 00 00    	jne    c0100e36 <irq_handle+0x1fd>
c0100d75:	e8 a2 f2 ff ff       	call   c010001c <time_pop>
c0100d7a:	e9 b7 00 00 00       	jmp    c0100e36 <irq_handle+0x1fd>
c0100d7f:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d82:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100d85:	83 f8 03             	cmp    $0x3,%eax
c0100d88:	75 32                	jne    c0100dbc <irq_handle+0x183>
c0100d8a:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d8d:	8b 40 10             	mov    0x10(%eax),%eax
c0100d90:	85 c0                	test   %eax,%eax
c0100d92:	75 12                	jne    c0100da6 <irq_handle+0x16d>
c0100d94:	e8 79 f3 ff ff       	call   c0100112 <last_key_code>
c0100d99:	89 c2                	mov    %eax,%edx
c0100d9b:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d9e:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100da1:	e9 90 00 00 00       	jmp    c0100e36 <irq_handle+0x1fd>
c0100da6:	8b 45 08             	mov    0x8(%ebp),%eax
c0100da9:	8b 40 10             	mov    0x10(%eax),%eax
c0100dac:	83 f8 01             	cmp    $0x1,%eax
c0100daf:	0f 85 81 00 00 00    	jne    c0100e36 <irq_handle+0x1fd>
c0100db5:	e8 62 f3 ff ff       	call   c010011c <reset_last_key>
c0100dba:	eb 7a                	jmp    c0100e36 <irq_handle+0x1fd>
c0100dbc:	8b 45 08             	mov    0x8(%ebp),%eax
c0100dbf:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100dc2:	83 f8 04             	cmp    $0x4,%eax
c0100dc5:	75 1e                	jne    c0100de5 <irq_handle+0x1ac>
c0100dc7:	8b 45 08             	mov    0x8(%ebp),%eax
c0100dca:	8b 40 10             	mov    0x10(%eax),%eax
c0100dcd:	83 ec 04             	sub    $0x4,%esp
c0100dd0:	68 00 00 01 00       	push   $0x10000
c0100dd5:	50                   	push   %eax
c0100dd6:	68 00 00 0a 00       	push   $0xa0000
c0100ddb:	e8 a5 03 00 00       	call   c0101185 <my_memcpy>
c0100de0:	83 c4 10             	add    $0x10,%esp
c0100de3:	eb 51                	jmp    c0100e36 <irq_handle+0x1fd>
c0100de5:	8b 45 08             	mov    0x8(%ebp),%eax
c0100de8:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100deb:	83 f8 05             	cmp    $0x5,%eax
c0100dee:	75 07                	jne    c0100df7 <irq_handle+0x1be>
c0100df0:	e8 7d 11 00 00       	call   c0101f72 <process_exit>
c0100df5:	eb 3f                	jmp    c0100e36 <irq_handle+0x1fd>
c0100df7:	8b 45 08             	mov    0x8(%ebp),%eax
c0100dfa:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100dfd:	83 f8 06             	cmp    $0x6,%eax
c0100e00:	75 34                	jne    c0100e36 <irq_handle+0x1fd>
c0100e02:	e8 c6 11 00 00       	call   c0101fcd <getpid>
c0100e07:	89 c2                	mov    %eax,%edx
c0100e09:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e0c:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100e0f:	eb 25                	jmp    c0100e36 <irq_handle+0x1fd>
c0100e11:	83 ec 0c             	sub    $0xc,%esp
c0100e14:	ff 75 08             	pushl  0x8(%ebp)
c0100e17:	e8 c2 05 00 00       	call   c01013de <print_tf>
c0100e1c:	83 c4 10             	add    $0x10,%esp
c0100e1f:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e22:	8b 40 20             	mov    0x20(%eax),%eax
c0100e25:	83 ec 08             	sub    $0x8,%esp
c0100e28:	50                   	push   %eax
c0100e29:	68 0c 20 10 c0       	push   $0xc010200c
c0100e2e:	e8 2d 03 00 00       	call   c0101160 <printk>
c0100e33:	83 c4 10             	add    $0x10,%esp
c0100e36:	c9                   	leave  
c0100e37:	c3                   	ret    

c0100e38 <change>:
c0100e38:	55                   	push   %ebp
c0100e39:	89 e5                	mov    %esp,%ebp
c0100e3b:	53                   	push   %ebx
c0100e3c:	83 c4 80             	add    $0xffffff80,%esp
c0100e3f:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0100e46:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0100e4d:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e50:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0100e53:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0100e57:	75 14                	jne    c0100e6d <change+0x35>
c0100e59:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100e5c:	c6 00 30             	movb   $0x30,(%eax)
c0100e5f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100e62:	83 c0 01             	add    $0x1,%eax
c0100e65:	c6 00 00             	movb   $0x0,(%eax)
c0100e68:	e9 a5 00 00 00       	jmp    c0100f12 <change+0xda>
c0100e6d:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0100e71:	79 1d                	jns    c0100e90 <change+0x58>
c0100e73:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100e76:	8d 50 01             	lea    0x1(%eax),%edx
c0100e79:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0100e7c:	89 c2                	mov    %eax,%edx
c0100e7e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100e81:	01 d0                	add    %edx,%eax
c0100e83:	c6 00 2d             	movb   $0x2d,(%eax)
c0100e86:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100e89:	f7 d8                	neg    %eax
c0100e8b:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100e8e:	eb 06                	jmp    c0100e96 <change+0x5e>
c0100e90:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100e93:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100e96:	eb 40                	jmp    c0100ed8 <change+0xa0>
c0100e98:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0100e9b:	8d 41 01             	lea    0x1(%ecx),%eax
c0100e9e:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0100ea1:	8b 5d f0             	mov    -0x10(%ebp),%ebx
c0100ea4:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c0100ea9:	89 d8                	mov    %ebx,%eax
c0100eab:	f7 e2                	mul    %edx
c0100ead:	c1 ea 03             	shr    $0x3,%edx
c0100eb0:	89 d0                	mov    %edx,%eax
c0100eb2:	c1 e0 02             	shl    $0x2,%eax
c0100eb5:	01 d0                	add    %edx,%eax
c0100eb7:	01 c0                	add    %eax,%eax
c0100eb9:	29 c3                	sub    %eax,%ebx
c0100ebb:	89 da                	mov    %ebx,%edx
c0100ebd:	89 d0                	mov    %edx,%eax
c0100ebf:	83 c0 30             	add    $0x30,%eax
c0100ec2:	88 44 0d 88          	mov    %al,-0x78(%ebp,%ecx,1)
c0100ec6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0100ec9:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c0100ece:	f7 e2                	mul    %edx
c0100ed0:	89 d0                	mov    %edx,%eax
c0100ed2:	c1 e8 03             	shr    $0x3,%eax
c0100ed5:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100ed8:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0100edc:	75 ba                	jne    c0100e98 <change+0x60>
c0100ede:	eb 21                	jmp    c0100f01 <change+0xc9>
c0100ee0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100ee3:	8d 50 01             	lea    0x1(%eax),%edx
c0100ee6:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0100ee9:	89 c2                	mov    %eax,%edx
c0100eeb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100eee:	01 c2                	add    %eax,%edx
c0100ef0:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
c0100ef4:	8d 4d 88             	lea    -0x78(%ebp),%ecx
c0100ef7:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0100efa:	01 c8                	add    %ecx,%eax
c0100efc:	0f b6 00             	movzbl (%eax),%eax
c0100eff:	88 02                	mov    %al,(%edx)
c0100f01:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
c0100f05:	75 d9                	jne    c0100ee0 <change+0xa8>
c0100f07:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100f0a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100f0d:	01 d0                	add    %edx,%eax
c0100f0f:	c6 00 00             	movb   $0x0,(%eax)
c0100f12:	83 ec 80             	sub    $0xffffff80,%esp
c0100f15:	5b                   	pop    %ebx
c0100f16:	5d                   	pop    %ebp
c0100f17:	c3                   	ret    

c0100f18 <change_x>:
c0100f18:	55                   	push   %ebp
c0100f19:	89 e5                	mov    %esp,%ebp
c0100f1b:	83 ec 70             	sub    $0x70,%esp
c0100f1e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0100f25:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0100f2c:	8b 45 08             	mov    0x8(%ebp),%eax
c0100f2f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100f32:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0100f36:	75 11                	jne    c0100f49 <change_x+0x31>
c0100f38:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100f3b:	c6 00 30             	movb   $0x30,(%eax)
c0100f3e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100f41:	83 c0 01             	add    $0x1,%eax
c0100f44:	c6 00 00             	movb   $0x0,(%eax)
c0100f47:	eb 7e                	jmp    c0100fc7 <change_x+0xaf>
c0100f49:	eb 42                	jmp    c0100f8d <change_x+0x75>
c0100f4b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100f4e:	83 e0 0f             	and    $0xf,%eax
c0100f51:	83 f8 09             	cmp    $0x9,%eax
c0100f54:	77 18                	ja     c0100f6e <change_x+0x56>
c0100f56:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100f59:	8d 50 01             	lea    0x1(%eax),%edx
c0100f5c:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0100f5f:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100f62:	83 e2 0f             	and    $0xf,%edx
c0100f65:	83 c2 30             	add    $0x30,%edx
c0100f68:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
c0100f6c:	eb 16                	jmp    c0100f84 <change_x+0x6c>
c0100f6e:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100f71:	8d 50 01             	lea    0x1(%eax),%edx
c0100f74:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0100f77:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100f7a:	83 e2 0f             	and    $0xf,%edx
c0100f7d:	83 c2 37             	add    $0x37,%edx
c0100f80:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
c0100f84:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100f87:	c1 e8 04             	shr    $0x4,%eax
c0100f8a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100f8d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0100f91:	75 b8                	jne    c0100f4b <change_x+0x33>
c0100f93:	eb 21                	jmp    c0100fb6 <change_x+0x9e>
c0100f95:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0100f98:	8d 50 01             	lea    0x1(%eax),%edx
c0100f9b:	89 55 f8             	mov    %edx,-0x8(%ebp)
c0100f9e:	89 c2                	mov    %eax,%edx
c0100fa0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100fa3:	01 c2                	add    %eax,%edx
c0100fa5:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
c0100fa9:	8d 4d 90             	lea    -0x70(%ebp),%ecx
c0100fac:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100faf:	01 c8                	add    %ecx,%eax
c0100fb1:	0f b6 00             	movzbl (%eax),%eax
c0100fb4:	88 02                	mov    %al,(%edx)
c0100fb6:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
c0100fba:	75 d9                	jne    c0100f95 <change_x+0x7d>
c0100fbc:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0100fbf:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100fc2:	01 d0                	add    %edx,%eax
c0100fc4:	c6 00 00             	movb   $0x0,(%eax)
c0100fc7:	c9                   	leave  
c0100fc8:	c3                   	ret    

c0100fc9 <v_fprintf>:
c0100fc9:	55                   	push   %ebp
c0100fca:	89 e5                	mov    %esp,%ebp
c0100fcc:	81 ec 88 00 00 00    	sub    $0x88,%esp
c0100fd2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100fd5:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0100fd8:	8b 45 10             	mov    0x10(%ebp),%eax
c0100fdb:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100fde:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0100fe5:	e9 61 01 00 00       	jmp    c010114b <v_fprintf+0x182>
c0100fea:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0100fed:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100ff0:	01 d0                	add    %edx,%eax
c0100ff2:	0f b6 00             	movzbl (%eax),%eax
c0100ff5:	3c 25                	cmp    $0x25,%al
c0100ff7:	74 27                	je     c0101020 <v_fprintf+0x57>
c0100ff9:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0100ffc:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100fff:	01 d0                	add    %edx,%eax
c0101001:	0f b6 00             	movzbl (%eax),%eax
c0101004:	88 45 eb             	mov    %al,-0x15(%ebp)
c0101007:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
c010100b:	83 ec 0c             	sub    $0xc,%esp
c010100e:	50                   	push   %eax
c010100f:	8b 45 08             	mov    0x8(%ebp),%eax
c0101012:	ff d0                	call   *%eax
c0101014:	83 c4 10             	add    $0x10,%esp
c0101017:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c010101b:	e9 2b 01 00 00       	jmp    c010114b <v_fprintf+0x182>
c0101020:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0101024:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101027:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010102a:	01 d0                	add    %edx,%eax
c010102c:	0f b6 00             	movzbl (%eax),%eax
c010102f:	3c 25                	cmp    $0x25,%al
c0101031:	75 16                	jne    c0101049 <v_fprintf+0x80>
c0101033:	83 ec 0c             	sub    $0xc,%esp
c0101036:	6a 25                	push   $0x25
c0101038:	8b 45 08             	mov    0x8(%ebp),%eax
c010103b:	ff d0                	call   *%eax
c010103d:	83 c4 10             	add    $0x10,%esp
c0101040:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0101044:	e9 02 01 00 00       	jmp    c010114b <v_fprintf+0x182>
c0101049:	8b 55 f0             	mov    -0x10(%ebp),%edx
c010104c:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010104f:	01 d0                	add    %edx,%eax
c0101051:	0f b6 00             	movzbl (%eax),%eax
c0101054:	3c 63                	cmp    $0x63,%al
c0101056:	75 26                	jne    c010107e <v_fprintf+0xb5>
c0101058:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c010105c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010105f:	0f b6 00             	movzbl (%eax),%eax
c0101062:	88 45 eb             	mov    %al,-0x15(%ebp)
c0101065:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
c0101069:	83 ec 0c             	sub    $0xc,%esp
c010106c:	50                   	push   %eax
c010106d:	8b 45 08             	mov    0x8(%ebp),%eax
c0101070:	ff d0                	call   *%eax
c0101072:	83 c4 10             	add    $0x10,%esp
c0101075:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0101079:	e9 cd 00 00 00       	jmp    c010114b <v_fprintf+0x182>
c010107e:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101081:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101084:	01 d0                	add    %edx,%eax
c0101086:	0f b6 00             	movzbl (%eax),%eax
c0101089:	3c 64                	cmp    $0x64,%al
c010108b:	75 36                	jne    c01010c3 <v_fprintf+0xfa>
c010108d:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0101091:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101094:	8b 00                	mov    (%eax),%eax
c0101096:	83 ec 08             	sub    $0x8,%esp
c0101099:	8d 55 87             	lea    -0x79(%ebp),%edx
c010109c:	52                   	push   %edx
c010109d:	50                   	push   %eax
c010109e:	e8 95 fd ff ff       	call   c0100e38 <change>
c01010a3:	83 c4 10             	add    $0x10,%esp
c01010a6:	83 ec 04             	sub    $0x4,%esp
c01010a9:	6a 00                	push   $0x0
c01010ab:	8d 45 87             	lea    -0x79(%ebp),%eax
c01010ae:	50                   	push   %eax
c01010af:	ff 75 08             	pushl  0x8(%ebp)
c01010b2:	e8 12 ff ff ff       	call   c0100fc9 <v_fprintf>
c01010b7:	83 c4 10             	add    $0x10,%esp
c01010ba:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c01010be:	e9 88 00 00 00       	jmp    c010114b <v_fprintf+0x182>
c01010c3:	8b 55 f0             	mov    -0x10(%ebp),%edx
c01010c6:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01010c9:	01 d0                	add    %edx,%eax
c01010cb:	0f b6 00             	movzbl (%eax),%eax
c01010ce:	3c 78                	cmp    $0x78,%al
c01010d0:	75 33                	jne    c0101105 <v_fprintf+0x13c>
c01010d2:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c01010d6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01010d9:	8b 00                	mov    (%eax),%eax
c01010db:	83 ec 08             	sub    $0x8,%esp
c01010de:	8d 55 87             	lea    -0x79(%ebp),%edx
c01010e1:	52                   	push   %edx
c01010e2:	50                   	push   %eax
c01010e3:	e8 30 fe ff ff       	call   c0100f18 <change_x>
c01010e8:	83 c4 10             	add    $0x10,%esp
c01010eb:	83 ec 04             	sub    $0x4,%esp
c01010ee:	6a 00                	push   $0x0
c01010f0:	8d 45 87             	lea    -0x79(%ebp),%eax
c01010f3:	50                   	push   %eax
c01010f4:	ff 75 08             	pushl  0x8(%ebp)
c01010f7:	e8 cd fe ff ff       	call   c0100fc9 <v_fprintf>
c01010fc:	83 c4 10             	add    $0x10,%esp
c01010ff:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0101103:	eb 46                	jmp    c010114b <v_fprintf+0x182>
c0101105:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101108:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010110b:	01 d0                	add    %edx,%eax
c010110d:	0f b6 00             	movzbl (%eax),%eax
c0101110:	3c 73                	cmp    $0x73,%al
c0101112:	75 20                	jne    c0101134 <v_fprintf+0x16b>
c0101114:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0101118:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010111b:	8b 00                	mov    (%eax),%eax
c010111d:	83 ec 04             	sub    $0x4,%esp
c0101120:	6a 00                	push   $0x0
c0101122:	50                   	push   %eax
c0101123:	ff 75 08             	pushl  0x8(%ebp)
c0101126:	e8 9e fe ff ff       	call   c0100fc9 <v_fprintf>
c010112b:	83 c4 10             	add    $0x10,%esp
c010112e:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0101132:	eb 17                	jmp    c010114b <v_fprintf+0x182>
c0101134:	83 ec 04             	sub    $0x4,%esp
c0101137:	6a 00                	push   $0x0
c0101139:	68 34 20 10 c0       	push   $0xc0102034
c010113e:	ff 75 08             	pushl  0x8(%ebp)
c0101141:	e8 83 fe ff ff       	call   c0100fc9 <v_fprintf>
c0101146:	83 c4 10             	add    $0x10,%esp
c0101149:	eb 13                	jmp    c010115e <v_fprintf+0x195>
c010114b:	8b 55 f0             	mov    -0x10(%ebp),%edx
c010114e:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101151:	01 d0                	add    %edx,%eax
c0101153:	0f b6 00             	movzbl (%eax),%eax
c0101156:	84 c0                	test   %al,%al
c0101158:	0f 85 8c fe ff ff    	jne    c0100fea <v_fprintf+0x21>
c010115e:	c9                   	leave  
c010115f:	c3                   	ret    

c0101160 <printk>:
c0101160:	55                   	push   %ebp
c0101161:	89 e5                	mov    %esp,%ebp
c0101163:	83 ec 18             	sub    $0x18,%esp
c0101166:	8d 45 0c             	lea    0xc(%ebp),%eax
c0101169:	89 45 f4             	mov    %eax,-0xc(%ebp)
c010116c:	8b 45 08             	mov    0x8(%ebp),%eax
c010116f:	83 ec 04             	sub    $0x4,%esp
c0101172:	ff 75 f4             	pushl  -0xc(%ebp)
c0101175:	50                   	push   %eax
c0101176:	68 9c 02 10 c0       	push   $0xc010029c
c010117b:	e8 49 fe ff ff       	call   c0100fc9 <v_fprintf>
c0101180:	83 c4 10             	add    $0x10,%esp
c0101183:	c9                   	leave  
c0101184:	c3                   	ret    

c0101185 <my_memcpy>:
c0101185:	55                   	push   %ebp
c0101186:	89 e5                	mov    %esp,%ebp
c0101188:	57                   	push   %edi
c0101189:	56                   	push   %esi
c010118a:	53                   	push   %ebx
c010118b:	8b 45 10             	mov    0x10(%ebp),%eax
c010118e:	8b 55 0c             	mov    0xc(%ebp),%edx
c0101191:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0101194:	89 c1                	mov    %eax,%ecx
c0101196:	89 d6                	mov    %edx,%esi
c0101198:	89 df                	mov    %ebx,%edi
c010119a:	fc                   	cld    
c010119b:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c010119d:	5b                   	pop    %ebx
c010119e:	5e                   	pop    %esi
c010119f:	5f                   	pop    %edi
c01011a0:	5d                   	pop    %ebp
c01011a1:	c3                   	ret    

c01011a2 <my_memset>:
c01011a2:	55                   	push   %ebp
c01011a3:	89 e5                	mov    %esp,%ebp
c01011a5:	57                   	push   %edi
c01011a6:	53                   	push   %ebx
c01011a7:	8b 55 10             	mov    0x10(%ebp),%edx
c01011aa:	8b 45 0c             	mov    0xc(%ebp),%eax
c01011ad:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01011b0:	89 d1                	mov    %edx,%ecx
c01011b2:	89 df                	mov    %ebx,%edi
c01011b4:	fc                   	cld    
c01011b5:	f3 aa                	rep stos %al,%es:(%edi)
c01011b7:	5b                   	pop    %ebx
c01011b8:	5f                   	pop    %edi
c01011b9:	5d                   	pop    %ebp
c01011ba:	c3                   	ret    

c01011bb <inb>:
c01011bb:	55                   	push   %ebp
c01011bc:	89 e5                	mov    %esp,%ebp
c01011be:	83 ec 10             	sub    $0x10,%esp
c01011c1:	8b 45 08             	mov    0x8(%ebp),%eax
c01011c4:	89 c2                	mov    %eax,%edx
c01011c6:	ec                   	in     (%dx),%al
c01011c7:	88 45 ff             	mov    %al,-0x1(%ebp)
c01011ca:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c01011ce:	c9                   	leave  
c01011cf:	c3                   	ret    

c01011d0 <insl>:
c01011d0:	55                   	push   %ebp
c01011d1:	89 e5                	mov    %esp,%ebp
c01011d3:	57                   	push   %edi
c01011d4:	53                   	push   %ebx
c01011d5:	8b 55 08             	mov    0x8(%ebp),%edx
c01011d8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c01011db:	8b 45 10             	mov    0x10(%ebp),%eax
c01011de:	89 cb                	mov    %ecx,%ebx
c01011e0:	89 df                	mov    %ebx,%edi
c01011e2:	89 c1                	mov    %eax,%ecx
c01011e4:	fc                   	cld    
c01011e5:	f2 6d                	repnz insl (%dx),%es:(%edi)
c01011e7:	89 c8                	mov    %ecx,%eax
c01011e9:	89 fb                	mov    %edi,%ebx
c01011eb:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c01011ee:	89 45 10             	mov    %eax,0x10(%ebp)
c01011f1:	5b                   	pop    %ebx
c01011f2:	5f                   	pop    %edi
c01011f3:	5d                   	pop    %ebp
c01011f4:	c3                   	ret    

c01011f5 <outb>:
c01011f5:	55                   	push   %ebp
c01011f6:	89 e5                	mov    %esp,%ebp
c01011f8:	83 ec 04             	sub    $0x4,%esp
c01011fb:	8b 45 0c             	mov    0xc(%ebp),%eax
c01011fe:	88 45 fc             	mov    %al,-0x4(%ebp)
c0101201:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c0101205:	8b 55 08             	mov    0x8(%ebp),%edx
c0101208:	ee                   	out    %al,(%dx)
c0101209:	c9                   	leave  
c010120a:	c3                   	ret    

c010120b <waitdisk>:
c010120b:	55                   	push   %ebp
c010120c:	89 e5                	mov    %esp,%ebp
c010120e:	90                   	nop
c010120f:	68 f7 01 00 00       	push   $0x1f7
c0101214:	e8 a2 ff ff ff       	call   c01011bb <inb>
c0101219:	83 c4 04             	add    $0x4,%esp
c010121c:	0f b6 c0             	movzbl %al,%eax
c010121f:	25 c0 00 00 00       	and    $0xc0,%eax
c0101224:	83 f8 40             	cmp    $0x40,%eax
c0101227:	75 e6                	jne    c010120f <waitdisk+0x4>
c0101229:	c9                   	leave  
c010122a:	c3                   	ret    

c010122b <readsect>:
c010122b:	55                   	push   %ebp
c010122c:	89 e5                	mov    %esp,%ebp
c010122e:	e8 d8 ff ff ff       	call   c010120b <waitdisk>
c0101233:	6a 01                	push   $0x1
c0101235:	68 f2 01 00 00       	push   $0x1f2
c010123a:	e8 b6 ff ff ff       	call   c01011f5 <outb>
c010123f:	83 c4 08             	add    $0x8,%esp
c0101242:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101245:	0f b6 c0             	movzbl %al,%eax
c0101248:	50                   	push   %eax
c0101249:	68 f3 01 00 00       	push   $0x1f3
c010124e:	e8 a2 ff ff ff       	call   c01011f5 <outb>
c0101253:	83 c4 08             	add    $0x8,%esp
c0101256:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101259:	c1 e8 08             	shr    $0x8,%eax
c010125c:	0f b6 c0             	movzbl %al,%eax
c010125f:	50                   	push   %eax
c0101260:	68 f4 01 00 00       	push   $0x1f4
c0101265:	e8 8b ff ff ff       	call   c01011f5 <outb>
c010126a:	83 c4 08             	add    $0x8,%esp
c010126d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101270:	c1 e8 10             	shr    $0x10,%eax
c0101273:	0f b6 c0             	movzbl %al,%eax
c0101276:	50                   	push   %eax
c0101277:	68 f5 01 00 00       	push   $0x1f5
c010127c:	e8 74 ff ff ff       	call   c01011f5 <outb>
c0101281:	83 c4 08             	add    $0x8,%esp
c0101284:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101287:	c1 e8 18             	shr    $0x18,%eax
c010128a:	83 c8 e0             	or     $0xffffffe0,%eax
c010128d:	0f b6 c0             	movzbl %al,%eax
c0101290:	50                   	push   %eax
c0101291:	68 f6 01 00 00       	push   $0x1f6
c0101296:	e8 5a ff ff ff       	call   c01011f5 <outb>
c010129b:	83 c4 08             	add    $0x8,%esp
c010129e:	6a 20                	push   $0x20
c01012a0:	68 f7 01 00 00       	push   $0x1f7
c01012a5:	e8 4b ff ff ff       	call   c01011f5 <outb>
c01012aa:	83 c4 08             	add    $0x8,%esp
c01012ad:	e8 59 ff ff ff       	call   c010120b <waitdisk>
c01012b2:	68 80 00 00 00       	push   $0x80
c01012b7:	ff 75 08             	pushl  0x8(%ebp)
c01012ba:	68 f0 01 00 00       	push   $0x1f0
c01012bf:	e8 0c ff ff ff       	call   c01011d0 <insl>
c01012c4:	83 c4 0c             	add    $0xc,%esp
c01012c7:	c9                   	leave  
c01012c8:	c3                   	ret    

c01012c9 <read_disk>:
c01012c9:	55                   	push   %ebp
c01012ca:	89 e5                	mov    %esp,%ebp
c01012cc:	83 ec 10             	sub    $0x10,%esp
c01012cf:	8b 55 0c             	mov    0xc(%ebp),%edx
c01012d2:	8b 45 08             	mov    0x8(%ebp),%eax
c01012d5:	01 d0                	add    %edx,%eax
c01012d7:	89 45 f8             	mov    %eax,-0x8(%ebp)
c01012da:	8b 45 10             	mov    0x10(%ebp),%eax
c01012dd:	99                   	cltd   
c01012de:	c1 ea 17             	shr    $0x17,%edx
c01012e1:	01 d0                	add    %edx,%eax
c01012e3:	25 ff 01 00 00       	and    $0x1ff,%eax
c01012e8:	29 d0                	sub    %edx,%eax
c01012ea:	f7 d8                	neg    %eax
c01012ec:	01 45 08             	add    %eax,0x8(%ebp)
c01012ef:	8b 45 10             	mov    0x10(%ebp),%eax
c01012f2:	8d 90 ff 01 00 00    	lea    0x1ff(%eax),%edx
c01012f8:	85 c0                	test   %eax,%eax
c01012fa:	0f 48 c2             	cmovs  %edx,%eax
c01012fd:	c1 f8 09             	sar    $0x9,%eax
c0101300:	83 c0 01             	add    $0x1,%eax
c0101303:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0101306:	eb 1a                	jmp    c0101322 <read_disk+0x59>
c0101308:	8b 45 fc             	mov    -0x4(%ebp),%eax
c010130b:	50                   	push   %eax
c010130c:	ff 75 08             	pushl  0x8(%ebp)
c010130f:	e8 17 ff ff ff       	call   c010122b <readsect>
c0101314:	83 c4 08             	add    $0x8,%esp
c0101317:	81 45 08 00 02 00 00 	addl   $0x200,0x8(%ebp)
c010131e:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0101322:	8b 45 08             	mov    0x8(%ebp),%eax
c0101325:	3b 45 f8             	cmp    -0x8(%ebp),%eax
c0101328:	72 de                	jb     c0101308 <read_disk+0x3f>
c010132a:	c9                   	leave  
c010132b:	c3                   	ret    

c010132c <load>:
c010132c:	55                   	push   %ebp
c010132d:	89 e5                	mov    %esp,%ebp
c010132f:	83 ec 10             	sub    $0x10,%esp
c0101332:	c7 45 f4 00 00 08 00 	movl   $0x80000,-0xc(%ebp)
c0101339:	8b 45 08             	mov    0x8(%ebp),%eax
c010133c:	50                   	push   %eax
c010133d:	68 00 10 00 00       	push   $0x1000
c0101342:	ff 75 f4             	pushl  -0xc(%ebp)
c0101345:	e8 7f ff ff ff       	call   c01012c9 <read_disk>
c010134a:	83 c4 0c             	add    $0xc,%esp
c010134d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101350:	8b 50 1c             	mov    0x1c(%eax),%edx
c0101353:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101356:	01 d0                	add    %edx,%eax
c0101358:	89 45 fc             	mov    %eax,-0x4(%ebp)
c010135b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010135e:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
c0101362:	0f b7 c0             	movzwl %ax,%eax
c0101365:	c1 e0 05             	shl    $0x5,%eax
c0101368:	89 c2                	mov    %eax,%edx
c010136a:	8b 45 fc             	mov    -0x4(%ebp),%eax
c010136d:	01 d0                	add    %edx,%eax
c010136f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101372:	eb 5a                	jmp    c01013ce <load+0xa2>
c0101374:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0101377:	8b 50 04             	mov    0x4(%eax),%edx
c010137a:	8b 45 08             	mov    0x8(%ebp),%eax
c010137d:	01 d0                	add    %edx,%eax
c010137f:	89 c1                	mov    %eax,%ecx
c0101381:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0101384:	8b 40 10             	mov    0x10(%eax),%eax
c0101387:	89 c2                	mov    %eax,%edx
c0101389:	8b 45 fc             	mov    -0x4(%ebp),%eax
c010138c:	8b 40 0c             	mov    0xc(%eax),%eax
c010138f:	51                   	push   %ecx
c0101390:	52                   	push   %edx
c0101391:	50                   	push   %eax
c0101392:	e8 32 ff ff ff       	call   c01012c9 <read_disk>
c0101397:	83 c4 0c             	add    $0xc,%esp
c010139a:	8b 45 fc             	mov    -0x4(%ebp),%eax
c010139d:	8b 50 0c             	mov    0xc(%eax),%edx
c01013a0:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01013a3:	8b 40 10             	mov    0x10(%eax),%eax
c01013a6:	01 d0                	add    %edx,%eax
c01013a8:	89 45 f8             	mov    %eax,-0x8(%ebp)
c01013ab:	eb 0a                	jmp    c01013b7 <load+0x8b>
c01013ad:	8b 45 f8             	mov    -0x8(%ebp),%eax
c01013b0:	c6 00 00             	movb   $0x0,(%eax)
c01013b3:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c01013b7:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01013ba:	8b 50 0c             	mov    0xc(%eax),%edx
c01013bd:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01013c0:	8b 40 14             	mov    0x14(%eax),%eax
c01013c3:	01 d0                	add    %edx,%eax
c01013c5:	3b 45 f8             	cmp    -0x8(%ebp),%eax
c01013c8:	77 e3                	ja     c01013ad <load+0x81>
c01013ca:	83 45 fc 20          	addl   $0x20,-0x4(%ebp)
c01013ce:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01013d1:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c01013d4:	72 9e                	jb     c0101374 <load+0x48>
c01013d6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01013d9:	8b 40 18             	mov    0x18(%eax),%eax
c01013dc:	c9                   	leave  
c01013dd:	c3                   	ret    

c01013de <print_tf>:
c01013de:	55                   	push   %ebp
c01013df:	89 e5                	mov    %esp,%ebp
c01013e1:	83 ec 08             	sub    $0x8,%esp
c01013e4:	8b 45 08             	mov    0x8(%ebp),%eax
c01013e7:	8b 40 1c             	mov    0x1c(%eax),%eax
c01013ea:	83 ec 08             	sub    $0x8,%esp
c01013ed:	50                   	push   %eax
c01013ee:	68 54 20 10 c0       	push   $0xc0102054
c01013f3:	e8 68 fd ff ff       	call   c0101160 <printk>
c01013f8:	83 c4 10             	add    $0x10,%esp
c01013fb:	8b 45 08             	mov    0x8(%ebp),%eax
c01013fe:	8b 40 10             	mov    0x10(%eax),%eax
c0101401:	83 ec 08             	sub    $0x8,%esp
c0101404:	50                   	push   %eax
c0101405:	68 5b 20 10 c0       	push   $0xc010205b
c010140a:	e8 51 fd ff ff       	call   c0101160 <printk>
c010140f:	83 c4 10             	add    $0x10,%esp
c0101412:	8b 45 08             	mov    0x8(%ebp),%eax
c0101415:	8b 40 18             	mov    0x18(%eax),%eax
c0101418:	83 ec 08             	sub    $0x8,%esp
c010141b:	50                   	push   %eax
c010141c:	68 62 20 10 c0       	push   $0xc0102062
c0101421:	e8 3a fd ff ff       	call   c0101160 <printk>
c0101426:	83 c4 10             	add    $0x10,%esp
c0101429:	8b 45 08             	mov    0x8(%ebp),%eax
c010142c:	8b 40 14             	mov    0x14(%eax),%eax
c010142f:	83 ec 08             	sub    $0x8,%esp
c0101432:	50                   	push   %eax
c0101433:	68 69 20 10 c0       	push   $0xc0102069
c0101438:	e8 23 fd ff ff       	call   c0101160 <printk>
c010143d:	83 c4 10             	add    $0x10,%esp
c0101440:	8b 45 08             	mov    0x8(%ebp),%eax
c0101443:	8b 00                	mov    (%eax),%eax
c0101445:	83 ec 08             	sub    $0x8,%esp
c0101448:	50                   	push   %eax
c0101449:	68 70 20 10 c0       	push   $0xc0102070
c010144e:	e8 0d fd ff ff       	call   c0101160 <printk>
c0101453:	83 c4 10             	add    $0x10,%esp
c0101456:	8b 45 08             	mov    0x8(%ebp),%eax
c0101459:	8b 40 34             	mov    0x34(%eax),%eax
c010145c:	83 ec 08             	sub    $0x8,%esp
c010145f:	50                   	push   %eax
c0101460:	68 77 20 10 c0       	push   $0xc0102077
c0101465:	e8 f6 fc ff ff       	call   c0101160 <printk>
c010146a:	83 c4 10             	add    $0x10,%esp
c010146d:	8b 45 08             	mov    0x8(%ebp),%eax
c0101470:	8b 40 08             	mov    0x8(%eax),%eax
c0101473:	83 ec 08             	sub    $0x8,%esp
c0101476:	50                   	push   %eax
c0101477:	68 7e 20 10 c0       	push   $0xc010207e
c010147c:	e8 df fc ff ff       	call   c0101160 <printk>
c0101481:	83 c4 10             	add    $0x10,%esp
c0101484:	8b 45 08             	mov    0x8(%ebp),%eax
c0101487:	8b 40 28             	mov    0x28(%eax),%eax
c010148a:	83 ec 08             	sub    $0x8,%esp
c010148d:	50                   	push   %eax
c010148e:	68 85 20 10 c0       	push   $0xc0102085
c0101493:	e8 c8 fc ff ff       	call   c0101160 <printk>
c0101498:	83 c4 10             	add    $0x10,%esp
c010149b:	8b 45 08             	mov    0x8(%ebp),%eax
c010149e:	8b 40 2c             	mov    0x2c(%eax),%eax
c01014a1:	83 ec 08             	sub    $0x8,%esp
c01014a4:	50                   	push   %eax
c01014a5:	68 8c 20 10 c0       	push   $0xc010208c
c01014aa:	e8 b1 fc ff ff       	call   c0101160 <printk>
c01014af:	83 c4 10             	add    $0x10,%esp
c01014b2:	c9                   	leave  
c01014b3:	c3                   	ret    

c01014b4 <my_strcpy>:
c01014b4:	55                   	push   %ebp
c01014b5:	89 e5                	mov    %esp,%ebp
c01014b7:	83 ec 10             	sub    $0x10,%esp
c01014ba:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c01014c1:	eb 2c                	jmp    c01014ef <my_strcpy+0x3b>
c01014c3:	8b 55 fc             	mov    -0x4(%ebp),%edx
c01014c6:	8b 45 08             	mov    0x8(%ebp),%eax
c01014c9:	01 c2                	add    %eax,%edx
c01014cb:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c01014ce:	8b 45 0c             	mov    0xc(%ebp),%eax
c01014d1:	01 c8                	add    %ecx,%eax
c01014d3:	0f b6 00             	movzbl (%eax),%eax
c01014d6:	88 02                	mov    %al,(%edx)
c01014d8:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c01014dc:	83 7d fc 1d          	cmpl   $0x1d,-0x4(%ebp)
c01014e0:	75 0d                	jne    c01014ef <my_strcpy+0x3b>
c01014e2:	8b 55 fc             	mov    -0x4(%ebp),%edx
c01014e5:	8b 45 08             	mov    0x8(%ebp),%eax
c01014e8:	01 d0                	add    %edx,%eax
c01014ea:	c6 00 00             	movb   $0x0,(%eax)
c01014ed:	eb 1a                	jmp    c0101509 <my_strcpy+0x55>
c01014ef:	8b 55 fc             	mov    -0x4(%ebp),%edx
c01014f2:	8b 45 0c             	mov    0xc(%ebp),%eax
c01014f5:	01 d0                	add    %edx,%eax
c01014f7:	0f b6 00             	movzbl (%eax),%eax
c01014fa:	84 c0                	test   %al,%al
c01014fc:	75 c5                	jne    c01014c3 <my_strcpy+0xf>
c01014fe:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0101501:	8b 45 08             	mov    0x8(%ebp),%eax
c0101504:	01 d0                	add    %edx,%eax
c0101506:	c6 00 00             	movb   $0x0,(%eax)
c0101509:	c9                   	leave  
c010150a:	c3                   	ret    

c010150b <init_PCB>:
c010150b:	55                   	push   %ebp
c010150c:	89 e5                	mov    %esp,%ebp
c010150e:	83 ec 10             	sub    $0x10,%esp
c0101511:	68 92 20 10 c0       	push   $0xc0102092
c0101516:	68 08 8b 10 c0       	push   $0xc0108b08
c010151b:	e8 94 ff ff ff       	call   c01014b4 <my_strcpy>
c0101520:	83 c4 08             	add    $0x8,%esp
c0101523:	c7 05 04 8b 10 c0 00 	movl   $0x0,0xc0108b04
c010152a:	00 00 00 
c010152d:	c7 05 2c 8b 10 c0 00 	movl   $0x0,0xc0108b2c
c0101534:	00 00 00 
c0101537:	c7 05 3c 8b 10 c0 00 	movl   $0x0,0xc0108b3c
c010153e:	00 00 00 
c0101541:	c7 05 38 8b 10 c0 00 	movl   $0x0,0xc0108b38
c0101548:	00 00 00 
c010154b:	c7 05 28 8b 10 c0 01 	movl   $0x1,0xc0108b28
c0101552:	00 00 00 
c0101555:	c7 05 30 8b 10 c0 01 	movl   $0x1,0xc0108b30
c010155c:	00 00 00 
c010155f:	c7 05 34 8b 10 c0 0a 	movl   $0xa,0xc0108b34
c0101566:	00 00 00 
c0101569:	c7 05 00 5a 14 c0 01 	movl   $0x1,0xc0145a00
c0101570:	00 00 00 
c0101573:	c7 05 04 5a 14 c0 00 	movl   $0x0,0xc0145a04
c010157a:	00 00 00 
c010157d:	c7 05 c0 8a 10 c0 00 	movl   $0x0,0xc0108ac0
c0101584:	00 00 00 
c0101587:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c010158e:	eb 1c                	jmp    c01015ac <init_PCB+0xa1>
c0101590:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0101593:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0101596:	c1 e0 06             	shl    $0x6,%eax
c0101599:	89 c1                	mov    %eax,%ecx
c010159b:	c1 e1 06             	shl    $0x6,%ecx
c010159e:	01 c8                	add    %ecx,%eax
c01015a0:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c01015a5:	89 50 04             	mov    %edx,0x4(%eax)
c01015a8:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c01015ac:	83 7d fc 3b          	cmpl   $0x3b,-0x4(%ebp)
c01015b0:	7e de                	jle    c0101590 <init_PCB+0x85>
c01015b2:	c9                   	leave  
c01015b3:	c3                   	ret    

c01015b4 <add_PCB>:
c01015b4:	55                   	push   %ebp
c01015b5:	89 e5                	mov    %esp,%ebp
c01015b7:	83 ec 18             	sub    $0x18,%esp
c01015ba:	8b 15 00 5a 14 c0    	mov    0xc0145a00,%edx
c01015c0:	a1 04 5a 14 c0       	mov    0xc0145a04,%eax
c01015c5:	01 c2                	add    %eax,%edx
c01015c7:	a1 c0 8a 10 c0       	mov    0xc0108ac0,%eax
c01015cc:	01 d0                	add    %edx,%eax
c01015ce:	83 f8 3c             	cmp    $0x3c,%eax
c01015d1:	75 1b                	jne    c01015ee <add_PCB+0x3a>
c01015d3:	83 ec 0c             	sub    $0xc,%esp
c01015d6:	68 97 20 10 c0       	push   $0xc0102097
c01015db:	e8 80 fb ff ff       	call   c0101160 <printk>
c01015e0:	83 c4 10             	add    $0x10,%esp
c01015e3:	fb                   	sti    
c01015e4:	b8 00 00 00 00       	mov    $0x0,%eax
c01015e9:	e9 7f 03 00 00       	jmp    c010196d <add_PCB+0x3b9>
c01015ee:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c01015f5:	eb 22                	jmp    c0101619 <add_PCB+0x65>
c01015f7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01015fa:	c1 e0 06             	shl    $0x6,%eax
c01015fd:	89 c2                	mov    %eax,%edx
c01015ff:	c1 e2 06             	shl    $0x6,%edx
c0101602:	01 d0                	add    %edx,%eax
c0101604:	83 c0 20             	add    $0x20,%eax
c0101607:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c010160c:	8b 40 08             	mov    0x8(%eax),%eax
c010160f:	85 c0                	test   %eax,%eax
c0101611:	75 02                	jne    c0101615 <add_PCB+0x61>
c0101613:	eb 0a                	jmp    c010161f <add_PCB+0x6b>
c0101615:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0101619:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c010161d:	7e d8                	jle    c01015f7 <add_PCB+0x43>
c010161f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101622:	c1 e0 06             	shl    $0x6,%eax
c0101625:	89 c2                	mov    %eax,%edx
c0101627:	c1 e2 06             	shl    $0x6,%edx
c010162a:	01 d0                	add    %edx,%eax
c010162c:	83 c0 20             	add    $0x20,%eax
c010162f:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101634:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
c010163b:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c010163f:	0f 85 99 00 00 00    	jne    c01016de <add_PCB+0x12a>
c0101645:	a1 bc 80 10 c0       	mov    0xc01080bc,%eax
c010164a:	c1 e0 06             	shl    $0x6,%eax
c010164d:	89 c2                	mov    %eax,%edx
c010164f:	c1 e2 06             	shl    $0x6,%edx
c0101652:	01 d0                	add    %edx,%eax
c0101654:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101659:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010165c:	8b 0d bc 80 10 c0    	mov    0xc01080bc,%ecx
c0101662:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101665:	c1 e0 06             	shl    $0x6,%eax
c0101668:	89 c2                	mov    %eax,%edx
c010166a:	c1 e2 06             	shl    $0x6,%edx
c010166d:	01 d0                	add    %edx,%eax
c010166f:	8d 90 00 8b 10 c0    	lea    -0x3fef7500(%eax),%edx
c0101675:	89 c8                	mov    %ecx,%eax
c0101677:	c1 e0 06             	shl    $0x6,%eax
c010167a:	89 c1                	mov    %eax,%ecx
c010167c:	c1 e1 06             	shl    $0x6,%ecx
c010167f:	01 c8                	add    %ecx,%eax
c0101681:	83 c0 30             	add    $0x30,%eax
c0101684:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101689:	89 50 08             	mov    %edx,0x8(%eax)
c010168c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010168f:	c1 e0 06             	shl    $0x6,%eax
c0101692:	89 c2                	mov    %eax,%edx
c0101694:	c1 e2 06             	shl    $0x6,%edx
c0101697:	01 d0                	add    %edx,%eax
c0101699:	83 c0 30             	add    $0x30,%eax
c010169c:	8d 90 00 8b 10 c0    	lea    -0x3fef7500(%eax),%edx
c01016a2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01016a5:	89 42 0c             	mov    %eax,0xc(%edx)
c01016a8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01016ab:	c1 e0 06             	shl    $0x6,%eax
c01016ae:	89 c2                	mov    %eax,%edx
c01016b0:	c1 e2 06             	shl    $0x6,%edx
c01016b3:	01 d0                	add    %edx,%eax
c01016b5:	83 c0 30             	add    $0x30,%eax
c01016b8:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c01016bd:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c01016c4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01016c7:	a3 bc 80 10 c0       	mov    %eax,0xc01080bc
c01016cc:	a1 00 5a 14 c0       	mov    0xc0145a00,%eax
c01016d1:	83 c0 01             	add    $0x1,%eax
c01016d4:	a3 00 5a 14 c0       	mov    %eax,0xc0145a00
c01016d9:	e9 fd 01 00 00       	jmp    c01018db <add_PCB+0x327>
c01016de:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c01016e2:	0f 85 fc 00 00 00    	jne    c01017e4 <add_PCB+0x230>
c01016e8:	a1 04 5a 14 c0       	mov    0xc0145a04,%eax
c01016ed:	85 c0                	test   %eax,%eax
c01016ef:	75 5a                	jne    c010174b <add_PCB+0x197>
c01016f1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01016f4:	a3 c0 80 10 c0       	mov    %eax,0xc01080c0
c01016f9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01016fc:	a3 c4 80 10 c0       	mov    %eax,0xc01080c4
c0101701:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101704:	c1 e0 06             	shl    $0x6,%eax
c0101707:	89 c2                	mov    %eax,%edx
c0101709:	c1 e2 06             	shl    $0x6,%edx
c010170c:	01 d0                	add    %edx,%eax
c010170e:	83 c0 30             	add    $0x30,%eax
c0101711:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101716:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c010171d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101720:	c1 e0 06             	shl    $0x6,%eax
c0101723:	89 c2                	mov    %eax,%edx
c0101725:	c1 e2 06             	shl    $0x6,%edx
c0101728:	01 d0                	add    %edx,%eax
c010172a:	83 c0 30             	add    $0x30,%eax
c010172d:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101732:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0101739:	a1 04 5a 14 c0       	mov    0xc0145a04,%eax
c010173e:	83 c0 01             	add    $0x1,%eax
c0101741:	a3 04 5a 14 c0       	mov    %eax,0xc0145a04
c0101746:	e9 90 01 00 00       	jmp    c01018db <add_PCB+0x327>
c010174b:	a1 c4 80 10 c0       	mov    0xc01080c4,%eax
c0101750:	c1 e0 06             	shl    $0x6,%eax
c0101753:	89 c2                	mov    %eax,%edx
c0101755:	c1 e2 06             	shl    $0x6,%edx
c0101758:	01 d0                	add    %edx,%eax
c010175a:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c010175f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101762:	8b 0d c4 80 10 c0    	mov    0xc01080c4,%ecx
c0101768:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010176b:	c1 e0 06             	shl    $0x6,%eax
c010176e:	89 c2                	mov    %eax,%edx
c0101770:	c1 e2 06             	shl    $0x6,%edx
c0101773:	01 d0                	add    %edx,%eax
c0101775:	8d 90 00 8b 10 c0    	lea    -0x3fef7500(%eax),%edx
c010177b:	89 c8                	mov    %ecx,%eax
c010177d:	c1 e0 06             	shl    $0x6,%eax
c0101780:	89 c1                	mov    %eax,%ecx
c0101782:	c1 e1 06             	shl    $0x6,%ecx
c0101785:	01 c8                	add    %ecx,%eax
c0101787:	83 c0 30             	add    $0x30,%eax
c010178a:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c010178f:	89 50 08             	mov    %edx,0x8(%eax)
c0101792:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101795:	c1 e0 06             	shl    $0x6,%eax
c0101798:	89 c2                	mov    %eax,%edx
c010179a:	c1 e2 06             	shl    $0x6,%edx
c010179d:	01 d0                	add    %edx,%eax
c010179f:	83 c0 30             	add    $0x30,%eax
c01017a2:	8d 90 00 8b 10 c0    	lea    -0x3fef7500(%eax),%edx
c01017a8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01017ab:	89 42 0c             	mov    %eax,0xc(%edx)
c01017ae:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01017b1:	c1 e0 06             	shl    $0x6,%eax
c01017b4:	89 c2                	mov    %eax,%edx
c01017b6:	c1 e2 06             	shl    $0x6,%edx
c01017b9:	01 d0                	add    %edx,%eax
c01017bb:	83 c0 30             	add    $0x30,%eax
c01017be:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c01017c3:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c01017ca:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01017cd:	a3 c4 80 10 c0       	mov    %eax,0xc01080c4
c01017d2:	a1 04 5a 14 c0       	mov    0xc0145a04,%eax
c01017d7:	83 c0 01             	add    $0x1,%eax
c01017da:	a3 04 5a 14 c0       	mov    %eax,0xc0145a04
c01017df:	e9 f7 00 00 00       	jmp    c01018db <add_PCB+0x327>
c01017e4:	a1 c0 8a 10 c0       	mov    0xc0108ac0,%eax
c01017e9:	85 c0                	test   %eax,%eax
c01017eb:	75 5a                	jne    c0101847 <add_PCB+0x293>
c01017ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01017f0:	a3 c8 80 10 c0       	mov    %eax,0xc01080c8
c01017f5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01017f8:	a3 cc 80 10 c0       	mov    %eax,0xc01080cc
c01017fd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101800:	c1 e0 06             	shl    $0x6,%eax
c0101803:	89 c2                	mov    %eax,%edx
c0101805:	c1 e2 06             	shl    $0x6,%edx
c0101808:	01 d0                	add    %edx,%eax
c010180a:	83 c0 30             	add    $0x30,%eax
c010180d:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101812:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101819:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010181c:	c1 e0 06             	shl    $0x6,%eax
c010181f:	89 c2                	mov    %eax,%edx
c0101821:	c1 e2 06             	shl    $0x6,%edx
c0101824:	01 d0                	add    %edx,%eax
c0101826:	83 c0 30             	add    $0x30,%eax
c0101829:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c010182e:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0101835:	a1 c0 8a 10 c0       	mov    0xc0108ac0,%eax
c010183a:	83 c0 01             	add    $0x1,%eax
c010183d:	a3 c0 8a 10 c0       	mov    %eax,0xc0108ac0
c0101842:	e9 94 00 00 00       	jmp    c01018db <add_PCB+0x327>
c0101847:	a1 cc 80 10 c0       	mov    0xc01080cc,%eax
c010184c:	c1 e0 06             	shl    $0x6,%eax
c010184f:	89 c2                	mov    %eax,%edx
c0101851:	c1 e2 06             	shl    $0x6,%edx
c0101854:	01 d0                	add    %edx,%eax
c0101856:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c010185b:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010185e:	8b 0d cc 80 10 c0    	mov    0xc01080cc,%ecx
c0101864:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101867:	c1 e0 06             	shl    $0x6,%eax
c010186a:	89 c2                	mov    %eax,%edx
c010186c:	c1 e2 06             	shl    $0x6,%edx
c010186f:	01 d0                	add    %edx,%eax
c0101871:	8d 90 00 8b 10 c0    	lea    -0x3fef7500(%eax),%edx
c0101877:	89 c8                	mov    %ecx,%eax
c0101879:	c1 e0 06             	shl    $0x6,%eax
c010187c:	89 c1                	mov    %eax,%ecx
c010187e:	c1 e1 06             	shl    $0x6,%ecx
c0101881:	01 c8                	add    %ecx,%eax
c0101883:	83 c0 30             	add    $0x30,%eax
c0101886:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c010188b:	89 50 08             	mov    %edx,0x8(%eax)
c010188e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101891:	c1 e0 06             	shl    $0x6,%eax
c0101894:	89 c2                	mov    %eax,%edx
c0101896:	c1 e2 06             	shl    $0x6,%edx
c0101899:	01 d0                	add    %edx,%eax
c010189b:	83 c0 30             	add    $0x30,%eax
c010189e:	8d 90 00 8b 10 c0    	lea    -0x3fef7500(%eax),%edx
c01018a4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01018a7:	89 42 0c             	mov    %eax,0xc(%edx)
c01018aa:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018ad:	c1 e0 06             	shl    $0x6,%eax
c01018b0:	89 c2                	mov    %eax,%edx
c01018b2:	c1 e2 06             	shl    $0x6,%edx
c01018b5:	01 d0                	add    %edx,%eax
c01018b7:	83 c0 30             	add    $0x30,%eax
c01018ba:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c01018bf:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c01018c6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018c9:	a3 cc 80 10 c0       	mov    %eax,0xc01080cc
c01018ce:	a1 c0 8a 10 c0       	mov    0xc0108ac0,%eax
c01018d3:	83 c0 01             	add    $0x1,%eax
c01018d6:	a3 c0 8a 10 c0       	mov    %eax,0xc0108ac0
c01018db:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018de:	c1 e0 06             	shl    $0x6,%eax
c01018e1:	89 c2                	mov    %eax,%edx
c01018e3:	c1 e2 06             	shl    $0x6,%edx
c01018e6:	01 d0                	add    %edx,%eax
c01018e8:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c01018ed:	83 c0 08             	add    $0x8,%eax
c01018f0:	83 ec 08             	sub    $0x8,%esp
c01018f3:	ff 75 10             	pushl  0x10(%ebp)
c01018f6:	50                   	push   %eax
c01018f7:	e8 b8 fb ff ff       	call   c01014b4 <my_strcpy>
c01018fc:	83 c4 10             	add    $0x10,%esp
c01018ff:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101902:	c1 e0 06             	shl    $0x6,%eax
c0101905:	89 c2                	mov    %eax,%edx
c0101907:	c1 e2 06             	shl    $0x6,%edx
c010190a:	01 d0                	add    %edx,%eax
c010190c:	83 c0 30             	add    $0x30,%eax
c010190f:	8d 90 00 8b 10 c0    	lea    -0x3fef7500(%eax),%edx
c0101915:	8b 45 14             	mov    0x14(%ebp),%eax
c0101918:	89 42 04             	mov    %eax,0x4(%edx)
c010191b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010191e:	c1 e0 06             	shl    $0x6,%eax
c0101921:	89 c2                	mov    %eax,%edx
c0101923:	c1 e2 06             	shl    $0x6,%edx
c0101926:	01 d0                	add    %edx,%eax
c0101928:	83 c0 30             	add    $0x30,%eax
c010192b:	8d 90 00 8b 10 c0    	lea    -0x3fef7500(%eax),%edx
c0101931:	8b 45 08             	mov    0x8(%ebp),%eax
c0101934:	89 02                	mov    %eax,(%edx)
c0101936:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101939:	c1 e0 06             	shl    $0x6,%eax
c010193c:	89 c2                	mov    %eax,%edx
c010193e:	c1 e2 06             	shl    $0x6,%edx
c0101941:	01 d0                	add    %edx,%eax
c0101943:	8d 90 00 8b 10 c0    	lea    -0x3fef7500(%eax),%edx
c0101949:	8b 45 0c             	mov    0xc(%ebp),%eax
c010194c:	89 02                	mov    %eax,(%edx)
c010194e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101951:	c1 e0 06             	shl    $0x6,%eax
c0101954:	89 c2                	mov    %eax,%edx
c0101956:	c1 e2 06             	shl    $0x6,%edx
c0101959:	01 d0                	add    %edx,%eax
c010195b:	83 c0 20             	add    $0x20,%eax
c010195e:	8d 90 00 8b 10 c0    	lea    -0x3fef7500(%eax),%edx
c0101964:	8b 45 18             	mov    0x18(%ebp),%eax
c0101967:	89 42 0c             	mov    %eax,0xc(%edx)
c010196a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010196d:	c9                   	leave  
c010196e:	c3                   	ret    

c010196f <delete_PCB>:
c010196f:	55                   	push   %ebp
c0101970:	89 e5                	mov    %esp,%ebp
c0101972:	83 ec 18             	sub    $0x18,%esp
c0101975:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0101979:	75 15                	jne    c0101990 <delete_PCB+0x21>
c010197b:	83 ec 0c             	sub    $0xc,%esp
c010197e:	68 ac 20 10 c0       	push   $0xc01020ac
c0101983:	e8 d8 f7 ff ff       	call   c0101160 <printk>
c0101988:	83 c4 10             	add    $0x10,%esp
c010198b:	e9 35 03 00 00       	jmp    c0101cc5 <delete_PCB+0x356>
c0101990:	8b 45 08             	mov    0x8(%ebp),%eax
c0101993:	c1 e0 06             	shl    $0x6,%eax
c0101996:	89 c2                	mov    %eax,%edx
c0101998:	c1 e2 06             	shl    $0x6,%edx
c010199b:	01 d0                	add    %edx,%eax
c010199d:	83 c0 20             	add    $0x20,%eax
c01019a0:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c01019a5:	8b 40 08             	mov    0x8(%eax),%eax
c01019a8:	85 c0                	test   %eax,%eax
c01019aa:	75 15                	jne    c01019c1 <delete_PCB+0x52>
c01019ac:	83 ec 0c             	sub    $0xc,%esp
c01019af:	68 cf 20 10 c0       	push   $0xc01020cf
c01019b4:	e8 a7 f7 ff ff       	call   c0101160 <printk>
c01019b9:	83 c4 10             	add    $0x10,%esp
c01019bc:	e9 04 03 00 00       	jmp    c0101cc5 <delete_PCB+0x356>
c01019c1:	8b 45 08             	mov    0x8(%ebp),%eax
c01019c4:	c1 e0 06             	shl    $0x6,%eax
c01019c7:	89 c2                	mov    %eax,%edx
c01019c9:	c1 e2 06             	shl    $0x6,%edx
c01019cc:	01 d0                	add    %edx,%eax
c01019ce:	83 c0 20             	add    $0x20,%eax
c01019d1:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c01019d6:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c01019dd:	8b 45 08             	mov    0x8(%ebp),%eax
c01019e0:	c1 e0 06             	shl    $0x6,%eax
c01019e3:	89 c2                	mov    %eax,%edx
c01019e5:	c1 e2 06             	shl    $0x6,%edx
c01019e8:	01 d0                	add    %edx,%eax
c01019ea:	83 c0 30             	add    $0x30,%eax
c01019ed:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c01019f2:	8b 00                	mov    (%eax),%eax
c01019f4:	83 f8 01             	cmp    $0x1,%eax
c01019f7:	0f 85 dd 00 00 00    	jne    c0101ada <delete_PCB+0x16b>
c01019fd:	a1 bc 80 10 c0       	mov    0xc01080bc,%eax
c0101a02:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101a05:	75 55                	jne    c0101a5c <delete_PCB+0xed>
c0101a07:	8b 45 08             	mov    0x8(%ebp),%eax
c0101a0a:	c1 e0 06             	shl    $0x6,%eax
c0101a0d:	89 c2                	mov    %eax,%edx
c0101a0f:	c1 e2 06             	shl    $0x6,%edx
c0101a12:	01 d0                	add    %edx,%eax
c0101a14:	83 c0 30             	add    $0x30,%eax
c0101a17:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101a1c:	8b 40 0c             	mov    0xc(%eax),%eax
c0101a1f:	8b 40 04             	mov    0x4(%eax),%eax
c0101a22:	a3 bc 80 10 c0       	mov    %eax,0xc01080bc
c0101a27:	8b 45 08             	mov    0x8(%ebp),%eax
c0101a2a:	c1 e0 06             	shl    $0x6,%eax
c0101a2d:	89 c2                	mov    %eax,%edx
c0101a2f:	c1 e2 06             	shl    $0x6,%edx
c0101a32:	01 d0                	add    %edx,%eax
c0101a34:	83 c0 30             	add    $0x30,%eax
c0101a37:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101a3c:	8b 50 0c             	mov    0xc(%eax),%edx
c0101a3f:	8b 45 08             	mov    0x8(%ebp),%eax
c0101a42:	c1 e0 06             	shl    $0x6,%eax
c0101a45:	89 c1                	mov    %eax,%ecx
c0101a47:	c1 e1 06             	shl    $0x6,%ecx
c0101a4a:	01 c8                	add    %ecx,%eax
c0101a4c:	83 c0 30             	add    $0x30,%eax
c0101a4f:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101a54:	8b 40 08             	mov    0x8(%eax),%eax
c0101a57:	89 42 38             	mov    %eax,0x38(%edx)
c0101a5a:	eb 6c                	jmp    c0101ac8 <delete_PCB+0x159>
c0101a5c:	8b 45 08             	mov    0x8(%ebp),%eax
c0101a5f:	c1 e0 06             	shl    $0x6,%eax
c0101a62:	89 c2                	mov    %eax,%edx
c0101a64:	c1 e2 06             	shl    $0x6,%edx
c0101a67:	01 d0                	add    %edx,%eax
c0101a69:	83 c0 30             	add    $0x30,%eax
c0101a6c:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101a71:	8b 40 0c             	mov    0xc(%eax),%eax
c0101a74:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101a77:	8b 45 08             	mov    0x8(%ebp),%eax
c0101a7a:	c1 e0 06             	shl    $0x6,%eax
c0101a7d:	89 c2                	mov    %eax,%edx
c0101a7f:	c1 e2 06             	shl    $0x6,%edx
c0101a82:	01 d0                	add    %edx,%eax
c0101a84:	83 c0 30             	add    $0x30,%eax
c0101a87:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101a8c:	8b 50 0c             	mov    0xc(%eax),%edx
c0101a8f:	8b 45 08             	mov    0x8(%ebp),%eax
c0101a92:	c1 e0 06             	shl    $0x6,%eax
c0101a95:	89 c1                	mov    %eax,%ecx
c0101a97:	c1 e1 06             	shl    $0x6,%ecx
c0101a9a:	01 c8                	add    %ecx,%eax
c0101a9c:	83 c0 30             	add    $0x30,%eax
c0101a9f:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101aa4:	8b 40 08             	mov    0x8(%eax),%eax
c0101aa7:	89 42 38             	mov    %eax,0x38(%edx)
c0101aaa:	8b 45 08             	mov    0x8(%ebp),%eax
c0101aad:	c1 e0 06             	shl    $0x6,%eax
c0101ab0:	89 c2                	mov    %eax,%edx
c0101ab2:	c1 e2 06             	shl    $0x6,%edx
c0101ab5:	01 d0                	add    %edx,%eax
c0101ab7:	83 c0 30             	add    $0x30,%eax
c0101aba:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101abf:	8b 40 08             	mov    0x8(%eax),%eax
c0101ac2:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101ac5:	89 50 3c             	mov    %edx,0x3c(%eax)
c0101ac8:	a1 00 5a 14 c0       	mov    0xc0145a00,%eax
c0101acd:	83 e8 01             	sub    $0x1,%eax
c0101ad0:	a3 00 5a 14 c0       	mov    %eax,0xc0145a00
c0101ad5:	e9 eb 01 00 00       	jmp    c0101cc5 <delete_PCB+0x356>
c0101ada:	8b 45 08             	mov    0x8(%ebp),%eax
c0101add:	c1 e0 06             	shl    $0x6,%eax
c0101ae0:	89 c2                	mov    %eax,%edx
c0101ae2:	c1 e2 06             	shl    $0x6,%edx
c0101ae5:	01 d0                	add    %edx,%eax
c0101ae7:	83 c0 30             	add    $0x30,%eax
c0101aea:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101aef:	8b 00                	mov    (%eax),%eax
c0101af1:	83 f8 02             	cmp    $0x2,%eax
c0101af4:	0f 85 ea 00 00 00    	jne    c0101be4 <delete_PCB+0x275>
c0101afa:	a1 04 5a 14 c0       	mov    0xc0145a04,%eax
c0101aff:	83 e8 01             	sub    $0x1,%eax
c0101b02:	a3 04 5a 14 c0       	mov    %eax,0xc0145a04
c0101b07:	a1 04 5a 14 c0       	mov    0xc0145a04,%eax
c0101b0c:	85 c0                	test   %eax,%eax
c0101b0e:	75 19                	jne    c0101b29 <delete_PCB+0x1ba>
c0101b10:	c7 05 c0 80 10 c0 00 	movl   $0x0,0xc01080c0
c0101b17:	00 00 00 
c0101b1a:	c7 05 c4 80 10 c0 00 	movl   $0x0,0xc01080c4
c0101b21:	00 00 00 
c0101b24:	e9 9c 01 00 00       	jmp    c0101cc5 <delete_PCB+0x356>
c0101b29:	a1 c4 80 10 c0       	mov    0xc01080c4,%eax
c0101b2e:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101b31:	75 20                	jne    c0101b53 <delete_PCB+0x1e4>
c0101b33:	8b 45 08             	mov    0x8(%ebp),%eax
c0101b36:	c1 e0 06             	shl    $0x6,%eax
c0101b39:	89 c2                	mov    %eax,%edx
c0101b3b:	c1 e2 06             	shl    $0x6,%edx
c0101b3e:	01 d0                	add    %edx,%eax
c0101b40:	83 c0 30             	add    $0x30,%eax
c0101b43:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101b48:	8b 40 0c             	mov    0xc(%eax),%eax
c0101b4b:	8b 40 04             	mov    0x4(%eax),%eax
c0101b4e:	a3 c4 80 10 c0       	mov    %eax,0xc01080c4
c0101b53:	8b 45 08             	mov    0x8(%ebp),%eax
c0101b56:	c1 e0 06             	shl    $0x6,%eax
c0101b59:	89 c2                	mov    %eax,%edx
c0101b5b:	c1 e2 06             	shl    $0x6,%edx
c0101b5e:	01 d0                	add    %edx,%eax
c0101b60:	83 c0 30             	add    $0x30,%eax
c0101b63:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101b68:	8b 40 0c             	mov    0xc(%eax),%eax
c0101b6b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101b6e:	8b 45 08             	mov    0x8(%ebp),%eax
c0101b71:	c1 e0 06             	shl    $0x6,%eax
c0101b74:	89 c2                	mov    %eax,%edx
c0101b76:	c1 e2 06             	shl    $0x6,%edx
c0101b79:	01 d0                	add    %edx,%eax
c0101b7b:	83 c0 30             	add    $0x30,%eax
c0101b7e:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101b83:	8b 50 0c             	mov    0xc(%eax),%edx
c0101b86:	8b 45 08             	mov    0x8(%ebp),%eax
c0101b89:	c1 e0 06             	shl    $0x6,%eax
c0101b8c:	89 c1                	mov    %eax,%ecx
c0101b8e:	c1 e1 06             	shl    $0x6,%ecx
c0101b91:	01 c8                	add    %ecx,%eax
c0101b93:	83 c0 30             	add    $0x30,%eax
c0101b96:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101b9b:	8b 40 08             	mov    0x8(%eax),%eax
c0101b9e:	89 42 38             	mov    %eax,0x38(%edx)
c0101ba1:	8b 45 08             	mov    0x8(%ebp),%eax
c0101ba4:	c1 e0 06             	shl    $0x6,%eax
c0101ba7:	89 c2                	mov    %eax,%edx
c0101ba9:	c1 e2 06             	shl    $0x6,%edx
c0101bac:	01 d0                	add    %edx,%eax
c0101bae:	83 c0 30             	add    $0x30,%eax
c0101bb1:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101bb6:	8b 40 08             	mov    0x8(%eax),%eax
c0101bb9:	85 c0                	test   %eax,%eax
c0101bbb:	0f 84 04 01 00 00    	je     c0101cc5 <delete_PCB+0x356>
c0101bc1:	8b 45 08             	mov    0x8(%ebp),%eax
c0101bc4:	c1 e0 06             	shl    $0x6,%eax
c0101bc7:	89 c2                	mov    %eax,%edx
c0101bc9:	c1 e2 06             	shl    $0x6,%edx
c0101bcc:	01 d0                	add    %edx,%eax
c0101bce:	83 c0 30             	add    $0x30,%eax
c0101bd1:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101bd6:	8b 40 08             	mov    0x8(%eax),%eax
c0101bd9:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101bdc:	89 50 3c             	mov    %edx,0x3c(%eax)
c0101bdf:	e9 e1 00 00 00       	jmp    c0101cc5 <delete_PCB+0x356>
c0101be4:	a1 c0 8a 10 c0       	mov    0xc0108ac0,%eax
c0101be9:	83 e8 01             	sub    $0x1,%eax
c0101bec:	a3 c0 8a 10 c0       	mov    %eax,0xc0108ac0
c0101bf1:	a1 c0 8a 10 c0       	mov    0xc0108ac0,%eax
c0101bf6:	85 c0                	test   %eax,%eax
c0101bf8:	75 19                	jne    c0101c13 <delete_PCB+0x2a4>
c0101bfa:	c7 05 c8 80 10 c0 00 	movl   $0x0,0xc01080c8
c0101c01:	00 00 00 
c0101c04:	c7 05 cc 80 10 c0 00 	movl   $0x0,0xc01080cc
c0101c0b:	00 00 00 
c0101c0e:	e9 b2 00 00 00       	jmp    c0101cc5 <delete_PCB+0x356>
c0101c13:	a1 cc 80 10 c0       	mov    0xc01080cc,%eax
c0101c18:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101c1b:	75 20                	jne    c0101c3d <delete_PCB+0x2ce>
c0101c1d:	8b 45 08             	mov    0x8(%ebp),%eax
c0101c20:	c1 e0 06             	shl    $0x6,%eax
c0101c23:	89 c2                	mov    %eax,%edx
c0101c25:	c1 e2 06             	shl    $0x6,%edx
c0101c28:	01 d0                	add    %edx,%eax
c0101c2a:	83 c0 30             	add    $0x30,%eax
c0101c2d:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101c32:	8b 40 0c             	mov    0xc(%eax),%eax
c0101c35:	8b 40 04             	mov    0x4(%eax),%eax
c0101c38:	a3 cc 80 10 c0       	mov    %eax,0xc01080cc
c0101c3d:	8b 45 08             	mov    0x8(%ebp),%eax
c0101c40:	c1 e0 06             	shl    $0x6,%eax
c0101c43:	89 c2                	mov    %eax,%edx
c0101c45:	c1 e2 06             	shl    $0x6,%edx
c0101c48:	01 d0                	add    %edx,%eax
c0101c4a:	83 c0 30             	add    $0x30,%eax
c0101c4d:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101c52:	8b 40 0c             	mov    0xc(%eax),%eax
c0101c55:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101c58:	8b 45 08             	mov    0x8(%ebp),%eax
c0101c5b:	c1 e0 06             	shl    $0x6,%eax
c0101c5e:	89 c2                	mov    %eax,%edx
c0101c60:	c1 e2 06             	shl    $0x6,%edx
c0101c63:	01 d0                	add    %edx,%eax
c0101c65:	83 c0 30             	add    $0x30,%eax
c0101c68:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101c6d:	8b 50 0c             	mov    0xc(%eax),%edx
c0101c70:	8b 45 08             	mov    0x8(%ebp),%eax
c0101c73:	c1 e0 06             	shl    $0x6,%eax
c0101c76:	89 c1                	mov    %eax,%ecx
c0101c78:	c1 e1 06             	shl    $0x6,%ecx
c0101c7b:	01 c8                	add    %ecx,%eax
c0101c7d:	83 c0 30             	add    $0x30,%eax
c0101c80:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101c85:	8b 40 08             	mov    0x8(%eax),%eax
c0101c88:	89 42 38             	mov    %eax,0x38(%edx)
c0101c8b:	8b 45 08             	mov    0x8(%ebp),%eax
c0101c8e:	c1 e0 06             	shl    $0x6,%eax
c0101c91:	89 c2                	mov    %eax,%edx
c0101c93:	c1 e2 06             	shl    $0x6,%edx
c0101c96:	01 d0                	add    %edx,%eax
c0101c98:	83 c0 30             	add    $0x30,%eax
c0101c9b:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101ca0:	8b 40 08             	mov    0x8(%eax),%eax
c0101ca3:	85 c0                	test   %eax,%eax
c0101ca5:	74 1e                	je     c0101cc5 <delete_PCB+0x356>
c0101ca7:	8b 45 08             	mov    0x8(%ebp),%eax
c0101caa:	c1 e0 06             	shl    $0x6,%eax
c0101cad:	89 c2                	mov    %eax,%edx
c0101caf:	c1 e2 06             	shl    $0x6,%edx
c0101cb2:	01 d0                	add    %edx,%eax
c0101cb4:	83 c0 30             	add    $0x30,%eax
c0101cb7:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101cbc:	8b 40 08             	mov    0x8(%eax),%eax
c0101cbf:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101cc2:	89 50 3c             	mov    %edx,0x3c(%eax)
c0101cc5:	c9                   	leave  
c0101cc6:	c3                   	ret    

c0101cc7 <b_p>:
c0101cc7:	55                   	push   %ebp
c0101cc8:	89 e5                	mov    %esp,%ebp
c0101cca:	5d                   	pop    %ebp
c0101ccb:	c3                   	ret    

c0101ccc <reschedule>:
c0101ccc:	55                   	push   %ebp
c0101ccd:	89 e5                	mov    %esp,%ebp
c0101ccf:	83 ec 18             	sub    $0x18,%esp
c0101cd2:	a1 b8 80 10 c0       	mov    0xc01080b8,%eax
c0101cd7:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101cda:	a1 00 5a 14 c0       	mov    0xc0145a00,%eax
c0101cdf:	83 f8 01             	cmp    $0x1,%eax
c0101ce2:	75 0b                	jne    c0101cef <reschedule+0x23>
c0101ce4:	a1 04 5a 14 c0       	mov    0xc0145a04,%eax
c0101ce9:	85 c0                	test   %eax,%eax
c0101ceb:	75 02                	jne    c0101cef <reschedule+0x23>
c0101ced:	eb fe                	jmp    c0101ced <reschedule+0x21>
c0101cef:	a1 00 5a 14 c0       	mov    0xc0145a00,%eax
c0101cf4:	83 f8 01             	cmp    $0x1,%eax
c0101cf7:	0f 8e 85 00 00 00    	jle    c0101d82 <reschedule+0xb6>
c0101cfd:	e8 c5 ff ff ff       	call   c0101cc7 <b_p>
c0101d02:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101d05:	c1 e0 06             	shl    $0x6,%eax
c0101d08:	89 c2                	mov    %eax,%edx
c0101d0a:	c1 e2 06             	shl    $0x6,%edx
c0101d0d:	01 d0                	add    %edx,%eax
c0101d0f:	83 c0 30             	add    $0x30,%eax
c0101d12:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101d17:	8b 40 08             	mov    0x8(%eax),%eax
c0101d1a:	8b 00                	mov    (%eax),%eax
c0101d1c:	83 ec 0c             	sub    $0xc,%esp
c0101d1f:	50                   	push   %eax
c0101d20:	e8 b9 f6 ff ff       	call   c01013de <print_tf>
c0101d25:	83 c4 10             	add    $0x10,%esp
c0101d28:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101d2b:	c1 e0 06             	shl    $0x6,%eax
c0101d2e:	89 c2                	mov    %eax,%edx
c0101d30:	c1 e2 06             	shl    $0x6,%edx
c0101d33:	01 d0                	add    %edx,%eax
c0101d35:	83 c0 30             	add    $0x30,%eax
c0101d38:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101d3d:	8b 40 08             	mov    0x8(%eax),%eax
c0101d40:	83 c0 40             	add    $0x40,%eax
c0101d43:	05 f8 0f 00 00       	add    $0xff8,%eax
c0101d48:	83 ec 0c             	sub    $0xc,%esp
c0101d4b:	50                   	push   %eax
c0101d4c:	e8 11 e6 ff ff       	call   c0100362 <set_tss>
c0101d51:	83 c4 10             	add    $0x10,%esp
c0101d54:	66 b8 23 00          	mov    $0x23,%ax
c0101d58:	8e d8                	mov    %eax,%ds
c0101d5a:	8e c0                	mov    %eax,%es
c0101d5c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101d5f:	c1 e0 06             	shl    $0x6,%eax
c0101d62:	89 c2                	mov    %eax,%edx
c0101d64:	c1 e2 06             	shl    $0x6,%edx
c0101d67:	01 d0                	add    %edx,%eax
c0101d69:	83 c0 30             	add    $0x30,%eax
c0101d6c:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101d71:	8b 40 08             	mov    0x8(%eax),%eax
c0101d74:	8b 00                	mov    (%eax),%eax
c0101d76:	89 c4                	mov    %eax,%esp
c0101d78:	61                   	popa   
c0101d79:	83 c4 08             	add    $0x8,%esp
c0101d7c:	cf                   	iret   
c0101d7d:	e9 15 01 00 00       	jmp    c0101e97 <reschedule+0x1cb>
c0101d82:	8b 0d b8 80 10 c0    	mov    0xc01080b8,%ecx
c0101d88:	a1 c0 80 10 c0       	mov    0xc01080c0,%eax
c0101d8d:	c1 e0 06             	shl    $0x6,%eax
c0101d90:	89 c2                	mov    %eax,%edx
c0101d92:	c1 e2 06             	shl    $0x6,%edx
c0101d95:	01 d0                	add    %edx,%eax
c0101d97:	8d 90 00 8b 10 c0    	lea    -0x3fef7500(%eax),%edx
c0101d9d:	89 c8                	mov    %ecx,%eax
c0101d9f:	c1 e0 06             	shl    $0x6,%eax
c0101da2:	89 c1                	mov    %eax,%ecx
c0101da4:	c1 e1 06             	shl    $0x6,%ecx
c0101da7:	01 c8                	add    %ecx,%eax
c0101da9:	83 c0 30             	add    $0x30,%eax
c0101dac:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101db1:	89 50 08             	mov    %edx,0x8(%eax)
c0101db4:	8b 0d c0 80 10 c0    	mov    0xc01080c0,%ecx
c0101dba:	a1 b8 80 10 c0       	mov    0xc01080b8,%eax
c0101dbf:	c1 e0 06             	shl    $0x6,%eax
c0101dc2:	89 c2                	mov    %eax,%edx
c0101dc4:	c1 e2 06             	shl    $0x6,%edx
c0101dc7:	01 d0                	add    %edx,%eax
c0101dc9:	8d 90 00 8b 10 c0    	lea    -0x3fef7500(%eax),%edx
c0101dcf:	89 c8                	mov    %ecx,%eax
c0101dd1:	c1 e0 06             	shl    $0x6,%eax
c0101dd4:	89 c1                	mov    %eax,%ecx
c0101dd6:	c1 e1 06             	shl    $0x6,%ecx
c0101dd9:	01 c8                	add    %ecx,%eax
c0101ddb:	83 c0 30             	add    $0x30,%eax
c0101dde:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101de3:	89 50 0c             	mov    %edx,0xc(%eax)
c0101de6:	a1 c4 80 10 c0       	mov    0xc01080c4,%eax
c0101deb:	a3 bc 80 10 c0       	mov    %eax,0xc01080bc
c0101df0:	c7 05 c0 80 10 c0 00 	movl   $0x0,0xc01080c0
c0101df7:	00 00 00 
c0101dfa:	c7 05 c4 80 10 c0 00 	movl   $0x0,0xc01080c4
c0101e01:	00 00 00 
c0101e04:	8b 15 00 5a 14 c0    	mov    0xc0145a00,%edx
c0101e0a:	a1 04 5a 14 c0       	mov    0xc0145a04,%eax
c0101e0f:	01 d0                	add    %edx,%eax
c0101e11:	a3 00 5a 14 c0       	mov    %eax,0xc0145a00
c0101e16:	c7 05 04 5a 14 c0 00 	movl   $0x0,0xc0145a04
c0101e1d:	00 00 00 
c0101e20:	c7 45 f4 00 8b 10 c0 	movl   $0xc0108b00,-0xc(%ebp)
c0101e27:	eb 13                	jmp    c0101e3c <reschedule+0x170>
c0101e29:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101e2c:	c7 40 30 01 00 00 00 	movl   $0x1,0x30(%eax)
c0101e33:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101e36:	8b 40 38             	mov    0x38(%eax),%eax
c0101e39:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101e3c:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0101e40:	75 e7                	jne    c0101e29 <reschedule+0x15d>
c0101e42:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101e45:	c1 e0 06             	shl    $0x6,%eax
c0101e48:	89 c2                	mov    %eax,%edx
c0101e4a:	c1 e2 06             	shl    $0x6,%edx
c0101e4d:	01 d0                	add    %edx,%eax
c0101e4f:	83 c0 30             	add    $0x30,%eax
c0101e52:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101e57:	8b 40 08             	mov    0x8(%eax),%eax
c0101e5a:	83 c0 40             	add    $0x40,%eax
c0101e5d:	05 f8 0f 00 00       	add    $0xff8,%eax
c0101e62:	83 ec 0c             	sub    $0xc,%esp
c0101e65:	50                   	push   %eax
c0101e66:	e8 f7 e4 ff ff       	call   c0100362 <set_tss>
c0101e6b:	83 c4 10             	add    $0x10,%esp
c0101e6e:	66 b8 23 00          	mov    $0x23,%ax
c0101e72:	8e d8                	mov    %eax,%ds
c0101e74:	8e c0                	mov    %eax,%es
c0101e76:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101e79:	c1 e0 06             	shl    $0x6,%eax
c0101e7c:	89 c2                	mov    %eax,%edx
c0101e7e:	c1 e2 06             	shl    $0x6,%edx
c0101e81:	01 d0                	add    %edx,%eax
c0101e83:	83 c0 30             	add    $0x30,%eax
c0101e86:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101e8b:	8b 40 08             	mov    0x8(%eax),%eax
c0101e8e:	8b 00                	mov    (%eax),%eax
c0101e90:	89 c4                	mov    %eax,%esp
c0101e92:	61                   	popa   
c0101e93:	83 c4 08             	add    $0x8,%esp
c0101e96:	cf                   	iret   
c0101e97:	c9                   	leave  
c0101e98:	c3                   	ret    

c0101e99 <time_treat>:
c0101e99:	55                   	push   %ebp
c0101e9a:	89 e5                	mov    %esp,%ebp
c0101e9c:	83 ec 08             	sub    $0x8,%esp
c0101e9f:	a1 00 5a 14 c0       	mov    0xc0145a00,%eax
c0101ea4:	83 f8 01             	cmp    $0x1,%eax
c0101ea7:	0f 84 c3 00 00 00    	je     c0101f70 <time_treat+0xd7>
c0101ead:	a1 b8 80 10 c0       	mov    0xc01080b8,%eax
c0101eb2:	c1 e0 06             	shl    $0x6,%eax
c0101eb5:	89 c2                	mov    %eax,%edx
c0101eb7:	c1 e2 06             	shl    $0x6,%edx
c0101eba:	01 d0                	add    %edx,%eax
c0101ebc:	83 c0 30             	add    $0x30,%eax
c0101ebf:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101ec4:	8b 40 08             	mov    0x8(%eax),%eax
c0101ec7:	8b 50 34             	mov    0x34(%eax),%edx
c0101eca:	83 ea 01             	sub    $0x1,%edx
c0101ecd:	89 50 34             	mov    %edx,0x34(%eax)
c0101ed0:	a1 b8 80 10 c0       	mov    0xc01080b8,%eax
c0101ed5:	c1 e0 06             	shl    $0x6,%eax
c0101ed8:	89 c2                	mov    %eax,%edx
c0101eda:	c1 e2 06             	shl    $0x6,%edx
c0101edd:	01 d0                	add    %edx,%eax
c0101edf:	83 c0 30             	add    $0x30,%eax
c0101ee2:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101ee7:	8b 40 08             	mov    0x8(%eax),%eax
c0101eea:	8b 40 34             	mov    0x34(%eax),%eax
c0101eed:	85 c0                	test   %eax,%eax
c0101eef:	75 7f                	jne    c0101f70 <time_treat+0xd7>
c0101ef1:	a1 b8 80 10 c0       	mov    0xc01080b8,%eax
c0101ef6:	c1 e0 06             	shl    $0x6,%eax
c0101ef9:	89 c2                	mov    %eax,%edx
c0101efb:	c1 e2 06             	shl    $0x6,%edx
c0101efe:	01 d0                	add    %edx,%eax
c0101f00:	83 c0 30             	add    $0x30,%eax
c0101f03:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101f08:	8b 40 08             	mov    0x8(%eax),%eax
c0101f0b:	8b 50 2c             	mov    0x2c(%eax),%edx
c0101f0e:	a1 b8 80 10 c0       	mov    0xc01080b8,%eax
c0101f13:	c1 e0 06             	shl    $0x6,%eax
c0101f16:	89 c1                	mov    %eax,%ecx
c0101f18:	c1 e1 06             	shl    $0x6,%ecx
c0101f1b:	01 c8                	add    %ecx,%eax
c0101f1d:	83 c0 30             	add    $0x30,%eax
c0101f20:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101f25:	8b 40 08             	mov    0x8(%eax),%eax
c0101f28:	83 c0 08             	add    $0x8,%eax
c0101f2b:	83 ec 0c             	sub    $0xc,%esp
c0101f2e:	52                   	push   %edx
c0101f2f:	68 20 4e 00 00       	push   $0x4e20
c0101f34:	50                   	push   %eax
c0101f35:	ff 75 08             	pushl  0x8(%ebp)
c0101f38:	6a 02                	push   $0x2
c0101f3a:	e8 75 f6 ff ff       	call   c01015b4 <add_PCB>
c0101f3f:	83 c4 20             	add    $0x20,%esp
c0101f42:	a1 b8 80 10 c0       	mov    0xc01080b8,%eax
c0101f47:	c1 e0 06             	shl    $0x6,%eax
c0101f4a:	89 c2                	mov    %eax,%edx
c0101f4c:	c1 e2 06             	shl    $0x6,%edx
c0101f4f:	01 d0                	add    %edx,%eax
c0101f51:	83 c0 30             	add    $0x30,%eax
c0101f54:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101f59:	8b 40 08             	mov    0x8(%eax),%eax
c0101f5c:	8b 40 04             	mov    0x4(%eax),%eax
c0101f5f:	83 ec 0c             	sub    $0xc,%esp
c0101f62:	50                   	push   %eax
c0101f63:	e8 07 fa ff ff       	call   c010196f <delete_PCB>
c0101f68:	83 c4 10             	add    $0x10,%esp
c0101f6b:	e8 5c fd ff ff       	call   c0101ccc <reschedule>
c0101f70:	c9                   	leave  
c0101f71:	c3                   	ret    

c0101f72 <process_exit>:
c0101f72:	55                   	push   %ebp
c0101f73:	89 e5                	mov    %esp,%ebp
c0101f75:	83 ec 08             	sub    $0x8,%esp
c0101f78:	a1 b8 80 10 c0       	mov    0xc01080b8,%eax
c0101f7d:	c1 e0 06             	shl    $0x6,%eax
c0101f80:	89 c2                	mov    %eax,%edx
c0101f82:	c1 e2 06             	shl    $0x6,%edx
c0101f85:	01 d0                	add    %edx,%eax
c0101f87:	83 c0 30             	add    $0x30,%eax
c0101f8a:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101f8f:	8b 40 08             	mov    0x8(%eax),%eax
c0101f92:	8b 40 04             	mov    0x4(%eax),%eax
c0101f95:	83 ec 0c             	sub    $0xc,%esp
c0101f98:	50                   	push   %eax
c0101f99:	e8 d1 f9 ff ff       	call   c010196f <delete_PCB>
c0101f9e:	83 c4 10             	add    $0x10,%esp
c0101fa1:	e8 26 fd ff ff       	call   c0101ccc <reschedule>
c0101fa6:	c9                   	leave  
c0101fa7:	c3                   	ret    

c0101fa8 <debug>:
c0101fa8:	55                   	push   %ebp
c0101fa9:	89 e5                	mov    %esp,%ebp
c0101fab:	83 ec 08             	sub    $0x8,%esp
c0101fae:	8b 15 04 5a 14 c0    	mov    0xc0145a04,%edx
c0101fb4:	a1 00 5a 14 c0       	mov    0xc0145a00,%eax
c0101fb9:	83 ec 04             	sub    $0x4,%esp
c0101fbc:	52                   	push   %edx
c0101fbd:	50                   	push   %eax
c0101fbe:	68 ed 20 10 c0       	push   $0xc01020ed
c0101fc3:	e8 98 f1 ff ff       	call   c0101160 <printk>
c0101fc8:	83 c4 10             	add    $0x10,%esp
c0101fcb:	c9                   	leave  
c0101fcc:	c3                   	ret    

c0101fcd <getpid>:
c0101fcd:	55                   	push   %ebp
c0101fce:	89 e5                	mov    %esp,%ebp
c0101fd0:	a1 b8 80 10 c0       	mov    0xc01080b8,%eax
c0101fd5:	c1 e0 06             	shl    $0x6,%eax
c0101fd8:	89 c2                	mov    %eax,%edx
c0101fda:	c1 e2 06             	shl    $0x6,%edx
c0101fdd:	01 d0                	add    %edx,%eax
c0101fdf:	83 c0 30             	add    $0x30,%eax
c0101fe2:	05 00 8b 10 c0       	add    $0xc0108b00,%eax
c0101fe7:	8b 40 08             	mov    0x8(%eax),%eax
c0101fea:	8b 40 04             	mov    0x4(%eax),%eax
c0101fed:	5d                   	pop    %ebp
c0101fee:	c3                   	ret    
