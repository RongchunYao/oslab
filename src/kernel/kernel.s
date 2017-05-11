
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
c0100155:	68 3c 33 10 c0       	push   $0xc010333c
c010015a:	e8 2a 10 00 00       	call   c0101189 <printk>
c010015f:	83 c4 10             	add    $0x10,%esp
c0100162:	e8 d4 ff ff ff       	call   c010013b <disable_interrupt>
c0100167:	e8 7f 00 00 00       	call   c01001eb <init_serial>
c010016c:	e8 33 01 00 00       	call   c01002a4 <init_timer>
c0100171:	e8 ae 05 00 00       	call   c0100724 <init_intr>
c0100176:	e8 e6 07 00 00       	call   c0100961 <init_idt>
c010017b:	e8 3f 04 00 00       	call   c01005bf <init_seg>
c0100180:	e8 7f 2a 00 00       	call   c0102c04 <page_init>
c0100185:	e8 fd 15 00 00       	call   c0101787 <init_PCB>
c010018a:	83 ec 08             	sub    $0x8,%esp
c010018d:	68 53 33 10 c0       	push   $0xc0103353
c0100192:	68 00 b0 04 00       	push   $0x4b000
c0100197:	e8 4e 24 00 00       	call   c01025ea <load_PCB>
c010019c:	83 c4 10             	add    $0x10,%esp
c010019f:	83 ec 08             	sub    $0x8,%esp
c01001a2:	68 58 33 10 c0       	push   $0xc0103358
c01001a7:	68 00 90 01 00       	push   $0x19000
c01001ac:	e8 39 24 00 00       	call   c01025ea <load_PCB>
c01001b1:	83 c4 10             	add    $0x10,%esp
c01001b4:	e8 05 15 00 00       	call   c01016be <debug>
c01001b9:	e8 e2 1e 00 00       	call   c01020a0 <reschedule>
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
c0100318:	66 a3 ac f0 10 c0    	mov    %ax,0xc010f0ac
c010031e:	8b 45 08             	mov    0x8(%ebp),%eax
c0100321:	66 a3 ae f0 10 c0    	mov    %ax,0xc010f0ae
c0100327:	8b 45 08             	mov    0x8(%ebp),%eax
c010032a:	c1 e8 10             	shr    $0x10,%eax
c010032d:	66 a3 b0 f0 10 c0    	mov    %ax,0xc010f0b0
c0100333:	b8 ac f0 10 c0       	mov    $0xc010f0ac,%eax
c0100338:	0f 01 10             	lgdtl  (%eax)
c010033b:	5d                   	pop    %ebp
c010033c:	c3                   	ret    

c010033d <set_tss>:
c010033d:	55                   	push   %ebp
c010033e:	89 e5                	mov    %esp,%ebp
c0100340:	8b 45 08             	mov    0x8(%ebp),%eax
c0100343:	a3 84 20 13 c0       	mov    %eax,0xc0132084
c0100348:	5d                   	pop    %ebp
c0100349:	c3                   	ret    

c010034a <Makegdt>:
c010034a:	55                   	push   %ebp
c010034b:	89 e5                	mov    %esp,%ebp
c010034d:	8b 45 08             	mov    0x8(%ebp),%eax
c0100350:	c1 e8 0c             	shr    $0xc,%eax
c0100353:	89 c2                	mov    %eax,%edx
c0100355:	8b 45 18             	mov    0x18(%ebp),%eax
c0100358:	66 89 14 c5 00 20 13 	mov    %dx,-0x3fece000(,%eax,8)
c010035f:	c0 
c0100360:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100363:	89 c2                	mov    %eax,%edx
c0100365:	8b 45 18             	mov    0x18(%ebp),%eax
c0100368:	66 89 14 c5 02 20 13 	mov    %dx,-0x3fecdffe(,%eax,8)
c010036f:	c0 
c0100370:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100373:	c1 e8 10             	shr    $0x10,%eax
c0100376:	89 c2                	mov    %eax,%edx
c0100378:	8b 45 18             	mov    0x18(%ebp),%eax
c010037b:	88 14 c5 04 20 13 c0 	mov    %dl,-0x3fecdffc(,%eax,8)
c0100382:	8b 45 10             	mov    0x10(%ebp),%eax
c0100385:	83 e0 0f             	and    $0xf,%eax
c0100388:	89 c2                	mov    %eax,%edx
c010038a:	8b 45 18             	mov    0x18(%ebp),%eax
c010038d:	89 d1                	mov    %edx,%ecx
c010038f:	83 e1 0f             	and    $0xf,%ecx
c0100392:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c0100399:	c0 
c010039a:	83 e2 f0             	and    $0xfffffff0,%edx
c010039d:	09 ca                	or     %ecx,%edx
c010039f:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c01003a6:	8b 45 18             	mov    0x18(%ebp),%eax
c01003a9:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c01003b0:	c0 
c01003b1:	83 ca 10             	or     $0x10,%edx
c01003b4:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c01003bb:	8b 45 14             	mov    0x14(%ebp),%eax
c01003be:	83 e0 03             	and    $0x3,%eax
c01003c1:	89 c2                	mov    %eax,%edx
c01003c3:	8b 45 18             	mov    0x18(%ebp),%eax
c01003c6:	83 e2 03             	and    $0x3,%edx
c01003c9:	89 d1                	mov    %edx,%ecx
c01003cb:	c1 e1 05             	shl    $0x5,%ecx
c01003ce:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c01003d5:	c0 
c01003d6:	83 e2 9f             	and    $0xffffff9f,%edx
c01003d9:	09 ca                	or     %ecx,%edx
c01003db:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c01003e2:	8b 45 18             	mov    0x18(%ebp),%eax
c01003e5:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c01003ec:	c0 
c01003ed:	83 ca 80             	or     $0xffffff80,%edx
c01003f0:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c01003f7:	8b 45 08             	mov    0x8(%ebp),%eax
c01003fa:	c1 e8 1c             	shr    $0x1c,%eax
c01003fd:	83 e0 0f             	and    $0xf,%eax
c0100400:	89 c2                	mov    %eax,%edx
c0100402:	8b 45 18             	mov    0x18(%ebp),%eax
c0100405:	89 d1                	mov    %edx,%ecx
c0100407:	83 e1 0f             	and    $0xf,%ecx
c010040a:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c0100411:	c0 
c0100412:	83 e2 f0             	and    $0xfffffff0,%edx
c0100415:	09 ca                	or     %ecx,%edx
c0100417:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c010041e:	8b 45 18             	mov    0x18(%ebp),%eax
c0100421:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c0100428:	c0 
c0100429:	83 e2 ef             	and    $0xffffffef,%edx
c010042c:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c0100433:	8b 45 18             	mov    0x18(%ebp),%eax
c0100436:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c010043d:	c0 
c010043e:	83 e2 df             	and    $0xffffffdf,%edx
c0100441:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c0100448:	8b 45 18             	mov    0x18(%ebp),%eax
c010044b:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c0100452:	c0 
c0100453:	83 ca 40             	or     $0x40,%edx
c0100456:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c010045d:	8b 45 18             	mov    0x18(%ebp),%eax
c0100460:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c0100467:	c0 
c0100468:	83 ca 80             	or     $0xffffff80,%edx
c010046b:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c0100472:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100475:	c1 e8 18             	shr    $0x18,%eax
c0100478:	89 c2                	mov    %eax,%edx
c010047a:	8b 45 18             	mov    0x18(%ebp),%eax
c010047d:	88 14 c5 07 20 13 c0 	mov    %dl,-0x3fecdff9(,%eax,8)
c0100484:	5d                   	pop    %ebp
c0100485:	c3                   	ret    

c0100486 <Maketss>:
c0100486:	55                   	push   %ebp
c0100487:	89 e5                	mov    %esp,%ebp
c0100489:	8b 45 08             	mov    0x8(%ebp),%eax
c010048c:	89 c2                	mov    %eax,%edx
c010048e:	8b 45 18             	mov    0x18(%ebp),%eax
c0100491:	66 89 14 c5 00 20 13 	mov    %dx,-0x3fece000(,%eax,8)
c0100498:	c0 
c0100499:	8b 45 0c             	mov    0xc(%ebp),%eax
c010049c:	89 c2                	mov    %eax,%edx
c010049e:	8b 45 18             	mov    0x18(%ebp),%eax
c01004a1:	66 89 14 c5 02 20 13 	mov    %dx,-0x3fecdffe(,%eax,8)
c01004a8:	c0 
c01004a9:	8b 45 0c             	mov    0xc(%ebp),%eax
c01004ac:	c1 e8 10             	shr    $0x10,%eax
c01004af:	89 c2                	mov    %eax,%edx
c01004b1:	8b 45 18             	mov    0x18(%ebp),%eax
c01004b4:	88 14 c5 04 20 13 c0 	mov    %dl,-0x3fecdffc(,%eax,8)
c01004bb:	8b 45 10             	mov    0x10(%ebp),%eax
c01004be:	83 e0 0f             	and    $0xf,%eax
c01004c1:	89 c2                	mov    %eax,%edx
c01004c3:	8b 45 18             	mov    0x18(%ebp),%eax
c01004c6:	89 d1                	mov    %edx,%ecx
c01004c8:	83 e1 0f             	and    $0xf,%ecx
c01004cb:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c01004d2:	c0 
c01004d3:	83 e2 f0             	and    $0xfffffff0,%edx
c01004d6:	09 ca                	or     %ecx,%edx
c01004d8:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c01004df:	8b 45 18             	mov    0x18(%ebp),%eax
c01004e2:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c01004e9:	c0 
c01004ea:	83 e2 ef             	and    $0xffffffef,%edx
c01004ed:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c01004f4:	8b 45 14             	mov    0x14(%ebp),%eax
c01004f7:	83 e0 03             	and    $0x3,%eax
c01004fa:	89 c2                	mov    %eax,%edx
c01004fc:	8b 45 18             	mov    0x18(%ebp),%eax
c01004ff:	83 e2 03             	and    $0x3,%edx
c0100502:	89 d1                	mov    %edx,%ecx
c0100504:	c1 e1 05             	shl    $0x5,%ecx
c0100507:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c010050e:	c0 
c010050f:	83 e2 9f             	and    $0xffffff9f,%edx
c0100512:	09 ca                	or     %ecx,%edx
c0100514:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c010051b:	8b 45 18             	mov    0x18(%ebp),%eax
c010051e:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c0100525:	c0 
c0100526:	83 ca 80             	or     $0xffffff80,%edx
c0100529:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c0100530:	8b 45 08             	mov    0x8(%ebp),%eax
c0100533:	c1 e8 10             	shr    $0x10,%eax
c0100536:	83 e0 0f             	and    $0xf,%eax
c0100539:	89 c2                	mov    %eax,%edx
c010053b:	8b 45 18             	mov    0x18(%ebp),%eax
c010053e:	89 d1                	mov    %edx,%ecx
c0100540:	83 e1 0f             	and    $0xf,%ecx
c0100543:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c010054a:	c0 
c010054b:	83 e2 f0             	and    $0xfffffff0,%edx
c010054e:	09 ca                	or     %ecx,%edx
c0100550:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c0100557:	8b 45 18             	mov    0x18(%ebp),%eax
c010055a:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c0100561:	c0 
c0100562:	83 e2 ef             	and    $0xffffffef,%edx
c0100565:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c010056c:	8b 45 18             	mov    0x18(%ebp),%eax
c010056f:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c0100576:	c0 
c0100577:	83 e2 df             	and    $0xffffffdf,%edx
c010057a:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c0100581:	8b 45 18             	mov    0x18(%ebp),%eax
c0100584:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c010058b:	c0 
c010058c:	83 ca 40             	or     $0x40,%edx
c010058f:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c0100596:	8b 45 18             	mov    0x18(%ebp),%eax
c0100599:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c01005a0:	c0 
c01005a1:	83 ca 80             	or     $0xffffff80,%edx
c01005a4:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c01005ab:	8b 45 0c             	mov    0xc(%ebp),%eax
c01005ae:	c1 e8 18             	shr    $0x18,%eax
c01005b1:	89 c2                	mov    %eax,%edx
c01005b3:	8b 45 18             	mov    0x18(%ebp),%eax
c01005b6:	88 14 c5 07 20 13 c0 	mov    %dl,-0x3fecdff9(,%eax,8)
c01005bd:	5d                   	pop    %ebp
c01005be:	c3                   	ret    

c01005bf <init_seg>:
c01005bf:	55                   	push   %ebp
c01005c0:	89 e5                	mov    %esp,%ebp
c01005c2:	83 ec 10             	sub    $0x10,%esp
c01005c5:	c7 05 a8 f0 10 c0 00 	movl   $0x0,0xc010f0a8
c01005cc:	00 00 00 
c01005cf:	6a 00                	push   $0x0
c01005d1:	6a 00                	push   $0x0
c01005d3:	6a 00                	push   $0x0
c01005d5:	6a 00                	push   $0x0
c01005d7:	6a 00                	push   $0x0
c01005d9:	e8 6c fd ff ff       	call   c010034a <Makegdt>
c01005de:	83 c4 14             	add    $0x14,%esp
c01005e1:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c01005e6:	83 c0 01             	add    $0x1,%eax
c01005e9:	a3 a8 f0 10 c0       	mov    %eax,0xc010f0a8
c01005ee:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c01005f3:	50                   	push   %eax
c01005f4:	6a 00                	push   $0x0
c01005f6:	6a 0a                	push   $0xa
c01005f8:	6a 00                	push   $0x0
c01005fa:	6a ff                	push   $0xffffffff
c01005fc:	e8 49 fd ff ff       	call   c010034a <Makegdt>
c0100601:	83 c4 14             	add    $0x14,%esp
c0100604:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c0100609:	83 c0 01             	add    $0x1,%eax
c010060c:	a3 a8 f0 10 c0       	mov    %eax,0xc010f0a8
c0100611:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c0100616:	50                   	push   %eax
c0100617:	6a 00                	push   $0x0
c0100619:	6a 02                	push   $0x2
c010061b:	6a 00                	push   $0x0
c010061d:	6a ff                	push   $0xffffffff
c010061f:	e8 26 fd ff ff       	call   c010034a <Makegdt>
c0100624:	83 c4 14             	add    $0x14,%esp
c0100627:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c010062c:	83 c0 01             	add    $0x1,%eax
c010062f:	a3 a8 f0 10 c0       	mov    %eax,0xc010f0a8
c0100634:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c0100639:	50                   	push   %eax
c010063a:	6a 03                	push   $0x3
c010063c:	6a 0a                	push   $0xa
c010063e:	6a 00                	push   $0x0
c0100640:	6a ff                	push   $0xffffffff
c0100642:	e8 03 fd ff ff       	call   c010034a <Makegdt>
c0100647:	83 c4 14             	add    $0x14,%esp
c010064a:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c010064f:	83 c0 01             	add    $0x1,%eax
c0100652:	a3 a8 f0 10 c0       	mov    %eax,0xc010f0a8
c0100657:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c010065c:	50                   	push   %eax
c010065d:	6a 03                	push   $0x3
c010065f:	6a 02                	push   $0x2
c0100661:	6a 00                	push   $0x0
c0100663:	6a ff                	push   $0xffffffff
c0100665:	e8 e0 fc ff ff       	call   c010034a <Makegdt>
c010066a:	83 c4 14             	add    $0x14,%esp
c010066d:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c0100672:	83 c0 01             	add    $0x1,%eax
c0100675:	a3 a8 f0 10 c0       	mov    %eax,0xc010f0a8
c010067a:	c7 05 84 20 13 c0 00 	movl   $0x2f0000,0xc0132084
c0100681:	00 2f 00 
c0100684:	66 c7 05 88 20 13 c0 	movw   $0x10,0xc0132088
c010068b:	10 00 
c010068d:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c0100692:	ba 80 20 13 c0       	mov    $0xc0132080,%edx
c0100697:	50                   	push   %eax
c0100698:	6a 00                	push   $0x0
c010069a:	6a 09                	push   $0x9
c010069c:	52                   	push   %edx
c010069d:	6a ff                	push   $0xffffffff
c010069f:	e8 e2 fd ff ff       	call   c0100486 <Maketss>
c01006a4:	83 c4 14             	add    $0x14,%esp
c01006a7:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c01006ac:	83 c0 01             	add    $0x1,%eax
c01006af:	a3 a8 f0 10 c0       	mov    %eax,0xc010f0a8
c01006b4:	66 c7 05 dc 20 13 c0 	movw   $0x2b,0xc01320dc
c01006bb:	2b 00 
c01006bd:	66 b8 10 00          	mov    $0x10,%ax
c01006c1:	8e d8                	mov    %eax,%ds
c01006c3:	8e c0                	mov    %eax,%es
c01006c5:	8e d0                	mov    %eax,%ss
c01006c7:	68 80 00 00 00       	push   $0x80
c01006cc:	68 00 20 13 c0       	push   $0xc0132000
c01006d1:	e8 39 fc ff ff       	call   c010030f <write_gdtr>
c01006d6:	83 c4 08             	add    $0x8,%esp
c01006d9:	0f b7 05 dc 20 13 c0 	movzwl 0xc01320dc,%eax
c01006e0:	0f b7 c0             	movzwl %ax,%eax
c01006e3:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
c01006e7:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
c01006eb:	0f 00 d8             	ltr    %ax
c01006ee:	c9                   	leave  
c01006ef:	c3                   	ret    

c01006f0 <entry>:
c01006f0:	66 c7 05 72 04 00 00 	movw   $0x1234,0x472
c01006f7:	34 12 
c01006f9:	b8 00 e0 10 00       	mov    $0x10e000,%eax
c01006fe:	0f 22 d8             	mov    %eax,%cr3
c0100701:	0f 20 c0             	mov    %cr0,%eax
c0100704:	0d 01 00 00 80       	or     $0x80000001,%eax
c0100709:	0f 22 c0             	mov    %eax,%cr0
c010070c:	b8 13 07 10 c0       	mov    $0xc0100713,%eax
c0100711:	ff e0                	jmp    *%eax

c0100713 <relocated>:
c0100713:	bd 00 00 00 00       	mov    $0x0,%ebp
c0100718:	bc 00 d0 10 c0       	mov    $0xc010d000,%esp
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
c010083f:	66 a3 b2 f0 10 c0    	mov    %ax,0xc010f0b2
c0100845:	8b 45 08             	mov    0x8(%ebp),%eax
c0100848:	66 a3 b4 f0 10 c0    	mov    %ax,0xc010f0b4
c010084e:	8b 45 08             	mov    0x8(%ebp),%eax
c0100851:	c1 e8 10             	shr    $0x10,%eax
c0100854:	66 a3 b6 f0 10 c0    	mov    %ax,0xc010f0b6
c010085a:	b8 b2 f0 10 c0       	mov    $0xc010f0b2,%eax
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
c010097b:	05 00 21 13 c0       	add    $0xc0132100,%eax
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
c01009a5:	68 00 21 13 c0       	push   $0xc0132100
c01009aa:	e8 35 ff ff ff       	call   c01008e4 <set_trap>
c01009af:	83 c4 10             	add    $0x10,%esp
c01009b2:	b8 6e 0b 10 c0       	mov    $0xc0100b6e,%eax
c01009b7:	6a 00                	push   $0x0
c01009b9:	50                   	push   %eax
c01009ba:	6a 01                	push   $0x1
c01009bc:	68 08 21 13 c0       	push   $0xc0132108
c01009c1:	e8 1e ff ff ff       	call   c01008e4 <set_trap>
c01009c6:	83 c4 10             	add    $0x10,%esp
c01009c9:	b8 78 0b 10 c0       	mov    $0xc0100b78,%eax
c01009ce:	6a 00                	push   $0x0
c01009d0:	50                   	push   %eax
c01009d1:	6a 01                	push   $0x1
c01009d3:	68 10 21 13 c0       	push   $0xc0132110
c01009d8:	e8 07 ff ff ff       	call   c01008e4 <set_trap>
c01009dd:	83 c4 10             	add    $0x10,%esp
c01009e0:	b8 82 0b 10 c0       	mov    $0xc0100b82,%eax
c01009e5:	6a 00                	push   $0x0
c01009e7:	50                   	push   %eax
c01009e8:	6a 01                	push   $0x1
c01009ea:	68 18 21 13 c0       	push   $0xc0132118
c01009ef:	e8 f0 fe ff ff       	call   c01008e4 <set_trap>
c01009f4:	83 c4 10             	add    $0x10,%esp
c01009f7:	b8 89 0b 10 c0       	mov    $0xc0100b89,%eax
c01009fc:	6a 00                	push   $0x0
c01009fe:	50                   	push   %eax
c01009ff:	6a 01                	push   $0x1
c0100a01:	68 20 21 13 c0       	push   $0xc0132120
c0100a06:	e8 d9 fe ff ff       	call   c01008e4 <set_trap>
c0100a0b:	83 c4 10             	add    $0x10,%esp
c0100a0e:	b8 90 0b 10 c0       	mov    $0xc0100b90,%eax
c0100a13:	6a 00                	push   $0x0
c0100a15:	50                   	push   %eax
c0100a16:	6a 01                	push   $0x1
c0100a18:	68 28 21 13 c0       	push   $0xc0132128
c0100a1d:	e8 c2 fe ff ff       	call   c01008e4 <set_trap>
c0100a22:	83 c4 10             	add    $0x10,%esp
c0100a25:	b8 97 0b 10 c0       	mov    $0xc0100b97,%eax
c0100a2a:	6a 00                	push   $0x0
c0100a2c:	50                   	push   %eax
c0100a2d:	6a 01                	push   $0x1
c0100a2f:	68 30 21 13 c0       	push   $0xc0132130
c0100a34:	e8 ab fe ff ff       	call   c01008e4 <set_trap>
c0100a39:	83 c4 10             	add    $0x10,%esp
c0100a3c:	b8 9e 0b 10 c0       	mov    $0xc0100b9e,%eax
c0100a41:	6a 00                	push   $0x0
c0100a43:	50                   	push   %eax
c0100a44:	6a 01                	push   $0x1
c0100a46:	68 38 21 13 c0       	push   $0xc0132138
c0100a4b:	e8 94 fe ff ff       	call   c01008e4 <set_trap>
c0100a50:	83 c4 10             	add    $0x10,%esp
c0100a53:	b8 a5 0b 10 c0       	mov    $0xc0100ba5,%eax
c0100a58:	6a 00                	push   $0x0
c0100a5a:	50                   	push   %eax
c0100a5b:	6a 01                	push   $0x1
c0100a5d:	68 40 21 13 c0       	push   $0xc0132140
c0100a62:	e8 7d fe ff ff       	call   c01008e4 <set_trap>
c0100a67:	83 c4 10             	add    $0x10,%esp
c0100a6a:	b8 ac 0b 10 c0       	mov    $0xc0100bac,%eax
c0100a6f:	6a 00                	push   $0x0
c0100a71:	50                   	push   %eax
c0100a72:	6a 01                	push   $0x1
c0100a74:	68 48 21 13 c0       	push   $0xc0132148
c0100a79:	e8 66 fe ff ff       	call   c01008e4 <set_trap>
c0100a7e:	83 c4 10             	add    $0x10,%esp
c0100a81:	b8 b3 0b 10 c0       	mov    $0xc0100bb3,%eax
c0100a86:	6a 00                	push   $0x0
c0100a88:	50                   	push   %eax
c0100a89:	6a 01                	push   $0x1
c0100a8b:	68 50 21 13 c0       	push   $0xc0132150
c0100a90:	e8 4f fe ff ff       	call   c01008e4 <set_trap>
c0100a95:	83 c4 10             	add    $0x10,%esp
c0100a98:	b8 ba 0b 10 c0       	mov    $0xc0100bba,%eax
c0100a9d:	6a 00                	push   $0x0
c0100a9f:	50                   	push   %eax
c0100aa0:	6a 01                	push   $0x1
c0100aa2:	68 58 21 13 c0       	push   $0xc0132158
c0100aa7:	e8 38 fe ff ff       	call   c01008e4 <set_trap>
c0100aac:	83 c4 10             	add    $0x10,%esp
c0100aaf:	b8 c1 0b 10 c0       	mov    $0xc0100bc1,%eax
c0100ab4:	6a 00                	push   $0x0
c0100ab6:	50                   	push   %eax
c0100ab7:	6a 01                	push   $0x1
c0100ab9:	68 60 21 13 c0       	push   $0xc0132160
c0100abe:	e8 21 fe ff ff       	call   c01008e4 <set_trap>
c0100ac3:	83 c4 10             	add    $0x10,%esp
c0100ac6:	b8 c8 0b 10 c0       	mov    $0xc0100bc8,%eax
c0100acb:	6a 00                	push   $0x0
c0100acd:	50                   	push   %eax
c0100ace:	6a 01                	push   $0x1
c0100ad0:	68 68 21 13 c0       	push   $0xc0132168
c0100ad5:	e8 0a fe ff ff       	call   c01008e4 <set_trap>
c0100ada:	83 c4 10             	add    $0x10,%esp
c0100add:	b8 cf 0b 10 c0       	mov    $0xc0100bcf,%eax
c0100ae2:	6a 00                	push   $0x0
c0100ae4:	50                   	push   %eax
c0100ae5:	6a 01                	push   $0x1
c0100ae7:	68 70 21 13 c0       	push   $0xc0132170
c0100aec:	e8 f3 fd ff ff       	call   c01008e4 <set_trap>
c0100af1:	83 c4 10             	add    $0x10,%esp
c0100af4:	b8 d6 0b 10 c0       	mov    $0xc0100bd6,%eax
c0100af9:	6a 00                	push   $0x0
c0100afb:	50                   	push   %eax
c0100afc:	6a 01                	push   $0x1
c0100afe:	68 00 22 13 c0       	push   $0xc0132200
c0100b03:	e8 5c fd ff ff       	call   c0100864 <set_intr>
c0100b08:	83 c4 10             	add    $0x10,%esp
c0100b0b:	b8 e0 0b 10 c0       	mov    $0xc0100be0,%eax
c0100b10:	6a 00                	push   $0x0
c0100b12:	50                   	push   %eax
c0100b13:	6a 01                	push   $0x1
c0100b15:	68 08 22 13 c0       	push   $0xc0132208
c0100b1a:	e8 45 fd ff ff       	call   c0100864 <set_intr>
c0100b1f:	83 c4 10             	add    $0x10,%esp
c0100b22:	b8 ea 0b 10 c0       	mov    $0xc0100bea,%eax
c0100b27:	6a 00                	push   $0x0
c0100b29:	50                   	push   %eax
c0100b2a:	6a 01                	push   $0x1
c0100b2c:	68 70 22 13 c0       	push   $0xc0132270
c0100b31:	e8 2e fd ff ff       	call   c0100864 <set_intr>
c0100b36:	83 c4 10             	add    $0x10,%esp
c0100b39:	b8 f4 0b 10 c0       	mov    $0xc0100bf4,%eax
c0100b3e:	6a 03                	push   $0x3
c0100b40:	50                   	push   %eax
c0100b41:	6a 01                	push   $0x1
c0100b43:	68 00 25 13 c0       	push   $0xc0132500
c0100b48:	e8 97 fd ff ff       	call   c01008e4 <set_trap>
c0100b4d:	83 c4 10             	add    $0x10,%esp
c0100b50:	68 00 08 00 00       	push   $0x800
c0100b55:	68 00 21 13 c0       	push   $0xc0132100
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
c0100c25:	75 18                	jne    c0100c3f <irq_handle+0x2b>
c0100c27:	e8 d4 f3 ff ff       	call   c0100000 <timer_event>
c0100c2c:	83 ec 0c             	sub    $0xc,%esp
c0100c2f:	ff 75 08             	pushl  0x8(%ebp)
c0100c32:	e8 b9 16 00 00       	call   c01022f0 <time_treat>
c0100c37:	83 c4 10             	add    $0x10,%esp
c0100c3a:	e9 20 02 00 00       	jmp    c0100e5f <irq_handle+0x24b>
c0100c3f:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c42:	8b 40 20             	mov    0x20(%eax),%eax
c0100c45:	3d e9 03 00 00       	cmp    $0x3e9,%eax
c0100c4a:	75 7b                	jne    c0100cc7 <irq_handle+0xb3>
c0100c4c:	c7 45 ec 60 00 00 00 	movl   $0x60,-0x14(%ebp)
c0100c53:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100c56:	89 c2                	mov    %eax,%edx
c0100c58:	ec                   	in     (%dx),%al
c0100c59:	88 45 eb             	mov    %al,-0x15(%ebp)
c0100c5c:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
c0100c60:	0f b6 c0             	movzbl %al,%eax
c0100c63:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100c66:	c7 45 e4 61 00 00 00 	movl   $0x61,-0x1c(%ebp)
c0100c6d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0100c70:	89 c2                	mov    %eax,%edx
c0100c72:	ec                   	in     (%dx),%al
c0100c73:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0100c76:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
c0100c7a:	0f b6 c0             	movzbl %al,%eax
c0100c7d:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100c80:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0100c83:	83 c8 80             	or     $0xffffff80,%eax
c0100c86:	0f b6 c0             	movzbl %al,%eax
c0100c89:	c7 45 dc 61 00 00 00 	movl   $0x61,-0x24(%ebp)
c0100c90:	88 45 db             	mov    %al,-0x25(%ebp)
c0100c93:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
c0100c97:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0100c9a:	ee                   	out    %al,(%dx)
c0100c9b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0100c9e:	0f b6 c0             	movzbl %al,%eax
c0100ca1:	c7 45 d4 61 00 00 00 	movl   $0x61,-0x2c(%ebp)
c0100ca8:	88 45 d3             	mov    %al,-0x2d(%ebp)
c0100cab:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
c0100caf:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0100cb2:	ee                   	out    %al,(%dx)
c0100cb3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100cb6:	83 ec 0c             	sub    $0xc,%esp
c0100cb9:	50                   	push   %eax
c0100cba:	e8 6c f4 ff ff       	call   c010012b <keyboard_event>
c0100cbf:	83 c4 10             	add    $0x10,%esp
c0100cc2:	e9 98 01 00 00       	jmp    c0100e5f <irq_handle+0x24b>
c0100cc7:	8b 45 08             	mov    0x8(%ebp),%eax
c0100cca:	8b 40 20             	mov    0x20(%eax),%eax
c0100ccd:	3d f6 03 00 00       	cmp    $0x3f6,%eax
c0100cd2:	0f 84 87 01 00 00    	je     c0100e5f <irq_handle+0x24b>
c0100cd8:	8b 45 08             	mov    0x8(%ebp),%eax
c0100cdb:	8b 40 20             	mov    0x20(%eax),%eax
c0100cde:	3d 80 00 00 00       	cmp    $0x80,%eax
c0100ce3:	0f 85 51 01 00 00    	jne    c0100e3a <irq_handle+0x226>
c0100ce9:	8b 45 08             	mov    0x8(%ebp),%eax
c0100cec:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100cef:	83 f8 01             	cmp    $0x1,%eax
c0100cf2:	75 26                	jne    c0100d1a <irq_handle+0x106>
c0100cf4:	8b 45 08             	mov    0x8(%ebp),%eax
c0100cf7:	8b 40 10             	mov    0x10(%eax),%eax
c0100cfa:	83 f8 01             	cmp    $0x1,%eax
c0100cfd:	0f 85 5c 01 00 00    	jne    c0100e5f <irq_handle+0x24b>
c0100d03:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d06:	8b 40 18             	mov    0x18(%eax),%eax
c0100d09:	83 ec 0c             	sub    $0xc,%esp
c0100d0c:	50                   	push   %eax
c0100d0d:	e8 77 04 00 00       	call   c0101189 <printk>
c0100d12:	83 c4 10             	add    $0x10,%esp
c0100d15:	e9 45 01 00 00       	jmp    c0100e5f <irq_handle+0x24b>
c0100d1a:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d1d:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100d20:	83 f8 02             	cmp    $0x2,%eax
c0100d23:	75 35                	jne    c0100d5a <irq_handle+0x146>
c0100d25:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d28:	8b 40 10             	mov    0x10(%eax),%eax
c0100d2b:	85 c0                	test   %eax,%eax
c0100d2d:	75 12                	jne    c0100d41 <irq_handle+0x12d>
c0100d2f:	e8 de f2 ff ff       	call   c0100012 <get_time>
c0100d34:	89 c2                	mov    %eax,%edx
c0100d36:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d39:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100d3c:	e9 1e 01 00 00       	jmp    c0100e5f <irq_handle+0x24b>
c0100d41:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d44:	8b 40 10             	mov    0x10(%eax),%eax
c0100d47:	83 f8 01             	cmp    $0x1,%eax
c0100d4a:	0f 85 0f 01 00 00    	jne    c0100e5f <irq_handle+0x24b>
c0100d50:	e8 c7 f2 ff ff       	call   c010001c <time_pop>
c0100d55:	e9 05 01 00 00       	jmp    c0100e5f <irq_handle+0x24b>
c0100d5a:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d5d:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100d60:	83 f8 03             	cmp    $0x3,%eax
c0100d63:	75 35                	jne    c0100d9a <irq_handle+0x186>
c0100d65:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d68:	8b 40 10             	mov    0x10(%eax),%eax
c0100d6b:	85 c0                	test   %eax,%eax
c0100d6d:	75 12                	jne    c0100d81 <irq_handle+0x16d>
c0100d6f:	e8 9e f3 ff ff       	call   c0100112 <last_key_code>
c0100d74:	89 c2                	mov    %eax,%edx
c0100d76:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d79:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100d7c:	e9 de 00 00 00       	jmp    c0100e5f <irq_handle+0x24b>
c0100d81:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d84:	8b 40 10             	mov    0x10(%eax),%eax
c0100d87:	83 f8 01             	cmp    $0x1,%eax
c0100d8a:	0f 85 cf 00 00 00    	jne    c0100e5f <irq_handle+0x24b>
c0100d90:	e8 87 f3 ff ff       	call   c010011c <reset_last_key>
c0100d95:	e9 c5 00 00 00       	jmp    c0100e5f <irq_handle+0x24b>
c0100d9a:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d9d:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100da0:	83 f8 04             	cmp    $0x4,%eax
c0100da3:	75 21                	jne    c0100dc6 <irq_handle+0x1b2>
c0100da5:	8b 45 08             	mov    0x8(%ebp),%eax
c0100da8:	8b 40 10             	mov    0x10(%eax),%eax
c0100dab:	83 ec 04             	sub    $0x4,%esp
c0100dae:	68 00 00 01 00       	push   $0x10000
c0100db3:	50                   	push   %eax
c0100db4:	68 00 00 0a c0       	push   $0xc00a0000
c0100db9:	e8 f0 03 00 00       	call   c01011ae <my_memcpy>
c0100dbe:	83 c4 10             	add    $0x10,%esp
c0100dc1:	e9 99 00 00 00       	jmp    c0100e5f <irq_handle+0x24b>
c0100dc6:	8b 45 08             	mov    0x8(%ebp),%eax
c0100dc9:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100dcc:	83 f8 05             	cmp    $0x5,%eax
c0100dcf:	75 0a                	jne    c0100ddb <irq_handle+0x1c7>
c0100dd1:	e8 69 17 00 00       	call   c010253f <process_exit>
c0100dd6:	e9 84 00 00 00       	jmp    c0100e5f <irq_handle+0x24b>
c0100ddb:	8b 45 08             	mov    0x8(%ebp),%eax
c0100dde:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100de1:	83 f8 06             	cmp    $0x6,%eax
c0100de4:	75 0f                	jne    c0100df5 <irq_handle+0x1e1>
c0100de6:	e8 fc 08 00 00       	call   c01016e7 <getpid>
c0100deb:	89 c2                	mov    %eax,%edx
c0100ded:	8b 45 08             	mov    0x8(%ebp),%eax
c0100df0:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100df3:	eb 6a                	jmp    c0100e5f <irq_handle+0x24b>
c0100df5:	8b 45 08             	mov    0x8(%ebp),%eax
c0100df8:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100dfb:	83 f8 07             	cmp    $0x7,%eax
c0100dfe:	75 17                	jne    c0100e17 <irq_handle+0x203>
c0100e00:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e03:	8b 40 10             	mov    0x10(%eax),%eax
c0100e06:	83 ec 08             	sub    $0x8,%esp
c0100e09:	ff 75 08             	pushl  0x8(%ebp)
c0100e0c:	50                   	push   %eax
c0100e0d:	e8 40 19 00 00       	call   c0102752 <my_sleep>
c0100e12:	83 c4 10             	add    $0x10,%esp
c0100e15:	eb 48                	jmp    c0100e5f <irq_handle+0x24b>
c0100e17:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e1a:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100e1d:	83 f8 08             	cmp    $0x8,%eax
c0100e20:	75 3d                	jne    c0100e5f <irq_handle+0x24b>
c0100e22:	83 ec 0c             	sub    $0xc,%esp
c0100e25:	ff 75 08             	pushl  0x8(%ebp)
c0100e28:	e8 ec 19 00 00       	call   c0102819 <my_fork>
c0100e2d:	83 c4 10             	add    $0x10,%esp
c0100e30:	89 c2                	mov    %eax,%edx
c0100e32:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e35:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100e38:	eb 25                	jmp    c0100e5f <irq_handle+0x24b>
c0100e3a:	83 ec 0c             	sub    $0xc,%esp
c0100e3d:	ff 75 08             	pushl  0x8(%ebp)
c0100e40:	e8 5c 06 00 00       	call   c01014a1 <print_tf>
c0100e45:	83 c4 10             	add    $0x10,%esp
c0100e48:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e4b:	8b 40 20             	mov    0x20(%eax),%eax
c0100e4e:	83 ec 08             	sub    $0x8,%esp
c0100e51:	50                   	push   %eax
c0100e52:	68 60 33 10 c0       	push   $0xc0103360
c0100e57:	e8 2d 03 00 00       	call   c0101189 <printk>
c0100e5c:	83 c4 10             	add    $0x10,%esp
c0100e5f:	c9                   	leave  
c0100e60:	c3                   	ret    

c0100e61 <change>:
c0100e61:	55                   	push   %ebp
c0100e62:	89 e5                	mov    %esp,%ebp
c0100e64:	53                   	push   %ebx
c0100e65:	83 c4 80             	add    $0xffffff80,%esp
c0100e68:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0100e6f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0100e76:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e79:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0100e7c:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0100e80:	75 14                	jne    c0100e96 <change+0x35>
c0100e82:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100e85:	c6 00 30             	movb   $0x30,(%eax)
c0100e88:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100e8b:	83 c0 01             	add    $0x1,%eax
c0100e8e:	c6 00 00             	movb   $0x0,(%eax)
c0100e91:	e9 a5 00 00 00       	jmp    c0100f3b <change+0xda>
c0100e96:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0100e9a:	79 1d                	jns    c0100eb9 <change+0x58>
c0100e9c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100e9f:	8d 50 01             	lea    0x1(%eax),%edx
c0100ea2:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0100ea5:	89 c2                	mov    %eax,%edx
c0100ea7:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100eaa:	01 d0                	add    %edx,%eax
c0100eac:	c6 00 2d             	movb   $0x2d,(%eax)
c0100eaf:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100eb2:	f7 d8                	neg    %eax
c0100eb4:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100eb7:	eb 06                	jmp    c0100ebf <change+0x5e>
c0100eb9:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100ebc:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100ebf:	eb 40                	jmp    c0100f01 <change+0xa0>
c0100ec1:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0100ec4:	8d 41 01             	lea    0x1(%ecx),%eax
c0100ec7:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0100eca:	8b 5d f0             	mov    -0x10(%ebp),%ebx
c0100ecd:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c0100ed2:	89 d8                	mov    %ebx,%eax
c0100ed4:	f7 e2                	mul    %edx
c0100ed6:	c1 ea 03             	shr    $0x3,%edx
c0100ed9:	89 d0                	mov    %edx,%eax
c0100edb:	c1 e0 02             	shl    $0x2,%eax
c0100ede:	01 d0                	add    %edx,%eax
c0100ee0:	01 c0                	add    %eax,%eax
c0100ee2:	29 c3                	sub    %eax,%ebx
c0100ee4:	89 da                	mov    %ebx,%edx
c0100ee6:	89 d0                	mov    %edx,%eax
c0100ee8:	83 c0 30             	add    $0x30,%eax
c0100eeb:	88 44 0d 88          	mov    %al,-0x78(%ebp,%ecx,1)
c0100eef:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0100ef2:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c0100ef7:	f7 e2                	mul    %edx
c0100ef9:	89 d0                	mov    %edx,%eax
c0100efb:	c1 e8 03             	shr    $0x3,%eax
c0100efe:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100f01:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0100f05:	75 ba                	jne    c0100ec1 <change+0x60>
c0100f07:	eb 21                	jmp    c0100f2a <change+0xc9>
c0100f09:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100f0c:	8d 50 01             	lea    0x1(%eax),%edx
c0100f0f:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0100f12:	89 c2                	mov    %eax,%edx
c0100f14:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100f17:	01 c2                	add    %eax,%edx
c0100f19:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
c0100f1d:	8d 4d 88             	lea    -0x78(%ebp),%ecx
c0100f20:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0100f23:	01 c8                	add    %ecx,%eax
c0100f25:	0f b6 00             	movzbl (%eax),%eax
c0100f28:	88 02                	mov    %al,(%edx)
c0100f2a:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
c0100f2e:	75 d9                	jne    c0100f09 <change+0xa8>
c0100f30:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100f33:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100f36:	01 d0                	add    %edx,%eax
c0100f38:	c6 00 00             	movb   $0x0,(%eax)
c0100f3b:	83 ec 80             	sub    $0xffffff80,%esp
c0100f3e:	5b                   	pop    %ebx
c0100f3f:	5d                   	pop    %ebp
c0100f40:	c3                   	ret    

c0100f41 <change_x>:
c0100f41:	55                   	push   %ebp
c0100f42:	89 e5                	mov    %esp,%ebp
c0100f44:	83 ec 70             	sub    $0x70,%esp
c0100f47:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0100f4e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0100f55:	8b 45 08             	mov    0x8(%ebp),%eax
c0100f58:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100f5b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0100f5f:	75 11                	jne    c0100f72 <change_x+0x31>
c0100f61:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100f64:	c6 00 30             	movb   $0x30,(%eax)
c0100f67:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100f6a:	83 c0 01             	add    $0x1,%eax
c0100f6d:	c6 00 00             	movb   $0x0,(%eax)
c0100f70:	eb 7e                	jmp    c0100ff0 <change_x+0xaf>
c0100f72:	eb 42                	jmp    c0100fb6 <change_x+0x75>
c0100f74:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100f77:	83 e0 0f             	and    $0xf,%eax
c0100f7a:	83 f8 09             	cmp    $0x9,%eax
c0100f7d:	77 18                	ja     c0100f97 <change_x+0x56>
c0100f7f:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100f82:	8d 50 01             	lea    0x1(%eax),%edx
c0100f85:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0100f88:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100f8b:	83 e2 0f             	and    $0xf,%edx
c0100f8e:	83 c2 30             	add    $0x30,%edx
c0100f91:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
c0100f95:	eb 16                	jmp    c0100fad <change_x+0x6c>
c0100f97:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100f9a:	8d 50 01             	lea    0x1(%eax),%edx
c0100f9d:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0100fa0:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100fa3:	83 e2 0f             	and    $0xf,%edx
c0100fa6:	83 c2 37             	add    $0x37,%edx
c0100fa9:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
c0100fad:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100fb0:	c1 e8 04             	shr    $0x4,%eax
c0100fb3:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100fb6:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0100fba:	75 b8                	jne    c0100f74 <change_x+0x33>
c0100fbc:	eb 21                	jmp    c0100fdf <change_x+0x9e>
c0100fbe:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0100fc1:	8d 50 01             	lea    0x1(%eax),%edx
c0100fc4:	89 55 f8             	mov    %edx,-0x8(%ebp)
c0100fc7:	89 c2                	mov    %eax,%edx
c0100fc9:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100fcc:	01 c2                	add    %eax,%edx
c0100fce:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
c0100fd2:	8d 4d 90             	lea    -0x70(%ebp),%ecx
c0100fd5:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100fd8:	01 c8                	add    %ecx,%eax
c0100fda:	0f b6 00             	movzbl (%eax),%eax
c0100fdd:	88 02                	mov    %al,(%edx)
c0100fdf:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
c0100fe3:	75 d9                	jne    c0100fbe <change_x+0x7d>
c0100fe5:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0100fe8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100feb:	01 d0                	add    %edx,%eax
c0100fed:	c6 00 00             	movb   $0x0,(%eax)
c0100ff0:	c9                   	leave  
c0100ff1:	c3                   	ret    

c0100ff2 <v_fprintf>:
c0100ff2:	55                   	push   %ebp
c0100ff3:	89 e5                	mov    %esp,%ebp
c0100ff5:	81 ec 88 00 00 00    	sub    $0x88,%esp
c0100ffb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100ffe:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0101001:	8b 45 10             	mov    0x10(%ebp),%eax
c0101004:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101007:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c010100e:	e9 61 01 00 00       	jmp    c0101174 <v_fprintf+0x182>
c0101013:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101016:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101019:	01 d0                	add    %edx,%eax
c010101b:	0f b6 00             	movzbl (%eax),%eax
c010101e:	3c 25                	cmp    $0x25,%al
c0101020:	74 27                	je     c0101049 <v_fprintf+0x57>
c0101022:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101025:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101028:	01 d0                	add    %edx,%eax
c010102a:	0f b6 00             	movzbl (%eax),%eax
c010102d:	88 45 eb             	mov    %al,-0x15(%ebp)
c0101030:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
c0101034:	83 ec 0c             	sub    $0xc,%esp
c0101037:	50                   	push   %eax
c0101038:	8b 45 08             	mov    0x8(%ebp),%eax
c010103b:	ff d0                	call   *%eax
c010103d:	83 c4 10             	add    $0x10,%esp
c0101040:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0101044:	e9 2b 01 00 00       	jmp    c0101174 <v_fprintf+0x182>
c0101049:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c010104d:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101050:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101053:	01 d0                	add    %edx,%eax
c0101055:	0f b6 00             	movzbl (%eax),%eax
c0101058:	3c 25                	cmp    $0x25,%al
c010105a:	75 16                	jne    c0101072 <v_fprintf+0x80>
c010105c:	83 ec 0c             	sub    $0xc,%esp
c010105f:	6a 25                	push   $0x25
c0101061:	8b 45 08             	mov    0x8(%ebp),%eax
c0101064:	ff d0                	call   *%eax
c0101066:	83 c4 10             	add    $0x10,%esp
c0101069:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c010106d:	e9 02 01 00 00       	jmp    c0101174 <v_fprintf+0x182>
c0101072:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101075:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101078:	01 d0                	add    %edx,%eax
c010107a:	0f b6 00             	movzbl (%eax),%eax
c010107d:	3c 63                	cmp    $0x63,%al
c010107f:	75 26                	jne    c01010a7 <v_fprintf+0xb5>
c0101081:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0101085:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101088:	0f b6 00             	movzbl (%eax),%eax
c010108b:	88 45 eb             	mov    %al,-0x15(%ebp)
c010108e:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
c0101092:	83 ec 0c             	sub    $0xc,%esp
c0101095:	50                   	push   %eax
c0101096:	8b 45 08             	mov    0x8(%ebp),%eax
c0101099:	ff d0                	call   *%eax
c010109b:	83 c4 10             	add    $0x10,%esp
c010109e:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c01010a2:	e9 cd 00 00 00       	jmp    c0101174 <v_fprintf+0x182>
c01010a7:	8b 55 f0             	mov    -0x10(%ebp),%edx
c01010aa:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01010ad:	01 d0                	add    %edx,%eax
c01010af:	0f b6 00             	movzbl (%eax),%eax
c01010b2:	3c 64                	cmp    $0x64,%al
c01010b4:	75 36                	jne    c01010ec <v_fprintf+0xfa>
c01010b6:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c01010ba:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01010bd:	8b 00                	mov    (%eax),%eax
c01010bf:	83 ec 08             	sub    $0x8,%esp
c01010c2:	8d 55 87             	lea    -0x79(%ebp),%edx
c01010c5:	52                   	push   %edx
c01010c6:	50                   	push   %eax
c01010c7:	e8 95 fd ff ff       	call   c0100e61 <change>
c01010cc:	83 c4 10             	add    $0x10,%esp
c01010cf:	83 ec 04             	sub    $0x4,%esp
c01010d2:	6a 00                	push   $0x0
c01010d4:	8d 45 87             	lea    -0x79(%ebp),%eax
c01010d7:	50                   	push   %eax
c01010d8:	ff 75 08             	pushl  0x8(%ebp)
c01010db:	e8 12 ff ff ff       	call   c0100ff2 <v_fprintf>
c01010e0:	83 c4 10             	add    $0x10,%esp
c01010e3:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c01010e7:	e9 88 00 00 00       	jmp    c0101174 <v_fprintf+0x182>
c01010ec:	8b 55 f0             	mov    -0x10(%ebp),%edx
c01010ef:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01010f2:	01 d0                	add    %edx,%eax
c01010f4:	0f b6 00             	movzbl (%eax),%eax
c01010f7:	3c 78                	cmp    $0x78,%al
c01010f9:	75 33                	jne    c010112e <v_fprintf+0x13c>
c01010fb:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c01010ff:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101102:	8b 00                	mov    (%eax),%eax
c0101104:	83 ec 08             	sub    $0x8,%esp
c0101107:	8d 55 87             	lea    -0x79(%ebp),%edx
c010110a:	52                   	push   %edx
c010110b:	50                   	push   %eax
c010110c:	e8 30 fe ff ff       	call   c0100f41 <change_x>
c0101111:	83 c4 10             	add    $0x10,%esp
c0101114:	83 ec 04             	sub    $0x4,%esp
c0101117:	6a 00                	push   $0x0
c0101119:	8d 45 87             	lea    -0x79(%ebp),%eax
c010111c:	50                   	push   %eax
c010111d:	ff 75 08             	pushl  0x8(%ebp)
c0101120:	e8 cd fe ff ff       	call   c0100ff2 <v_fprintf>
c0101125:	83 c4 10             	add    $0x10,%esp
c0101128:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c010112c:	eb 46                	jmp    c0101174 <v_fprintf+0x182>
c010112e:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101131:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101134:	01 d0                	add    %edx,%eax
c0101136:	0f b6 00             	movzbl (%eax),%eax
c0101139:	3c 73                	cmp    $0x73,%al
c010113b:	75 20                	jne    c010115d <v_fprintf+0x16b>
c010113d:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0101141:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101144:	8b 00                	mov    (%eax),%eax
c0101146:	83 ec 04             	sub    $0x4,%esp
c0101149:	6a 00                	push   $0x0
c010114b:	50                   	push   %eax
c010114c:	ff 75 08             	pushl  0x8(%ebp)
c010114f:	e8 9e fe ff ff       	call   c0100ff2 <v_fprintf>
c0101154:	83 c4 10             	add    $0x10,%esp
c0101157:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c010115b:	eb 17                	jmp    c0101174 <v_fprintf+0x182>
c010115d:	83 ec 04             	sub    $0x4,%esp
c0101160:	6a 00                	push   $0x0
c0101162:	68 88 33 10 c0       	push   $0xc0103388
c0101167:	ff 75 08             	pushl  0x8(%ebp)
c010116a:	e8 83 fe ff ff       	call   c0100ff2 <v_fprintf>
c010116f:	83 c4 10             	add    $0x10,%esp
c0101172:	eb 13                	jmp    c0101187 <v_fprintf+0x195>
c0101174:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101177:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010117a:	01 d0                	add    %edx,%eax
c010117c:	0f b6 00             	movzbl (%eax),%eax
c010117f:	84 c0                	test   %al,%al
c0101181:	0f 85 8c fe ff ff    	jne    c0101013 <v_fprintf+0x21>
c0101187:	c9                   	leave  
c0101188:	c3                   	ret    

c0101189 <printk>:
c0101189:	55                   	push   %ebp
c010118a:	89 e5                	mov    %esp,%ebp
c010118c:	83 ec 18             	sub    $0x18,%esp
c010118f:	8d 45 0c             	lea    0xc(%ebp),%eax
c0101192:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101195:	8b 45 08             	mov    0x8(%ebp),%eax
c0101198:	83 ec 04             	sub    $0x4,%esp
c010119b:	ff 75 f4             	pushl  -0xc(%ebp)
c010119e:	50                   	push   %eax
c010119f:	68 77 02 10 c0       	push   $0xc0100277
c01011a4:	e8 49 fe ff ff       	call   c0100ff2 <v_fprintf>
c01011a9:	83 c4 10             	add    $0x10,%esp
c01011ac:	c9                   	leave  
c01011ad:	c3                   	ret    

c01011ae <my_memcpy>:
c01011ae:	55                   	push   %ebp
c01011af:	89 e5                	mov    %esp,%ebp
c01011b1:	57                   	push   %edi
c01011b2:	56                   	push   %esi
c01011b3:	53                   	push   %ebx
c01011b4:	8b 45 10             	mov    0x10(%ebp),%eax
c01011b7:	8b 55 0c             	mov    0xc(%ebp),%edx
c01011ba:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01011bd:	89 c1                	mov    %eax,%ecx
c01011bf:	89 d6                	mov    %edx,%esi
c01011c1:	89 df                	mov    %ebx,%edi
c01011c3:	fc                   	cld    
c01011c4:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c01011c6:	5b                   	pop    %ebx
c01011c7:	5e                   	pop    %esi
c01011c8:	5f                   	pop    %edi
c01011c9:	5d                   	pop    %ebp
c01011ca:	c3                   	ret    

c01011cb <my_memset>:
c01011cb:	55                   	push   %ebp
c01011cc:	89 e5                	mov    %esp,%ebp
c01011ce:	57                   	push   %edi
c01011cf:	53                   	push   %ebx
c01011d0:	8b 55 10             	mov    0x10(%ebp),%edx
c01011d3:	8b 45 0c             	mov    0xc(%ebp),%eax
c01011d6:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01011d9:	89 d1                	mov    %edx,%ecx
c01011db:	89 df                	mov    %ebx,%edi
c01011dd:	fc                   	cld    
c01011de:	f3 aa                	rep stos %al,%es:(%edi)
c01011e0:	5b                   	pop    %ebx
c01011e1:	5f                   	pop    %edi
c01011e2:	5d                   	pop    %ebp
c01011e3:	c3                   	ret    

c01011e4 <_paddr>:
c01011e4:	55                   	push   %ebp
c01011e5:	89 e5                	mov    %esp,%ebp
c01011e7:	83 ec 08             	sub    $0x8,%esp
c01011ea:	8b 45 10             	mov    0x10(%ebp),%eax
c01011ed:	3d ff ff ff bf       	cmp    $0xbfffffff,%eax
c01011f2:	77 16                	ja     c010120a <_paddr+0x26>
c01011f4:	ff 75 10             	pushl  0x10(%ebp)
c01011f7:	68 a8 33 10 c0       	push   $0xc01033a8
c01011fc:	ff 75 0c             	pushl  0xc(%ebp)
c01011ff:	ff 75 08             	pushl  0x8(%ebp)
c0101202:	e8 82 ff ff ff       	call   c0101189 <printk>
c0101207:	83 c4 10             	add    $0x10,%esp
c010120a:	8b 45 10             	mov    0x10(%ebp),%eax
c010120d:	05 00 00 00 40       	add    $0x40000000,%eax
c0101212:	c9                   	leave  
c0101213:	c3                   	ret    

c0101214 <waitdisk>:
c0101214:	55                   	push   %ebp
c0101215:	89 e5                	mov    %esp,%ebp
c0101217:	83 ec 10             	sub    $0x10,%esp
c010121a:	90                   	nop
c010121b:	c7 45 fc f7 01 00 00 	movl   $0x1f7,-0x4(%ebp)
c0101222:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0101225:	89 c2                	mov    %eax,%edx
c0101227:	ec                   	in     (%dx),%al
c0101228:	88 45 fb             	mov    %al,-0x5(%ebp)
c010122b:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
c010122f:	0f b6 c0             	movzbl %al,%eax
c0101232:	25 c0 00 00 00       	and    $0xc0,%eax
c0101237:	83 f8 40             	cmp    $0x40,%eax
c010123a:	75 df                	jne    c010121b <waitdisk+0x7>
c010123c:	c9                   	leave  
c010123d:	c3                   	ret    

c010123e <readsect>:
c010123e:	55                   	push   %ebp
c010123f:	89 e5                	mov    %esp,%ebp
c0101241:	57                   	push   %edi
c0101242:	53                   	push   %ebx
c0101243:	83 ec 40             	sub    $0x40,%esp
c0101246:	e8 c9 ff ff ff       	call   c0101214 <waitdisk>
c010124b:	c7 45 f4 f2 01 00 00 	movl   $0x1f2,-0xc(%ebp)
c0101252:	c6 45 f3 01          	movb   $0x1,-0xd(%ebp)
c0101256:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
c010125a:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010125d:	ee                   	out    %al,(%dx)
c010125e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101261:	0f b6 c0             	movzbl %al,%eax
c0101264:	c7 45 ec f3 01 00 00 	movl   $0x1f3,-0x14(%ebp)
c010126b:	88 45 eb             	mov    %al,-0x15(%ebp)
c010126e:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
c0101272:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0101275:	ee                   	out    %al,(%dx)
c0101276:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101279:	c1 e8 08             	shr    $0x8,%eax
c010127c:	0f b6 c0             	movzbl %al,%eax
c010127f:	c7 45 e4 f4 01 00 00 	movl   $0x1f4,-0x1c(%ebp)
c0101286:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0101289:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
c010128d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0101290:	ee                   	out    %al,(%dx)
c0101291:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101294:	c1 e8 10             	shr    $0x10,%eax
c0101297:	0f b6 c0             	movzbl %al,%eax
c010129a:	c7 45 dc f5 01 00 00 	movl   $0x1f5,-0x24(%ebp)
c01012a1:	88 45 db             	mov    %al,-0x25(%ebp)
c01012a4:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
c01012a8:	8b 55 dc             	mov    -0x24(%ebp),%edx
c01012ab:	ee                   	out    %al,(%dx)
c01012ac:	8b 45 0c             	mov    0xc(%ebp),%eax
c01012af:	c1 e8 18             	shr    $0x18,%eax
c01012b2:	83 c8 e0             	or     $0xffffffe0,%eax
c01012b5:	0f b6 c0             	movzbl %al,%eax
c01012b8:	c7 45 d4 f6 01 00 00 	movl   $0x1f6,-0x2c(%ebp)
c01012bf:	88 45 d3             	mov    %al,-0x2d(%ebp)
c01012c2:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
c01012c6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c01012c9:	ee                   	out    %al,(%dx)
c01012ca:	c7 45 cc f7 01 00 00 	movl   $0x1f7,-0x34(%ebp)
c01012d1:	c6 45 cb 20          	movb   $0x20,-0x35(%ebp)
c01012d5:	0f b6 45 cb          	movzbl -0x35(%ebp),%eax
c01012d9:	8b 55 cc             	mov    -0x34(%ebp),%edx
c01012dc:	ee                   	out    %al,(%dx)
c01012dd:	e8 32 ff ff ff       	call   c0101214 <waitdisk>
c01012e2:	c7 45 c4 f0 01 00 00 	movl   $0x1f0,-0x3c(%ebp)
c01012e9:	8b 45 08             	mov    0x8(%ebp),%eax
c01012ec:	89 45 c0             	mov    %eax,-0x40(%ebp)
c01012ef:	c7 45 bc 80 00 00 00 	movl   $0x80,-0x44(%ebp)
c01012f6:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c01012f9:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c01012fc:	8b 45 bc             	mov    -0x44(%ebp),%eax
c01012ff:	89 cb                	mov    %ecx,%ebx
c0101301:	89 df                	mov    %ebx,%edi
c0101303:	89 c1                	mov    %eax,%ecx
c0101305:	fc                   	cld    
c0101306:	f2 6d                	repnz insl (%dx),%es:(%edi)
c0101308:	89 c8                	mov    %ecx,%eax
c010130a:	89 fb                	mov    %edi,%ebx
c010130c:	89 5d c0             	mov    %ebx,-0x40(%ebp)
c010130f:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0101312:	83 c4 40             	add    $0x40,%esp
c0101315:	5b                   	pop    %ebx
c0101316:	5f                   	pop    %edi
c0101317:	5d                   	pop    %ebp
c0101318:	c3                   	ret    

c0101319 <read_disk>:
c0101319:	55                   	push   %ebp
c010131a:	89 e5                	mov    %esp,%ebp
c010131c:	83 ec 10             	sub    $0x10,%esp
c010131f:	8b 55 0c             	mov    0xc(%ebp),%edx
c0101322:	8b 45 08             	mov    0x8(%ebp),%eax
c0101325:	01 d0                	add    %edx,%eax
c0101327:	89 45 f8             	mov    %eax,-0x8(%ebp)
c010132a:	8b 45 10             	mov    0x10(%ebp),%eax
c010132d:	99                   	cltd   
c010132e:	c1 ea 17             	shr    $0x17,%edx
c0101331:	01 d0                	add    %edx,%eax
c0101333:	25 ff 01 00 00       	and    $0x1ff,%eax
c0101338:	29 d0                	sub    %edx,%eax
c010133a:	f7 d8                	neg    %eax
c010133c:	01 45 08             	add    %eax,0x8(%ebp)
c010133f:	8b 45 10             	mov    0x10(%ebp),%eax
c0101342:	8d 90 ff 01 00 00    	lea    0x1ff(%eax),%edx
c0101348:	85 c0                	test   %eax,%eax
c010134a:	0f 48 c2             	cmovs  %edx,%eax
c010134d:	c1 f8 09             	sar    $0x9,%eax
c0101350:	83 c0 01             	add    $0x1,%eax
c0101353:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0101356:	eb 1a                	jmp    c0101372 <read_disk+0x59>
c0101358:	8b 45 fc             	mov    -0x4(%ebp),%eax
c010135b:	50                   	push   %eax
c010135c:	ff 75 08             	pushl  0x8(%ebp)
c010135f:	e8 da fe ff ff       	call   c010123e <readsect>
c0101364:	83 c4 08             	add    $0x8,%esp
c0101367:	81 45 08 00 02 00 00 	addl   $0x200,0x8(%ebp)
c010136e:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0101372:	8b 45 08             	mov    0x8(%ebp),%eax
c0101375:	3b 45 f8             	cmp    -0x8(%ebp),%eax
c0101378:	72 de                	jb     c0101358 <read_disk+0x3f>
c010137a:	c9                   	leave  
c010137b:	c3                   	ret    

c010137c <load>:
c010137c:	55                   	push   %ebp
c010137d:	89 e5                	mov    %esp,%ebp
c010137f:	83 ec 28             	sub    $0x28,%esp
c0101382:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0101389:	83 ec 04             	sub    $0x4,%esp
c010138c:	68 00 10 00 00       	push   $0x1000
c0101391:	6a 00                	push   $0x0
c0101393:	ff 75 0c             	pushl  0xc(%ebp)
c0101396:	e8 31 17 00 00       	call   c0102acc <mm_alloc>
c010139b:	83 c4 10             	add    $0x10,%esp
c010139e:	8b 45 08             	mov    0x8(%ebp),%eax
c01013a1:	83 ec 04             	sub    $0x4,%esp
c01013a4:	50                   	push   %eax
c01013a5:	68 00 10 00 00       	push   $0x1000
c01013aa:	ff 75 ec             	pushl  -0x14(%ebp)
c01013ad:	e8 67 ff ff ff       	call   c0101319 <read_disk>
c01013b2:	83 c4 10             	add    $0x10,%esp
c01013b5:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01013b8:	8b 50 1c             	mov    0x1c(%eax),%edx
c01013bb:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01013be:	01 d0                	add    %edx,%eax
c01013c0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01013c3:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01013c6:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
c01013ca:	0f b7 c0             	movzwl %ax,%eax
c01013cd:	c1 e0 05             	shl    $0x5,%eax
c01013d0:	89 c2                	mov    %eax,%edx
c01013d2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01013d5:	01 d0                	add    %edx,%eax
c01013d7:	89 45 e8             	mov    %eax,-0x18(%ebp)
c01013da:	83 ec 04             	sub    $0x4,%esp
c01013dd:	ff 75 0c             	pushl  0xc(%ebp)
c01013e0:	6a 52                	push   $0x52
c01013e2:	68 cb 33 10 c0       	push   $0xc01033cb
c01013e7:	e8 f8 fd ff ff       	call   c01011e4 <_paddr>
c01013ec:	83 c4 10             	add    $0x10,%esp
c01013ef:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01013f2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01013f5:	0f 22 d8             	mov    %eax,%cr3
c01013f8:	eb 7b                	jmp    c0101475 <load+0xf9>
c01013fa:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01013fd:	8b 40 14             	mov    0x14(%eax),%eax
c0101400:	89 c2                	mov    %eax,%edx
c0101402:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101405:	8b 40 0c             	mov    0xc(%eax),%eax
c0101408:	83 ec 04             	sub    $0x4,%esp
c010140b:	52                   	push   %edx
c010140c:	50                   	push   %eax
c010140d:	ff 75 0c             	pushl  0xc(%ebp)
c0101410:	e8 b7 16 00 00       	call   c0102acc <mm_alloc>
c0101415:	83 c4 10             	add    $0x10,%esp
c0101418:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010141b:	8b 50 04             	mov    0x4(%eax),%edx
c010141e:	8b 45 08             	mov    0x8(%ebp),%eax
c0101421:	01 d0                	add    %edx,%eax
c0101423:	89 c1                	mov    %eax,%ecx
c0101425:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101428:	8b 40 10             	mov    0x10(%eax),%eax
c010142b:	89 c2                	mov    %eax,%edx
c010142d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101430:	8b 40 0c             	mov    0xc(%eax),%eax
c0101433:	83 ec 04             	sub    $0x4,%esp
c0101436:	51                   	push   %ecx
c0101437:	52                   	push   %edx
c0101438:	50                   	push   %eax
c0101439:	e8 db fe ff ff       	call   c0101319 <read_disk>
c010143e:	83 c4 10             	add    $0x10,%esp
c0101441:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101444:	8b 50 0c             	mov    0xc(%eax),%edx
c0101447:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010144a:	8b 40 10             	mov    0x10(%eax),%eax
c010144d:	01 d0                	add    %edx,%eax
c010144f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101452:	eb 0a                	jmp    c010145e <load+0xe2>
c0101454:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101457:	c6 00 00             	movb   $0x0,(%eax)
c010145a:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c010145e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101461:	8b 50 0c             	mov    0xc(%eax),%edx
c0101464:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101467:	8b 40 14             	mov    0x14(%eax),%eax
c010146a:	01 d0                	add    %edx,%eax
c010146c:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c010146f:	77 e3                	ja     c0101454 <load+0xd8>
c0101471:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c0101475:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101478:	3b 45 e8             	cmp    -0x18(%ebp),%eax
c010147b:	0f 82 79 ff ff ff    	jb     c01013fa <load+0x7e>
c0101481:	83 ec 04             	sub    $0x4,%esp
c0101484:	68 00 00 01 00       	push   $0x10000
c0101489:	68 00 00 60 00       	push   $0x600000
c010148e:	ff 75 0c             	pushl  0xc(%ebp)
c0101491:	e8 36 16 00 00       	call   c0102acc <mm_alloc>
c0101496:	83 c4 10             	add    $0x10,%esp
c0101499:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010149c:	8b 40 18             	mov    0x18(%eax),%eax
c010149f:	c9                   	leave  
c01014a0:	c3                   	ret    

c01014a1 <print_tf>:
c01014a1:	55                   	push   %ebp
c01014a2:	89 e5                	mov    %esp,%ebp
c01014a4:	83 ec 08             	sub    $0x8,%esp
c01014a7:	8b 45 08             	mov    0x8(%ebp),%eax
c01014aa:	8b 40 1c             	mov    0x1c(%eax),%eax
c01014ad:	83 ec 08             	sub    $0x8,%esp
c01014b0:	50                   	push   %eax
c01014b1:	68 d4 33 10 c0       	push   $0xc01033d4
c01014b6:	e8 ce fc ff ff       	call   c0101189 <printk>
c01014bb:	83 c4 10             	add    $0x10,%esp
c01014be:	8b 45 08             	mov    0x8(%ebp),%eax
c01014c1:	8b 40 10             	mov    0x10(%eax),%eax
c01014c4:	83 ec 08             	sub    $0x8,%esp
c01014c7:	50                   	push   %eax
c01014c8:	68 db 33 10 c0       	push   $0xc01033db
c01014cd:	e8 b7 fc ff ff       	call   c0101189 <printk>
c01014d2:	83 c4 10             	add    $0x10,%esp
c01014d5:	8b 45 08             	mov    0x8(%ebp),%eax
c01014d8:	8b 40 18             	mov    0x18(%eax),%eax
c01014db:	83 ec 08             	sub    $0x8,%esp
c01014de:	50                   	push   %eax
c01014df:	68 e2 33 10 c0       	push   $0xc01033e2
c01014e4:	e8 a0 fc ff ff       	call   c0101189 <printk>
c01014e9:	83 c4 10             	add    $0x10,%esp
c01014ec:	8b 45 08             	mov    0x8(%ebp),%eax
c01014ef:	8b 40 14             	mov    0x14(%eax),%eax
c01014f2:	83 ec 08             	sub    $0x8,%esp
c01014f5:	50                   	push   %eax
c01014f6:	68 e9 33 10 c0       	push   $0xc01033e9
c01014fb:	e8 89 fc ff ff       	call   c0101189 <printk>
c0101500:	83 c4 10             	add    $0x10,%esp
c0101503:	8b 45 08             	mov    0x8(%ebp),%eax
c0101506:	8b 00                	mov    (%eax),%eax
c0101508:	83 ec 08             	sub    $0x8,%esp
c010150b:	50                   	push   %eax
c010150c:	68 f0 33 10 c0       	push   $0xc01033f0
c0101511:	e8 73 fc ff ff       	call   c0101189 <printk>
c0101516:	83 c4 10             	add    $0x10,%esp
c0101519:	8b 45 08             	mov    0x8(%ebp),%eax
c010151c:	8b 40 34             	mov    0x34(%eax),%eax
c010151f:	83 ec 08             	sub    $0x8,%esp
c0101522:	50                   	push   %eax
c0101523:	68 f7 33 10 c0       	push   $0xc01033f7
c0101528:	e8 5c fc ff ff       	call   c0101189 <printk>
c010152d:	83 c4 10             	add    $0x10,%esp
c0101530:	8b 45 08             	mov    0x8(%ebp),%eax
c0101533:	8b 40 08             	mov    0x8(%eax),%eax
c0101536:	83 ec 08             	sub    $0x8,%esp
c0101539:	50                   	push   %eax
c010153a:	68 fe 33 10 c0       	push   $0xc01033fe
c010153f:	e8 45 fc ff ff       	call   c0101189 <printk>
c0101544:	83 c4 10             	add    $0x10,%esp
c0101547:	8b 45 08             	mov    0x8(%ebp),%eax
c010154a:	8b 40 28             	mov    0x28(%eax),%eax
c010154d:	83 ec 08             	sub    $0x8,%esp
c0101550:	50                   	push   %eax
c0101551:	68 05 34 10 c0       	push   $0xc0103405
c0101556:	e8 2e fc ff ff       	call   c0101189 <printk>
c010155b:	83 c4 10             	add    $0x10,%esp
c010155e:	8b 45 08             	mov    0x8(%ebp),%eax
c0101561:	8b 40 2c             	mov    0x2c(%eax),%eax
c0101564:	83 ec 08             	sub    $0x8,%esp
c0101567:	50                   	push   %eax
c0101568:	68 0c 34 10 c0       	push   $0xc010340c
c010156d:	e8 17 fc ff ff       	call   c0101189 <printk>
c0101572:	83 c4 10             	add    $0x10,%esp
c0101575:	c9                   	leave  
c0101576:	c3                   	ret    

c0101577 <my_strcpy>:
c0101577:	55                   	push   %ebp
c0101578:	89 e5                	mov    %esp,%ebp
c010157a:	83 ec 10             	sub    $0x10,%esp
c010157d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0101584:	eb 2c                	jmp    c01015b2 <my_strcpy+0x3b>
c0101586:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0101589:	8b 45 08             	mov    0x8(%ebp),%eax
c010158c:	01 c2                	add    %eax,%edx
c010158e:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0101591:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101594:	01 c8                	add    %ecx,%eax
c0101596:	0f b6 00             	movzbl (%eax),%eax
c0101599:	88 02                	mov    %al,(%edx)
c010159b:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c010159f:	83 7d fc 1d          	cmpl   $0x1d,-0x4(%ebp)
c01015a3:	75 0d                	jne    c01015b2 <my_strcpy+0x3b>
c01015a5:	8b 55 fc             	mov    -0x4(%ebp),%edx
c01015a8:	8b 45 08             	mov    0x8(%ebp),%eax
c01015ab:	01 d0                	add    %edx,%eax
c01015ad:	c6 00 00             	movb   $0x0,(%eax)
c01015b0:	eb 1a                	jmp    c01015cc <my_strcpy+0x55>
c01015b2:	8b 55 fc             	mov    -0x4(%ebp),%edx
c01015b5:	8b 45 0c             	mov    0xc(%ebp),%eax
c01015b8:	01 d0                	add    %edx,%eax
c01015ba:	0f b6 00             	movzbl (%eax),%eax
c01015bd:	84 c0                	test   %al,%al
c01015bf:	75 c5                	jne    c0101586 <my_strcpy+0xf>
c01015c1:	8b 55 fc             	mov    -0x4(%ebp),%edx
c01015c4:	8b 45 08             	mov    0x8(%ebp),%eax
c01015c7:	01 d0                	add    %edx,%eax
c01015c9:	c6 00 00             	movb   $0x0,(%eax)
c01015cc:	c9                   	leave  
c01015cd:	c3                   	ret    

c01015ce <list>:
c01015ce:	55                   	push   %ebp
c01015cf:	89 e5                	mov    %esp,%ebp
c01015d1:	83 ec 18             	sub    $0x18,%esp
c01015d4:	c7 45 f4 40 3f 13 c0 	movl   $0xc0133f40,-0xc(%ebp)
c01015db:	eb 27                	jmp    c0101604 <list+0x36>
c01015dd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01015e0:	8d 50 0c             	lea    0xc(%eax),%edx
c01015e3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01015e6:	8b 40 08             	mov    0x8(%eax),%eax
c01015e9:	83 ec 04             	sub    $0x4,%esp
c01015ec:	52                   	push   %edx
c01015ed:	50                   	push   %eax
c01015ee:	68 14 34 10 c0       	push   $0xc0103414
c01015f3:	e8 91 fb ff ff       	call   c0101189 <printk>
c01015f8:	83 c4 10             	add    $0x10,%esp
c01015fb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01015fe:	8b 40 3c             	mov    0x3c(%eax),%eax
c0101601:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101604:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0101608:	75 d3                	jne    c01015dd <list+0xf>
c010160a:	a1 c0 f0 10 c0       	mov    0xc010f0c0,%eax
c010160f:	c1 e0 02             	shl    $0x2,%eax
c0101612:	89 c2                	mov    %eax,%edx
c0101614:	c1 e2 04             	shl    $0x4,%edx
c0101617:	01 d0                	add    %edx,%eax
c0101619:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010161e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101621:	eb 32                	jmp    c0101655 <list+0x87>
c0101623:	a1 c0 f0 10 c0       	mov    0xc010f0c0,%eax
c0101628:	85 c0                	test   %eax,%eax
c010162a:	75 02                	jne    c010162e <list+0x60>
c010162c:	eb 2d                	jmp    c010165b <list+0x8d>
c010162e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101631:	8d 50 0c             	lea    0xc(%eax),%edx
c0101634:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101637:	8b 40 08             	mov    0x8(%eax),%eax
c010163a:	83 ec 04             	sub    $0x4,%esp
c010163d:	52                   	push   %edx
c010163e:	50                   	push   %eax
c010163f:	68 38 34 10 c0       	push   $0xc0103438
c0101644:	e8 40 fb ff ff       	call   c0101189 <printk>
c0101649:	83 c4 10             	add    $0x10,%esp
c010164c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010164f:	8b 40 3c             	mov    0x3c(%eax),%eax
c0101652:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101655:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0101659:	75 c8                	jne    c0101623 <list+0x55>
c010165b:	a1 c8 f0 10 c0       	mov    0xc010f0c8,%eax
c0101660:	c1 e0 02             	shl    $0x2,%eax
c0101663:	89 c2                	mov    %eax,%edx
c0101665:	c1 e2 04             	shl    $0x4,%edx
c0101668:	01 d0                	add    %edx,%eax
c010166a:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010166f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101672:	eb 32                	jmp    c01016a6 <list+0xd8>
c0101674:	a1 c8 f0 10 c0       	mov    0xc010f0c8,%eax
c0101679:	85 c0                	test   %eax,%eax
c010167b:	75 02                	jne    c010167f <list+0xb1>
c010167d:	eb 2d                	jmp    c01016ac <list+0xde>
c010167f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101682:	8d 50 0c             	lea    0xc(%eax),%edx
c0101685:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101688:	8b 40 08             	mov    0x8(%eax),%eax
c010168b:	83 ec 04             	sub    $0x4,%esp
c010168e:	52                   	push   %edx
c010168f:	50                   	push   %eax
c0101690:	68 5c 34 10 c0       	push   $0xc010345c
c0101695:	e8 ef fa ff ff       	call   c0101189 <printk>
c010169a:	83 c4 10             	add    $0x10,%esp
c010169d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01016a0:	8b 40 3c             	mov    0x3c(%eax),%eax
c01016a3:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01016a6:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c01016aa:	75 c8                	jne    c0101674 <list+0xa6>
c01016ac:	83 ec 0c             	sub    $0xc,%esp
c01016af:	68 7f 34 10 c0       	push   $0xc010347f
c01016b4:	e8 d0 fa ff ff       	call   c0101189 <printk>
c01016b9:	83 c4 10             	add    $0x10,%esp
c01016bc:	c9                   	leave  
c01016bd:	c3                   	ret    

c01016be <debug>:
c01016be:	55                   	push   %ebp
c01016bf:	89 e5                	mov    %esp,%ebp
c01016c1:	83 ec 08             	sub    $0x8,%esp
c01016c4:	8b 0d 10 3f 13 c0    	mov    0xc0133f10,%ecx
c01016ca:	8b 15 04 10 17 c0    	mov    0xc0171004,%edx
c01016d0:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c01016d5:	51                   	push   %ecx
c01016d6:	52                   	push   %edx
c01016d7:	50                   	push   %eax
c01016d8:	68 88 34 10 c0       	push   $0xc0103488
c01016dd:	e8 a7 fa ff ff       	call   c0101189 <printk>
c01016e2:	83 c4 10             	add    $0x10,%esp
c01016e5:	c9                   	leave  
c01016e6:	c3                   	ret    

c01016e7 <getpid>:
c01016e7:	55                   	push   %ebp
c01016e8:	89 e5                	mov    %esp,%ebp
c01016ea:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01016ef:	c1 e0 02             	shl    $0x2,%eax
c01016f2:	89 c2                	mov    %eax,%edx
c01016f4:	c1 e2 04             	shl    $0x4,%edx
c01016f7:	01 d0                	add    %edx,%eax
c01016f9:	83 c0 30             	add    $0x30,%eax
c01016fc:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101701:	8b 40 0c             	mov    0xc(%eax),%eax
c0101704:	8b 40 08             	mov    0x8(%eax),%eax
c0101707:	5d                   	pop    %ebp
c0101708:	c3                   	ret    

c0101709 <get_free_pid>:
c0101709:	55                   	push   %ebp
c010170a:	89 e5                	mov    %esp,%ebp
c010170c:	83 ec 18             	sub    $0x18,%esp
c010170f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0101716:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c010171d:	eb 25                	jmp    c0101744 <get_free_pid+0x3b>
c010171f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101722:	8b 04 85 00 30 13 c0 	mov    -0x3fecd000(,%eax,4),%eax
c0101729:	85 c0                	test   %eax,%eax
c010172b:	75 13                	jne    c0101740 <get_free_pid+0x37>
c010172d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101730:	c7 04 85 00 30 13 c0 	movl   $0x1,-0x3fecd000(,%eax,4)
c0101737:	01 00 00 00 
c010173b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010173e:	eb 1c                	jmp    c010175c <get_free_pid+0x53>
c0101740:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0101744:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c0101748:	7e d5                	jle    c010171f <get_free_pid+0x16>
c010174a:	83 ec 0c             	sub    $0xc,%esp
c010174d:	68 ac 34 10 c0       	push   $0xc01034ac
c0101752:	e8 32 fa ff ff       	call   c0101189 <printk>
c0101757:	83 c4 10             	add    $0x10,%esp
c010175a:	eb fe                	jmp    c010175a <get_free_pid+0x51>
c010175c:	c9                   	leave  
c010175d:	c3                   	ret    

c010175e <free_a_pid>:
c010175e:	55                   	push   %ebp
c010175f:	89 e5                	mov    %esp,%ebp
c0101761:	83 ec 08             	sub    $0x8,%esp
c0101764:	83 ec 08             	sub    $0x8,%esp
c0101767:	ff 75 08             	pushl  0x8(%ebp)
c010176a:	68 ba 34 10 c0       	push   $0xc01034ba
c010176f:	e8 15 fa ff ff       	call   c0101189 <printk>
c0101774:	83 c4 10             	add    $0x10,%esp
c0101777:	8b 45 08             	mov    0x8(%ebp),%eax
c010177a:	c7 04 85 00 30 13 c0 	movl   $0x0,-0x3fecd000(,%eax,4)
c0101781:	00 00 00 00 
c0101785:	c9                   	leave  
c0101786:	c3                   	ret    

c0101787 <init_PCB>:
c0101787:	55                   	push   %ebp
c0101788:	89 e5                	mov    %esp,%ebp
c010178a:	83 ec 18             	sub    $0x18,%esp
c010178d:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c0101792:	83 ec 04             	sub    $0x4,%esp
c0101795:	68 00 10 00 00       	push   $0x1000
c010179a:	50                   	push   %eax
c010179b:	68 00 50 13 c0       	push   $0xc0135000
c01017a0:	e8 09 fa ff ff       	call   c01011ae <my_memcpy>
c01017a5:	83 c4 10             	add    $0x10,%esp
c01017a8:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
c01017af:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01017b6:	eb 1d                	jmp    c01017d5 <init_PCB+0x4e>
c01017b8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01017bb:	0f b7 04 c5 44 f0 1a 	movzwl -0x3fe50fbc(,%eax,8),%eax
c01017c2:	c0 
c01017c3:	8d 50 01             	lea    0x1(%eax),%edx
c01017c6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01017c9:	66 89 14 c5 44 f0 1a 	mov    %dx,-0x3fe50fbc(,%eax,8)
c01017d0:	c0 
c01017d1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01017d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01017d8:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c01017db:	7c db                	jl     c01017b8 <init_PCB+0x31>
c01017dd:	83 ec 08             	sub    $0x8,%esp
c01017e0:	68 00 50 13 c0       	push   $0xc0135000
c01017e5:	68 00 20 03 00       	push   $0x32000
c01017ea:	e8 8d fb ff ff       	call   c010137c <load>
c01017ef:	83 c4 10             	add    $0x10,%esp
c01017f2:	a3 28 31 13 c0       	mov    %eax,0xc0133128
c01017f7:	c7 05 2c 31 13 c0 1b 	movl   $0x1b,0xc013312c
c01017fe:	00 00 00 
c0101801:	c7 05 30 31 13 c0 02 	movl   $0x202,0xc0133130
c0101808:	02 00 00 
c010180b:	c7 05 34 31 13 c0 f0 	movl   $0x60fff0,0xc0133134
c0101812:	ff 60 00 
c0101815:	c7 05 38 31 13 c0 23 	movl   $0x23,0xc0133138
c010181c:	00 00 00 
c010181f:	83 ec 08             	sub    $0x8,%esp
c0101822:	68 c7 34 10 c0       	push   $0xc01034c7
c0101827:	68 4c 3f 13 c0       	push   $0xc0133f4c
c010182c:	e8 46 fd ff ff       	call   c0101577 <my_strcpy>
c0101831:	83 c4 10             	add    $0x10,%esp
c0101834:	c7 05 48 3f 13 c0 00 	movl   $0x0,0xc0133f48
c010183b:	00 00 00 
c010183e:	c7 05 70 3f 13 c0 00 	movl   $0x0,0xc0133f70
c0101845:	00 00 00 
c0101848:	c7 05 80 3f 13 c0 00 	movl   $0x0,0xc0133f80
c010184f:	00 00 00 
c0101852:	c7 05 7c 3f 13 c0 00 	movl   $0x0,0xc0133f7c
c0101859:	00 00 00 
c010185c:	c7 05 6c 3f 13 c0 01 	movl   $0x1,0xc0133f6c
c0101863:	00 00 00 
c0101866:	c7 05 74 3f 13 c0 01 	movl   $0x1,0xc0133f74
c010186d:	00 00 00 
c0101870:	c7 05 78 3f 13 c0 c8 	movl   $0xc8,0xc0133f78
c0101877:	00 00 00 
c010187a:	c7 05 44 3f 13 c0 00 	movl   $0xc0133100,0xc0133f44
c0101881:	31 13 c0 
c0101884:	c7 05 00 10 17 c0 01 	movl   $0x1,0xc0171000
c010188b:	00 00 00 
c010188e:	c7 05 04 10 17 c0 00 	movl   $0x0,0xc0171004
c0101895:	00 00 00 
c0101898:	c7 05 10 3f 13 c0 00 	movl   $0x0,0xc0133f10
c010189f:	00 00 00 
c01018a2:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01018a9:	eb 2a                	jmp    c01018d5 <init_PCB+0x14e>
c01018ab:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018ae:	c1 e0 02             	shl    $0x2,%eax
c01018b1:	89 c2                	mov    %eax,%edx
c01018b3:	c1 e2 04             	shl    $0x4,%edx
c01018b6:	01 d0                	add    %edx,%eax
c01018b8:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c01018be:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018c1:	89 02                	mov    %eax,(%edx)
c01018c3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018c6:	c7 04 85 00 30 13 c0 	movl   $0x0,-0x3fecd000(,%eax,4)
c01018cd:	00 00 00 00 
c01018d1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01018d5:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c01018d9:	7e d0                	jle    c01018ab <init_PCB+0x124>
c01018db:	c7 05 00 30 13 c0 01 	movl   $0x1,0xc0133000
c01018e2:	00 00 00 
c01018e5:	c9                   	leave  
c01018e6:	c3                   	ret    

c01018e7 <add_PCB>:
c01018e7:	55                   	push   %ebp
c01018e8:	89 e5                	mov    %esp,%ebp
c01018ea:	83 ec 18             	sub    $0x18,%esp
c01018ed:	8b 15 00 10 17 c0    	mov    0xc0171000,%edx
c01018f3:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c01018f8:	01 c2                	add    %eax,%edx
c01018fa:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c01018ff:	01 d0                	add    %edx,%eax
c0101901:	83 f8 3c             	cmp    $0x3c,%eax
c0101904:	75 1b                	jne    c0101921 <add_PCB+0x3a>
c0101906:	83 ec 0c             	sub    $0xc,%esp
c0101909:	68 cc 34 10 c0       	push   $0xc01034cc
c010190e:	e8 76 f8 ff ff       	call   c0101189 <printk>
c0101913:	83 c4 10             	add    $0x10,%esp
c0101916:	fb                   	sti    
c0101917:	b8 00 00 00 00       	mov    $0x0,%eax
c010191c:	e9 93 03 00 00       	jmp    c0101cb4 <add_PCB+0x3cd>
c0101921:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0101928:	eb 22                	jmp    c010194c <add_PCB+0x65>
c010192a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010192d:	c1 e0 02             	shl    $0x2,%eax
c0101930:	89 c2                	mov    %eax,%edx
c0101932:	c1 e2 04             	shl    $0x4,%edx
c0101935:	01 d0                	add    %edx,%eax
c0101937:	83 c0 20             	add    $0x20,%eax
c010193a:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010193f:	8b 40 0c             	mov    0xc(%eax),%eax
c0101942:	85 c0                	test   %eax,%eax
c0101944:	75 02                	jne    c0101948 <add_PCB+0x61>
c0101946:	eb 0a                	jmp    c0101952 <add_PCB+0x6b>
c0101948:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c010194c:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c0101950:	7e d8                	jle    c010192a <add_PCB+0x43>
c0101952:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101955:	c1 e0 02             	shl    $0x2,%eax
c0101958:	89 c2                	mov    %eax,%edx
c010195a:	c1 e2 04             	shl    $0x4,%edx
c010195d:	01 d0                	add    %edx,%eax
c010195f:	83 c0 20             	add    $0x20,%eax
c0101962:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101967:	c7 40 0c 01 00 00 00 	movl   $0x1,0xc(%eax)
c010196e:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0101972:	0f 85 98 00 00 00    	jne    c0101a10 <add_PCB+0x129>
c0101978:	a1 bc f0 10 c0       	mov    0xc010f0bc,%eax
c010197d:	c1 e0 02             	shl    $0x2,%eax
c0101980:	89 c2                	mov    %eax,%edx
c0101982:	c1 e2 04             	shl    $0x4,%edx
c0101985:	01 d0                	add    %edx,%eax
c0101987:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010198c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010198f:	8b 0d bc f0 10 c0    	mov    0xc010f0bc,%ecx
c0101995:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101998:	c1 e0 02             	shl    $0x2,%eax
c010199b:	89 c2                	mov    %eax,%edx
c010199d:	c1 e2 04             	shl    $0x4,%edx
c01019a0:	01 d0                	add    %edx,%eax
c01019a2:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c01019a8:	89 c8                	mov    %ecx,%eax
c01019aa:	c1 e0 02             	shl    $0x2,%eax
c01019ad:	89 c1                	mov    %eax,%ecx
c01019af:	c1 e1 04             	shl    $0x4,%ecx
c01019b2:	01 c8                	add    %ecx,%eax
c01019b4:	83 c0 30             	add    $0x30,%eax
c01019b7:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01019bc:	89 50 0c             	mov    %edx,0xc(%eax)
c01019bf:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01019c2:	c1 e0 02             	shl    $0x2,%eax
c01019c5:	89 c2                	mov    %eax,%edx
c01019c7:	c1 e2 04             	shl    $0x4,%edx
c01019ca:	01 d0                	add    %edx,%eax
c01019cc:	83 c0 40             	add    $0x40,%eax
c01019cf:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c01019d5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01019d8:	89 02                	mov    %eax,(%edx)
c01019da:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01019dd:	c1 e0 02             	shl    $0x2,%eax
c01019e0:	89 c2                	mov    %eax,%edx
c01019e2:	c1 e2 04             	shl    $0x4,%edx
c01019e5:	01 d0                	add    %edx,%eax
c01019e7:	83 c0 30             	add    $0x30,%eax
c01019ea:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01019ef:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c01019f6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01019f9:	a3 bc f0 10 c0       	mov    %eax,0xc010f0bc
c01019fe:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c0101a03:	83 c0 01             	add    $0x1,%eax
c0101a06:	a3 00 10 17 c0       	mov    %eax,0xc0171000
c0101a0b:	e9 f9 01 00 00       	jmp    c0101c09 <add_PCB+0x322>
c0101a10:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0101a14:	0f 85 fa 00 00 00    	jne    c0101b14 <add_PCB+0x22d>
c0101a1a:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c0101a1f:	85 c0                	test   %eax,%eax
c0101a21:	75 59                	jne    c0101a7c <add_PCB+0x195>
c0101a23:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a26:	a3 c0 f0 10 c0       	mov    %eax,0xc010f0c0
c0101a2b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a2e:	a3 c4 f0 10 c0       	mov    %eax,0xc010f0c4
c0101a33:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a36:	c1 e0 02             	shl    $0x2,%eax
c0101a39:	89 c2                	mov    %eax,%edx
c0101a3b:	c1 e2 04             	shl    $0x4,%edx
c0101a3e:	01 d0                	add    %edx,%eax
c0101a40:	83 c0 40             	add    $0x40,%eax
c0101a43:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101a48:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0101a4e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a51:	c1 e0 02             	shl    $0x2,%eax
c0101a54:	89 c2                	mov    %eax,%edx
c0101a56:	c1 e2 04             	shl    $0x4,%edx
c0101a59:	01 d0                	add    %edx,%eax
c0101a5b:	83 c0 30             	add    $0x30,%eax
c0101a5e:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101a63:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101a6a:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c0101a6f:	83 c0 01             	add    $0x1,%eax
c0101a72:	a3 04 10 17 c0       	mov    %eax,0xc0171004
c0101a77:	e9 8d 01 00 00       	jmp    c0101c09 <add_PCB+0x322>
c0101a7c:	a1 c4 f0 10 c0       	mov    0xc010f0c4,%eax
c0101a81:	c1 e0 02             	shl    $0x2,%eax
c0101a84:	89 c2                	mov    %eax,%edx
c0101a86:	c1 e2 04             	shl    $0x4,%edx
c0101a89:	01 d0                	add    %edx,%eax
c0101a8b:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101a90:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101a93:	8b 0d c4 f0 10 c0    	mov    0xc010f0c4,%ecx
c0101a99:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a9c:	c1 e0 02             	shl    $0x2,%eax
c0101a9f:	89 c2                	mov    %eax,%edx
c0101aa1:	c1 e2 04             	shl    $0x4,%edx
c0101aa4:	01 d0                	add    %edx,%eax
c0101aa6:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101aac:	89 c8                	mov    %ecx,%eax
c0101aae:	c1 e0 02             	shl    $0x2,%eax
c0101ab1:	89 c1                	mov    %eax,%ecx
c0101ab3:	c1 e1 04             	shl    $0x4,%ecx
c0101ab6:	01 c8                	add    %ecx,%eax
c0101ab8:	83 c0 30             	add    $0x30,%eax
c0101abb:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101ac0:	89 50 0c             	mov    %edx,0xc(%eax)
c0101ac3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101ac6:	c1 e0 02             	shl    $0x2,%eax
c0101ac9:	89 c2                	mov    %eax,%edx
c0101acb:	c1 e2 04             	shl    $0x4,%edx
c0101ace:	01 d0                	add    %edx,%eax
c0101ad0:	83 c0 40             	add    $0x40,%eax
c0101ad3:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101ad9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101adc:	89 02                	mov    %eax,(%edx)
c0101ade:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101ae1:	c1 e0 02             	shl    $0x2,%eax
c0101ae4:	89 c2                	mov    %eax,%edx
c0101ae6:	c1 e2 04             	shl    $0x4,%edx
c0101ae9:	01 d0                	add    %edx,%eax
c0101aeb:	83 c0 30             	add    $0x30,%eax
c0101aee:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101af3:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101afa:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101afd:	a3 c4 f0 10 c0       	mov    %eax,0xc010f0c4
c0101b02:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c0101b07:	83 c0 01             	add    $0x1,%eax
c0101b0a:	a3 04 10 17 c0       	mov    %eax,0xc0171004
c0101b0f:	e9 f5 00 00 00       	jmp    c0101c09 <add_PCB+0x322>
c0101b14:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101b19:	85 c0                	test   %eax,%eax
c0101b1b:	75 59                	jne    c0101b76 <add_PCB+0x28f>
c0101b1d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b20:	a3 c8 f0 10 c0       	mov    %eax,0xc010f0c8
c0101b25:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b28:	a3 cc f0 10 c0       	mov    %eax,0xc010f0cc
c0101b2d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b30:	c1 e0 02             	shl    $0x2,%eax
c0101b33:	89 c2                	mov    %eax,%edx
c0101b35:	c1 e2 04             	shl    $0x4,%edx
c0101b38:	01 d0                	add    %edx,%eax
c0101b3a:	83 c0 40             	add    $0x40,%eax
c0101b3d:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101b42:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0101b48:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b4b:	c1 e0 02             	shl    $0x2,%eax
c0101b4e:	89 c2                	mov    %eax,%edx
c0101b50:	c1 e2 04             	shl    $0x4,%edx
c0101b53:	01 d0                	add    %edx,%eax
c0101b55:	83 c0 30             	add    $0x30,%eax
c0101b58:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101b5d:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101b64:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101b69:	83 c0 01             	add    $0x1,%eax
c0101b6c:	a3 10 3f 13 c0       	mov    %eax,0xc0133f10
c0101b71:	e9 93 00 00 00       	jmp    c0101c09 <add_PCB+0x322>
c0101b76:	a1 cc f0 10 c0       	mov    0xc010f0cc,%eax
c0101b7b:	c1 e0 02             	shl    $0x2,%eax
c0101b7e:	89 c2                	mov    %eax,%edx
c0101b80:	c1 e2 04             	shl    $0x4,%edx
c0101b83:	01 d0                	add    %edx,%eax
c0101b85:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101b8a:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101b8d:	8b 0d cc f0 10 c0    	mov    0xc010f0cc,%ecx
c0101b93:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b96:	c1 e0 02             	shl    $0x2,%eax
c0101b99:	89 c2                	mov    %eax,%edx
c0101b9b:	c1 e2 04             	shl    $0x4,%edx
c0101b9e:	01 d0                	add    %edx,%eax
c0101ba0:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101ba6:	89 c8                	mov    %ecx,%eax
c0101ba8:	c1 e0 02             	shl    $0x2,%eax
c0101bab:	89 c1                	mov    %eax,%ecx
c0101bad:	c1 e1 04             	shl    $0x4,%ecx
c0101bb0:	01 c8                	add    %ecx,%eax
c0101bb2:	83 c0 30             	add    $0x30,%eax
c0101bb5:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101bba:	89 50 0c             	mov    %edx,0xc(%eax)
c0101bbd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101bc0:	c1 e0 02             	shl    $0x2,%eax
c0101bc3:	89 c2                	mov    %eax,%edx
c0101bc5:	c1 e2 04             	shl    $0x4,%edx
c0101bc8:	01 d0                	add    %edx,%eax
c0101bca:	83 c0 40             	add    $0x40,%eax
c0101bcd:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101bd3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101bd6:	89 02                	mov    %eax,(%edx)
c0101bd8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101bdb:	c1 e0 02             	shl    $0x2,%eax
c0101bde:	89 c2                	mov    %eax,%edx
c0101be0:	c1 e2 04             	shl    $0x4,%edx
c0101be3:	01 d0                	add    %edx,%eax
c0101be5:	83 c0 30             	add    $0x30,%eax
c0101be8:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101bed:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101bf4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101bf7:	a3 cc f0 10 c0       	mov    %eax,0xc010f0cc
c0101bfc:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101c01:	83 c0 01             	add    $0x1,%eax
c0101c04:	a3 10 3f 13 c0       	mov    %eax,0xc0133f10
c0101c09:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c0c:	c1 e0 02             	shl    $0x2,%eax
c0101c0f:	89 c2                	mov    %eax,%edx
c0101c11:	c1 e2 04             	shl    $0x4,%edx
c0101c14:	01 d0                	add    %edx,%eax
c0101c16:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101c1b:	83 c0 0c             	add    $0xc,%eax
c0101c1e:	83 ec 08             	sub    $0x8,%esp
c0101c21:	ff 75 10             	pushl  0x10(%ebp)
c0101c24:	50                   	push   %eax
c0101c25:	e8 4d f9 ff ff       	call   c0101577 <my_strcpy>
c0101c2a:	83 c4 10             	add    $0x10,%esp
c0101c2d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c30:	c1 e0 02             	shl    $0x2,%eax
c0101c33:	89 c2                	mov    %eax,%edx
c0101c35:	c1 e2 04             	shl    $0x4,%edx
c0101c38:	01 d0                	add    %edx,%eax
c0101c3a:	83 c0 30             	add    $0x30,%eax
c0101c3d:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101c43:	8b 45 14             	mov    0x14(%ebp),%eax
c0101c46:	89 42 08             	mov    %eax,0x8(%edx)
c0101c49:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c4c:	c1 e0 02             	shl    $0x2,%eax
c0101c4f:	89 c2                	mov    %eax,%edx
c0101c51:	c1 e2 04             	shl    $0x4,%edx
c0101c54:	01 d0                	add    %edx,%eax
c0101c56:	83 c0 30             	add    $0x30,%eax
c0101c59:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101c5f:	8b 45 08             	mov    0x8(%ebp),%eax
c0101c62:	89 42 04             	mov    %eax,0x4(%edx)
c0101c65:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c68:	c1 e0 02             	shl    $0x2,%eax
c0101c6b:	89 c2                	mov    %eax,%edx
c0101c6d:	c1 e2 04             	shl    $0x4,%edx
c0101c70:	01 d0                	add    %edx,%eax
c0101c72:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101c78:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101c7b:	89 42 04             	mov    %eax,0x4(%edx)
c0101c7e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c81:	c1 e0 02             	shl    $0x2,%eax
c0101c84:	89 c2                	mov    %eax,%edx
c0101c86:	c1 e2 04             	shl    $0x4,%edx
c0101c89:	01 d0                	add    %edx,%eax
c0101c8b:	83 c0 30             	add    $0x30,%eax
c0101c8e:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101c94:	8b 45 18             	mov    0x18(%ebp),%eax
c0101c97:	89 02                	mov    %eax,(%edx)
c0101c99:	8b 55 1c             	mov    0x1c(%ebp),%edx
c0101c9c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c9f:	c1 e0 02             	shl    $0x2,%eax
c0101ca2:	89 c1                	mov    %eax,%ecx
c0101ca4:	c1 e1 04             	shl    $0x4,%ecx
c0101ca7:	01 c8                	add    %ecx,%eax
c0101ca9:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101cae:	89 50 08             	mov    %edx,0x8(%eax)
c0101cb1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101cb4:	c9                   	leave  
c0101cb5:	c3                   	ret    

c0101cb6 <delete_PCB>:
c0101cb6:	55                   	push   %ebp
c0101cb7:	89 e5                	mov    %esp,%ebp
c0101cb9:	83 ec 18             	sub    $0x18,%esp
c0101cbc:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0101cc0:	75 15                	jne    c0101cd7 <delete_PCB+0x21>
c0101cc2:	83 ec 0c             	sub    $0xc,%esp
c0101cc5:	68 e0 34 10 c0       	push   $0xc01034e0
c0101cca:	e8 ba f4 ff ff       	call   c0101189 <printk>
c0101ccf:	83 c4 10             	add    $0x10,%esp
c0101cd2:	e9 c7 03 00 00       	jmp    c010209e <delete_PCB+0x3e8>
c0101cd7:	8b 45 08             	mov    0x8(%ebp),%eax
c0101cda:	c1 e0 02             	shl    $0x2,%eax
c0101cdd:	89 c2                	mov    %eax,%edx
c0101cdf:	c1 e2 04             	shl    $0x4,%edx
c0101ce2:	01 d0                	add    %edx,%eax
c0101ce4:	83 c0 20             	add    $0x20,%eax
c0101ce7:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101cec:	8b 40 0c             	mov    0xc(%eax),%eax
c0101cef:	85 c0                	test   %eax,%eax
c0101cf1:	75 15                	jne    c0101d08 <delete_PCB+0x52>
c0101cf3:	83 ec 0c             	sub    $0xc,%esp
c0101cf6:	68 03 35 10 c0       	push   $0xc0103503
c0101cfb:	e8 89 f4 ff ff       	call   c0101189 <printk>
c0101d00:	83 c4 10             	add    $0x10,%esp
c0101d03:	e9 96 03 00 00       	jmp    c010209e <delete_PCB+0x3e8>
c0101d08:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d0b:	c1 e0 02             	shl    $0x2,%eax
c0101d0e:	89 c2                	mov    %eax,%edx
c0101d10:	c1 e2 04             	shl    $0x4,%edx
c0101d13:	01 d0                	add    %edx,%eax
c0101d15:	83 c0 20             	add    $0x20,%eax
c0101d18:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d1d:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101d24:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d27:	c1 e0 02             	shl    $0x2,%eax
c0101d2a:	89 c2                	mov    %eax,%edx
c0101d2c:	c1 e2 04             	shl    $0x4,%edx
c0101d2f:	01 d0                	add    %edx,%eax
c0101d31:	83 c0 30             	add    $0x30,%eax
c0101d34:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d39:	8b 40 04             	mov    0x4(%eax),%eax
c0101d3c:	83 f8 01             	cmp    $0x1,%eax
c0101d3f:	0f 85 d9 00 00 00    	jne    c0101e1e <delete_PCB+0x168>
c0101d45:	a1 bc f0 10 c0       	mov    0xc010f0bc,%eax
c0101d4a:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101d4d:	75 53                	jne    c0101da2 <delete_PCB+0xec>
c0101d4f:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d52:	c1 e0 02             	shl    $0x2,%eax
c0101d55:	89 c2                	mov    %eax,%edx
c0101d57:	c1 e2 04             	shl    $0x4,%edx
c0101d5a:	01 d0                	add    %edx,%eax
c0101d5c:	83 c0 40             	add    $0x40,%eax
c0101d5f:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d64:	8b 00                	mov    (%eax),%eax
c0101d66:	8b 40 08             	mov    0x8(%eax),%eax
c0101d69:	a3 bc f0 10 c0       	mov    %eax,0xc010f0bc
c0101d6e:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d71:	c1 e0 02             	shl    $0x2,%eax
c0101d74:	89 c2                	mov    %eax,%edx
c0101d76:	c1 e2 04             	shl    $0x4,%edx
c0101d79:	01 d0                	add    %edx,%eax
c0101d7b:	83 c0 40             	add    $0x40,%eax
c0101d7e:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d83:	8b 10                	mov    (%eax),%edx
c0101d85:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d88:	c1 e0 02             	shl    $0x2,%eax
c0101d8b:	89 c1                	mov    %eax,%ecx
c0101d8d:	c1 e1 04             	shl    $0x4,%ecx
c0101d90:	01 c8                	add    %ecx,%eax
c0101d92:	83 c0 30             	add    $0x30,%eax
c0101d95:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d9a:	8b 40 0c             	mov    0xc(%eax),%eax
c0101d9d:	89 42 3c             	mov    %eax,0x3c(%edx)
c0101da0:	eb 6a                	jmp    c0101e0c <delete_PCB+0x156>
c0101da2:	8b 45 08             	mov    0x8(%ebp),%eax
c0101da5:	c1 e0 02             	shl    $0x2,%eax
c0101da8:	89 c2                	mov    %eax,%edx
c0101daa:	c1 e2 04             	shl    $0x4,%edx
c0101dad:	01 d0                	add    %edx,%eax
c0101daf:	83 c0 40             	add    $0x40,%eax
c0101db2:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101db7:	8b 00                	mov    (%eax),%eax
c0101db9:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101dbc:	8b 45 08             	mov    0x8(%ebp),%eax
c0101dbf:	c1 e0 02             	shl    $0x2,%eax
c0101dc2:	89 c2                	mov    %eax,%edx
c0101dc4:	c1 e2 04             	shl    $0x4,%edx
c0101dc7:	01 d0                	add    %edx,%eax
c0101dc9:	83 c0 40             	add    $0x40,%eax
c0101dcc:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101dd1:	8b 10                	mov    (%eax),%edx
c0101dd3:	8b 45 08             	mov    0x8(%ebp),%eax
c0101dd6:	c1 e0 02             	shl    $0x2,%eax
c0101dd9:	89 c1                	mov    %eax,%ecx
c0101ddb:	c1 e1 04             	shl    $0x4,%ecx
c0101dde:	01 c8                	add    %ecx,%eax
c0101de0:	83 c0 30             	add    $0x30,%eax
c0101de3:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101de8:	8b 40 0c             	mov    0xc(%eax),%eax
c0101deb:	89 42 3c             	mov    %eax,0x3c(%edx)
c0101dee:	8b 45 08             	mov    0x8(%ebp),%eax
c0101df1:	c1 e0 02             	shl    $0x2,%eax
c0101df4:	89 c2                	mov    %eax,%edx
c0101df6:	c1 e2 04             	shl    $0x4,%edx
c0101df9:	01 d0                	add    %edx,%eax
c0101dfb:	83 c0 30             	add    $0x30,%eax
c0101dfe:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101e03:	8b 40 0c             	mov    0xc(%eax),%eax
c0101e06:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101e09:	89 50 40             	mov    %edx,0x40(%eax)
c0101e0c:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c0101e11:	83 e8 01             	sub    $0x1,%eax
c0101e14:	a3 00 10 17 c0       	mov    %eax,0xc0171000
c0101e19:	e9 80 02 00 00       	jmp    c010209e <delete_PCB+0x3e8>
c0101e1e:	8b 45 08             	mov    0x8(%ebp),%eax
c0101e21:	c1 e0 02             	shl    $0x2,%eax
c0101e24:	89 c2                	mov    %eax,%edx
c0101e26:	c1 e2 04             	shl    $0x4,%edx
c0101e29:	01 d0                	add    %edx,%eax
c0101e2b:	83 c0 30             	add    $0x30,%eax
c0101e2e:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101e33:	8b 40 04             	mov    0x4(%eax),%eax
c0101e36:	83 f8 02             	cmp    $0x2,%eax
c0101e39:	0f 85 34 01 00 00    	jne    c0101f73 <delete_PCB+0x2bd>
c0101e3f:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c0101e44:	83 e8 01             	sub    $0x1,%eax
c0101e47:	a3 04 10 17 c0       	mov    %eax,0xc0171004
c0101e4c:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c0101e51:	85 c0                	test   %eax,%eax
c0101e53:	75 19                	jne    c0101e6e <delete_PCB+0x1b8>
c0101e55:	c7 05 c0 f0 10 c0 00 	movl   $0x0,0xc010f0c0
c0101e5c:	00 00 00 
c0101e5f:	c7 05 c4 f0 10 c0 00 	movl   $0x0,0xc010f0c4
c0101e66:	00 00 00 
c0101e69:	e9 30 02 00 00       	jmp    c010209e <delete_PCB+0x3e8>
c0101e6e:	a1 c0 f0 10 c0       	mov    0xc010f0c0,%eax
c0101e73:	39 45 08             	cmp    %eax,0x8(%ebp)
c0101e76:	75 43                	jne    c0101ebb <delete_PCB+0x205>
c0101e78:	8b 45 08             	mov    0x8(%ebp),%eax
c0101e7b:	c1 e0 02             	shl    $0x2,%eax
c0101e7e:	89 c2                	mov    %eax,%edx
c0101e80:	c1 e2 04             	shl    $0x4,%edx
c0101e83:	01 d0                	add    %edx,%eax
c0101e85:	83 c0 30             	add    $0x30,%eax
c0101e88:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101e8d:	8b 40 0c             	mov    0xc(%eax),%eax
c0101e90:	8b 00                	mov    (%eax),%eax
c0101e92:	a3 c0 f0 10 c0       	mov    %eax,0xc010f0c0
c0101e97:	8b 45 08             	mov    0x8(%ebp),%eax
c0101e9a:	c1 e0 02             	shl    $0x2,%eax
c0101e9d:	89 c2                	mov    %eax,%edx
c0101e9f:	c1 e2 04             	shl    $0x4,%edx
c0101ea2:	01 d0                	add    %edx,%eax
c0101ea4:	83 c0 30             	add    $0x30,%eax
c0101ea7:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101eac:	8b 40 0c             	mov    0xc(%eax),%eax
c0101eaf:	c7 40 40 00 00 00 00 	movl   $0x0,0x40(%eax)
c0101eb6:	e9 e3 01 00 00       	jmp    c010209e <delete_PCB+0x3e8>
c0101ebb:	a1 c4 f0 10 c0       	mov    0xc010f0c4,%eax
c0101ec0:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101ec3:	75 1f                	jne    c0101ee4 <delete_PCB+0x22e>
c0101ec5:	8b 45 08             	mov    0x8(%ebp),%eax
c0101ec8:	c1 e0 02             	shl    $0x2,%eax
c0101ecb:	89 c2                	mov    %eax,%edx
c0101ecd:	c1 e2 04             	shl    $0x4,%edx
c0101ed0:	01 d0                	add    %edx,%eax
c0101ed2:	83 c0 40             	add    $0x40,%eax
c0101ed5:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101eda:	8b 00                	mov    (%eax),%eax
c0101edc:	8b 40 08             	mov    0x8(%eax),%eax
c0101edf:	a3 c4 f0 10 c0       	mov    %eax,0xc010f0c4
c0101ee4:	8b 45 08             	mov    0x8(%ebp),%eax
c0101ee7:	c1 e0 02             	shl    $0x2,%eax
c0101eea:	89 c2                	mov    %eax,%edx
c0101eec:	c1 e2 04             	shl    $0x4,%edx
c0101eef:	01 d0                	add    %edx,%eax
c0101ef1:	83 c0 40             	add    $0x40,%eax
c0101ef4:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101ef9:	8b 00                	mov    (%eax),%eax
c0101efb:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101efe:	8b 45 08             	mov    0x8(%ebp),%eax
c0101f01:	c1 e0 02             	shl    $0x2,%eax
c0101f04:	89 c2                	mov    %eax,%edx
c0101f06:	c1 e2 04             	shl    $0x4,%edx
c0101f09:	01 d0                	add    %edx,%eax
c0101f0b:	83 c0 40             	add    $0x40,%eax
c0101f0e:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101f13:	8b 10                	mov    (%eax),%edx
c0101f15:	8b 45 08             	mov    0x8(%ebp),%eax
c0101f18:	c1 e0 02             	shl    $0x2,%eax
c0101f1b:	89 c1                	mov    %eax,%ecx
c0101f1d:	c1 e1 04             	shl    $0x4,%ecx
c0101f20:	01 c8                	add    %ecx,%eax
c0101f22:	83 c0 30             	add    $0x30,%eax
c0101f25:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101f2a:	8b 40 0c             	mov    0xc(%eax),%eax
c0101f2d:	89 42 3c             	mov    %eax,0x3c(%edx)
c0101f30:	8b 45 08             	mov    0x8(%ebp),%eax
c0101f33:	c1 e0 02             	shl    $0x2,%eax
c0101f36:	89 c2                	mov    %eax,%edx
c0101f38:	c1 e2 04             	shl    $0x4,%edx
c0101f3b:	01 d0                	add    %edx,%eax
c0101f3d:	83 c0 30             	add    $0x30,%eax
c0101f40:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101f45:	8b 40 0c             	mov    0xc(%eax),%eax
c0101f48:	85 c0                	test   %eax,%eax
c0101f4a:	0f 84 4e 01 00 00    	je     c010209e <delete_PCB+0x3e8>
c0101f50:	8b 45 08             	mov    0x8(%ebp),%eax
c0101f53:	c1 e0 02             	shl    $0x2,%eax
c0101f56:	89 c2                	mov    %eax,%edx
c0101f58:	c1 e2 04             	shl    $0x4,%edx
c0101f5b:	01 d0                	add    %edx,%eax
c0101f5d:	83 c0 30             	add    $0x30,%eax
c0101f60:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101f65:	8b 40 0c             	mov    0xc(%eax),%eax
c0101f68:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101f6b:	89 50 40             	mov    %edx,0x40(%eax)
c0101f6e:	e9 2b 01 00 00       	jmp    c010209e <delete_PCB+0x3e8>
c0101f73:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101f78:	83 e8 01             	sub    $0x1,%eax
c0101f7b:	a3 10 3f 13 c0       	mov    %eax,0xc0133f10
c0101f80:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101f85:	85 c0                	test   %eax,%eax
c0101f87:	75 19                	jne    c0101fa2 <delete_PCB+0x2ec>
c0101f89:	c7 05 c8 f0 10 c0 00 	movl   $0x0,0xc010f0c8
c0101f90:	00 00 00 
c0101f93:	c7 05 cc f0 10 c0 00 	movl   $0x0,0xc010f0cc
c0101f9a:	00 00 00 
c0101f9d:	e9 fc 00 00 00       	jmp    c010209e <delete_PCB+0x3e8>
c0101fa2:	a1 c8 f0 10 c0       	mov    0xc010f0c8,%eax
c0101fa7:	39 45 08             	cmp    %eax,0x8(%ebp)
c0101faa:	75 43                	jne    c0101fef <delete_PCB+0x339>
c0101fac:	8b 45 08             	mov    0x8(%ebp),%eax
c0101faf:	c1 e0 02             	shl    $0x2,%eax
c0101fb2:	89 c2                	mov    %eax,%edx
c0101fb4:	c1 e2 04             	shl    $0x4,%edx
c0101fb7:	01 d0                	add    %edx,%eax
c0101fb9:	83 c0 30             	add    $0x30,%eax
c0101fbc:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101fc1:	8b 40 0c             	mov    0xc(%eax),%eax
c0101fc4:	8b 00                	mov    (%eax),%eax
c0101fc6:	a3 c8 f0 10 c0       	mov    %eax,0xc010f0c8
c0101fcb:	8b 45 08             	mov    0x8(%ebp),%eax
c0101fce:	c1 e0 02             	shl    $0x2,%eax
c0101fd1:	89 c2                	mov    %eax,%edx
c0101fd3:	c1 e2 04             	shl    $0x4,%edx
c0101fd6:	01 d0                	add    %edx,%eax
c0101fd8:	83 c0 30             	add    $0x30,%eax
c0101fdb:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101fe0:	8b 40 0c             	mov    0xc(%eax),%eax
c0101fe3:	c7 40 40 00 00 00 00 	movl   $0x0,0x40(%eax)
c0101fea:	e9 af 00 00 00       	jmp    c010209e <delete_PCB+0x3e8>
c0101fef:	a1 cc f0 10 c0       	mov    0xc010f0cc,%eax
c0101ff4:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101ff7:	75 1f                	jne    c0102018 <delete_PCB+0x362>
c0101ff9:	8b 45 08             	mov    0x8(%ebp),%eax
c0101ffc:	c1 e0 02             	shl    $0x2,%eax
c0101fff:	89 c2                	mov    %eax,%edx
c0102001:	c1 e2 04             	shl    $0x4,%edx
c0102004:	01 d0                	add    %edx,%eax
c0102006:	83 c0 40             	add    $0x40,%eax
c0102009:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010200e:	8b 00                	mov    (%eax),%eax
c0102010:	8b 40 08             	mov    0x8(%eax),%eax
c0102013:	a3 cc f0 10 c0       	mov    %eax,0xc010f0cc
c0102018:	8b 45 08             	mov    0x8(%ebp),%eax
c010201b:	c1 e0 02             	shl    $0x2,%eax
c010201e:	89 c2                	mov    %eax,%edx
c0102020:	c1 e2 04             	shl    $0x4,%edx
c0102023:	01 d0                	add    %edx,%eax
c0102025:	83 c0 40             	add    $0x40,%eax
c0102028:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010202d:	8b 00                	mov    (%eax),%eax
c010202f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102032:	8b 45 08             	mov    0x8(%ebp),%eax
c0102035:	c1 e0 02             	shl    $0x2,%eax
c0102038:	89 c2                	mov    %eax,%edx
c010203a:	c1 e2 04             	shl    $0x4,%edx
c010203d:	01 d0                	add    %edx,%eax
c010203f:	83 c0 40             	add    $0x40,%eax
c0102042:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102047:	8b 10                	mov    (%eax),%edx
c0102049:	8b 45 08             	mov    0x8(%ebp),%eax
c010204c:	c1 e0 02             	shl    $0x2,%eax
c010204f:	89 c1                	mov    %eax,%ecx
c0102051:	c1 e1 04             	shl    $0x4,%ecx
c0102054:	01 c8                	add    %ecx,%eax
c0102056:	83 c0 30             	add    $0x30,%eax
c0102059:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010205e:	8b 40 0c             	mov    0xc(%eax),%eax
c0102061:	89 42 3c             	mov    %eax,0x3c(%edx)
c0102064:	8b 45 08             	mov    0x8(%ebp),%eax
c0102067:	c1 e0 02             	shl    $0x2,%eax
c010206a:	89 c2                	mov    %eax,%edx
c010206c:	c1 e2 04             	shl    $0x4,%edx
c010206f:	01 d0                	add    %edx,%eax
c0102071:	83 c0 30             	add    $0x30,%eax
c0102074:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102079:	8b 40 0c             	mov    0xc(%eax),%eax
c010207c:	85 c0                	test   %eax,%eax
c010207e:	74 1e                	je     c010209e <delete_PCB+0x3e8>
c0102080:	8b 45 08             	mov    0x8(%ebp),%eax
c0102083:	c1 e0 02             	shl    $0x2,%eax
c0102086:	89 c2                	mov    %eax,%edx
c0102088:	c1 e2 04             	shl    $0x4,%edx
c010208b:	01 d0                	add    %edx,%eax
c010208d:	83 c0 30             	add    $0x30,%eax
c0102090:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102095:	8b 40 0c             	mov    0xc(%eax),%eax
c0102098:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010209b:	89 50 40             	mov    %edx,0x40(%eax)
c010209e:	c9                   	leave  
c010209f:	c3                   	ret    

c01020a0 <reschedule>:
c01020a0:	55                   	push   %ebp
c01020a1:	89 e5                	mov    %esp,%ebp
c01020a3:	83 ec 28             	sub    $0x28,%esp
c01020a6:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01020ab:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01020ae:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c01020b3:	83 f8 01             	cmp    $0x1,%eax
c01020b6:	75 46                	jne    c01020fe <reschedule+0x5e>
c01020b8:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c01020bd:	85 c0                	test   %eax,%eax
c01020bf:	75 3d                	jne    c01020fe <reschedule+0x5e>
c01020c1:	b8 f8 3f 17 c0       	mov    $0xc0173ff8,%eax
c01020c6:	83 ec 0c             	sub    $0xc,%esp
c01020c9:	50                   	push   %eax
c01020ca:	e8 6e e2 ff ff       	call   c010033d <set_tss>
c01020cf:	83 c4 10             	add    $0x10,%esp
c01020d2:	b8 00 50 13 c0       	mov    $0xc0135000,%eax
c01020d7:	05 00 00 00 40       	add    $0x40000000,%eax
c01020dc:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01020df:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01020e2:	0f 22 d8             	mov    %eax,%cr3
c01020e5:	66 b8 23 00          	mov    $0x23,%ax
c01020e9:	8e d8                	mov    %eax,%ds
c01020eb:	8e c0                	mov    %eax,%es
c01020ed:	a1 44 3f 13 c0       	mov    0xc0133f44,%eax
c01020f2:	89 c4                	mov    %eax,%esp
c01020f4:	61                   	popa   
c01020f5:	83 c4 08             	add    $0x8,%esp
c01020f8:	cf                   	iret   
c01020f9:	e9 f0 01 00 00       	jmp    c01022ee <reschedule+0x24e>
c01020fe:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c0102103:	83 f8 01             	cmp    $0x1,%eax
c0102106:	0f 8e 94 00 00 00    	jle    c01021a0 <reschedule+0x100>
c010210c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010210f:	c1 e0 02             	shl    $0x2,%eax
c0102112:	89 c2                	mov    %eax,%edx
c0102114:	c1 e2 04             	shl    $0x4,%edx
c0102117:	01 d0                	add    %edx,%eax
c0102119:	83 c0 30             	add    $0x30,%eax
c010211c:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102121:	8b 40 0c             	mov    0xc(%eax),%eax
c0102124:	8b 40 08             	mov    0x8(%eax),%eax
c0102127:	c1 e0 0c             	shl    $0xc,%eax
c010212a:	05 00 30 17 c0       	add    $0xc0173000,%eax
c010212f:	05 f8 0f 00 00       	add    $0xff8,%eax
c0102134:	83 ec 0c             	sub    $0xc,%esp
c0102137:	50                   	push   %eax
c0102138:	e8 00 e2 ff ff       	call   c010033d <set_tss>
c010213d:	83 c4 10             	add    $0x10,%esp
c0102140:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102143:	c1 e0 02             	shl    $0x2,%eax
c0102146:	89 c2                	mov    %eax,%edx
c0102148:	c1 e2 04             	shl    $0x4,%edx
c010214b:	01 d0                	add    %edx,%eax
c010214d:	83 c0 30             	add    $0x30,%eax
c0102150:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102155:	8b 40 0c             	mov    0xc(%eax),%eax
c0102158:	8b 40 08             	mov    0x8(%eax),%eax
c010215b:	c1 e0 0c             	shl    $0xc,%eax
c010215e:	05 00 50 13 c0       	add    $0xc0135000,%eax
c0102163:	05 00 00 00 40       	add    $0x40000000,%eax
c0102168:	89 45 e8             	mov    %eax,-0x18(%ebp)
c010216b:	8b 45 e8             	mov    -0x18(%ebp),%eax
c010216e:	0f 22 d8             	mov    %eax,%cr3
c0102171:	66 b8 23 00          	mov    $0x23,%ax
c0102175:	8e d8                	mov    %eax,%ds
c0102177:	8e c0                	mov    %eax,%es
c0102179:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010217c:	c1 e0 02             	shl    $0x2,%eax
c010217f:	89 c2                	mov    %eax,%edx
c0102181:	c1 e2 04             	shl    $0x4,%edx
c0102184:	01 d0                	add    %edx,%eax
c0102186:	83 c0 30             	add    $0x30,%eax
c0102189:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010218e:	8b 40 0c             	mov    0xc(%eax),%eax
c0102191:	8b 40 04             	mov    0x4(%eax),%eax
c0102194:	89 c4                	mov    %eax,%esp
c0102196:	61                   	popa   
c0102197:	83 c4 08             	add    $0x8,%esp
c010219a:	cf                   	iret   
c010219b:	e9 4e 01 00 00       	jmp    c01022ee <reschedule+0x24e>
c01021a0:	8b 0d b8 f0 10 c0    	mov    0xc010f0b8,%ecx
c01021a6:	a1 c0 f0 10 c0       	mov    0xc010f0c0,%eax
c01021ab:	c1 e0 02             	shl    $0x2,%eax
c01021ae:	89 c2                	mov    %eax,%edx
c01021b0:	c1 e2 04             	shl    $0x4,%edx
c01021b3:	01 d0                	add    %edx,%eax
c01021b5:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c01021bb:	89 c8                	mov    %ecx,%eax
c01021bd:	c1 e0 02             	shl    $0x2,%eax
c01021c0:	89 c1                	mov    %eax,%ecx
c01021c2:	c1 e1 04             	shl    $0x4,%ecx
c01021c5:	01 c8                	add    %ecx,%eax
c01021c7:	83 c0 30             	add    $0x30,%eax
c01021ca:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01021cf:	89 50 0c             	mov    %edx,0xc(%eax)
c01021d2:	8b 0d c0 f0 10 c0    	mov    0xc010f0c0,%ecx
c01021d8:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01021dd:	c1 e0 02             	shl    $0x2,%eax
c01021e0:	89 c2                	mov    %eax,%edx
c01021e2:	c1 e2 04             	shl    $0x4,%edx
c01021e5:	01 d0                	add    %edx,%eax
c01021e7:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c01021ed:	89 c8                	mov    %ecx,%eax
c01021ef:	c1 e0 02             	shl    $0x2,%eax
c01021f2:	89 c1                	mov    %eax,%ecx
c01021f4:	c1 e1 04             	shl    $0x4,%ecx
c01021f7:	01 c8                	add    %ecx,%eax
c01021f9:	83 c0 40             	add    $0x40,%eax
c01021fc:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102201:	89 10                	mov    %edx,(%eax)
c0102203:	a1 c4 f0 10 c0       	mov    0xc010f0c4,%eax
c0102208:	a3 bc f0 10 c0       	mov    %eax,0xc010f0bc
c010220d:	c7 05 c0 f0 10 c0 00 	movl   $0x0,0xc010f0c0
c0102214:	00 00 00 
c0102217:	c7 05 c4 f0 10 c0 00 	movl   $0x0,0xc010f0c4
c010221e:	00 00 00 
c0102221:	8b 15 00 10 17 c0    	mov    0xc0171000,%edx
c0102227:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c010222c:	01 d0                	add    %edx,%eax
c010222e:	a3 00 10 17 c0       	mov    %eax,0xc0171000
c0102233:	c7 05 04 10 17 c0 00 	movl   $0x0,0xc0171004
c010223a:	00 00 00 
c010223d:	c7 45 f4 40 3f 13 c0 	movl   $0xc0133f40,-0xc(%ebp)
c0102244:	eb 13                	jmp    c0102259 <reschedule+0x1b9>
c0102246:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102249:	c7 40 34 01 00 00 00 	movl   $0x1,0x34(%eax)
c0102250:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102253:	8b 40 3c             	mov    0x3c(%eax),%eax
c0102256:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102259:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c010225d:	75 e7                	jne    c0102246 <reschedule+0x1a6>
c010225f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102262:	c1 e0 02             	shl    $0x2,%eax
c0102265:	89 c2                	mov    %eax,%edx
c0102267:	c1 e2 04             	shl    $0x4,%edx
c010226a:	01 d0                	add    %edx,%eax
c010226c:	83 c0 30             	add    $0x30,%eax
c010226f:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102274:	8b 40 0c             	mov    0xc(%eax),%eax
c0102277:	8b 40 08             	mov    0x8(%eax),%eax
c010227a:	c1 e0 0c             	shl    $0xc,%eax
c010227d:	05 00 30 17 c0       	add    $0xc0173000,%eax
c0102282:	05 f8 0f 00 00       	add    $0xff8,%eax
c0102287:	83 ec 0c             	sub    $0xc,%esp
c010228a:	50                   	push   %eax
c010228b:	e8 ad e0 ff ff       	call   c010033d <set_tss>
c0102290:	83 c4 10             	add    $0x10,%esp
c0102293:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102296:	c1 e0 02             	shl    $0x2,%eax
c0102299:	89 c2                	mov    %eax,%edx
c010229b:	c1 e2 04             	shl    $0x4,%edx
c010229e:	01 d0                	add    %edx,%eax
c01022a0:	83 c0 30             	add    $0x30,%eax
c01022a3:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01022a8:	8b 40 0c             	mov    0xc(%eax),%eax
c01022ab:	8b 40 08             	mov    0x8(%eax),%eax
c01022ae:	c1 e0 0c             	shl    $0xc,%eax
c01022b1:	05 00 50 13 c0       	add    $0xc0135000,%eax
c01022b6:	05 00 00 00 40       	add    $0x40000000,%eax
c01022bb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01022be:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01022c1:	0f 22 d8             	mov    %eax,%cr3
c01022c4:	66 b8 23 00          	mov    $0x23,%ax
c01022c8:	8e d8                	mov    %eax,%ds
c01022ca:	8e c0                	mov    %eax,%es
c01022cc:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01022cf:	c1 e0 02             	shl    $0x2,%eax
c01022d2:	89 c2                	mov    %eax,%edx
c01022d4:	c1 e2 04             	shl    $0x4,%edx
c01022d7:	01 d0                	add    %edx,%eax
c01022d9:	83 c0 30             	add    $0x30,%eax
c01022dc:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01022e1:	8b 40 0c             	mov    0xc(%eax),%eax
c01022e4:	8b 40 04             	mov    0x4(%eax),%eax
c01022e7:	89 c4                	mov    %eax,%esp
c01022e9:	61                   	popa   
c01022ea:	83 c4 08             	add    $0x8,%esp
c01022ed:	cf                   	iret   
c01022ee:	c9                   	leave  
c01022ef:	c3                   	ret    

c01022f0 <time_treat>:
c01022f0:	55                   	push   %ebp
c01022f1:	89 e5                	mov    %esp,%ebp
c01022f3:	53                   	push   %ebx
c01022f4:	83 ec 14             	sub    $0x14,%esp
c01022f7:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c01022fc:	83 f8 01             	cmp    $0x1,%eax
c01022ff:	0f 84 eb 00 00 00    	je     c01023f0 <time_treat+0x100>
c0102305:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c010230a:	c1 e0 02             	shl    $0x2,%eax
c010230d:	89 c2                	mov    %eax,%edx
c010230f:	c1 e2 04             	shl    $0x4,%edx
c0102312:	01 d0                	add    %edx,%eax
c0102314:	83 c0 30             	add    $0x30,%eax
c0102317:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010231c:	8b 40 0c             	mov    0xc(%eax),%eax
c010231f:	8b 50 38             	mov    0x38(%eax),%edx
c0102322:	83 ea 01             	sub    $0x1,%edx
c0102325:	89 50 38             	mov    %edx,0x38(%eax)
c0102328:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c010232d:	c1 e0 02             	shl    $0x2,%eax
c0102330:	89 c2                	mov    %eax,%edx
c0102332:	c1 e2 04             	shl    $0x4,%edx
c0102335:	01 d0                	add    %edx,%eax
c0102337:	83 c0 30             	add    $0x30,%eax
c010233a:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010233f:	8b 40 0c             	mov    0xc(%eax),%eax
c0102342:	8b 40 38             	mov    0x38(%eax),%eax
c0102345:	85 c0                	test   %eax,%eax
c0102347:	0f 85 2b 01 00 00    	jne    c0102478 <time_treat+0x188>
c010234d:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102352:	c1 e0 02             	shl    $0x2,%eax
c0102355:	89 c2                	mov    %eax,%edx
c0102357:	c1 e2 04             	shl    $0x4,%edx
c010235a:	01 d0                	add    %edx,%eax
c010235c:	83 c0 30             	add    $0x30,%eax
c010235f:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102364:	8b 40 0c             	mov    0xc(%eax),%eax
c0102367:	8b 40 08             	mov    0x8(%eax),%eax
c010236a:	89 c3                	mov    %eax,%ebx
c010236c:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102371:	c1 e0 02             	shl    $0x2,%eax
c0102374:	89 c2                	mov    %eax,%edx
c0102376:	c1 e2 04             	shl    $0x4,%edx
c0102379:	01 d0                	add    %edx,%eax
c010237b:	83 c0 30             	add    $0x30,%eax
c010237e:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102383:	8b 40 0c             	mov    0xc(%eax),%eax
c0102386:	8b 50 30             	mov    0x30(%eax),%edx
c0102389:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c010238e:	c1 e0 02             	shl    $0x2,%eax
c0102391:	89 c1                	mov    %eax,%ecx
c0102393:	c1 e1 04             	shl    $0x4,%ecx
c0102396:	01 c8                	add    %ecx,%eax
c0102398:	83 c0 30             	add    $0x30,%eax
c010239b:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01023a0:	8b 40 0c             	mov    0xc(%eax),%eax
c01023a3:	83 c0 0c             	add    $0xc,%eax
c01023a6:	83 ec 08             	sub    $0x8,%esp
c01023a9:	53                   	push   %ebx
c01023aa:	52                   	push   %edx
c01023ab:	68 c8 00 00 00       	push   $0xc8
c01023b0:	50                   	push   %eax
c01023b1:	ff 75 08             	pushl  0x8(%ebp)
c01023b4:	6a 02                	push   $0x2
c01023b6:	e8 2c f5 ff ff       	call   c01018e7 <add_PCB>
c01023bb:	83 c4 20             	add    $0x20,%esp
c01023be:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01023c3:	c1 e0 02             	shl    $0x2,%eax
c01023c6:	89 c2                	mov    %eax,%edx
c01023c8:	c1 e2 04             	shl    $0x4,%edx
c01023cb:	01 d0                	add    %edx,%eax
c01023cd:	83 c0 30             	add    $0x30,%eax
c01023d0:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01023d5:	8b 40 0c             	mov    0xc(%eax),%eax
c01023d8:	8b 00                	mov    (%eax),%eax
c01023da:	83 ec 0c             	sub    $0xc,%esp
c01023dd:	50                   	push   %eax
c01023de:	e8 d3 f8 ff ff       	call   c0101cb6 <delete_PCB>
c01023e3:	83 c4 10             	add    $0x10,%esp
c01023e6:	e8 b5 fc ff ff       	call   c01020a0 <reschedule>
c01023eb:	e9 88 00 00 00       	jmp    c0102478 <time_treat+0x188>
c01023f0:	8b 45 08             	mov    0x8(%ebp),%eax
c01023f3:	8b 10                	mov    (%eax),%edx
c01023f5:	89 15 00 31 13 c0    	mov    %edx,0xc0133100
c01023fb:	8b 50 04             	mov    0x4(%eax),%edx
c01023fe:	89 15 04 31 13 c0    	mov    %edx,0xc0133104
c0102404:	8b 50 08             	mov    0x8(%eax),%edx
c0102407:	89 15 08 31 13 c0    	mov    %edx,0xc0133108
c010240d:	8b 50 0c             	mov    0xc(%eax),%edx
c0102410:	89 15 0c 31 13 c0    	mov    %edx,0xc013310c
c0102416:	8b 50 10             	mov    0x10(%eax),%edx
c0102419:	89 15 10 31 13 c0    	mov    %edx,0xc0133110
c010241f:	8b 50 14             	mov    0x14(%eax),%edx
c0102422:	89 15 14 31 13 c0    	mov    %edx,0xc0133114
c0102428:	8b 50 18             	mov    0x18(%eax),%edx
c010242b:	89 15 18 31 13 c0    	mov    %edx,0xc0133118
c0102431:	8b 50 1c             	mov    0x1c(%eax),%edx
c0102434:	89 15 1c 31 13 c0    	mov    %edx,0xc013311c
c010243a:	8b 50 20             	mov    0x20(%eax),%edx
c010243d:	89 15 20 31 13 c0    	mov    %edx,0xc0133120
c0102443:	8b 50 24             	mov    0x24(%eax),%edx
c0102446:	89 15 24 31 13 c0    	mov    %edx,0xc0133124
c010244c:	8b 50 28             	mov    0x28(%eax),%edx
c010244f:	89 15 28 31 13 c0    	mov    %edx,0xc0133128
c0102455:	8b 50 2c             	mov    0x2c(%eax),%edx
c0102458:	89 15 2c 31 13 c0    	mov    %edx,0xc013312c
c010245e:	8b 50 30             	mov    0x30(%eax),%edx
c0102461:	89 15 30 31 13 c0    	mov    %edx,0xc0133130
c0102467:	8b 50 34             	mov    0x34(%eax),%edx
c010246a:	89 15 34 31 13 c0    	mov    %edx,0xc0133134
c0102470:	8b 40 38             	mov    0x38(%eax),%eax
c0102473:	a3 38 31 13 c0       	mov    %eax,0xc0133138
c0102478:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c010247f:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0102484:	85 c0                	test   %eax,%eax
c0102486:	0f 84 99 00 00 00    	je     c0102525 <time_treat+0x235>
c010248c:	a1 c8 f0 10 c0       	mov    0xc010f0c8,%eax
c0102491:	c1 e0 02             	shl    $0x2,%eax
c0102494:	89 c2                	mov    %eax,%edx
c0102496:	c1 e2 04             	shl    $0x4,%edx
c0102499:	01 d0                	add    %edx,%eax
c010249b:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01024a0:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01024a3:	eb 7a                	jmp    c010251f <time_treat+0x22f>
c01024a5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024a8:	8b 40 38             	mov    0x38(%eax),%eax
c01024ab:	8d 50 ff             	lea    -0x1(%eax),%edx
c01024ae:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024b1:	89 50 38             	mov    %edx,0x38(%eax)
c01024b4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024b7:	8b 40 38             	mov    0x38(%eax),%eax
c01024ba:	85 c0                	test   %eax,%eax
c01024bc:	75 58                	jne    c0102516 <time_treat+0x226>
c01024be:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c01024c5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024c8:	8b 40 08             	mov    0x8(%eax),%eax
c01024cb:	89 c3                	mov    %eax,%ebx
c01024cd:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024d0:	8b 50 30             	mov    0x30(%eax),%edx
c01024d3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024d6:	8d 48 0c             	lea    0xc(%eax),%ecx
c01024d9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024dc:	8b 40 04             	mov    0x4(%eax),%eax
c01024df:	83 ec 08             	sub    $0x8,%esp
c01024e2:	53                   	push   %ebx
c01024e3:	52                   	push   %edx
c01024e4:	68 c8 00 00 00       	push   $0xc8
c01024e9:	51                   	push   %ecx
c01024ea:	50                   	push   %eax
c01024eb:	6a 02                	push   $0x2
c01024ed:	e8 f5 f3 ff ff       	call   c01018e7 <add_PCB>
c01024f2:	83 c4 20             	add    $0x20,%esp
c01024f5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024f8:	8b 00                	mov    (%eax),%eax
c01024fa:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01024fd:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102500:	8b 40 3c             	mov    0x3c(%eax),%eax
c0102503:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102506:	83 ec 0c             	sub    $0xc,%esp
c0102509:	ff 75 ec             	pushl  -0x14(%ebp)
c010250c:	e8 a5 f7 ff ff       	call   c0101cb6 <delete_PCB>
c0102511:	83 c4 10             	add    $0x10,%esp
c0102514:	eb 09                	jmp    c010251f <time_treat+0x22f>
c0102516:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102519:	8b 40 3c             	mov    0x3c(%eax),%eax
c010251c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010251f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0102523:	75 80                	jne    c01024a5 <time_treat+0x1b5>
c0102525:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102529:	74 0f                	je     c010253a <time_treat+0x24a>
c010252b:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c0102530:	83 f8 01             	cmp    $0x1,%eax
c0102533:	75 05                	jne    c010253a <time_treat+0x24a>
c0102535:	e8 66 fb ff ff       	call   c01020a0 <reschedule>
c010253a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c010253d:	c9                   	leave  
c010253e:	c3                   	ret    

c010253f <process_exit>:
c010253f:	55                   	push   %ebp
c0102540:	89 e5                	mov    %esp,%ebp
c0102542:	83 ec 08             	sub    $0x8,%esp
c0102545:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c010254a:	83 f8 01             	cmp    $0x1,%eax
c010254d:	75 15                	jne    c0102564 <process_exit+0x25>
c010254f:	83 ec 0c             	sub    $0xc,%esp
c0102552:	68 21 35 10 c0       	push   $0xc0103521
c0102557:	e8 2d ec ff ff       	call   c0101189 <printk>
c010255c:	83 c4 10             	add    $0x10,%esp
c010255f:	e9 84 00 00 00       	jmp    c01025e8 <process_exit+0xa9>
c0102564:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102569:	c1 e0 02             	shl    $0x2,%eax
c010256c:	89 c2                	mov    %eax,%edx
c010256e:	c1 e2 04             	shl    $0x4,%edx
c0102571:	01 d0                	add    %edx,%eax
c0102573:	83 c0 30             	add    $0x30,%eax
c0102576:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010257b:	8b 40 0c             	mov    0xc(%eax),%eax
c010257e:	8b 40 08             	mov    0x8(%eax),%eax
c0102581:	83 ec 08             	sub    $0x8,%esp
c0102584:	50                   	push   %eax
c0102585:	68 34 35 10 c0       	push   $0xc0103534
c010258a:	e8 fa eb ff ff       	call   c0101189 <printk>
c010258f:	83 c4 10             	add    $0x10,%esp
c0102592:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102597:	c1 e0 02             	shl    $0x2,%eax
c010259a:	89 c2                	mov    %eax,%edx
c010259c:	c1 e2 04             	shl    $0x4,%edx
c010259f:	01 d0                	add    %edx,%eax
c01025a1:	83 c0 30             	add    $0x30,%eax
c01025a4:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01025a9:	8b 40 0c             	mov    0xc(%eax),%eax
c01025ac:	8b 40 08             	mov    0x8(%eax),%eax
c01025af:	83 ec 0c             	sub    $0xc,%esp
c01025b2:	50                   	push   %eax
c01025b3:	e8 a6 f1 ff ff       	call   c010175e <free_a_pid>
c01025b8:	83 c4 10             	add    $0x10,%esp
c01025bb:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01025c0:	c1 e0 02             	shl    $0x2,%eax
c01025c3:	89 c2                	mov    %eax,%edx
c01025c5:	c1 e2 04             	shl    $0x4,%edx
c01025c8:	01 d0                	add    %edx,%eax
c01025ca:	83 c0 30             	add    $0x30,%eax
c01025cd:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01025d2:	8b 40 0c             	mov    0xc(%eax),%eax
c01025d5:	8b 00                	mov    (%eax),%eax
c01025d7:	83 ec 0c             	sub    $0xc,%esp
c01025da:	50                   	push   %eax
c01025db:	e8 d6 f6 ff ff       	call   c0101cb6 <delete_PCB>
c01025e0:	83 c4 10             	add    $0x10,%esp
c01025e3:	e8 b8 fa ff ff       	call   c01020a0 <reschedule>
c01025e8:	c9                   	leave  
c01025e9:	c3                   	ret    

c01025ea <load_PCB>:
c01025ea:	55                   	push   %ebp
c01025eb:	89 e5                	mov    %esp,%ebp
c01025ed:	83 ec 18             	sub    $0x18,%esp
c01025f0:	e8 14 f1 ff ff       	call   c0101709 <get_free_pid>
c01025f5:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01025f8:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c01025fd:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0102600:	c1 e2 0c             	shl    $0xc,%edx
c0102603:	81 c2 00 50 13 c0    	add    $0xc0135000,%edx
c0102609:	83 ec 04             	sub    $0x4,%esp
c010260c:	68 00 10 00 00       	push   $0x1000
c0102611:	50                   	push   %eax
c0102612:	52                   	push   %edx
c0102613:	e8 96 eb ff ff       	call   c01011ae <my_memcpy>
c0102618:	83 c4 10             	add    $0x10,%esp
c010261b:	c7 45 ec 00 04 00 00 	movl   $0x400,-0x14(%ebp)
c0102622:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102629:	eb 1d                	jmp    c0102648 <load_PCB+0x5e>
c010262b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010262e:	0f b7 04 c5 44 f0 1a 	movzwl -0x3fe50fbc(,%eax,8),%eax
c0102635:	c0 
c0102636:	8d 50 01             	lea    0x1(%eax),%edx
c0102639:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010263c:	66 89 14 c5 44 f0 1a 	mov    %dx,-0x3fe50fbc(,%eax,8)
c0102643:	c0 
c0102644:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102648:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010264b:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c010264e:	7c db                	jl     c010262b <load_PCB+0x41>
c0102650:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102653:	c1 e0 0c             	shl    $0xc,%eax
c0102656:	05 00 50 13 c0       	add    $0xc0135000,%eax
c010265b:	83 ec 08             	sub    $0x8,%esp
c010265e:	50                   	push   %eax
c010265f:	ff 75 08             	pushl  0x8(%ebp)
c0102662:	e8 15 ed ff ff       	call   c010137c <load>
c0102667:	83 c4 10             	add    $0x10,%esp
c010266a:	89 c1                	mov    %eax,%ecx
c010266c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010266f:	89 c2                	mov    %eax,%edx
c0102671:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102678:	89 c2                	mov    %eax,%edx
c010267a:	89 d0                	mov    %edx,%eax
c010267c:	c1 e0 04             	shl    $0x4,%eax
c010267f:	29 d0                	sub    %edx,%eax
c0102681:	83 c0 20             	add    $0x20,%eax
c0102684:	05 00 31 13 c0       	add    $0xc0133100,%eax
c0102689:	89 48 08             	mov    %ecx,0x8(%eax)
c010268c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010268f:	89 c2                	mov    %eax,%edx
c0102691:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102698:	89 c2                	mov    %eax,%edx
c010269a:	89 d0                	mov    %edx,%eax
c010269c:	c1 e0 04             	shl    $0x4,%eax
c010269f:	29 d0                	sub    %edx,%eax
c01026a1:	83 c0 20             	add    $0x20,%eax
c01026a4:	05 00 31 13 c0       	add    $0xc0133100,%eax
c01026a9:	c7 40 0c 1b 00 00 00 	movl   $0x1b,0xc(%eax)
c01026b0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01026b3:	89 c2                	mov    %eax,%edx
c01026b5:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01026bc:	89 c2                	mov    %eax,%edx
c01026be:	89 d0                	mov    %edx,%eax
c01026c0:	c1 e0 04             	shl    $0x4,%eax
c01026c3:	29 d0                	sub    %edx,%eax
c01026c5:	83 c0 30             	add    $0x30,%eax
c01026c8:	05 00 31 13 c0       	add    $0xc0133100,%eax
c01026cd:	c7 00 02 02 00 00    	movl   $0x202,(%eax)
c01026d3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01026d6:	89 c2                	mov    %eax,%edx
c01026d8:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01026df:	89 c2                	mov    %eax,%edx
c01026e1:	89 d0                	mov    %edx,%eax
c01026e3:	c1 e0 04             	shl    $0x4,%eax
c01026e6:	29 d0                	sub    %edx,%eax
c01026e8:	83 c0 30             	add    $0x30,%eax
c01026eb:	05 00 31 13 c0       	add    $0xc0133100,%eax
c01026f0:	c7 40 04 f0 ff 60 00 	movl   $0x60fff0,0x4(%eax)
c01026f7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01026fa:	89 c2                	mov    %eax,%edx
c01026fc:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102703:	89 c2                	mov    %eax,%edx
c0102705:	89 d0                	mov    %edx,%eax
c0102707:	c1 e0 04             	shl    $0x4,%eax
c010270a:	29 d0                	sub    %edx,%eax
c010270c:	83 c0 30             	add    $0x30,%eax
c010270f:	05 00 31 13 c0       	add    $0xc0133100,%eax
c0102714:	c7 40 08 23 00 00 00 	movl   $0x23,0x8(%eax)
c010271b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010271e:	89 c2                	mov    %eax,%edx
c0102720:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102727:	89 c2                	mov    %eax,%edx
c0102729:	89 d0                	mov    %edx,%eax
c010272b:	c1 e0 04             	shl    $0x4,%eax
c010272e:	29 d0                	sub    %edx,%eax
c0102730:	05 00 31 13 c0       	add    $0xc0133100,%eax
c0102735:	83 ec 08             	sub    $0x8,%esp
c0102738:	ff 75 f0             	pushl  -0x10(%ebp)
c010273b:	6a 00                	push   $0x0
c010273d:	68 c8 00 00 00       	push   $0xc8
c0102742:	ff 75 0c             	pushl  0xc(%ebp)
c0102745:	50                   	push   %eax
c0102746:	6a 01                	push   $0x1
c0102748:	e8 9a f1 ff ff       	call   c01018e7 <add_PCB>
c010274d:	83 c4 20             	add    $0x20,%esp
c0102750:	c9                   	leave  
c0102751:	c3                   	ret    

c0102752 <my_sleep>:
c0102752:	55                   	push   %ebp
c0102753:	89 e5                	mov    %esp,%ebp
c0102755:	53                   	push   %ebx
c0102756:	83 ec 04             	sub    $0x4,%esp
c0102759:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c010275e:	83 f8 01             	cmp    $0x1,%eax
c0102761:	75 15                	jne    c0102778 <my_sleep+0x26>
c0102763:	83 ec 0c             	sub    $0xc,%esp
c0102766:	68 45 35 10 c0       	push   $0xc0103545
c010276b:	e8 19 ea ff ff       	call   c0101189 <printk>
c0102770:	83 c4 10             	add    $0x10,%esp
c0102773:	e9 9c 00 00 00       	jmp    c0102814 <my_sleep+0xc2>
c0102778:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c010277d:	c1 e0 02             	shl    $0x2,%eax
c0102780:	89 c2                	mov    %eax,%edx
c0102782:	c1 e2 04             	shl    $0x4,%edx
c0102785:	01 d0                	add    %edx,%eax
c0102787:	83 c0 30             	add    $0x30,%eax
c010278a:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010278f:	8b 40 0c             	mov    0xc(%eax),%eax
c0102792:	8b 40 08             	mov    0x8(%eax),%eax
c0102795:	89 c3                	mov    %eax,%ebx
c0102797:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c010279c:	c1 e0 02             	shl    $0x2,%eax
c010279f:	89 c2                	mov    %eax,%edx
c01027a1:	c1 e2 04             	shl    $0x4,%edx
c01027a4:	01 d0                	add    %edx,%eax
c01027a6:	83 c0 30             	add    $0x30,%eax
c01027a9:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01027ae:	8b 40 0c             	mov    0xc(%eax),%eax
c01027b1:	8b 50 30             	mov    0x30(%eax),%edx
c01027b4:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01027b9:	c1 e0 02             	shl    $0x2,%eax
c01027bc:	89 c1                	mov    %eax,%ecx
c01027be:	c1 e1 04             	shl    $0x4,%ecx
c01027c1:	01 c8                	add    %ecx,%eax
c01027c3:	83 c0 30             	add    $0x30,%eax
c01027c6:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01027cb:	8b 40 0c             	mov    0xc(%eax),%eax
c01027ce:	83 c0 0c             	add    $0xc,%eax
c01027d1:	83 ec 08             	sub    $0x8,%esp
c01027d4:	53                   	push   %ebx
c01027d5:	52                   	push   %edx
c01027d6:	ff 75 08             	pushl  0x8(%ebp)
c01027d9:	50                   	push   %eax
c01027da:	ff 75 0c             	pushl  0xc(%ebp)
c01027dd:	6a 03                	push   $0x3
c01027df:	e8 03 f1 ff ff       	call   c01018e7 <add_PCB>
c01027e4:	83 c4 20             	add    $0x20,%esp
c01027e7:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01027ec:	c1 e0 02             	shl    $0x2,%eax
c01027ef:	89 c2                	mov    %eax,%edx
c01027f1:	c1 e2 04             	shl    $0x4,%edx
c01027f4:	01 d0                	add    %edx,%eax
c01027f6:	83 c0 30             	add    $0x30,%eax
c01027f9:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01027fe:	8b 40 0c             	mov    0xc(%eax),%eax
c0102801:	8b 00                	mov    (%eax),%eax
c0102803:	83 ec 0c             	sub    $0xc,%esp
c0102806:	50                   	push   %eax
c0102807:	e8 aa f4 ff ff       	call   c0101cb6 <delete_PCB>
c010280c:	83 c4 10             	add    $0x10,%esp
c010280f:	e8 8c f8 ff ff       	call   c01020a0 <reschedule>
c0102814:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102817:	c9                   	leave  
c0102818:	c3                   	ret    

c0102819 <my_fork>:
c0102819:	55                   	push   %ebp
c010281a:	89 e5                	mov    %esp,%ebp
c010281c:	56                   	push   %esi
c010281d:	53                   	push   %ebx
c010281e:	83 ec 10             	sub    $0x10,%esp
c0102821:	e8 e3 ee ff ff       	call   c0101709 <get_free_pid>
c0102826:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102829:	83 ec 08             	sub    $0x8,%esp
c010282c:	ff 75 f4             	pushl  -0xc(%ebp)
c010282f:	68 61 35 10 c0       	push   $0xc0103561
c0102834:	e8 50 e9 ff ff       	call   c0101189 <printk>
c0102839:	83 c4 10             	add    $0x10,%esp
c010283c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010283f:	c1 e0 02             	shl    $0x2,%eax
c0102842:	89 c2                	mov    %eax,%edx
c0102844:	c1 e2 04             	shl    $0x4,%edx
c0102847:	29 c2                	sub    %eax,%edx
c0102849:	89 d0                	mov    %edx,%eax
c010284b:	8d 90 00 31 13 c0    	lea    -0x3feccf00(%eax),%edx
c0102851:	8b 45 08             	mov    0x8(%ebp),%eax
c0102854:	8b 08                	mov    (%eax),%ecx
c0102856:	89 0a                	mov    %ecx,(%edx)
c0102858:	8b 48 04             	mov    0x4(%eax),%ecx
c010285b:	89 4a 04             	mov    %ecx,0x4(%edx)
c010285e:	8b 48 08             	mov    0x8(%eax),%ecx
c0102861:	89 4a 08             	mov    %ecx,0x8(%edx)
c0102864:	8b 48 0c             	mov    0xc(%eax),%ecx
c0102867:	89 4a 0c             	mov    %ecx,0xc(%edx)
c010286a:	8b 48 10             	mov    0x10(%eax),%ecx
c010286d:	89 4a 10             	mov    %ecx,0x10(%edx)
c0102870:	8b 48 14             	mov    0x14(%eax),%ecx
c0102873:	89 4a 14             	mov    %ecx,0x14(%edx)
c0102876:	8b 48 18             	mov    0x18(%eax),%ecx
c0102879:	89 4a 18             	mov    %ecx,0x18(%edx)
c010287c:	8b 48 1c             	mov    0x1c(%eax),%ecx
c010287f:	89 4a 1c             	mov    %ecx,0x1c(%edx)
c0102882:	8b 48 20             	mov    0x20(%eax),%ecx
c0102885:	89 4a 20             	mov    %ecx,0x20(%edx)
c0102888:	8b 48 24             	mov    0x24(%eax),%ecx
c010288b:	89 4a 24             	mov    %ecx,0x24(%edx)
c010288e:	8b 48 28             	mov    0x28(%eax),%ecx
c0102891:	89 4a 28             	mov    %ecx,0x28(%edx)
c0102894:	8b 48 2c             	mov    0x2c(%eax),%ecx
c0102897:	89 4a 2c             	mov    %ecx,0x2c(%edx)
c010289a:	8b 48 30             	mov    0x30(%eax),%ecx
c010289d:	89 4a 30             	mov    %ecx,0x30(%edx)
c01028a0:	8b 48 34             	mov    0x34(%eax),%ecx
c01028a3:	89 4a 34             	mov    %ecx,0x34(%edx)
c01028a6:	8b 40 38             	mov    0x38(%eax),%eax
c01028a9:	89 42 38             	mov    %eax,0x38(%edx)
c01028ac:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01028af:	89 c2                	mov    %eax,%edx
c01028b1:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01028b8:	89 c2                	mov    %eax,%edx
c01028ba:	89 d0                	mov    %edx,%eax
c01028bc:	c1 e0 04             	shl    $0x4,%eax
c01028bf:	29 d0                	sub    %edx,%eax
c01028c1:	83 c0 10             	add    $0x10,%eax
c01028c4:	05 00 31 13 c0       	add    $0xc0133100,%eax
c01028c9:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c01028d0:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c01028d5:	83 f8 01             	cmp    $0x1,%eax
c01028d8:	75 1a                	jne    c01028f4 <my_fork+0xdb>
c01028da:	83 ec 0c             	sub    $0xc,%esp
c01028dd:	68 70 35 10 c0       	push   $0xc0103570
c01028e2:	e8 a2 e8 ff ff       	call   c0101189 <printk>
c01028e7:	83 c4 10             	add    $0x10,%esp
c01028ea:	b8 00 00 00 00       	mov    $0x0,%eax
c01028ef:	e9 03 01 00 00       	jmp    c01029f7 <my_fork+0x1de>
c01028f4:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c01028f9:	8b 55 f4             	mov    -0xc(%ebp),%edx
c01028fc:	c1 e2 0c             	shl    $0xc,%edx
c01028ff:	81 c2 00 50 13 c0    	add    $0xc0135000,%edx
c0102905:	83 ec 04             	sub    $0x4,%esp
c0102908:	68 00 10 00 00       	push   $0x1000
c010290d:	50                   	push   %eax
c010290e:	52                   	push   %edx
c010290f:	e8 9a e8 ff ff       	call   c01011ae <my_memcpy>
c0102914:	83 c4 10             	add    $0x10,%esp
c0102917:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c010291c:	c1 e0 02             	shl    $0x2,%eax
c010291f:	89 c2                	mov    %eax,%edx
c0102921:	c1 e2 04             	shl    $0x4,%edx
c0102924:	01 d0                	add    %edx,%eax
c0102926:	83 c0 30             	add    $0x30,%eax
c0102929:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010292e:	8b 40 0c             	mov    0xc(%eax),%eax
c0102931:	8b 58 08             	mov    0x8(%eax),%ebx
c0102934:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102939:	c1 e0 02             	shl    $0x2,%eax
c010293c:	89 c2                	mov    %eax,%edx
c010293e:	c1 e2 04             	shl    $0x4,%edx
c0102941:	01 d0                	add    %edx,%eax
c0102943:	83 c0 30             	add    $0x30,%eax
c0102946:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010294b:	8b 40 0c             	mov    0xc(%eax),%eax
c010294e:	8b 48 38             	mov    0x38(%eax),%ecx
c0102951:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102956:	c1 e0 02             	shl    $0x2,%eax
c0102959:	89 c2                	mov    %eax,%edx
c010295b:	c1 e2 04             	shl    $0x4,%edx
c010295e:	01 d0                	add    %edx,%eax
c0102960:	83 c0 30             	add    $0x30,%eax
c0102963:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102968:	8b 40 0c             	mov    0xc(%eax),%eax
c010296b:	8d 70 0c             	lea    0xc(%eax),%esi
c010296e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102971:	89 c2                	mov    %eax,%edx
c0102973:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c010297a:	89 c2                	mov    %eax,%edx
c010297c:	89 d0                	mov    %edx,%eax
c010297e:	c1 e0 04             	shl    $0x4,%eax
c0102981:	29 d0                	sub    %edx,%eax
c0102983:	05 00 31 13 c0       	add    $0xc0133100,%eax
c0102988:	83 ec 08             	sub    $0x8,%esp
c010298b:	ff 75 f4             	pushl  -0xc(%ebp)
c010298e:	53                   	push   %ebx
c010298f:	51                   	push   %ecx
c0102990:	56                   	push   %esi
c0102991:	50                   	push   %eax
c0102992:	6a 01                	push   $0x1
c0102994:	e8 4e ef ff ff       	call   c01018e7 <add_PCB>
c0102999:	83 c4 20             	add    $0x20,%esp
c010299c:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01029a1:	c1 e0 02             	shl    $0x2,%eax
c01029a4:	89 c2                	mov    %eax,%edx
c01029a6:	c1 e2 04             	shl    $0x4,%edx
c01029a9:	01 d0                	add    %edx,%eax
c01029ab:	83 c0 30             	add    $0x30,%eax
c01029ae:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01029b3:	8b 40 0c             	mov    0xc(%eax),%eax
c01029b6:	8b 40 08             	mov    0x8(%eax),%eax
c01029b9:	c1 e0 0c             	shl    $0xc,%eax
c01029bc:	8d 90 00 50 13 c0    	lea    -0x3fecb000(%eax),%edx
c01029c2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01029c5:	c1 e0 0c             	shl    $0xc,%eax
c01029c8:	05 00 50 13 c0       	add    $0xc0135000,%eax
c01029cd:	83 ec 08             	sub    $0x8,%esp
c01029d0:	52                   	push   %edx
c01029d1:	50                   	push   %eax
c01029d2:	e8 68 07 00 00       	call   c010313f <copy_pgdir>
c01029d7:	83 c4 10             	add    $0x10,%esp
c01029da:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01029df:	c1 e0 02             	shl    $0x2,%eax
c01029e2:	89 c2                	mov    %eax,%edx
c01029e4:	c1 e2 04             	shl    $0x4,%edx
c01029e7:	01 d0                	add    %edx,%eax
c01029e9:	83 c0 30             	add    $0x30,%eax
c01029ec:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01029f1:	8b 40 0c             	mov    0xc(%eax),%eax
c01029f4:	8b 40 08             	mov    0x8(%eax),%eax
c01029f7:	8d 65 f8             	lea    -0x8(%ebp),%esp
c01029fa:	5b                   	pop    %ebx
c01029fb:	5e                   	pop    %esi
c01029fc:	5d                   	pop    %ebp
c01029fd:	c3                   	ret    

c01029fe <_paddr>:
c01029fe:	55                   	push   %ebp
c01029ff:	89 e5                	mov    %esp,%ebp
c0102a01:	83 ec 08             	sub    $0x8,%esp
c0102a04:	8b 45 10             	mov    0x10(%ebp),%eax
c0102a07:	3d ff ff ff bf       	cmp    $0xbfffffff,%eax
c0102a0c:	77 16                	ja     c0102a24 <_paddr+0x26>
c0102a0e:	ff 75 10             	pushl  0x10(%ebp)
c0102a11:	68 ac 35 10 c0       	push   $0xc01035ac
c0102a16:	ff 75 0c             	pushl  0xc(%ebp)
c0102a19:	ff 75 08             	pushl  0x8(%ebp)
c0102a1c:	e8 68 e7 ff ff       	call   c0101189 <printk>
c0102a21:	83 c4 10             	add    $0x10,%esp
c0102a24:	8b 45 10             	mov    0x10(%ebp),%eax
c0102a27:	05 00 00 00 40       	add    $0x40000000,%eax
c0102a2c:	c9                   	leave  
c0102a2d:	c3                   	ret    

c0102a2e <_kaddr>:
c0102a2e:	55                   	push   %ebp
c0102a2f:	89 e5                	mov    %esp,%ebp
c0102a31:	83 ec 08             	sub    $0x8,%esp
c0102a34:	8b 45 10             	mov    0x10(%ebp),%eax
c0102a37:	c1 e8 0c             	shr    $0xc,%eax
c0102a3a:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0102a3f:	76 13                	jbe    c0102a54 <_kaddr+0x26>
c0102a41:	83 ec 08             	sub    $0x8,%esp
c0102a44:	ff 75 10             	pushl  0x10(%ebp)
c0102a47:	68 d0 35 10 c0       	push   $0xc01035d0
c0102a4c:	e8 38 e7 ff ff       	call   c0101189 <printk>
c0102a51:	83 c4 10             	add    $0x10,%esp
c0102a54:	8b 45 10             	mov    0x10(%ebp),%eax
c0102a57:	2d 00 00 00 40       	sub    $0x40000000,%eax
c0102a5c:	c9                   	leave  
c0102a5d:	c3                   	ret    

c0102a5e <page2pa>:
c0102a5e:	55                   	push   %ebp
c0102a5f:	89 e5                	mov    %esp,%ebp
c0102a61:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a64:	ba 40 f0 1a c0       	mov    $0xc01af040,%edx
c0102a69:	29 d0                	sub    %edx,%eax
c0102a6b:	c1 f8 03             	sar    $0x3,%eax
c0102a6e:	c1 e0 0c             	shl    $0xc,%eax
c0102a71:	5d                   	pop    %ebp
c0102a72:	c3                   	ret    

c0102a73 <pa2page>:
c0102a73:	55                   	push   %ebp
c0102a74:	89 e5                	mov    %esp,%ebp
c0102a76:	83 ec 08             	sub    $0x8,%esp
c0102a79:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a7c:	c1 e8 0c             	shr    $0xc,%eax
c0102a7f:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0102a84:	76 10                	jbe    c0102a96 <pa2page+0x23>
c0102a86:	83 ec 0c             	sub    $0xc,%esp
c0102a89:	68 f4 35 10 c0       	push   $0xc01035f4
c0102a8e:	e8 f6 e6 ff ff       	call   c0101189 <printk>
c0102a93:	83 c4 10             	add    $0x10,%esp
c0102a96:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a99:	c1 e8 0c             	shr    $0xc,%eax
c0102a9c:	c1 e0 03             	shl    $0x3,%eax
c0102a9f:	05 40 f0 1a c0       	add    $0xc01af040,%eax
c0102aa4:	c9                   	leave  
c0102aa5:	c3                   	ret    

c0102aa6 <page2kva>:
c0102aa6:	55                   	push   %ebp
c0102aa7:	89 e5                	mov    %esp,%ebp
c0102aa9:	83 ec 08             	sub    $0x8,%esp
c0102aac:	ff 75 08             	pushl  0x8(%ebp)
c0102aaf:	e8 aa ff ff ff       	call   c0102a5e <page2pa>
c0102ab4:	83 c4 04             	add    $0x4,%esp
c0102ab7:	83 ec 04             	sub    $0x4,%esp
c0102aba:	50                   	push   %eax
c0102abb:	6a 52                	push   $0x52
c0102abd:	68 13 36 10 c0       	push   $0xc0103613
c0102ac2:	e8 67 ff ff ff       	call   c0102a2e <_kaddr>
c0102ac7:	83 c4 10             	add    $0x10,%esp
c0102aca:	c9                   	leave  
c0102acb:	c3                   	ret    

c0102acc <mm_alloc>:
c0102acc:	55                   	push   %ebp
c0102acd:	89 e5                	mov    %esp,%ebp
c0102acf:	83 ec 28             	sub    $0x28,%esp
c0102ad2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102ad5:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102ad8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102adb:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102ae0:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102ae3:	c7 45 e8 00 10 00 00 	movl   $0x1000,-0x18(%ebp)
c0102aea:	8b 55 10             	mov    0x10(%ebp),%edx
c0102aed:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102af0:	01 c2                	add    %eax,%edx
c0102af2:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102af5:	01 d0                	add    %edx,%eax
c0102af7:	83 e8 01             	sub    $0x1,%eax
c0102afa:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0102afd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0102b00:	ba 00 00 00 00       	mov    $0x0,%edx
c0102b05:	f7 75 e8             	divl   -0x18(%ebp)
c0102b08:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0102b0b:	29 d0                	sub    %edx,%eax
c0102b0d:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0102b10:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102b13:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102b16:	eb 2b                	jmp    c0102b43 <mm_alloc+0x77>
c0102b18:	83 ec 0c             	sub    $0xc,%esp
c0102b1b:	6a 00                	push   $0x0
c0102b1d:	e8 9c 01 00 00       	call   c0102cbe <page_alloc>
c0102b22:	83 c4 10             	add    $0x10,%esp
c0102b25:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0102b28:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102b2b:	6a 07                	push   $0x7
c0102b2d:	50                   	push   %eax
c0102b2e:	ff 75 dc             	pushl  -0x24(%ebp)
c0102b31:	ff 75 08             	pushl  0x8(%ebp)
c0102b34:	e8 84 03 00 00       	call   c0102ebd <page_insert>
c0102b39:	83 c4 10             	add    $0x10,%esp
c0102b3c:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
c0102b43:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102b46:	3b 45 e0             	cmp    -0x20(%ebp),%eax
c0102b49:	72 cd                	jb     c0102b18 <mm_alloc+0x4c>
c0102b4b:	c9                   	leave  
c0102b4c:	c3                   	ret    

c0102b4d <init_kern_pgdir>:
c0102b4d:	55                   	push   %ebp
c0102b4e:	89 e5                	mov    %esp,%ebp
c0102b50:	53                   	push   %ebx
c0102b51:	83 ec 24             	sub    $0x24,%esp
c0102b54:	c7 45 e8 00 10 11 c0 	movl   $0xc0111000,-0x18(%ebp)
c0102b5b:	c7 45 f0 00 20 11 c0 	movl   $0xc0112000,-0x10(%ebp)
c0102b62:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102b69:	eb 3a                	jmp    c0102ba5 <init_kern_pgdir+0x58>
c0102b6b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102b6e:	05 00 03 00 00       	add    $0x300,%eax
c0102b73:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102b7a:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102b7d:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0102b80:	83 ec 04             	sub    $0x4,%esp
c0102b83:	ff 75 f0             	pushl  -0x10(%ebp)
c0102b86:	6a 42                	push   $0x42
c0102b88:	68 22 36 10 c0       	push   $0xc0103622
c0102b8d:	e8 6c fe ff ff       	call   c01029fe <_paddr>
c0102b92:	83 c4 10             	add    $0x10,%esp
c0102b95:	83 c8 03             	or     $0x3,%eax
c0102b98:	89 03                	mov    %eax,(%ebx)
c0102b9a:	81 45 f0 00 10 00 00 	addl   $0x1000,-0x10(%ebp)
c0102ba1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102ba5:	83 7d f4 1f          	cmpl   $0x1f,-0xc(%ebp)
c0102ba9:	7e c0                	jle    c0102b6b <init_kern_pgdir+0x1e>
c0102bab:	c7 45 ec 00 f0 ff 07 	movl   $0x7fff000,-0x14(%ebp)
c0102bb2:	83 6d f0 04          	subl   $0x4,-0x10(%ebp)
c0102bb6:	eb 18                	jmp    c0102bd0 <init_kern_pgdir+0x83>
c0102bb8:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102bbb:	83 c8 07             	or     $0x7,%eax
c0102bbe:	89 c2                	mov    %eax,%edx
c0102bc0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102bc3:	89 10                	mov    %edx,(%eax)
c0102bc5:	83 6d f0 04          	subl   $0x4,-0x10(%ebp)
c0102bc9:	81 6d ec 00 10 00 00 	subl   $0x1000,-0x14(%ebp)
c0102bd0:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102bd4:	79 e2                	jns    c0102bb8 <init_kern_pgdir+0x6b>
c0102bd6:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102bd9:	a3 04 f0 1a c0       	mov    %eax,0xc01af004
c0102bde:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c0102be3:	83 ec 04             	sub    $0x4,%esp
c0102be6:	50                   	push   %eax
c0102be7:	6a 4f                	push   $0x4f
c0102be9:	68 22 36 10 c0       	push   $0xc0103622
c0102bee:	e8 0b fe ff ff       	call   c01029fe <_paddr>
c0102bf3:	83 c4 10             	add    $0x10,%esp
c0102bf6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0102bf9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0102bfc:	0f 22 d8             	mov    %eax,%cr3
c0102bff:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102c02:	c9                   	leave  
c0102c03:	c3                   	ret    

c0102c04 <page_init>:
c0102c04:	55                   	push   %ebp
c0102c05:	89 e5                	mov    %esp,%ebp
c0102c07:	83 ec 18             	sub    $0x18,%esp
c0102c0a:	e8 3e ff ff ff       	call   c0102b4d <init_kern_pgdir>
c0102c0f:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
c0102c16:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102c1d:	eb 11                	jmp    c0102c30 <page_init+0x2c>
c0102c1f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102c22:	66 c7 04 c5 44 f0 1a 	movw   $0x1,-0x3fe50fbc(,%eax,8)
c0102c29:	c0 01 00 
c0102c2c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102c30:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102c33:	3b 45 f4             	cmp    -0xc(%ebp),%eax
c0102c36:	77 e7                	ja     c0102c1f <page_init+0x1b>
c0102c38:	c7 45 f4 ff 7f 00 00 	movl   $0x7fff,-0xc(%ebp)
c0102c3f:	eb 31                	jmp    c0102c72 <page_init+0x6e>
c0102c41:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102c44:	66 c7 04 c5 44 f0 1a 	movw   $0x0,-0x3fe50fbc(,%eax,8)
c0102c4b:	c0 00 00 
c0102c4e:	8b 15 00 00 11 c0    	mov    0xc0110000,%edx
c0102c54:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102c57:	89 14 c5 40 f0 1a c0 	mov    %edx,-0x3fe50fc0(,%eax,8)
c0102c5e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102c61:	c1 e0 03             	shl    $0x3,%eax
c0102c64:	05 40 f0 1a c0       	add    $0xc01af040,%eax
c0102c69:	a3 00 00 11 c0       	mov    %eax,0xc0110000
c0102c6e:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
c0102c72:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102c75:	3b 45 f4             	cmp    -0xc(%ebp),%eax
c0102c78:	76 c7                	jbe    c0102c41 <page_init+0x3d>
c0102c7a:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
c0102c81:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102c84:	05 ff f9 00 00       	add    $0xf9ff,%eax
c0102c89:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0102c8c:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102c8f:	ba 00 00 00 00       	mov    $0x0,%edx
c0102c94:	f7 75 ec             	divl   -0x14(%ebp)
c0102c97:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102c9a:	29 d0                	sub    %edx,%eax
c0102c9c:	89 c2                	mov    %eax,%edx
c0102c9e:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c0102ca3:	83 ec 0c             	sub    $0xc,%esp
c0102ca6:	6a 03                	push   $0x3
c0102ca8:	68 00 00 0a 00       	push   $0xa0000
c0102cad:	52                   	push   %edx
c0102cae:	68 00 00 0a 00       	push   $0xa0000
c0102cb3:	50                   	push   %eax
c0102cb4:	e8 a1 01 00 00       	call   c0102e5a <boot_map_region>
c0102cb9:	83 c4 20             	add    $0x20,%esp
c0102cbc:	c9                   	leave  
c0102cbd:	c3                   	ret    

c0102cbe <page_alloc>:
c0102cbe:	55                   	push   %ebp
c0102cbf:	89 e5                	mov    %esp,%ebp
c0102cc1:	83 ec 18             	sub    $0x18,%esp
c0102cc4:	a1 00 00 11 c0       	mov    0xc0110000,%eax
c0102cc9:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102ccc:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102cd0:	75 07                	jne    c0102cd9 <page_alloc+0x1b>
c0102cd2:	b8 00 00 00 00       	mov    $0x0,%eax
c0102cd7:	eb 43                	jmp    c0102d1c <page_alloc+0x5e>
c0102cd9:	8b 45 08             	mov    0x8(%ebp),%eax
c0102cdc:	83 e0 01             	and    $0x1,%eax
c0102cdf:	85 c0                	test   %eax,%eax
c0102ce1:	74 21                	je     c0102d04 <page_alloc+0x46>
c0102ce3:	83 ec 0c             	sub    $0xc,%esp
c0102ce6:	ff 75 f4             	pushl  -0xc(%ebp)
c0102ce9:	e8 b8 fd ff ff       	call   c0102aa6 <page2kva>
c0102cee:	83 c4 10             	add    $0x10,%esp
c0102cf1:	83 ec 04             	sub    $0x4,%esp
c0102cf4:	68 00 10 00 00       	push   $0x1000
c0102cf9:	6a 00                	push   $0x0
c0102cfb:	50                   	push   %eax
c0102cfc:	e8 ca e4 ff ff       	call   c01011cb <my_memset>
c0102d01:	83 c4 10             	add    $0x10,%esp
c0102d04:	a1 00 00 11 c0       	mov    0xc0110000,%eax
c0102d09:	8b 00                	mov    (%eax),%eax
c0102d0b:	a3 00 00 11 c0       	mov    %eax,0xc0110000
c0102d10:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102d13:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0102d19:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102d1c:	c9                   	leave  
c0102d1d:	c3                   	ret    

c0102d1e <page_free>:
c0102d1e:	55                   	push   %ebp
c0102d1f:	89 e5                	mov    %esp,%ebp
c0102d21:	8b 15 00 00 11 c0    	mov    0xc0110000,%edx
c0102d27:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d2a:	89 10                	mov    %edx,(%eax)
c0102d2c:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d2f:	a3 00 00 11 c0       	mov    %eax,0xc0110000
c0102d34:	5d                   	pop    %ebp
c0102d35:	c3                   	ret    

c0102d36 <page_decref>:
c0102d36:	55                   	push   %ebp
c0102d37:	89 e5                	mov    %esp,%ebp
c0102d39:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d3c:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102d40:	8d 50 ff             	lea    -0x1(%eax),%edx
c0102d43:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d46:	66 89 50 04          	mov    %dx,0x4(%eax)
c0102d4a:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d4d:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102d51:	66 85 c0             	test   %ax,%ax
c0102d54:	75 0b                	jne    c0102d61 <page_decref+0x2b>
c0102d56:	ff 75 08             	pushl  0x8(%ebp)
c0102d59:	e8 c0 ff ff ff       	call   c0102d1e <page_free>
c0102d5e:	83 c4 04             	add    $0x4,%esp
c0102d61:	c9                   	leave  
c0102d62:	c3                   	ret    

c0102d63 <pgdir_walk>:
c0102d63:	55                   	push   %ebp
c0102d64:	89 e5                	mov    %esp,%ebp
c0102d66:	53                   	push   %ebx
c0102d67:	83 ec 14             	sub    $0x14,%esp
c0102d6a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102d6d:	c1 e8 16             	shr    $0x16,%eax
c0102d70:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102d73:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102d76:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102d7d:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d80:	01 d0                	add    %edx,%eax
c0102d82:	8b 00                	mov    (%eax),%eax
c0102d84:	83 e0 01             	and    $0x1,%eax
c0102d87:	85 c0                	test   %eax,%eax
c0102d89:	74 31                	je     c0102dbc <pgdir_walk+0x59>
c0102d8b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102d8e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102d95:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d98:	01 d0                	add    %edx,%eax
c0102d9a:	8b 00                	mov    (%eax),%eax
c0102d9c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102da1:	83 ec 04             	sub    $0x4,%esp
c0102da4:	50                   	push   %eax
c0102da5:	68 c8 00 00 00       	push   $0xc8
c0102daa:	68 22 36 10 c0       	push   $0xc0103622
c0102daf:	e8 7a fc ff ff       	call   c0102a2e <_kaddr>
c0102db4:	83 c4 10             	add    $0x10,%esp
c0102db7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102dba:	eb 7c                	jmp    c0102e38 <pgdir_walk+0xd5>
c0102dbc:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0102dc0:	75 0a                	jne    c0102dcc <pgdir_walk+0x69>
c0102dc2:	b8 00 00 00 00       	mov    $0x0,%eax
c0102dc7:	e9 89 00 00 00       	jmp    c0102e55 <pgdir_walk+0xf2>
c0102dcc:	83 ec 0c             	sub    $0xc,%esp
c0102dcf:	6a 01                	push   $0x1
c0102dd1:	e8 e8 fe ff ff       	call   c0102cbe <page_alloc>
c0102dd6:	83 c4 10             	add    $0x10,%esp
c0102dd9:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102ddc:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102de0:	75 07                	jne    c0102de9 <pgdir_walk+0x86>
c0102de2:	b8 00 00 00 00       	mov    $0x0,%eax
c0102de7:	eb 6c                	jmp    c0102e55 <pgdir_walk+0xf2>
c0102de9:	83 ec 0c             	sub    $0xc,%esp
c0102dec:	ff 75 ec             	pushl  -0x14(%ebp)
c0102def:	e8 b2 fc ff ff       	call   c0102aa6 <page2kva>
c0102df4:	83 c4 10             	add    $0x10,%esp
c0102df7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102dfa:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102dfd:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102e01:	8d 50 01             	lea    0x1(%eax),%edx
c0102e04:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102e07:	66 89 50 04          	mov    %dx,0x4(%eax)
c0102e0b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102e0e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102e15:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e18:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0102e1b:	83 ec 04             	sub    $0x4,%esp
c0102e1e:	ff 75 f4             	pushl  -0xc(%ebp)
c0102e21:	68 d3 00 00 00       	push   $0xd3
c0102e26:	68 22 36 10 c0       	push   $0xc0103622
c0102e2b:	e8 ce fb ff ff       	call   c01029fe <_paddr>
c0102e30:	83 c4 10             	add    $0x10,%esp
c0102e33:	83 c8 07             	or     $0x7,%eax
c0102e36:	89 03                	mov    %eax,(%ebx)
c0102e38:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102e3b:	c1 e8 0c             	shr    $0xc,%eax
c0102e3e:	25 ff 03 00 00       	and    $0x3ff,%eax
c0102e43:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0102e46:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102e49:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102e50:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102e53:	01 d0                	add    %edx,%eax
c0102e55:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102e58:	c9                   	leave  
c0102e59:	c3                   	ret    

c0102e5a <boot_map_region>:
c0102e5a:	55                   	push   %ebp
c0102e5b:	89 e5                	mov    %esp,%ebp
c0102e5d:	83 ec 18             	sub    $0x18,%esp
c0102e60:	8b 45 10             	mov    0x10(%ebp),%eax
c0102e63:	c1 e8 0c             	shr    $0xc,%eax
c0102e66:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102e69:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102e70:	eb 41                	jmp    c0102eb3 <boot_map_region+0x59>
c0102e72:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102e75:	83 ec 04             	sub    $0x4,%esp
c0102e78:	6a 01                	push   $0x1
c0102e7a:	50                   	push   %eax
c0102e7b:	ff 75 08             	pushl  0x8(%ebp)
c0102e7e:	e8 e0 fe ff ff       	call   c0102d63 <pgdir_walk>
c0102e83:	83 c4 10             	add    $0x10,%esp
c0102e86:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102e89:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102e8d:	75 02                	jne    c0102e91 <boot_map_region+0x37>
c0102e8f:	eb 2a                	jmp    c0102ebb <boot_map_region+0x61>
c0102e91:	8b 45 18             	mov    0x18(%ebp),%eax
c0102e94:	0b 45 14             	or     0x14(%ebp),%eax
c0102e97:	83 c8 01             	or     $0x1,%eax
c0102e9a:	89 c2                	mov    %eax,%edx
c0102e9c:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102e9f:	89 10                	mov    %edx,(%eax)
c0102ea1:	81 45 0c 00 10 00 00 	addl   $0x1000,0xc(%ebp)
c0102ea8:	81 45 14 00 10 00 00 	addl   $0x1000,0x14(%ebp)
c0102eaf:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102eb3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102eb6:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0102eb9:	7c b7                	jl     c0102e72 <boot_map_region+0x18>
c0102ebb:	c9                   	leave  
c0102ebc:	c3                   	ret    

c0102ebd <page_insert>:
c0102ebd:	55                   	push   %ebp
c0102ebe:	89 e5                	mov    %esp,%ebp
c0102ec0:	83 ec 18             	sub    $0x18,%esp
c0102ec3:	83 ec 04             	sub    $0x4,%esp
c0102ec6:	6a 01                	push   $0x1
c0102ec8:	ff 75 10             	pushl  0x10(%ebp)
c0102ecb:	ff 75 08             	pushl  0x8(%ebp)
c0102ece:	e8 90 fe ff ff       	call   c0102d63 <pgdir_walk>
c0102ed3:	83 c4 10             	add    $0x10,%esp
c0102ed6:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102ed9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102edd:	75 07                	jne    c0102ee6 <page_insert+0x29>
c0102edf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0102ee4:	eb 75                	jmp    c0102f5b <page_insert+0x9e>
c0102ee6:	83 ec 0c             	sub    $0xc,%esp
c0102ee9:	ff 75 0c             	pushl  0xc(%ebp)
c0102eec:	e8 6d fb ff ff       	call   c0102a5e <page2pa>
c0102ef1:	83 c4 10             	add    $0x10,%esp
c0102ef4:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102ef7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102efa:	8b 00                	mov    (%eax),%eax
c0102efc:	83 e0 01             	and    $0x1,%eax
c0102eff:	85 c0                	test   %eax,%eax
c0102f01:	74 32                	je     c0102f35 <page_insert+0x78>
c0102f03:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102f06:	8b 00                	mov    (%eax),%eax
c0102f08:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102f0d:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0102f10:	75 12                	jne    c0102f24 <page_insert+0x67>
c0102f12:	8b 45 14             	mov    0x14(%ebp),%eax
c0102f15:	0b 45 f0             	or     -0x10(%ebp),%eax
c0102f18:	83 c8 01             	or     $0x1,%eax
c0102f1b:	89 c2                	mov    %eax,%edx
c0102f1d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102f20:	89 10                	mov    %edx,(%eax)
c0102f22:	eb 11                	jmp    c0102f35 <page_insert+0x78>
c0102f24:	83 ec 08             	sub    $0x8,%esp
c0102f27:	ff 75 10             	pushl  0x10(%ebp)
c0102f2a:	ff 75 08             	pushl  0x8(%ebp)
c0102f2d:	e8 7a 00 00 00       	call   c0102fac <page_remove>
c0102f32:	83 c4 10             	add    $0x10,%esp
c0102f35:	8b 45 14             	mov    0x14(%ebp),%eax
c0102f38:	0b 45 f0             	or     -0x10(%ebp),%eax
c0102f3b:	83 c8 01             	or     $0x1,%eax
c0102f3e:	89 c2                	mov    %eax,%edx
c0102f40:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102f43:	89 10                	mov    %edx,(%eax)
c0102f45:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102f48:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102f4c:	8d 50 01             	lea    0x1(%eax),%edx
c0102f4f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102f52:	66 89 50 04          	mov    %dx,0x4(%eax)
c0102f56:	b8 00 00 00 00       	mov    $0x0,%eax
c0102f5b:	c9                   	leave  
c0102f5c:	c3                   	ret    

c0102f5d <page_lookup>:
c0102f5d:	55                   	push   %ebp
c0102f5e:	89 e5                	mov    %esp,%ebp
c0102f60:	83 ec 18             	sub    $0x18,%esp
c0102f63:	83 ec 04             	sub    $0x4,%esp
c0102f66:	6a 00                	push   $0x0
c0102f68:	ff 75 0c             	pushl  0xc(%ebp)
c0102f6b:	ff 75 08             	pushl  0x8(%ebp)
c0102f6e:	e8 f0 fd ff ff       	call   c0102d63 <pgdir_walk>
c0102f73:	83 c4 10             	add    $0x10,%esp
c0102f76:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102f79:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102f7d:	75 07                	jne    c0102f86 <page_lookup+0x29>
c0102f7f:	b8 00 00 00 00       	mov    $0x0,%eax
c0102f84:	eb 24                	jmp    c0102faa <page_lookup+0x4d>
c0102f86:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0102f8a:	74 08                	je     c0102f94 <page_lookup+0x37>
c0102f8c:	8b 45 10             	mov    0x10(%ebp),%eax
c0102f8f:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102f92:	89 10                	mov    %edx,(%eax)
c0102f94:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102f97:	8b 00                	mov    (%eax),%eax
c0102f99:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102f9e:	83 ec 0c             	sub    $0xc,%esp
c0102fa1:	50                   	push   %eax
c0102fa2:	e8 cc fa ff ff       	call   c0102a73 <pa2page>
c0102fa7:	83 c4 10             	add    $0x10,%esp
c0102faa:	c9                   	leave  
c0102fab:	c3                   	ret    

c0102fac <page_remove>:
c0102fac:	55                   	push   %ebp
c0102fad:	89 e5                	mov    %esp,%ebp
c0102faf:	83 ec 18             	sub    $0x18,%esp
c0102fb2:	8d 45 ec             	lea    -0x14(%ebp),%eax
c0102fb5:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102fb8:	83 ec 04             	sub    $0x4,%esp
c0102fbb:	ff 75 f4             	pushl  -0xc(%ebp)
c0102fbe:	ff 75 0c             	pushl  0xc(%ebp)
c0102fc1:	ff 75 08             	pushl  0x8(%ebp)
c0102fc4:	e8 94 ff ff ff       	call   c0102f5d <page_lookup>
c0102fc9:	83 c4 10             	add    $0x10,%esp
c0102fcc:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102fcf:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0102fd3:	74 2a                	je     c0102fff <page_remove+0x53>
c0102fd5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102fd8:	8b 00                	mov    (%eax),%eax
c0102fda:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0102fe0:	83 ec 0c             	sub    $0xc,%esp
c0102fe3:	ff 75 f0             	pushl  -0x10(%ebp)
c0102fe6:	e8 4b fd ff ff       	call   c0102d36 <page_decref>
c0102feb:	83 c4 10             	add    $0x10,%esp
c0102fee:	83 ec 08             	sub    $0x8,%esp
c0102ff1:	ff 75 0c             	pushl  0xc(%ebp)
c0102ff4:	ff 75 08             	pushl  0x8(%ebp)
c0102ff7:	e8 05 00 00 00       	call   c0103001 <tlb_invalidate>
c0102ffc:	83 c4 10             	add    $0x10,%esp
c0102fff:	c9                   	leave  
c0103000:	c3                   	ret    

c0103001 <tlb_invalidate>:
c0103001:	55                   	push   %ebp
c0103002:	89 e5                	mov    %esp,%ebp
c0103004:	83 ec 10             	sub    $0x10,%esp
c0103007:	8b 45 0c             	mov    0xc(%ebp),%eax
c010300a:	89 45 fc             	mov    %eax,-0x4(%ebp)
c010300d:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103010:	0f 01 38             	invlpg (%eax)
c0103013:	c9                   	leave  
c0103014:	c3                   	ret    

c0103015 <free_pgdir>:
c0103015:	55                   	push   %ebp
c0103016:	89 e5                	mov    %esp,%ebp
c0103018:	83 ec 18             	sub    $0x18,%esp
c010301b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0103022:	e9 09 01 00 00       	jmp    c0103130 <free_pgdir+0x11b>
c0103027:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010302a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103031:	8b 45 08             	mov    0x8(%ebp),%eax
c0103034:	01 d0                	add    %edx,%eax
c0103036:	8b 00                	mov    (%eax),%eax
c0103038:	83 e0 01             	and    $0x1,%eax
c010303b:	85 c0                	test   %eax,%eax
c010303d:	0f 84 e9 00 00 00    	je     c010312c <free_pgdir+0x117>
c0103043:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c0103048:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010304b:	c1 e2 02             	shl    $0x2,%edx
c010304e:	01 d0                	add    %edx,%eax
c0103050:	8b 00                	mov    (%eax),%eax
c0103052:	83 e0 01             	and    $0x1,%eax
c0103055:	85 c0                	test   %eax,%eax
c0103057:	74 05                	je     c010305e <free_pgdir+0x49>
c0103059:	e9 ce 00 00 00       	jmp    c010312c <free_pgdir+0x117>
c010305e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103061:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103068:	8b 45 08             	mov    0x8(%ebp),%eax
c010306b:	01 d0                	add    %edx,%eax
c010306d:	8b 00                	mov    (%eax),%eax
c010306f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0103074:	83 ec 04             	sub    $0x4,%esp
c0103077:	50                   	push   %eax
c0103078:	68 68 01 00 00       	push   $0x168
c010307d:	68 22 36 10 c0       	push   $0xc0103622
c0103082:	e8 a7 f9 ff ff       	call   c0102a2e <_kaddr>
c0103087:	83 c4 10             	add    $0x10,%esp
c010308a:	89 45 ec             	mov    %eax,-0x14(%ebp)
c010308d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0103094:	eb 4a                	jmp    c01030e0 <free_pgdir+0xcb>
c0103096:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0103099:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01030a0:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01030a3:	01 d0                	add    %edx,%eax
c01030a5:	8b 00                	mov    (%eax),%eax
c01030a7:	83 e0 01             	and    $0x1,%eax
c01030aa:	85 c0                	test   %eax,%eax
c01030ac:	74 2e                	je     c01030dc <free_pgdir+0xc7>
c01030ae:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01030b1:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01030b8:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01030bb:	01 d0                	add    %edx,%eax
c01030bd:	8b 00                	mov    (%eax),%eax
c01030bf:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01030c4:	83 ec 0c             	sub    $0xc,%esp
c01030c7:	50                   	push   %eax
c01030c8:	e8 a6 f9 ff ff       	call   c0102a73 <pa2page>
c01030cd:	83 c4 10             	add    $0x10,%esp
c01030d0:	83 ec 0c             	sub    $0xc,%esp
c01030d3:	50                   	push   %eax
c01030d4:	e8 5d fc ff ff       	call   c0102d36 <page_decref>
c01030d9:	83 c4 10             	add    $0x10,%esp
c01030dc:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c01030e0:	81 7d f0 ff 03 00 00 	cmpl   $0x3ff,-0x10(%ebp)
c01030e7:	7e ad                	jle    c0103096 <free_pgdir+0x81>
c01030e9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01030ec:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01030f3:	8b 45 08             	mov    0x8(%ebp),%eax
c01030f6:	01 d0                	add    %edx,%eax
c01030f8:	8b 00                	mov    (%eax),%eax
c01030fa:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01030ff:	83 ec 0c             	sub    $0xc,%esp
c0103102:	50                   	push   %eax
c0103103:	e8 6b f9 ff ff       	call   c0102a73 <pa2page>
c0103108:	83 c4 10             	add    $0x10,%esp
c010310b:	83 ec 0c             	sub    $0xc,%esp
c010310e:	50                   	push   %eax
c010310f:	e8 22 fc ff ff       	call   c0102d36 <page_decref>
c0103114:	83 c4 10             	add    $0x10,%esp
c0103117:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010311a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103121:	8b 45 08             	mov    0x8(%ebp),%eax
c0103124:	01 d0                	add    %edx,%eax
c0103126:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c010312c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0103130:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
c0103137:	0f 8e ea fe ff ff    	jle    c0103027 <free_pgdir+0x12>
c010313d:	c9                   	leave  
c010313e:	c3                   	ret    

c010313f <copy_pgdir>:
c010313f:	55                   	push   %ebp
c0103140:	89 e5                	mov    %esp,%ebp
c0103142:	53                   	push   %ebx
c0103143:	83 ec 24             	sub    $0x24,%esp
c0103146:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c010314d:	e9 d8 01 00 00       	jmp    c010332a <copy_pgdir+0x1eb>
c0103152:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103155:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010315c:	8b 45 0c             	mov    0xc(%ebp),%eax
c010315f:	01 d0                	add    %edx,%eax
c0103161:	8b 00                	mov    (%eax),%eax
c0103163:	83 e0 01             	and    $0x1,%eax
c0103166:	85 c0                	test   %eax,%eax
c0103168:	0f 84 b8 01 00 00    	je     c0103326 <copy_pgdir+0x1e7>
c010316e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103171:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103178:	8b 45 08             	mov    0x8(%ebp),%eax
c010317b:	01 d0                	add    %edx,%eax
c010317d:	8b 00                	mov    (%eax),%eax
c010317f:	83 e0 01             	and    $0x1,%eax
c0103182:	85 c0                	test   %eax,%eax
c0103184:	74 05                	je     c010318b <copy_pgdir+0x4c>
c0103186:	e9 9b 01 00 00       	jmp    c0103326 <copy_pgdir+0x1e7>
c010318b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010318e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103195:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103198:	01 d0                	add    %edx,%eax
c010319a:	8b 00                	mov    (%eax),%eax
c010319c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01031a1:	83 ec 04             	sub    $0x4,%esp
c01031a4:	50                   	push   %eax
c01031a5:	68 7c 01 00 00       	push   $0x17c
c01031aa:	68 22 36 10 c0       	push   $0xc0103622
c01031af:	e8 7a f8 ff ff       	call   c0102a2e <_kaddr>
c01031b4:	83 c4 10             	add    $0x10,%esp
c01031b7:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01031ba:	83 ec 0c             	sub    $0xc,%esp
c01031bd:	6a 01                	push   $0x1
c01031bf:	e8 fa fa ff ff       	call   c0102cbe <page_alloc>
c01031c4:	83 c4 10             	add    $0x10,%esp
c01031c7:	89 45 e8             	mov    %eax,-0x18(%ebp)
c01031ca:	8b 45 e8             	mov    -0x18(%ebp),%eax
c01031cd:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c01031d1:	8d 50 01             	lea    0x1(%eax),%edx
c01031d4:	8b 45 e8             	mov    -0x18(%ebp),%eax
c01031d7:	66 89 50 04          	mov    %dx,0x4(%eax)
c01031db:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01031de:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01031e5:	8b 45 08             	mov    0x8(%ebp),%eax
c01031e8:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c01031eb:	83 ec 0c             	sub    $0xc,%esp
c01031ee:	ff 75 e8             	pushl  -0x18(%ebp)
c01031f1:	e8 68 f8 ff ff       	call   c0102a5e <page2pa>
c01031f6:	83 c4 10             	add    $0x10,%esp
c01031f9:	89 c1                	mov    %eax,%ecx
c01031fb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01031fe:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103205:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103208:	01 d0                	add    %edx,%eax
c010320a:	8b 00                	mov    (%eax),%eax
c010320c:	25 ff 0f 00 00       	and    $0xfff,%eax
c0103211:	09 c8                	or     %ecx,%eax
c0103213:	89 03                	mov    %eax,(%ebx)
c0103215:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103218:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010321f:	8b 45 08             	mov    0x8(%ebp),%eax
c0103222:	01 d0                	add    %edx,%eax
c0103224:	8b 00                	mov    (%eax),%eax
c0103226:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c010322b:	83 ec 04             	sub    $0x4,%esp
c010322e:	50                   	push   %eax
c010322f:	68 83 01 00 00       	push   $0x183
c0103234:	68 22 36 10 c0       	push   $0xc0103622
c0103239:	e8 f0 f7 ff ff       	call   c0102a2e <_kaddr>
c010323e:	83 c4 10             	add    $0x10,%esp
c0103241:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0103244:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c010324b:	e9 c9 00 00 00       	jmp    c0103319 <copy_pgdir+0x1da>
c0103250:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0103253:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010325a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010325d:	01 d0                	add    %edx,%eax
c010325f:	8b 00                	mov    (%eax),%eax
c0103261:	83 e0 01             	and    $0x1,%eax
c0103264:	85 c0                	test   %eax,%eax
c0103266:	0f 84 a9 00 00 00    	je     c0103315 <copy_pgdir+0x1d6>
c010326c:	83 ec 0c             	sub    $0xc,%esp
c010326f:	6a 00                	push   $0x0
c0103271:	e8 48 fa ff ff       	call   c0102cbe <page_alloc>
c0103276:	83 c4 10             	add    $0x10,%esp
c0103279:	89 45 e8             	mov    %eax,-0x18(%ebp)
c010327c:	8b 45 e8             	mov    -0x18(%ebp),%eax
c010327f:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0103283:	8d 50 01             	lea    0x1(%eax),%edx
c0103286:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0103289:	66 89 50 04          	mov    %dx,0x4(%eax)
c010328d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0103290:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103297:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c010329a:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c010329d:	83 ec 0c             	sub    $0xc,%esp
c01032a0:	ff 75 e8             	pushl  -0x18(%ebp)
c01032a3:	e8 b6 f7 ff ff       	call   c0102a5e <page2pa>
c01032a8:	83 c4 10             	add    $0x10,%esp
c01032ab:	89 c1                	mov    %eax,%ecx
c01032ad:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01032b0:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01032b7:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01032ba:	01 d0                	add    %edx,%eax
c01032bc:	8b 00                	mov    (%eax),%eax
c01032be:	25 ff 0f 00 00       	and    $0xfff,%eax
c01032c3:	09 c8                	or     %ecx,%eax
c01032c5:	89 03                	mov    %eax,(%ebx)
c01032c7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01032ca:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01032d1:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01032d4:	01 d0                	add    %edx,%eax
c01032d6:	8b 00                	mov    (%eax),%eax
c01032d8:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01032dd:	83 ec 04             	sub    $0x4,%esp
c01032e0:	50                   	push   %eax
c01032e1:	68 89 01 00 00       	push   $0x189
c01032e6:	68 22 36 10 c0       	push   $0xc0103622
c01032eb:	e8 3e f7 ff ff       	call   c0102a2e <_kaddr>
c01032f0:	83 c4 10             	add    $0x10,%esp
c01032f3:	89 c3                	mov    %eax,%ebx
c01032f5:	83 ec 0c             	sub    $0xc,%esp
c01032f8:	ff 75 e8             	pushl  -0x18(%ebp)
c01032fb:	e8 a6 f7 ff ff       	call   c0102aa6 <page2kva>
c0103300:	83 c4 10             	add    $0x10,%esp
c0103303:	83 ec 04             	sub    $0x4,%esp
c0103306:	68 00 10 00 00       	push   $0x1000
c010330b:	53                   	push   %ebx
c010330c:	50                   	push   %eax
c010330d:	e8 9c de ff ff       	call   c01011ae <my_memcpy>
c0103312:	83 c4 10             	add    $0x10,%esp
c0103315:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0103319:	81 7d f0 ff 03 00 00 	cmpl   $0x3ff,-0x10(%ebp)
c0103320:	0f 8e 2a ff ff ff    	jle    c0103250 <copy_pgdir+0x111>
c0103326:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c010332a:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
c0103331:	0f 8e 1b fe ff ff    	jle    c0103152 <copy_pgdir+0x13>
c0103337:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c010333a:	c9                   	leave  
c010333b:	c3                   	ret    
