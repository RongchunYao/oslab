
kernel:     file format elf32-i386


Disassembly of section .text:

c0100000 <timer_event>:
c0100000:	55                   	push   %ebp
c0100001:	89 e5                	mov    %esp,%ebp
c0100003:	a1 00 00 11 c0       	mov    0xc0110000,%eax
c0100008:	83 c0 01             	add    $0x1,%eax
c010000b:	a3 00 00 11 c0       	mov    %eax,0xc0110000
c0100010:	5d                   	pop    %ebp
c0100011:	c3                   	ret    

c0100012 <get_time>:
c0100012:	55                   	push   %ebp
c0100013:	89 e5                	mov    %esp,%ebp
c0100015:	a1 00 00 11 c0       	mov    0xc0110000,%eax
c010001a:	5d                   	pop    %ebp
c010001b:	c3                   	ret    

c010001c <time_pop>:
c010001c:	55                   	push   %ebp
c010001d:	89 e5                	mov    %esp,%ebp
c010001f:	a1 00 00 11 c0       	mov    0xc0110000,%eax
c0100024:	83 c0 01             	add    $0x1,%eax
c0100027:	a3 00 00 11 c0       	mov    %eax,0xc0110000
c010002c:	5d                   	pop    %ebp
c010002d:	c3                   	ret    

c010002e <press_key>:
c010002e:	55                   	push   %ebp
c010002f:	89 e5                	mov    %esp,%ebp
c0100031:	83 ec 10             	sub    $0x10,%esp
c0100034:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c010003b:	e9 91 00 00 00       	jmp    c01000d1 <press_key+0xa3>
c0100040:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100043:	8b 04 85 00 50 10 c0 	mov    -0x3fefb000(,%eax,4),%eax
c010004a:	3b 45 08             	cmp    0x8(%ebp),%eax
c010004d:	75 7e                	jne    c01000cd <press_key+0x9f>
c010004f:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100052:	c7 04 85 40 00 11 c0 	movl   $0x1,-0x3feeffc0(,%eax,4)
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
c0100081:	a1 04 00 11 c0       	mov    0xc0110004,%eax
c0100086:	83 f8 03             	cmp    $0x3,%eax
c0100089:	75 05                	jne    c0100090 <press_key+0x62>
c010008b:	e9 80 00 00 00       	jmp    c0100110 <press_key+0xe2>
c0100090:	83 7d fc 03          	cmpl   $0x3,-0x4(%ebp)
c0100094:	75 0b                	jne    c01000a1 <press_key+0x73>
c0100096:	a1 04 00 11 c0       	mov    0xc0110004,%eax
c010009b:	85 c0                	test   %eax,%eax
c010009d:	75 02                	jne    c01000a1 <press_key+0x73>
c010009f:	eb 6f                	jmp    c0100110 <press_key+0xe2>
c01000a1:	83 7d fc 12          	cmpl   $0x12,-0x4(%ebp)
c01000a5:	75 0c                	jne    c01000b3 <press_key+0x85>
c01000a7:	a1 04 00 11 c0       	mov    0xc0110004,%eax
c01000ac:	83 f8 16             	cmp    $0x16,%eax
c01000af:	75 02                	jne    c01000b3 <press_key+0x85>
c01000b1:	eb 5d                	jmp    c0100110 <press_key+0xe2>
c01000b3:	83 7d fc 16          	cmpl   $0x16,-0x4(%ebp)
c01000b7:	75 0c                	jne    c01000c5 <press_key+0x97>
c01000b9:	a1 04 00 11 c0       	mov    0xc0110004,%eax
c01000be:	83 f8 12             	cmp    $0x12,%eax
c01000c1:	75 02                	jne    c01000c5 <press_key+0x97>
c01000c3:	eb 4b                	jmp    c0100110 <press_key+0xe2>
c01000c5:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01000c8:	a3 04 00 11 c0       	mov    %eax,0xc0110004
c01000cd:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c01000d1:	83 7d fc 19          	cmpl   $0x19,-0x4(%ebp)
c01000d5:	0f 8e 65 ff ff ff    	jle    c0100040 <press_key+0x12>
c01000db:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c01000e2:	eb 26                	jmp    c010010a <press_key+0xdc>
c01000e4:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01000e7:	8b 04 85 00 50 10 c0 	mov    -0x3fefb000(,%eax,4),%eax
c01000ee:	8b 55 08             	mov    0x8(%ebp),%edx
c01000f1:	83 c2 80             	add    $0xffffff80,%edx
c01000f4:	39 d0                	cmp    %edx,%eax
c01000f6:	75 0e                	jne    c0100106 <press_key+0xd8>
c01000f8:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01000fb:	c7 04 85 40 00 11 c0 	movl   $0x0,-0x3feeffc0(,%eax,4)
c0100102:	00 00 00 00 
c0100106:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c010010a:	83 7d fc 19          	cmpl   $0x19,-0x4(%ebp)
c010010e:	7e d4                	jle    c01000e4 <press_key+0xb6>
c0100110:	c9                   	leave  
c0100111:	c3                   	ret    

c0100112 <last_key_code>:
c0100112:	55                   	push   %ebp
c0100113:	89 e5                	mov    %esp,%ebp
c0100115:	a1 04 00 11 c0       	mov    0xc0110004,%eax
c010011a:	5d                   	pop    %ebp
c010011b:	c3                   	ret    

c010011c <reset_last_key>:
c010011c:	55                   	push   %ebp
c010011d:	89 e5                	mov    %esp,%ebp
c010011f:	c7 05 04 00 11 c0 00 	movl   $0x0,0xc0110004
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
c0100155:	68 8c 34 10 c0       	push   $0xc010348c
c010015a:	e8 3a 10 00 00       	call   c0101199 <printk>
c010015f:	83 c4 10             	add    $0x10,%esp
c0100162:	e8 d4 ff ff ff       	call   c010013b <disable_interrupt>
c0100167:	e8 7f 00 00 00       	call   c01001eb <init_serial>
c010016c:	e8 33 01 00 00       	call   c01002a4 <init_timer>
c0100171:	e8 ae 05 00 00       	call   c0100724 <init_intr>
c0100176:	e8 e6 07 00 00       	call   c0100961 <init_idt>
c010017b:	e8 3f 04 00 00       	call   c01005bf <init_seg>
c0100180:	e8 cd 2b 00 00       	call   c0102d52 <page_init>
c0100185:	e8 fb 16 00 00       	call   c0101885 <init_PCB>
c010018a:	83 ec 08             	sub    $0x8,%esp
c010018d:	68 a3 34 10 c0       	push   $0xc01034a3
c0100192:	68 00 b0 04 00       	push   $0x4b000
c0100197:	e8 6b 25 00 00       	call   c0102707 <load_PCB>
c010019c:	83 c4 10             	add    $0x10,%esp
c010019f:	83 ec 08             	sub    $0x8,%esp
c01001a2:	68 a8 34 10 c0       	push   $0xc01034a8
c01001a7:	68 00 90 01 00       	push   $0x19000
c01001ac:	e8 56 25 00 00       	call   c0102707 <load_PCB>
c01001b1:	83 c4 10             	add    $0x10,%esp
c01001b4:	e8 19 16 00 00       	call   c01017d2 <debug>
c01001b9:	e8 e1 1f 00 00       	call   c010219f <reschedule>
c01001be:	eb fe                	jmp    c01001be <main+0x7d>

c01001c0 <inb>:
c01001c0:	55                   	push   %ebp
c01001c1:	89 e5                	mov    %esp,%ebp
c01001c3:	83 ec 10             	sub    $0x10,%esp
c01001c6:	8b 45 08             	mov    0x8(%ebp),%eax
c01001c9:	89 c2                	mov    %eax,%edx
c01001cb:	ec                   	in     (%dx),%al
c01001cc:	88 45 ff             	mov    %al,-0x1(%ebp)
c01001cf:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c01001d3:	c9                   	leave  
c01001d4:	c3                   	ret    

c01001d5 <outb>:
c01001d5:	55                   	push   %ebp
c01001d6:	89 e5                	mov    %esp,%ebp
c01001d8:	83 ec 04             	sub    $0x4,%esp
c01001db:	8b 45 0c             	mov    0xc(%ebp),%eax
c01001de:	88 45 fc             	mov    %al,-0x4(%ebp)
c01001e1:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c01001e5:	8b 55 08             	mov    0x8(%ebp),%edx
c01001e8:	ee                   	out    %al,(%dx)
c01001e9:	c9                   	leave  
c01001ea:	c3                   	ret    

c01001eb <init_serial>:
c01001eb:	55                   	push   %ebp
c01001ec:	89 e5                	mov    %esp,%ebp
c01001ee:	6a 00                	push   $0x0
c01001f0:	68 f9 03 00 00       	push   $0x3f9
c01001f5:	e8 db ff ff ff       	call   c01001d5 <outb>
c01001fa:	83 c4 08             	add    $0x8,%esp
c01001fd:	68 80 00 00 00       	push   $0x80
c0100202:	68 fb 03 00 00       	push   $0x3fb
c0100207:	e8 c9 ff ff ff       	call   c01001d5 <outb>
c010020c:	83 c4 08             	add    $0x8,%esp
c010020f:	6a 03                	push   $0x3
c0100211:	68 f8 03 00 00       	push   $0x3f8
c0100216:	e8 ba ff ff ff       	call   c01001d5 <outb>
c010021b:	83 c4 08             	add    $0x8,%esp
c010021e:	6a 00                	push   $0x0
c0100220:	68 f9 03 00 00       	push   $0x3f9
c0100225:	e8 ab ff ff ff       	call   c01001d5 <outb>
c010022a:	83 c4 08             	add    $0x8,%esp
c010022d:	6a 03                	push   $0x3
c010022f:	68 fb 03 00 00       	push   $0x3fb
c0100234:	e8 9c ff ff ff       	call   c01001d5 <outb>
c0100239:	83 c4 08             	add    $0x8,%esp
c010023c:	68 c7 00 00 00       	push   $0xc7
c0100241:	68 fa 03 00 00       	push   $0x3fa
c0100246:	e8 8a ff ff ff       	call   c01001d5 <outb>
c010024b:	83 c4 08             	add    $0x8,%esp
c010024e:	6a 0b                	push   $0xb
c0100250:	68 fc 03 00 00       	push   $0x3fc
c0100255:	e8 7b ff ff ff       	call   c01001d5 <outb>
c010025a:	83 c4 08             	add    $0x8,%esp
c010025d:	c9                   	leave  
c010025e:	c3                   	ret    

c010025f <is_serial_idle>:
c010025f:	55                   	push   %ebp
c0100260:	89 e5                	mov    %esp,%ebp
c0100262:	68 fd 03 00 00       	push   $0x3fd
c0100267:	e8 54 ff ff ff       	call   c01001c0 <inb>
c010026c:	83 c4 04             	add    $0x4,%esp
c010026f:	0f b6 c0             	movzbl %al,%eax
c0100272:	83 e0 20             	and    $0x20,%eax
c0100275:	c9                   	leave  
c0100276:	c3                   	ret    

c0100277 <serial_out>:
c0100277:	55                   	push   %ebp
c0100278:	89 e5                	mov    %esp,%ebp
c010027a:	83 ec 04             	sub    $0x4,%esp
c010027d:	8b 45 08             	mov    0x8(%ebp),%eax
c0100280:	88 45 fc             	mov    %al,-0x4(%ebp)
c0100283:	90                   	nop
c0100284:	e8 d6 ff ff ff       	call   c010025f <is_serial_idle>
c0100289:	85 c0                	test   %eax,%eax
c010028b:	74 f7                	je     c0100284 <serial_out+0xd>
c010028d:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c0100291:	0f b6 c0             	movzbl %al,%eax
c0100294:	50                   	push   %eax
c0100295:	68 f8 03 00 00       	push   $0x3f8
c010029a:	e8 36 ff ff ff       	call   c01001d5 <outb>
c010029f:	83 c4 08             	add    $0x8,%esp
c01002a2:	c9                   	leave  
c01002a3:	c3                   	ret    

c01002a4 <init_timer>:
c01002a4:	55                   	push   %ebp
c01002a5:	89 e5                	mov    %esp,%ebp
c01002a7:	83 ec 20             	sub    $0x20,%esp
c01002aa:	c7 45 fc a9 04 00 00 	movl   $0x4a9,-0x4(%ebp)
c01002b1:	c7 45 f8 43 00 00 00 	movl   $0x43,-0x8(%ebp)
c01002b8:	c6 45 f7 34          	movb   $0x34,-0x9(%ebp)
c01002bc:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c01002c0:	8b 55 f8             	mov    -0x8(%ebp),%edx
c01002c3:	ee                   	out    %al,(%dx)
c01002c4:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01002c7:	99                   	cltd   
c01002c8:	c1 ea 18             	shr    $0x18,%edx
c01002cb:	01 d0                	add    %edx,%eax
c01002cd:	0f b6 c0             	movzbl %al,%eax
c01002d0:	29 d0                	sub    %edx,%eax
c01002d2:	0f b6 c0             	movzbl %al,%eax
c01002d5:	c7 45 f0 40 00 00 00 	movl   $0x40,-0x10(%ebp)
c01002dc:	88 45 ef             	mov    %al,-0x11(%ebp)
c01002df:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
c01002e3:	8b 55 f0             	mov    -0x10(%ebp),%edx
c01002e6:	ee                   	out    %al,(%dx)
c01002e7:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01002ea:	8d 90 ff 00 00 00    	lea    0xff(%eax),%edx
c01002f0:	85 c0                	test   %eax,%eax
c01002f2:	0f 48 c2             	cmovs  %edx,%eax
c01002f5:	c1 f8 08             	sar    $0x8,%eax
c01002f8:	0f b6 c0             	movzbl %al,%eax
c01002fb:	c7 45 e8 40 00 00 00 	movl   $0x40,-0x18(%ebp)
c0100302:	88 45 e7             	mov    %al,-0x19(%ebp)
c0100305:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
c0100309:	8b 55 e8             	mov    -0x18(%ebp),%edx
c010030c:	ee                   	out    %al,(%dx)
c010030d:	c9                   	leave  
c010030e:	c3                   	ret    

c010030f <write_gdtr>:
c010030f:	55                   	push   %ebp
c0100310:	89 e5                	mov    %esp,%ebp
c0100312:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100315:	83 e8 01             	sub    $0x1,%eax
c0100318:	66 a3 ac 00 11 c0    	mov    %ax,0xc01100ac
c010031e:	8b 45 08             	mov    0x8(%ebp),%eax
c0100321:	66 a3 ae 00 11 c0    	mov    %ax,0xc01100ae
c0100327:	8b 45 08             	mov    0x8(%ebp),%eax
c010032a:	c1 e8 10             	shr    $0x10,%eax
c010032d:	66 a3 b0 00 11 c0    	mov    %ax,0xc01100b0
c0100333:	b8 ac 00 11 c0       	mov    $0xc01100ac,%eax
c0100338:	0f 01 10             	lgdtl  (%eax)
c010033b:	5d                   	pop    %ebp
c010033c:	c3                   	ret    

c010033d <set_tss>:
c010033d:	55                   	push   %ebp
c010033e:	89 e5                	mov    %esp,%ebp
c0100340:	8b 45 08             	mov    0x8(%ebp),%eax
c0100343:	a3 84 30 13 c0       	mov    %eax,0xc0133084
c0100348:	5d                   	pop    %ebp
c0100349:	c3                   	ret    

c010034a <Makegdt>:
c010034a:	55                   	push   %ebp
c010034b:	89 e5                	mov    %esp,%ebp
c010034d:	8b 45 08             	mov    0x8(%ebp),%eax
c0100350:	c1 e8 0c             	shr    $0xc,%eax
c0100353:	89 c2                	mov    %eax,%edx
c0100355:	8b 45 18             	mov    0x18(%ebp),%eax
c0100358:	66 89 14 c5 00 30 13 	mov    %dx,-0x3fecd000(,%eax,8)
c010035f:	c0 
c0100360:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100363:	89 c2                	mov    %eax,%edx
c0100365:	8b 45 18             	mov    0x18(%ebp),%eax
c0100368:	66 89 14 c5 02 30 13 	mov    %dx,-0x3feccffe(,%eax,8)
c010036f:	c0 
c0100370:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100373:	c1 e8 10             	shr    $0x10,%eax
c0100376:	89 c2                	mov    %eax,%edx
c0100378:	8b 45 18             	mov    0x18(%ebp),%eax
c010037b:	88 14 c5 04 30 13 c0 	mov    %dl,-0x3feccffc(,%eax,8)
c0100382:	8b 45 10             	mov    0x10(%ebp),%eax
c0100385:	83 e0 0f             	and    $0xf,%eax
c0100388:	89 c2                	mov    %eax,%edx
c010038a:	8b 45 18             	mov    0x18(%ebp),%eax
c010038d:	89 d1                	mov    %edx,%ecx
c010038f:	83 e1 0f             	and    $0xf,%ecx
c0100392:	0f b6 14 c5 05 30 13 	movzbl -0x3feccffb(,%eax,8),%edx
c0100399:	c0 
c010039a:	83 e2 f0             	and    $0xfffffff0,%edx
c010039d:	09 ca                	or     %ecx,%edx
c010039f:	88 14 c5 05 30 13 c0 	mov    %dl,-0x3feccffb(,%eax,8)
c01003a6:	8b 45 18             	mov    0x18(%ebp),%eax
c01003a9:	0f b6 14 c5 05 30 13 	movzbl -0x3feccffb(,%eax,8),%edx
c01003b0:	c0 
c01003b1:	83 ca 10             	or     $0x10,%edx
c01003b4:	88 14 c5 05 30 13 c0 	mov    %dl,-0x3feccffb(,%eax,8)
c01003bb:	8b 45 14             	mov    0x14(%ebp),%eax
c01003be:	83 e0 03             	and    $0x3,%eax
c01003c1:	89 c2                	mov    %eax,%edx
c01003c3:	8b 45 18             	mov    0x18(%ebp),%eax
c01003c6:	83 e2 03             	and    $0x3,%edx
c01003c9:	89 d1                	mov    %edx,%ecx
c01003cb:	c1 e1 05             	shl    $0x5,%ecx
c01003ce:	0f b6 14 c5 05 30 13 	movzbl -0x3feccffb(,%eax,8),%edx
c01003d5:	c0 
c01003d6:	83 e2 9f             	and    $0xffffff9f,%edx
c01003d9:	09 ca                	or     %ecx,%edx
c01003db:	88 14 c5 05 30 13 c0 	mov    %dl,-0x3feccffb(,%eax,8)
c01003e2:	8b 45 18             	mov    0x18(%ebp),%eax
c01003e5:	0f b6 14 c5 05 30 13 	movzbl -0x3feccffb(,%eax,8),%edx
c01003ec:	c0 
c01003ed:	83 ca 80             	or     $0xffffff80,%edx
c01003f0:	88 14 c5 05 30 13 c0 	mov    %dl,-0x3feccffb(,%eax,8)
c01003f7:	8b 45 08             	mov    0x8(%ebp),%eax
c01003fa:	c1 e8 1c             	shr    $0x1c,%eax
c01003fd:	83 e0 0f             	and    $0xf,%eax
c0100400:	89 c2                	mov    %eax,%edx
c0100402:	8b 45 18             	mov    0x18(%ebp),%eax
c0100405:	89 d1                	mov    %edx,%ecx
c0100407:	83 e1 0f             	and    $0xf,%ecx
c010040a:	0f b6 14 c5 06 30 13 	movzbl -0x3feccffa(,%eax,8),%edx
c0100411:	c0 
c0100412:	83 e2 f0             	and    $0xfffffff0,%edx
c0100415:	09 ca                	or     %ecx,%edx
c0100417:	88 14 c5 06 30 13 c0 	mov    %dl,-0x3feccffa(,%eax,8)
c010041e:	8b 45 18             	mov    0x18(%ebp),%eax
c0100421:	0f b6 14 c5 06 30 13 	movzbl -0x3feccffa(,%eax,8),%edx
c0100428:	c0 
c0100429:	83 e2 ef             	and    $0xffffffef,%edx
c010042c:	88 14 c5 06 30 13 c0 	mov    %dl,-0x3feccffa(,%eax,8)
c0100433:	8b 45 18             	mov    0x18(%ebp),%eax
c0100436:	0f b6 14 c5 06 30 13 	movzbl -0x3feccffa(,%eax,8),%edx
c010043d:	c0 
c010043e:	83 e2 df             	and    $0xffffffdf,%edx
c0100441:	88 14 c5 06 30 13 c0 	mov    %dl,-0x3feccffa(,%eax,8)
c0100448:	8b 45 18             	mov    0x18(%ebp),%eax
c010044b:	0f b6 14 c5 06 30 13 	movzbl -0x3feccffa(,%eax,8),%edx
c0100452:	c0 
c0100453:	83 ca 40             	or     $0x40,%edx
c0100456:	88 14 c5 06 30 13 c0 	mov    %dl,-0x3feccffa(,%eax,8)
c010045d:	8b 45 18             	mov    0x18(%ebp),%eax
c0100460:	0f b6 14 c5 06 30 13 	movzbl -0x3feccffa(,%eax,8),%edx
c0100467:	c0 
c0100468:	83 ca 80             	or     $0xffffff80,%edx
c010046b:	88 14 c5 06 30 13 c0 	mov    %dl,-0x3feccffa(,%eax,8)
c0100472:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100475:	c1 e8 18             	shr    $0x18,%eax
c0100478:	89 c2                	mov    %eax,%edx
c010047a:	8b 45 18             	mov    0x18(%ebp),%eax
c010047d:	88 14 c5 07 30 13 c0 	mov    %dl,-0x3feccff9(,%eax,8)
c0100484:	5d                   	pop    %ebp
c0100485:	c3                   	ret    

c0100486 <Maketss>:
c0100486:	55                   	push   %ebp
c0100487:	89 e5                	mov    %esp,%ebp
c0100489:	8b 45 08             	mov    0x8(%ebp),%eax
c010048c:	89 c2                	mov    %eax,%edx
c010048e:	8b 45 18             	mov    0x18(%ebp),%eax
c0100491:	66 89 14 c5 00 30 13 	mov    %dx,-0x3fecd000(,%eax,8)
c0100498:	c0 
c0100499:	8b 45 0c             	mov    0xc(%ebp),%eax
c010049c:	89 c2                	mov    %eax,%edx
c010049e:	8b 45 18             	mov    0x18(%ebp),%eax
c01004a1:	66 89 14 c5 02 30 13 	mov    %dx,-0x3feccffe(,%eax,8)
c01004a8:	c0 
c01004a9:	8b 45 0c             	mov    0xc(%ebp),%eax
c01004ac:	c1 e8 10             	shr    $0x10,%eax
c01004af:	89 c2                	mov    %eax,%edx
c01004b1:	8b 45 18             	mov    0x18(%ebp),%eax
c01004b4:	88 14 c5 04 30 13 c0 	mov    %dl,-0x3feccffc(,%eax,8)
c01004bb:	8b 45 10             	mov    0x10(%ebp),%eax
c01004be:	83 e0 0f             	and    $0xf,%eax
c01004c1:	89 c2                	mov    %eax,%edx
c01004c3:	8b 45 18             	mov    0x18(%ebp),%eax
c01004c6:	89 d1                	mov    %edx,%ecx
c01004c8:	83 e1 0f             	and    $0xf,%ecx
c01004cb:	0f b6 14 c5 05 30 13 	movzbl -0x3feccffb(,%eax,8),%edx
c01004d2:	c0 
c01004d3:	83 e2 f0             	and    $0xfffffff0,%edx
c01004d6:	09 ca                	or     %ecx,%edx
c01004d8:	88 14 c5 05 30 13 c0 	mov    %dl,-0x3feccffb(,%eax,8)
c01004df:	8b 45 18             	mov    0x18(%ebp),%eax
c01004e2:	0f b6 14 c5 05 30 13 	movzbl -0x3feccffb(,%eax,8),%edx
c01004e9:	c0 
c01004ea:	83 e2 ef             	and    $0xffffffef,%edx
c01004ed:	88 14 c5 05 30 13 c0 	mov    %dl,-0x3feccffb(,%eax,8)
c01004f4:	8b 45 14             	mov    0x14(%ebp),%eax
c01004f7:	83 e0 03             	and    $0x3,%eax
c01004fa:	89 c2                	mov    %eax,%edx
c01004fc:	8b 45 18             	mov    0x18(%ebp),%eax
c01004ff:	83 e2 03             	and    $0x3,%edx
c0100502:	89 d1                	mov    %edx,%ecx
c0100504:	c1 e1 05             	shl    $0x5,%ecx
c0100507:	0f b6 14 c5 05 30 13 	movzbl -0x3feccffb(,%eax,8),%edx
c010050e:	c0 
c010050f:	83 e2 9f             	and    $0xffffff9f,%edx
c0100512:	09 ca                	or     %ecx,%edx
c0100514:	88 14 c5 05 30 13 c0 	mov    %dl,-0x3feccffb(,%eax,8)
c010051b:	8b 45 18             	mov    0x18(%ebp),%eax
c010051e:	0f b6 14 c5 05 30 13 	movzbl -0x3feccffb(,%eax,8),%edx
c0100525:	c0 
c0100526:	83 ca 80             	or     $0xffffff80,%edx
c0100529:	88 14 c5 05 30 13 c0 	mov    %dl,-0x3feccffb(,%eax,8)
c0100530:	8b 45 08             	mov    0x8(%ebp),%eax
c0100533:	c1 e8 10             	shr    $0x10,%eax
c0100536:	83 e0 0f             	and    $0xf,%eax
c0100539:	89 c2                	mov    %eax,%edx
c010053b:	8b 45 18             	mov    0x18(%ebp),%eax
c010053e:	89 d1                	mov    %edx,%ecx
c0100540:	83 e1 0f             	and    $0xf,%ecx
c0100543:	0f b6 14 c5 06 30 13 	movzbl -0x3feccffa(,%eax,8),%edx
c010054a:	c0 
c010054b:	83 e2 f0             	and    $0xfffffff0,%edx
c010054e:	09 ca                	or     %ecx,%edx
c0100550:	88 14 c5 06 30 13 c0 	mov    %dl,-0x3feccffa(,%eax,8)
c0100557:	8b 45 18             	mov    0x18(%ebp),%eax
c010055a:	0f b6 14 c5 06 30 13 	movzbl -0x3feccffa(,%eax,8),%edx
c0100561:	c0 
c0100562:	83 e2 ef             	and    $0xffffffef,%edx
c0100565:	88 14 c5 06 30 13 c0 	mov    %dl,-0x3feccffa(,%eax,8)
c010056c:	8b 45 18             	mov    0x18(%ebp),%eax
c010056f:	0f b6 14 c5 06 30 13 	movzbl -0x3feccffa(,%eax,8),%edx
c0100576:	c0 
c0100577:	83 e2 df             	and    $0xffffffdf,%edx
c010057a:	88 14 c5 06 30 13 c0 	mov    %dl,-0x3feccffa(,%eax,8)
c0100581:	8b 45 18             	mov    0x18(%ebp),%eax
c0100584:	0f b6 14 c5 06 30 13 	movzbl -0x3feccffa(,%eax,8),%edx
c010058b:	c0 
c010058c:	83 ca 40             	or     $0x40,%edx
c010058f:	88 14 c5 06 30 13 c0 	mov    %dl,-0x3feccffa(,%eax,8)
c0100596:	8b 45 18             	mov    0x18(%ebp),%eax
c0100599:	0f b6 14 c5 06 30 13 	movzbl -0x3feccffa(,%eax,8),%edx
c01005a0:	c0 
c01005a1:	83 ca 80             	or     $0xffffff80,%edx
c01005a4:	88 14 c5 06 30 13 c0 	mov    %dl,-0x3feccffa(,%eax,8)
c01005ab:	8b 45 0c             	mov    0xc(%ebp),%eax
c01005ae:	c1 e8 18             	shr    $0x18,%eax
c01005b1:	89 c2                	mov    %eax,%edx
c01005b3:	8b 45 18             	mov    0x18(%ebp),%eax
c01005b6:	88 14 c5 07 30 13 c0 	mov    %dl,-0x3feccff9(,%eax,8)
c01005bd:	5d                   	pop    %ebp
c01005be:	c3                   	ret    

c01005bf <init_seg>:
c01005bf:	55                   	push   %ebp
c01005c0:	89 e5                	mov    %esp,%ebp
c01005c2:	83 ec 10             	sub    $0x10,%esp
c01005c5:	c7 05 a8 00 11 c0 00 	movl   $0x0,0xc01100a8
c01005cc:	00 00 00 
c01005cf:	6a 00                	push   $0x0
c01005d1:	6a 00                	push   $0x0
c01005d3:	6a 00                	push   $0x0
c01005d5:	6a 00                	push   $0x0
c01005d7:	6a 00                	push   $0x0
c01005d9:	e8 6c fd ff ff       	call   c010034a <Makegdt>
c01005de:	83 c4 14             	add    $0x14,%esp
c01005e1:	a1 a8 00 11 c0       	mov    0xc01100a8,%eax
c01005e6:	83 c0 01             	add    $0x1,%eax
c01005e9:	a3 a8 00 11 c0       	mov    %eax,0xc01100a8
c01005ee:	a1 a8 00 11 c0       	mov    0xc01100a8,%eax
c01005f3:	50                   	push   %eax
c01005f4:	6a 00                	push   $0x0
c01005f6:	6a 0a                	push   $0xa
c01005f8:	6a 00                	push   $0x0
c01005fa:	6a ff                	push   $0xffffffff
c01005fc:	e8 49 fd ff ff       	call   c010034a <Makegdt>
c0100601:	83 c4 14             	add    $0x14,%esp
c0100604:	a1 a8 00 11 c0       	mov    0xc01100a8,%eax
c0100609:	83 c0 01             	add    $0x1,%eax
c010060c:	a3 a8 00 11 c0       	mov    %eax,0xc01100a8
c0100611:	a1 a8 00 11 c0       	mov    0xc01100a8,%eax
c0100616:	50                   	push   %eax
c0100617:	6a 00                	push   $0x0
c0100619:	6a 02                	push   $0x2
c010061b:	6a 00                	push   $0x0
c010061d:	6a ff                	push   $0xffffffff
c010061f:	e8 26 fd ff ff       	call   c010034a <Makegdt>
c0100624:	83 c4 14             	add    $0x14,%esp
c0100627:	a1 a8 00 11 c0       	mov    0xc01100a8,%eax
c010062c:	83 c0 01             	add    $0x1,%eax
c010062f:	a3 a8 00 11 c0       	mov    %eax,0xc01100a8
c0100634:	a1 a8 00 11 c0       	mov    0xc01100a8,%eax
c0100639:	50                   	push   %eax
c010063a:	6a 03                	push   $0x3
c010063c:	6a 0a                	push   $0xa
c010063e:	6a 00                	push   $0x0
c0100640:	6a ff                	push   $0xffffffff
c0100642:	e8 03 fd ff ff       	call   c010034a <Makegdt>
c0100647:	83 c4 14             	add    $0x14,%esp
c010064a:	a1 a8 00 11 c0       	mov    0xc01100a8,%eax
c010064f:	83 c0 01             	add    $0x1,%eax
c0100652:	a3 a8 00 11 c0       	mov    %eax,0xc01100a8
c0100657:	a1 a8 00 11 c0       	mov    0xc01100a8,%eax
c010065c:	50                   	push   %eax
c010065d:	6a 03                	push   $0x3
c010065f:	6a 02                	push   $0x2
c0100661:	6a 00                	push   $0x0
c0100663:	6a ff                	push   $0xffffffff
c0100665:	e8 e0 fc ff ff       	call   c010034a <Makegdt>
c010066a:	83 c4 14             	add    $0x14,%esp
c010066d:	a1 a8 00 11 c0       	mov    0xc01100a8,%eax
c0100672:	83 c0 01             	add    $0x1,%eax
c0100675:	a3 a8 00 11 c0       	mov    %eax,0xc01100a8
c010067a:	c7 05 84 30 13 c0 00 	movl   $0x2f0000,0xc0133084
c0100681:	00 2f 00 
c0100684:	66 c7 05 88 30 13 c0 	movw   $0x10,0xc0133088
c010068b:	10 00 
c010068d:	a1 a8 00 11 c0       	mov    0xc01100a8,%eax
c0100692:	ba 80 30 13 c0       	mov    $0xc0133080,%edx
c0100697:	50                   	push   %eax
c0100698:	6a 00                	push   $0x0
c010069a:	6a 09                	push   $0x9
c010069c:	52                   	push   %edx
c010069d:	6a ff                	push   $0xffffffff
c010069f:	e8 e2 fd ff ff       	call   c0100486 <Maketss>
c01006a4:	83 c4 14             	add    $0x14,%esp
c01006a7:	a1 a8 00 11 c0       	mov    0xc01100a8,%eax
c01006ac:	83 c0 01             	add    $0x1,%eax
c01006af:	a3 a8 00 11 c0       	mov    %eax,0xc01100a8
c01006b4:	66 c7 05 dc 30 13 c0 	movw   $0x2b,0xc01330dc
c01006bb:	2b 00 
c01006bd:	66 b8 10 00          	mov    $0x10,%ax
c01006c1:	8e d8                	mov    %eax,%ds
c01006c3:	8e c0                	mov    %eax,%es
c01006c5:	8e d0                	mov    %eax,%ss
c01006c7:	68 80 00 00 00       	push   $0x80
c01006cc:	68 00 30 13 c0       	push   $0xc0133000
c01006d1:	e8 39 fc ff ff       	call   c010030f <write_gdtr>
c01006d6:	83 c4 08             	add    $0x8,%esp
c01006d9:	0f b7 05 dc 30 13 c0 	movzwl 0xc01330dc,%eax
c01006e0:	0f b7 c0             	movzwl %ax,%eax
c01006e3:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
c01006e7:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
c01006eb:	0f 00 d8             	ltr    %ax
c01006ee:	c9                   	leave  
c01006ef:	c3                   	ret    

c01006f0 <entry>:
c01006f0:	66 c7 05 72 04 00 00 	movw   $0x1234,0x472
c01006f7:	34 12 
c01006f9:	b8 00 f0 10 00       	mov    $0x10f000,%eax
c01006fe:	0f 22 d8             	mov    %eax,%cr3
c0100701:	0f 20 c0             	mov    %cr0,%eax
c0100704:	0d 01 00 00 80       	or     $0x80000001,%eax
c0100709:	0f 22 c0             	mov    %eax,%cr0
c010070c:	b8 13 07 10 c0       	mov    $0xc0100713,%eax
c0100711:	ff e0                	jmp    *%eax

c0100713 <relocated>:
c0100713:	bd 00 00 00 00       	mov    $0x0,%ebp
c0100718:	bc 00 e0 10 c0       	mov    $0xc010e000,%esp
c010071d:	e8 1f fa ff ff       	call   c0100141 <main>

c0100722 <spin>:
c0100722:	eb fe                	jmp    c0100722 <spin>

c0100724 <init_intr>:
c0100724:	55                   	push   %ebp
c0100725:	89 e5                	mov    %esp,%ebp
c0100727:	83 ec 70             	sub    $0x70,%esp
c010072a:	c7 45 fc 21 00 00 00 	movl   $0x21,-0x4(%ebp)
c0100731:	c6 45 fb ff          	movb   $0xff,-0x5(%ebp)
c0100735:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
c0100739:	8b 55 fc             	mov    -0x4(%ebp),%edx
c010073c:	ee                   	out    %al,(%dx)
c010073d:	c7 45 f4 a1 00 00 00 	movl   $0xa1,-0xc(%ebp)
c0100744:	c6 45 f3 ff          	movb   $0xff,-0xd(%ebp)
c0100748:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
c010074c:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010074f:	ee                   	out    %al,(%dx)
c0100750:	c7 45 ec 20 00 00 00 	movl   $0x20,-0x14(%ebp)
c0100757:	c6 45 eb 11          	movb   $0x11,-0x15(%ebp)
c010075b:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
c010075f:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0100762:	ee                   	out    %al,(%dx)
c0100763:	c7 45 e4 21 00 00 00 	movl   $0x21,-0x1c(%ebp)
c010076a:	c6 45 e3 20          	movb   $0x20,-0x1d(%ebp)
c010076e:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
c0100772:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0100775:	ee                   	out    %al,(%dx)
c0100776:	c7 45 dc 21 00 00 00 	movl   $0x21,-0x24(%ebp)
c010077d:	c6 45 db 04          	movb   $0x4,-0x25(%ebp)
c0100781:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
c0100785:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0100788:	ee                   	out    %al,(%dx)
c0100789:	c7 45 d4 21 00 00 00 	movl   $0x21,-0x2c(%ebp)
c0100790:	c6 45 d3 03          	movb   $0x3,-0x2d(%ebp)
c0100794:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
c0100798:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c010079b:	ee                   	out    %al,(%dx)
c010079c:	c7 45 cc a0 00 00 00 	movl   $0xa0,-0x34(%ebp)
c01007a3:	c6 45 cb 11          	movb   $0x11,-0x35(%ebp)
c01007a7:	0f b6 45 cb          	movzbl -0x35(%ebp),%eax
c01007ab:	8b 55 cc             	mov    -0x34(%ebp),%edx
c01007ae:	ee                   	out    %al,(%dx)
c01007af:	c7 45 c4 a1 00 00 00 	movl   $0xa1,-0x3c(%ebp)
c01007b6:	c6 45 c3 28          	movb   $0x28,-0x3d(%ebp)
c01007ba:	0f b6 45 c3          	movzbl -0x3d(%ebp),%eax
c01007be:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c01007c1:	ee                   	out    %al,(%dx)
c01007c2:	c7 45 bc a1 00 00 00 	movl   $0xa1,-0x44(%ebp)
c01007c9:	c6 45 bb 02          	movb   $0x2,-0x45(%ebp)
c01007cd:	0f b6 45 bb          	movzbl -0x45(%ebp),%eax
c01007d1:	8b 55 bc             	mov    -0x44(%ebp),%edx
c01007d4:	ee                   	out    %al,(%dx)
c01007d5:	c7 45 b4 a1 00 00 00 	movl   $0xa1,-0x4c(%ebp)
c01007dc:	c6 45 b3 03          	movb   $0x3,-0x4d(%ebp)
c01007e0:	0f b6 45 b3          	movzbl -0x4d(%ebp),%eax
c01007e4:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c01007e7:	ee                   	out    %al,(%dx)
c01007e8:	c7 45 ac 20 00 00 00 	movl   $0x20,-0x54(%ebp)
c01007ef:	c6 45 ab 68          	movb   $0x68,-0x55(%ebp)
c01007f3:	0f b6 45 ab          	movzbl -0x55(%ebp),%eax
c01007f7:	8b 55 ac             	mov    -0x54(%ebp),%edx
c01007fa:	ee                   	out    %al,(%dx)
c01007fb:	c7 45 a4 20 00 00 00 	movl   $0x20,-0x5c(%ebp)
c0100802:	c6 45 a3 0a          	movb   $0xa,-0x5d(%ebp)
c0100806:	0f b6 45 a3          	movzbl -0x5d(%ebp),%eax
c010080a:	8b 55 a4             	mov    -0x5c(%ebp),%edx
c010080d:	ee                   	out    %al,(%dx)
c010080e:	c7 45 9c a0 00 00 00 	movl   $0xa0,-0x64(%ebp)
c0100815:	c6 45 9b 68          	movb   $0x68,-0x65(%ebp)
c0100819:	0f b6 45 9b          	movzbl -0x65(%ebp),%eax
c010081d:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0100820:	ee                   	out    %al,(%dx)
c0100821:	c7 45 94 a0 00 00 00 	movl   $0xa0,-0x6c(%ebp)
c0100828:	c6 45 93 0a          	movb   $0xa,-0x6d(%ebp)
c010082c:	0f b6 45 93          	movzbl -0x6d(%ebp),%eax
c0100830:	8b 55 94             	mov    -0x6c(%ebp),%edx
c0100833:	ee                   	out    %al,(%dx)
c0100834:	c9                   	leave  
c0100835:	c3                   	ret    

c0100836 <save_idt>:
c0100836:	55                   	push   %ebp
c0100837:	89 e5                	mov    %esp,%ebp
c0100839:	8b 45 0c             	mov    0xc(%ebp),%eax
c010083c:	83 e8 01             	sub    $0x1,%eax
c010083f:	66 a3 b2 00 11 c0    	mov    %ax,0xc01100b2
c0100845:	8b 45 08             	mov    0x8(%ebp),%eax
c0100848:	66 a3 b4 00 11 c0    	mov    %ax,0xc01100b4
c010084e:	8b 45 08             	mov    0x8(%ebp),%eax
c0100851:	c1 e8 10             	shr    $0x10,%eax
c0100854:	66 a3 b6 00 11 c0    	mov    %ax,0xc01100b6
c010085a:	b8 b2 00 11 c0       	mov    $0xc01100b2,%eax
c010085f:	0f 01 18             	lidtl  (%eax)
c0100862:	5d                   	pop    %ebp
c0100863:	c3                   	ret    

c0100864 <set_intr>:
c0100864:	55                   	push   %ebp
c0100865:	89 e5                	mov    %esp,%ebp
c0100867:	8b 45 10             	mov    0x10(%ebp),%eax
c010086a:	89 c2                	mov    %eax,%edx
c010086c:	8b 45 08             	mov    0x8(%ebp),%eax
c010086f:	66 89 10             	mov    %dx,(%eax)
c0100872:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100875:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c010087c:	8b 45 08             	mov    0x8(%ebp),%eax
c010087f:	66 89 50 02          	mov    %dx,0x2(%eax)
c0100883:	8b 45 08             	mov    0x8(%ebp),%eax
c0100886:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c010088a:	8b 45 08             	mov    0x8(%ebp),%eax
c010088d:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c0100891:	83 e2 f0             	and    $0xfffffff0,%edx
c0100894:	83 ca 0e             	or     $0xe,%edx
c0100897:	88 50 05             	mov    %dl,0x5(%eax)
c010089a:	8b 45 08             	mov    0x8(%ebp),%eax
c010089d:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c01008a1:	83 e2 ef             	and    $0xffffffef,%edx
c01008a4:	88 50 05             	mov    %dl,0x5(%eax)
c01008a7:	8b 45 14             	mov    0x14(%ebp),%eax
c01008aa:	83 e0 03             	and    $0x3,%eax
c01008ad:	89 c2                	mov    %eax,%edx
c01008af:	8b 45 08             	mov    0x8(%ebp),%eax
c01008b2:	83 e2 03             	and    $0x3,%edx
c01008b5:	89 d1                	mov    %edx,%ecx
c01008b7:	c1 e1 05             	shl    $0x5,%ecx
c01008ba:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c01008be:	83 e2 9f             	and    $0xffffff9f,%edx
c01008c1:	09 ca                	or     %ecx,%edx
c01008c3:	88 50 05             	mov    %dl,0x5(%eax)
c01008c6:	8b 45 08             	mov    0x8(%ebp),%eax
c01008c9:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c01008cd:	83 ca 80             	or     $0xffffff80,%edx
c01008d0:	88 50 05             	mov    %dl,0x5(%eax)
c01008d3:	8b 45 10             	mov    0x10(%ebp),%eax
c01008d6:	c1 e8 10             	shr    $0x10,%eax
c01008d9:	89 c2                	mov    %eax,%edx
c01008db:	8b 45 08             	mov    0x8(%ebp),%eax
c01008de:	66 89 50 06          	mov    %dx,0x6(%eax)
c01008e2:	5d                   	pop    %ebp
c01008e3:	c3                   	ret    

c01008e4 <set_trap>:
c01008e4:	55                   	push   %ebp
c01008e5:	89 e5                	mov    %esp,%ebp
c01008e7:	8b 45 10             	mov    0x10(%ebp),%eax
c01008ea:	89 c2                	mov    %eax,%edx
c01008ec:	8b 45 08             	mov    0x8(%ebp),%eax
c01008ef:	66 89 10             	mov    %dx,(%eax)
c01008f2:	8b 45 0c             	mov    0xc(%ebp),%eax
c01008f5:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c01008fc:	8b 45 08             	mov    0x8(%ebp),%eax
c01008ff:	66 89 50 02          	mov    %dx,0x2(%eax)
c0100903:	8b 45 08             	mov    0x8(%ebp),%eax
c0100906:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c010090a:	8b 45 08             	mov    0x8(%ebp),%eax
c010090d:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c0100911:	83 ca 0f             	or     $0xf,%edx
c0100914:	88 50 05             	mov    %dl,0x5(%eax)
c0100917:	8b 45 08             	mov    0x8(%ebp),%eax
c010091a:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c010091e:	83 e2 ef             	and    $0xffffffef,%edx
c0100921:	88 50 05             	mov    %dl,0x5(%eax)
c0100924:	8b 45 14             	mov    0x14(%ebp),%eax
c0100927:	83 e0 03             	and    $0x3,%eax
c010092a:	89 c2                	mov    %eax,%edx
c010092c:	8b 45 08             	mov    0x8(%ebp),%eax
c010092f:	83 e2 03             	and    $0x3,%edx
c0100932:	89 d1                	mov    %edx,%ecx
c0100934:	c1 e1 05             	shl    $0x5,%ecx
c0100937:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c010093b:	83 e2 9f             	and    $0xffffff9f,%edx
c010093e:	09 ca                	or     %ecx,%edx
c0100940:	88 50 05             	mov    %dl,0x5(%eax)
c0100943:	8b 45 08             	mov    0x8(%ebp),%eax
c0100946:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c010094a:	83 ca 80             	or     $0xffffff80,%edx
c010094d:	88 50 05             	mov    %dl,0x5(%eax)
c0100950:	8b 45 10             	mov    0x10(%ebp),%eax
c0100953:	c1 e8 10             	shr    $0x10,%eax
c0100956:	89 c2                	mov    %eax,%edx
c0100958:	8b 45 08             	mov    0x8(%ebp),%eax
c010095b:	66 89 50 06          	mov    %dx,0x6(%eax)
c010095f:	5d                   	pop    %ebp
c0100960:	c3                   	ret    

c0100961 <init_idt>:
c0100961:	55                   	push   %ebp
c0100962:	89 e5                	mov    %esp,%ebp
c0100964:	83 ec 10             	sub    $0x10,%esp
c0100967:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c010096e:	eb 22                	jmp    c0100992 <init_idt+0x31>
c0100970:	ba fe 0b 10 c0       	mov    $0xc0100bfe,%edx
c0100975:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100978:	c1 e0 03             	shl    $0x3,%eax
c010097b:	05 00 31 13 c0       	add    $0xc0133100,%eax
c0100980:	6a 00                	push   $0x0
c0100982:	52                   	push   %edx
c0100983:	6a 01                	push   $0x1
c0100985:	50                   	push   %eax
c0100986:	e8 59 ff ff ff       	call   c01008e4 <set_trap>
c010098b:	83 c4 10             	add    $0x10,%esp
c010098e:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0100992:	81 7d fc ff 00 00 00 	cmpl   $0xff,-0x4(%ebp)
c0100999:	7e d5                	jle    c0100970 <init_idt+0xf>
c010099b:	b8 64 0b 10 c0       	mov    $0xc0100b64,%eax
c01009a0:	6a 00                	push   $0x0
c01009a2:	50                   	push   %eax
c01009a3:	6a 01                	push   $0x1
c01009a5:	68 00 31 13 c0       	push   $0xc0133100
c01009aa:	e8 35 ff ff ff       	call   c01008e4 <set_trap>
c01009af:	83 c4 10             	add    $0x10,%esp
c01009b2:	b8 6e 0b 10 c0       	mov    $0xc0100b6e,%eax
c01009b7:	6a 00                	push   $0x0
c01009b9:	50                   	push   %eax
c01009ba:	6a 01                	push   $0x1
c01009bc:	68 08 31 13 c0       	push   $0xc0133108
c01009c1:	e8 1e ff ff ff       	call   c01008e4 <set_trap>
c01009c6:	83 c4 10             	add    $0x10,%esp
c01009c9:	b8 78 0b 10 c0       	mov    $0xc0100b78,%eax
c01009ce:	6a 00                	push   $0x0
c01009d0:	50                   	push   %eax
c01009d1:	6a 01                	push   $0x1
c01009d3:	68 10 31 13 c0       	push   $0xc0133110
c01009d8:	e8 07 ff ff ff       	call   c01008e4 <set_trap>
c01009dd:	83 c4 10             	add    $0x10,%esp
c01009e0:	b8 82 0b 10 c0       	mov    $0xc0100b82,%eax
c01009e5:	6a 00                	push   $0x0
c01009e7:	50                   	push   %eax
c01009e8:	6a 01                	push   $0x1
c01009ea:	68 18 31 13 c0       	push   $0xc0133118
c01009ef:	e8 f0 fe ff ff       	call   c01008e4 <set_trap>
c01009f4:	83 c4 10             	add    $0x10,%esp
c01009f7:	b8 89 0b 10 c0       	mov    $0xc0100b89,%eax
c01009fc:	6a 00                	push   $0x0
c01009fe:	50                   	push   %eax
c01009ff:	6a 01                	push   $0x1
c0100a01:	68 20 31 13 c0       	push   $0xc0133120
c0100a06:	e8 d9 fe ff ff       	call   c01008e4 <set_trap>
c0100a0b:	83 c4 10             	add    $0x10,%esp
c0100a0e:	b8 90 0b 10 c0       	mov    $0xc0100b90,%eax
c0100a13:	6a 00                	push   $0x0
c0100a15:	50                   	push   %eax
c0100a16:	6a 01                	push   $0x1
c0100a18:	68 28 31 13 c0       	push   $0xc0133128
c0100a1d:	e8 c2 fe ff ff       	call   c01008e4 <set_trap>
c0100a22:	83 c4 10             	add    $0x10,%esp
c0100a25:	b8 97 0b 10 c0       	mov    $0xc0100b97,%eax
c0100a2a:	6a 00                	push   $0x0
c0100a2c:	50                   	push   %eax
c0100a2d:	6a 01                	push   $0x1
c0100a2f:	68 30 31 13 c0       	push   $0xc0133130
c0100a34:	e8 ab fe ff ff       	call   c01008e4 <set_trap>
c0100a39:	83 c4 10             	add    $0x10,%esp
c0100a3c:	b8 9e 0b 10 c0       	mov    $0xc0100b9e,%eax
c0100a41:	6a 00                	push   $0x0
c0100a43:	50                   	push   %eax
c0100a44:	6a 01                	push   $0x1
c0100a46:	68 38 31 13 c0       	push   $0xc0133138
c0100a4b:	e8 94 fe ff ff       	call   c01008e4 <set_trap>
c0100a50:	83 c4 10             	add    $0x10,%esp
c0100a53:	b8 a5 0b 10 c0       	mov    $0xc0100ba5,%eax
c0100a58:	6a 00                	push   $0x0
c0100a5a:	50                   	push   %eax
c0100a5b:	6a 01                	push   $0x1
c0100a5d:	68 40 31 13 c0       	push   $0xc0133140
c0100a62:	e8 7d fe ff ff       	call   c01008e4 <set_trap>
c0100a67:	83 c4 10             	add    $0x10,%esp
c0100a6a:	b8 ac 0b 10 c0       	mov    $0xc0100bac,%eax
c0100a6f:	6a 00                	push   $0x0
c0100a71:	50                   	push   %eax
c0100a72:	6a 01                	push   $0x1
c0100a74:	68 48 31 13 c0       	push   $0xc0133148
c0100a79:	e8 66 fe ff ff       	call   c01008e4 <set_trap>
c0100a7e:	83 c4 10             	add    $0x10,%esp
c0100a81:	b8 b3 0b 10 c0       	mov    $0xc0100bb3,%eax
c0100a86:	6a 00                	push   $0x0
c0100a88:	50                   	push   %eax
c0100a89:	6a 01                	push   $0x1
c0100a8b:	68 50 31 13 c0       	push   $0xc0133150
c0100a90:	e8 4f fe ff ff       	call   c01008e4 <set_trap>
c0100a95:	83 c4 10             	add    $0x10,%esp
c0100a98:	b8 ba 0b 10 c0       	mov    $0xc0100bba,%eax
c0100a9d:	6a 00                	push   $0x0
c0100a9f:	50                   	push   %eax
c0100aa0:	6a 01                	push   $0x1
c0100aa2:	68 58 31 13 c0       	push   $0xc0133158
c0100aa7:	e8 38 fe ff ff       	call   c01008e4 <set_trap>
c0100aac:	83 c4 10             	add    $0x10,%esp
c0100aaf:	b8 c1 0b 10 c0       	mov    $0xc0100bc1,%eax
c0100ab4:	6a 00                	push   $0x0
c0100ab6:	50                   	push   %eax
c0100ab7:	6a 01                	push   $0x1
c0100ab9:	68 60 31 13 c0       	push   $0xc0133160
c0100abe:	e8 21 fe ff ff       	call   c01008e4 <set_trap>
c0100ac3:	83 c4 10             	add    $0x10,%esp
c0100ac6:	b8 c8 0b 10 c0       	mov    $0xc0100bc8,%eax
c0100acb:	6a 00                	push   $0x0
c0100acd:	50                   	push   %eax
c0100ace:	6a 01                	push   $0x1
c0100ad0:	68 68 31 13 c0       	push   $0xc0133168
c0100ad5:	e8 0a fe ff ff       	call   c01008e4 <set_trap>
c0100ada:	83 c4 10             	add    $0x10,%esp
c0100add:	b8 cf 0b 10 c0       	mov    $0xc0100bcf,%eax
c0100ae2:	6a 00                	push   $0x0
c0100ae4:	50                   	push   %eax
c0100ae5:	6a 01                	push   $0x1
c0100ae7:	68 70 31 13 c0       	push   $0xc0133170
c0100aec:	e8 f3 fd ff ff       	call   c01008e4 <set_trap>
c0100af1:	83 c4 10             	add    $0x10,%esp
c0100af4:	b8 d6 0b 10 c0       	mov    $0xc0100bd6,%eax
c0100af9:	6a 00                	push   $0x0
c0100afb:	50                   	push   %eax
c0100afc:	6a 01                	push   $0x1
c0100afe:	68 00 32 13 c0       	push   $0xc0133200
c0100b03:	e8 5c fd ff ff       	call   c0100864 <set_intr>
c0100b08:	83 c4 10             	add    $0x10,%esp
c0100b0b:	b8 e0 0b 10 c0       	mov    $0xc0100be0,%eax
c0100b10:	6a 00                	push   $0x0
c0100b12:	50                   	push   %eax
c0100b13:	6a 01                	push   $0x1
c0100b15:	68 08 32 13 c0       	push   $0xc0133208
c0100b1a:	e8 45 fd ff ff       	call   c0100864 <set_intr>
c0100b1f:	83 c4 10             	add    $0x10,%esp
c0100b22:	b8 ea 0b 10 c0       	mov    $0xc0100bea,%eax
c0100b27:	6a 00                	push   $0x0
c0100b29:	50                   	push   %eax
c0100b2a:	6a 01                	push   $0x1
c0100b2c:	68 70 32 13 c0       	push   $0xc0133270
c0100b31:	e8 2e fd ff ff       	call   c0100864 <set_intr>
c0100b36:	83 c4 10             	add    $0x10,%esp
c0100b39:	b8 f4 0b 10 c0       	mov    $0xc0100bf4,%eax
c0100b3e:	6a 03                	push   $0x3
c0100b40:	50                   	push   %eax
c0100b41:	6a 01                	push   $0x1
c0100b43:	68 00 35 13 c0       	push   $0xc0133500
c0100b48:	e8 97 fd ff ff       	call   c01008e4 <set_trap>
c0100b4d:	83 c4 10             	add    $0x10,%esp
c0100b50:	68 00 08 00 00       	push   $0x800
c0100b55:	68 00 31 13 c0       	push   $0xc0133100
c0100b5a:	e8 d7 fc ff ff       	call   c0100836 <save_idt>
c0100b5f:	83 c4 08             	add    $0x8,%esp
c0100b62:	c9                   	leave  
c0100b63:	c3                   	ret    

c0100b64 <vec0>:
c0100b64:	fa                   	cli    
c0100b65:	6a 00                	push   $0x0
c0100b67:	6a 00                	push   $0x0
c0100b69:	e9 97 00 00 00       	jmp    c0100c05 <asm_do_irq>

c0100b6e <vec1>:
c0100b6e:	fa                   	cli    
c0100b6f:	6a 00                	push   $0x0
c0100b71:	6a 01                	push   $0x1
c0100b73:	e9 8d 00 00 00       	jmp    c0100c05 <asm_do_irq>

c0100b78 <vec2>:
c0100b78:	fa                   	cli    
c0100b79:	6a 00                	push   $0x0
c0100b7b:	6a 02                	push   $0x2
c0100b7d:	e9 83 00 00 00       	jmp    c0100c05 <asm_do_irq>

c0100b82 <vec3>:
c0100b82:	fa                   	cli    
c0100b83:	6a 00                	push   $0x0
c0100b85:	6a 03                	push   $0x3
c0100b87:	eb 7c                	jmp    c0100c05 <asm_do_irq>

c0100b89 <vec4>:
c0100b89:	fa                   	cli    
c0100b8a:	6a 00                	push   $0x0
c0100b8c:	6a 04                	push   $0x4
c0100b8e:	eb 75                	jmp    c0100c05 <asm_do_irq>

c0100b90 <vec5>:
c0100b90:	fa                   	cli    
c0100b91:	6a 00                	push   $0x0
c0100b93:	6a 05                	push   $0x5
c0100b95:	eb 6e                	jmp    c0100c05 <asm_do_irq>

c0100b97 <vec6>:
c0100b97:	fa                   	cli    
c0100b98:	6a 00                	push   $0x0
c0100b9a:	6a 06                	push   $0x6
c0100b9c:	eb 67                	jmp    c0100c05 <asm_do_irq>

c0100b9e <vec7>:
c0100b9e:	fa                   	cli    
c0100b9f:	6a 00                	push   $0x0
c0100ba1:	6a 07                	push   $0x7
c0100ba3:	eb 60                	jmp    c0100c05 <asm_do_irq>

c0100ba5 <vec8>:
c0100ba5:	fa                   	cli    
c0100ba6:	6a 00                	push   $0x0
c0100ba8:	6a 08                	push   $0x8
c0100baa:	eb 59                	jmp    c0100c05 <asm_do_irq>

c0100bac <vec9>:
c0100bac:	fa                   	cli    
c0100bad:	6a 00                	push   $0x0
c0100baf:	6a 09                	push   $0x9
c0100bb1:	eb 52                	jmp    c0100c05 <asm_do_irq>

c0100bb3 <vec10>:
c0100bb3:	fa                   	cli    
c0100bb4:	6a 00                	push   $0x0
c0100bb6:	6a 0a                	push   $0xa
c0100bb8:	eb 4b                	jmp    c0100c05 <asm_do_irq>

c0100bba <vec11>:
c0100bba:	fa                   	cli    
c0100bbb:	6a 00                	push   $0x0
c0100bbd:	6a 0b                	push   $0xb
c0100bbf:	eb 44                	jmp    c0100c05 <asm_do_irq>

c0100bc1 <vec12>:
c0100bc1:	fa                   	cli    
c0100bc2:	6a 00                	push   $0x0
c0100bc4:	6a 0c                	push   $0xc
c0100bc6:	eb 3d                	jmp    c0100c05 <asm_do_irq>

c0100bc8 <vec13>:
c0100bc8:	fa                   	cli    
c0100bc9:	6a 00                	push   $0x0
c0100bcb:	6a 0d                	push   $0xd
c0100bcd:	eb 36                	jmp    c0100c05 <asm_do_irq>

c0100bcf <vec14>:
c0100bcf:	fa                   	cli    
c0100bd0:	6a 00                	push   $0x0
c0100bd2:	6a 0e                	push   $0xe
c0100bd4:	eb 2f                	jmp    c0100c05 <asm_do_irq>

c0100bd6 <irq0>:
c0100bd6:	fa                   	cli    
c0100bd7:	6a 00                	push   $0x0
c0100bd9:	68 e8 03 00 00       	push   $0x3e8
c0100bde:	eb 25                	jmp    c0100c05 <asm_do_irq>

c0100be0 <irq1>:
c0100be0:	fa                   	cli    
c0100be1:	6a 00                	push   $0x0
c0100be3:	68 e9 03 00 00       	push   $0x3e9
c0100be8:	eb 1b                	jmp    c0100c05 <asm_do_irq>

c0100bea <irq14>:
c0100bea:	fa                   	cli    
c0100beb:	6a 00                	push   $0x0
c0100bed:	68 f6 03 00 00       	push   $0x3f6
c0100bf2:	eb 11                	jmp    c0100c05 <asm_do_irq>

c0100bf4 <syscall>:
c0100bf4:	fa                   	cli    
c0100bf5:	6a 00                	push   $0x0
c0100bf7:	68 80 00 00 00       	push   $0x80
c0100bfc:	eb 07                	jmp    c0100c05 <asm_do_irq>

c0100bfe <irq_empty>:
c0100bfe:	fa                   	cli    
c0100bff:	6a 00                	push   $0x0
c0100c01:	6a ff                	push   $0xffffffff
c0100c03:	eb 00                	jmp    c0100c05 <asm_do_irq>

c0100c05 <asm_do_irq>:
c0100c05:	60                   	pusha  
c0100c06:	54                   	push   %esp
c0100c07:	e8 08 00 00 00       	call   c0100c14 <irq_handle>
c0100c0c:	83 c4 04             	add    $0x4,%esp
c0100c0f:	61                   	popa   
c0100c10:	83 c4 08             	add    $0x8,%esp
c0100c13:	cf                   	iret   

c0100c14 <irq_handle>:
c0100c14:	55                   	push   %ebp
c0100c15:	89 e5                	mov    %esp,%ebp
c0100c17:	83 ec 38             	sub    $0x38,%esp
c0100c1a:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c1d:	8b 40 20             	mov    0x20(%eax),%eax
c0100c20:	3d e8 03 00 00       	cmp    $0x3e8,%eax
c0100c25:	75 28                	jne    c0100c4f <irq_handle+0x3b>
c0100c27:	e8 d4 f3 ff ff       	call   c0100000 <timer_event>
c0100c2c:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c2f:	8b 40 2c             	mov    0x2c(%eax),%eax
c0100c32:	83 f8 08             	cmp    $0x8,%eax
c0100c35:	75 05                	jne    c0100c3c <irq_handle+0x28>
c0100c37:	e9 33 02 00 00       	jmp    c0100e6f <irq_handle+0x25b>
c0100c3c:	83 ec 0c             	sub    $0xc,%esp
c0100c3f:	ff 75 08             	pushl  0x8(%ebp)
c0100c42:	e8 a8 17 00 00       	call   c01023ef <time_treat>
c0100c47:	83 c4 10             	add    $0x10,%esp
c0100c4a:	e9 20 02 00 00       	jmp    c0100e6f <irq_handle+0x25b>
c0100c4f:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c52:	8b 40 20             	mov    0x20(%eax),%eax
c0100c55:	3d e9 03 00 00       	cmp    $0x3e9,%eax
c0100c5a:	75 7b                	jne    c0100cd7 <irq_handle+0xc3>
c0100c5c:	c7 45 ec 60 00 00 00 	movl   $0x60,-0x14(%ebp)
c0100c63:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100c66:	89 c2                	mov    %eax,%edx
c0100c68:	ec                   	in     (%dx),%al
c0100c69:	88 45 eb             	mov    %al,-0x15(%ebp)
c0100c6c:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
c0100c70:	0f b6 c0             	movzbl %al,%eax
c0100c73:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100c76:	c7 45 e4 61 00 00 00 	movl   $0x61,-0x1c(%ebp)
c0100c7d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0100c80:	89 c2                	mov    %eax,%edx
c0100c82:	ec                   	in     (%dx),%al
c0100c83:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0100c86:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
c0100c8a:	0f b6 c0             	movzbl %al,%eax
c0100c8d:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100c90:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0100c93:	83 c8 80             	or     $0xffffff80,%eax
c0100c96:	0f b6 c0             	movzbl %al,%eax
c0100c99:	c7 45 dc 61 00 00 00 	movl   $0x61,-0x24(%ebp)
c0100ca0:	88 45 db             	mov    %al,-0x25(%ebp)
c0100ca3:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
c0100ca7:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0100caa:	ee                   	out    %al,(%dx)
c0100cab:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0100cae:	0f b6 c0             	movzbl %al,%eax
c0100cb1:	c7 45 d4 61 00 00 00 	movl   $0x61,-0x2c(%ebp)
c0100cb8:	88 45 d3             	mov    %al,-0x2d(%ebp)
c0100cbb:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
c0100cbf:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0100cc2:	ee                   	out    %al,(%dx)
c0100cc3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100cc6:	83 ec 0c             	sub    $0xc,%esp
c0100cc9:	50                   	push   %eax
c0100cca:	e8 5c f4 ff ff       	call   c010012b <keyboard_event>
c0100ccf:	83 c4 10             	add    $0x10,%esp
c0100cd2:	e9 98 01 00 00       	jmp    c0100e6f <irq_handle+0x25b>
c0100cd7:	8b 45 08             	mov    0x8(%ebp),%eax
c0100cda:	8b 40 20             	mov    0x20(%eax),%eax
c0100cdd:	3d f6 03 00 00       	cmp    $0x3f6,%eax
c0100ce2:	0f 84 87 01 00 00    	je     c0100e6f <irq_handle+0x25b>
c0100ce8:	8b 45 08             	mov    0x8(%ebp),%eax
c0100ceb:	8b 40 20             	mov    0x20(%eax),%eax
c0100cee:	3d 80 00 00 00       	cmp    $0x80,%eax
c0100cf3:	0f 85 51 01 00 00    	jne    c0100e4a <irq_handle+0x236>
c0100cf9:	8b 45 08             	mov    0x8(%ebp),%eax
c0100cfc:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100cff:	83 f8 01             	cmp    $0x1,%eax
c0100d02:	75 26                	jne    c0100d2a <irq_handle+0x116>
c0100d04:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d07:	8b 40 10             	mov    0x10(%eax),%eax
c0100d0a:	83 f8 01             	cmp    $0x1,%eax
c0100d0d:	0f 85 5c 01 00 00    	jne    c0100e6f <irq_handle+0x25b>
c0100d13:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d16:	8b 40 18             	mov    0x18(%eax),%eax
c0100d19:	83 ec 0c             	sub    $0xc,%esp
c0100d1c:	50                   	push   %eax
c0100d1d:	e8 77 04 00 00       	call   c0101199 <printk>
c0100d22:	83 c4 10             	add    $0x10,%esp
c0100d25:	e9 45 01 00 00       	jmp    c0100e6f <irq_handle+0x25b>
c0100d2a:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d2d:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100d30:	83 f8 02             	cmp    $0x2,%eax
c0100d33:	75 35                	jne    c0100d6a <irq_handle+0x156>
c0100d35:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d38:	8b 40 10             	mov    0x10(%eax),%eax
c0100d3b:	85 c0                	test   %eax,%eax
c0100d3d:	75 12                	jne    c0100d51 <irq_handle+0x13d>
c0100d3f:	e8 ce f2 ff ff       	call   c0100012 <get_time>
c0100d44:	89 c2                	mov    %eax,%edx
c0100d46:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d49:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100d4c:	e9 1e 01 00 00       	jmp    c0100e6f <irq_handle+0x25b>
c0100d51:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d54:	8b 40 10             	mov    0x10(%eax),%eax
c0100d57:	83 f8 01             	cmp    $0x1,%eax
c0100d5a:	0f 85 0f 01 00 00    	jne    c0100e6f <irq_handle+0x25b>
c0100d60:	e8 b7 f2 ff ff       	call   c010001c <time_pop>
c0100d65:	e9 05 01 00 00       	jmp    c0100e6f <irq_handle+0x25b>
c0100d6a:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d6d:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100d70:	83 f8 03             	cmp    $0x3,%eax
c0100d73:	75 35                	jne    c0100daa <irq_handle+0x196>
c0100d75:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d78:	8b 40 10             	mov    0x10(%eax),%eax
c0100d7b:	85 c0                	test   %eax,%eax
c0100d7d:	75 12                	jne    c0100d91 <irq_handle+0x17d>
c0100d7f:	e8 8e f3 ff ff       	call   c0100112 <last_key_code>
c0100d84:	89 c2                	mov    %eax,%edx
c0100d86:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d89:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100d8c:	e9 de 00 00 00       	jmp    c0100e6f <irq_handle+0x25b>
c0100d91:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d94:	8b 40 10             	mov    0x10(%eax),%eax
c0100d97:	83 f8 01             	cmp    $0x1,%eax
c0100d9a:	0f 85 cf 00 00 00    	jne    c0100e6f <irq_handle+0x25b>
c0100da0:	e8 77 f3 ff ff       	call   c010011c <reset_last_key>
c0100da5:	e9 c5 00 00 00       	jmp    c0100e6f <irq_handle+0x25b>
c0100daa:	8b 45 08             	mov    0x8(%ebp),%eax
c0100dad:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100db0:	83 f8 04             	cmp    $0x4,%eax
c0100db3:	75 21                	jne    c0100dd6 <irq_handle+0x1c2>
c0100db5:	8b 45 08             	mov    0x8(%ebp),%eax
c0100db8:	8b 40 10             	mov    0x10(%eax),%eax
c0100dbb:	83 ec 04             	sub    $0x4,%esp
c0100dbe:	68 00 00 01 00       	push   $0x10000
c0100dc3:	50                   	push   %eax
c0100dc4:	68 00 00 0a c0       	push   $0xc00a0000
c0100dc9:	e8 f0 03 00 00       	call   c01011be <my_memcpy>
c0100dce:	83 c4 10             	add    $0x10,%esp
c0100dd1:	e9 99 00 00 00       	jmp    c0100e6f <irq_handle+0x25b>
c0100dd6:	8b 45 08             	mov    0x8(%ebp),%eax
c0100dd9:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100ddc:	83 f8 05             	cmp    $0x5,%eax
c0100ddf:	75 0a                	jne    c0100deb <irq_handle+0x1d7>
c0100de1:	e8 76 18 00 00       	call   c010265c <process_exit>
c0100de6:	e9 84 00 00 00       	jmp    c0100e6f <irq_handle+0x25b>
c0100deb:	8b 45 08             	mov    0x8(%ebp),%eax
c0100dee:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100df1:	83 f8 06             	cmp    $0x6,%eax
c0100df4:	75 0f                	jne    c0100e05 <irq_handle+0x1f1>
c0100df6:	e8 00 0a 00 00       	call   c01017fb <getpid>
c0100dfb:	89 c2                	mov    %eax,%edx
c0100dfd:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e00:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100e03:	eb 6a                	jmp    c0100e6f <irq_handle+0x25b>
c0100e05:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e08:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100e0b:	83 f8 07             	cmp    $0x7,%eax
c0100e0e:	75 17                	jne    c0100e27 <irq_handle+0x213>
c0100e10:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e13:	8b 40 10             	mov    0x10(%eax),%eax
c0100e16:	83 ec 08             	sub    $0x8,%esp
c0100e19:	ff 75 08             	pushl  0x8(%ebp)
c0100e1c:	50                   	push   %eax
c0100e1d:	e8 4d 1a 00 00       	call   c010286f <my_sleep>
c0100e22:	83 c4 10             	add    $0x10,%esp
c0100e25:	eb 48                	jmp    c0100e6f <irq_handle+0x25b>
c0100e27:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e2a:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100e2d:	83 f8 08             	cmp    $0x8,%eax
c0100e30:	75 3d                	jne    c0100e6f <irq_handle+0x25b>
c0100e32:	83 ec 0c             	sub    $0xc,%esp
c0100e35:	ff 75 08             	pushl  0x8(%ebp)
c0100e38:	e8 2a 1b 00 00       	call   c0102967 <my_fork>
c0100e3d:	83 c4 10             	add    $0x10,%esp
c0100e40:	89 c2                	mov    %eax,%edx
c0100e42:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e45:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100e48:	eb 25                	jmp    c0100e6f <irq_handle+0x25b>
c0100e4a:	83 ec 0c             	sub    $0xc,%esp
c0100e4d:	ff 75 08             	pushl  0x8(%ebp)
c0100e50:	e8 b7 07 00 00       	call   c010160c <print_tf>
c0100e55:	83 c4 10             	add    $0x10,%esp
c0100e58:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e5b:	8b 40 20             	mov    0x20(%eax),%eax
c0100e5e:	83 ec 08             	sub    $0x8,%esp
c0100e61:	50                   	push   %eax
c0100e62:	68 b0 34 10 c0       	push   $0xc01034b0
c0100e67:	e8 2d 03 00 00       	call   c0101199 <printk>
c0100e6c:	83 c4 10             	add    $0x10,%esp
c0100e6f:	c9                   	leave  
c0100e70:	c3                   	ret    

c0100e71 <change>:
c0100e71:	55                   	push   %ebp
c0100e72:	89 e5                	mov    %esp,%ebp
c0100e74:	53                   	push   %ebx
c0100e75:	83 c4 80             	add    $0xffffff80,%esp
c0100e78:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0100e7f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0100e86:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e89:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0100e8c:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0100e90:	75 14                	jne    c0100ea6 <change+0x35>
c0100e92:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100e95:	c6 00 30             	movb   $0x30,(%eax)
c0100e98:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100e9b:	83 c0 01             	add    $0x1,%eax
c0100e9e:	c6 00 00             	movb   $0x0,(%eax)
c0100ea1:	e9 a5 00 00 00       	jmp    c0100f4b <change+0xda>
c0100ea6:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0100eaa:	79 1d                	jns    c0100ec9 <change+0x58>
c0100eac:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100eaf:	8d 50 01             	lea    0x1(%eax),%edx
c0100eb2:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0100eb5:	89 c2                	mov    %eax,%edx
c0100eb7:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100eba:	01 d0                	add    %edx,%eax
c0100ebc:	c6 00 2d             	movb   $0x2d,(%eax)
c0100ebf:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100ec2:	f7 d8                	neg    %eax
c0100ec4:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100ec7:	eb 06                	jmp    c0100ecf <change+0x5e>
c0100ec9:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100ecc:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100ecf:	eb 40                	jmp    c0100f11 <change+0xa0>
c0100ed1:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0100ed4:	8d 41 01             	lea    0x1(%ecx),%eax
c0100ed7:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0100eda:	8b 5d f0             	mov    -0x10(%ebp),%ebx
c0100edd:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c0100ee2:	89 d8                	mov    %ebx,%eax
c0100ee4:	f7 e2                	mul    %edx
c0100ee6:	c1 ea 03             	shr    $0x3,%edx
c0100ee9:	89 d0                	mov    %edx,%eax
c0100eeb:	c1 e0 02             	shl    $0x2,%eax
c0100eee:	01 d0                	add    %edx,%eax
c0100ef0:	01 c0                	add    %eax,%eax
c0100ef2:	29 c3                	sub    %eax,%ebx
c0100ef4:	89 da                	mov    %ebx,%edx
c0100ef6:	89 d0                	mov    %edx,%eax
c0100ef8:	83 c0 30             	add    $0x30,%eax
c0100efb:	88 44 0d 88          	mov    %al,-0x78(%ebp,%ecx,1)
c0100eff:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0100f02:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c0100f07:	f7 e2                	mul    %edx
c0100f09:	89 d0                	mov    %edx,%eax
c0100f0b:	c1 e8 03             	shr    $0x3,%eax
c0100f0e:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100f11:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0100f15:	75 ba                	jne    c0100ed1 <change+0x60>
c0100f17:	eb 21                	jmp    c0100f3a <change+0xc9>
c0100f19:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100f1c:	8d 50 01             	lea    0x1(%eax),%edx
c0100f1f:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0100f22:	89 c2                	mov    %eax,%edx
c0100f24:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100f27:	01 c2                	add    %eax,%edx
c0100f29:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
c0100f2d:	8d 4d 88             	lea    -0x78(%ebp),%ecx
c0100f30:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0100f33:	01 c8                	add    %ecx,%eax
c0100f35:	0f b6 00             	movzbl (%eax),%eax
c0100f38:	88 02                	mov    %al,(%edx)
c0100f3a:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
c0100f3e:	75 d9                	jne    c0100f19 <change+0xa8>
c0100f40:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100f43:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100f46:	01 d0                	add    %edx,%eax
c0100f48:	c6 00 00             	movb   $0x0,(%eax)
c0100f4b:	83 ec 80             	sub    $0xffffff80,%esp
c0100f4e:	5b                   	pop    %ebx
c0100f4f:	5d                   	pop    %ebp
c0100f50:	c3                   	ret    

c0100f51 <change_x>:
c0100f51:	55                   	push   %ebp
c0100f52:	89 e5                	mov    %esp,%ebp
c0100f54:	83 ec 70             	sub    $0x70,%esp
c0100f57:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0100f5e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0100f65:	8b 45 08             	mov    0x8(%ebp),%eax
c0100f68:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100f6b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0100f6f:	75 11                	jne    c0100f82 <change_x+0x31>
c0100f71:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100f74:	c6 00 30             	movb   $0x30,(%eax)
c0100f77:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100f7a:	83 c0 01             	add    $0x1,%eax
c0100f7d:	c6 00 00             	movb   $0x0,(%eax)
c0100f80:	eb 7e                	jmp    c0101000 <change_x+0xaf>
c0100f82:	eb 42                	jmp    c0100fc6 <change_x+0x75>
c0100f84:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100f87:	83 e0 0f             	and    $0xf,%eax
c0100f8a:	83 f8 09             	cmp    $0x9,%eax
c0100f8d:	77 18                	ja     c0100fa7 <change_x+0x56>
c0100f8f:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100f92:	8d 50 01             	lea    0x1(%eax),%edx
c0100f95:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0100f98:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100f9b:	83 e2 0f             	and    $0xf,%edx
c0100f9e:	83 c2 30             	add    $0x30,%edx
c0100fa1:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
c0100fa5:	eb 16                	jmp    c0100fbd <change_x+0x6c>
c0100fa7:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100faa:	8d 50 01             	lea    0x1(%eax),%edx
c0100fad:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0100fb0:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100fb3:	83 e2 0f             	and    $0xf,%edx
c0100fb6:	83 c2 37             	add    $0x37,%edx
c0100fb9:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
c0100fbd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100fc0:	c1 e8 04             	shr    $0x4,%eax
c0100fc3:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100fc6:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0100fca:	75 b8                	jne    c0100f84 <change_x+0x33>
c0100fcc:	eb 21                	jmp    c0100fef <change_x+0x9e>
c0100fce:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0100fd1:	8d 50 01             	lea    0x1(%eax),%edx
c0100fd4:	89 55 f8             	mov    %edx,-0x8(%ebp)
c0100fd7:	89 c2                	mov    %eax,%edx
c0100fd9:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100fdc:	01 c2                	add    %eax,%edx
c0100fde:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
c0100fe2:	8d 4d 90             	lea    -0x70(%ebp),%ecx
c0100fe5:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100fe8:	01 c8                	add    %ecx,%eax
c0100fea:	0f b6 00             	movzbl (%eax),%eax
c0100fed:	88 02                	mov    %al,(%edx)
c0100fef:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
c0100ff3:	75 d9                	jne    c0100fce <change_x+0x7d>
c0100ff5:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0100ff8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100ffb:	01 d0                	add    %edx,%eax
c0100ffd:	c6 00 00             	movb   $0x0,(%eax)
c0101000:	c9                   	leave  
c0101001:	c3                   	ret    

c0101002 <v_fprintf>:
c0101002:	55                   	push   %ebp
c0101003:	89 e5                	mov    %esp,%ebp
c0101005:	81 ec 88 00 00 00    	sub    $0x88,%esp
c010100b:	8b 45 0c             	mov    0xc(%ebp),%eax
c010100e:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0101011:	8b 45 10             	mov    0x10(%ebp),%eax
c0101014:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101017:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c010101e:	e9 61 01 00 00       	jmp    c0101184 <v_fprintf+0x182>
c0101023:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101026:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101029:	01 d0                	add    %edx,%eax
c010102b:	0f b6 00             	movzbl (%eax),%eax
c010102e:	3c 25                	cmp    $0x25,%al
c0101030:	74 27                	je     c0101059 <v_fprintf+0x57>
c0101032:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101035:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101038:	01 d0                	add    %edx,%eax
c010103a:	0f b6 00             	movzbl (%eax),%eax
c010103d:	88 45 eb             	mov    %al,-0x15(%ebp)
c0101040:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
c0101044:	83 ec 0c             	sub    $0xc,%esp
c0101047:	50                   	push   %eax
c0101048:	8b 45 08             	mov    0x8(%ebp),%eax
c010104b:	ff d0                	call   *%eax
c010104d:	83 c4 10             	add    $0x10,%esp
c0101050:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0101054:	e9 2b 01 00 00       	jmp    c0101184 <v_fprintf+0x182>
c0101059:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c010105d:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101060:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101063:	01 d0                	add    %edx,%eax
c0101065:	0f b6 00             	movzbl (%eax),%eax
c0101068:	3c 25                	cmp    $0x25,%al
c010106a:	75 16                	jne    c0101082 <v_fprintf+0x80>
c010106c:	83 ec 0c             	sub    $0xc,%esp
c010106f:	6a 25                	push   $0x25
c0101071:	8b 45 08             	mov    0x8(%ebp),%eax
c0101074:	ff d0                	call   *%eax
c0101076:	83 c4 10             	add    $0x10,%esp
c0101079:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c010107d:	e9 02 01 00 00       	jmp    c0101184 <v_fprintf+0x182>
c0101082:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101085:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101088:	01 d0                	add    %edx,%eax
c010108a:	0f b6 00             	movzbl (%eax),%eax
c010108d:	3c 63                	cmp    $0x63,%al
c010108f:	75 26                	jne    c01010b7 <v_fprintf+0xb5>
c0101091:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0101095:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101098:	0f b6 00             	movzbl (%eax),%eax
c010109b:	88 45 eb             	mov    %al,-0x15(%ebp)
c010109e:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
c01010a2:	83 ec 0c             	sub    $0xc,%esp
c01010a5:	50                   	push   %eax
c01010a6:	8b 45 08             	mov    0x8(%ebp),%eax
c01010a9:	ff d0                	call   *%eax
c01010ab:	83 c4 10             	add    $0x10,%esp
c01010ae:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c01010b2:	e9 cd 00 00 00       	jmp    c0101184 <v_fprintf+0x182>
c01010b7:	8b 55 f0             	mov    -0x10(%ebp),%edx
c01010ba:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01010bd:	01 d0                	add    %edx,%eax
c01010bf:	0f b6 00             	movzbl (%eax),%eax
c01010c2:	3c 64                	cmp    $0x64,%al
c01010c4:	75 36                	jne    c01010fc <v_fprintf+0xfa>
c01010c6:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c01010ca:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01010cd:	8b 00                	mov    (%eax),%eax
c01010cf:	83 ec 08             	sub    $0x8,%esp
c01010d2:	8d 55 87             	lea    -0x79(%ebp),%edx
c01010d5:	52                   	push   %edx
c01010d6:	50                   	push   %eax
c01010d7:	e8 95 fd ff ff       	call   c0100e71 <change>
c01010dc:	83 c4 10             	add    $0x10,%esp
c01010df:	83 ec 04             	sub    $0x4,%esp
c01010e2:	6a 00                	push   $0x0
c01010e4:	8d 45 87             	lea    -0x79(%ebp),%eax
c01010e7:	50                   	push   %eax
c01010e8:	ff 75 08             	pushl  0x8(%ebp)
c01010eb:	e8 12 ff ff ff       	call   c0101002 <v_fprintf>
c01010f0:	83 c4 10             	add    $0x10,%esp
c01010f3:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c01010f7:	e9 88 00 00 00       	jmp    c0101184 <v_fprintf+0x182>
c01010fc:	8b 55 f0             	mov    -0x10(%ebp),%edx
c01010ff:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101102:	01 d0                	add    %edx,%eax
c0101104:	0f b6 00             	movzbl (%eax),%eax
c0101107:	3c 78                	cmp    $0x78,%al
c0101109:	75 33                	jne    c010113e <v_fprintf+0x13c>
c010110b:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c010110f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101112:	8b 00                	mov    (%eax),%eax
c0101114:	83 ec 08             	sub    $0x8,%esp
c0101117:	8d 55 87             	lea    -0x79(%ebp),%edx
c010111a:	52                   	push   %edx
c010111b:	50                   	push   %eax
c010111c:	e8 30 fe ff ff       	call   c0100f51 <change_x>
c0101121:	83 c4 10             	add    $0x10,%esp
c0101124:	83 ec 04             	sub    $0x4,%esp
c0101127:	6a 00                	push   $0x0
c0101129:	8d 45 87             	lea    -0x79(%ebp),%eax
c010112c:	50                   	push   %eax
c010112d:	ff 75 08             	pushl  0x8(%ebp)
c0101130:	e8 cd fe ff ff       	call   c0101002 <v_fprintf>
c0101135:	83 c4 10             	add    $0x10,%esp
c0101138:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c010113c:	eb 46                	jmp    c0101184 <v_fprintf+0x182>
c010113e:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101141:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101144:	01 d0                	add    %edx,%eax
c0101146:	0f b6 00             	movzbl (%eax),%eax
c0101149:	3c 73                	cmp    $0x73,%al
c010114b:	75 20                	jne    c010116d <v_fprintf+0x16b>
c010114d:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0101151:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101154:	8b 00                	mov    (%eax),%eax
c0101156:	83 ec 04             	sub    $0x4,%esp
c0101159:	6a 00                	push   $0x0
c010115b:	50                   	push   %eax
c010115c:	ff 75 08             	pushl  0x8(%ebp)
c010115f:	e8 9e fe ff ff       	call   c0101002 <v_fprintf>
c0101164:	83 c4 10             	add    $0x10,%esp
c0101167:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c010116b:	eb 17                	jmp    c0101184 <v_fprintf+0x182>
c010116d:	83 ec 04             	sub    $0x4,%esp
c0101170:	6a 00                	push   $0x0
c0101172:	68 d8 34 10 c0       	push   $0xc01034d8
c0101177:	ff 75 08             	pushl  0x8(%ebp)
c010117a:	e8 83 fe ff ff       	call   c0101002 <v_fprintf>
c010117f:	83 c4 10             	add    $0x10,%esp
c0101182:	eb 13                	jmp    c0101197 <v_fprintf+0x195>
c0101184:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101187:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010118a:	01 d0                	add    %edx,%eax
c010118c:	0f b6 00             	movzbl (%eax),%eax
c010118f:	84 c0                	test   %al,%al
c0101191:	0f 85 8c fe ff ff    	jne    c0101023 <v_fprintf+0x21>
c0101197:	c9                   	leave  
c0101198:	c3                   	ret    

c0101199 <printk>:
c0101199:	55                   	push   %ebp
c010119a:	89 e5                	mov    %esp,%ebp
c010119c:	83 ec 18             	sub    $0x18,%esp
c010119f:	8d 45 0c             	lea    0xc(%ebp),%eax
c01011a2:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01011a5:	8b 45 08             	mov    0x8(%ebp),%eax
c01011a8:	83 ec 04             	sub    $0x4,%esp
c01011ab:	ff 75 f4             	pushl  -0xc(%ebp)
c01011ae:	50                   	push   %eax
c01011af:	68 77 02 10 c0       	push   $0xc0100277
c01011b4:	e8 49 fe ff ff       	call   c0101002 <v_fprintf>
c01011b9:	83 c4 10             	add    $0x10,%esp
c01011bc:	c9                   	leave  
c01011bd:	c3                   	ret    

c01011be <my_memcpy>:
c01011be:	55                   	push   %ebp
c01011bf:	89 e5                	mov    %esp,%ebp
c01011c1:	57                   	push   %edi
c01011c2:	56                   	push   %esi
c01011c3:	53                   	push   %ebx
c01011c4:	8b 45 10             	mov    0x10(%ebp),%eax
c01011c7:	8b 55 0c             	mov    0xc(%ebp),%edx
c01011ca:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01011cd:	89 c1                	mov    %eax,%ecx
c01011cf:	89 d6                	mov    %edx,%esi
c01011d1:	89 df                	mov    %ebx,%edi
c01011d3:	fc                   	cld    
c01011d4:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c01011d6:	5b                   	pop    %ebx
c01011d7:	5e                   	pop    %esi
c01011d8:	5f                   	pop    %edi
c01011d9:	5d                   	pop    %ebp
c01011da:	c3                   	ret    

c01011db <my_memset>:
c01011db:	55                   	push   %ebp
c01011dc:	89 e5                	mov    %esp,%ebp
c01011de:	57                   	push   %edi
c01011df:	53                   	push   %ebx
c01011e0:	8b 55 10             	mov    0x10(%ebp),%edx
c01011e3:	8b 45 0c             	mov    0xc(%ebp),%eax
c01011e6:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01011e9:	89 d1                	mov    %edx,%ecx
c01011eb:	89 df                	mov    %ebx,%edi
c01011ed:	fc                   	cld    
c01011ee:	f3 aa                	rep stos %al,%es:(%edi)
c01011f0:	5b                   	pop    %ebx
c01011f1:	5f                   	pop    %edi
c01011f2:	5d                   	pop    %ebp
c01011f3:	c3                   	ret    

c01011f4 <_paddr>:
c01011f4:	55                   	push   %ebp
c01011f5:	89 e5                	mov    %esp,%ebp
c01011f7:	83 ec 08             	sub    $0x8,%esp
c01011fa:	8b 45 10             	mov    0x10(%ebp),%eax
c01011fd:	3d ff ff ff bf       	cmp    $0xbfffffff,%eax
c0101202:	77 16                	ja     c010121a <_paddr+0x26>
c0101204:	ff 75 10             	pushl  0x10(%ebp)
c0101207:	68 f8 34 10 c0       	push   $0xc01034f8
c010120c:	ff 75 0c             	pushl  0xc(%ebp)
c010120f:	ff 75 08             	pushl  0x8(%ebp)
c0101212:	e8 82 ff ff ff       	call   c0101199 <printk>
c0101217:	83 c4 10             	add    $0x10,%esp
c010121a:	8b 45 10             	mov    0x10(%ebp),%eax
c010121d:	05 00 00 00 40       	add    $0x40000000,%eax
c0101222:	c9                   	leave  
c0101223:	c3                   	ret    

c0101224 <waitdisk>:
c0101224:	55                   	push   %ebp
c0101225:	89 e5                	mov    %esp,%ebp
c0101227:	83 ec 10             	sub    $0x10,%esp
c010122a:	90                   	nop
c010122b:	c7 45 fc f7 01 00 00 	movl   $0x1f7,-0x4(%ebp)
c0101232:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0101235:	89 c2                	mov    %eax,%edx
c0101237:	ec                   	in     (%dx),%al
c0101238:	88 45 fb             	mov    %al,-0x5(%ebp)
c010123b:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
c010123f:	0f b6 c0             	movzbl %al,%eax
c0101242:	25 c0 00 00 00       	and    $0xc0,%eax
c0101247:	83 f8 40             	cmp    $0x40,%eax
c010124a:	75 df                	jne    c010122b <waitdisk+0x7>
c010124c:	c9                   	leave  
c010124d:	c3                   	ret    

c010124e <readsect>:
c010124e:	55                   	push   %ebp
c010124f:	89 e5                	mov    %esp,%ebp
c0101251:	57                   	push   %edi
c0101252:	53                   	push   %ebx
c0101253:	83 ec 40             	sub    $0x40,%esp
c0101256:	e8 c9 ff ff ff       	call   c0101224 <waitdisk>
c010125b:	c7 45 f4 f2 01 00 00 	movl   $0x1f2,-0xc(%ebp)
c0101262:	c6 45 f3 01          	movb   $0x1,-0xd(%ebp)
c0101266:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
c010126a:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010126d:	ee                   	out    %al,(%dx)
c010126e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101271:	0f b6 c0             	movzbl %al,%eax
c0101274:	c7 45 ec f3 01 00 00 	movl   $0x1f3,-0x14(%ebp)
c010127b:	88 45 eb             	mov    %al,-0x15(%ebp)
c010127e:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
c0101282:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0101285:	ee                   	out    %al,(%dx)
c0101286:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101289:	c1 e8 08             	shr    $0x8,%eax
c010128c:	0f b6 c0             	movzbl %al,%eax
c010128f:	c7 45 e4 f4 01 00 00 	movl   $0x1f4,-0x1c(%ebp)
c0101296:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0101299:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
c010129d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c01012a0:	ee                   	out    %al,(%dx)
c01012a1:	8b 45 0c             	mov    0xc(%ebp),%eax
c01012a4:	c1 e8 10             	shr    $0x10,%eax
c01012a7:	0f b6 c0             	movzbl %al,%eax
c01012aa:	c7 45 dc f5 01 00 00 	movl   $0x1f5,-0x24(%ebp)
c01012b1:	88 45 db             	mov    %al,-0x25(%ebp)
c01012b4:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
c01012b8:	8b 55 dc             	mov    -0x24(%ebp),%edx
c01012bb:	ee                   	out    %al,(%dx)
c01012bc:	8b 45 0c             	mov    0xc(%ebp),%eax
c01012bf:	c1 e8 18             	shr    $0x18,%eax
c01012c2:	83 c8 e0             	or     $0xffffffe0,%eax
c01012c5:	0f b6 c0             	movzbl %al,%eax
c01012c8:	c7 45 d4 f6 01 00 00 	movl   $0x1f6,-0x2c(%ebp)
c01012cf:	88 45 d3             	mov    %al,-0x2d(%ebp)
c01012d2:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
c01012d6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c01012d9:	ee                   	out    %al,(%dx)
c01012da:	c7 45 cc f7 01 00 00 	movl   $0x1f7,-0x34(%ebp)
c01012e1:	c6 45 cb 20          	movb   $0x20,-0x35(%ebp)
c01012e5:	0f b6 45 cb          	movzbl -0x35(%ebp),%eax
c01012e9:	8b 55 cc             	mov    -0x34(%ebp),%edx
c01012ec:	ee                   	out    %al,(%dx)
c01012ed:	e8 32 ff ff ff       	call   c0101224 <waitdisk>
c01012f2:	c7 45 c4 f0 01 00 00 	movl   $0x1f0,-0x3c(%ebp)
c01012f9:	8b 45 08             	mov    0x8(%ebp),%eax
c01012fc:	89 45 c0             	mov    %eax,-0x40(%ebp)
c01012ff:	c7 45 bc 80 00 00 00 	movl   $0x80,-0x44(%ebp)
c0101306:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0101309:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c010130c:	8b 45 bc             	mov    -0x44(%ebp),%eax
c010130f:	89 cb                	mov    %ecx,%ebx
c0101311:	89 df                	mov    %ebx,%edi
c0101313:	89 c1                	mov    %eax,%ecx
c0101315:	fc                   	cld    
c0101316:	f2 6d                	repnz insl (%dx),%es:(%edi)
c0101318:	89 c8                	mov    %ecx,%eax
c010131a:	89 fb                	mov    %edi,%ebx
c010131c:	89 5d c0             	mov    %ebx,-0x40(%ebp)
c010131f:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0101322:	83 c4 40             	add    $0x40,%esp
c0101325:	5b                   	pop    %ebx
c0101326:	5f                   	pop    %edi
c0101327:	5d                   	pop    %ebp
c0101328:	c3                   	ret    

c0101329 <read_disk>:
c0101329:	55                   	push   %ebp
c010132a:	89 e5                	mov    %esp,%ebp
c010132c:	83 ec 10             	sub    $0x10,%esp
c010132f:	8b 55 0c             	mov    0xc(%ebp),%edx
c0101332:	8b 45 08             	mov    0x8(%ebp),%eax
c0101335:	01 d0                	add    %edx,%eax
c0101337:	89 45 f8             	mov    %eax,-0x8(%ebp)
c010133a:	8b 45 10             	mov    0x10(%ebp),%eax
c010133d:	99                   	cltd   
c010133e:	c1 ea 17             	shr    $0x17,%edx
c0101341:	01 d0                	add    %edx,%eax
c0101343:	25 ff 01 00 00       	and    $0x1ff,%eax
c0101348:	29 d0                	sub    %edx,%eax
c010134a:	f7 d8                	neg    %eax
c010134c:	01 45 08             	add    %eax,0x8(%ebp)
c010134f:	8b 45 10             	mov    0x10(%ebp),%eax
c0101352:	8d 90 ff 01 00 00    	lea    0x1ff(%eax),%edx
c0101358:	85 c0                	test   %eax,%eax
c010135a:	0f 48 c2             	cmovs  %edx,%eax
c010135d:	c1 f8 09             	sar    $0x9,%eax
c0101360:	83 c0 01             	add    $0x1,%eax
c0101363:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0101366:	eb 1a                	jmp    c0101382 <read_disk+0x59>
c0101368:	8b 45 fc             	mov    -0x4(%ebp),%eax
c010136b:	50                   	push   %eax
c010136c:	ff 75 08             	pushl  0x8(%ebp)
c010136f:	e8 da fe ff ff       	call   c010124e <readsect>
c0101374:	83 c4 08             	add    $0x8,%esp
c0101377:	81 45 08 00 02 00 00 	addl   $0x200,0x8(%ebp)
c010137e:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0101382:	8b 45 08             	mov    0x8(%ebp),%eax
c0101385:	3b 45 f8             	cmp    -0x8(%ebp),%eax
c0101388:	72 de                	jb     c0101368 <read_disk+0x3f>
c010138a:	c9                   	leave  
c010138b:	c3                   	ret    

c010138c <load>:
c010138c:	55                   	push   %ebp
c010138d:	89 e5                	mov    %esp,%ebp
c010138f:	83 ec 28             	sub    $0x28,%esp
c0101392:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0101399:	83 ec 04             	sub    $0x4,%esp
c010139c:	68 00 10 00 00       	push   $0x1000
c01013a1:	6a 00                	push   $0x0
c01013a3:	ff 75 0c             	pushl  0xc(%ebp)
c01013a6:	e8 6f 18 00 00       	call   c0102c1a <mm_alloc>
c01013ab:	83 c4 10             	add    $0x10,%esp
c01013ae:	8b 45 08             	mov    0x8(%ebp),%eax
c01013b1:	83 ec 04             	sub    $0x4,%esp
c01013b4:	50                   	push   %eax
c01013b5:	68 00 10 00 00       	push   $0x1000
c01013ba:	ff 75 ec             	pushl  -0x14(%ebp)
c01013bd:	e8 67 ff ff ff       	call   c0101329 <read_disk>
c01013c2:	83 c4 10             	add    $0x10,%esp
c01013c5:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01013c8:	8b 50 1c             	mov    0x1c(%eax),%edx
c01013cb:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01013ce:	01 d0                	add    %edx,%eax
c01013d0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01013d3:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01013d6:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
c01013da:	0f b7 c0             	movzwl %ax,%eax
c01013dd:	c1 e0 05             	shl    $0x5,%eax
c01013e0:	89 c2                	mov    %eax,%edx
c01013e2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01013e5:	01 d0                	add    %edx,%eax
c01013e7:	89 45 e8             	mov    %eax,-0x18(%ebp)
c01013ea:	83 ec 04             	sub    $0x4,%esp
c01013ed:	ff 75 0c             	pushl  0xc(%ebp)
c01013f0:	6a 52                	push   $0x52
c01013f2:	68 1b 35 10 c0       	push   $0xc010351b
c01013f7:	e8 f8 fd ff ff       	call   c01011f4 <_paddr>
c01013fc:	83 c4 10             	add    $0x10,%esp
c01013ff:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0101402:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0101405:	0f 22 d8             	mov    %eax,%cr3
c0101408:	eb 7b                	jmp    c0101485 <load+0xf9>
c010140a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010140d:	8b 40 14             	mov    0x14(%eax),%eax
c0101410:	89 c2                	mov    %eax,%edx
c0101412:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101415:	8b 40 0c             	mov    0xc(%eax),%eax
c0101418:	83 ec 04             	sub    $0x4,%esp
c010141b:	52                   	push   %edx
c010141c:	50                   	push   %eax
c010141d:	ff 75 0c             	pushl  0xc(%ebp)
c0101420:	e8 f5 17 00 00       	call   c0102c1a <mm_alloc>
c0101425:	83 c4 10             	add    $0x10,%esp
c0101428:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010142b:	8b 50 04             	mov    0x4(%eax),%edx
c010142e:	8b 45 08             	mov    0x8(%ebp),%eax
c0101431:	01 d0                	add    %edx,%eax
c0101433:	89 c1                	mov    %eax,%ecx
c0101435:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101438:	8b 40 10             	mov    0x10(%eax),%eax
c010143b:	89 c2                	mov    %eax,%edx
c010143d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101440:	8b 40 0c             	mov    0xc(%eax),%eax
c0101443:	83 ec 04             	sub    $0x4,%esp
c0101446:	51                   	push   %ecx
c0101447:	52                   	push   %edx
c0101448:	50                   	push   %eax
c0101449:	e8 db fe ff ff       	call   c0101329 <read_disk>
c010144e:	83 c4 10             	add    $0x10,%esp
c0101451:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101454:	8b 50 0c             	mov    0xc(%eax),%edx
c0101457:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010145a:	8b 40 10             	mov    0x10(%eax),%eax
c010145d:	01 d0                	add    %edx,%eax
c010145f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101462:	eb 0a                	jmp    c010146e <load+0xe2>
c0101464:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101467:	c6 00 00             	movb   $0x0,(%eax)
c010146a:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c010146e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101471:	8b 50 0c             	mov    0xc(%eax),%edx
c0101474:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101477:	8b 40 14             	mov    0x14(%eax),%eax
c010147a:	01 d0                	add    %edx,%eax
c010147c:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c010147f:	77 e3                	ja     c0101464 <load+0xd8>
c0101481:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c0101485:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101488:	3b 45 e8             	cmp    -0x18(%ebp),%eax
c010148b:	0f 82 79 ff ff ff    	jb     c010140a <load+0x7e>
c0101491:	83 ec 04             	sub    $0x4,%esp
c0101494:	68 00 00 01 00       	push   $0x10000
c0101499:	68 00 00 60 00       	push   $0x600000
c010149e:	ff 75 0c             	pushl  0xc(%ebp)
c01014a1:	e8 74 17 00 00       	call   c0102c1a <mm_alloc>
c01014a6:	83 c4 10             	add    $0x10,%esp
c01014a9:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01014ac:	8b 40 18             	mov    0x18(%eax),%eax
c01014af:	c9                   	leave  
c01014b0:	c3                   	ret    

c01014b1 <my_strlen>:
c01014b1:	55                   	push   %ebp
c01014b2:	89 e5                	mov    %esp,%ebp
c01014b4:	83 ec 10             	sub    $0x10,%esp
c01014b7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c01014be:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c01014c5:	eb 08                	jmp    c01014cf <my_strlen+0x1e>
c01014c7:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c01014cb:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c01014cf:	8b 55 fc             	mov    -0x4(%ebp),%edx
c01014d2:	8b 45 08             	mov    0x8(%ebp),%eax
c01014d5:	01 d0                	add    %edx,%eax
c01014d7:	0f b6 00             	movzbl (%eax),%eax
c01014da:	84 c0                	test   %al,%al
c01014dc:	75 e9                	jne    c01014c7 <my_strlen+0x16>
c01014de:	8b 45 f8             	mov    -0x8(%ebp),%eax
c01014e1:	c9                   	leave  
c01014e2:	c3                   	ret    

c01014e3 <my_strcmp>:
c01014e3:	55                   	push   %ebp
c01014e4:	89 e5                	mov    %esp,%ebp
c01014e6:	83 ec 10             	sub    $0x10,%esp
c01014e9:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c01014f0:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c01014f7:	eb 4a                	jmp    c0101543 <my_strcmp+0x60>
c01014f9:	8b 55 f8             	mov    -0x8(%ebp),%edx
c01014fc:	8b 45 08             	mov    0x8(%ebp),%eax
c01014ff:	01 d0                	add    %edx,%eax
c0101501:	0f b6 10             	movzbl (%eax),%edx
c0101504:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0101507:	8b 45 0c             	mov    0xc(%ebp),%eax
c010150a:	01 c8                	add    %ecx,%eax
c010150c:	0f b6 00             	movzbl (%eax),%eax
c010150f:	38 c2                	cmp    %al,%dl
c0101511:	7d 09                	jge    c010151c <my_strcmp+0x39>
c0101513:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%ebp)
c010151a:	eb 45                	jmp    c0101561 <my_strcmp+0x7e>
c010151c:	8b 55 f8             	mov    -0x8(%ebp),%edx
c010151f:	8b 45 08             	mov    0x8(%ebp),%eax
c0101522:	01 d0                	add    %edx,%eax
c0101524:	0f b6 10             	movzbl (%eax),%edx
c0101527:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c010152a:	8b 45 0c             	mov    0xc(%ebp),%eax
c010152d:	01 c8                	add    %ecx,%eax
c010152f:	0f b6 00             	movzbl (%eax),%eax
c0101532:	38 c2                	cmp    %al,%dl
c0101534:	7e 09                	jle    c010153f <my_strcmp+0x5c>
c0101536:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
c010153d:	eb 22                	jmp    c0101561 <my_strcmp+0x7e>
c010153f:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c0101543:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0101546:	8b 45 08             	mov    0x8(%ebp),%eax
c0101549:	01 d0                	add    %edx,%eax
c010154b:	0f b6 00             	movzbl (%eax),%eax
c010154e:	84 c0                	test   %al,%al
c0101550:	74 0f                	je     c0101561 <my_strcmp+0x7e>
c0101552:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0101555:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101558:	01 d0                	add    %edx,%eax
c010155a:	0f b6 00             	movzbl (%eax),%eax
c010155d:	84 c0                	test   %al,%al
c010155f:	75 98                	jne    c01014f9 <my_strcmp+0x16>
c0101561:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0101564:	8b 45 08             	mov    0x8(%ebp),%eax
c0101567:	01 d0                	add    %edx,%eax
c0101569:	0f b6 00             	movzbl (%eax),%eax
c010156c:	84 c0                	test   %al,%al
c010156e:	75 16                	jne    c0101586 <my_strcmp+0xa3>
c0101570:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0101573:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101576:	01 d0                	add    %edx,%eax
c0101578:	0f b6 00             	movzbl (%eax),%eax
c010157b:	84 c0                	test   %al,%al
c010157d:	74 07                	je     c0101586 <my_strcmp+0xa3>
c010157f:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%ebp)
c0101586:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0101589:	8b 45 08             	mov    0x8(%ebp),%eax
c010158c:	01 d0                	add    %edx,%eax
c010158e:	0f b6 00             	movzbl (%eax),%eax
c0101591:	84 c0                	test   %al,%al
c0101593:	74 16                	je     c01015ab <my_strcmp+0xc8>
c0101595:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0101598:	8b 45 0c             	mov    0xc(%ebp),%eax
c010159b:	01 d0                	add    %edx,%eax
c010159d:	0f b6 00             	movzbl (%eax),%eax
c01015a0:	84 c0                	test   %al,%al
c01015a2:	75 07                	jne    c01015ab <my_strcmp+0xc8>
c01015a4:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
c01015ab:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01015ae:	c9                   	leave  
c01015af:	c3                   	ret    

c01015b0 <my_strcpy>:
c01015b0:	55                   	push   %ebp
c01015b1:	89 e5                	mov    %esp,%ebp
c01015b3:	83 ec 10             	sub    $0x10,%esp
c01015b6:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c01015bd:	8b 45 10             	mov    0x10(%ebp),%eax
c01015c0:	89 45 f8             	mov    %eax,-0x8(%ebp)
c01015c3:	eb 2a                	jmp    c01015ef <my_strcpy+0x3f>
c01015c5:	8b 55 fc             	mov    -0x4(%ebp),%edx
c01015c8:	8b 45 08             	mov    0x8(%ebp),%eax
c01015cb:	01 c2                	add    %eax,%edx
c01015cd:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c01015d0:	8b 45 0c             	mov    0xc(%ebp),%eax
c01015d3:	01 c8                	add    %ecx,%eax
c01015d5:	0f b6 00             	movzbl (%eax),%eax
c01015d8:	88 02                	mov    %al,(%edx)
c01015da:	8b 55 fc             	mov    -0x4(%ebp),%edx
c01015dd:	8b 45 0c             	mov    0xc(%ebp),%eax
c01015e0:	01 d0                	add    %edx,%eax
c01015e2:	0f b6 00             	movzbl (%eax),%eax
c01015e5:	84 c0                	test   %al,%al
c01015e7:	75 02                	jne    c01015eb <my_strcpy+0x3b>
c01015e9:	eb 11                	jmp    c01015fc <my_strcpy+0x4c>
c01015eb:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c01015ef:	8b 45 f8             	mov    -0x8(%ebp),%eax
c01015f2:	8d 50 ff             	lea    -0x1(%eax),%edx
c01015f5:	89 55 f8             	mov    %edx,-0x8(%ebp)
c01015f8:	85 c0                	test   %eax,%eax
c01015fa:	75 c9                	jne    c01015c5 <my_strcpy+0x15>
c01015fc:	8b 55 fc             	mov    -0x4(%ebp),%edx
c01015ff:	8b 45 08             	mov    0x8(%ebp),%eax
c0101602:	01 d0                	add    %edx,%eax
c0101604:	c6 00 00             	movb   $0x0,(%eax)
c0101607:	8b 45 fc             	mov    -0x4(%ebp),%eax
c010160a:	c9                   	leave  
c010160b:	c3                   	ret    

c010160c <print_tf>:
c010160c:	55                   	push   %ebp
c010160d:	89 e5                	mov    %esp,%ebp
c010160f:	83 ec 08             	sub    $0x8,%esp
c0101612:	8b 45 08             	mov    0x8(%ebp),%eax
c0101615:	8b 40 1c             	mov    0x1c(%eax),%eax
c0101618:	83 ec 08             	sub    $0x8,%esp
c010161b:	50                   	push   %eax
c010161c:	68 2c 35 10 c0       	push   $0xc010352c
c0101621:	e8 73 fb ff ff       	call   c0101199 <printk>
c0101626:	83 c4 10             	add    $0x10,%esp
c0101629:	8b 45 08             	mov    0x8(%ebp),%eax
c010162c:	8b 40 10             	mov    0x10(%eax),%eax
c010162f:	83 ec 08             	sub    $0x8,%esp
c0101632:	50                   	push   %eax
c0101633:	68 33 35 10 c0       	push   $0xc0103533
c0101638:	e8 5c fb ff ff       	call   c0101199 <printk>
c010163d:	83 c4 10             	add    $0x10,%esp
c0101640:	8b 45 08             	mov    0x8(%ebp),%eax
c0101643:	8b 40 18             	mov    0x18(%eax),%eax
c0101646:	83 ec 08             	sub    $0x8,%esp
c0101649:	50                   	push   %eax
c010164a:	68 3a 35 10 c0       	push   $0xc010353a
c010164f:	e8 45 fb ff ff       	call   c0101199 <printk>
c0101654:	83 c4 10             	add    $0x10,%esp
c0101657:	8b 45 08             	mov    0x8(%ebp),%eax
c010165a:	8b 40 14             	mov    0x14(%eax),%eax
c010165d:	83 ec 08             	sub    $0x8,%esp
c0101660:	50                   	push   %eax
c0101661:	68 41 35 10 c0       	push   $0xc0103541
c0101666:	e8 2e fb ff ff       	call   c0101199 <printk>
c010166b:	83 c4 10             	add    $0x10,%esp
c010166e:	8b 45 08             	mov    0x8(%ebp),%eax
c0101671:	8b 00                	mov    (%eax),%eax
c0101673:	83 ec 08             	sub    $0x8,%esp
c0101676:	50                   	push   %eax
c0101677:	68 48 35 10 c0       	push   $0xc0103548
c010167c:	e8 18 fb ff ff       	call   c0101199 <printk>
c0101681:	83 c4 10             	add    $0x10,%esp
c0101684:	8b 45 08             	mov    0x8(%ebp),%eax
c0101687:	8b 40 34             	mov    0x34(%eax),%eax
c010168a:	83 ec 08             	sub    $0x8,%esp
c010168d:	50                   	push   %eax
c010168e:	68 4f 35 10 c0       	push   $0xc010354f
c0101693:	e8 01 fb ff ff       	call   c0101199 <printk>
c0101698:	83 c4 10             	add    $0x10,%esp
c010169b:	8b 45 08             	mov    0x8(%ebp),%eax
c010169e:	8b 40 08             	mov    0x8(%eax),%eax
c01016a1:	83 ec 08             	sub    $0x8,%esp
c01016a4:	50                   	push   %eax
c01016a5:	68 56 35 10 c0       	push   $0xc0103556
c01016aa:	e8 ea fa ff ff       	call   c0101199 <printk>
c01016af:	83 c4 10             	add    $0x10,%esp
c01016b2:	8b 45 08             	mov    0x8(%ebp),%eax
c01016b5:	8b 40 28             	mov    0x28(%eax),%eax
c01016b8:	83 ec 08             	sub    $0x8,%esp
c01016bb:	50                   	push   %eax
c01016bc:	68 5d 35 10 c0       	push   $0xc010355d
c01016c1:	e8 d3 fa ff ff       	call   c0101199 <printk>
c01016c6:	83 c4 10             	add    $0x10,%esp
c01016c9:	8b 45 08             	mov    0x8(%ebp),%eax
c01016cc:	8b 40 2c             	mov    0x2c(%eax),%eax
c01016cf:	83 ec 08             	sub    $0x8,%esp
c01016d2:	50                   	push   %eax
c01016d3:	68 64 35 10 c0       	push   $0xc0103564
c01016d8:	e8 bc fa ff ff       	call   c0101199 <printk>
c01016dd:	83 c4 10             	add    $0x10,%esp
c01016e0:	c9                   	leave  
c01016e1:	c3                   	ret    

c01016e2 <list>:
c01016e2:	55                   	push   %ebp
c01016e3:	89 e5                	mov    %esp,%ebp
c01016e5:	83 ec 18             	sub    $0x18,%esp
c01016e8:	c7 45 f4 40 4f 13 c0 	movl   $0xc0134f40,-0xc(%ebp)
c01016ef:	eb 27                	jmp    c0101718 <list+0x36>
c01016f1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01016f4:	8d 50 0c             	lea    0xc(%eax),%edx
c01016f7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01016fa:	8b 40 08             	mov    0x8(%eax),%eax
c01016fd:	83 ec 04             	sub    $0x4,%esp
c0101700:	52                   	push   %edx
c0101701:	50                   	push   %eax
c0101702:	68 6c 35 10 c0       	push   $0xc010356c
c0101707:	e8 8d fa ff ff       	call   c0101199 <printk>
c010170c:	83 c4 10             	add    $0x10,%esp
c010170f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101712:	8b 40 3c             	mov    0x3c(%eax),%eax
c0101715:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101718:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c010171c:	75 d3                	jne    c01016f1 <list+0xf>
c010171e:	a1 c0 00 11 c0       	mov    0xc01100c0,%eax
c0101723:	c1 e0 02             	shl    $0x2,%eax
c0101726:	89 c2                	mov    %eax,%edx
c0101728:	c1 e2 04             	shl    $0x4,%edx
c010172b:	01 d0                	add    %edx,%eax
c010172d:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101732:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101735:	eb 32                	jmp    c0101769 <list+0x87>
c0101737:	a1 c0 00 11 c0       	mov    0xc01100c0,%eax
c010173c:	85 c0                	test   %eax,%eax
c010173e:	75 02                	jne    c0101742 <list+0x60>
c0101740:	eb 2d                	jmp    c010176f <list+0x8d>
c0101742:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101745:	8d 50 0c             	lea    0xc(%eax),%edx
c0101748:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010174b:	8b 40 08             	mov    0x8(%eax),%eax
c010174e:	83 ec 04             	sub    $0x4,%esp
c0101751:	52                   	push   %edx
c0101752:	50                   	push   %eax
c0101753:	68 90 35 10 c0       	push   $0xc0103590
c0101758:	e8 3c fa ff ff       	call   c0101199 <printk>
c010175d:	83 c4 10             	add    $0x10,%esp
c0101760:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101763:	8b 40 3c             	mov    0x3c(%eax),%eax
c0101766:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101769:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c010176d:	75 c8                	jne    c0101737 <list+0x55>
c010176f:	a1 c8 00 11 c0       	mov    0xc01100c8,%eax
c0101774:	c1 e0 02             	shl    $0x2,%eax
c0101777:	89 c2                	mov    %eax,%edx
c0101779:	c1 e2 04             	shl    $0x4,%edx
c010177c:	01 d0                	add    %edx,%eax
c010177e:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101783:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101786:	eb 32                	jmp    c01017ba <list+0xd8>
c0101788:	a1 c8 00 11 c0       	mov    0xc01100c8,%eax
c010178d:	85 c0                	test   %eax,%eax
c010178f:	75 02                	jne    c0101793 <list+0xb1>
c0101791:	eb 2d                	jmp    c01017c0 <list+0xde>
c0101793:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101796:	8d 50 0c             	lea    0xc(%eax),%edx
c0101799:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010179c:	8b 40 08             	mov    0x8(%eax),%eax
c010179f:	83 ec 04             	sub    $0x4,%esp
c01017a2:	52                   	push   %edx
c01017a3:	50                   	push   %eax
c01017a4:	68 b4 35 10 c0       	push   $0xc01035b4
c01017a9:	e8 eb f9 ff ff       	call   c0101199 <printk>
c01017ae:	83 c4 10             	add    $0x10,%esp
c01017b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01017b4:	8b 40 3c             	mov    0x3c(%eax),%eax
c01017b7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01017ba:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c01017be:	75 c8                	jne    c0101788 <list+0xa6>
c01017c0:	83 ec 0c             	sub    $0xc,%esp
c01017c3:	68 d7 35 10 c0       	push   $0xc01035d7
c01017c8:	e8 cc f9 ff ff       	call   c0101199 <printk>
c01017cd:	83 c4 10             	add    $0x10,%esp
c01017d0:	c9                   	leave  
c01017d1:	c3                   	ret    

c01017d2 <debug>:
c01017d2:	55                   	push   %ebp
c01017d3:	89 e5                	mov    %esp,%ebp
c01017d5:	83 ec 08             	sub    $0x8,%esp
c01017d8:	8b 0d 10 4f 13 c0    	mov    0xc0134f10,%ecx
c01017de:	8b 15 04 20 17 c0    	mov    0xc0172004,%edx
c01017e4:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c01017e9:	51                   	push   %ecx
c01017ea:	52                   	push   %edx
c01017eb:	50                   	push   %eax
c01017ec:	68 e0 35 10 c0       	push   $0xc01035e0
c01017f1:	e8 a3 f9 ff ff       	call   c0101199 <printk>
c01017f6:	83 c4 10             	add    $0x10,%esp
c01017f9:	c9                   	leave  
c01017fa:	c3                   	ret    

c01017fb <getpid>:
c01017fb:	55                   	push   %ebp
c01017fc:	89 e5                	mov    %esp,%ebp
c01017fe:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c0101803:	c1 e0 02             	shl    $0x2,%eax
c0101806:	89 c2                	mov    %eax,%edx
c0101808:	c1 e2 04             	shl    $0x4,%edx
c010180b:	01 d0                	add    %edx,%eax
c010180d:	83 c0 30             	add    $0x30,%eax
c0101810:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101815:	8b 40 0c             	mov    0xc(%eax),%eax
c0101818:	8b 40 08             	mov    0x8(%eax),%eax
c010181b:	5d                   	pop    %ebp
c010181c:	c3                   	ret    

c010181d <get_free_pid>:
c010181d:	55                   	push   %ebp
c010181e:	89 e5                	mov    %esp,%ebp
c0101820:	83 ec 18             	sub    $0x18,%esp
c0101823:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c010182a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0101831:	eb 25                	jmp    c0101858 <get_free_pid+0x3b>
c0101833:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101836:	8b 04 85 00 40 13 c0 	mov    -0x3fecc000(,%eax,4),%eax
c010183d:	85 c0                	test   %eax,%eax
c010183f:	75 13                	jne    c0101854 <get_free_pid+0x37>
c0101841:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101844:	c7 04 85 00 40 13 c0 	movl   $0x1,-0x3fecc000(,%eax,4)
c010184b:	01 00 00 00 
c010184f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101852:	eb 1c                	jmp    c0101870 <get_free_pid+0x53>
c0101854:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0101858:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c010185c:	7e d5                	jle    c0101833 <get_free_pid+0x16>
c010185e:	83 ec 0c             	sub    $0xc,%esp
c0101861:	68 04 36 10 c0       	push   $0xc0103604
c0101866:	e8 2e f9 ff ff       	call   c0101199 <printk>
c010186b:	83 c4 10             	add    $0x10,%esp
c010186e:	eb fe                	jmp    c010186e <get_free_pid+0x51>
c0101870:	c9                   	leave  
c0101871:	c3                   	ret    

c0101872 <free_a_pid>:
c0101872:	55                   	push   %ebp
c0101873:	89 e5                	mov    %esp,%ebp
c0101875:	8b 45 08             	mov    0x8(%ebp),%eax
c0101878:	c7 04 85 00 40 13 c0 	movl   $0x0,-0x3fecc000(,%eax,4)
c010187f:	00 00 00 00 
c0101883:	5d                   	pop    %ebp
c0101884:	c3                   	ret    

c0101885 <init_PCB>:
c0101885:	55                   	push   %ebp
c0101886:	89 e5                	mov    %esp,%ebp
c0101888:	83 ec 18             	sub    $0x18,%esp
c010188b:	a1 04 00 1b c0       	mov    0xc01b0004,%eax
c0101890:	83 ec 04             	sub    $0x4,%esp
c0101893:	68 00 10 00 00       	push   $0x1000
c0101898:	50                   	push   %eax
c0101899:	68 00 60 13 c0       	push   $0xc0136000
c010189e:	e8 1b f9 ff ff       	call   c01011be <my_memcpy>
c01018a3:	83 c4 10             	add    $0x10,%esp
c01018a6:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
c01018ad:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01018b4:	eb 1d                	jmp    c01018d3 <init_PCB+0x4e>
c01018b6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018b9:	0f b7 04 c5 44 00 1b 	movzwl -0x3fe4ffbc(,%eax,8),%eax
c01018c0:	c0 
c01018c1:	8d 50 01             	lea    0x1(%eax),%edx
c01018c4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018c7:	66 89 14 c5 44 00 1b 	mov    %dx,-0x3fe4ffbc(,%eax,8)
c01018ce:	c0 
c01018cf:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01018d3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018d6:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c01018d9:	7c db                	jl     c01018b6 <init_PCB+0x31>
c01018db:	83 ec 08             	sub    $0x8,%esp
c01018de:	68 00 60 13 c0       	push   $0xc0136000
c01018e3:	68 00 20 03 00       	push   $0x32000
c01018e8:	e8 9f fa ff ff       	call   c010138c <load>
c01018ed:	83 c4 10             	add    $0x10,%esp
c01018f0:	a3 28 41 13 c0       	mov    %eax,0xc0134128
c01018f5:	c7 05 2c 41 13 c0 1b 	movl   $0x1b,0xc013412c
c01018fc:	00 00 00 
c01018ff:	c7 05 30 41 13 c0 02 	movl   $0x202,0xc0134130
c0101906:	02 00 00 
c0101909:	c7 05 34 41 13 c0 f0 	movl   $0x60fff0,0xc0134134
c0101910:	ff 60 00 
c0101913:	c7 05 38 41 13 c0 23 	movl   $0x23,0xc0134138
c010191a:	00 00 00 
c010191d:	83 ec 04             	sub    $0x4,%esp
c0101920:	6a 04                	push   $0x4
c0101922:	68 12 36 10 c0       	push   $0xc0103612
c0101927:	68 4c 4f 13 c0       	push   $0xc0134f4c
c010192c:	e8 7f fc ff ff       	call   c01015b0 <my_strcpy>
c0101931:	83 c4 10             	add    $0x10,%esp
c0101934:	c7 05 48 4f 13 c0 00 	movl   $0x0,0xc0134f48
c010193b:	00 00 00 
c010193e:	c7 05 70 4f 13 c0 00 	movl   $0x0,0xc0134f70
c0101945:	00 00 00 
c0101948:	c7 05 80 4f 13 c0 00 	movl   $0x0,0xc0134f80
c010194f:	00 00 00 
c0101952:	c7 05 7c 4f 13 c0 00 	movl   $0x0,0xc0134f7c
c0101959:	00 00 00 
c010195c:	c7 05 6c 4f 13 c0 01 	movl   $0x1,0xc0134f6c
c0101963:	00 00 00 
c0101966:	c7 05 74 4f 13 c0 01 	movl   $0x1,0xc0134f74
c010196d:	00 00 00 
c0101970:	c7 05 78 4f 13 c0 c8 	movl   $0xc8,0xc0134f78
c0101977:	00 00 00 
c010197a:	c7 05 44 4f 13 c0 00 	movl   $0xc0134100,0xc0134f44
c0101981:	41 13 c0 
c0101984:	c7 05 00 20 17 c0 01 	movl   $0x1,0xc0172000
c010198b:	00 00 00 
c010198e:	c7 05 04 20 17 c0 00 	movl   $0x0,0xc0172004
c0101995:	00 00 00 
c0101998:	c7 05 10 4f 13 c0 00 	movl   $0x0,0xc0134f10
c010199f:	00 00 00 
c01019a2:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01019a9:	eb 2a                	jmp    c01019d5 <init_PCB+0x150>
c01019ab:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01019ae:	c1 e0 02             	shl    $0x2,%eax
c01019b1:	89 c2                	mov    %eax,%edx
c01019b3:	c1 e2 04             	shl    $0x4,%edx
c01019b6:	01 d0                	add    %edx,%eax
c01019b8:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c01019be:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01019c1:	89 02                	mov    %eax,(%edx)
c01019c3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01019c6:	c7 04 85 00 40 13 c0 	movl   $0x0,-0x3fecc000(,%eax,4)
c01019cd:	00 00 00 00 
c01019d1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01019d5:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c01019d9:	7e d0                	jle    c01019ab <init_PCB+0x126>
c01019db:	c7 05 00 40 13 c0 01 	movl   $0x1,0xc0134000
c01019e2:	00 00 00 
c01019e5:	c9                   	leave  
c01019e6:	c3                   	ret    

c01019e7 <add_PCB>:
c01019e7:	55                   	push   %ebp
c01019e8:	89 e5                	mov    %esp,%ebp
c01019ea:	83 ec 18             	sub    $0x18,%esp
c01019ed:	8b 15 00 20 17 c0    	mov    0xc0172000,%edx
c01019f3:	a1 04 20 17 c0       	mov    0xc0172004,%eax
c01019f8:	01 c2                	add    %eax,%edx
c01019fa:	a1 10 4f 13 c0       	mov    0xc0134f10,%eax
c01019ff:	01 d0                	add    %edx,%eax
c0101a01:	83 f8 3c             	cmp    $0x3c,%eax
c0101a04:	75 1b                	jne    c0101a21 <add_PCB+0x3a>
c0101a06:	83 ec 0c             	sub    $0xc,%esp
c0101a09:	68 17 36 10 c0       	push   $0xc0103617
c0101a0e:	e8 86 f7 ff ff       	call   c0101199 <printk>
c0101a13:	83 c4 10             	add    $0x10,%esp
c0101a16:	fb                   	sti    
c0101a17:	b8 00 00 00 00       	mov    $0x0,%eax
c0101a1c:	e9 95 03 00 00       	jmp    c0101db6 <add_PCB+0x3cf>
c0101a21:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0101a28:	eb 22                	jmp    c0101a4c <add_PCB+0x65>
c0101a2a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a2d:	c1 e0 02             	shl    $0x2,%eax
c0101a30:	89 c2                	mov    %eax,%edx
c0101a32:	c1 e2 04             	shl    $0x4,%edx
c0101a35:	01 d0                	add    %edx,%eax
c0101a37:	83 c0 20             	add    $0x20,%eax
c0101a3a:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101a3f:	8b 40 0c             	mov    0xc(%eax),%eax
c0101a42:	85 c0                	test   %eax,%eax
c0101a44:	75 02                	jne    c0101a48 <add_PCB+0x61>
c0101a46:	eb 0a                	jmp    c0101a52 <add_PCB+0x6b>
c0101a48:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0101a4c:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c0101a50:	7e d8                	jle    c0101a2a <add_PCB+0x43>
c0101a52:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a55:	c1 e0 02             	shl    $0x2,%eax
c0101a58:	89 c2                	mov    %eax,%edx
c0101a5a:	c1 e2 04             	shl    $0x4,%edx
c0101a5d:	01 d0                	add    %edx,%eax
c0101a5f:	83 c0 20             	add    $0x20,%eax
c0101a62:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101a67:	c7 40 0c 01 00 00 00 	movl   $0x1,0xc(%eax)
c0101a6e:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0101a72:	0f 85 98 00 00 00    	jne    c0101b10 <add_PCB+0x129>
c0101a78:	a1 bc 00 11 c0       	mov    0xc01100bc,%eax
c0101a7d:	c1 e0 02             	shl    $0x2,%eax
c0101a80:	89 c2                	mov    %eax,%edx
c0101a82:	c1 e2 04             	shl    $0x4,%edx
c0101a85:	01 d0                	add    %edx,%eax
c0101a87:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101a8c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101a8f:	8b 0d bc 00 11 c0    	mov    0xc01100bc,%ecx
c0101a95:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a98:	c1 e0 02             	shl    $0x2,%eax
c0101a9b:	89 c2                	mov    %eax,%edx
c0101a9d:	c1 e2 04             	shl    $0x4,%edx
c0101aa0:	01 d0                	add    %edx,%eax
c0101aa2:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c0101aa8:	89 c8                	mov    %ecx,%eax
c0101aaa:	c1 e0 02             	shl    $0x2,%eax
c0101aad:	89 c1                	mov    %eax,%ecx
c0101aaf:	c1 e1 04             	shl    $0x4,%ecx
c0101ab2:	01 c8                	add    %ecx,%eax
c0101ab4:	83 c0 30             	add    $0x30,%eax
c0101ab7:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101abc:	89 50 0c             	mov    %edx,0xc(%eax)
c0101abf:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101ac2:	c1 e0 02             	shl    $0x2,%eax
c0101ac5:	89 c2                	mov    %eax,%edx
c0101ac7:	c1 e2 04             	shl    $0x4,%edx
c0101aca:	01 d0                	add    %edx,%eax
c0101acc:	83 c0 40             	add    $0x40,%eax
c0101acf:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c0101ad5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101ad8:	89 02                	mov    %eax,(%edx)
c0101ada:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101add:	c1 e0 02             	shl    $0x2,%eax
c0101ae0:	89 c2                	mov    %eax,%edx
c0101ae2:	c1 e2 04             	shl    $0x4,%edx
c0101ae5:	01 d0                	add    %edx,%eax
c0101ae7:	83 c0 30             	add    $0x30,%eax
c0101aea:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101aef:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101af6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101af9:	a3 bc 00 11 c0       	mov    %eax,0xc01100bc
c0101afe:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c0101b03:	83 c0 01             	add    $0x1,%eax
c0101b06:	a3 00 20 17 c0       	mov    %eax,0xc0172000
c0101b0b:	e9 f9 01 00 00       	jmp    c0101d09 <add_PCB+0x322>
c0101b10:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0101b14:	0f 85 fa 00 00 00    	jne    c0101c14 <add_PCB+0x22d>
c0101b1a:	a1 04 20 17 c0       	mov    0xc0172004,%eax
c0101b1f:	85 c0                	test   %eax,%eax
c0101b21:	75 59                	jne    c0101b7c <add_PCB+0x195>
c0101b23:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b26:	a3 c0 00 11 c0       	mov    %eax,0xc01100c0
c0101b2b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b2e:	a3 c4 00 11 c0       	mov    %eax,0xc01100c4
c0101b33:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b36:	c1 e0 02             	shl    $0x2,%eax
c0101b39:	89 c2                	mov    %eax,%edx
c0101b3b:	c1 e2 04             	shl    $0x4,%edx
c0101b3e:	01 d0                	add    %edx,%eax
c0101b40:	83 c0 40             	add    $0x40,%eax
c0101b43:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101b48:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0101b4e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b51:	c1 e0 02             	shl    $0x2,%eax
c0101b54:	89 c2                	mov    %eax,%edx
c0101b56:	c1 e2 04             	shl    $0x4,%edx
c0101b59:	01 d0                	add    %edx,%eax
c0101b5b:	83 c0 30             	add    $0x30,%eax
c0101b5e:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101b63:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101b6a:	a1 04 20 17 c0       	mov    0xc0172004,%eax
c0101b6f:	83 c0 01             	add    $0x1,%eax
c0101b72:	a3 04 20 17 c0       	mov    %eax,0xc0172004
c0101b77:	e9 8d 01 00 00       	jmp    c0101d09 <add_PCB+0x322>
c0101b7c:	a1 c4 00 11 c0       	mov    0xc01100c4,%eax
c0101b81:	c1 e0 02             	shl    $0x2,%eax
c0101b84:	89 c2                	mov    %eax,%edx
c0101b86:	c1 e2 04             	shl    $0x4,%edx
c0101b89:	01 d0                	add    %edx,%eax
c0101b8b:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101b90:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101b93:	8b 0d c4 00 11 c0    	mov    0xc01100c4,%ecx
c0101b99:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b9c:	c1 e0 02             	shl    $0x2,%eax
c0101b9f:	89 c2                	mov    %eax,%edx
c0101ba1:	c1 e2 04             	shl    $0x4,%edx
c0101ba4:	01 d0                	add    %edx,%eax
c0101ba6:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c0101bac:	89 c8                	mov    %ecx,%eax
c0101bae:	c1 e0 02             	shl    $0x2,%eax
c0101bb1:	89 c1                	mov    %eax,%ecx
c0101bb3:	c1 e1 04             	shl    $0x4,%ecx
c0101bb6:	01 c8                	add    %ecx,%eax
c0101bb8:	83 c0 30             	add    $0x30,%eax
c0101bbb:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101bc0:	89 50 0c             	mov    %edx,0xc(%eax)
c0101bc3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101bc6:	c1 e0 02             	shl    $0x2,%eax
c0101bc9:	89 c2                	mov    %eax,%edx
c0101bcb:	c1 e2 04             	shl    $0x4,%edx
c0101bce:	01 d0                	add    %edx,%eax
c0101bd0:	83 c0 40             	add    $0x40,%eax
c0101bd3:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c0101bd9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101bdc:	89 02                	mov    %eax,(%edx)
c0101bde:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101be1:	c1 e0 02             	shl    $0x2,%eax
c0101be4:	89 c2                	mov    %eax,%edx
c0101be6:	c1 e2 04             	shl    $0x4,%edx
c0101be9:	01 d0                	add    %edx,%eax
c0101beb:	83 c0 30             	add    $0x30,%eax
c0101bee:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101bf3:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101bfa:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101bfd:	a3 c4 00 11 c0       	mov    %eax,0xc01100c4
c0101c02:	a1 04 20 17 c0       	mov    0xc0172004,%eax
c0101c07:	83 c0 01             	add    $0x1,%eax
c0101c0a:	a3 04 20 17 c0       	mov    %eax,0xc0172004
c0101c0f:	e9 f5 00 00 00       	jmp    c0101d09 <add_PCB+0x322>
c0101c14:	a1 10 4f 13 c0       	mov    0xc0134f10,%eax
c0101c19:	85 c0                	test   %eax,%eax
c0101c1b:	75 59                	jne    c0101c76 <add_PCB+0x28f>
c0101c1d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c20:	a3 c8 00 11 c0       	mov    %eax,0xc01100c8
c0101c25:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c28:	a3 cc 00 11 c0       	mov    %eax,0xc01100cc
c0101c2d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c30:	c1 e0 02             	shl    $0x2,%eax
c0101c33:	89 c2                	mov    %eax,%edx
c0101c35:	c1 e2 04             	shl    $0x4,%edx
c0101c38:	01 d0                	add    %edx,%eax
c0101c3a:	83 c0 40             	add    $0x40,%eax
c0101c3d:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101c42:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0101c48:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c4b:	c1 e0 02             	shl    $0x2,%eax
c0101c4e:	89 c2                	mov    %eax,%edx
c0101c50:	c1 e2 04             	shl    $0x4,%edx
c0101c53:	01 d0                	add    %edx,%eax
c0101c55:	83 c0 30             	add    $0x30,%eax
c0101c58:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101c5d:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101c64:	a1 10 4f 13 c0       	mov    0xc0134f10,%eax
c0101c69:	83 c0 01             	add    $0x1,%eax
c0101c6c:	a3 10 4f 13 c0       	mov    %eax,0xc0134f10
c0101c71:	e9 93 00 00 00       	jmp    c0101d09 <add_PCB+0x322>
c0101c76:	a1 cc 00 11 c0       	mov    0xc01100cc,%eax
c0101c7b:	c1 e0 02             	shl    $0x2,%eax
c0101c7e:	89 c2                	mov    %eax,%edx
c0101c80:	c1 e2 04             	shl    $0x4,%edx
c0101c83:	01 d0                	add    %edx,%eax
c0101c85:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101c8a:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101c8d:	8b 0d cc 00 11 c0    	mov    0xc01100cc,%ecx
c0101c93:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c96:	c1 e0 02             	shl    $0x2,%eax
c0101c99:	89 c2                	mov    %eax,%edx
c0101c9b:	c1 e2 04             	shl    $0x4,%edx
c0101c9e:	01 d0                	add    %edx,%eax
c0101ca0:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c0101ca6:	89 c8                	mov    %ecx,%eax
c0101ca8:	c1 e0 02             	shl    $0x2,%eax
c0101cab:	89 c1                	mov    %eax,%ecx
c0101cad:	c1 e1 04             	shl    $0x4,%ecx
c0101cb0:	01 c8                	add    %ecx,%eax
c0101cb2:	83 c0 30             	add    $0x30,%eax
c0101cb5:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101cba:	89 50 0c             	mov    %edx,0xc(%eax)
c0101cbd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101cc0:	c1 e0 02             	shl    $0x2,%eax
c0101cc3:	89 c2                	mov    %eax,%edx
c0101cc5:	c1 e2 04             	shl    $0x4,%edx
c0101cc8:	01 d0                	add    %edx,%eax
c0101cca:	83 c0 40             	add    $0x40,%eax
c0101ccd:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c0101cd3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101cd6:	89 02                	mov    %eax,(%edx)
c0101cd8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101cdb:	c1 e0 02             	shl    $0x2,%eax
c0101cde:	89 c2                	mov    %eax,%edx
c0101ce0:	c1 e2 04             	shl    $0x4,%edx
c0101ce3:	01 d0                	add    %edx,%eax
c0101ce5:	83 c0 30             	add    $0x30,%eax
c0101ce8:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101ced:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101cf4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101cf7:	a3 cc 00 11 c0       	mov    %eax,0xc01100cc
c0101cfc:	a1 10 4f 13 c0       	mov    0xc0134f10,%eax
c0101d01:	83 c0 01             	add    $0x1,%eax
c0101d04:	a3 10 4f 13 c0       	mov    %eax,0xc0134f10
c0101d09:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101d0c:	c1 e0 02             	shl    $0x2,%eax
c0101d0f:	89 c2                	mov    %eax,%edx
c0101d11:	c1 e2 04             	shl    $0x4,%edx
c0101d14:	01 d0                	add    %edx,%eax
c0101d16:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101d1b:	83 c0 0c             	add    $0xc,%eax
c0101d1e:	83 ec 04             	sub    $0x4,%esp
c0101d21:	6a 1f                	push   $0x1f
c0101d23:	ff 75 10             	pushl  0x10(%ebp)
c0101d26:	50                   	push   %eax
c0101d27:	e8 84 f8 ff ff       	call   c01015b0 <my_strcpy>
c0101d2c:	83 c4 10             	add    $0x10,%esp
c0101d2f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101d32:	c1 e0 02             	shl    $0x2,%eax
c0101d35:	89 c2                	mov    %eax,%edx
c0101d37:	c1 e2 04             	shl    $0x4,%edx
c0101d3a:	01 d0                	add    %edx,%eax
c0101d3c:	83 c0 30             	add    $0x30,%eax
c0101d3f:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c0101d45:	8b 45 14             	mov    0x14(%ebp),%eax
c0101d48:	89 42 08             	mov    %eax,0x8(%edx)
c0101d4b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101d4e:	c1 e0 02             	shl    $0x2,%eax
c0101d51:	89 c2                	mov    %eax,%edx
c0101d53:	c1 e2 04             	shl    $0x4,%edx
c0101d56:	01 d0                	add    %edx,%eax
c0101d58:	83 c0 30             	add    $0x30,%eax
c0101d5b:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c0101d61:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d64:	89 42 04             	mov    %eax,0x4(%edx)
c0101d67:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101d6a:	c1 e0 02             	shl    $0x2,%eax
c0101d6d:	89 c2                	mov    %eax,%edx
c0101d6f:	c1 e2 04             	shl    $0x4,%edx
c0101d72:	01 d0                	add    %edx,%eax
c0101d74:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c0101d7a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101d7d:	89 42 04             	mov    %eax,0x4(%edx)
c0101d80:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101d83:	c1 e0 02             	shl    $0x2,%eax
c0101d86:	89 c2                	mov    %eax,%edx
c0101d88:	c1 e2 04             	shl    $0x4,%edx
c0101d8b:	01 d0                	add    %edx,%eax
c0101d8d:	83 c0 30             	add    $0x30,%eax
c0101d90:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c0101d96:	8b 45 18             	mov    0x18(%ebp),%eax
c0101d99:	89 02                	mov    %eax,(%edx)
c0101d9b:	8b 55 1c             	mov    0x1c(%ebp),%edx
c0101d9e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101da1:	c1 e0 02             	shl    $0x2,%eax
c0101da4:	89 c1                	mov    %eax,%ecx
c0101da6:	c1 e1 04             	shl    $0x4,%ecx
c0101da9:	01 c8                	add    %ecx,%eax
c0101dab:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101db0:	89 50 08             	mov    %edx,0x8(%eax)
c0101db3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101db6:	c9                   	leave  
c0101db7:	c3                   	ret    

c0101db8 <delete_PCB>:
c0101db8:	55                   	push   %ebp
c0101db9:	89 e5                	mov    %esp,%ebp
c0101dbb:	83 ec 18             	sub    $0x18,%esp
c0101dbe:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0101dc2:	75 15                	jne    c0101dd9 <delete_PCB+0x21>
c0101dc4:	83 ec 0c             	sub    $0xc,%esp
c0101dc7:	68 2c 36 10 c0       	push   $0xc010362c
c0101dcc:	e8 c8 f3 ff ff       	call   c0101199 <printk>
c0101dd1:	83 c4 10             	add    $0x10,%esp
c0101dd4:	e9 c4 03 00 00       	jmp    c010219d <delete_PCB+0x3e5>
c0101dd9:	8b 45 08             	mov    0x8(%ebp),%eax
c0101ddc:	c1 e0 02             	shl    $0x2,%eax
c0101ddf:	89 c2                	mov    %eax,%edx
c0101de1:	c1 e2 04             	shl    $0x4,%edx
c0101de4:	01 d0                	add    %edx,%eax
c0101de6:	83 c0 20             	add    $0x20,%eax
c0101de9:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101dee:	8b 40 0c             	mov    0xc(%eax),%eax
c0101df1:	85 c0                	test   %eax,%eax
c0101df3:	75 15                	jne    c0101e0a <delete_PCB+0x52>
c0101df5:	83 ec 0c             	sub    $0xc,%esp
c0101df8:	68 4f 36 10 c0       	push   $0xc010364f
c0101dfd:	e8 97 f3 ff ff       	call   c0101199 <printk>
c0101e02:	83 c4 10             	add    $0x10,%esp
c0101e05:	e9 93 03 00 00       	jmp    c010219d <delete_PCB+0x3e5>
c0101e0a:	8b 45 08             	mov    0x8(%ebp),%eax
c0101e0d:	c1 e0 02             	shl    $0x2,%eax
c0101e10:	89 c2                	mov    %eax,%edx
c0101e12:	c1 e2 04             	shl    $0x4,%edx
c0101e15:	01 d0                	add    %edx,%eax
c0101e17:	83 c0 20             	add    $0x20,%eax
c0101e1a:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101e1f:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101e26:	8b 45 08             	mov    0x8(%ebp),%eax
c0101e29:	c1 e0 02             	shl    $0x2,%eax
c0101e2c:	89 c2                	mov    %eax,%edx
c0101e2e:	c1 e2 04             	shl    $0x4,%edx
c0101e31:	01 d0                	add    %edx,%eax
c0101e33:	83 c0 30             	add    $0x30,%eax
c0101e36:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101e3b:	8b 40 04             	mov    0x4(%eax),%eax
c0101e3e:	83 f8 01             	cmp    $0x1,%eax
c0101e41:	0f 85 d8 00 00 00    	jne    c0101f1f <delete_PCB+0x167>
c0101e47:	a1 bc 00 11 c0       	mov    0xc01100bc,%eax
c0101e4c:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101e4f:	75 52                	jne    c0101ea3 <delete_PCB+0xeb>
c0101e51:	8b 45 08             	mov    0x8(%ebp),%eax
c0101e54:	c1 e0 02             	shl    $0x2,%eax
c0101e57:	89 c2                	mov    %eax,%edx
c0101e59:	c1 e2 04             	shl    $0x4,%edx
c0101e5c:	01 d0                	add    %edx,%eax
c0101e5e:	83 c0 40             	add    $0x40,%eax
c0101e61:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101e66:	8b 00                	mov    (%eax),%eax
c0101e68:	8b 00                	mov    (%eax),%eax
c0101e6a:	a3 bc 00 11 c0       	mov    %eax,0xc01100bc
c0101e6f:	8b 45 08             	mov    0x8(%ebp),%eax
c0101e72:	c1 e0 02             	shl    $0x2,%eax
c0101e75:	89 c2                	mov    %eax,%edx
c0101e77:	c1 e2 04             	shl    $0x4,%edx
c0101e7a:	01 d0                	add    %edx,%eax
c0101e7c:	83 c0 40             	add    $0x40,%eax
c0101e7f:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101e84:	8b 10                	mov    (%eax),%edx
c0101e86:	8b 45 08             	mov    0x8(%ebp),%eax
c0101e89:	c1 e0 02             	shl    $0x2,%eax
c0101e8c:	89 c1                	mov    %eax,%ecx
c0101e8e:	c1 e1 04             	shl    $0x4,%ecx
c0101e91:	01 c8                	add    %ecx,%eax
c0101e93:	83 c0 30             	add    $0x30,%eax
c0101e96:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101e9b:	8b 40 0c             	mov    0xc(%eax),%eax
c0101e9e:	89 42 3c             	mov    %eax,0x3c(%edx)
c0101ea1:	eb 6a                	jmp    c0101f0d <delete_PCB+0x155>
c0101ea3:	8b 45 08             	mov    0x8(%ebp),%eax
c0101ea6:	c1 e0 02             	shl    $0x2,%eax
c0101ea9:	89 c2                	mov    %eax,%edx
c0101eab:	c1 e2 04             	shl    $0x4,%edx
c0101eae:	01 d0                	add    %edx,%eax
c0101eb0:	83 c0 40             	add    $0x40,%eax
c0101eb3:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101eb8:	8b 00                	mov    (%eax),%eax
c0101eba:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101ebd:	8b 45 08             	mov    0x8(%ebp),%eax
c0101ec0:	c1 e0 02             	shl    $0x2,%eax
c0101ec3:	89 c2                	mov    %eax,%edx
c0101ec5:	c1 e2 04             	shl    $0x4,%edx
c0101ec8:	01 d0                	add    %edx,%eax
c0101eca:	83 c0 40             	add    $0x40,%eax
c0101ecd:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101ed2:	8b 10                	mov    (%eax),%edx
c0101ed4:	8b 45 08             	mov    0x8(%ebp),%eax
c0101ed7:	c1 e0 02             	shl    $0x2,%eax
c0101eda:	89 c1                	mov    %eax,%ecx
c0101edc:	c1 e1 04             	shl    $0x4,%ecx
c0101edf:	01 c8                	add    %ecx,%eax
c0101ee1:	83 c0 30             	add    $0x30,%eax
c0101ee4:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101ee9:	8b 40 0c             	mov    0xc(%eax),%eax
c0101eec:	89 42 3c             	mov    %eax,0x3c(%edx)
c0101eef:	8b 45 08             	mov    0x8(%ebp),%eax
c0101ef2:	c1 e0 02             	shl    $0x2,%eax
c0101ef5:	89 c2                	mov    %eax,%edx
c0101ef7:	c1 e2 04             	shl    $0x4,%edx
c0101efa:	01 d0                	add    %edx,%eax
c0101efc:	83 c0 30             	add    $0x30,%eax
c0101eff:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101f04:	8b 40 0c             	mov    0xc(%eax),%eax
c0101f07:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101f0a:	89 50 40             	mov    %edx,0x40(%eax)
c0101f0d:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c0101f12:	83 e8 01             	sub    $0x1,%eax
c0101f15:	a3 00 20 17 c0       	mov    %eax,0xc0172000
c0101f1a:	e9 7e 02 00 00       	jmp    c010219d <delete_PCB+0x3e5>
c0101f1f:	8b 45 08             	mov    0x8(%ebp),%eax
c0101f22:	c1 e0 02             	shl    $0x2,%eax
c0101f25:	89 c2                	mov    %eax,%edx
c0101f27:	c1 e2 04             	shl    $0x4,%edx
c0101f2a:	01 d0                	add    %edx,%eax
c0101f2c:	83 c0 30             	add    $0x30,%eax
c0101f2f:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101f34:	8b 40 04             	mov    0x4(%eax),%eax
c0101f37:	83 f8 02             	cmp    $0x2,%eax
c0101f3a:	0f 85 33 01 00 00    	jne    c0102073 <delete_PCB+0x2bb>
c0101f40:	a1 04 20 17 c0       	mov    0xc0172004,%eax
c0101f45:	83 e8 01             	sub    $0x1,%eax
c0101f48:	a3 04 20 17 c0       	mov    %eax,0xc0172004
c0101f4d:	a1 04 20 17 c0       	mov    0xc0172004,%eax
c0101f52:	85 c0                	test   %eax,%eax
c0101f54:	75 19                	jne    c0101f6f <delete_PCB+0x1b7>
c0101f56:	c7 05 c0 00 11 c0 00 	movl   $0x0,0xc01100c0
c0101f5d:	00 00 00 
c0101f60:	c7 05 c4 00 11 c0 00 	movl   $0x0,0xc01100c4
c0101f67:	00 00 00 
c0101f6a:	e9 2e 02 00 00       	jmp    c010219d <delete_PCB+0x3e5>
c0101f6f:	a1 c0 00 11 c0       	mov    0xc01100c0,%eax
c0101f74:	39 45 08             	cmp    %eax,0x8(%ebp)
c0101f77:	75 43                	jne    c0101fbc <delete_PCB+0x204>
c0101f79:	8b 45 08             	mov    0x8(%ebp),%eax
c0101f7c:	c1 e0 02             	shl    $0x2,%eax
c0101f7f:	89 c2                	mov    %eax,%edx
c0101f81:	c1 e2 04             	shl    $0x4,%edx
c0101f84:	01 d0                	add    %edx,%eax
c0101f86:	83 c0 30             	add    $0x30,%eax
c0101f89:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101f8e:	8b 40 0c             	mov    0xc(%eax),%eax
c0101f91:	8b 00                	mov    (%eax),%eax
c0101f93:	a3 c0 00 11 c0       	mov    %eax,0xc01100c0
c0101f98:	8b 45 08             	mov    0x8(%ebp),%eax
c0101f9b:	c1 e0 02             	shl    $0x2,%eax
c0101f9e:	89 c2                	mov    %eax,%edx
c0101fa0:	c1 e2 04             	shl    $0x4,%edx
c0101fa3:	01 d0                	add    %edx,%eax
c0101fa5:	83 c0 30             	add    $0x30,%eax
c0101fa8:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101fad:	8b 40 0c             	mov    0xc(%eax),%eax
c0101fb0:	c7 40 40 00 00 00 00 	movl   $0x0,0x40(%eax)
c0101fb7:	e9 e1 01 00 00       	jmp    c010219d <delete_PCB+0x3e5>
c0101fbc:	a1 c4 00 11 c0       	mov    0xc01100c4,%eax
c0101fc1:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101fc4:	75 1e                	jne    c0101fe4 <delete_PCB+0x22c>
c0101fc6:	8b 45 08             	mov    0x8(%ebp),%eax
c0101fc9:	c1 e0 02             	shl    $0x2,%eax
c0101fcc:	89 c2                	mov    %eax,%edx
c0101fce:	c1 e2 04             	shl    $0x4,%edx
c0101fd1:	01 d0                	add    %edx,%eax
c0101fd3:	83 c0 40             	add    $0x40,%eax
c0101fd6:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101fdb:	8b 00                	mov    (%eax),%eax
c0101fdd:	8b 00                	mov    (%eax),%eax
c0101fdf:	a3 c4 00 11 c0       	mov    %eax,0xc01100c4
c0101fe4:	8b 45 08             	mov    0x8(%ebp),%eax
c0101fe7:	c1 e0 02             	shl    $0x2,%eax
c0101fea:	89 c2                	mov    %eax,%edx
c0101fec:	c1 e2 04             	shl    $0x4,%edx
c0101fef:	01 d0                	add    %edx,%eax
c0101ff1:	83 c0 40             	add    $0x40,%eax
c0101ff4:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101ff9:	8b 00                	mov    (%eax),%eax
c0101ffb:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101ffe:	8b 45 08             	mov    0x8(%ebp),%eax
c0102001:	c1 e0 02             	shl    $0x2,%eax
c0102004:	89 c2                	mov    %eax,%edx
c0102006:	c1 e2 04             	shl    $0x4,%edx
c0102009:	01 d0                	add    %edx,%eax
c010200b:	83 c0 40             	add    $0x40,%eax
c010200e:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102013:	8b 10                	mov    (%eax),%edx
c0102015:	8b 45 08             	mov    0x8(%ebp),%eax
c0102018:	c1 e0 02             	shl    $0x2,%eax
c010201b:	89 c1                	mov    %eax,%ecx
c010201d:	c1 e1 04             	shl    $0x4,%ecx
c0102020:	01 c8                	add    %ecx,%eax
c0102022:	83 c0 30             	add    $0x30,%eax
c0102025:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010202a:	8b 40 0c             	mov    0xc(%eax),%eax
c010202d:	89 42 3c             	mov    %eax,0x3c(%edx)
c0102030:	8b 45 08             	mov    0x8(%ebp),%eax
c0102033:	c1 e0 02             	shl    $0x2,%eax
c0102036:	89 c2                	mov    %eax,%edx
c0102038:	c1 e2 04             	shl    $0x4,%edx
c010203b:	01 d0                	add    %edx,%eax
c010203d:	83 c0 30             	add    $0x30,%eax
c0102040:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102045:	8b 40 0c             	mov    0xc(%eax),%eax
c0102048:	85 c0                	test   %eax,%eax
c010204a:	0f 84 4d 01 00 00    	je     c010219d <delete_PCB+0x3e5>
c0102050:	8b 45 08             	mov    0x8(%ebp),%eax
c0102053:	c1 e0 02             	shl    $0x2,%eax
c0102056:	89 c2                	mov    %eax,%edx
c0102058:	c1 e2 04             	shl    $0x4,%edx
c010205b:	01 d0                	add    %edx,%eax
c010205d:	83 c0 30             	add    $0x30,%eax
c0102060:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102065:	8b 40 0c             	mov    0xc(%eax),%eax
c0102068:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010206b:	89 50 40             	mov    %edx,0x40(%eax)
c010206e:	e9 2a 01 00 00       	jmp    c010219d <delete_PCB+0x3e5>
c0102073:	a1 10 4f 13 c0       	mov    0xc0134f10,%eax
c0102078:	83 e8 01             	sub    $0x1,%eax
c010207b:	a3 10 4f 13 c0       	mov    %eax,0xc0134f10
c0102080:	a1 10 4f 13 c0       	mov    0xc0134f10,%eax
c0102085:	85 c0                	test   %eax,%eax
c0102087:	75 19                	jne    c01020a2 <delete_PCB+0x2ea>
c0102089:	c7 05 c8 00 11 c0 00 	movl   $0x0,0xc01100c8
c0102090:	00 00 00 
c0102093:	c7 05 cc 00 11 c0 00 	movl   $0x0,0xc01100cc
c010209a:	00 00 00 
c010209d:	e9 fb 00 00 00       	jmp    c010219d <delete_PCB+0x3e5>
c01020a2:	a1 c8 00 11 c0       	mov    0xc01100c8,%eax
c01020a7:	39 45 08             	cmp    %eax,0x8(%ebp)
c01020aa:	75 43                	jne    c01020ef <delete_PCB+0x337>
c01020ac:	8b 45 08             	mov    0x8(%ebp),%eax
c01020af:	c1 e0 02             	shl    $0x2,%eax
c01020b2:	89 c2                	mov    %eax,%edx
c01020b4:	c1 e2 04             	shl    $0x4,%edx
c01020b7:	01 d0                	add    %edx,%eax
c01020b9:	83 c0 30             	add    $0x30,%eax
c01020bc:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01020c1:	8b 40 0c             	mov    0xc(%eax),%eax
c01020c4:	8b 00                	mov    (%eax),%eax
c01020c6:	a3 c8 00 11 c0       	mov    %eax,0xc01100c8
c01020cb:	8b 45 08             	mov    0x8(%ebp),%eax
c01020ce:	c1 e0 02             	shl    $0x2,%eax
c01020d1:	89 c2                	mov    %eax,%edx
c01020d3:	c1 e2 04             	shl    $0x4,%edx
c01020d6:	01 d0                	add    %edx,%eax
c01020d8:	83 c0 30             	add    $0x30,%eax
c01020db:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01020e0:	8b 40 0c             	mov    0xc(%eax),%eax
c01020e3:	c7 40 40 00 00 00 00 	movl   $0x0,0x40(%eax)
c01020ea:	e9 ae 00 00 00       	jmp    c010219d <delete_PCB+0x3e5>
c01020ef:	a1 cc 00 11 c0       	mov    0xc01100cc,%eax
c01020f4:	3b 45 08             	cmp    0x8(%ebp),%eax
c01020f7:	75 1e                	jne    c0102117 <delete_PCB+0x35f>
c01020f9:	8b 45 08             	mov    0x8(%ebp),%eax
c01020fc:	c1 e0 02             	shl    $0x2,%eax
c01020ff:	89 c2                	mov    %eax,%edx
c0102101:	c1 e2 04             	shl    $0x4,%edx
c0102104:	01 d0                	add    %edx,%eax
c0102106:	83 c0 40             	add    $0x40,%eax
c0102109:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010210e:	8b 00                	mov    (%eax),%eax
c0102110:	8b 00                	mov    (%eax),%eax
c0102112:	a3 cc 00 11 c0       	mov    %eax,0xc01100cc
c0102117:	8b 45 08             	mov    0x8(%ebp),%eax
c010211a:	c1 e0 02             	shl    $0x2,%eax
c010211d:	89 c2                	mov    %eax,%edx
c010211f:	c1 e2 04             	shl    $0x4,%edx
c0102122:	01 d0                	add    %edx,%eax
c0102124:	83 c0 40             	add    $0x40,%eax
c0102127:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010212c:	8b 00                	mov    (%eax),%eax
c010212e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102131:	8b 45 08             	mov    0x8(%ebp),%eax
c0102134:	c1 e0 02             	shl    $0x2,%eax
c0102137:	89 c2                	mov    %eax,%edx
c0102139:	c1 e2 04             	shl    $0x4,%edx
c010213c:	01 d0                	add    %edx,%eax
c010213e:	83 c0 40             	add    $0x40,%eax
c0102141:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102146:	8b 10                	mov    (%eax),%edx
c0102148:	8b 45 08             	mov    0x8(%ebp),%eax
c010214b:	c1 e0 02             	shl    $0x2,%eax
c010214e:	89 c1                	mov    %eax,%ecx
c0102150:	c1 e1 04             	shl    $0x4,%ecx
c0102153:	01 c8                	add    %ecx,%eax
c0102155:	83 c0 30             	add    $0x30,%eax
c0102158:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010215d:	8b 40 0c             	mov    0xc(%eax),%eax
c0102160:	89 42 3c             	mov    %eax,0x3c(%edx)
c0102163:	8b 45 08             	mov    0x8(%ebp),%eax
c0102166:	c1 e0 02             	shl    $0x2,%eax
c0102169:	89 c2                	mov    %eax,%edx
c010216b:	c1 e2 04             	shl    $0x4,%edx
c010216e:	01 d0                	add    %edx,%eax
c0102170:	83 c0 30             	add    $0x30,%eax
c0102173:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102178:	8b 40 0c             	mov    0xc(%eax),%eax
c010217b:	85 c0                	test   %eax,%eax
c010217d:	74 1e                	je     c010219d <delete_PCB+0x3e5>
c010217f:	8b 45 08             	mov    0x8(%ebp),%eax
c0102182:	c1 e0 02             	shl    $0x2,%eax
c0102185:	89 c2                	mov    %eax,%edx
c0102187:	c1 e2 04             	shl    $0x4,%edx
c010218a:	01 d0                	add    %edx,%eax
c010218c:	83 c0 30             	add    $0x30,%eax
c010218f:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102194:	8b 40 0c             	mov    0xc(%eax),%eax
c0102197:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010219a:	89 50 40             	mov    %edx,0x40(%eax)
c010219d:	c9                   	leave  
c010219e:	c3                   	ret    

c010219f <reschedule>:
c010219f:	55                   	push   %ebp
c01021a0:	89 e5                	mov    %esp,%ebp
c01021a2:	83 ec 28             	sub    $0x28,%esp
c01021a5:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c01021aa:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01021ad:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c01021b2:	83 f8 01             	cmp    $0x1,%eax
c01021b5:	75 46                	jne    c01021fd <reschedule+0x5e>
c01021b7:	a1 04 20 17 c0       	mov    0xc0172004,%eax
c01021bc:	85 c0                	test   %eax,%eax
c01021be:	75 3d                	jne    c01021fd <reschedule+0x5e>
c01021c0:	b8 f8 4f 17 c0       	mov    $0xc0174ff8,%eax
c01021c5:	83 ec 0c             	sub    $0xc,%esp
c01021c8:	50                   	push   %eax
c01021c9:	e8 6f e1 ff ff       	call   c010033d <set_tss>
c01021ce:	83 c4 10             	add    $0x10,%esp
c01021d1:	b8 00 60 13 c0       	mov    $0xc0136000,%eax
c01021d6:	05 00 00 00 40       	add    $0x40000000,%eax
c01021db:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01021de:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01021e1:	0f 22 d8             	mov    %eax,%cr3
c01021e4:	66 b8 23 00          	mov    $0x23,%ax
c01021e8:	8e d8                	mov    %eax,%ds
c01021ea:	8e c0                	mov    %eax,%es
c01021ec:	a1 44 4f 13 c0       	mov    0xc0134f44,%eax
c01021f1:	89 c4                	mov    %eax,%esp
c01021f3:	61                   	popa   
c01021f4:	83 c4 08             	add    $0x8,%esp
c01021f7:	cf                   	iret   
c01021f8:	e9 f0 01 00 00       	jmp    c01023ed <reschedule+0x24e>
c01021fd:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c0102202:	83 f8 01             	cmp    $0x1,%eax
c0102205:	0f 8e 94 00 00 00    	jle    c010229f <reschedule+0x100>
c010220b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010220e:	c1 e0 02             	shl    $0x2,%eax
c0102211:	89 c2                	mov    %eax,%edx
c0102213:	c1 e2 04             	shl    $0x4,%edx
c0102216:	01 d0                	add    %edx,%eax
c0102218:	83 c0 30             	add    $0x30,%eax
c010221b:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102220:	8b 40 0c             	mov    0xc(%eax),%eax
c0102223:	8b 40 08             	mov    0x8(%eax),%eax
c0102226:	c1 e0 0c             	shl    $0xc,%eax
c0102229:	05 00 40 17 c0       	add    $0xc0174000,%eax
c010222e:	05 f8 0f 00 00       	add    $0xff8,%eax
c0102233:	83 ec 0c             	sub    $0xc,%esp
c0102236:	50                   	push   %eax
c0102237:	e8 01 e1 ff ff       	call   c010033d <set_tss>
c010223c:	83 c4 10             	add    $0x10,%esp
c010223f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102242:	c1 e0 02             	shl    $0x2,%eax
c0102245:	89 c2                	mov    %eax,%edx
c0102247:	c1 e2 04             	shl    $0x4,%edx
c010224a:	01 d0                	add    %edx,%eax
c010224c:	83 c0 30             	add    $0x30,%eax
c010224f:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102254:	8b 40 0c             	mov    0xc(%eax),%eax
c0102257:	8b 40 08             	mov    0x8(%eax),%eax
c010225a:	c1 e0 0c             	shl    $0xc,%eax
c010225d:	05 00 60 13 c0       	add    $0xc0136000,%eax
c0102262:	05 00 00 00 40       	add    $0x40000000,%eax
c0102267:	89 45 e8             	mov    %eax,-0x18(%ebp)
c010226a:	8b 45 e8             	mov    -0x18(%ebp),%eax
c010226d:	0f 22 d8             	mov    %eax,%cr3
c0102270:	66 b8 23 00          	mov    $0x23,%ax
c0102274:	8e d8                	mov    %eax,%ds
c0102276:	8e c0                	mov    %eax,%es
c0102278:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010227b:	c1 e0 02             	shl    $0x2,%eax
c010227e:	89 c2                	mov    %eax,%edx
c0102280:	c1 e2 04             	shl    $0x4,%edx
c0102283:	01 d0                	add    %edx,%eax
c0102285:	83 c0 30             	add    $0x30,%eax
c0102288:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010228d:	8b 40 0c             	mov    0xc(%eax),%eax
c0102290:	8b 40 04             	mov    0x4(%eax),%eax
c0102293:	89 c4                	mov    %eax,%esp
c0102295:	61                   	popa   
c0102296:	83 c4 08             	add    $0x8,%esp
c0102299:	cf                   	iret   
c010229a:	e9 4e 01 00 00       	jmp    c01023ed <reschedule+0x24e>
c010229f:	8b 0d b8 00 11 c0    	mov    0xc01100b8,%ecx
c01022a5:	a1 c0 00 11 c0       	mov    0xc01100c0,%eax
c01022aa:	c1 e0 02             	shl    $0x2,%eax
c01022ad:	89 c2                	mov    %eax,%edx
c01022af:	c1 e2 04             	shl    $0x4,%edx
c01022b2:	01 d0                	add    %edx,%eax
c01022b4:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c01022ba:	89 c8                	mov    %ecx,%eax
c01022bc:	c1 e0 02             	shl    $0x2,%eax
c01022bf:	89 c1                	mov    %eax,%ecx
c01022c1:	c1 e1 04             	shl    $0x4,%ecx
c01022c4:	01 c8                	add    %ecx,%eax
c01022c6:	83 c0 30             	add    $0x30,%eax
c01022c9:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01022ce:	89 50 0c             	mov    %edx,0xc(%eax)
c01022d1:	8b 0d c0 00 11 c0    	mov    0xc01100c0,%ecx
c01022d7:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c01022dc:	c1 e0 02             	shl    $0x2,%eax
c01022df:	89 c2                	mov    %eax,%edx
c01022e1:	c1 e2 04             	shl    $0x4,%edx
c01022e4:	01 d0                	add    %edx,%eax
c01022e6:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c01022ec:	89 c8                	mov    %ecx,%eax
c01022ee:	c1 e0 02             	shl    $0x2,%eax
c01022f1:	89 c1                	mov    %eax,%ecx
c01022f3:	c1 e1 04             	shl    $0x4,%ecx
c01022f6:	01 c8                	add    %ecx,%eax
c01022f8:	83 c0 40             	add    $0x40,%eax
c01022fb:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102300:	89 10                	mov    %edx,(%eax)
c0102302:	a1 c4 00 11 c0       	mov    0xc01100c4,%eax
c0102307:	a3 bc 00 11 c0       	mov    %eax,0xc01100bc
c010230c:	c7 05 c0 00 11 c0 00 	movl   $0x0,0xc01100c0
c0102313:	00 00 00 
c0102316:	c7 05 c4 00 11 c0 00 	movl   $0x0,0xc01100c4
c010231d:	00 00 00 
c0102320:	8b 15 00 20 17 c0    	mov    0xc0172000,%edx
c0102326:	a1 04 20 17 c0       	mov    0xc0172004,%eax
c010232b:	01 d0                	add    %edx,%eax
c010232d:	a3 00 20 17 c0       	mov    %eax,0xc0172000
c0102332:	c7 05 04 20 17 c0 00 	movl   $0x0,0xc0172004
c0102339:	00 00 00 
c010233c:	c7 45 f4 40 4f 13 c0 	movl   $0xc0134f40,-0xc(%ebp)
c0102343:	eb 13                	jmp    c0102358 <reschedule+0x1b9>
c0102345:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102348:	c7 40 34 01 00 00 00 	movl   $0x1,0x34(%eax)
c010234f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102352:	8b 40 3c             	mov    0x3c(%eax),%eax
c0102355:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102358:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c010235c:	75 e7                	jne    c0102345 <reschedule+0x1a6>
c010235e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102361:	c1 e0 02             	shl    $0x2,%eax
c0102364:	89 c2                	mov    %eax,%edx
c0102366:	c1 e2 04             	shl    $0x4,%edx
c0102369:	01 d0                	add    %edx,%eax
c010236b:	83 c0 30             	add    $0x30,%eax
c010236e:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102373:	8b 40 0c             	mov    0xc(%eax),%eax
c0102376:	8b 40 08             	mov    0x8(%eax),%eax
c0102379:	c1 e0 0c             	shl    $0xc,%eax
c010237c:	05 00 40 17 c0       	add    $0xc0174000,%eax
c0102381:	05 f8 0f 00 00       	add    $0xff8,%eax
c0102386:	83 ec 0c             	sub    $0xc,%esp
c0102389:	50                   	push   %eax
c010238a:	e8 ae df ff ff       	call   c010033d <set_tss>
c010238f:	83 c4 10             	add    $0x10,%esp
c0102392:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102395:	c1 e0 02             	shl    $0x2,%eax
c0102398:	89 c2                	mov    %eax,%edx
c010239a:	c1 e2 04             	shl    $0x4,%edx
c010239d:	01 d0                	add    %edx,%eax
c010239f:	83 c0 30             	add    $0x30,%eax
c01023a2:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01023a7:	8b 40 0c             	mov    0xc(%eax),%eax
c01023aa:	8b 40 08             	mov    0x8(%eax),%eax
c01023ad:	c1 e0 0c             	shl    $0xc,%eax
c01023b0:	05 00 60 13 c0       	add    $0xc0136000,%eax
c01023b5:	05 00 00 00 40       	add    $0x40000000,%eax
c01023ba:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01023bd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01023c0:	0f 22 d8             	mov    %eax,%cr3
c01023c3:	66 b8 23 00          	mov    $0x23,%ax
c01023c7:	8e d8                	mov    %eax,%ds
c01023c9:	8e c0                	mov    %eax,%es
c01023cb:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01023ce:	c1 e0 02             	shl    $0x2,%eax
c01023d1:	89 c2                	mov    %eax,%edx
c01023d3:	c1 e2 04             	shl    $0x4,%edx
c01023d6:	01 d0                	add    %edx,%eax
c01023d8:	83 c0 30             	add    $0x30,%eax
c01023db:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01023e0:	8b 40 0c             	mov    0xc(%eax),%eax
c01023e3:	8b 40 04             	mov    0x4(%eax),%eax
c01023e6:	89 c4                	mov    %eax,%esp
c01023e8:	61                   	popa   
c01023e9:	83 c4 08             	add    $0x8,%esp
c01023ec:	cf                   	iret   
c01023ed:	c9                   	leave  
c01023ee:	c3                   	ret    

c01023ef <time_treat>:
c01023ef:	55                   	push   %ebp
c01023f0:	89 e5                	mov    %esp,%ebp
c01023f2:	53                   	push   %ebx
c01023f3:	83 ec 14             	sub    $0x14,%esp
c01023f6:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c01023fb:	83 f8 01             	cmp    $0x1,%eax
c01023fe:	0f 84 eb 00 00 00    	je     c01024ef <time_treat+0x100>
c0102404:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c0102409:	c1 e0 02             	shl    $0x2,%eax
c010240c:	89 c2                	mov    %eax,%edx
c010240e:	c1 e2 04             	shl    $0x4,%edx
c0102411:	01 d0                	add    %edx,%eax
c0102413:	83 c0 30             	add    $0x30,%eax
c0102416:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010241b:	8b 40 0c             	mov    0xc(%eax),%eax
c010241e:	8b 50 38             	mov    0x38(%eax),%edx
c0102421:	83 ea 01             	sub    $0x1,%edx
c0102424:	89 50 38             	mov    %edx,0x38(%eax)
c0102427:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c010242c:	c1 e0 02             	shl    $0x2,%eax
c010242f:	89 c2                	mov    %eax,%edx
c0102431:	c1 e2 04             	shl    $0x4,%edx
c0102434:	01 d0                	add    %edx,%eax
c0102436:	83 c0 30             	add    $0x30,%eax
c0102439:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010243e:	8b 40 0c             	mov    0xc(%eax),%eax
c0102441:	8b 40 38             	mov    0x38(%eax),%eax
c0102444:	85 c0                	test   %eax,%eax
c0102446:	0f 85 2b 01 00 00    	jne    c0102577 <time_treat+0x188>
c010244c:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c0102451:	c1 e0 02             	shl    $0x2,%eax
c0102454:	89 c2                	mov    %eax,%edx
c0102456:	c1 e2 04             	shl    $0x4,%edx
c0102459:	01 d0                	add    %edx,%eax
c010245b:	83 c0 30             	add    $0x30,%eax
c010245e:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102463:	8b 40 0c             	mov    0xc(%eax),%eax
c0102466:	8b 40 08             	mov    0x8(%eax),%eax
c0102469:	89 c3                	mov    %eax,%ebx
c010246b:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c0102470:	c1 e0 02             	shl    $0x2,%eax
c0102473:	89 c2                	mov    %eax,%edx
c0102475:	c1 e2 04             	shl    $0x4,%edx
c0102478:	01 d0                	add    %edx,%eax
c010247a:	83 c0 30             	add    $0x30,%eax
c010247d:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102482:	8b 40 0c             	mov    0xc(%eax),%eax
c0102485:	8b 50 30             	mov    0x30(%eax),%edx
c0102488:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c010248d:	c1 e0 02             	shl    $0x2,%eax
c0102490:	89 c1                	mov    %eax,%ecx
c0102492:	c1 e1 04             	shl    $0x4,%ecx
c0102495:	01 c8                	add    %ecx,%eax
c0102497:	83 c0 30             	add    $0x30,%eax
c010249a:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010249f:	8b 40 0c             	mov    0xc(%eax),%eax
c01024a2:	83 c0 0c             	add    $0xc,%eax
c01024a5:	83 ec 08             	sub    $0x8,%esp
c01024a8:	53                   	push   %ebx
c01024a9:	52                   	push   %edx
c01024aa:	68 c8 00 00 00       	push   $0xc8
c01024af:	50                   	push   %eax
c01024b0:	ff 75 08             	pushl  0x8(%ebp)
c01024b3:	6a 02                	push   $0x2
c01024b5:	e8 2d f5 ff ff       	call   c01019e7 <add_PCB>
c01024ba:	83 c4 20             	add    $0x20,%esp
c01024bd:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c01024c2:	c1 e0 02             	shl    $0x2,%eax
c01024c5:	89 c2                	mov    %eax,%edx
c01024c7:	c1 e2 04             	shl    $0x4,%edx
c01024ca:	01 d0                	add    %edx,%eax
c01024cc:	83 c0 30             	add    $0x30,%eax
c01024cf:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01024d4:	8b 40 0c             	mov    0xc(%eax),%eax
c01024d7:	8b 00                	mov    (%eax),%eax
c01024d9:	83 ec 0c             	sub    $0xc,%esp
c01024dc:	50                   	push   %eax
c01024dd:	e8 d6 f8 ff ff       	call   c0101db8 <delete_PCB>
c01024e2:	83 c4 10             	add    $0x10,%esp
c01024e5:	e8 b5 fc ff ff       	call   c010219f <reschedule>
c01024ea:	e9 88 00 00 00       	jmp    c0102577 <time_treat+0x188>
c01024ef:	8b 45 08             	mov    0x8(%ebp),%eax
c01024f2:	8b 10                	mov    (%eax),%edx
c01024f4:	89 15 00 41 13 c0    	mov    %edx,0xc0134100
c01024fa:	8b 50 04             	mov    0x4(%eax),%edx
c01024fd:	89 15 04 41 13 c0    	mov    %edx,0xc0134104
c0102503:	8b 50 08             	mov    0x8(%eax),%edx
c0102506:	89 15 08 41 13 c0    	mov    %edx,0xc0134108
c010250c:	8b 50 0c             	mov    0xc(%eax),%edx
c010250f:	89 15 0c 41 13 c0    	mov    %edx,0xc013410c
c0102515:	8b 50 10             	mov    0x10(%eax),%edx
c0102518:	89 15 10 41 13 c0    	mov    %edx,0xc0134110
c010251e:	8b 50 14             	mov    0x14(%eax),%edx
c0102521:	89 15 14 41 13 c0    	mov    %edx,0xc0134114
c0102527:	8b 50 18             	mov    0x18(%eax),%edx
c010252a:	89 15 18 41 13 c0    	mov    %edx,0xc0134118
c0102530:	8b 50 1c             	mov    0x1c(%eax),%edx
c0102533:	89 15 1c 41 13 c0    	mov    %edx,0xc013411c
c0102539:	8b 50 20             	mov    0x20(%eax),%edx
c010253c:	89 15 20 41 13 c0    	mov    %edx,0xc0134120
c0102542:	8b 50 24             	mov    0x24(%eax),%edx
c0102545:	89 15 24 41 13 c0    	mov    %edx,0xc0134124
c010254b:	8b 50 28             	mov    0x28(%eax),%edx
c010254e:	89 15 28 41 13 c0    	mov    %edx,0xc0134128
c0102554:	8b 50 2c             	mov    0x2c(%eax),%edx
c0102557:	89 15 2c 41 13 c0    	mov    %edx,0xc013412c
c010255d:	8b 50 30             	mov    0x30(%eax),%edx
c0102560:	89 15 30 41 13 c0    	mov    %edx,0xc0134130
c0102566:	8b 50 34             	mov    0x34(%eax),%edx
c0102569:	89 15 34 41 13 c0    	mov    %edx,0xc0134134
c010256f:	8b 40 38             	mov    0x38(%eax),%eax
c0102572:	a3 38 41 13 c0       	mov    %eax,0xc0134138
c0102577:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c010257e:	a1 10 4f 13 c0       	mov    0xc0134f10,%eax
c0102583:	85 c0                	test   %eax,%eax
c0102585:	0f 84 b7 00 00 00    	je     c0102642 <time_treat+0x253>
c010258b:	a1 c8 00 11 c0       	mov    0xc01100c8,%eax
c0102590:	c1 e0 02             	shl    $0x2,%eax
c0102593:	89 c2                	mov    %eax,%edx
c0102595:	c1 e2 04             	shl    $0x4,%edx
c0102598:	01 d0                	add    %edx,%eax
c010259a:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010259f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01025a2:	e9 91 00 00 00       	jmp    c0102638 <time_treat+0x249>
c01025a7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01025aa:	8b 40 38             	mov    0x38(%eax),%eax
c01025ad:	8d 50 ff             	lea    -0x1(%eax),%edx
c01025b0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01025b3:	89 50 38             	mov    %edx,0x38(%eax)
c01025b6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01025b9:	8b 40 38             	mov    0x38(%eax),%eax
c01025bc:	85 c0                	test   %eax,%eax
c01025be:	75 6f                	jne    c010262f <time_treat+0x240>
c01025c0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01025c3:	8b 40 08             	mov    0x8(%eax),%eax
c01025c6:	83 ec 08             	sub    $0x8,%esp
c01025c9:	50                   	push   %eax
c01025ca:	68 6d 36 10 c0       	push   $0xc010366d
c01025cf:	e8 c5 eb ff ff       	call   c0101199 <printk>
c01025d4:	83 c4 10             	add    $0x10,%esp
c01025d7:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c01025de:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01025e1:	8b 40 08             	mov    0x8(%eax),%eax
c01025e4:	89 c3                	mov    %eax,%ebx
c01025e6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01025e9:	8b 50 30             	mov    0x30(%eax),%edx
c01025ec:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01025ef:	8d 48 0c             	lea    0xc(%eax),%ecx
c01025f2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01025f5:	8b 40 04             	mov    0x4(%eax),%eax
c01025f8:	83 ec 08             	sub    $0x8,%esp
c01025fb:	53                   	push   %ebx
c01025fc:	52                   	push   %edx
c01025fd:	68 c8 00 00 00       	push   $0xc8
c0102602:	51                   	push   %ecx
c0102603:	50                   	push   %eax
c0102604:	6a 02                	push   $0x2
c0102606:	e8 dc f3 ff ff       	call   c01019e7 <add_PCB>
c010260b:	83 c4 20             	add    $0x20,%esp
c010260e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102611:	8b 00                	mov    (%eax),%eax
c0102613:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102616:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102619:	8b 40 3c             	mov    0x3c(%eax),%eax
c010261c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010261f:	83 ec 0c             	sub    $0xc,%esp
c0102622:	ff 75 ec             	pushl  -0x14(%ebp)
c0102625:	e8 8e f7 ff ff       	call   c0101db8 <delete_PCB>
c010262a:	83 c4 10             	add    $0x10,%esp
c010262d:	eb 09                	jmp    c0102638 <time_treat+0x249>
c010262f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102632:	8b 40 3c             	mov    0x3c(%eax),%eax
c0102635:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102638:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c010263c:	0f 85 65 ff ff ff    	jne    c01025a7 <time_treat+0x1b8>
c0102642:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102646:	74 0f                	je     c0102657 <time_treat+0x268>
c0102648:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c010264d:	83 f8 01             	cmp    $0x1,%eax
c0102650:	75 05                	jne    c0102657 <time_treat+0x268>
c0102652:	e8 48 fb ff ff       	call   c010219f <reschedule>
c0102657:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c010265a:	c9                   	leave  
c010265b:	c3                   	ret    

c010265c <process_exit>:
c010265c:	55                   	push   %ebp
c010265d:	89 e5                	mov    %esp,%ebp
c010265f:	83 ec 08             	sub    $0x8,%esp
c0102662:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c0102667:	83 f8 01             	cmp    $0x1,%eax
c010266a:	75 15                	jne    c0102681 <process_exit+0x25>
c010266c:	83 ec 0c             	sub    $0xc,%esp
c010266f:	68 81 36 10 c0       	push   $0xc0103681
c0102674:	e8 20 eb ff ff       	call   c0101199 <printk>
c0102679:	83 c4 10             	add    $0x10,%esp
c010267c:	e9 84 00 00 00       	jmp    c0102705 <process_exit+0xa9>
c0102681:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c0102686:	c1 e0 02             	shl    $0x2,%eax
c0102689:	89 c2                	mov    %eax,%edx
c010268b:	c1 e2 04             	shl    $0x4,%edx
c010268e:	01 d0                	add    %edx,%eax
c0102690:	83 c0 30             	add    $0x30,%eax
c0102693:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102698:	8b 40 0c             	mov    0xc(%eax),%eax
c010269b:	8b 40 08             	mov    0x8(%eax),%eax
c010269e:	83 ec 08             	sub    $0x8,%esp
c01026a1:	50                   	push   %eax
c01026a2:	68 94 36 10 c0       	push   $0xc0103694
c01026a7:	e8 ed ea ff ff       	call   c0101199 <printk>
c01026ac:	83 c4 10             	add    $0x10,%esp
c01026af:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c01026b4:	c1 e0 02             	shl    $0x2,%eax
c01026b7:	89 c2                	mov    %eax,%edx
c01026b9:	c1 e2 04             	shl    $0x4,%edx
c01026bc:	01 d0                	add    %edx,%eax
c01026be:	83 c0 30             	add    $0x30,%eax
c01026c1:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01026c6:	8b 40 0c             	mov    0xc(%eax),%eax
c01026c9:	8b 40 08             	mov    0x8(%eax),%eax
c01026cc:	83 ec 0c             	sub    $0xc,%esp
c01026cf:	50                   	push   %eax
c01026d0:	e8 9d f1 ff ff       	call   c0101872 <free_a_pid>
c01026d5:	83 c4 10             	add    $0x10,%esp
c01026d8:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c01026dd:	c1 e0 02             	shl    $0x2,%eax
c01026e0:	89 c2                	mov    %eax,%edx
c01026e2:	c1 e2 04             	shl    $0x4,%edx
c01026e5:	01 d0                	add    %edx,%eax
c01026e7:	83 c0 30             	add    $0x30,%eax
c01026ea:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01026ef:	8b 40 0c             	mov    0xc(%eax),%eax
c01026f2:	8b 00                	mov    (%eax),%eax
c01026f4:	83 ec 0c             	sub    $0xc,%esp
c01026f7:	50                   	push   %eax
c01026f8:	e8 bb f6 ff ff       	call   c0101db8 <delete_PCB>
c01026fd:	83 c4 10             	add    $0x10,%esp
c0102700:	e8 9a fa ff ff       	call   c010219f <reschedule>
c0102705:	c9                   	leave  
c0102706:	c3                   	ret    

c0102707 <load_PCB>:
c0102707:	55                   	push   %ebp
c0102708:	89 e5                	mov    %esp,%ebp
c010270a:	83 ec 18             	sub    $0x18,%esp
c010270d:	e8 0b f1 ff ff       	call   c010181d <get_free_pid>
c0102712:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102715:	a1 04 00 1b c0       	mov    0xc01b0004,%eax
c010271a:	8b 55 f0             	mov    -0x10(%ebp),%edx
c010271d:	c1 e2 0c             	shl    $0xc,%edx
c0102720:	81 c2 00 60 13 c0    	add    $0xc0136000,%edx
c0102726:	83 ec 04             	sub    $0x4,%esp
c0102729:	68 00 10 00 00       	push   $0x1000
c010272e:	50                   	push   %eax
c010272f:	52                   	push   %edx
c0102730:	e8 89 ea ff ff       	call   c01011be <my_memcpy>
c0102735:	83 c4 10             	add    $0x10,%esp
c0102738:	c7 45 ec 00 04 00 00 	movl   $0x400,-0x14(%ebp)
c010273f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102746:	eb 1d                	jmp    c0102765 <load_PCB+0x5e>
c0102748:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010274b:	0f b7 04 c5 44 00 1b 	movzwl -0x3fe4ffbc(,%eax,8),%eax
c0102752:	c0 
c0102753:	8d 50 01             	lea    0x1(%eax),%edx
c0102756:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102759:	66 89 14 c5 44 00 1b 	mov    %dx,-0x3fe4ffbc(,%eax,8)
c0102760:	c0 
c0102761:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102765:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102768:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c010276b:	7c db                	jl     c0102748 <load_PCB+0x41>
c010276d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102770:	c1 e0 0c             	shl    $0xc,%eax
c0102773:	05 00 60 13 c0       	add    $0xc0136000,%eax
c0102778:	83 ec 08             	sub    $0x8,%esp
c010277b:	50                   	push   %eax
c010277c:	ff 75 08             	pushl  0x8(%ebp)
c010277f:	e8 08 ec ff ff       	call   c010138c <load>
c0102784:	83 c4 10             	add    $0x10,%esp
c0102787:	89 c1                	mov    %eax,%ecx
c0102789:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010278c:	89 c2                	mov    %eax,%edx
c010278e:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102795:	89 c2                	mov    %eax,%edx
c0102797:	89 d0                	mov    %edx,%eax
c0102799:	c1 e0 04             	shl    $0x4,%eax
c010279c:	29 d0                	sub    %edx,%eax
c010279e:	83 c0 20             	add    $0x20,%eax
c01027a1:	05 00 41 13 c0       	add    $0xc0134100,%eax
c01027a6:	89 48 08             	mov    %ecx,0x8(%eax)
c01027a9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01027ac:	89 c2                	mov    %eax,%edx
c01027ae:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01027b5:	89 c2                	mov    %eax,%edx
c01027b7:	89 d0                	mov    %edx,%eax
c01027b9:	c1 e0 04             	shl    $0x4,%eax
c01027bc:	29 d0                	sub    %edx,%eax
c01027be:	83 c0 20             	add    $0x20,%eax
c01027c1:	05 00 41 13 c0       	add    $0xc0134100,%eax
c01027c6:	c7 40 0c 1b 00 00 00 	movl   $0x1b,0xc(%eax)
c01027cd:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01027d0:	89 c2                	mov    %eax,%edx
c01027d2:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01027d9:	89 c2                	mov    %eax,%edx
c01027db:	89 d0                	mov    %edx,%eax
c01027dd:	c1 e0 04             	shl    $0x4,%eax
c01027e0:	29 d0                	sub    %edx,%eax
c01027e2:	83 c0 30             	add    $0x30,%eax
c01027e5:	05 00 41 13 c0       	add    $0xc0134100,%eax
c01027ea:	c7 00 02 02 00 00    	movl   $0x202,(%eax)
c01027f0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01027f3:	89 c2                	mov    %eax,%edx
c01027f5:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01027fc:	89 c2                	mov    %eax,%edx
c01027fe:	89 d0                	mov    %edx,%eax
c0102800:	c1 e0 04             	shl    $0x4,%eax
c0102803:	29 d0                	sub    %edx,%eax
c0102805:	83 c0 30             	add    $0x30,%eax
c0102808:	05 00 41 13 c0       	add    $0xc0134100,%eax
c010280d:	c7 40 04 f0 ff 60 00 	movl   $0x60fff0,0x4(%eax)
c0102814:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102817:	89 c2                	mov    %eax,%edx
c0102819:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102820:	89 c2                	mov    %eax,%edx
c0102822:	89 d0                	mov    %edx,%eax
c0102824:	c1 e0 04             	shl    $0x4,%eax
c0102827:	29 d0                	sub    %edx,%eax
c0102829:	83 c0 30             	add    $0x30,%eax
c010282c:	05 00 41 13 c0       	add    $0xc0134100,%eax
c0102831:	c7 40 08 23 00 00 00 	movl   $0x23,0x8(%eax)
c0102838:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010283b:	89 c2                	mov    %eax,%edx
c010283d:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102844:	89 c2                	mov    %eax,%edx
c0102846:	89 d0                	mov    %edx,%eax
c0102848:	c1 e0 04             	shl    $0x4,%eax
c010284b:	29 d0                	sub    %edx,%eax
c010284d:	05 00 41 13 c0       	add    $0xc0134100,%eax
c0102852:	83 ec 08             	sub    $0x8,%esp
c0102855:	ff 75 f0             	pushl  -0x10(%ebp)
c0102858:	6a 00                	push   $0x0
c010285a:	68 c8 00 00 00       	push   $0xc8
c010285f:	ff 75 0c             	pushl  0xc(%ebp)
c0102862:	50                   	push   %eax
c0102863:	6a 01                	push   $0x1
c0102865:	e8 7d f1 ff ff       	call   c01019e7 <add_PCB>
c010286a:	83 c4 20             	add    $0x20,%esp
c010286d:	c9                   	leave  
c010286e:	c3                   	ret    

c010286f <my_sleep>:
c010286f:	55                   	push   %ebp
c0102870:	89 e5                	mov    %esp,%ebp
c0102872:	53                   	push   %ebx
c0102873:	83 ec 04             	sub    $0x4,%esp
c0102876:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c010287b:	83 f8 01             	cmp    $0x1,%eax
c010287e:	75 15                	jne    c0102895 <my_sleep+0x26>
c0102880:	83 ec 0c             	sub    $0xc,%esp
c0102883:	68 a5 36 10 c0       	push   $0xc01036a5
c0102888:	e8 0c e9 ff ff       	call   c0101199 <printk>
c010288d:	83 c4 10             	add    $0x10,%esp
c0102890:	e9 cd 00 00 00       	jmp    c0102962 <my_sleep+0xf3>
c0102895:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c010289a:	c1 e0 02             	shl    $0x2,%eax
c010289d:	89 c2                	mov    %eax,%edx
c010289f:	c1 e2 04             	shl    $0x4,%edx
c01028a2:	01 d0                	add    %edx,%eax
c01028a4:	83 c0 30             	add    $0x30,%eax
c01028a7:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01028ac:	8b 40 0c             	mov    0xc(%eax),%eax
c01028af:	8b 40 08             	mov    0x8(%eax),%eax
c01028b2:	83 ec 04             	sub    $0x4,%esp
c01028b5:	ff 75 08             	pushl  0x8(%ebp)
c01028b8:	50                   	push   %eax
c01028b9:	68 c1 36 10 c0       	push   $0xc01036c1
c01028be:	e8 d6 e8 ff ff       	call   c0101199 <printk>
c01028c3:	83 c4 10             	add    $0x10,%esp
c01028c6:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c01028cb:	c1 e0 02             	shl    $0x2,%eax
c01028ce:	89 c2                	mov    %eax,%edx
c01028d0:	c1 e2 04             	shl    $0x4,%edx
c01028d3:	01 d0                	add    %edx,%eax
c01028d5:	83 c0 30             	add    $0x30,%eax
c01028d8:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01028dd:	8b 40 0c             	mov    0xc(%eax),%eax
c01028e0:	8b 40 08             	mov    0x8(%eax),%eax
c01028e3:	89 c3                	mov    %eax,%ebx
c01028e5:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c01028ea:	c1 e0 02             	shl    $0x2,%eax
c01028ed:	89 c2                	mov    %eax,%edx
c01028ef:	c1 e2 04             	shl    $0x4,%edx
c01028f2:	01 d0                	add    %edx,%eax
c01028f4:	83 c0 30             	add    $0x30,%eax
c01028f7:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01028fc:	8b 40 0c             	mov    0xc(%eax),%eax
c01028ff:	8b 50 30             	mov    0x30(%eax),%edx
c0102902:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c0102907:	c1 e0 02             	shl    $0x2,%eax
c010290a:	89 c1                	mov    %eax,%ecx
c010290c:	c1 e1 04             	shl    $0x4,%ecx
c010290f:	01 c8                	add    %ecx,%eax
c0102911:	83 c0 30             	add    $0x30,%eax
c0102914:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102919:	8b 40 0c             	mov    0xc(%eax),%eax
c010291c:	83 c0 0c             	add    $0xc,%eax
c010291f:	83 ec 08             	sub    $0x8,%esp
c0102922:	53                   	push   %ebx
c0102923:	52                   	push   %edx
c0102924:	ff 75 08             	pushl  0x8(%ebp)
c0102927:	50                   	push   %eax
c0102928:	ff 75 0c             	pushl  0xc(%ebp)
c010292b:	6a 03                	push   $0x3
c010292d:	e8 b5 f0 ff ff       	call   c01019e7 <add_PCB>
c0102932:	83 c4 20             	add    $0x20,%esp
c0102935:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c010293a:	c1 e0 02             	shl    $0x2,%eax
c010293d:	89 c2                	mov    %eax,%edx
c010293f:	c1 e2 04             	shl    $0x4,%edx
c0102942:	01 d0                	add    %edx,%eax
c0102944:	83 c0 30             	add    $0x30,%eax
c0102947:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010294c:	8b 40 0c             	mov    0xc(%eax),%eax
c010294f:	8b 00                	mov    (%eax),%eax
c0102951:	83 ec 0c             	sub    $0xc,%esp
c0102954:	50                   	push   %eax
c0102955:	e8 5e f4 ff ff       	call   c0101db8 <delete_PCB>
c010295a:	83 c4 10             	add    $0x10,%esp
c010295d:	e8 3d f8 ff ff       	call   c010219f <reschedule>
c0102962:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102965:	c9                   	leave  
c0102966:	c3                   	ret    

c0102967 <my_fork>:
c0102967:	55                   	push   %ebp
c0102968:	89 e5                	mov    %esp,%ebp
c010296a:	56                   	push   %esi
c010296b:	53                   	push   %ebx
c010296c:	83 ec 10             	sub    $0x10,%esp
c010296f:	e8 a9 ee ff ff       	call   c010181d <get_free_pid>
c0102974:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102977:	83 ec 08             	sub    $0x8,%esp
c010297a:	ff 75 f4             	pushl  -0xc(%ebp)
c010297d:	68 d9 36 10 c0       	push   $0xc01036d9
c0102982:	e8 12 e8 ff ff       	call   c0101199 <printk>
c0102987:	83 c4 10             	add    $0x10,%esp
c010298a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010298d:	c1 e0 02             	shl    $0x2,%eax
c0102990:	89 c2                	mov    %eax,%edx
c0102992:	c1 e2 04             	shl    $0x4,%edx
c0102995:	29 c2                	sub    %eax,%edx
c0102997:	89 d0                	mov    %edx,%eax
c0102999:	8d 90 00 41 13 c0    	lea    -0x3fecbf00(%eax),%edx
c010299f:	8b 45 08             	mov    0x8(%ebp),%eax
c01029a2:	8b 08                	mov    (%eax),%ecx
c01029a4:	89 0a                	mov    %ecx,(%edx)
c01029a6:	8b 48 04             	mov    0x4(%eax),%ecx
c01029a9:	89 4a 04             	mov    %ecx,0x4(%edx)
c01029ac:	8b 48 08             	mov    0x8(%eax),%ecx
c01029af:	89 4a 08             	mov    %ecx,0x8(%edx)
c01029b2:	8b 48 0c             	mov    0xc(%eax),%ecx
c01029b5:	89 4a 0c             	mov    %ecx,0xc(%edx)
c01029b8:	8b 48 10             	mov    0x10(%eax),%ecx
c01029bb:	89 4a 10             	mov    %ecx,0x10(%edx)
c01029be:	8b 48 14             	mov    0x14(%eax),%ecx
c01029c1:	89 4a 14             	mov    %ecx,0x14(%edx)
c01029c4:	8b 48 18             	mov    0x18(%eax),%ecx
c01029c7:	89 4a 18             	mov    %ecx,0x18(%edx)
c01029ca:	8b 48 1c             	mov    0x1c(%eax),%ecx
c01029cd:	89 4a 1c             	mov    %ecx,0x1c(%edx)
c01029d0:	8b 48 20             	mov    0x20(%eax),%ecx
c01029d3:	89 4a 20             	mov    %ecx,0x20(%edx)
c01029d6:	8b 48 24             	mov    0x24(%eax),%ecx
c01029d9:	89 4a 24             	mov    %ecx,0x24(%edx)
c01029dc:	8b 48 28             	mov    0x28(%eax),%ecx
c01029df:	89 4a 28             	mov    %ecx,0x28(%edx)
c01029e2:	8b 48 2c             	mov    0x2c(%eax),%ecx
c01029e5:	89 4a 2c             	mov    %ecx,0x2c(%edx)
c01029e8:	8b 48 30             	mov    0x30(%eax),%ecx
c01029eb:	89 4a 30             	mov    %ecx,0x30(%edx)
c01029ee:	8b 48 34             	mov    0x34(%eax),%ecx
c01029f1:	89 4a 34             	mov    %ecx,0x34(%edx)
c01029f4:	8b 40 38             	mov    0x38(%eax),%eax
c01029f7:	89 42 38             	mov    %eax,0x38(%edx)
c01029fa:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01029fd:	89 c2                	mov    %eax,%edx
c01029ff:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102a06:	89 c2                	mov    %eax,%edx
c0102a08:	89 d0                	mov    %edx,%eax
c0102a0a:	c1 e0 04             	shl    $0x4,%eax
c0102a0d:	29 d0                	sub    %edx,%eax
c0102a0f:	83 c0 10             	add    $0x10,%eax
c0102a12:	05 00 41 13 c0       	add    $0xc0134100,%eax
c0102a17:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0102a1e:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c0102a23:	83 f8 01             	cmp    $0x1,%eax
c0102a26:	75 1a                	jne    c0102a42 <my_fork+0xdb>
c0102a28:	83 ec 0c             	sub    $0xc,%esp
c0102a2b:	68 ec 36 10 c0       	push   $0xc01036ec
c0102a30:	e8 64 e7 ff ff       	call   c0101199 <printk>
c0102a35:	83 c4 10             	add    $0x10,%esp
c0102a38:	b8 00 00 00 00       	mov    $0x0,%eax
c0102a3d:	e9 03 01 00 00       	jmp    c0102b45 <my_fork+0x1de>
c0102a42:	a1 04 00 1b c0       	mov    0xc01b0004,%eax
c0102a47:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102a4a:	c1 e2 0c             	shl    $0xc,%edx
c0102a4d:	81 c2 00 60 13 c0    	add    $0xc0136000,%edx
c0102a53:	83 ec 04             	sub    $0x4,%esp
c0102a56:	68 00 10 00 00       	push   $0x1000
c0102a5b:	50                   	push   %eax
c0102a5c:	52                   	push   %edx
c0102a5d:	e8 5c e7 ff ff       	call   c01011be <my_memcpy>
c0102a62:	83 c4 10             	add    $0x10,%esp
c0102a65:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c0102a6a:	c1 e0 02             	shl    $0x2,%eax
c0102a6d:	89 c2                	mov    %eax,%edx
c0102a6f:	c1 e2 04             	shl    $0x4,%edx
c0102a72:	01 d0                	add    %edx,%eax
c0102a74:	83 c0 30             	add    $0x30,%eax
c0102a77:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102a7c:	8b 40 0c             	mov    0xc(%eax),%eax
c0102a7f:	8b 58 08             	mov    0x8(%eax),%ebx
c0102a82:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c0102a87:	c1 e0 02             	shl    $0x2,%eax
c0102a8a:	89 c2                	mov    %eax,%edx
c0102a8c:	c1 e2 04             	shl    $0x4,%edx
c0102a8f:	01 d0                	add    %edx,%eax
c0102a91:	83 c0 30             	add    $0x30,%eax
c0102a94:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102a99:	8b 40 0c             	mov    0xc(%eax),%eax
c0102a9c:	8b 48 38             	mov    0x38(%eax),%ecx
c0102a9f:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c0102aa4:	c1 e0 02             	shl    $0x2,%eax
c0102aa7:	89 c2                	mov    %eax,%edx
c0102aa9:	c1 e2 04             	shl    $0x4,%edx
c0102aac:	01 d0                	add    %edx,%eax
c0102aae:	83 c0 30             	add    $0x30,%eax
c0102ab1:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102ab6:	8b 40 0c             	mov    0xc(%eax),%eax
c0102ab9:	8d 70 0c             	lea    0xc(%eax),%esi
c0102abc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102abf:	89 c2                	mov    %eax,%edx
c0102ac1:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102ac8:	89 c2                	mov    %eax,%edx
c0102aca:	89 d0                	mov    %edx,%eax
c0102acc:	c1 e0 04             	shl    $0x4,%eax
c0102acf:	29 d0                	sub    %edx,%eax
c0102ad1:	05 00 41 13 c0       	add    $0xc0134100,%eax
c0102ad6:	83 ec 08             	sub    $0x8,%esp
c0102ad9:	ff 75 f4             	pushl  -0xc(%ebp)
c0102adc:	53                   	push   %ebx
c0102add:	51                   	push   %ecx
c0102ade:	56                   	push   %esi
c0102adf:	50                   	push   %eax
c0102ae0:	6a 01                	push   $0x1
c0102ae2:	e8 00 ef ff ff       	call   c01019e7 <add_PCB>
c0102ae7:	83 c4 20             	add    $0x20,%esp
c0102aea:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c0102aef:	c1 e0 02             	shl    $0x2,%eax
c0102af2:	89 c2                	mov    %eax,%edx
c0102af4:	c1 e2 04             	shl    $0x4,%edx
c0102af7:	01 d0                	add    %edx,%eax
c0102af9:	83 c0 30             	add    $0x30,%eax
c0102afc:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102b01:	8b 40 0c             	mov    0xc(%eax),%eax
c0102b04:	8b 40 08             	mov    0x8(%eax),%eax
c0102b07:	c1 e0 0c             	shl    $0xc,%eax
c0102b0a:	8d 90 00 60 13 c0    	lea    -0x3feca000(%eax),%edx
c0102b10:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102b13:	c1 e0 0c             	shl    $0xc,%eax
c0102b16:	05 00 60 13 c0       	add    $0xc0136000,%eax
c0102b1b:	83 ec 08             	sub    $0x8,%esp
c0102b1e:	52                   	push   %edx
c0102b1f:	50                   	push   %eax
c0102b20:	e8 68 07 00 00       	call   c010328d <copy_pgdir>
c0102b25:	83 c4 10             	add    $0x10,%esp
c0102b28:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c0102b2d:	c1 e0 02             	shl    $0x2,%eax
c0102b30:	89 c2                	mov    %eax,%edx
c0102b32:	c1 e2 04             	shl    $0x4,%edx
c0102b35:	01 d0                	add    %edx,%eax
c0102b37:	83 c0 30             	add    $0x30,%eax
c0102b3a:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102b3f:	8b 40 0c             	mov    0xc(%eax),%eax
c0102b42:	8b 40 08             	mov    0x8(%eax),%eax
c0102b45:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0102b48:	5b                   	pop    %ebx
c0102b49:	5e                   	pop    %esi
c0102b4a:	5d                   	pop    %ebp
c0102b4b:	c3                   	ret    

c0102b4c <_paddr>:
c0102b4c:	55                   	push   %ebp
c0102b4d:	89 e5                	mov    %esp,%ebp
c0102b4f:	83 ec 08             	sub    $0x8,%esp
c0102b52:	8b 45 10             	mov    0x10(%ebp),%eax
c0102b55:	3d ff ff ff bf       	cmp    $0xbfffffff,%eax
c0102b5a:	77 16                	ja     c0102b72 <_paddr+0x26>
c0102b5c:	ff 75 10             	pushl  0x10(%ebp)
c0102b5f:	68 28 37 10 c0       	push   $0xc0103728
c0102b64:	ff 75 0c             	pushl  0xc(%ebp)
c0102b67:	ff 75 08             	pushl  0x8(%ebp)
c0102b6a:	e8 2a e6 ff ff       	call   c0101199 <printk>
c0102b6f:	83 c4 10             	add    $0x10,%esp
c0102b72:	8b 45 10             	mov    0x10(%ebp),%eax
c0102b75:	05 00 00 00 40       	add    $0x40000000,%eax
c0102b7a:	c9                   	leave  
c0102b7b:	c3                   	ret    

c0102b7c <_kaddr>:
c0102b7c:	55                   	push   %ebp
c0102b7d:	89 e5                	mov    %esp,%ebp
c0102b7f:	83 ec 08             	sub    $0x8,%esp
c0102b82:	8b 45 10             	mov    0x10(%ebp),%eax
c0102b85:	c1 e8 0c             	shr    $0xc,%eax
c0102b88:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0102b8d:	76 13                	jbe    c0102ba2 <_kaddr+0x26>
c0102b8f:	83 ec 08             	sub    $0x8,%esp
c0102b92:	ff 75 10             	pushl  0x10(%ebp)
c0102b95:	68 4c 37 10 c0       	push   $0xc010374c
c0102b9a:	e8 fa e5 ff ff       	call   c0101199 <printk>
c0102b9f:	83 c4 10             	add    $0x10,%esp
c0102ba2:	8b 45 10             	mov    0x10(%ebp),%eax
c0102ba5:	2d 00 00 00 40       	sub    $0x40000000,%eax
c0102baa:	c9                   	leave  
c0102bab:	c3                   	ret    

c0102bac <page2pa>:
c0102bac:	55                   	push   %ebp
c0102bad:	89 e5                	mov    %esp,%ebp
c0102baf:	8b 45 08             	mov    0x8(%ebp),%eax
c0102bb2:	ba 40 00 1b c0       	mov    $0xc01b0040,%edx
c0102bb7:	29 d0                	sub    %edx,%eax
c0102bb9:	c1 f8 03             	sar    $0x3,%eax
c0102bbc:	c1 e0 0c             	shl    $0xc,%eax
c0102bbf:	5d                   	pop    %ebp
c0102bc0:	c3                   	ret    

c0102bc1 <pa2page>:
c0102bc1:	55                   	push   %ebp
c0102bc2:	89 e5                	mov    %esp,%ebp
c0102bc4:	83 ec 08             	sub    $0x8,%esp
c0102bc7:	8b 45 08             	mov    0x8(%ebp),%eax
c0102bca:	c1 e8 0c             	shr    $0xc,%eax
c0102bcd:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0102bd2:	76 10                	jbe    c0102be4 <pa2page+0x23>
c0102bd4:	83 ec 0c             	sub    $0xc,%esp
c0102bd7:	68 70 37 10 c0       	push   $0xc0103770
c0102bdc:	e8 b8 e5 ff ff       	call   c0101199 <printk>
c0102be1:	83 c4 10             	add    $0x10,%esp
c0102be4:	8b 45 08             	mov    0x8(%ebp),%eax
c0102be7:	c1 e8 0c             	shr    $0xc,%eax
c0102bea:	c1 e0 03             	shl    $0x3,%eax
c0102bed:	05 40 00 1b c0       	add    $0xc01b0040,%eax
c0102bf2:	c9                   	leave  
c0102bf3:	c3                   	ret    

c0102bf4 <page2kva>:
c0102bf4:	55                   	push   %ebp
c0102bf5:	89 e5                	mov    %esp,%ebp
c0102bf7:	83 ec 08             	sub    $0x8,%esp
c0102bfa:	ff 75 08             	pushl  0x8(%ebp)
c0102bfd:	e8 aa ff ff ff       	call   c0102bac <page2pa>
c0102c02:	83 c4 04             	add    $0x4,%esp
c0102c05:	83 ec 04             	sub    $0x4,%esp
c0102c08:	50                   	push   %eax
c0102c09:	6a 52                	push   $0x52
c0102c0b:	68 8f 37 10 c0       	push   $0xc010378f
c0102c10:	e8 67 ff ff ff       	call   c0102b7c <_kaddr>
c0102c15:	83 c4 10             	add    $0x10,%esp
c0102c18:	c9                   	leave  
c0102c19:	c3                   	ret    

c0102c1a <mm_alloc>:
c0102c1a:	55                   	push   %ebp
c0102c1b:	89 e5                	mov    %esp,%ebp
c0102c1d:	83 ec 28             	sub    $0x28,%esp
c0102c20:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102c23:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102c26:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102c29:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102c2e:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102c31:	c7 45 e8 00 10 00 00 	movl   $0x1000,-0x18(%ebp)
c0102c38:	8b 55 10             	mov    0x10(%ebp),%edx
c0102c3b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102c3e:	01 c2                	add    %eax,%edx
c0102c40:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102c43:	01 d0                	add    %edx,%eax
c0102c45:	83 e8 01             	sub    $0x1,%eax
c0102c48:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0102c4b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0102c4e:	ba 00 00 00 00       	mov    $0x0,%edx
c0102c53:	f7 75 e8             	divl   -0x18(%ebp)
c0102c56:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0102c59:	29 d0                	sub    %edx,%eax
c0102c5b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0102c5e:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102c61:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102c64:	eb 2b                	jmp    c0102c91 <mm_alloc+0x77>
c0102c66:	83 ec 0c             	sub    $0xc,%esp
c0102c69:	6a 00                	push   $0x0
c0102c6b:	e8 9c 01 00 00       	call   c0102e0c <page_alloc>
c0102c70:	83 c4 10             	add    $0x10,%esp
c0102c73:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0102c76:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102c79:	6a 07                	push   $0x7
c0102c7b:	50                   	push   %eax
c0102c7c:	ff 75 dc             	pushl  -0x24(%ebp)
c0102c7f:	ff 75 08             	pushl  0x8(%ebp)
c0102c82:	e8 84 03 00 00       	call   c010300b <page_insert>
c0102c87:	83 c4 10             	add    $0x10,%esp
c0102c8a:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
c0102c91:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102c94:	3b 45 e0             	cmp    -0x20(%ebp),%eax
c0102c97:	72 cd                	jb     c0102c66 <mm_alloc+0x4c>
c0102c99:	c9                   	leave  
c0102c9a:	c3                   	ret    

c0102c9b <init_kern_pgdir>:
c0102c9b:	55                   	push   %ebp
c0102c9c:	89 e5                	mov    %esp,%ebp
c0102c9e:	53                   	push   %ebx
c0102c9f:	83 ec 24             	sub    $0x24,%esp
c0102ca2:	c7 45 e8 00 20 11 c0 	movl   $0xc0112000,-0x18(%ebp)
c0102ca9:	c7 45 f0 00 30 11 c0 	movl   $0xc0113000,-0x10(%ebp)
c0102cb0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102cb7:	eb 3a                	jmp    c0102cf3 <init_kern_pgdir+0x58>
c0102cb9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102cbc:	05 00 03 00 00       	add    $0x300,%eax
c0102cc1:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102cc8:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102ccb:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0102cce:	83 ec 04             	sub    $0x4,%esp
c0102cd1:	ff 75 f0             	pushl  -0x10(%ebp)
c0102cd4:	6a 42                	push   $0x42
c0102cd6:	68 9e 37 10 c0       	push   $0xc010379e
c0102cdb:	e8 6c fe ff ff       	call   c0102b4c <_paddr>
c0102ce0:	83 c4 10             	add    $0x10,%esp
c0102ce3:	83 c8 03             	or     $0x3,%eax
c0102ce6:	89 03                	mov    %eax,(%ebx)
c0102ce8:	81 45 f0 00 10 00 00 	addl   $0x1000,-0x10(%ebp)
c0102cef:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102cf3:	83 7d f4 1f          	cmpl   $0x1f,-0xc(%ebp)
c0102cf7:	7e c0                	jle    c0102cb9 <init_kern_pgdir+0x1e>
c0102cf9:	c7 45 ec 00 f0 ff 07 	movl   $0x7fff000,-0x14(%ebp)
c0102d00:	83 6d f0 04          	subl   $0x4,-0x10(%ebp)
c0102d04:	eb 18                	jmp    c0102d1e <init_kern_pgdir+0x83>
c0102d06:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102d09:	83 c8 07             	or     $0x7,%eax
c0102d0c:	89 c2                	mov    %eax,%edx
c0102d0e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102d11:	89 10                	mov    %edx,(%eax)
c0102d13:	83 6d f0 04          	subl   $0x4,-0x10(%ebp)
c0102d17:	81 6d ec 00 10 00 00 	subl   $0x1000,-0x14(%ebp)
c0102d1e:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102d22:	79 e2                	jns    c0102d06 <init_kern_pgdir+0x6b>
c0102d24:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102d27:	a3 04 00 1b c0       	mov    %eax,0xc01b0004
c0102d2c:	a1 04 00 1b c0       	mov    0xc01b0004,%eax
c0102d31:	83 ec 04             	sub    $0x4,%esp
c0102d34:	50                   	push   %eax
c0102d35:	6a 4f                	push   $0x4f
c0102d37:	68 9e 37 10 c0       	push   $0xc010379e
c0102d3c:	e8 0b fe ff ff       	call   c0102b4c <_paddr>
c0102d41:	83 c4 10             	add    $0x10,%esp
c0102d44:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0102d47:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0102d4a:	0f 22 d8             	mov    %eax,%cr3
c0102d4d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102d50:	c9                   	leave  
c0102d51:	c3                   	ret    

c0102d52 <page_init>:
c0102d52:	55                   	push   %ebp
c0102d53:	89 e5                	mov    %esp,%ebp
c0102d55:	83 ec 18             	sub    $0x18,%esp
c0102d58:	e8 3e ff ff ff       	call   c0102c9b <init_kern_pgdir>
c0102d5d:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
c0102d64:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102d6b:	eb 11                	jmp    c0102d7e <page_init+0x2c>
c0102d6d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102d70:	66 c7 04 c5 44 00 1b 	movw   $0x1,-0x3fe4ffbc(,%eax,8)
c0102d77:	c0 01 00 
c0102d7a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102d7e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102d81:	3b 45 f4             	cmp    -0xc(%ebp),%eax
c0102d84:	77 e7                	ja     c0102d6d <page_init+0x1b>
c0102d86:	c7 45 f4 ff 7f 00 00 	movl   $0x7fff,-0xc(%ebp)
c0102d8d:	eb 31                	jmp    c0102dc0 <page_init+0x6e>
c0102d8f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102d92:	66 c7 04 c5 44 00 1b 	movw   $0x0,-0x3fe4ffbc(,%eax,8)
c0102d99:	c0 00 00 
c0102d9c:	8b 15 00 10 11 c0    	mov    0xc0111000,%edx
c0102da2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102da5:	89 14 c5 40 00 1b c0 	mov    %edx,-0x3fe4ffc0(,%eax,8)
c0102dac:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102daf:	c1 e0 03             	shl    $0x3,%eax
c0102db2:	05 40 00 1b c0       	add    $0xc01b0040,%eax
c0102db7:	a3 00 10 11 c0       	mov    %eax,0xc0111000
c0102dbc:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
c0102dc0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102dc3:	3b 45 f4             	cmp    -0xc(%ebp),%eax
c0102dc6:	76 c7                	jbe    c0102d8f <page_init+0x3d>
c0102dc8:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
c0102dcf:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102dd2:	05 ff f9 00 00       	add    $0xf9ff,%eax
c0102dd7:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0102dda:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102ddd:	ba 00 00 00 00       	mov    $0x0,%edx
c0102de2:	f7 75 ec             	divl   -0x14(%ebp)
c0102de5:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102de8:	29 d0                	sub    %edx,%eax
c0102dea:	89 c2                	mov    %eax,%edx
c0102dec:	a1 04 00 1b c0       	mov    0xc01b0004,%eax
c0102df1:	83 ec 0c             	sub    $0xc,%esp
c0102df4:	6a 03                	push   $0x3
c0102df6:	68 00 00 0a 00       	push   $0xa0000
c0102dfb:	52                   	push   %edx
c0102dfc:	68 00 00 0a 00       	push   $0xa0000
c0102e01:	50                   	push   %eax
c0102e02:	e8 a1 01 00 00       	call   c0102fa8 <boot_map_region>
c0102e07:	83 c4 20             	add    $0x20,%esp
c0102e0a:	c9                   	leave  
c0102e0b:	c3                   	ret    

c0102e0c <page_alloc>:
c0102e0c:	55                   	push   %ebp
c0102e0d:	89 e5                	mov    %esp,%ebp
c0102e0f:	83 ec 18             	sub    $0x18,%esp
c0102e12:	a1 00 10 11 c0       	mov    0xc0111000,%eax
c0102e17:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102e1a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102e1e:	75 07                	jne    c0102e27 <page_alloc+0x1b>
c0102e20:	b8 00 00 00 00       	mov    $0x0,%eax
c0102e25:	eb 43                	jmp    c0102e6a <page_alloc+0x5e>
c0102e27:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e2a:	83 e0 01             	and    $0x1,%eax
c0102e2d:	85 c0                	test   %eax,%eax
c0102e2f:	74 21                	je     c0102e52 <page_alloc+0x46>
c0102e31:	83 ec 0c             	sub    $0xc,%esp
c0102e34:	ff 75 f4             	pushl  -0xc(%ebp)
c0102e37:	e8 b8 fd ff ff       	call   c0102bf4 <page2kva>
c0102e3c:	83 c4 10             	add    $0x10,%esp
c0102e3f:	83 ec 04             	sub    $0x4,%esp
c0102e42:	68 00 10 00 00       	push   $0x1000
c0102e47:	6a 00                	push   $0x0
c0102e49:	50                   	push   %eax
c0102e4a:	e8 8c e3 ff ff       	call   c01011db <my_memset>
c0102e4f:	83 c4 10             	add    $0x10,%esp
c0102e52:	a1 00 10 11 c0       	mov    0xc0111000,%eax
c0102e57:	8b 00                	mov    (%eax),%eax
c0102e59:	a3 00 10 11 c0       	mov    %eax,0xc0111000
c0102e5e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102e61:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0102e67:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102e6a:	c9                   	leave  
c0102e6b:	c3                   	ret    

c0102e6c <page_free>:
c0102e6c:	55                   	push   %ebp
c0102e6d:	89 e5                	mov    %esp,%ebp
c0102e6f:	8b 15 00 10 11 c0    	mov    0xc0111000,%edx
c0102e75:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e78:	89 10                	mov    %edx,(%eax)
c0102e7a:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e7d:	a3 00 10 11 c0       	mov    %eax,0xc0111000
c0102e82:	5d                   	pop    %ebp
c0102e83:	c3                   	ret    

c0102e84 <page_decref>:
c0102e84:	55                   	push   %ebp
c0102e85:	89 e5                	mov    %esp,%ebp
c0102e87:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e8a:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102e8e:	8d 50 ff             	lea    -0x1(%eax),%edx
c0102e91:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e94:	66 89 50 04          	mov    %dx,0x4(%eax)
c0102e98:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e9b:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102e9f:	66 85 c0             	test   %ax,%ax
c0102ea2:	75 0b                	jne    c0102eaf <page_decref+0x2b>
c0102ea4:	ff 75 08             	pushl  0x8(%ebp)
c0102ea7:	e8 c0 ff ff ff       	call   c0102e6c <page_free>
c0102eac:	83 c4 04             	add    $0x4,%esp
c0102eaf:	c9                   	leave  
c0102eb0:	c3                   	ret    

c0102eb1 <pgdir_walk>:
c0102eb1:	55                   	push   %ebp
c0102eb2:	89 e5                	mov    %esp,%ebp
c0102eb4:	53                   	push   %ebx
c0102eb5:	83 ec 14             	sub    $0x14,%esp
c0102eb8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102ebb:	c1 e8 16             	shr    $0x16,%eax
c0102ebe:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102ec1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102ec4:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102ecb:	8b 45 08             	mov    0x8(%ebp),%eax
c0102ece:	01 d0                	add    %edx,%eax
c0102ed0:	8b 00                	mov    (%eax),%eax
c0102ed2:	83 e0 01             	and    $0x1,%eax
c0102ed5:	85 c0                	test   %eax,%eax
c0102ed7:	74 31                	je     c0102f0a <pgdir_walk+0x59>
c0102ed9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102edc:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102ee3:	8b 45 08             	mov    0x8(%ebp),%eax
c0102ee6:	01 d0                	add    %edx,%eax
c0102ee8:	8b 00                	mov    (%eax),%eax
c0102eea:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102eef:	83 ec 04             	sub    $0x4,%esp
c0102ef2:	50                   	push   %eax
c0102ef3:	68 c8 00 00 00       	push   $0xc8
c0102ef8:	68 9e 37 10 c0       	push   $0xc010379e
c0102efd:	e8 7a fc ff ff       	call   c0102b7c <_kaddr>
c0102f02:	83 c4 10             	add    $0x10,%esp
c0102f05:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102f08:	eb 7c                	jmp    c0102f86 <pgdir_walk+0xd5>
c0102f0a:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0102f0e:	75 0a                	jne    c0102f1a <pgdir_walk+0x69>
c0102f10:	b8 00 00 00 00       	mov    $0x0,%eax
c0102f15:	e9 89 00 00 00       	jmp    c0102fa3 <pgdir_walk+0xf2>
c0102f1a:	83 ec 0c             	sub    $0xc,%esp
c0102f1d:	6a 01                	push   $0x1
c0102f1f:	e8 e8 fe ff ff       	call   c0102e0c <page_alloc>
c0102f24:	83 c4 10             	add    $0x10,%esp
c0102f27:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102f2a:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102f2e:	75 07                	jne    c0102f37 <pgdir_walk+0x86>
c0102f30:	b8 00 00 00 00       	mov    $0x0,%eax
c0102f35:	eb 6c                	jmp    c0102fa3 <pgdir_walk+0xf2>
c0102f37:	83 ec 0c             	sub    $0xc,%esp
c0102f3a:	ff 75 ec             	pushl  -0x14(%ebp)
c0102f3d:	e8 b2 fc ff ff       	call   c0102bf4 <page2kva>
c0102f42:	83 c4 10             	add    $0x10,%esp
c0102f45:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102f48:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102f4b:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102f4f:	8d 50 01             	lea    0x1(%eax),%edx
c0102f52:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102f55:	66 89 50 04          	mov    %dx,0x4(%eax)
c0102f59:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102f5c:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102f63:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f66:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0102f69:	83 ec 04             	sub    $0x4,%esp
c0102f6c:	ff 75 f4             	pushl  -0xc(%ebp)
c0102f6f:	68 d3 00 00 00       	push   $0xd3
c0102f74:	68 9e 37 10 c0       	push   $0xc010379e
c0102f79:	e8 ce fb ff ff       	call   c0102b4c <_paddr>
c0102f7e:	83 c4 10             	add    $0x10,%esp
c0102f81:	83 c8 07             	or     $0x7,%eax
c0102f84:	89 03                	mov    %eax,(%ebx)
c0102f86:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102f89:	c1 e8 0c             	shr    $0xc,%eax
c0102f8c:	25 ff 03 00 00       	and    $0x3ff,%eax
c0102f91:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0102f94:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102f97:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102f9e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102fa1:	01 d0                	add    %edx,%eax
c0102fa3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102fa6:	c9                   	leave  
c0102fa7:	c3                   	ret    

c0102fa8 <boot_map_region>:
c0102fa8:	55                   	push   %ebp
c0102fa9:	89 e5                	mov    %esp,%ebp
c0102fab:	83 ec 18             	sub    $0x18,%esp
c0102fae:	8b 45 10             	mov    0x10(%ebp),%eax
c0102fb1:	c1 e8 0c             	shr    $0xc,%eax
c0102fb4:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102fb7:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102fbe:	eb 41                	jmp    c0103001 <boot_map_region+0x59>
c0102fc0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102fc3:	83 ec 04             	sub    $0x4,%esp
c0102fc6:	6a 01                	push   $0x1
c0102fc8:	50                   	push   %eax
c0102fc9:	ff 75 08             	pushl  0x8(%ebp)
c0102fcc:	e8 e0 fe ff ff       	call   c0102eb1 <pgdir_walk>
c0102fd1:	83 c4 10             	add    $0x10,%esp
c0102fd4:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102fd7:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102fdb:	75 02                	jne    c0102fdf <boot_map_region+0x37>
c0102fdd:	eb 2a                	jmp    c0103009 <boot_map_region+0x61>
c0102fdf:	8b 45 18             	mov    0x18(%ebp),%eax
c0102fe2:	0b 45 14             	or     0x14(%ebp),%eax
c0102fe5:	83 c8 01             	or     $0x1,%eax
c0102fe8:	89 c2                	mov    %eax,%edx
c0102fea:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102fed:	89 10                	mov    %edx,(%eax)
c0102fef:	81 45 0c 00 10 00 00 	addl   $0x1000,0xc(%ebp)
c0102ff6:	81 45 14 00 10 00 00 	addl   $0x1000,0x14(%ebp)
c0102ffd:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0103001:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103004:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0103007:	7c b7                	jl     c0102fc0 <boot_map_region+0x18>
c0103009:	c9                   	leave  
c010300a:	c3                   	ret    

c010300b <page_insert>:
c010300b:	55                   	push   %ebp
c010300c:	89 e5                	mov    %esp,%ebp
c010300e:	83 ec 18             	sub    $0x18,%esp
c0103011:	83 ec 04             	sub    $0x4,%esp
c0103014:	6a 01                	push   $0x1
c0103016:	ff 75 10             	pushl  0x10(%ebp)
c0103019:	ff 75 08             	pushl  0x8(%ebp)
c010301c:	e8 90 fe ff ff       	call   c0102eb1 <pgdir_walk>
c0103021:	83 c4 10             	add    $0x10,%esp
c0103024:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0103027:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c010302b:	75 07                	jne    c0103034 <page_insert+0x29>
c010302d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0103032:	eb 75                	jmp    c01030a9 <page_insert+0x9e>
c0103034:	83 ec 0c             	sub    $0xc,%esp
c0103037:	ff 75 0c             	pushl  0xc(%ebp)
c010303a:	e8 6d fb ff ff       	call   c0102bac <page2pa>
c010303f:	83 c4 10             	add    $0x10,%esp
c0103042:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0103045:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103048:	8b 00                	mov    (%eax),%eax
c010304a:	83 e0 01             	and    $0x1,%eax
c010304d:	85 c0                	test   %eax,%eax
c010304f:	74 32                	je     c0103083 <page_insert+0x78>
c0103051:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103054:	8b 00                	mov    (%eax),%eax
c0103056:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c010305b:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c010305e:	75 12                	jne    c0103072 <page_insert+0x67>
c0103060:	8b 45 14             	mov    0x14(%ebp),%eax
c0103063:	0b 45 f0             	or     -0x10(%ebp),%eax
c0103066:	83 c8 01             	or     $0x1,%eax
c0103069:	89 c2                	mov    %eax,%edx
c010306b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010306e:	89 10                	mov    %edx,(%eax)
c0103070:	eb 11                	jmp    c0103083 <page_insert+0x78>
c0103072:	83 ec 08             	sub    $0x8,%esp
c0103075:	ff 75 10             	pushl  0x10(%ebp)
c0103078:	ff 75 08             	pushl  0x8(%ebp)
c010307b:	e8 7a 00 00 00       	call   c01030fa <page_remove>
c0103080:	83 c4 10             	add    $0x10,%esp
c0103083:	8b 45 14             	mov    0x14(%ebp),%eax
c0103086:	0b 45 f0             	or     -0x10(%ebp),%eax
c0103089:	83 c8 01             	or     $0x1,%eax
c010308c:	89 c2                	mov    %eax,%edx
c010308e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103091:	89 10                	mov    %edx,(%eax)
c0103093:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103096:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c010309a:	8d 50 01             	lea    0x1(%eax),%edx
c010309d:	8b 45 0c             	mov    0xc(%ebp),%eax
c01030a0:	66 89 50 04          	mov    %dx,0x4(%eax)
c01030a4:	b8 00 00 00 00       	mov    $0x0,%eax
c01030a9:	c9                   	leave  
c01030aa:	c3                   	ret    

c01030ab <page_lookup>:
c01030ab:	55                   	push   %ebp
c01030ac:	89 e5                	mov    %esp,%ebp
c01030ae:	83 ec 18             	sub    $0x18,%esp
c01030b1:	83 ec 04             	sub    $0x4,%esp
c01030b4:	6a 00                	push   $0x0
c01030b6:	ff 75 0c             	pushl  0xc(%ebp)
c01030b9:	ff 75 08             	pushl  0x8(%ebp)
c01030bc:	e8 f0 fd ff ff       	call   c0102eb1 <pgdir_walk>
c01030c1:	83 c4 10             	add    $0x10,%esp
c01030c4:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01030c7:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c01030cb:	75 07                	jne    c01030d4 <page_lookup+0x29>
c01030cd:	b8 00 00 00 00       	mov    $0x0,%eax
c01030d2:	eb 24                	jmp    c01030f8 <page_lookup+0x4d>
c01030d4:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c01030d8:	74 08                	je     c01030e2 <page_lookup+0x37>
c01030da:	8b 45 10             	mov    0x10(%ebp),%eax
c01030dd:	8b 55 f4             	mov    -0xc(%ebp),%edx
c01030e0:	89 10                	mov    %edx,(%eax)
c01030e2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01030e5:	8b 00                	mov    (%eax),%eax
c01030e7:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01030ec:	83 ec 0c             	sub    $0xc,%esp
c01030ef:	50                   	push   %eax
c01030f0:	e8 cc fa ff ff       	call   c0102bc1 <pa2page>
c01030f5:	83 c4 10             	add    $0x10,%esp
c01030f8:	c9                   	leave  
c01030f9:	c3                   	ret    

c01030fa <page_remove>:
c01030fa:	55                   	push   %ebp
c01030fb:	89 e5                	mov    %esp,%ebp
c01030fd:	83 ec 18             	sub    $0x18,%esp
c0103100:	8d 45 ec             	lea    -0x14(%ebp),%eax
c0103103:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0103106:	83 ec 04             	sub    $0x4,%esp
c0103109:	ff 75 f4             	pushl  -0xc(%ebp)
c010310c:	ff 75 0c             	pushl  0xc(%ebp)
c010310f:	ff 75 08             	pushl  0x8(%ebp)
c0103112:	e8 94 ff ff ff       	call   c01030ab <page_lookup>
c0103117:	83 c4 10             	add    $0x10,%esp
c010311a:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010311d:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0103121:	74 2a                	je     c010314d <page_remove+0x53>
c0103123:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103126:	8b 00                	mov    (%eax),%eax
c0103128:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c010312e:	83 ec 0c             	sub    $0xc,%esp
c0103131:	ff 75 f0             	pushl  -0x10(%ebp)
c0103134:	e8 4b fd ff ff       	call   c0102e84 <page_decref>
c0103139:	83 c4 10             	add    $0x10,%esp
c010313c:	83 ec 08             	sub    $0x8,%esp
c010313f:	ff 75 0c             	pushl  0xc(%ebp)
c0103142:	ff 75 08             	pushl  0x8(%ebp)
c0103145:	e8 05 00 00 00       	call   c010314f <tlb_invalidate>
c010314a:	83 c4 10             	add    $0x10,%esp
c010314d:	c9                   	leave  
c010314e:	c3                   	ret    

c010314f <tlb_invalidate>:
c010314f:	55                   	push   %ebp
c0103150:	89 e5                	mov    %esp,%ebp
c0103152:	83 ec 10             	sub    $0x10,%esp
c0103155:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103158:	89 45 fc             	mov    %eax,-0x4(%ebp)
c010315b:	8b 45 fc             	mov    -0x4(%ebp),%eax
c010315e:	0f 01 38             	invlpg (%eax)
c0103161:	c9                   	leave  
c0103162:	c3                   	ret    

c0103163 <free_pgdir>:
c0103163:	55                   	push   %ebp
c0103164:	89 e5                	mov    %esp,%ebp
c0103166:	83 ec 18             	sub    $0x18,%esp
c0103169:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0103170:	e9 09 01 00 00       	jmp    c010327e <free_pgdir+0x11b>
c0103175:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103178:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010317f:	8b 45 08             	mov    0x8(%ebp),%eax
c0103182:	01 d0                	add    %edx,%eax
c0103184:	8b 00                	mov    (%eax),%eax
c0103186:	83 e0 01             	and    $0x1,%eax
c0103189:	85 c0                	test   %eax,%eax
c010318b:	0f 84 e9 00 00 00    	je     c010327a <free_pgdir+0x117>
c0103191:	a1 04 00 1b c0       	mov    0xc01b0004,%eax
c0103196:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0103199:	c1 e2 02             	shl    $0x2,%edx
c010319c:	01 d0                	add    %edx,%eax
c010319e:	8b 00                	mov    (%eax),%eax
c01031a0:	83 e0 01             	and    $0x1,%eax
c01031a3:	85 c0                	test   %eax,%eax
c01031a5:	74 05                	je     c01031ac <free_pgdir+0x49>
c01031a7:	e9 ce 00 00 00       	jmp    c010327a <free_pgdir+0x117>
c01031ac:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01031af:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01031b6:	8b 45 08             	mov    0x8(%ebp),%eax
c01031b9:	01 d0                	add    %edx,%eax
c01031bb:	8b 00                	mov    (%eax),%eax
c01031bd:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01031c2:	83 ec 04             	sub    $0x4,%esp
c01031c5:	50                   	push   %eax
c01031c6:	68 68 01 00 00       	push   $0x168
c01031cb:	68 9e 37 10 c0       	push   $0xc010379e
c01031d0:	e8 a7 f9 ff ff       	call   c0102b7c <_kaddr>
c01031d5:	83 c4 10             	add    $0x10,%esp
c01031d8:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01031db:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c01031e2:	eb 4a                	jmp    c010322e <free_pgdir+0xcb>
c01031e4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01031e7:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01031ee:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01031f1:	01 d0                	add    %edx,%eax
c01031f3:	8b 00                	mov    (%eax),%eax
c01031f5:	83 e0 01             	and    $0x1,%eax
c01031f8:	85 c0                	test   %eax,%eax
c01031fa:	74 2e                	je     c010322a <free_pgdir+0xc7>
c01031fc:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01031ff:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103206:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0103209:	01 d0                	add    %edx,%eax
c010320b:	8b 00                	mov    (%eax),%eax
c010320d:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0103212:	83 ec 0c             	sub    $0xc,%esp
c0103215:	50                   	push   %eax
c0103216:	e8 a6 f9 ff ff       	call   c0102bc1 <pa2page>
c010321b:	83 c4 10             	add    $0x10,%esp
c010321e:	83 ec 0c             	sub    $0xc,%esp
c0103221:	50                   	push   %eax
c0103222:	e8 5d fc ff ff       	call   c0102e84 <page_decref>
c0103227:	83 c4 10             	add    $0x10,%esp
c010322a:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c010322e:	81 7d f0 ff 03 00 00 	cmpl   $0x3ff,-0x10(%ebp)
c0103235:	7e ad                	jle    c01031e4 <free_pgdir+0x81>
c0103237:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010323a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103241:	8b 45 08             	mov    0x8(%ebp),%eax
c0103244:	01 d0                	add    %edx,%eax
c0103246:	8b 00                	mov    (%eax),%eax
c0103248:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c010324d:	83 ec 0c             	sub    $0xc,%esp
c0103250:	50                   	push   %eax
c0103251:	e8 6b f9 ff ff       	call   c0102bc1 <pa2page>
c0103256:	83 c4 10             	add    $0x10,%esp
c0103259:	83 ec 0c             	sub    $0xc,%esp
c010325c:	50                   	push   %eax
c010325d:	e8 22 fc ff ff       	call   c0102e84 <page_decref>
c0103262:	83 c4 10             	add    $0x10,%esp
c0103265:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103268:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010326f:	8b 45 08             	mov    0x8(%ebp),%eax
c0103272:	01 d0                	add    %edx,%eax
c0103274:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c010327a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c010327e:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
c0103285:	0f 8e ea fe ff ff    	jle    c0103175 <free_pgdir+0x12>
c010328b:	c9                   	leave  
c010328c:	c3                   	ret    

c010328d <copy_pgdir>:
c010328d:	55                   	push   %ebp
c010328e:	89 e5                	mov    %esp,%ebp
c0103290:	53                   	push   %ebx
c0103291:	83 ec 24             	sub    $0x24,%esp
c0103294:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c010329b:	e9 d8 01 00 00       	jmp    c0103478 <copy_pgdir+0x1eb>
c01032a0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01032a3:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01032aa:	8b 45 0c             	mov    0xc(%ebp),%eax
c01032ad:	01 d0                	add    %edx,%eax
c01032af:	8b 00                	mov    (%eax),%eax
c01032b1:	83 e0 01             	and    $0x1,%eax
c01032b4:	85 c0                	test   %eax,%eax
c01032b6:	0f 84 b8 01 00 00    	je     c0103474 <copy_pgdir+0x1e7>
c01032bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01032bf:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01032c6:	8b 45 08             	mov    0x8(%ebp),%eax
c01032c9:	01 d0                	add    %edx,%eax
c01032cb:	8b 00                	mov    (%eax),%eax
c01032cd:	83 e0 01             	and    $0x1,%eax
c01032d0:	85 c0                	test   %eax,%eax
c01032d2:	74 05                	je     c01032d9 <copy_pgdir+0x4c>
c01032d4:	e9 9b 01 00 00       	jmp    c0103474 <copy_pgdir+0x1e7>
c01032d9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01032dc:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01032e3:	8b 45 0c             	mov    0xc(%ebp),%eax
c01032e6:	01 d0                	add    %edx,%eax
c01032e8:	8b 00                	mov    (%eax),%eax
c01032ea:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01032ef:	83 ec 04             	sub    $0x4,%esp
c01032f2:	50                   	push   %eax
c01032f3:	68 7c 01 00 00       	push   $0x17c
c01032f8:	68 9e 37 10 c0       	push   $0xc010379e
c01032fd:	e8 7a f8 ff ff       	call   c0102b7c <_kaddr>
c0103302:	83 c4 10             	add    $0x10,%esp
c0103305:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0103308:	83 ec 0c             	sub    $0xc,%esp
c010330b:	6a 01                	push   $0x1
c010330d:	e8 fa fa ff ff       	call   c0102e0c <page_alloc>
c0103312:	83 c4 10             	add    $0x10,%esp
c0103315:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0103318:	8b 45 e8             	mov    -0x18(%ebp),%eax
c010331b:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c010331f:	8d 50 01             	lea    0x1(%eax),%edx
c0103322:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0103325:	66 89 50 04          	mov    %dx,0x4(%eax)
c0103329:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010332c:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103333:	8b 45 08             	mov    0x8(%ebp),%eax
c0103336:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0103339:	83 ec 0c             	sub    $0xc,%esp
c010333c:	ff 75 e8             	pushl  -0x18(%ebp)
c010333f:	e8 68 f8 ff ff       	call   c0102bac <page2pa>
c0103344:	83 c4 10             	add    $0x10,%esp
c0103347:	89 c1                	mov    %eax,%ecx
c0103349:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010334c:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103353:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103356:	01 d0                	add    %edx,%eax
c0103358:	8b 00                	mov    (%eax),%eax
c010335a:	25 ff 0f 00 00       	and    $0xfff,%eax
c010335f:	09 c8                	or     %ecx,%eax
c0103361:	89 03                	mov    %eax,(%ebx)
c0103363:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103366:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010336d:	8b 45 08             	mov    0x8(%ebp),%eax
c0103370:	01 d0                	add    %edx,%eax
c0103372:	8b 00                	mov    (%eax),%eax
c0103374:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0103379:	83 ec 04             	sub    $0x4,%esp
c010337c:	50                   	push   %eax
c010337d:	68 83 01 00 00       	push   $0x183
c0103382:	68 9e 37 10 c0       	push   $0xc010379e
c0103387:	e8 f0 f7 ff ff       	call   c0102b7c <_kaddr>
c010338c:	83 c4 10             	add    $0x10,%esp
c010338f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0103392:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0103399:	e9 c9 00 00 00       	jmp    c0103467 <copy_pgdir+0x1da>
c010339e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01033a1:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01033a8:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01033ab:	01 d0                	add    %edx,%eax
c01033ad:	8b 00                	mov    (%eax),%eax
c01033af:	83 e0 01             	and    $0x1,%eax
c01033b2:	85 c0                	test   %eax,%eax
c01033b4:	0f 84 a9 00 00 00    	je     c0103463 <copy_pgdir+0x1d6>
c01033ba:	83 ec 0c             	sub    $0xc,%esp
c01033bd:	6a 00                	push   $0x0
c01033bf:	e8 48 fa ff ff       	call   c0102e0c <page_alloc>
c01033c4:	83 c4 10             	add    $0x10,%esp
c01033c7:	89 45 e8             	mov    %eax,-0x18(%ebp)
c01033ca:	8b 45 e8             	mov    -0x18(%ebp),%eax
c01033cd:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c01033d1:	8d 50 01             	lea    0x1(%eax),%edx
c01033d4:	8b 45 e8             	mov    -0x18(%ebp),%eax
c01033d7:	66 89 50 04          	mov    %dx,0x4(%eax)
c01033db:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01033de:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01033e5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01033e8:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c01033eb:	83 ec 0c             	sub    $0xc,%esp
c01033ee:	ff 75 e8             	pushl  -0x18(%ebp)
c01033f1:	e8 b6 f7 ff ff       	call   c0102bac <page2pa>
c01033f6:	83 c4 10             	add    $0x10,%esp
c01033f9:	89 c1                	mov    %eax,%ecx
c01033fb:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01033fe:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103405:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0103408:	01 d0                	add    %edx,%eax
c010340a:	8b 00                	mov    (%eax),%eax
c010340c:	25 ff 0f 00 00       	and    $0xfff,%eax
c0103411:	09 c8                	or     %ecx,%eax
c0103413:	89 03                	mov    %eax,(%ebx)
c0103415:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0103418:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010341f:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0103422:	01 d0                	add    %edx,%eax
c0103424:	8b 00                	mov    (%eax),%eax
c0103426:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c010342b:	83 ec 04             	sub    $0x4,%esp
c010342e:	50                   	push   %eax
c010342f:	68 89 01 00 00       	push   $0x189
c0103434:	68 9e 37 10 c0       	push   $0xc010379e
c0103439:	e8 3e f7 ff ff       	call   c0102b7c <_kaddr>
c010343e:	83 c4 10             	add    $0x10,%esp
c0103441:	89 c3                	mov    %eax,%ebx
c0103443:	83 ec 0c             	sub    $0xc,%esp
c0103446:	ff 75 e8             	pushl  -0x18(%ebp)
c0103449:	e8 a6 f7 ff ff       	call   c0102bf4 <page2kva>
c010344e:	83 c4 10             	add    $0x10,%esp
c0103451:	83 ec 04             	sub    $0x4,%esp
c0103454:	68 00 10 00 00       	push   $0x1000
c0103459:	53                   	push   %ebx
c010345a:	50                   	push   %eax
c010345b:	e8 5e dd ff ff       	call   c01011be <my_memcpy>
c0103460:	83 c4 10             	add    $0x10,%esp
c0103463:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0103467:	81 7d f0 ff 03 00 00 	cmpl   $0x3ff,-0x10(%ebp)
c010346e:	0f 8e 2a ff ff ff    	jle    c010339e <copy_pgdir+0x111>
c0103474:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0103478:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
c010347f:	0f 8e 1b fe ff ff    	jle    c01032a0 <copy_pgdir+0x13>
c0103485:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0103488:	c9                   	leave  
c0103489:	c3                   	ret    
