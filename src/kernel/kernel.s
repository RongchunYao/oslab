
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
c0100155:	68 4c 33 10 c0       	push   $0xc010334c
c010015a:	e8 3a 10 00 00       	call   c0101199 <printk>
c010015f:	83 c4 10             	add    $0x10,%esp
c0100162:	e8 d4 ff ff ff       	call   c010013b <disable_interrupt>
c0100167:	e8 7f 00 00 00       	call   c01001eb <init_serial>
c010016c:	e8 33 01 00 00       	call   c01002a4 <init_timer>
c0100171:	e8 ae 05 00 00       	call   c0100724 <init_intr>
c0100176:	e8 e6 07 00 00       	call   c0100961 <init_idt>
c010017b:	e8 3f 04 00 00       	call   c01005bf <init_seg>
c0100180:	e8 8c 2a 00 00       	call   c0102c11 <page_init>
c0100185:	e8 0d 16 00 00       	call   c0101797 <init_PCB>
c010018a:	83 ec 08             	sub    $0x8,%esp
c010018d:	68 63 33 10 c0       	push   $0xc0103363
c0100192:	68 00 b0 04 00       	push   $0x4b000
c0100197:	e8 5b 24 00 00       	call   c01025f7 <load_PCB>
c010019c:	83 c4 10             	add    $0x10,%esp
c010019f:	83 ec 08             	sub    $0x8,%esp
c01001a2:	68 68 33 10 c0       	push   $0xc0103368
c01001a7:	68 00 90 01 00       	push   $0x19000
c01001ac:	e8 46 24 00 00       	call   c01025f7 <load_PCB>
c01001b1:	83 c4 10             	add    $0x10,%esp
c01001b4:	e8 15 15 00 00       	call   c01016ce <debug>
c01001b9:	e8 ef 1e 00 00       	call   c01020ad <reschedule>
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
c0100c25:	75 28                	jne    c0100c4f <irq_handle+0x3b>
c0100c27:	e8 d4 f3 ff ff       	call   c0100000 <timer_event>
c0100c2c:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c2f:	8b 40 2c             	mov    0x2c(%eax),%eax
c0100c32:	83 f8 08             	cmp    $0x8,%eax
c0100c35:	75 05                	jne    c0100c3c <irq_handle+0x28>
c0100c37:	e9 33 02 00 00       	jmp    c0100e6f <irq_handle+0x25b>
c0100c3c:	83 ec 0c             	sub    $0xc,%esp
c0100c3f:	ff 75 08             	pushl  0x8(%ebp)
c0100c42:	e8 b6 16 00 00       	call   c01022fd <time_treat>
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
c0100de1:	e8 66 17 00 00       	call   c010254c <process_exit>
c0100de6:	e9 84 00 00 00       	jmp    c0100e6f <irq_handle+0x25b>
c0100deb:	8b 45 08             	mov    0x8(%ebp),%eax
c0100dee:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100df1:	83 f8 06             	cmp    $0x6,%eax
c0100df4:	75 0f                	jne    c0100e05 <irq_handle+0x1f1>
c0100df6:	e8 fc 08 00 00       	call   c01016f7 <getpid>
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
c0100e1d:	e8 3d 19 00 00       	call   c010275f <my_sleep>
c0100e22:	83 c4 10             	add    $0x10,%esp
c0100e25:	eb 48                	jmp    c0100e6f <irq_handle+0x25b>
c0100e27:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e2a:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100e2d:	83 f8 08             	cmp    $0x8,%eax
c0100e30:	75 3d                	jne    c0100e6f <irq_handle+0x25b>
c0100e32:	83 ec 0c             	sub    $0xc,%esp
c0100e35:	ff 75 08             	pushl  0x8(%ebp)
c0100e38:	e8 e9 19 00 00       	call   c0102826 <my_fork>
c0100e3d:	83 c4 10             	add    $0x10,%esp
c0100e40:	89 c2                	mov    %eax,%edx
c0100e42:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e45:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100e48:	eb 25                	jmp    c0100e6f <irq_handle+0x25b>
c0100e4a:	83 ec 0c             	sub    $0xc,%esp
c0100e4d:	ff 75 08             	pushl  0x8(%ebp)
c0100e50:	e8 5c 06 00 00       	call   c01014b1 <print_tf>
c0100e55:	83 c4 10             	add    $0x10,%esp
c0100e58:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e5b:	8b 40 20             	mov    0x20(%eax),%eax
c0100e5e:	83 ec 08             	sub    $0x8,%esp
c0100e61:	50                   	push   %eax
c0100e62:	68 70 33 10 c0       	push   $0xc0103370
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
c0101172:	68 98 33 10 c0       	push   $0xc0103398
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
c0101207:	68 b8 33 10 c0       	push   $0xc01033b8
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
c01013a6:	e8 2e 17 00 00       	call   c0102ad9 <mm_alloc>
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
c01013f2:	68 db 33 10 c0       	push   $0xc01033db
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
c0101420:	e8 b4 16 00 00       	call   c0102ad9 <mm_alloc>
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
c01014a1:	e8 33 16 00 00       	call   c0102ad9 <mm_alloc>
c01014a6:	83 c4 10             	add    $0x10,%esp
c01014a9:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01014ac:	8b 40 18             	mov    0x18(%eax),%eax
c01014af:	c9                   	leave  
c01014b0:	c3                   	ret    

c01014b1 <print_tf>:
c01014b1:	55                   	push   %ebp
c01014b2:	89 e5                	mov    %esp,%ebp
c01014b4:	83 ec 08             	sub    $0x8,%esp
c01014b7:	8b 45 08             	mov    0x8(%ebp),%eax
c01014ba:	8b 40 1c             	mov    0x1c(%eax),%eax
c01014bd:	83 ec 08             	sub    $0x8,%esp
c01014c0:	50                   	push   %eax
c01014c1:	68 e4 33 10 c0       	push   $0xc01033e4
c01014c6:	e8 ce fc ff ff       	call   c0101199 <printk>
c01014cb:	83 c4 10             	add    $0x10,%esp
c01014ce:	8b 45 08             	mov    0x8(%ebp),%eax
c01014d1:	8b 40 10             	mov    0x10(%eax),%eax
c01014d4:	83 ec 08             	sub    $0x8,%esp
c01014d7:	50                   	push   %eax
c01014d8:	68 eb 33 10 c0       	push   $0xc01033eb
c01014dd:	e8 b7 fc ff ff       	call   c0101199 <printk>
c01014e2:	83 c4 10             	add    $0x10,%esp
c01014e5:	8b 45 08             	mov    0x8(%ebp),%eax
c01014e8:	8b 40 18             	mov    0x18(%eax),%eax
c01014eb:	83 ec 08             	sub    $0x8,%esp
c01014ee:	50                   	push   %eax
c01014ef:	68 f2 33 10 c0       	push   $0xc01033f2
c01014f4:	e8 a0 fc ff ff       	call   c0101199 <printk>
c01014f9:	83 c4 10             	add    $0x10,%esp
c01014fc:	8b 45 08             	mov    0x8(%ebp),%eax
c01014ff:	8b 40 14             	mov    0x14(%eax),%eax
c0101502:	83 ec 08             	sub    $0x8,%esp
c0101505:	50                   	push   %eax
c0101506:	68 f9 33 10 c0       	push   $0xc01033f9
c010150b:	e8 89 fc ff ff       	call   c0101199 <printk>
c0101510:	83 c4 10             	add    $0x10,%esp
c0101513:	8b 45 08             	mov    0x8(%ebp),%eax
c0101516:	8b 00                	mov    (%eax),%eax
c0101518:	83 ec 08             	sub    $0x8,%esp
c010151b:	50                   	push   %eax
c010151c:	68 00 34 10 c0       	push   $0xc0103400
c0101521:	e8 73 fc ff ff       	call   c0101199 <printk>
c0101526:	83 c4 10             	add    $0x10,%esp
c0101529:	8b 45 08             	mov    0x8(%ebp),%eax
c010152c:	8b 40 34             	mov    0x34(%eax),%eax
c010152f:	83 ec 08             	sub    $0x8,%esp
c0101532:	50                   	push   %eax
c0101533:	68 07 34 10 c0       	push   $0xc0103407
c0101538:	e8 5c fc ff ff       	call   c0101199 <printk>
c010153d:	83 c4 10             	add    $0x10,%esp
c0101540:	8b 45 08             	mov    0x8(%ebp),%eax
c0101543:	8b 40 08             	mov    0x8(%eax),%eax
c0101546:	83 ec 08             	sub    $0x8,%esp
c0101549:	50                   	push   %eax
c010154a:	68 0e 34 10 c0       	push   $0xc010340e
c010154f:	e8 45 fc ff ff       	call   c0101199 <printk>
c0101554:	83 c4 10             	add    $0x10,%esp
c0101557:	8b 45 08             	mov    0x8(%ebp),%eax
c010155a:	8b 40 28             	mov    0x28(%eax),%eax
c010155d:	83 ec 08             	sub    $0x8,%esp
c0101560:	50                   	push   %eax
c0101561:	68 15 34 10 c0       	push   $0xc0103415
c0101566:	e8 2e fc ff ff       	call   c0101199 <printk>
c010156b:	83 c4 10             	add    $0x10,%esp
c010156e:	8b 45 08             	mov    0x8(%ebp),%eax
c0101571:	8b 40 2c             	mov    0x2c(%eax),%eax
c0101574:	83 ec 08             	sub    $0x8,%esp
c0101577:	50                   	push   %eax
c0101578:	68 1c 34 10 c0       	push   $0xc010341c
c010157d:	e8 17 fc ff ff       	call   c0101199 <printk>
c0101582:	83 c4 10             	add    $0x10,%esp
c0101585:	c9                   	leave  
c0101586:	c3                   	ret    

c0101587 <my_strcpy>:
c0101587:	55                   	push   %ebp
c0101588:	89 e5                	mov    %esp,%ebp
c010158a:	83 ec 10             	sub    $0x10,%esp
c010158d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0101594:	eb 2c                	jmp    c01015c2 <my_strcpy+0x3b>
c0101596:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0101599:	8b 45 08             	mov    0x8(%ebp),%eax
c010159c:	01 c2                	add    %eax,%edx
c010159e:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c01015a1:	8b 45 0c             	mov    0xc(%ebp),%eax
c01015a4:	01 c8                	add    %ecx,%eax
c01015a6:	0f b6 00             	movzbl (%eax),%eax
c01015a9:	88 02                	mov    %al,(%edx)
c01015ab:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c01015af:	83 7d fc 1d          	cmpl   $0x1d,-0x4(%ebp)
c01015b3:	75 0d                	jne    c01015c2 <my_strcpy+0x3b>
c01015b5:	8b 55 fc             	mov    -0x4(%ebp),%edx
c01015b8:	8b 45 08             	mov    0x8(%ebp),%eax
c01015bb:	01 d0                	add    %edx,%eax
c01015bd:	c6 00 00             	movb   $0x0,(%eax)
c01015c0:	eb 1a                	jmp    c01015dc <my_strcpy+0x55>
c01015c2:	8b 55 fc             	mov    -0x4(%ebp),%edx
c01015c5:	8b 45 0c             	mov    0xc(%ebp),%eax
c01015c8:	01 d0                	add    %edx,%eax
c01015ca:	0f b6 00             	movzbl (%eax),%eax
c01015cd:	84 c0                	test   %al,%al
c01015cf:	75 c5                	jne    c0101596 <my_strcpy+0xf>
c01015d1:	8b 55 fc             	mov    -0x4(%ebp),%edx
c01015d4:	8b 45 08             	mov    0x8(%ebp),%eax
c01015d7:	01 d0                	add    %edx,%eax
c01015d9:	c6 00 00             	movb   $0x0,(%eax)
c01015dc:	c9                   	leave  
c01015dd:	c3                   	ret    

c01015de <list>:
c01015de:	55                   	push   %ebp
c01015df:	89 e5                	mov    %esp,%ebp
c01015e1:	83 ec 18             	sub    $0x18,%esp
c01015e4:	c7 45 f4 40 3f 13 c0 	movl   $0xc0133f40,-0xc(%ebp)
c01015eb:	eb 27                	jmp    c0101614 <list+0x36>
c01015ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01015f0:	8d 50 0c             	lea    0xc(%eax),%edx
c01015f3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01015f6:	8b 40 08             	mov    0x8(%eax),%eax
c01015f9:	83 ec 04             	sub    $0x4,%esp
c01015fc:	52                   	push   %edx
c01015fd:	50                   	push   %eax
c01015fe:	68 24 34 10 c0       	push   $0xc0103424
c0101603:	e8 91 fb ff ff       	call   c0101199 <printk>
c0101608:	83 c4 10             	add    $0x10,%esp
c010160b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010160e:	8b 40 3c             	mov    0x3c(%eax),%eax
c0101611:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101614:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0101618:	75 d3                	jne    c01015ed <list+0xf>
c010161a:	a1 c0 f0 10 c0       	mov    0xc010f0c0,%eax
c010161f:	c1 e0 02             	shl    $0x2,%eax
c0101622:	89 c2                	mov    %eax,%edx
c0101624:	c1 e2 04             	shl    $0x4,%edx
c0101627:	01 d0                	add    %edx,%eax
c0101629:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010162e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101631:	eb 32                	jmp    c0101665 <list+0x87>
c0101633:	a1 c0 f0 10 c0       	mov    0xc010f0c0,%eax
c0101638:	85 c0                	test   %eax,%eax
c010163a:	75 02                	jne    c010163e <list+0x60>
c010163c:	eb 2d                	jmp    c010166b <list+0x8d>
c010163e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101641:	8d 50 0c             	lea    0xc(%eax),%edx
c0101644:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101647:	8b 40 08             	mov    0x8(%eax),%eax
c010164a:	83 ec 04             	sub    $0x4,%esp
c010164d:	52                   	push   %edx
c010164e:	50                   	push   %eax
c010164f:	68 48 34 10 c0       	push   $0xc0103448
c0101654:	e8 40 fb ff ff       	call   c0101199 <printk>
c0101659:	83 c4 10             	add    $0x10,%esp
c010165c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010165f:	8b 40 3c             	mov    0x3c(%eax),%eax
c0101662:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101665:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0101669:	75 c8                	jne    c0101633 <list+0x55>
c010166b:	a1 c8 f0 10 c0       	mov    0xc010f0c8,%eax
c0101670:	c1 e0 02             	shl    $0x2,%eax
c0101673:	89 c2                	mov    %eax,%edx
c0101675:	c1 e2 04             	shl    $0x4,%edx
c0101678:	01 d0                	add    %edx,%eax
c010167a:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010167f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101682:	eb 32                	jmp    c01016b6 <list+0xd8>
c0101684:	a1 c8 f0 10 c0       	mov    0xc010f0c8,%eax
c0101689:	85 c0                	test   %eax,%eax
c010168b:	75 02                	jne    c010168f <list+0xb1>
c010168d:	eb 2d                	jmp    c01016bc <list+0xde>
c010168f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101692:	8d 50 0c             	lea    0xc(%eax),%edx
c0101695:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101698:	8b 40 08             	mov    0x8(%eax),%eax
c010169b:	83 ec 04             	sub    $0x4,%esp
c010169e:	52                   	push   %edx
c010169f:	50                   	push   %eax
c01016a0:	68 6c 34 10 c0       	push   $0xc010346c
c01016a5:	e8 ef fa ff ff       	call   c0101199 <printk>
c01016aa:	83 c4 10             	add    $0x10,%esp
c01016ad:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01016b0:	8b 40 3c             	mov    0x3c(%eax),%eax
c01016b3:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01016b6:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c01016ba:	75 c8                	jne    c0101684 <list+0xa6>
c01016bc:	83 ec 0c             	sub    $0xc,%esp
c01016bf:	68 8f 34 10 c0       	push   $0xc010348f
c01016c4:	e8 d0 fa ff ff       	call   c0101199 <printk>
c01016c9:	83 c4 10             	add    $0x10,%esp
c01016cc:	c9                   	leave  
c01016cd:	c3                   	ret    

c01016ce <debug>:
c01016ce:	55                   	push   %ebp
c01016cf:	89 e5                	mov    %esp,%ebp
c01016d1:	83 ec 08             	sub    $0x8,%esp
c01016d4:	8b 0d 10 3f 13 c0    	mov    0xc0133f10,%ecx
c01016da:	8b 15 04 10 17 c0    	mov    0xc0171004,%edx
c01016e0:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c01016e5:	51                   	push   %ecx
c01016e6:	52                   	push   %edx
c01016e7:	50                   	push   %eax
c01016e8:	68 98 34 10 c0       	push   $0xc0103498
c01016ed:	e8 a7 fa ff ff       	call   c0101199 <printk>
c01016f2:	83 c4 10             	add    $0x10,%esp
c01016f5:	c9                   	leave  
c01016f6:	c3                   	ret    

c01016f7 <getpid>:
c01016f7:	55                   	push   %ebp
c01016f8:	89 e5                	mov    %esp,%ebp
c01016fa:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01016ff:	c1 e0 02             	shl    $0x2,%eax
c0101702:	89 c2                	mov    %eax,%edx
c0101704:	c1 e2 04             	shl    $0x4,%edx
c0101707:	01 d0                	add    %edx,%eax
c0101709:	83 c0 30             	add    $0x30,%eax
c010170c:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101711:	8b 40 0c             	mov    0xc(%eax),%eax
c0101714:	8b 40 08             	mov    0x8(%eax),%eax
c0101717:	5d                   	pop    %ebp
c0101718:	c3                   	ret    

c0101719 <get_free_pid>:
c0101719:	55                   	push   %ebp
c010171a:	89 e5                	mov    %esp,%ebp
c010171c:	83 ec 18             	sub    $0x18,%esp
c010171f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0101726:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c010172d:	eb 25                	jmp    c0101754 <get_free_pid+0x3b>
c010172f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101732:	8b 04 85 00 30 13 c0 	mov    -0x3fecd000(,%eax,4),%eax
c0101739:	85 c0                	test   %eax,%eax
c010173b:	75 13                	jne    c0101750 <get_free_pid+0x37>
c010173d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101740:	c7 04 85 00 30 13 c0 	movl   $0x1,-0x3fecd000(,%eax,4)
c0101747:	01 00 00 00 
c010174b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010174e:	eb 1c                	jmp    c010176c <get_free_pid+0x53>
c0101750:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0101754:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c0101758:	7e d5                	jle    c010172f <get_free_pid+0x16>
c010175a:	83 ec 0c             	sub    $0xc,%esp
c010175d:	68 bc 34 10 c0       	push   $0xc01034bc
c0101762:	e8 32 fa ff ff       	call   c0101199 <printk>
c0101767:	83 c4 10             	add    $0x10,%esp
c010176a:	eb fe                	jmp    c010176a <get_free_pid+0x51>
c010176c:	c9                   	leave  
c010176d:	c3                   	ret    

c010176e <free_a_pid>:
c010176e:	55                   	push   %ebp
c010176f:	89 e5                	mov    %esp,%ebp
c0101771:	83 ec 08             	sub    $0x8,%esp
c0101774:	83 ec 08             	sub    $0x8,%esp
c0101777:	ff 75 08             	pushl  0x8(%ebp)
c010177a:	68 ca 34 10 c0       	push   $0xc01034ca
c010177f:	e8 15 fa ff ff       	call   c0101199 <printk>
c0101784:	83 c4 10             	add    $0x10,%esp
c0101787:	8b 45 08             	mov    0x8(%ebp),%eax
c010178a:	c7 04 85 00 30 13 c0 	movl   $0x0,-0x3fecd000(,%eax,4)
c0101791:	00 00 00 00 
c0101795:	c9                   	leave  
c0101796:	c3                   	ret    

c0101797 <init_PCB>:
c0101797:	55                   	push   %ebp
c0101798:	89 e5                	mov    %esp,%ebp
c010179a:	83 ec 18             	sub    $0x18,%esp
c010179d:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c01017a2:	83 ec 04             	sub    $0x4,%esp
c01017a5:	68 00 10 00 00       	push   $0x1000
c01017aa:	50                   	push   %eax
c01017ab:	68 00 50 13 c0       	push   $0xc0135000
c01017b0:	e8 09 fa ff ff       	call   c01011be <my_memcpy>
c01017b5:	83 c4 10             	add    $0x10,%esp
c01017b8:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
c01017bf:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01017c6:	eb 1d                	jmp    c01017e5 <init_PCB+0x4e>
c01017c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01017cb:	0f b7 04 c5 44 f0 1a 	movzwl -0x3fe50fbc(,%eax,8),%eax
c01017d2:	c0 
c01017d3:	8d 50 01             	lea    0x1(%eax),%edx
c01017d6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01017d9:	66 89 14 c5 44 f0 1a 	mov    %dx,-0x3fe50fbc(,%eax,8)
c01017e0:	c0 
c01017e1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01017e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01017e8:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c01017eb:	7c db                	jl     c01017c8 <init_PCB+0x31>
c01017ed:	83 ec 08             	sub    $0x8,%esp
c01017f0:	68 00 50 13 c0       	push   $0xc0135000
c01017f5:	68 00 20 03 00       	push   $0x32000
c01017fa:	e8 8d fb ff ff       	call   c010138c <load>
c01017ff:	83 c4 10             	add    $0x10,%esp
c0101802:	a3 28 31 13 c0       	mov    %eax,0xc0133128
c0101807:	c7 05 2c 31 13 c0 1b 	movl   $0x1b,0xc013312c
c010180e:	00 00 00 
c0101811:	c7 05 30 31 13 c0 02 	movl   $0x202,0xc0133130
c0101818:	02 00 00 
c010181b:	c7 05 34 31 13 c0 f0 	movl   $0x60fff0,0xc0133134
c0101822:	ff 60 00 
c0101825:	c7 05 38 31 13 c0 23 	movl   $0x23,0xc0133138
c010182c:	00 00 00 
c010182f:	83 ec 08             	sub    $0x8,%esp
c0101832:	68 db 34 10 c0       	push   $0xc01034db
c0101837:	68 4c 3f 13 c0       	push   $0xc0133f4c
c010183c:	e8 46 fd ff ff       	call   c0101587 <my_strcpy>
c0101841:	83 c4 10             	add    $0x10,%esp
c0101844:	c7 05 48 3f 13 c0 00 	movl   $0x0,0xc0133f48
c010184b:	00 00 00 
c010184e:	c7 05 70 3f 13 c0 00 	movl   $0x0,0xc0133f70
c0101855:	00 00 00 
c0101858:	c7 05 80 3f 13 c0 00 	movl   $0x0,0xc0133f80
c010185f:	00 00 00 
c0101862:	c7 05 7c 3f 13 c0 00 	movl   $0x0,0xc0133f7c
c0101869:	00 00 00 
c010186c:	c7 05 6c 3f 13 c0 01 	movl   $0x1,0xc0133f6c
c0101873:	00 00 00 
c0101876:	c7 05 74 3f 13 c0 01 	movl   $0x1,0xc0133f74
c010187d:	00 00 00 
c0101880:	c7 05 78 3f 13 c0 c8 	movl   $0xc8,0xc0133f78
c0101887:	00 00 00 
c010188a:	c7 05 44 3f 13 c0 00 	movl   $0xc0133100,0xc0133f44
c0101891:	31 13 c0 
c0101894:	c7 05 00 10 17 c0 01 	movl   $0x1,0xc0171000
c010189b:	00 00 00 
c010189e:	c7 05 04 10 17 c0 00 	movl   $0x0,0xc0171004
c01018a5:	00 00 00 
c01018a8:	c7 05 10 3f 13 c0 00 	movl   $0x0,0xc0133f10
c01018af:	00 00 00 
c01018b2:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01018b9:	eb 2a                	jmp    c01018e5 <init_PCB+0x14e>
c01018bb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018be:	c1 e0 02             	shl    $0x2,%eax
c01018c1:	89 c2                	mov    %eax,%edx
c01018c3:	c1 e2 04             	shl    $0x4,%edx
c01018c6:	01 d0                	add    %edx,%eax
c01018c8:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c01018ce:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018d1:	89 02                	mov    %eax,(%edx)
c01018d3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018d6:	c7 04 85 00 30 13 c0 	movl   $0x0,-0x3fecd000(,%eax,4)
c01018dd:	00 00 00 00 
c01018e1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01018e5:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c01018e9:	7e d0                	jle    c01018bb <init_PCB+0x124>
c01018eb:	c7 05 00 30 13 c0 01 	movl   $0x1,0xc0133000
c01018f2:	00 00 00 
c01018f5:	c9                   	leave  
c01018f6:	c3                   	ret    

c01018f7 <add_PCB>:
c01018f7:	55                   	push   %ebp
c01018f8:	89 e5                	mov    %esp,%ebp
c01018fa:	83 ec 18             	sub    $0x18,%esp
c01018fd:	8b 15 00 10 17 c0    	mov    0xc0171000,%edx
c0101903:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c0101908:	01 c2                	add    %eax,%edx
c010190a:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c010190f:	01 d0                	add    %edx,%eax
c0101911:	83 f8 3c             	cmp    $0x3c,%eax
c0101914:	75 1b                	jne    c0101931 <add_PCB+0x3a>
c0101916:	83 ec 0c             	sub    $0xc,%esp
c0101919:	68 e0 34 10 c0       	push   $0xc01034e0
c010191e:	e8 76 f8 ff ff       	call   c0101199 <printk>
c0101923:	83 c4 10             	add    $0x10,%esp
c0101926:	fb                   	sti    
c0101927:	b8 00 00 00 00       	mov    $0x0,%eax
c010192c:	e9 93 03 00 00       	jmp    c0101cc4 <add_PCB+0x3cd>
c0101931:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0101938:	eb 22                	jmp    c010195c <add_PCB+0x65>
c010193a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010193d:	c1 e0 02             	shl    $0x2,%eax
c0101940:	89 c2                	mov    %eax,%edx
c0101942:	c1 e2 04             	shl    $0x4,%edx
c0101945:	01 d0                	add    %edx,%eax
c0101947:	83 c0 20             	add    $0x20,%eax
c010194a:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010194f:	8b 40 0c             	mov    0xc(%eax),%eax
c0101952:	85 c0                	test   %eax,%eax
c0101954:	75 02                	jne    c0101958 <add_PCB+0x61>
c0101956:	eb 0a                	jmp    c0101962 <add_PCB+0x6b>
c0101958:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c010195c:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c0101960:	7e d8                	jle    c010193a <add_PCB+0x43>
c0101962:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101965:	c1 e0 02             	shl    $0x2,%eax
c0101968:	89 c2                	mov    %eax,%edx
c010196a:	c1 e2 04             	shl    $0x4,%edx
c010196d:	01 d0                	add    %edx,%eax
c010196f:	83 c0 20             	add    $0x20,%eax
c0101972:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101977:	c7 40 0c 01 00 00 00 	movl   $0x1,0xc(%eax)
c010197e:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0101982:	0f 85 98 00 00 00    	jne    c0101a20 <add_PCB+0x129>
c0101988:	a1 bc f0 10 c0       	mov    0xc010f0bc,%eax
c010198d:	c1 e0 02             	shl    $0x2,%eax
c0101990:	89 c2                	mov    %eax,%edx
c0101992:	c1 e2 04             	shl    $0x4,%edx
c0101995:	01 d0                	add    %edx,%eax
c0101997:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010199c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010199f:	8b 0d bc f0 10 c0    	mov    0xc010f0bc,%ecx
c01019a5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01019a8:	c1 e0 02             	shl    $0x2,%eax
c01019ab:	89 c2                	mov    %eax,%edx
c01019ad:	c1 e2 04             	shl    $0x4,%edx
c01019b0:	01 d0                	add    %edx,%eax
c01019b2:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c01019b8:	89 c8                	mov    %ecx,%eax
c01019ba:	c1 e0 02             	shl    $0x2,%eax
c01019bd:	89 c1                	mov    %eax,%ecx
c01019bf:	c1 e1 04             	shl    $0x4,%ecx
c01019c2:	01 c8                	add    %ecx,%eax
c01019c4:	83 c0 30             	add    $0x30,%eax
c01019c7:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01019cc:	89 50 0c             	mov    %edx,0xc(%eax)
c01019cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01019d2:	c1 e0 02             	shl    $0x2,%eax
c01019d5:	89 c2                	mov    %eax,%edx
c01019d7:	c1 e2 04             	shl    $0x4,%edx
c01019da:	01 d0                	add    %edx,%eax
c01019dc:	83 c0 40             	add    $0x40,%eax
c01019df:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c01019e5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01019e8:	89 02                	mov    %eax,(%edx)
c01019ea:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01019ed:	c1 e0 02             	shl    $0x2,%eax
c01019f0:	89 c2                	mov    %eax,%edx
c01019f2:	c1 e2 04             	shl    $0x4,%edx
c01019f5:	01 d0                	add    %edx,%eax
c01019f7:	83 c0 30             	add    $0x30,%eax
c01019fa:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01019ff:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101a06:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a09:	a3 bc f0 10 c0       	mov    %eax,0xc010f0bc
c0101a0e:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c0101a13:	83 c0 01             	add    $0x1,%eax
c0101a16:	a3 00 10 17 c0       	mov    %eax,0xc0171000
c0101a1b:	e9 f9 01 00 00       	jmp    c0101c19 <add_PCB+0x322>
c0101a20:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0101a24:	0f 85 fa 00 00 00    	jne    c0101b24 <add_PCB+0x22d>
c0101a2a:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c0101a2f:	85 c0                	test   %eax,%eax
c0101a31:	75 59                	jne    c0101a8c <add_PCB+0x195>
c0101a33:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a36:	a3 c0 f0 10 c0       	mov    %eax,0xc010f0c0
c0101a3b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a3e:	a3 c4 f0 10 c0       	mov    %eax,0xc010f0c4
c0101a43:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a46:	c1 e0 02             	shl    $0x2,%eax
c0101a49:	89 c2                	mov    %eax,%edx
c0101a4b:	c1 e2 04             	shl    $0x4,%edx
c0101a4e:	01 d0                	add    %edx,%eax
c0101a50:	83 c0 40             	add    $0x40,%eax
c0101a53:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101a58:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0101a5e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a61:	c1 e0 02             	shl    $0x2,%eax
c0101a64:	89 c2                	mov    %eax,%edx
c0101a66:	c1 e2 04             	shl    $0x4,%edx
c0101a69:	01 d0                	add    %edx,%eax
c0101a6b:	83 c0 30             	add    $0x30,%eax
c0101a6e:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101a73:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101a7a:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c0101a7f:	83 c0 01             	add    $0x1,%eax
c0101a82:	a3 04 10 17 c0       	mov    %eax,0xc0171004
c0101a87:	e9 8d 01 00 00       	jmp    c0101c19 <add_PCB+0x322>
c0101a8c:	a1 c4 f0 10 c0       	mov    0xc010f0c4,%eax
c0101a91:	c1 e0 02             	shl    $0x2,%eax
c0101a94:	89 c2                	mov    %eax,%edx
c0101a96:	c1 e2 04             	shl    $0x4,%edx
c0101a99:	01 d0                	add    %edx,%eax
c0101a9b:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101aa0:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101aa3:	8b 0d c4 f0 10 c0    	mov    0xc010f0c4,%ecx
c0101aa9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101aac:	c1 e0 02             	shl    $0x2,%eax
c0101aaf:	89 c2                	mov    %eax,%edx
c0101ab1:	c1 e2 04             	shl    $0x4,%edx
c0101ab4:	01 d0                	add    %edx,%eax
c0101ab6:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101abc:	89 c8                	mov    %ecx,%eax
c0101abe:	c1 e0 02             	shl    $0x2,%eax
c0101ac1:	89 c1                	mov    %eax,%ecx
c0101ac3:	c1 e1 04             	shl    $0x4,%ecx
c0101ac6:	01 c8                	add    %ecx,%eax
c0101ac8:	83 c0 30             	add    $0x30,%eax
c0101acb:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101ad0:	89 50 0c             	mov    %edx,0xc(%eax)
c0101ad3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101ad6:	c1 e0 02             	shl    $0x2,%eax
c0101ad9:	89 c2                	mov    %eax,%edx
c0101adb:	c1 e2 04             	shl    $0x4,%edx
c0101ade:	01 d0                	add    %edx,%eax
c0101ae0:	83 c0 40             	add    $0x40,%eax
c0101ae3:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101ae9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101aec:	89 02                	mov    %eax,(%edx)
c0101aee:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101af1:	c1 e0 02             	shl    $0x2,%eax
c0101af4:	89 c2                	mov    %eax,%edx
c0101af6:	c1 e2 04             	shl    $0x4,%edx
c0101af9:	01 d0                	add    %edx,%eax
c0101afb:	83 c0 30             	add    $0x30,%eax
c0101afe:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101b03:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101b0a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b0d:	a3 c4 f0 10 c0       	mov    %eax,0xc010f0c4
c0101b12:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c0101b17:	83 c0 01             	add    $0x1,%eax
c0101b1a:	a3 04 10 17 c0       	mov    %eax,0xc0171004
c0101b1f:	e9 f5 00 00 00       	jmp    c0101c19 <add_PCB+0x322>
c0101b24:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101b29:	85 c0                	test   %eax,%eax
c0101b2b:	75 59                	jne    c0101b86 <add_PCB+0x28f>
c0101b2d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b30:	a3 c8 f0 10 c0       	mov    %eax,0xc010f0c8
c0101b35:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b38:	a3 cc f0 10 c0       	mov    %eax,0xc010f0cc
c0101b3d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b40:	c1 e0 02             	shl    $0x2,%eax
c0101b43:	89 c2                	mov    %eax,%edx
c0101b45:	c1 e2 04             	shl    $0x4,%edx
c0101b48:	01 d0                	add    %edx,%eax
c0101b4a:	83 c0 40             	add    $0x40,%eax
c0101b4d:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101b52:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0101b58:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b5b:	c1 e0 02             	shl    $0x2,%eax
c0101b5e:	89 c2                	mov    %eax,%edx
c0101b60:	c1 e2 04             	shl    $0x4,%edx
c0101b63:	01 d0                	add    %edx,%eax
c0101b65:	83 c0 30             	add    $0x30,%eax
c0101b68:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101b6d:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101b74:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101b79:	83 c0 01             	add    $0x1,%eax
c0101b7c:	a3 10 3f 13 c0       	mov    %eax,0xc0133f10
c0101b81:	e9 93 00 00 00       	jmp    c0101c19 <add_PCB+0x322>
c0101b86:	a1 cc f0 10 c0       	mov    0xc010f0cc,%eax
c0101b8b:	c1 e0 02             	shl    $0x2,%eax
c0101b8e:	89 c2                	mov    %eax,%edx
c0101b90:	c1 e2 04             	shl    $0x4,%edx
c0101b93:	01 d0                	add    %edx,%eax
c0101b95:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101b9a:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101b9d:	8b 0d cc f0 10 c0    	mov    0xc010f0cc,%ecx
c0101ba3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101ba6:	c1 e0 02             	shl    $0x2,%eax
c0101ba9:	89 c2                	mov    %eax,%edx
c0101bab:	c1 e2 04             	shl    $0x4,%edx
c0101bae:	01 d0                	add    %edx,%eax
c0101bb0:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101bb6:	89 c8                	mov    %ecx,%eax
c0101bb8:	c1 e0 02             	shl    $0x2,%eax
c0101bbb:	89 c1                	mov    %eax,%ecx
c0101bbd:	c1 e1 04             	shl    $0x4,%ecx
c0101bc0:	01 c8                	add    %ecx,%eax
c0101bc2:	83 c0 30             	add    $0x30,%eax
c0101bc5:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101bca:	89 50 0c             	mov    %edx,0xc(%eax)
c0101bcd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101bd0:	c1 e0 02             	shl    $0x2,%eax
c0101bd3:	89 c2                	mov    %eax,%edx
c0101bd5:	c1 e2 04             	shl    $0x4,%edx
c0101bd8:	01 d0                	add    %edx,%eax
c0101bda:	83 c0 40             	add    $0x40,%eax
c0101bdd:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101be3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101be6:	89 02                	mov    %eax,(%edx)
c0101be8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101beb:	c1 e0 02             	shl    $0x2,%eax
c0101bee:	89 c2                	mov    %eax,%edx
c0101bf0:	c1 e2 04             	shl    $0x4,%edx
c0101bf3:	01 d0                	add    %edx,%eax
c0101bf5:	83 c0 30             	add    $0x30,%eax
c0101bf8:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101bfd:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101c04:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c07:	a3 cc f0 10 c0       	mov    %eax,0xc010f0cc
c0101c0c:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101c11:	83 c0 01             	add    $0x1,%eax
c0101c14:	a3 10 3f 13 c0       	mov    %eax,0xc0133f10
c0101c19:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c1c:	c1 e0 02             	shl    $0x2,%eax
c0101c1f:	89 c2                	mov    %eax,%edx
c0101c21:	c1 e2 04             	shl    $0x4,%edx
c0101c24:	01 d0                	add    %edx,%eax
c0101c26:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101c2b:	83 c0 0c             	add    $0xc,%eax
c0101c2e:	83 ec 08             	sub    $0x8,%esp
c0101c31:	ff 75 10             	pushl  0x10(%ebp)
c0101c34:	50                   	push   %eax
c0101c35:	e8 4d f9 ff ff       	call   c0101587 <my_strcpy>
c0101c3a:	83 c4 10             	add    $0x10,%esp
c0101c3d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c40:	c1 e0 02             	shl    $0x2,%eax
c0101c43:	89 c2                	mov    %eax,%edx
c0101c45:	c1 e2 04             	shl    $0x4,%edx
c0101c48:	01 d0                	add    %edx,%eax
c0101c4a:	83 c0 30             	add    $0x30,%eax
c0101c4d:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101c53:	8b 45 14             	mov    0x14(%ebp),%eax
c0101c56:	89 42 08             	mov    %eax,0x8(%edx)
c0101c59:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c5c:	c1 e0 02             	shl    $0x2,%eax
c0101c5f:	89 c2                	mov    %eax,%edx
c0101c61:	c1 e2 04             	shl    $0x4,%edx
c0101c64:	01 d0                	add    %edx,%eax
c0101c66:	83 c0 30             	add    $0x30,%eax
c0101c69:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101c6f:	8b 45 08             	mov    0x8(%ebp),%eax
c0101c72:	89 42 04             	mov    %eax,0x4(%edx)
c0101c75:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c78:	c1 e0 02             	shl    $0x2,%eax
c0101c7b:	89 c2                	mov    %eax,%edx
c0101c7d:	c1 e2 04             	shl    $0x4,%edx
c0101c80:	01 d0                	add    %edx,%eax
c0101c82:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101c88:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101c8b:	89 42 04             	mov    %eax,0x4(%edx)
c0101c8e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c91:	c1 e0 02             	shl    $0x2,%eax
c0101c94:	89 c2                	mov    %eax,%edx
c0101c96:	c1 e2 04             	shl    $0x4,%edx
c0101c99:	01 d0                	add    %edx,%eax
c0101c9b:	83 c0 30             	add    $0x30,%eax
c0101c9e:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101ca4:	8b 45 18             	mov    0x18(%ebp),%eax
c0101ca7:	89 02                	mov    %eax,(%edx)
c0101ca9:	8b 55 1c             	mov    0x1c(%ebp),%edx
c0101cac:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101caf:	c1 e0 02             	shl    $0x2,%eax
c0101cb2:	89 c1                	mov    %eax,%ecx
c0101cb4:	c1 e1 04             	shl    $0x4,%ecx
c0101cb7:	01 c8                	add    %ecx,%eax
c0101cb9:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101cbe:	89 50 08             	mov    %edx,0x8(%eax)
c0101cc1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101cc4:	c9                   	leave  
c0101cc5:	c3                   	ret    

c0101cc6 <delete_PCB>:
c0101cc6:	55                   	push   %ebp
c0101cc7:	89 e5                	mov    %esp,%ebp
c0101cc9:	83 ec 18             	sub    $0x18,%esp
c0101ccc:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0101cd0:	75 15                	jne    c0101ce7 <delete_PCB+0x21>
c0101cd2:	83 ec 0c             	sub    $0xc,%esp
c0101cd5:	68 f4 34 10 c0       	push   $0xc01034f4
c0101cda:	e8 ba f4 ff ff       	call   c0101199 <printk>
c0101cdf:	83 c4 10             	add    $0x10,%esp
c0101ce2:	e9 c4 03 00 00       	jmp    c01020ab <delete_PCB+0x3e5>
c0101ce7:	8b 45 08             	mov    0x8(%ebp),%eax
c0101cea:	c1 e0 02             	shl    $0x2,%eax
c0101ced:	89 c2                	mov    %eax,%edx
c0101cef:	c1 e2 04             	shl    $0x4,%edx
c0101cf2:	01 d0                	add    %edx,%eax
c0101cf4:	83 c0 20             	add    $0x20,%eax
c0101cf7:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101cfc:	8b 40 0c             	mov    0xc(%eax),%eax
c0101cff:	85 c0                	test   %eax,%eax
c0101d01:	75 15                	jne    c0101d18 <delete_PCB+0x52>
c0101d03:	83 ec 0c             	sub    $0xc,%esp
c0101d06:	68 17 35 10 c0       	push   $0xc0103517
c0101d0b:	e8 89 f4 ff ff       	call   c0101199 <printk>
c0101d10:	83 c4 10             	add    $0x10,%esp
c0101d13:	e9 93 03 00 00       	jmp    c01020ab <delete_PCB+0x3e5>
c0101d18:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d1b:	c1 e0 02             	shl    $0x2,%eax
c0101d1e:	89 c2                	mov    %eax,%edx
c0101d20:	c1 e2 04             	shl    $0x4,%edx
c0101d23:	01 d0                	add    %edx,%eax
c0101d25:	83 c0 20             	add    $0x20,%eax
c0101d28:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d2d:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101d34:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d37:	c1 e0 02             	shl    $0x2,%eax
c0101d3a:	89 c2                	mov    %eax,%edx
c0101d3c:	c1 e2 04             	shl    $0x4,%edx
c0101d3f:	01 d0                	add    %edx,%eax
c0101d41:	83 c0 30             	add    $0x30,%eax
c0101d44:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d49:	8b 40 04             	mov    0x4(%eax),%eax
c0101d4c:	83 f8 01             	cmp    $0x1,%eax
c0101d4f:	0f 85 d8 00 00 00    	jne    c0101e2d <delete_PCB+0x167>
c0101d55:	a1 bc f0 10 c0       	mov    0xc010f0bc,%eax
c0101d5a:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101d5d:	75 52                	jne    c0101db1 <delete_PCB+0xeb>
c0101d5f:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d62:	c1 e0 02             	shl    $0x2,%eax
c0101d65:	89 c2                	mov    %eax,%edx
c0101d67:	c1 e2 04             	shl    $0x4,%edx
c0101d6a:	01 d0                	add    %edx,%eax
c0101d6c:	83 c0 40             	add    $0x40,%eax
c0101d6f:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d74:	8b 00                	mov    (%eax),%eax
c0101d76:	8b 00                	mov    (%eax),%eax
c0101d78:	a3 bc f0 10 c0       	mov    %eax,0xc010f0bc
c0101d7d:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d80:	c1 e0 02             	shl    $0x2,%eax
c0101d83:	89 c2                	mov    %eax,%edx
c0101d85:	c1 e2 04             	shl    $0x4,%edx
c0101d88:	01 d0                	add    %edx,%eax
c0101d8a:	83 c0 40             	add    $0x40,%eax
c0101d8d:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d92:	8b 10                	mov    (%eax),%edx
c0101d94:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d97:	c1 e0 02             	shl    $0x2,%eax
c0101d9a:	89 c1                	mov    %eax,%ecx
c0101d9c:	c1 e1 04             	shl    $0x4,%ecx
c0101d9f:	01 c8                	add    %ecx,%eax
c0101da1:	83 c0 30             	add    $0x30,%eax
c0101da4:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101da9:	8b 40 0c             	mov    0xc(%eax),%eax
c0101dac:	89 42 3c             	mov    %eax,0x3c(%edx)
c0101daf:	eb 6a                	jmp    c0101e1b <delete_PCB+0x155>
c0101db1:	8b 45 08             	mov    0x8(%ebp),%eax
c0101db4:	c1 e0 02             	shl    $0x2,%eax
c0101db7:	89 c2                	mov    %eax,%edx
c0101db9:	c1 e2 04             	shl    $0x4,%edx
c0101dbc:	01 d0                	add    %edx,%eax
c0101dbe:	83 c0 40             	add    $0x40,%eax
c0101dc1:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101dc6:	8b 00                	mov    (%eax),%eax
c0101dc8:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101dcb:	8b 45 08             	mov    0x8(%ebp),%eax
c0101dce:	c1 e0 02             	shl    $0x2,%eax
c0101dd1:	89 c2                	mov    %eax,%edx
c0101dd3:	c1 e2 04             	shl    $0x4,%edx
c0101dd6:	01 d0                	add    %edx,%eax
c0101dd8:	83 c0 40             	add    $0x40,%eax
c0101ddb:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101de0:	8b 10                	mov    (%eax),%edx
c0101de2:	8b 45 08             	mov    0x8(%ebp),%eax
c0101de5:	c1 e0 02             	shl    $0x2,%eax
c0101de8:	89 c1                	mov    %eax,%ecx
c0101dea:	c1 e1 04             	shl    $0x4,%ecx
c0101ded:	01 c8                	add    %ecx,%eax
c0101def:	83 c0 30             	add    $0x30,%eax
c0101df2:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101df7:	8b 40 0c             	mov    0xc(%eax),%eax
c0101dfa:	89 42 3c             	mov    %eax,0x3c(%edx)
c0101dfd:	8b 45 08             	mov    0x8(%ebp),%eax
c0101e00:	c1 e0 02             	shl    $0x2,%eax
c0101e03:	89 c2                	mov    %eax,%edx
c0101e05:	c1 e2 04             	shl    $0x4,%edx
c0101e08:	01 d0                	add    %edx,%eax
c0101e0a:	83 c0 30             	add    $0x30,%eax
c0101e0d:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101e12:	8b 40 0c             	mov    0xc(%eax),%eax
c0101e15:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101e18:	89 50 40             	mov    %edx,0x40(%eax)
c0101e1b:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c0101e20:	83 e8 01             	sub    $0x1,%eax
c0101e23:	a3 00 10 17 c0       	mov    %eax,0xc0171000
c0101e28:	e9 7e 02 00 00       	jmp    c01020ab <delete_PCB+0x3e5>
c0101e2d:	8b 45 08             	mov    0x8(%ebp),%eax
c0101e30:	c1 e0 02             	shl    $0x2,%eax
c0101e33:	89 c2                	mov    %eax,%edx
c0101e35:	c1 e2 04             	shl    $0x4,%edx
c0101e38:	01 d0                	add    %edx,%eax
c0101e3a:	83 c0 30             	add    $0x30,%eax
c0101e3d:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101e42:	8b 40 04             	mov    0x4(%eax),%eax
c0101e45:	83 f8 02             	cmp    $0x2,%eax
c0101e48:	0f 85 33 01 00 00    	jne    c0101f81 <delete_PCB+0x2bb>
c0101e4e:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c0101e53:	83 e8 01             	sub    $0x1,%eax
c0101e56:	a3 04 10 17 c0       	mov    %eax,0xc0171004
c0101e5b:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c0101e60:	85 c0                	test   %eax,%eax
c0101e62:	75 19                	jne    c0101e7d <delete_PCB+0x1b7>
c0101e64:	c7 05 c0 f0 10 c0 00 	movl   $0x0,0xc010f0c0
c0101e6b:	00 00 00 
c0101e6e:	c7 05 c4 f0 10 c0 00 	movl   $0x0,0xc010f0c4
c0101e75:	00 00 00 
c0101e78:	e9 2e 02 00 00       	jmp    c01020ab <delete_PCB+0x3e5>
c0101e7d:	a1 c0 f0 10 c0       	mov    0xc010f0c0,%eax
c0101e82:	39 45 08             	cmp    %eax,0x8(%ebp)
c0101e85:	75 43                	jne    c0101eca <delete_PCB+0x204>
c0101e87:	8b 45 08             	mov    0x8(%ebp),%eax
c0101e8a:	c1 e0 02             	shl    $0x2,%eax
c0101e8d:	89 c2                	mov    %eax,%edx
c0101e8f:	c1 e2 04             	shl    $0x4,%edx
c0101e92:	01 d0                	add    %edx,%eax
c0101e94:	83 c0 30             	add    $0x30,%eax
c0101e97:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101e9c:	8b 40 0c             	mov    0xc(%eax),%eax
c0101e9f:	8b 00                	mov    (%eax),%eax
c0101ea1:	a3 c0 f0 10 c0       	mov    %eax,0xc010f0c0
c0101ea6:	8b 45 08             	mov    0x8(%ebp),%eax
c0101ea9:	c1 e0 02             	shl    $0x2,%eax
c0101eac:	89 c2                	mov    %eax,%edx
c0101eae:	c1 e2 04             	shl    $0x4,%edx
c0101eb1:	01 d0                	add    %edx,%eax
c0101eb3:	83 c0 30             	add    $0x30,%eax
c0101eb6:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101ebb:	8b 40 0c             	mov    0xc(%eax),%eax
c0101ebe:	c7 40 40 00 00 00 00 	movl   $0x0,0x40(%eax)
c0101ec5:	e9 e1 01 00 00       	jmp    c01020ab <delete_PCB+0x3e5>
c0101eca:	a1 c4 f0 10 c0       	mov    0xc010f0c4,%eax
c0101ecf:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101ed2:	75 1e                	jne    c0101ef2 <delete_PCB+0x22c>
c0101ed4:	8b 45 08             	mov    0x8(%ebp),%eax
c0101ed7:	c1 e0 02             	shl    $0x2,%eax
c0101eda:	89 c2                	mov    %eax,%edx
c0101edc:	c1 e2 04             	shl    $0x4,%edx
c0101edf:	01 d0                	add    %edx,%eax
c0101ee1:	83 c0 40             	add    $0x40,%eax
c0101ee4:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101ee9:	8b 00                	mov    (%eax),%eax
c0101eeb:	8b 00                	mov    (%eax),%eax
c0101eed:	a3 c4 f0 10 c0       	mov    %eax,0xc010f0c4
c0101ef2:	8b 45 08             	mov    0x8(%ebp),%eax
c0101ef5:	c1 e0 02             	shl    $0x2,%eax
c0101ef8:	89 c2                	mov    %eax,%edx
c0101efa:	c1 e2 04             	shl    $0x4,%edx
c0101efd:	01 d0                	add    %edx,%eax
c0101eff:	83 c0 40             	add    $0x40,%eax
c0101f02:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101f07:	8b 00                	mov    (%eax),%eax
c0101f09:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101f0c:	8b 45 08             	mov    0x8(%ebp),%eax
c0101f0f:	c1 e0 02             	shl    $0x2,%eax
c0101f12:	89 c2                	mov    %eax,%edx
c0101f14:	c1 e2 04             	shl    $0x4,%edx
c0101f17:	01 d0                	add    %edx,%eax
c0101f19:	83 c0 40             	add    $0x40,%eax
c0101f1c:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101f21:	8b 10                	mov    (%eax),%edx
c0101f23:	8b 45 08             	mov    0x8(%ebp),%eax
c0101f26:	c1 e0 02             	shl    $0x2,%eax
c0101f29:	89 c1                	mov    %eax,%ecx
c0101f2b:	c1 e1 04             	shl    $0x4,%ecx
c0101f2e:	01 c8                	add    %ecx,%eax
c0101f30:	83 c0 30             	add    $0x30,%eax
c0101f33:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101f38:	8b 40 0c             	mov    0xc(%eax),%eax
c0101f3b:	89 42 3c             	mov    %eax,0x3c(%edx)
c0101f3e:	8b 45 08             	mov    0x8(%ebp),%eax
c0101f41:	c1 e0 02             	shl    $0x2,%eax
c0101f44:	89 c2                	mov    %eax,%edx
c0101f46:	c1 e2 04             	shl    $0x4,%edx
c0101f49:	01 d0                	add    %edx,%eax
c0101f4b:	83 c0 30             	add    $0x30,%eax
c0101f4e:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101f53:	8b 40 0c             	mov    0xc(%eax),%eax
c0101f56:	85 c0                	test   %eax,%eax
c0101f58:	0f 84 4d 01 00 00    	je     c01020ab <delete_PCB+0x3e5>
c0101f5e:	8b 45 08             	mov    0x8(%ebp),%eax
c0101f61:	c1 e0 02             	shl    $0x2,%eax
c0101f64:	89 c2                	mov    %eax,%edx
c0101f66:	c1 e2 04             	shl    $0x4,%edx
c0101f69:	01 d0                	add    %edx,%eax
c0101f6b:	83 c0 30             	add    $0x30,%eax
c0101f6e:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101f73:	8b 40 0c             	mov    0xc(%eax),%eax
c0101f76:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101f79:	89 50 40             	mov    %edx,0x40(%eax)
c0101f7c:	e9 2a 01 00 00       	jmp    c01020ab <delete_PCB+0x3e5>
c0101f81:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101f86:	83 e8 01             	sub    $0x1,%eax
c0101f89:	a3 10 3f 13 c0       	mov    %eax,0xc0133f10
c0101f8e:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101f93:	85 c0                	test   %eax,%eax
c0101f95:	75 19                	jne    c0101fb0 <delete_PCB+0x2ea>
c0101f97:	c7 05 c8 f0 10 c0 00 	movl   $0x0,0xc010f0c8
c0101f9e:	00 00 00 
c0101fa1:	c7 05 cc f0 10 c0 00 	movl   $0x0,0xc010f0cc
c0101fa8:	00 00 00 
c0101fab:	e9 fb 00 00 00       	jmp    c01020ab <delete_PCB+0x3e5>
c0101fb0:	a1 c8 f0 10 c0       	mov    0xc010f0c8,%eax
c0101fb5:	39 45 08             	cmp    %eax,0x8(%ebp)
c0101fb8:	75 43                	jne    c0101ffd <delete_PCB+0x337>
c0101fba:	8b 45 08             	mov    0x8(%ebp),%eax
c0101fbd:	c1 e0 02             	shl    $0x2,%eax
c0101fc0:	89 c2                	mov    %eax,%edx
c0101fc2:	c1 e2 04             	shl    $0x4,%edx
c0101fc5:	01 d0                	add    %edx,%eax
c0101fc7:	83 c0 30             	add    $0x30,%eax
c0101fca:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101fcf:	8b 40 0c             	mov    0xc(%eax),%eax
c0101fd2:	8b 00                	mov    (%eax),%eax
c0101fd4:	a3 c8 f0 10 c0       	mov    %eax,0xc010f0c8
c0101fd9:	8b 45 08             	mov    0x8(%ebp),%eax
c0101fdc:	c1 e0 02             	shl    $0x2,%eax
c0101fdf:	89 c2                	mov    %eax,%edx
c0101fe1:	c1 e2 04             	shl    $0x4,%edx
c0101fe4:	01 d0                	add    %edx,%eax
c0101fe6:	83 c0 30             	add    $0x30,%eax
c0101fe9:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101fee:	8b 40 0c             	mov    0xc(%eax),%eax
c0101ff1:	c7 40 40 00 00 00 00 	movl   $0x0,0x40(%eax)
c0101ff8:	e9 ae 00 00 00       	jmp    c01020ab <delete_PCB+0x3e5>
c0101ffd:	a1 cc f0 10 c0       	mov    0xc010f0cc,%eax
c0102002:	3b 45 08             	cmp    0x8(%ebp),%eax
c0102005:	75 1e                	jne    c0102025 <delete_PCB+0x35f>
c0102007:	8b 45 08             	mov    0x8(%ebp),%eax
c010200a:	c1 e0 02             	shl    $0x2,%eax
c010200d:	89 c2                	mov    %eax,%edx
c010200f:	c1 e2 04             	shl    $0x4,%edx
c0102012:	01 d0                	add    %edx,%eax
c0102014:	83 c0 40             	add    $0x40,%eax
c0102017:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010201c:	8b 00                	mov    (%eax),%eax
c010201e:	8b 00                	mov    (%eax),%eax
c0102020:	a3 cc f0 10 c0       	mov    %eax,0xc010f0cc
c0102025:	8b 45 08             	mov    0x8(%ebp),%eax
c0102028:	c1 e0 02             	shl    $0x2,%eax
c010202b:	89 c2                	mov    %eax,%edx
c010202d:	c1 e2 04             	shl    $0x4,%edx
c0102030:	01 d0                	add    %edx,%eax
c0102032:	83 c0 40             	add    $0x40,%eax
c0102035:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010203a:	8b 00                	mov    (%eax),%eax
c010203c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c010203f:	8b 45 08             	mov    0x8(%ebp),%eax
c0102042:	c1 e0 02             	shl    $0x2,%eax
c0102045:	89 c2                	mov    %eax,%edx
c0102047:	c1 e2 04             	shl    $0x4,%edx
c010204a:	01 d0                	add    %edx,%eax
c010204c:	83 c0 40             	add    $0x40,%eax
c010204f:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102054:	8b 10                	mov    (%eax),%edx
c0102056:	8b 45 08             	mov    0x8(%ebp),%eax
c0102059:	c1 e0 02             	shl    $0x2,%eax
c010205c:	89 c1                	mov    %eax,%ecx
c010205e:	c1 e1 04             	shl    $0x4,%ecx
c0102061:	01 c8                	add    %ecx,%eax
c0102063:	83 c0 30             	add    $0x30,%eax
c0102066:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010206b:	8b 40 0c             	mov    0xc(%eax),%eax
c010206e:	89 42 3c             	mov    %eax,0x3c(%edx)
c0102071:	8b 45 08             	mov    0x8(%ebp),%eax
c0102074:	c1 e0 02             	shl    $0x2,%eax
c0102077:	89 c2                	mov    %eax,%edx
c0102079:	c1 e2 04             	shl    $0x4,%edx
c010207c:	01 d0                	add    %edx,%eax
c010207e:	83 c0 30             	add    $0x30,%eax
c0102081:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102086:	8b 40 0c             	mov    0xc(%eax),%eax
c0102089:	85 c0                	test   %eax,%eax
c010208b:	74 1e                	je     c01020ab <delete_PCB+0x3e5>
c010208d:	8b 45 08             	mov    0x8(%ebp),%eax
c0102090:	c1 e0 02             	shl    $0x2,%eax
c0102093:	89 c2                	mov    %eax,%edx
c0102095:	c1 e2 04             	shl    $0x4,%edx
c0102098:	01 d0                	add    %edx,%eax
c010209a:	83 c0 30             	add    $0x30,%eax
c010209d:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01020a2:	8b 40 0c             	mov    0xc(%eax),%eax
c01020a5:	8b 55 f4             	mov    -0xc(%ebp),%edx
c01020a8:	89 50 40             	mov    %edx,0x40(%eax)
c01020ab:	c9                   	leave  
c01020ac:	c3                   	ret    

c01020ad <reschedule>:
c01020ad:	55                   	push   %ebp
c01020ae:	89 e5                	mov    %esp,%ebp
c01020b0:	83 ec 28             	sub    $0x28,%esp
c01020b3:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01020b8:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01020bb:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c01020c0:	83 f8 01             	cmp    $0x1,%eax
c01020c3:	75 46                	jne    c010210b <reschedule+0x5e>
c01020c5:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c01020ca:	85 c0                	test   %eax,%eax
c01020cc:	75 3d                	jne    c010210b <reschedule+0x5e>
c01020ce:	b8 f8 3f 17 c0       	mov    $0xc0173ff8,%eax
c01020d3:	83 ec 0c             	sub    $0xc,%esp
c01020d6:	50                   	push   %eax
c01020d7:	e8 61 e2 ff ff       	call   c010033d <set_tss>
c01020dc:	83 c4 10             	add    $0x10,%esp
c01020df:	b8 00 50 13 c0       	mov    $0xc0135000,%eax
c01020e4:	05 00 00 00 40       	add    $0x40000000,%eax
c01020e9:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01020ec:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01020ef:	0f 22 d8             	mov    %eax,%cr3
c01020f2:	66 b8 23 00          	mov    $0x23,%ax
c01020f6:	8e d8                	mov    %eax,%ds
c01020f8:	8e c0                	mov    %eax,%es
c01020fa:	a1 44 3f 13 c0       	mov    0xc0133f44,%eax
c01020ff:	89 c4                	mov    %eax,%esp
c0102101:	61                   	popa   
c0102102:	83 c4 08             	add    $0x8,%esp
c0102105:	cf                   	iret   
c0102106:	e9 f0 01 00 00       	jmp    c01022fb <reschedule+0x24e>
c010210b:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c0102110:	83 f8 01             	cmp    $0x1,%eax
c0102113:	0f 8e 94 00 00 00    	jle    c01021ad <reschedule+0x100>
c0102119:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010211c:	c1 e0 02             	shl    $0x2,%eax
c010211f:	89 c2                	mov    %eax,%edx
c0102121:	c1 e2 04             	shl    $0x4,%edx
c0102124:	01 d0                	add    %edx,%eax
c0102126:	83 c0 30             	add    $0x30,%eax
c0102129:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010212e:	8b 40 0c             	mov    0xc(%eax),%eax
c0102131:	8b 40 08             	mov    0x8(%eax),%eax
c0102134:	c1 e0 0c             	shl    $0xc,%eax
c0102137:	05 00 30 17 c0       	add    $0xc0173000,%eax
c010213c:	05 f8 0f 00 00       	add    $0xff8,%eax
c0102141:	83 ec 0c             	sub    $0xc,%esp
c0102144:	50                   	push   %eax
c0102145:	e8 f3 e1 ff ff       	call   c010033d <set_tss>
c010214a:	83 c4 10             	add    $0x10,%esp
c010214d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102150:	c1 e0 02             	shl    $0x2,%eax
c0102153:	89 c2                	mov    %eax,%edx
c0102155:	c1 e2 04             	shl    $0x4,%edx
c0102158:	01 d0                	add    %edx,%eax
c010215a:	83 c0 30             	add    $0x30,%eax
c010215d:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102162:	8b 40 0c             	mov    0xc(%eax),%eax
c0102165:	8b 40 08             	mov    0x8(%eax),%eax
c0102168:	c1 e0 0c             	shl    $0xc,%eax
c010216b:	05 00 50 13 c0       	add    $0xc0135000,%eax
c0102170:	05 00 00 00 40       	add    $0x40000000,%eax
c0102175:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0102178:	8b 45 e8             	mov    -0x18(%ebp),%eax
c010217b:	0f 22 d8             	mov    %eax,%cr3
c010217e:	66 b8 23 00          	mov    $0x23,%ax
c0102182:	8e d8                	mov    %eax,%ds
c0102184:	8e c0                	mov    %eax,%es
c0102186:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102189:	c1 e0 02             	shl    $0x2,%eax
c010218c:	89 c2                	mov    %eax,%edx
c010218e:	c1 e2 04             	shl    $0x4,%edx
c0102191:	01 d0                	add    %edx,%eax
c0102193:	83 c0 30             	add    $0x30,%eax
c0102196:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010219b:	8b 40 0c             	mov    0xc(%eax),%eax
c010219e:	8b 40 04             	mov    0x4(%eax),%eax
c01021a1:	89 c4                	mov    %eax,%esp
c01021a3:	61                   	popa   
c01021a4:	83 c4 08             	add    $0x8,%esp
c01021a7:	cf                   	iret   
c01021a8:	e9 4e 01 00 00       	jmp    c01022fb <reschedule+0x24e>
c01021ad:	8b 0d b8 f0 10 c0    	mov    0xc010f0b8,%ecx
c01021b3:	a1 c0 f0 10 c0       	mov    0xc010f0c0,%eax
c01021b8:	c1 e0 02             	shl    $0x2,%eax
c01021bb:	89 c2                	mov    %eax,%edx
c01021bd:	c1 e2 04             	shl    $0x4,%edx
c01021c0:	01 d0                	add    %edx,%eax
c01021c2:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c01021c8:	89 c8                	mov    %ecx,%eax
c01021ca:	c1 e0 02             	shl    $0x2,%eax
c01021cd:	89 c1                	mov    %eax,%ecx
c01021cf:	c1 e1 04             	shl    $0x4,%ecx
c01021d2:	01 c8                	add    %ecx,%eax
c01021d4:	83 c0 30             	add    $0x30,%eax
c01021d7:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01021dc:	89 50 0c             	mov    %edx,0xc(%eax)
c01021df:	8b 0d c0 f0 10 c0    	mov    0xc010f0c0,%ecx
c01021e5:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01021ea:	c1 e0 02             	shl    $0x2,%eax
c01021ed:	89 c2                	mov    %eax,%edx
c01021ef:	c1 e2 04             	shl    $0x4,%edx
c01021f2:	01 d0                	add    %edx,%eax
c01021f4:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c01021fa:	89 c8                	mov    %ecx,%eax
c01021fc:	c1 e0 02             	shl    $0x2,%eax
c01021ff:	89 c1                	mov    %eax,%ecx
c0102201:	c1 e1 04             	shl    $0x4,%ecx
c0102204:	01 c8                	add    %ecx,%eax
c0102206:	83 c0 40             	add    $0x40,%eax
c0102209:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010220e:	89 10                	mov    %edx,(%eax)
c0102210:	a1 c4 f0 10 c0       	mov    0xc010f0c4,%eax
c0102215:	a3 bc f0 10 c0       	mov    %eax,0xc010f0bc
c010221a:	c7 05 c0 f0 10 c0 00 	movl   $0x0,0xc010f0c0
c0102221:	00 00 00 
c0102224:	c7 05 c4 f0 10 c0 00 	movl   $0x0,0xc010f0c4
c010222b:	00 00 00 
c010222e:	8b 15 00 10 17 c0    	mov    0xc0171000,%edx
c0102234:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c0102239:	01 d0                	add    %edx,%eax
c010223b:	a3 00 10 17 c0       	mov    %eax,0xc0171000
c0102240:	c7 05 04 10 17 c0 00 	movl   $0x0,0xc0171004
c0102247:	00 00 00 
c010224a:	c7 45 f4 40 3f 13 c0 	movl   $0xc0133f40,-0xc(%ebp)
c0102251:	eb 13                	jmp    c0102266 <reschedule+0x1b9>
c0102253:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102256:	c7 40 34 01 00 00 00 	movl   $0x1,0x34(%eax)
c010225d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102260:	8b 40 3c             	mov    0x3c(%eax),%eax
c0102263:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102266:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c010226a:	75 e7                	jne    c0102253 <reschedule+0x1a6>
c010226c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010226f:	c1 e0 02             	shl    $0x2,%eax
c0102272:	89 c2                	mov    %eax,%edx
c0102274:	c1 e2 04             	shl    $0x4,%edx
c0102277:	01 d0                	add    %edx,%eax
c0102279:	83 c0 30             	add    $0x30,%eax
c010227c:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102281:	8b 40 0c             	mov    0xc(%eax),%eax
c0102284:	8b 40 08             	mov    0x8(%eax),%eax
c0102287:	c1 e0 0c             	shl    $0xc,%eax
c010228a:	05 00 30 17 c0       	add    $0xc0173000,%eax
c010228f:	05 f8 0f 00 00       	add    $0xff8,%eax
c0102294:	83 ec 0c             	sub    $0xc,%esp
c0102297:	50                   	push   %eax
c0102298:	e8 a0 e0 ff ff       	call   c010033d <set_tss>
c010229d:	83 c4 10             	add    $0x10,%esp
c01022a0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01022a3:	c1 e0 02             	shl    $0x2,%eax
c01022a6:	89 c2                	mov    %eax,%edx
c01022a8:	c1 e2 04             	shl    $0x4,%edx
c01022ab:	01 d0                	add    %edx,%eax
c01022ad:	83 c0 30             	add    $0x30,%eax
c01022b0:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01022b5:	8b 40 0c             	mov    0xc(%eax),%eax
c01022b8:	8b 40 08             	mov    0x8(%eax),%eax
c01022bb:	c1 e0 0c             	shl    $0xc,%eax
c01022be:	05 00 50 13 c0       	add    $0xc0135000,%eax
c01022c3:	05 00 00 00 40       	add    $0x40000000,%eax
c01022c8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01022cb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01022ce:	0f 22 d8             	mov    %eax,%cr3
c01022d1:	66 b8 23 00          	mov    $0x23,%ax
c01022d5:	8e d8                	mov    %eax,%ds
c01022d7:	8e c0                	mov    %eax,%es
c01022d9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01022dc:	c1 e0 02             	shl    $0x2,%eax
c01022df:	89 c2                	mov    %eax,%edx
c01022e1:	c1 e2 04             	shl    $0x4,%edx
c01022e4:	01 d0                	add    %edx,%eax
c01022e6:	83 c0 30             	add    $0x30,%eax
c01022e9:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01022ee:	8b 40 0c             	mov    0xc(%eax),%eax
c01022f1:	8b 40 04             	mov    0x4(%eax),%eax
c01022f4:	89 c4                	mov    %eax,%esp
c01022f6:	61                   	popa   
c01022f7:	83 c4 08             	add    $0x8,%esp
c01022fa:	cf                   	iret   
c01022fb:	c9                   	leave  
c01022fc:	c3                   	ret    

c01022fd <time_treat>:
c01022fd:	55                   	push   %ebp
c01022fe:	89 e5                	mov    %esp,%ebp
c0102300:	53                   	push   %ebx
c0102301:	83 ec 14             	sub    $0x14,%esp
c0102304:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c0102309:	83 f8 01             	cmp    $0x1,%eax
c010230c:	0f 84 eb 00 00 00    	je     c01023fd <time_treat+0x100>
c0102312:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102317:	c1 e0 02             	shl    $0x2,%eax
c010231a:	89 c2                	mov    %eax,%edx
c010231c:	c1 e2 04             	shl    $0x4,%edx
c010231f:	01 d0                	add    %edx,%eax
c0102321:	83 c0 30             	add    $0x30,%eax
c0102324:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102329:	8b 40 0c             	mov    0xc(%eax),%eax
c010232c:	8b 50 38             	mov    0x38(%eax),%edx
c010232f:	83 ea 01             	sub    $0x1,%edx
c0102332:	89 50 38             	mov    %edx,0x38(%eax)
c0102335:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c010233a:	c1 e0 02             	shl    $0x2,%eax
c010233d:	89 c2                	mov    %eax,%edx
c010233f:	c1 e2 04             	shl    $0x4,%edx
c0102342:	01 d0                	add    %edx,%eax
c0102344:	83 c0 30             	add    $0x30,%eax
c0102347:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010234c:	8b 40 0c             	mov    0xc(%eax),%eax
c010234f:	8b 40 38             	mov    0x38(%eax),%eax
c0102352:	85 c0                	test   %eax,%eax
c0102354:	0f 85 2b 01 00 00    	jne    c0102485 <time_treat+0x188>
c010235a:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c010235f:	c1 e0 02             	shl    $0x2,%eax
c0102362:	89 c2                	mov    %eax,%edx
c0102364:	c1 e2 04             	shl    $0x4,%edx
c0102367:	01 d0                	add    %edx,%eax
c0102369:	83 c0 30             	add    $0x30,%eax
c010236c:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102371:	8b 40 0c             	mov    0xc(%eax),%eax
c0102374:	8b 40 08             	mov    0x8(%eax),%eax
c0102377:	89 c3                	mov    %eax,%ebx
c0102379:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c010237e:	c1 e0 02             	shl    $0x2,%eax
c0102381:	89 c2                	mov    %eax,%edx
c0102383:	c1 e2 04             	shl    $0x4,%edx
c0102386:	01 d0                	add    %edx,%eax
c0102388:	83 c0 30             	add    $0x30,%eax
c010238b:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102390:	8b 40 0c             	mov    0xc(%eax),%eax
c0102393:	8b 50 30             	mov    0x30(%eax),%edx
c0102396:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c010239b:	c1 e0 02             	shl    $0x2,%eax
c010239e:	89 c1                	mov    %eax,%ecx
c01023a0:	c1 e1 04             	shl    $0x4,%ecx
c01023a3:	01 c8                	add    %ecx,%eax
c01023a5:	83 c0 30             	add    $0x30,%eax
c01023a8:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01023ad:	8b 40 0c             	mov    0xc(%eax),%eax
c01023b0:	83 c0 0c             	add    $0xc,%eax
c01023b3:	83 ec 08             	sub    $0x8,%esp
c01023b6:	53                   	push   %ebx
c01023b7:	52                   	push   %edx
c01023b8:	68 c8 00 00 00       	push   $0xc8
c01023bd:	50                   	push   %eax
c01023be:	ff 75 08             	pushl  0x8(%ebp)
c01023c1:	6a 02                	push   $0x2
c01023c3:	e8 2f f5 ff ff       	call   c01018f7 <add_PCB>
c01023c8:	83 c4 20             	add    $0x20,%esp
c01023cb:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01023d0:	c1 e0 02             	shl    $0x2,%eax
c01023d3:	89 c2                	mov    %eax,%edx
c01023d5:	c1 e2 04             	shl    $0x4,%edx
c01023d8:	01 d0                	add    %edx,%eax
c01023da:	83 c0 30             	add    $0x30,%eax
c01023dd:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01023e2:	8b 40 0c             	mov    0xc(%eax),%eax
c01023e5:	8b 00                	mov    (%eax),%eax
c01023e7:	83 ec 0c             	sub    $0xc,%esp
c01023ea:	50                   	push   %eax
c01023eb:	e8 d6 f8 ff ff       	call   c0101cc6 <delete_PCB>
c01023f0:	83 c4 10             	add    $0x10,%esp
c01023f3:	e8 b5 fc ff ff       	call   c01020ad <reschedule>
c01023f8:	e9 88 00 00 00       	jmp    c0102485 <time_treat+0x188>
c01023fd:	8b 45 08             	mov    0x8(%ebp),%eax
c0102400:	8b 10                	mov    (%eax),%edx
c0102402:	89 15 00 31 13 c0    	mov    %edx,0xc0133100
c0102408:	8b 50 04             	mov    0x4(%eax),%edx
c010240b:	89 15 04 31 13 c0    	mov    %edx,0xc0133104
c0102411:	8b 50 08             	mov    0x8(%eax),%edx
c0102414:	89 15 08 31 13 c0    	mov    %edx,0xc0133108
c010241a:	8b 50 0c             	mov    0xc(%eax),%edx
c010241d:	89 15 0c 31 13 c0    	mov    %edx,0xc013310c
c0102423:	8b 50 10             	mov    0x10(%eax),%edx
c0102426:	89 15 10 31 13 c0    	mov    %edx,0xc0133110
c010242c:	8b 50 14             	mov    0x14(%eax),%edx
c010242f:	89 15 14 31 13 c0    	mov    %edx,0xc0133114
c0102435:	8b 50 18             	mov    0x18(%eax),%edx
c0102438:	89 15 18 31 13 c0    	mov    %edx,0xc0133118
c010243e:	8b 50 1c             	mov    0x1c(%eax),%edx
c0102441:	89 15 1c 31 13 c0    	mov    %edx,0xc013311c
c0102447:	8b 50 20             	mov    0x20(%eax),%edx
c010244a:	89 15 20 31 13 c0    	mov    %edx,0xc0133120
c0102450:	8b 50 24             	mov    0x24(%eax),%edx
c0102453:	89 15 24 31 13 c0    	mov    %edx,0xc0133124
c0102459:	8b 50 28             	mov    0x28(%eax),%edx
c010245c:	89 15 28 31 13 c0    	mov    %edx,0xc0133128
c0102462:	8b 50 2c             	mov    0x2c(%eax),%edx
c0102465:	89 15 2c 31 13 c0    	mov    %edx,0xc013312c
c010246b:	8b 50 30             	mov    0x30(%eax),%edx
c010246e:	89 15 30 31 13 c0    	mov    %edx,0xc0133130
c0102474:	8b 50 34             	mov    0x34(%eax),%edx
c0102477:	89 15 34 31 13 c0    	mov    %edx,0xc0133134
c010247d:	8b 40 38             	mov    0x38(%eax),%eax
c0102480:	a3 38 31 13 c0       	mov    %eax,0xc0133138
c0102485:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c010248c:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0102491:	85 c0                	test   %eax,%eax
c0102493:	0f 84 99 00 00 00    	je     c0102532 <time_treat+0x235>
c0102499:	a1 c8 f0 10 c0       	mov    0xc010f0c8,%eax
c010249e:	c1 e0 02             	shl    $0x2,%eax
c01024a1:	89 c2                	mov    %eax,%edx
c01024a3:	c1 e2 04             	shl    $0x4,%edx
c01024a6:	01 d0                	add    %edx,%eax
c01024a8:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01024ad:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01024b0:	eb 7a                	jmp    c010252c <time_treat+0x22f>
c01024b2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024b5:	8b 40 38             	mov    0x38(%eax),%eax
c01024b8:	8d 50 ff             	lea    -0x1(%eax),%edx
c01024bb:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024be:	89 50 38             	mov    %edx,0x38(%eax)
c01024c1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024c4:	8b 40 38             	mov    0x38(%eax),%eax
c01024c7:	85 c0                	test   %eax,%eax
c01024c9:	75 58                	jne    c0102523 <time_treat+0x226>
c01024cb:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c01024d2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024d5:	8b 40 08             	mov    0x8(%eax),%eax
c01024d8:	89 c3                	mov    %eax,%ebx
c01024da:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024dd:	8b 50 30             	mov    0x30(%eax),%edx
c01024e0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024e3:	8d 48 0c             	lea    0xc(%eax),%ecx
c01024e6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024e9:	8b 40 04             	mov    0x4(%eax),%eax
c01024ec:	83 ec 08             	sub    $0x8,%esp
c01024ef:	53                   	push   %ebx
c01024f0:	52                   	push   %edx
c01024f1:	68 c8 00 00 00       	push   $0xc8
c01024f6:	51                   	push   %ecx
c01024f7:	50                   	push   %eax
c01024f8:	6a 02                	push   $0x2
c01024fa:	e8 f8 f3 ff ff       	call   c01018f7 <add_PCB>
c01024ff:	83 c4 20             	add    $0x20,%esp
c0102502:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102505:	8b 00                	mov    (%eax),%eax
c0102507:	89 45 ec             	mov    %eax,-0x14(%ebp)
c010250a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010250d:	8b 40 3c             	mov    0x3c(%eax),%eax
c0102510:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102513:	83 ec 0c             	sub    $0xc,%esp
c0102516:	ff 75 ec             	pushl  -0x14(%ebp)
c0102519:	e8 a8 f7 ff ff       	call   c0101cc6 <delete_PCB>
c010251e:	83 c4 10             	add    $0x10,%esp
c0102521:	eb 09                	jmp    c010252c <time_treat+0x22f>
c0102523:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102526:	8b 40 3c             	mov    0x3c(%eax),%eax
c0102529:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010252c:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0102530:	75 80                	jne    c01024b2 <time_treat+0x1b5>
c0102532:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102536:	74 0f                	je     c0102547 <time_treat+0x24a>
c0102538:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c010253d:	83 f8 01             	cmp    $0x1,%eax
c0102540:	75 05                	jne    c0102547 <time_treat+0x24a>
c0102542:	e8 66 fb ff ff       	call   c01020ad <reschedule>
c0102547:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c010254a:	c9                   	leave  
c010254b:	c3                   	ret    

c010254c <process_exit>:
c010254c:	55                   	push   %ebp
c010254d:	89 e5                	mov    %esp,%ebp
c010254f:	83 ec 08             	sub    $0x8,%esp
c0102552:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c0102557:	83 f8 01             	cmp    $0x1,%eax
c010255a:	75 15                	jne    c0102571 <process_exit+0x25>
c010255c:	83 ec 0c             	sub    $0xc,%esp
c010255f:	68 35 35 10 c0       	push   $0xc0103535
c0102564:	e8 30 ec ff ff       	call   c0101199 <printk>
c0102569:	83 c4 10             	add    $0x10,%esp
c010256c:	e9 84 00 00 00       	jmp    c01025f5 <process_exit+0xa9>
c0102571:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102576:	c1 e0 02             	shl    $0x2,%eax
c0102579:	89 c2                	mov    %eax,%edx
c010257b:	c1 e2 04             	shl    $0x4,%edx
c010257e:	01 d0                	add    %edx,%eax
c0102580:	83 c0 30             	add    $0x30,%eax
c0102583:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102588:	8b 40 0c             	mov    0xc(%eax),%eax
c010258b:	8b 40 08             	mov    0x8(%eax),%eax
c010258e:	83 ec 08             	sub    $0x8,%esp
c0102591:	50                   	push   %eax
c0102592:	68 48 35 10 c0       	push   $0xc0103548
c0102597:	e8 fd eb ff ff       	call   c0101199 <printk>
c010259c:	83 c4 10             	add    $0x10,%esp
c010259f:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01025a4:	c1 e0 02             	shl    $0x2,%eax
c01025a7:	89 c2                	mov    %eax,%edx
c01025a9:	c1 e2 04             	shl    $0x4,%edx
c01025ac:	01 d0                	add    %edx,%eax
c01025ae:	83 c0 30             	add    $0x30,%eax
c01025b1:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01025b6:	8b 40 0c             	mov    0xc(%eax),%eax
c01025b9:	8b 40 08             	mov    0x8(%eax),%eax
c01025bc:	83 ec 0c             	sub    $0xc,%esp
c01025bf:	50                   	push   %eax
c01025c0:	e8 a9 f1 ff ff       	call   c010176e <free_a_pid>
c01025c5:	83 c4 10             	add    $0x10,%esp
c01025c8:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01025cd:	c1 e0 02             	shl    $0x2,%eax
c01025d0:	89 c2                	mov    %eax,%edx
c01025d2:	c1 e2 04             	shl    $0x4,%edx
c01025d5:	01 d0                	add    %edx,%eax
c01025d7:	83 c0 30             	add    $0x30,%eax
c01025da:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01025df:	8b 40 0c             	mov    0xc(%eax),%eax
c01025e2:	8b 00                	mov    (%eax),%eax
c01025e4:	83 ec 0c             	sub    $0xc,%esp
c01025e7:	50                   	push   %eax
c01025e8:	e8 d9 f6 ff ff       	call   c0101cc6 <delete_PCB>
c01025ed:	83 c4 10             	add    $0x10,%esp
c01025f0:	e8 b8 fa ff ff       	call   c01020ad <reschedule>
c01025f5:	c9                   	leave  
c01025f6:	c3                   	ret    

c01025f7 <load_PCB>:
c01025f7:	55                   	push   %ebp
c01025f8:	89 e5                	mov    %esp,%ebp
c01025fa:	83 ec 18             	sub    $0x18,%esp
c01025fd:	e8 17 f1 ff ff       	call   c0101719 <get_free_pid>
c0102602:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102605:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c010260a:	8b 55 f0             	mov    -0x10(%ebp),%edx
c010260d:	c1 e2 0c             	shl    $0xc,%edx
c0102610:	81 c2 00 50 13 c0    	add    $0xc0135000,%edx
c0102616:	83 ec 04             	sub    $0x4,%esp
c0102619:	68 00 10 00 00       	push   $0x1000
c010261e:	50                   	push   %eax
c010261f:	52                   	push   %edx
c0102620:	e8 99 eb ff ff       	call   c01011be <my_memcpy>
c0102625:	83 c4 10             	add    $0x10,%esp
c0102628:	c7 45 ec 00 04 00 00 	movl   $0x400,-0x14(%ebp)
c010262f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102636:	eb 1d                	jmp    c0102655 <load_PCB+0x5e>
c0102638:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010263b:	0f b7 04 c5 44 f0 1a 	movzwl -0x3fe50fbc(,%eax,8),%eax
c0102642:	c0 
c0102643:	8d 50 01             	lea    0x1(%eax),%edx
c0102646:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102649:	66 89 14 c5 44 f0 1a 	mov    %dx,-0x3fe50fbc(,%eax,8)
c0102650:	c0 
c0102651:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102655:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102658:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c010265b:	7c db                	jl     c0102638 <load_PCB+0x41>
c010265d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102660:	c1 e0 0c             	shl    $0xc,%eax
c0102663:	05 00 50 13 c0       	add    $0xc0135000,%eax
c0102668:	83 ec 08             	sub    $0x8,%esp
c010266b:	50                   	push   %eax
c010266c:	ff 75 08             	pushl  0x8(%ebp)
c010266f:	e8 18 ed ff ff       	call   c010138c <load>
c0102674:	83 c4 10             	add    $0x10,%esp
c0102677:	89 c1                	mov    %eax,%ecx
c0102679:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010267c:	89 c2                	mov    %eax,%edx
c010267e:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102685:	89 c2                	mov    %eax,%edx
c0102687:	89 d0                	mov    %edx,%eax
c0102689:	c1 e0 04             	shl    $0x4,%eax
c010268c:	29 d0                	sub    %edx,%eax
c010268e:	83 c0 20             	add    $0x20,%eax
c0102691:	05 00 31 13 c0       	add    $0xc0133100,%eax
c0102696:	89 48 08             	mov    %ecx,0x8(%eax)
c0102699:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010269c:	89 c2                	mov    %eax,%edx
c010269e:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01026a5:	89 c2                	mov    %eax,%edx
c01026a7:	89 d0                	mov    %edx,%eax
c01026a9:	c1 e0 04             	shl    $0x4,%eax
c01026ac:	29 d0                	sub    %edx,%eax
c01026ae:	83 c0 20             	add    $0x20,%eax
c01026b1:	05 00 31 13 c0       	add    $0xc0133100,%eax
c01026b6:	c7 40 0c 1b 00 00 00 	movl   $0x1b,0xc(%eax)
c01026bd:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01026c0:	89 c2                	mov    %eax,%edx
c01026c2:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01026c9:	89 c2                	mov    %eax,%edx
c01026cb:	89 d0                	mov    %edx,%eax
c01026cd:	c1 e0 04             	shl    $0x4,%eax
c01026d0:	29 d0                	sub    %edx,%eax
c01026d2:	83 c0 30             	add    $0x30,%eax
c01026d5:	05 00 31 13 c0       	add    $0xc0133100,%eax
c01026da:	c7 00 02 02 00 00    	movl   $0x202,(%eax)
c01026e0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01026e3:	89 c2                	mov    %eax,%edx
c01026e5:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01026ec:	89 c2                	mov    %eax,%edx
c01026ee:	89 d0                	mov    %edx,%eax
c01026f0:	c1 e0 04             	shl    $0x4,%eax
c01026f3:	29 d0                	sub    %edx,%eax
c01026f5:	83 c0 30             	add    $0x30,%eax
c01026f8:	05 00 31 13 c0       	add    $0xc0133100,%eax
c01026fd:	c7 40 04 f0 ff 60 00 	movl   $0x60fff0,0x4(%eax)
c0102704:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102707:	89 c2                	mov    %eax,%edx
c0102709:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102710:	89 c2                	mov    %eax,%edx
c0102712:	89 d0                	mov    %edx,%eax
c0102714:	c1 e0 04             	shl    $0x4,%eax
c0102717:	29 d0                	sub    %edx,%eax
c0102719:	83 c0 30             	add    $0x30,%eax
c010271c:	05 00 31 13 c0       	add    $0xc0133100,%eax
c0102721:	c7 40 08 23 00 00 00 	movl   $0x23,0x8(%eax)
c0102728:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010272b:	89 c2                	mov    %eax,%edx
c010272d:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102734:	89 c2                	mov    %eax,%edx
c0102736:	89 d0                	mov    %edx,%eax
c0102738:	c1 e0 04             	shl    $0x4,%eax
c010273b:	29 d0                	sub    %edx,%eax
c010273d:	05 00 31 13 c0       	add    $0xc0133100,%eax
c0102742:	83 ec 08             	sub    $0x8,%esp
c0102745:	ff 75 f0             	pushl  -0x10(%ebp)
c0102748:	6a 00                	push   $0x0
c010274a:	68 c8 00 00 00       	push   $0xc8
c010274f:	ff 75 0c             	pushl  0xc(%ebp)
c0102752:	50                   	push   %eax
c0102753:	6a 01                	push   $0x1
c0102755:	e8 9d f1 ff ff       	call   c01018f7 <add_PCB>
c010275a:	83 c4 20             	add    $0x20,%esp
c010275d:	c9                   	leave  
c010275e:	c3                   	ret    

c010275f <my_sleep>:
c010275f:	55                   	push   %ebp
c0102760:	89 e5                	mov    %esp,%ebp
c0102762:	53                   	push   %ebx
c0102763:	83 ec 04             	sub    $0x4,%esp
c0102766:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c010276b:	83 f8 01             	cmp    $0x1,%eax
c010276e:	75 15                	jne    c0102785 <my_sleep+0x26>
c0102770:	83 ec 0c             	sub    $0xc,%esp
c0102773:	68 59 35 10 c0       	push   $0xc0103559
c0102778:	e8 1c ea ff ff       	call   c0101199 <printk>
c010277d:	83 c4 10             	add    $0x10,%esp
c0102780:	e9 9c 00 00 00       	jmp    c0102821 <my_sleep+0xc2>
c0102785:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c010278a:	c1 e0 02             	shl    $0x2,%eax
c010278d:	89 c2                	mov    %eax,%edx
c010278f:	c1 e2 04             	shl    $0x4,%edx
c0102792:	01 d0                	add    %edx,%eax
c0102794:	83 c0 30             	add    $0x30,%eax
c0102797:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010279c:	8b 40 0c             	mov    0xc(%eax),%eax
c010279f:	8b 40 08             	mov    0x8(%eax),%eax
c01027a2:	89 c3                	mov    %eax,%ebx
c01027a4:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01027a9:	c1 e0 02             	shl    $0x2,%eax
c01027ac:	89 c2                	mov    %eax,%edx
c01027ae:	c1 e2 04             	shl    $0x4,%edx
c01027b1:	01 d0                	add    %edx,%eax
c01027b3:	83 c0 30             	add    $0x30,%eax
c01027b6:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01027bb:	8b 40 0c             	mov    0xc(%eax),%eax
c01027be:	8b 50 30             	mov    0x30(%eax),%edx
c01027c1:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01027c6:	c1 e0 02             	shl    $0x2,%eax
c01027c9:	89 c1                	mov    %eax,%ecx
c01027cb:	c1 e1 04             	shl    $0x4,%ecx
c01027ce:	01 c8                	add    %ecx,%eax
c01027d0:	83 c0 30             	add    $0x30,%eax
c01027d3:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01027d8:	8b 40 0c             	mov    0xc(%eax),%eax
c01027db:	83 c0 0c             	add    $0xc,%eax
c01027de:	83 ec 08             	sub    $0x8,%esp
c01027e1:	53                   	push   %ebx
c01027e2:	52                   	push   %edx
c01027e3:	ff 75 08             	pushl  0x8(%ebp)
c01027e6:	50                   	push   %eax
c01027e7:	ff 75 0c             	pushl  0xc(%ebp)
c01027ea:	6a 03                	push   $0x3
c01027ec:	e8 06 f1 ff ff       	call   c01018f7 <add_PCB>
c01027f1:	83 c4 20             	add    $0x20,%esp
c01027f4:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01027f9:	c1 e0 02             	shl    $0x2,%eax
c01027fc:	89 c2                	mov    %eax,%edx
c01027fe:	c1 e2 04             	shl    $0x4,%edx
c0102801:	01 d0                	add    %edx,%eax
c0102803:	83 c0 30             	add    $0x30,%eax
c0102806:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010280b:	8b 40 0c             	mov    0xc(%eax),%eax
c010280e:	8b 00                	mov    (%eax),%eax
c0102810:	83 ec 0c             	sub    $0xc,%esp
c0102813:	50                   	push   %eax
c0102814:	e8 ad f4 ff ff       	call   c0101cc6 <delete_PCB>
c0102819:	83 c4 10             	add    $0x10,%esp
c010281c:	e8 8c f8 ff ff       	call   c01020ad <reschedule>
c0102821:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102824:	c9                   	leave  
c0102825:	c3                   	ret    

c0102826 <my_fork>:
c0102826:	55                   	push   %ebp
c0102827:	89 e5                	mov    %esp,%ebp
c0102829:	56                   	push   %esi
c010282a:	53                   	push   %ebx
c010282b:	83 ec 10             	sub    $0x10,%esp
c010282e:	e8 e6 ee ff ff       	call   c0101719 <get_free_pid>
c0102833:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102836:	83 ec 08             	sub    $0x8,%esp
c0102839:	ff 75 f4             	pushl  -0xc(%ebp)
c010283c:	68 75 35 10 c0       	push   $0xc0103575
c0102841:	e8 53 e9 ff ff       	call   c0101199 <printk>
c0102846:	83 c4 10             	add    $0x10,%esp
c0102849:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010284c:	c1 e0 02             	shl    $0x2,%eax
c010284f:	89 c2                	mov    %eax,%edx
c0102851:	c1 e2 04             	shl    $0x4,%edx
c0102854:	29 c2                	sub    %eax,%edx
c0102856:	89 d0                	mov    %edx,%eax
c0102858:	8d 90 00 31 13 c0    	lea    -0x3feccf00(%eax),%edx
c010285e:	8b 45 08             	mov    0x8(%ebp),%eax
c0102861:	8b 08                	mov    (%eax),%ecx
c0102863:	89 0a                	mov    %ecx,(%edx)
c0102865:	8b 48 04             	mov    0x4(%eax),%ecx
c0102868:	89 4a 04             	mov    %ecx,0x4(%edx)
c010286b:	8b 48 08             	mov    0x8(%eax),%ecx
c010286e:	89 4a 08             	mov    %ecx,0x8(%edx)
c0102871:	8b 48 0c             	mov    0xc(%eax),%ecx
c0102874:	89 4a 0c             	mov    %ecx,0xc(%edx)
c0102877:	8b 48 10             	mov    0x10(%eax),%ecx
c010287a:	89 4a 10             	mov    %ecx,0x10(%edx)
c010287d:	8b 48 14             	mov    0x14(%eax),%ecx
c0102880:	89 4a 14             	mov    %ecx,0x14(%edx)
c0102883:	8b 48 18             	mov    0x18(%eax),%ecx
c0102886:	89 4a 18             	mov    %ecx,0x18(%edx)
c0102889:	8b 48 1c             	mov    0x1c(%eax),%ecx
c010288c:	89 4a 1c             	mov    %ecx,0x1c(%edx)
c010288f:	8b 48 20             	mov    0x20(%eax),%ecx
c0102892:	89 4a 20             	mov    %ecx,0x20(%edx)
c0102895:	8b 48 24             	mov    0x24(%eax),%ecx
c0102898:	89 4a 24             	mov    %ecx,0x24(%edx)
c010289b:	8b 48 28             	mov    0x28(%eax),%ecx
c010289e:	89 4a 28             	mov    %ecx,0x28(%edx)
c01028a1:	8b 48 2c             	mov    0x2c(%eax),%ecx
c01028a4:	89 4a 2c             	mov    %ecx,0x2c(%edx)
c01028a7:	8b 48 30             	mov    0x30(%eax),%ecx
c01028aa:	89 4a 30             	mov    %ecx,0x30(%edx)
c01028ad:	8b 48 34             	mov    0x34(%eax),%ecx
c01028b0:	89 4a 34             	mov    %ecx,0x34(%edx)
c01028b3:	8b 40 38             	mov    0x38(%eax),%eax
c01028b6:	89 42 38             	mov    %eax,0x38(%edx)
c01028b9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01028bc:	89 c2                	mov    %eax,%edx
c01028be:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01028c5:	89 c2                	mov    %eax,%edx
c01028c7:	89 d0                	mov    %edx,%eax
c01028c9:	c1 e0 04             	shl    $0x4,%eax
c01028cc:	29 d0                	sub    %edx,%eax
c01028ce:	83 c0 10             	add    $0x10,%eax
c01028d1:	05 00 31 13 c0       	add    $0xc0133100,%eax
c01028d6:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c01028dd:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c01028e2:	83 f8 01             	cmp    $0x1,%eax
c01028e5:	75 1a                	jne    c0102901 <my_fork+0xdb>
c01028e7:	83 ec 0c             	sub    $0xc,%esp
c01028ea:	68 84 35 10 c0       	push   $0xc0103584
c01028ef:	e8 a5 e8 ff ff       	call   c0101199 <printk>
c01028f4:	83 c4 10             	add    $0x10,%esp
c01028f7:	b8 00 00 00 00       	mov    $0x0,%eax
c01028fc:	e9 03 01 00 00       	jmp    c0102a04 <my_fork+0x1de>
c0102901:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c0102906:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102909:	c1 e2 0c             	shl    $0xc,%edx
c010290c:	81 c2 00 50 13 c0    	add    $0xc0135000,%edx
c0102912:	83 ec 04             	sub    $0x4,%esp
c0102915:	68 00 10 00 00       	push   $0x1000
c010291a:	50                   	push   %eax
c010291b:	52                   	push   %edx
c010291c:	e8 9d e8 ff ff       	call   c01011be <my_memcpy>
c0102921:	83 c4 10             	add    $0x10,%esp
c0102924:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102929:	c1 e0 02             	shl    $0x2,%eax
c010292c:	89 c2                	mov    %eax,%edx
c010292e:	c1 e2 04             	shl    $0x4,%edx
c0102931:	01 d0                	add    %edx,%eax
c0102933:	83 c0 30             	add    $0x30,%eax
c0102936:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010293b:	8b 40 0c             	mov    0xc(%eax),%eax
c010293e:	8b 58 08             	mov    0x8(%eax),%ebx
c0102941:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102946:	c1 e0 02             	shl    $0x2,%eax
c0102949:	89 c2                	mov    %eax,%edx
c010294b:	c1 e2 04             	shl    $0x4,%edx
c010294e:	01 d0                	add    %edx,%eax
c0102950:	83 c0 30             	add    $0x30,%eax
c0102953:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102958:	8b 40 0c             	mov    0xc(%eax),%eax
c010295b:	8b 48 38             	mov    0x38(%eax),%ecx
c010295e:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102963:	c1 e0 02             	shl    $0x2,%eax
c0102966:	89 c2                	mov    %eax,%edx
c0102968:	c1 e2 04             	shl    $0x4,%edx
c010296b:	01 d0                	add    %edx,%eax
c010296d:	83 c0 30             	add    $0x30,%eax
c0102970:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102975:	8b 40 0c             	mov    0xc(%eax),%eax
c0102978:	8d 70 0c             	lea    0xc(%eax),%esi
c010297b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010297e:	89 c2                	mov    %eax,%edx
c0102980:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102987:	89 c2                	mov    %eax,%edx
c0102989:	89 d0                	mov    %edx,%eax
c010298b:	c1 e0 04             	shl    $0x4,%eax
c010298e:	29 d0                	sub    %edx,%eax
c0102990:	05 00 31 13 c0       	add    $0xc0133100,%eax
c0102995:	83 ec 08             	sub    $0x8,%esp
c0102998:	ff 75 f4             	pushl  -0xc(%ebp)
c010299b:	53                   	push   %ebx
c010299c:	51                   	push   %ecx
c010299d:	56                   	push   %esi
c010299e:	50                   	push   %eax
c010299f:	6a 01                	push   $0x1
c01029a1:	e8 51 ef ff ff       	call   c01018f7 <add_PCB>
c01029a6:	83 c4 20             	add    $0x20,%esp
c01029a9:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01029ae:	c1 e0 02             	shl    $0x2,%eax
c01029b1:	89 c2                	mov    %eax,%edx
c01029b3:	c1 e2 04             	shl    $0x4,%edx
c01029b6:	01 d0                	add    %edx,%eax
c01029b8:	83 c0 30             	add    $0x30,%eax
c01029bb:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01029c0:	8b 40 0c             	mov    0xc(%eax),%eax
c01029c3:	8b 40 08             	mov    0x8(%eax),%eax
c01029c6:	c1 e0 0c             	shl    $0xc,%eax
c01029c9:	8d 90 00 50 13 c0    	lea    -0x3fecb000(%eax),%edx
c01029cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01029d2:	c1 e0 0c             	shl    $0xc,%eax
c01029d5:	05 00 50 13 c0       	add    $0xc0135000,%eax
c01029da:	83 ec 08             	sub    $0x8,%esp
c01029dd:	52                   	push   %edx
c01029de:	50                   	push   %eax
c01029df:	e8 68 07 00 00       	call   c010314c <copy_pgdir>
c01029e4:	83 c4 10             	add    $0x10,%esp
c01029e7:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01029ec:	c1 e0 02             	shl    $0x2,%eax
c01029ef:	89 c2                	mov    %eax,%edx
c01029f1:	c1 e2 04             	shl    $0x4,%edx
c01029f4:	01 d0                	add    %edx,%eax
c01029f6:	83 c0 30             	add    $0x30,%eax
c01029f9:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01029fe:	8b 40 0c             	mov    0xc(%eax),%eax
c0102a01:	8b 40 08             	mov    0x8(%eax),%eax
c0102a04:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0102a07:	5b                   	pop    %ebx
c0102a08:	5e                   	pop    %esi
c0102a09:	5d                   	pop    %ebp
c0102a0a:	c3                   	ret    

c0102a0b <_paddr>:
c0102a0b:	55                   	push   %ebp
c0102a0c:	89 e5                	mov    %esp,%ebp
c0102a0e:	83 ec 08             	sub    $0x8,%esp
c0102a11:	8b 45 10             	mov    0x10(%ebp),%eax
c0102a14:	3d ff ff ff bf       	cmp    $0xbfffffff,%eax
c0102a19:	77 16                	ja     c0102a31 <_paddr+0x26>
c0102a1b:	ff 75 10             	pushl  0x10(%ebp)
c0102a1e:	68 c0 35 10 c0       	push   $0xc01035c0
c0102a23:	ff 75 0c             	pushl  0xc(%ebp)
c0102a26:	ff 75 08             	pushl  0x8(%ebp)
c0102a29:	e8 6b e7 ff ff       	call   c0101199 <printk>
c0102a2e:	83 c4 10             	add    $0x10,%esp
c0102a31:	8b 45 10             	mov    0x10(%ebp),%eax
c0102a34:	05 00 00 00 40       	add    $0x40000000,%eax
c0102a39:	c9                   	leave  
c0102a3a:	c3                   	ret    

c0102a3b <_kaddr>:
c0102a3b:	55                   	push   %ebp
c0102a3c:	89 e5                	mov    %esp,%ebp
c0102a3e:	83 ec 08             	sub    $0x8,%esp
c0102a41:	8b 45 10             	mov    0x10(%ebp),%eax
c0102a44:	c1 e8 0c             	shr    $0xc,%eax
c0102a47:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0102a4c:	76 13                	jbe    c0102a61 <_kaddr+0x26>
c0102a4e:	83 ec 08             	sub    $0x8,%esp
c0102a51:	ff 75 10             	pushl  0x10(%ebp)
c0102a54:	68 e4 35 10 c0       	push   $0xc01035e4
c0102a59:	e8 3b e7 ff ff       	call   c0101199 <printk>
c0102a5e:	83 c4 10             	add    $0x10,%esp
c0102a61:	8b 45 10             	mov    0x10(%ebp),%eax
c0102a64:	2d 00 00 00 40       	sub    $0x40000000,%eax
c0102a69:	c9                   	leave  
c0102a6a:	c3                   	ret    

c0102a6b <page2pa>:
c0102a6b:	55                   	push   %ebp
c0102a6c:	89 e5                	mov    %esp,%ebp
c0102a6e:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a71:	ba 40 f0 1a c0       	mov    $0xc01af040,%edx
c0102a76:	29 d0                	sub    %edx,%eax
c0102a78:	c1 f8 03             	sar    $0x3,%eax
c0102a7b:	c1 e0 0c             	shl    $0xc,%eax
c0102a7e:	5d                   	pop    %ebp
c0102a7f:	c3                   	ret    

c0102a80 <pa2page>:
c0102a80:	55                   	push   %ebp
c0102a81:	89 e5                	mov    %esp,%ebp
c0102a83:	83 ec 08             	sub    $0x8,%esp
c0102a86:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a89:	c1 e8 0c             	shr    $0xc,%eax
c0102a8c:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0102a91:	76 10                	jbe    c0102aa3 <pa2page+0x23>
c0102a93:	83 ec 0c             	sub    $0xc,%esp
c0102a96:	68 08 36 10 c0       	push   $0xc0103608
c0102a9b:	e8 f9 e6 ff ff       	call   c0101199 <printk>
c0102aa0:	83 c4 10             	add    $0x10,%esp
c0102aa3:	8b 45 08             	mov    0x8(%ebp),%eax
c0102aa6:	c1 e8 0c             	shr    $0xc,%eax
c0102aa9:	c1 e0 03             	shl    $0x3,%eax
c0102aac:	05 40 f0 1a c0       	add    $0xc01af040,%eax
c0102ab1:	c9                   	leave  
c0102ab2:	c3                   	ret    

c0102ab3 <page2kva>:
c0102ab3:	55                   	push   %ebp
c0102ab4:	89 e5                	mov    %esp,%ebp
c0102ab6:	83 ec 08             	sub    $0x8,%esp
c0102ab9:	ff 75 08             	pushl  0x8(%ebp)
c0102abc:	e8 aa ff ff ff       	call   c0102a6b <page2pa>
c0102ac1:	83 c4 04             	add    $0x4,%esp
c0102ac4:	83 ec 04             	sub    $0x4,%esp
c0102ac7:	50                   	push   %eax
c0102ac8:	6a 52                	push   $0x52
c0102aca:	68 27 36 10 c0       	push   $0xc0103627
c0102acf:	e8 67 ff ff ff       	call   c0102a3b <_kaddr>
c0102ad4:	83 c4 10             	add    $0x10,%esp
c0102ad7:	c9                   	leave  
c0102ad8:	c3                   	ret    

c0102ad9 <mm_alloc>:
c0102ad9:	55                   	push   %ebp
c0102ada:	89 e5                	mov    %esp,%ebp
c0102adc:	83 ec 28             	sub    $0x28,%esp
c0102adf:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102ae2:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102ae5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102ae8:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102aed:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102af0:	c7 45 e8 00 10 00 00 	movl   $0x1000,-0x18(%ebp)
c0102af7:	8b 55 10             	mov    0x10(%ebp),%edx
c0102afa:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102afd:	01 c2                	add    %eax,%edx
c0102aff:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102b02:	01 d0                	add    %edx,%eax
c0102b04:	83 e8 01             	sub    $0x1,%eax
c0102b07:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0102b0a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0102b0d:	ba 00 00 00 00       	mov    $0x0,%edx
c0102b12:	f7 75 e8             	divl   -0x18(%ebp)
c0102b15:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0102b18:	29 d0                	sub    %edx,%eax
c0102b1a:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0102b1d:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102b20:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102b23:	eb 2b                	jmp    c0102b50 <mm_alloc+0x77>
c0102b25:	83 ec 0c             	sub    $0xc,%esp
c0102b28:	6a 00                	push   $0x0
c0102b2a:	e8 9c 01 00 00       	call   c0102ccb <page_alloc>
c0102b2f:	83 c4 10             	add    $0x10,%esp
c0102b32:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0102b35:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102b38:	6a 07                	push   $0x7
c0102b3a:	50                   	push   %eax
c0102b3b:	ff 75 dc             	pushl  -0x24(%ebp)
c0102b3e:	ff 75 08             	pushl  0x8(%ebp)
c0102b41:	e8 84 03 00 00       	call   c0102eca <page_insert>
c0102b46:	83 c4 10             	add    $0x10,%esp
c0102b49:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
c0102b50:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102b53:	3b 45 e0             	cmp    -0x20(%ebp),%eax
c0102b56:	72 cd                	jb     c0102b25 <mm_alloc+0x4c>
c0102b58:	c9                   	leave  
c0102b59:	c3                   	ret    

c0102b5a <init_kern_pgdir>:
c0102b5a:	55                   	push   %ebp
c0102b5b:	89 e5                	mov    %esp,%ebp
c0102b5d:	53                   	push   %ebx
c0102b5e:	83 ec 24             	sub    $0x24,%esp
c0102b61:	c7 45 e8 00 10 11 c0 	movl   $0xc0111000,-0x18(%ebp)
c0102b68:	c7 45 f0 00 20 11 c0 	movl   $0xc0112000,-0x10(%ebp)
c0102b6f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102b76:	eb 3a                	jmp    c0102bb2 <init_kern_pgdir+0x58>
c0102b78:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102b7b:	05 00 03 00 00       	add    $0x300,%eax
c0102b80:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102b87:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102b8a:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0102b8d:	83 ec 04             	sub    $0x4,%esp
c0102b90:	ff 75 f0             	pushl  -0x10(%ebp)
c0102b93:	6a 42                	push   $0x42
c0102b95:	68 36 36 10 c0       	push   $0xc0103636
c0102b9a:	e8 6c fe ff ff       	call   c0102a0b <_paddr>
c0102b9f:	83 c4 10             	add    $0x10,%esp
c0102ba2:	83 c8 03             	or     $0x3,%eax
c0102ba5:	89 03                	mov    %eax,(%ebx)
c0102ba7:	81 45 f0 00 10 00 00 	addl   $0x1000,-0x10(%ebp)
c0102bae:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102bb2:	83 7d f4 1f          	cmpl   $0x1f,-0xc(%ebp)
c0102bb6:	7e c0                	jle    c0102b78 <init_kern_pgdir+0x1e>
c0102bb8:	c7 45 ec 00 f0 ff 07 	movl   $0x7fff000,-0x14(%ebp)
c0102bbf:	83 6d f0 04          	subl   $0x4,-0x10(%ebp)
c0102bc3:	eb 18                	jmp    c0102bdd <init_kern_pgdir+0x83>
c0102bc5:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102bc8:	83 c8 07             	or     $0x7,%eax
c0102bcb:	89 c2                	mov    %eax,%edx
c0102bcd:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102bd0:	89 10                	mov    %edx,(%eax)
c0102bd2:	83 6d f0 04          	subl   $0x4,-0x10(%ebp)
c0102bd6:	81 6d ec 00 10 00 00 	subl   $0x1000,-0x14(%ebp)
c0102bdd:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102be1:	79 e2                	jns    c0102bc5 <init_kern_pgdir+0x6b>
c0102be3:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102be6:	a3 04 f0 1a c0       	mov    %eax,0xc01af004
c0102beb:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c0102bf0:	83 ec 04             	sub    $0x4,%esp
c0102bf3:	50                   	push   %eax
c0102bf4:	6a 4f                	push   $0x4f
c0102bf6:	68 36 36 10 c0       	push   $0xc0103636
c0102bfb:	e8 0b fe ff ff       	call   c0102a0b <_paddr>
c0102c00:	83 c4 10             	add    $0x10,%esp
c0102c03:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0102c06:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0102c09:	0f 22 d8             	mov    %eax,%cr3
c0102c0c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102c0f:	c9                   	leave  
c0102c10:	c3                   	ret    

c0102c11 <page_init>:
c0102c11:	55                   	push   %ebp
c0102c12:	89 e5                	mov    %esp,%ebp
c0102c14:	83 ec 18             	sub    $0x18,%esp
c0102c17:	e8 3e ff ff ff       	call   c0102b5a <init_kern_pgdir>
c0102c1c:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
c0102c23:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102c2a:	eb 11                	jmp    c0102c3d <page_init+0x2c>
c0102c2c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102c2f:	66 c7 04 c5 44 f0 1a 	movw   $0x1,-0x3fe50fbc(,%eax,8)
c0102c36:	c0 01 00 
c0102c39:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102c3d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102c40:	3b 45 f4             	cmp    -0xc(%ebp),%eax
c0102c43:	77 e7                	ja     c0102c2c <page_init+0x1b>
c0102c45:	c7 45 f4 ff 7f 00 00 	movl   $0x7fff,-0xc(%ebp)
c0102c4c:	eb 31                	jmp    c0102c7f <page_init+0x6e>
c0102c4e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102c51:	66 c7 04 c5 44 f0 1a 	movw   $0x0,-0x3fe50fbc(,%eax,8)
c0102c58:	c0 00 00 
c0102c5b:	8b 15 00 00 11 c0    	mov    0xc0110000,%edx
c0102c61:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102c64:	89 14 c5 40 f0 1a c0 	mov    %edx,-0x3fe50fc0(,%eax,8)
c0102c6b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102c6e:	c1 e0 03             	shl    $0x3,%eax
c0102c71:	05 40 f0 1a c0       	add    $0xc01af040,%eax
c0102c76:	a3 00 00 11 c0       	mov    %eax,0xc0110000
c0102c7b:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
c0102c7f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102c82:	3b 45 f4             	cmp    -0xc(%ebp),%eax
c0102c85:	76 c7                	jbe    c0102c4e <page_init+0x3d>
c0102c87:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
c0102c8e:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102c91:	05 ff f9 00 00       	add    $0xf9ff,%eax
c0102c96:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0102c99:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102c9c:	ba 00 00 00 00       	mov    $0x0,%edx
c0102ca1:	f7 75 ec             	divl   -0x14(%ebp)
c0102ca4:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102ca7:	29 d0                	sub    %edx,%eax
c0102ca9:	89 c2                	mov    %eax,%edx
c0102cab:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c0102cb0:	83 ec 0c             	sub    $0xc,%esp
c0102cb3:	6a 03                	push   $0x3
c0102cb5:	68 00 00 0a 00       	push   $0xa0000
c0102cba:	52                   	push   %edx
c0102cbb:	68 00 00 0a 00       	push   $0xa0000
c0102cc0:	50                   	push   %eax
c0102cc1:	e8 a1 01 00 00       	call   c0102e67 <boot_map_region>
c0102cc6:	83 c4 20             	add    $0x20,%esp
c0102cc9:	c9                   	leave  
c0102cca:	c3                   	ret    

c0102ccb <page_alloc>:
c0102ccb:	55                   	push   %ebp
c0102ccc:	89 e5                	mov    %esp,%ebp
c0102cce:	83 ec 18             	sub    $0x18,%esp
c0102cd1:	a1 00 00 11 c0       	mov    0xc0110000,%eax
c0102cd6:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102cd9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102cdd:	75 07                	jne    c0102ce6 <page_alloc+0x1b>
c0102cdf:	b8 00 00 00 00       	mov    $0x0,%eax
c0102ce4:	eb 43                	jmp    c0102d29 <page_alloc+0x5e>
c0102ce6:	8b 45 08             	mov    0x8(%ebp),%eax
c0102ce9:	83 e0 01             	and    $0x1,%eax
c0102cec:	85 c0                	test   %eax,%eax
c0102cee:	74 21                	je     c0102d11 <page_alloc+0x46>
c0102cf0:	83 ec 0c             	sub    $0xc,%esp
c0102cf3:	ff 75 f4             	pushl  -0xc(%ebp)
c0102cf6:	e8 b8 fd ff ff       	call   c0102ab3 <page2kva>
c0102cfb:	83 c4 10             	add    $0x10,%esp
c0102cfe:	83 ec 04             	sub    $0x4,%esp
c0102d01:	68 00 10 00 00       	push   $0x1000
c0102d06:	6a 00                	push   $0x0
c0102d08:	50                   	push   %eax
c0102d09:	e8 cd e4 ff ff       	call   c01011db <my_memset>
c0102d0e:	83 c4 10             	add    $0x10,%esp
c0102d11:	a1 00 00 11 c0       	mov    0xc0110000,%eax
c0102d16:	8b 00                	mov    (%eax),%eax
c0102d18:	a3 00 00 11 c0       	mov    %eax,0xc0110000
c0102d1d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102d20:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0102d26:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102d29:	c9                   	leave  
c0102d2a:	c3                   	ret    

c0102d2b <page_free>:
c0102d2b:	55                   	push   %ebp
c0102d2c:	89 e5                	mov    %esp,%ebp
c0102d2e:	8b 15 00 00 11 c0    	mov    0xc0110000,%edx
c0102d34:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d37:	89 10                	mov    %edx,(%eax)
c0102d39:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d3c:	a3 00 00 11 c0       	mov    %eax,0xc0110000
c0102d41:	5d                   	pop    %ebp
c0102d42:	c3                   	ret    

c0102d43 <page_decref>:
c0102d43:	55                   	push   %ebp
c0102d44:	89 e5                	mov    %esp,%ebp
c0102d46:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d49:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102d4d:	8d 50 ff             	lea    -0x1(%eax),%edx
c0102d50:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d53:	66 89 50 04          	mov    %dx,0x4(%eax)
c0102d57:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d5a:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102d5e:	66 85 c0             	test   %ax,%ax
c0102d61:	75 0b                	jne    c0102d6e <page_decref+0x2b>
c0102d63:	ff 75 08             	pushl  0x8(%ebp)
c0102d66:	e8 c0 ff ff ff       	call   c0102d2b <page_free>
c0102d6b:	83 c4 04             	add    $0x4,%esp
c0102d6e:	c9                   	leave  
c0102d6f:	c3                   	ret    

c0102d70 <pgdir_walk>:
c0102d70:	55                   	push   %ebp
c0102d71:	89 e5                	mov    %esp,%ebp
c0102d73:	53                   	push   %ebx
c0102d74:	83 ec 14             	sub    $0x14,%esp
c0102d77:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102d7a:	c1 e8 16             	shr    $0x16,%eax
c0102d7d:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102d80:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102d83:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102d8a:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d8d:	01 d0                	add    %edx,%eax
c0102d8f:	8b 00                	mov    (%eax),%eax
c0102d91:	83 e0 01             	and    $0x1,%eax
c0102d94:	85 c0                	test   %eax,%eax
c0102d96:	74 31                	je     c0102dc9 <pgdir_walk+0x59>
c0102d98:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102d9b:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102da2:	8b 45 08             	mov    0x8(%ebp),%eax
c0102da5:	01 d0                	add    %edx,%eax
c0102da7:	8b 00                	mov    (%eax),%eax
c0102da9:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102dae:	83 ec 04             	sub    $0x4,%esp
c0102db1:	50                   	push   %eax
c0102db2:	68 c8 00 00 00       	push   $0xc8
c0102db7:	68 36 36 10 c0       	push   $0xc0103636
c0102dbc:	e8 7a fc ff ff       	call   c0102a3b <_kaddr>
c0102dc1:	83 c4 10             	add    $0x10,%esp
c0102dc4:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102dc7:	eb 7c                	jmp    c0102e45 <pgdir_walk+0xd5>
c0102dc9:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0102dcd:	75 0a                	jne    c0102dd9 <pgdir_walk+0x69>
c0102dcf:	b8 00 00 00 00       	mov    $0x0,%eax
c0102dd4:	e9 89 00 00 00       	jmp    c0102e62 <pgdir_walk+0xf2>
c0102dd9:	83 ec 0c             	sub    $0xc,%esp
c0102ddc:	6a 01                	push   $0x1
c0102dde:	e8 e8 fe ff ff       	call   c0102ccb <page_alloc>
c0102de3:	83 c4 10             	add    $0x10,%esp
c0102de6:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102de9:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102ded:	75 07                	jne    c0102df6 <pgdir_walk+0x86>
c0102def:	b8 00 00 00 00       	mov    $0x0,%eax
c0102df4:	eb 6c                	jmp    c0102e62 <pgdir_walk+0xf2>
c0102df6:	83 ec 0c             	sub    $0xc,%esp
c0102df9:	ff 75 ec             	pushl  -0x14(%ebp)
c0102dfc:	e8 b2 fc ff ff       	call   c0102ab3 <page2kva>
c0102e01:	83 c4 10             	add    $0x10,%esp
c0102e04:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102e07:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102e0a:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102e0e:	8d 50 01             	lea    0x1(%eax),%edx
c0102e11:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102e14:	66 89 50 04          	mov    %dx,0x4(%eax)
c0102e18:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102e1b:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102e22:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e25:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0102e28:	83 ec 04             	sub    $0x4,%esp
c0102e2b:	ff 75 f4             	pushl  -0xc(%ebp)
c0102e2e:	68 d3 00 00 00       	push   $0xd3
c0102e33:	68 36 36 10 c0       	push   $0xc0103636
c0102e38:	e8 ce fb ff ff       	call   c0102a0b <_paddr>
c0102e3d:	83 c4 10             	add    $0x10,%esp
c0102e40:	83 c8 07             	or     $0x7,%eax
c0102e43:	89 03                	mov    %eax,(%ebx)
c0102e45:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102e48:	c1 e8 0c             	shr    $0xc,%eax
c0102e4b:	25 ff 03 00 00       	and    $0x3ff,%eax
c0102e50:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0102e53:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102e56:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102e5d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102e60:	01 d0                	add    %edx,%eax
c0102e62:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102e65:	c9                   	leave  
c0102e66:	c3                   	ret    

c0102e67 <boot_map_region>:
c0102e67:	55                   	push   %ebp
c0102e68:	89 e5                	mov    %esp,%ebp
c0102e6a:	83 ec 18             	sub    $0x18,%esp
c0102e6d:	8b 45 10             	mov    0x10(%ebp),%eax
c0102e70:	c1 e8 0c             	shr    $0xc,%eax
c0102e73:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102e76:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102e7d:	eb 41                	jmp    c0102ec0 <boot_map_region+0x59>
c0102e7f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102e82:	83 ec 04             	sub    $0x4,%esp
c0102e85:	6a 01                	push   $0x1
c0102e87:	50                   	push   %eax
c0102e88:	ff 75 08             	pushl  0x8(%ebp)
c0102e8b:	e8 e0 fe ff ff       	call   c0102d70 <pgdir_walk>
c0102e90:	83 c4 10             	add    $0x10,%esp
c0102e93:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102e96:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102e9a:	75 02                	jne    c0102e9e <boot_map_region+0x37>
c0102e9c:	eb 2a                	jmp    c0102ec8 <boot_map_region+0x61>
c0102e9e:	8b 45 18             	mov    0x18(%ebp),%eax
c0102ea1:	0b 45 14             	or     0x14(%ebp),%eax
c0102ea4:	83 c8 01             	or     $0x1,%eax
c0102ea7:	89 c2                	mov    %eax,%edx
c0102ea9:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102eac:	89 10                	mov    %edx,(%eax)
c0102eae:	81 45 0c 00 10 00 00 	addl   $0x1000,0xc(%ebp)
c0102eb5:	81 45 14 00 10 00 00 	addl   $0x1000,0x14(%ebp)
c0102ebc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102ec0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102ec3:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0102ec6:	7c b7                	jl     c0102e7f <boot_map_region+0x18>
c0102ec8:	c9                   	leave  
c0102ec9:	c3                   	ret    

c0102eca <page_insert>:
c0102eca:	55                   	push   %ebp
c0102ecb:	89 e5                	mov    %esp,%ebp
c0102ecd:	83 ec 18             	sub    $0x18,%esp
c0102ed0:	83 ec 04             	sub    $0x4,%esp
c0102ed3:	6a 01                	push   $0x1
c0102ed5:	ff 75 10             	pushl  0x10(%ebp)
c0102ed8:	ff 75 08             	pushl  0x8(%ebp)
c0102edb:	e8 90 fe ff ff       	call   c0102d70 <pgdir_walk>
c0102ee0:	83 c4 10             	add    $0x10,%esp
c0102ee3:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102ee6:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102eea:	75 07                	jne    c0102ef3 <page_insert+0x29>
c0102eec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0102ef1:	eb 75                	jmp    c0102f68 <page_insert+0x9e>
c0102ef3:	83 ec 0c             	sub    $0xc,%esp
c0102ef6:	ff 75 0c             	pushl  0xc(%ebp)
c0102ef9:	e8 6d fb ff ff       	call   c0102a6b <page2pa>
c0102efe:	83 c4 10             	add    $0x10,%esp
c0102f01:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102f04:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102f07:	8b 00                	mov    (%eax),%eax
c0102f09:	83 e0 01             	and    $0x1,%eax
c0102f0c:	85 c0                	test   %eax,%eax
c0102f0e:	74 32                	je     c0102f42 <page_insert+0x78>
c0102f10:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102f13:	8b 00                	mov    (%eax),%eax
c0102f15:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102f1a:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0102f1d:	75 12                	jne    c0102f31 <page_insert+0x67>
c0102f1f:	8b 45 14             	mov    0x14(%ebp),%eax
c0102f22:	0b 45 f0             	or     -0x10(%ebp),%eax
c0102f25:	83 c8 01             	or     $0x1,%eax
c0102f28:	89 c2                	mov    %eax,%edx
c0102f2a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102f2d:	89 10                	mov    %edx,(%eax)
c0102f2f:	eb 11                	jmp    c0102f42 <page_insert+0x78>
c0102f31:	83 ec 08             	sub    $0x8,%esp
c0102f34:	ff 75 10             	pushl  0x10(%ebp)
c0102f37:	ff 75 08             	pushl  0x8(%ebp)
c0102f3a:	e8 7a 00 00 00       	call   c0102fb9 <page_remove>
c0102f3f:	83 c4 10             	add    $0x10,%esp
c0102f42:	8b 45 14             	mov    0x14(%ebp),%eax
c0102f45:	0b 45 f0             	or     -0x10(%ebp),%eax
c0102f48:	83 c8 01             	or     $0x1,%eax
c0102f4b:	89 c2                	mov    %eax,%edx
c0102f4d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102f50:	89 10                	mov    %edx,(%eax)
c0102f52:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102f55:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102f59:	8d 50 01             	lea    0x1(%eax),%edx
c0102f5c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102f5f:	66 89 50 04          	mov    %dx,0x4(%eax)
c0102f63:	b8 00 00 00 00       	mov    $0x0,%eax
c0102f68:	c9                   	leave  
c0102f69:	c3                   	ret    

c0102f6a <page_lookup>:
c0102f6a:	55                   	push   %ebp
c0102f6b:	89 e5                	mov    %esp,%ebp
c0102f6d:	83 ec 18             	sub    $0x18,%esp
c0102f70:	83 ec 04             	sub    $0x4,%esp
c0102f73:	6a 00                	push   $0x0
c0102f75:	ff 75 0c             	pushl  0xc(%ebp)
c0102f78:	ff 75 08             	pushl  0x8(%ebp)
c0102f7b:	e8 f0 fd ff ff       	call   c0102d70 <pgdir_walk>
c0102f80:	83 c4 10             	add    $0x10,%esp
c0102f83:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102f86:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102f8a:	75 07                	jne    c0102f93 <page_lookup+0x29>
c0102f8c:	b8 00 00 00 00       	mov    $0x0,%eax
c0102f91:	eb 24                	jmp    c0102fb7 <page_lookup+0x4d>
c0102f93:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0102f97:	74 08                	je     c0102fa1 <page_lookup+0x37>
c0102f99:	8b 45 10             	mov    0x10(%ebp),%eax
c0102f9c:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102f9f:	89 10                	mov    %edx,(%eax)
c0102fa1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102fa4:	8b 00                	mov    (%eax),%eax
c0102fa6:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102fab:	83 ec 0c             	sub    $0xc,%esp
c0102fae:	50                   	push   %eax
c0102faf:	e8 cc fa ff ff       	call   c0102a80 <pa2page>
c0102fb4:	83 c4 10             	add    $0x10,%esp
c0102fb7:	c9                   	leave  
c0102fb8:	c3                   	ret    

c0102fb9 <page_remove>:
c0102fb9:	55                   	push   %ebp
c0102fba:	89 e5                	mov    %esp,%ebp
c0102fbc:	83 ec 18             	sub    $0x18,%esp
c0102fbf:	8d 45 ec             	lea    -0x14(%ebp),%eax
c0102fc2:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102fc5:	83 ec 04             	sub    $0x4,%esp
c0102fc8:	ff 75 f4             	pushl  -0xc(%ebp)
c0102fcb:	ff 75 0c             	pushl  0xc(%ebp)
c0102fce:	ff 75 08             	pushl  0x8(%ebp)
c0102fd1:	e8 94 ff ff ff       	call   c0102f6a <page_lookup>
c0102fd6:	83 c4 10             	add    $0x10,%esp
c0102fd9:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102fdc:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0102fe0:	74 2a                	je     c010300c <page_remove+0x53>
c0102fe2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102fe5:	8b 00                	mov    (%eax),%eax
c0102fe7:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0102fed:	83 ec 0c             	sub    $0xc,%esp
c0102ff0:	ff 75 f0             	pushl  -0x10(%ebp)
c0102ff3:	e8 4b fd ff ff       	call   c0102d43 <page_decref>
c0102ff8:	83 c4 10             	add    $0x10,%esp
c0102ffb:	83 ec 08             	sub    $0x8,%esp
c0102ffe:	ff 75 0c             	pushl  0xc(%ebp)
c0103001:	ff 75 08             	pushl  0x8(%ebp)
c0103004:	e8 05 00 00 00       	call   c010300e <tlb_invalidate>
c0103009:	83 c4 10             	add    $0x10,%esp
c010300c:	c9                   	leave  
c010300d:	c3                   	ret    

c010300e <tlb_invalidate>:
c010300e:	55                   	push   %ebp
c010300f:	89 e5                	mov    %esp,%ebp
c0103011:	83 ec 10             	sub    $0x10,%esp
c0103014:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103017:	89 45 fc             	mov    %eax,-0x4(%ebp)
c010301a:	8b 45 fc             	mov    -0x4(%ebp),%eax
c010301d:	0f 01 38             	invlpg (%eax)
c0103020:	c9                   	leave  
c0103021:	c3                   	ret    

c0103022 <free_pgdir>:
c0103022:	55                   	push   %ebp
c0103023:	89 e5                	mov    %esp,%ebp
c0103025:	83 ec 18             	sub    $0x18,%esp
c0103028:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c010302f:	e9 09 01 00 00       	jmp    c010313d <free_pgdir+0x11b>
c0103034:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103037:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010303e:	8b 45 08             	mov    0x8(%ebp),%eax
c0103041:	01 d0                	add    %edx,%eax
c0103043:	8b 00                	mov    (%eax),%eax
c0103045:	83 e0 01             	and    $0x1,%eax
c0103048:	85 c0                	test   %eax,%eax
c010304a:	0f 84 e9 00 00 00    	je     c0103139 <free_pgdir+0x117>
c0103050:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c0103055:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0103058:	c1 e2 02             	shl    $0x2,%edx
c010305b:	01 d0                	add    %edx,%eax
c010305d:	8b 00                	mov    (%eax),%eax
c010305f:	83 e0 01             	and    $0x1,%eax
c0103062:	85 c0                	test   %eax,%eax
c0103064:	74 05                	je     c010306b <free_pgdir+0x49>
c0103066:	e9 ce 00 00 00       	jmp    c0103139 <free_pgdir+0x117>
c010306b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010306e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103075:	8b 45 08             	mov    0x8(%ebp),%eax
c0103078:	01 d0                	add    %edx,%eax
c010307a:	8b 00                	mov    (%eax),%eax
c010307c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0103081:	83 ec 04             	sub    $0x4,%esp
c0103084:	50                   	push   %eax
c0103085:	68 68 01 00 00       	push   $0x168
c010308a:	68 36 36 10 c0       	push   $0xc0103636
c010308f:	e8 a7 f9 ff ff       	call   c0102a3b <_kaddr>
c0103094:	83 c4 10             	add    $0x10,%esp
c0103097:	89 45 ec             	mov    %eax,-0x14(%ebp)
c010309a:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c01030a1:	eb 4a                	jmp    c01030ed <free_pgdir+0xcb>
c01030a3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01030a6:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01030ad:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01030b0:	01 d0                	add    %edx,%eax
c01030b2:	8b 00                	mov    (%eax),%eax
c01030b4:	83 e0 01             	and    $0x1,%eax
c01030b7:	85 c0                	test   %eax,%eax
c01030b9:	74 2e                	je     c01030e9 <free_pgdir+0xc7>
c01030bb:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01030be:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01030c5:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01030c8:	01 d0                	add    %edx,%eax
c01030ca:	8b 00                	mov    (%eax),%eax
c01030cc:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01030d1:	83 ec 0c             	sub    $0xc,%esp
c01030d4:	50                   	push   %eax
c01030d5:	e8 a6 f9 ff ff       	call   c0102a80 <pa2page>
c01030da:	83 c4 10             	add    $0x10,%esp
c01030dd:	83 ec 0c             	sub    $0xc,%esp
c01030e0:	50                   	push   %eax
c01030e1:	e8 5d fc ff ff       	call   c0102d43 <page_decref>
c01030e6:	83 c4 10             	add    $0x10,%esp
c01030e9:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c01030ed:	81 7d f0 ff 03 00 00 	cmpl   $0x3ff,-0x10(%ebp)
c01030f4:	7e ad                	jle    c01030a3 <free_pgdir+0x81>
c01030f6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01030f9:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103100:	8b 45 08             	mov    0x8(%ebp),%eax
c0103103:	01 d0                	add    %edx,%eax
c0103105:	8b 00                	mov    (%eax),%eax
c0103107:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c010310c:	83 ec 0c             	sub    $0xc,%esp
c010310f:	50                   	push   %eax
c0103110:	e8 6b f9 ff ff       	call   c0102a80 <pa2page>
c0103115:	83 c4 10             	add    $0x10,%esp
c0103118:	83 ec 0c             	sub    $0xc,%esp
c010311b:	50                   	push   %eax
c010311c:	e8 22 fc ff ff       	call   c0102d43 <page_decref>
c0103121:	83 c4 10             	add    $0x10,%esp
c0103124:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103127:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010312e:	8b 45 08             	mov    0x8(%ebp),%eax
c0103131:	01 d0                	add    %edx,%eax
c0103133:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0103139:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c010313d:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
c0103144:	0f 8e ea fe ff ff    	jle    c0103034 <free_pgdir+0x12>
c010314a:	c9                   	leave  
c010314b:	c3                   	ret    

c010314c <copy_pgdir>:
c010314c:	55                   	push   %ebp
c010314d:	89 e5                	mov    %esp,%ebp
c010314f:	53                   	push   %ebx
c0103150:	83 ec 24             	sub    $0x24,%esp
c0103153:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c010315a:	e9 d8 01 00 00       	jmp    c0103337 <copy_pgdir+0x1eb>
c010315f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103162:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103169:	8b 45 0c             	mov    0xc(%ebp),%eax
c010316c:	01 d0                	add    %edx,%eax
c010316e:	8b 00                	mov    (%eax),%eax
c0103170:	83 e0 01             	and    $0x1,%eax
c0103173:	85 c0                	test   %eax,%eax
c0103175:	0f 84 b8 01 00 00    	je     c0103333 <copy_pgdir+0x1e7>
c010317b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010317e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103185:	8b 45 08             	mov    0x8(%ebp),%eax
c0103188:	01 d0                	add    %edx,%eax
c010318a:	8b 00                	mov    (%eax),%eax
c010318c:	83 e0 01             	and    $0x1,%eax
c010318f:	85 c0                	test   %eax,%eax
c0103191:	74 05                	je     c0103198 <copy_pgdir+0x4c>
c0103193:	e9 9b 01 00 00       	jmp    c0103333 <copy_pgdir+0x1e7>
c0103198:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010319b:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01031a2:	8b 45 0c             	mov    0xc(%ebp),%eax
c01031a5:	01 d0                	add    %edx,%eax
c01031a7:	8b 00                	mov    (%eax),%eax
c01031a9:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01031ae:	83 ec 04             	sub    $0x4,%esp
c01031b1:	50                   	push   %eax
c01031b2:	68 7c 01 00 00       	push   $0x17c
c01031b7:	68 36 36 10 c0       	push   $0xc0103636
c01031bc:	e8 7a f8 ff ff       	call   c0102a3b <_kaddr>
c01031c1:	83 c4 10             	add    $0x10,%esp
c01031c4:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01031c7:	83 ec 0c             	sub    $0xc,%esp
c01031ca:	6a 01                	push   $0x1
c01031cc:	e8 fa fa ff ff       	call   c0102ccb <page_alloc>
c01031d1:	83 c4 10             	add    $0x10,%esp
c01031d4:	89 45 e8             	mov    %eax,-0x18(%ebp)
c01031d7:	8b 45 e8             	mov    -0x18(%ebp),%eax
c01031da:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c01031de:	8d 50 01             	lea    0x1(%eax),%edx
c01031e1:	8b 45 e8             	mov    -0x18(%ebp),%eax
c01031e4:	66 89 50 04          	mov    %dx,0x4(%eax)
c01031e8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01031eb:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01031f2:	8b 45 08             	mov    0x8(%ebp),%eax
c01031f5:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c01031f8:	83 ec 0c             	sub    $0xc,%esp
c01031fb:	ff 75 e8             	pushl  -0x18(%ebp)
c01031fe:	e8 68 f8 ff ff       	call   c0102a6b <page2pa>
c0103203:	83 c4 10             	add    $0x10,%esp
c0103206:	89 c1                	mov    %eax,%ecx
c0103208:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010320b:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103212:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103215:	01 d0                	add    %edx,%eax
c0103217:	8b 00                	mov    (%eax),%eax
c0103219:	25 ff 0f 00 00       	and    $0xfff,%eax
c010321e:	09 c8                	or     %ecx,%eax
c0103220:	89 03                	mov    %eax,(%ebx)
c0103222:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103225:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010322c:	8b 45 08             	mov    0x8(%ebp),%eax
c010322f:	01 d0                	add    %edx,%eax
c0103231:	8b 00                	mov    (%eax),%eax
c0103233:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0103238:	83 ec 04             	sub    $0x4,%esp
c010323b:	50                   	push   %eax
c010323c:	68 83 01 00 00       	push   $0x183
c0103241:	68 36 36 10 c0       	push   $0xc0103636
c0103246:	e8 f0 f7 ff ff       	call   c0102a3b <_kaddr>
c010324b:	83 c4 10             	add    $0x10,%esp
c010324e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0103251:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0103258:	e9 c9 00 00 00       	jmp    c0103326 <copy_pgdir+0x1da>
c010325d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0103260:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103267:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010326a:	01 d0                	add    %edx,%eax
c010326c:	8b 00                	mov    (%eax),%eax
c010326e:	83 e0 01             	and    $0x1,%eax
c0103271:	85 c0                	test   %eax,%eax
c0103273:	0f 84 a9 00 00 00    	je     c0103322 <copy_pgdir+0x1d6>
c0103279:	83 ec 0c             	sub    $0xc,%esp
c010327c:	6a 00                	push   $0x0
c010327e:	e8 48 fa ff ff       	call   c0102ccb <page_alloc>
c0103283:	83 c4 10             	add    $0x10,%esp
c0103286:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0103289:	8b 45 e8             	mov    -0x18(%ebp),%eax
c010328c:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0103290:	8d 50 01             	lea    0x1(%eax),%edx
c0103293:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0103296:	66 89 50 04          	mov    %dx,0x4(%eax)
c010329a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010329d:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01032a4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01032a7:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c01032aa:	83 ec 0c             	sub    $0xc,%esp
c01032ad:	ff 75 e8             	pushl  -0x18(%ebp)
c01032b0:	e8 b6 f7 ff ff       	call   c0102a6b <page2pa>
c01032b5:	83 c4 10             	add    $0x10,%esp
c01032b8:	89 c1                	mov    %eax,%ecx
c01032ba:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01032bd:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01032c4:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01032c7:	01 d0                	add    %edx,%eax
c01032c9:	8b 00                	mov    (%eax),%eax
c01032cb:	25 ff 0f 00 00       	and    $0xfff,%eax
c01032d0:	09 c8                	or     %ecx,%eax
c01032d2:	89 03                	mov    %eax,(%ebx)
c01032d4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01032d7:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01032de:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01032e1:	01 d0                	add    %edx,%eax
c01032e3:	8b 00                	mov    (%eax),%eax
c01032e5:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01032ea:	83 ec 04             	sub    $0x4,%esp
c01032ed:	50                   	push   %eax
c01032ee:	68 89 01 00 00       	push   $0x189
c01032f3:	68 36 36 10 c0       	push   $0xc0103636
c01032f8:	e8 3e f7 ff ff       	call   c0102a3b <_kaddr>
c01032fd:	83 c4 10             	add    $0x10,%esp
c0103300:	89 c3                	mov    %eax,%ebx
c0103302:	83 ec 0c             	sub    $0xc,%esp
c0103305:	ff 75 e8             	pushl  -0x18(%ebp)
c0103308:	e8 a6 f7 ff ff       	call   c0102ab3 <page2kva>
c010330d:	83 c4 10             	add    $0x10,%esp
c0103310:	83 ec 04             	sub    $0x4,%esp
c0103313:	68 00 10 00 00       	push   $0x1000
c0103318:	53                   	push   %ebx
c0103319:	50                   	push   %eax
c010331a:	e8 9f de ff ff       	call   c01011be <my_memcpy>
c010331f:	83 c4 10             	add    $0x10,%esp
c0103322:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0103326:	81 7d f0 ff 03 00 00 	cmpl   $0x3ff,-0x10(%ebp)
c010332d:	0f 8e 2a ff ff ff    	jle    c010325d <copy_pgdir+0x111>
c0103333:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0103337:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
c010333e:	0f 8e 1b fe ff ff    	jle    c010315f <copy_pgdir+0x13>
c0103344:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0103347:	c9                   	leave  
c0103348:	c3                   	ret    
