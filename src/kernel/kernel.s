
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
c0100155:	68 84 33 10 c0       	push   $0xc0103384
c010015a:	e8 3a 10 00 00       	call   c0101199 <printk>
c010015f:	83 c4 10             	add    $0x10,%esp
c0100162:	e8 d4 ff ff ff       	call   c010013b <disable_interrupt>
c0100167:	e8 7f 00 00 00       	call   c01001eb <init_serial>
c010016c:	e8 33 01 00 00       	call   c01002a4 <init_timer>
c0100171:	e8 ae 05 00 00       	call   c0100724 <init_intr>
c0100176:	e8 e6 07 00 00       	call   c0100961 <init_idt>
c010017b:	e8 3f 04 00 00       	call   c01005bf <init_seg>
c0100180:	e8 c5 2a 00 00       	call   c0102c4a <page_init>
c0100185:	e8 f7 15 00 00       	call   c0101781 <init_PCB>
c010018a:	83 ec 08             	sub    $0x8,%esp
c010018d:	68 9b 33 10 c0       	push   $0xc010339b
c0100192:	68 00 b0 04 00       	push   $0x4b000
c0100197:	e8 63 24 00 00       	call   c01025ff <load_PCB>
c010019c:	83 c4 10             	add    $0x10,%esp
c010019f:	83 ec 08             	sub    $0x8,%esp
c01001a2:	68 a0 33 10 c0       	push   $0xc01033a0
c01001a7:	68 00 90 01 00       	push   $0x19000
c01001ac:	e8 4e 24 00 00       	call   c01025ff <load_PCB>
c01001b1:	83 c4 10             	add    $0x10,%esp
c01001b4:	e8 15 15 00 00       	call   c01016ce <debug>
c01001b9:	e8 d9 1e 00 00       	call   c0102097 <reschedule>
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
c0100c42:	e8 a0 16 00 00       	call   c01022e7 <time_treat>
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
c0100de1:	e8 6e 17 00 00       	call   c0102554 <process_exit>
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
c0100e1d:	e8 45 19 00 00       	call   c0102767 <my_sleep>
c0100e22:	83 c4 10             	add    $0x10,%esp
c0100e25:	eb 48                	jmp    c0100e6f <irq_handle+0x25b>
c0100e27:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e2a:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100e2d:	83 f8 08             	cmp    $0x8,%eax
c0100e30:	75 3d                	jne    c0100e6f <irq_handle+0x25b>
c0100e32:	83 ec 0c             	sub    $0xc,%esp
c0100e35:	ff 75 08             	pushl  0x8(%ebp)
c0100e38:	e8 22 1a 00 00       	call   c010285f <my_fork>
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
c0100e62:	68 a8 33 10 c0       	push   $0xc01033a8
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
c0101172:	68 d0 33 10 c0       	push   $0xc01033d0
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
c0101207:	68 f0 33 10 c0       	push   $0xc01033f0
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
c01013a6:	e8 67 17 00 00       	call   c0102b12 <mm_alloc>
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
c01013f2:	68 13 34 10 c0       	push   $0xc0103413
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
c0101420:	e8 ed 16 00 00       	call   c0102b12 <mm_alloc>
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
c01014a1:	e8 6c 16 00 00       	call   c0102b12 <mm_alloc>
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
c01014c1:	68 24 34 10 c0       	push   $0xc0103424
c01014c6:	e8 ce fc ff ff       	call   c0101199 <printk>
c01014cb:	83 c4 10             	add    $0x10,%esp
c01014ce:	8b 45 08             	mov    0x8(%ebp),%eax
c01014d1:	8b 40 10             	mov    0x10(%eax),%eax
c01014d4:	83 ec 08             	sub    $0x8,%esp
c01014d7:	50                   	push   %eax
c01014d8:	68 2b 34 10 c0       	push   $0xc010342b
c01014dd:	e8 b7 fc ff ff       	call   c0101199 <printk>
c01014e2:	83 c4 10             	add    $0x10,%esp
c01014e5:	8b 45 08             	mov    0x8(%ebp),%eax
c01014e8:	8b 40 18             	mov    0x18(%eax),%eax
c01014eb:	83 ec 08             	sub    $0x8,%esp
c01014ee:	50                   	push   %eax
c01014ef:	68 32 34 10 c0       	push   $0xc0103432
c01014f4:	e8 a0 fc ff ff       	call   c0101199 <printk>
c01014f9:	83 c4 10             	add    $0x10,%esp
c01014fc:	8b 45 08             	mov    0x8(%ebp),%eax
c01014ff:	8b 40 14             	mov    0x14(%eax),%eax
c0101502:	83 ec 08             	sub    $0x8,%esp
c0101505:	50                   	push   %eax
c0101506:	68 39 34 10 c0       	push   $0xc0103439
c010150b:	e8 89 fc ff ff       	call   c0101199 <printk>
c0101510:	83 c4 10             	add    $0x10,%esp
c0101513:	8b 45 08             	mov    0x8(%ebp),%eax
c0101516:	8b 00                	mov    (%eax),%eax
c0101518:	83 ec 08             	sub    $0x8,%esp
c010151b:	50                   	push   %eax
c010151c:	68 40 34 10 c0       	push   $0xc0103440
c0101521:	e8 73 fc ff ff       	call   c0101199 <printk>
c0101526:	83 c4 10             	add    $0x10,%esp
c0101529:	8b 45 08             	mov    0x8(%ebp),%eax
c010152c:	8b 40 34             	mov    0x34(%eax),%eax
c010152f:	83 ec 08             	sub    $0x8,%esp
c0101532:	50                   	push   %eax
c0101533:	68 47 34 10 c0       	push   $0xc0103447
c0101538:	e8 5c fc ff ff       	call   c0101199 <printk>
c010153d:	83 c4 10             	add    $0x10,%esp
c0101540:	8b 45 08             	mov    0x8(%ebp),%eax
c0101543:	8b 40 08             	mov    0x8(%eax),%eax
c0101546:	83 ec 08             	sub    $0x8,%esp
c0101549:	50                   	push   %eax
c010154a:	68 4e 34 10 c0       	push   $0xc010344e
c010154f:	e8 45 fc ff ff       	call   c0101199 <printk>
c0101554:	83 c4 10             	add    $0x10,%esp
c0101557:	8b 45 08             	mov    0x8(%ebp),%eax
c010155a:	8b 40 28             	mov    0x28(%eax),%eax
c010155d:	83 ec 08             	sub    $0x8,%esp
c0101560:	50                   	push   %eax
c0101561:	68 55 34 10 c0       	push   $0xc0103455
c0101566:	e8 2e fc ff ff       	call   c0101199 <printk>
c010156b:	83 c4 10             	add    $0x10,%esp
c010156e:	8b 45 08             	mov    0x8(%ebp),%eax
c0101571:	8b 40 2c             	mov    0x2c(%eax),%eax
c0101574:	83 ec 08             	sub    $0x8,%esp
c0101577:	50                   	push   %eax
c0101578:	68 5c 34 10 c0       	push   $0xc010345c
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
c01015fe:	68 64 34 10 c0       	push   $0xc0103464
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
c010164f:	68 88 34 10 c0       	push   $0xc0103488
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
c01016a0:	68 ac 34 10 c0       	push   $0xc01034ac
c01016a5:	e8 ef fa ff ff       	call   c0101199 <printk>
c01016aa:	83 c4 10             	add    $0x10,%esp
c01016ad:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01016b0:	8b 40 3c             	mov    0x3c(%eax),%eax
c01016b3:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01016b6:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c01016ba:	75 c8                	jne    c0101684 <list+0xa6>
c01016bc:	83 ec 0c             	sub    $0xc,%esp
c01016bf:	68 cf 34 10 c0       	push   $0xc01034cf
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
c01016e8:	68 d8 34 10 c0       	push   $0xc01034d8
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
c010175d:	68 fc 34 10 c0       	push   $0xc01034fc
c0101762:	e8 32 fa ff ff       	call   c0101199 <printk>
c0101767:	83 c4 10             	add    $0x10,%esp
c010176a:	eb fe                	jmp    c010176a <get_free_pid+0x51>
c010176c:	c9                   	leave  
c010176d:	c3                   	ret    

c010176e <free_a_pid>:
c010176e:	55                   	push   %ebp
c010176f:	89 e5                	mov    %esp,%ebp
c0101771:	8b 45 08             	mov    0x8(%ebp),%eax
c0101774:	c7 04 85 00 30 13 c0 	movl   $0x0,-0x3fecd000(,%eax,4)
c010177b:	00 00 00 00 
c010177f:	5d                   	pop    %ebp
c0101780:	c3                   	ret    

c0101781 <init_PCB>:
c0101781:	55                   	push   %ebp
c0101782:	89 e5                	mov    %esp,%ebp
c0101784:	83 ec 18             	sub    $0x18,%esp
c0101787:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c010178c:	83 ec 04             	sub    $0x4,%esp
c010178f:	68 00 10 00 00       	push   $0x1000
c0101794:	50                   	push   %eax
c0101795:	68 00 50 13 c0       	push   $0xc0135000
c010179a:	e8 1f fa ff ff       	call   c01011be <my_memcpy>
c010179f:	83 c4 10             	add    $0x10,%esp
c01017a2:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
c01017a9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01017b0:	eb 1d                	jmp    c01017cf <init_PCB+0x4e>
c01017b2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01017b5:	0f b7 04 c5 44 f0 1a 	movzwl -0x3fe50fbc(,%eax,8),%eax
c01017bc:	c0 
c01017bd:	8d 50 01             	lea    0x1(%eax),%edx
c01017c0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01017c3:	66 89 14 c5 44 f0 1a 	mov    %dx,-0x3fe50fbc(,%eax,8)
c01017ca:	c0 
c01017cb:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01017cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01017d2:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c01017d5:	7c db                	jl     c01017b2 <init_PCB+0x31>
c01017d7:	83 ec 08             	sub    $0x8,%esp
c01017da:	68 00 50 13 c0       	push   $0xc0135000
c01017df:	68 00 20 03 00       	push   $0x32000
c01017e4:	e8 a3 fb ff ff       	call   c010138c <load>
c01017e9:	83 c4 10             	add    $0x10,%esp
c01017ec:	a3 28 31 13 c0       	mov    %eax,0xc0133128
c01017f1:	c7 05 2c 31 13 c0 1b 	movl   $0x1b,0xc013312c
c01017f8:	00 00 00 
c01017fb:	c7 05 30 31 13 c0 02 	movl   $0x202,0xc0133130
c0101802:	02 00 00 
c0101805:	c7 05 34 31 13 c0 f0 	movl   $0x60fff0,0xc0133134
c010180c:	ff 60 00 
c010180f:	c7 05 38 31 13 c0 23 	movl   $0x23,0xc0133138
c0101816:	00 00 00 
c0101819:	83 ec 08             	sub    $0x8,%esp
c010181c:	68 0a 35 10 c0       	push   $0xc010350a
c0101821:	68 4c 3f 13 c0       	push   $0xc0133f4c
c0101826:	e8 5c fd ff ff       	call   c0101587 <my_strcpy>
c010182b:	83 c4 10             	add    $0x10,%esp
c010182e:	c7 05 48 3f 13 c0 00 	movl   $0x0,0xc0133f48
c0101835:	00 00 00 
c0101838:	c7 05 70 3f 13 c0 00 	movl   $0x0,0xc0133f70
c010183f:	00 00 00 
c0101842:	c7 05 80 3f 13 c0 00 	movl   $0x0,0xc0133f80
c0101849:	00 00 00 
c010184c:	c7 05 7c 3f 13 c0 00 	movl   $0x0,0xc0133f7c
c0101853:	00 00 00 
c0101856:	c7 05 6c 3f 13 c0 01 	movl   $0x1,0xc0133f6c
c010185d:	00 00 00 
c0101860:	c7 05 74 3f 13 c0 01 	movl   $0x1,0xc0133f74
c0101867:	00 00 00 
c010186a:	c7 05 78 3f 13 c0 c8 	movl   $0xc8,0xc0133f78
c0101871:	00 00 00 
c0101874:	c7 05 44 3f 13 c0 00 	movl   $0xc0133100,0xc0133f44
c010187b:	31 13 c0 
c010187e:	c7 05 00 10 17 c0 01 	movl   $0x1,0xc0171000
c0101885:	00 00 00 
c0101888:	c7 05 04 10 17 c0 00 	movl   $0x0,0xc0171004
c010188f:	00 00 00 
c0101892:	c7 05 10 3f 13 c0 00 	movl   $0x0,0xc0133f10
c0101899:	00 00 00 
c010189c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01018a3:	eb 2a                	jmp    c01018cf <init_PCB+0x14e>
c01018a5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018a8:	c1 e0 02             	shl    $0x2,%eax
c01018ab:	89 c2                	mov    %eax,%edx
c01018ad:	c1 e2 04             	shl    $0x4,%edx
c01018b0:	01 d0                	add    %edx,%eax
c01018b2:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c01018b8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018bb:	89 02                	mov    %eax,(%edx)
c01018bd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018c0:	c7 04 85 00 30 13 c0 	movl   $0x0,-0x3fecd000(,%eax,4)
c01018c7:	00 00 00 00 
c01018cb:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01018cf:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c01018d3:	7e d0                	jle    c01018a5 <init_PCB+0x124>
c01018d5:	c7 05 00 30 13 c0 01 	movl   $0x1,0xc0133000
c01018dc:	00 00 00 
c01018df:	c9                   	leave  
c01018e0:	c3                   	ret    

c01018e1 <add_PCB>:
c01018e1:	55                   	push   %ebp
c01018e2:	89 e5                	mov    %esp,%ebp
c01018e4:	83 ec 18             	sub    $0x18,%esp
c01018e7:	8b 15 00 10 17 c0    	mov    0xc0171000,%edx
c01018ed:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c01018f2:	01 c2                	add    %eax,%edx
c01018f4:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c01018f9:	01 d0                	add    %edx,%eax
c01018fb:	83 f8 3c             	cmp    $0x3c,%eax
c01018fe:	75 1b                	jne    c010191b <add_PCB+0x3a>
c0101900:	83 ec 0c             	sub    $0xc,%esp
c0101903:	68 0f 35 10 c0       	push   $0xc010350f
c0101908:	e8 8c f8 ff ff       	call   c0101199 <printk>
c010190d:	83 c4 10             	add    $0x10,%esp
c0101910:	fb                   	sti    
c0101911:	b8 00 00 00 00       	mov    $0x0,%eax
c0101916:	e9 93 03 00 00       	jmp    c0101cae <add_PCB+0x3cd>
c010191b:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0101922:	eb 22                	jmp    c0101946 <add_PCB+0x65>
c0101924:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101927:	c1 e0 02             	shl    $0x2,%eax
c010192a:	89 c2                	mov    %eax,%edx
c010192c:	c1 e2 04             	shl    $0x4,%edx
c010192f:	01 d0                	add    %edx,%eax
c0101931:	83 c0 20             	add    $0x20,%eax
c0101934:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101939:	8b 40 0c             	mov    0xc(%eax),%eax
c010193c:	85 c0                	test   %eax,%eax
c010193e:	75 02                	jne    c0101942 <add_PCB+0x61>
c0101940:	eb 0a                	jmp    c010194c <add_PCB+0x6b>
c0101942:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0101946:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c010194a:	7e d8                	jle    c0101924 <add_PCB+0x43>
c010194c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010194f:	c1 e0 02             	shl    $0x2,%eax
c0101952:	89 c2                	mov    %eax,%edx
c0101954:	c1 e2 04             	shl    $0x4,%edx
c0101957:	01 d0                	add    %edx,%eax
c0101959:	83 c0 20             	add    $0x20,%eax
c010195c:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101961:	c7 40 0c 01 00 00 00 	movl   $0x1,0xc(%eax)
c0101968:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c010196c:	0f 85 98 00 00 00    	jne    c0101a0a <add_PCB+0x129>
c0101972:	a1 bc f0 10 c0       	mov    0xc010f0bc,%eax
c0101977:	c1 e0 02             	shl    $0x2,%eax
c010197a:	89 c2                	mov    %eax,%edx
c010197c:	c1 e2 04             	shl    $0x4,%edx
c010197f:	01 d0                	add    %edx,%eax
c0101981:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101986:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101989:	8b 0d bc f0 10 c0    	mov    0xc010f0bc,%ecx
c010198f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101992:	c1 e0 02             	shl    $0x2,%eax
c0101995:	89 c2                	mov    %eax,%edx
c0101997:	c1 e2 04             	shl    $0x4,%edx
c010199a:	01 d0                	add    %edx,%eax
c010199c:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c01019a2:	89 c8                	mov    %ecx,%eax
c01019a4:	c1 e0 02             	shl    $0x2,%eax
c01019a7:	89 c1                	mov    %eax,%ecx
c01019a9:	c1 e1 04             	shl    $0x4,%ecx
c01019ac:	01 c8                	add    %ecx,%eax
c01019ae:	83 c0 30             	add    $0x30,%eax
c01019b1:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01019b6:	89 50 0c             	mov    %edx,0xc(%eax)
c01019b9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01019bc:	c1 e0 02             	shl    $0x2,%eax
c01019bf:	89 c2                	mov    %eax,%edx
c01019c1:	c1 e2 04             	shl    $0x4,%edx
c01019c4:	01 d0                	add    %edx,%eax
c01019c6:	83 c0 40             	add    $0x40,%eax
c01019c9:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c01019cf:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01019d2:	89 02                	mov    %eax,(%edx)
c01019d4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01019d7:	c1 e0 02             	shl    $0x2,%eax
c01019da:	89 c2                	mov    %eax,%edx
c01019dc:	c1 e2 04             	shl    $0x4,%edx
c01019df:	01 d0                	add    %edx,%eax
c01019e1:	83 c0 30             	add    $0x30,%eax
c01019e4:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01019e9:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c01019f0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01019f3:	a3 bc f0 10 c0       	mov    %eax,0xc010f0bc
c01019f8:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c01019fd:	83 c0 01             	add    $0x1,%eax
c0101a00:	a3 00 10 17 c0       	mov    %eax,0xc0171000
c0101a05:	e9 f9 01 00 00       	jmp    c0101c03 <add_PCB+0x322>
c0101a0a:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0101a0e:	0f 85 fa 00 00 00    	jne    c0101b0e <add_PCB+0x22d>
c0101a14:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c0101a19:	85 c0                	test   %eax,%eax
c0101a1b:	75 59                	jne    c0101a76 <add_PCB+0x195>
c0101a1d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a20:	a3 c0 f0 10 c0       	mov    %eax,0xc010f0c0
c0101a25:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a28:	a3 c4 f0 10 c0       	mov    %eax,0xc010f0c4
c0101a2d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a30:	c1 e0 02             	shl    $0x2,%eax
c0101a33:	89 c2                	mov    %eax,%edx
c0101a35:	c1 e2 04             	shl    $0x4,%edx
c0101a38:	01 d0                	add    %edx,%eax
c0101a3a:	83 c0 40             	add    $0x40,%eax
c0101a3d:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101a42:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0101a48:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a4b:	c1 e0 02             	shl    $0x2,%eax
c0101a4e:	89 c2                	mov    %eax,%edx
c0101a50:	c1 e2 04             	shl    $0x4,%edx
c0101a53:	01 d0                	add    %edx,%eax
c0101a55:	83 c0 30             	add    $0x30,%eax
c0101a58:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101a5d:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101a64:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c0101a69:	83 c0 01             	add    $0x1,%eax
c0101a6c:	a3 04 10 17 c0       	mov    %eax,0xc0171004
c0101a71:	e9 8d 01 00 00       	jmp    c0101c03 <add_PCB+0x322>
c0101a76:	a1 c4 f0 10 c0       	mov    0xc010f0c4,%eax
c0101a7b:	c1 e0 02             	shl    $0x2,%eax
c0101a7e:	89 c2                	mov    %eax,%edx
c0101a80:	c1 e2 04             	shl    $0x4,%edx
c0101a83:	01 d0                	add    %edx,%eax
c0101a85:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101a8a:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101a8d:	8b 0d c4 f0 10 c0    	mov    0xc010f0c4,%ecx
c0101a93:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a96:	c1 e0 02             	shl    $0x2,%eax
c0101a99:	89 c2                	mov    %eax,%edx
c0101a9b:	c1 e2 04             	shl    $0x4,%edx
c0101a9e:	01 d0                	add    %edx,%eax
c0101aa0:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101aa6:	89 c8                	mov    %ecx,%eax
c0101aa8:	c1 e0 02             	shl    $0x2,%eax
c0101aab:	89 c1                	mov    %eax,%ecx
c0101aad:	c1 e1 04             	shl    $0x4,%ecx
c0101ab0:	01 c8                	add    %ecx,%eax
c0101ab2:	83 c0 30             	add    $0x30,%eax
c0101ab5:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101aba:	89 50 0c             	mov    %edx,0xc(%eax)
c0101abd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101ac0:	c1 e0 02             	shl    $0x2,%eax
c0101ac3:	89 c2                	mov    %eax,%edx
c0101ac5:	c1 e2 04             	shl    $0x4,%edx
c0101ac8:	01 d0                	add    %edx,%eax
c0101aca:	83 c0 40             	add    $0x40,%eax
c0101acd:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101ad3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101ad6:	89 02                	mov    %eax,(%edx)
c0101ad8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101adb:	c1 e0 02             	shl    $0x2,%eax
c0101ade:	89 c2                	mov    %eax,%edx
c0101ae0:	c1 e2 04             	shl    $0x4,%edx
c0101ae3:	01 d0                	add    %edx,%eax
c0101ae5:	83 c0 30             	add    $0x30,%eax
c0101ae8:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101aed:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101af4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101af7:	a3 c4 f0 10 c0       	mov    %eax,0xc010f0c4
c0101afc:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c0101b01:	83 c0 01             	add    $0x1,%eax
c0101b04:	a3 04 10 17 c0       	mov    %eax,0xc0171004
c0101b09:	e9 f5 00 00 00       	jmp    c0101c03 <add_PCB+0x322>
c0101b0e:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101b13:	85 c0                	test   %eax,%eax
c0101b15:	75 59                	jne    c0101b70 <add_PCB+0x28f>
c0101b17:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b1a:	a3 c8 f0 10 c0       	mov    %eax,0xc010f0c8
c0101b1f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b22:	a3 cc f0 10 c0       	mov    %eax,0xc010f0cc
c0101b27:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b2a:	c1 e0 02             	shl    $0x2,%eax
c0101b2d:	89 c2                	mov    %eax,%edx
c0101b2f:	c1 e2 04             	shl    $0x4,%edx
c0101b32:	01 d0                	add    %edx,%eax
c0101b34:	83 c0 40             	add    $0x40,%eax
c0101b37:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101b3c:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0101b42:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b45:	c1 e0 02             	shl    $0x2,%eax
c0101b48:	89 c2                	mov    %eax,%edx
c0101b4a:	c1 e2 04             	shl    $0x4,%edx
c0101b4d:	01 d0                	add    %edx,%eax
c0101b4f:	83 c0 30             	add    $0x30,%eax
c0101b52:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101b57:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101b5e:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101b63:	83 c0 01             	add    $0x1,%eax
c0101b66:	a3 10 3f 13 c0       	mov    %eax,0xc0133f10
c0101b6b:	e9 93 00 00 00       	jmp    c0101c03 <add_PCB+0x322>
c0101b70:	a1 cc f0 10 c0       	mov    0xc010f0cc,%eax
c0101b75:	c1 e0 02             	shl    $0x2,%eax
c0101b78:	89 c2                	mov    %eax,%edx
c0101b7a:	c1 e2 04             	shl    $0x4,%edx
c0101b7d:	01 d0                	add    %edx,%eax
c0101b7f:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101b84:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101b87:	8b 0d cc f0 10 c0    	mov    0xc010f0cc,%ecx
c0101b8d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101b90:	c1 e0 02             	shl    $0x2,%eax
c0101b93:	89 c2                	mov    %eax,%edx
c0101b95:	c1 e2 04             	shl    $0x4,%edx
c0101b98:	01 d0                	add    %edx,%eax
c0101b9a:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101ba0:	89 c8                	mov    %ecx,%eax
c0101ba2:	c1 e0 02             	shl    $0x2,%eax
c0101ba5:	89 c1                	mov    %eax,%ecx
c0101ba7:	c1 e1 04             	shl    $0x4,%ecx
c0101baa:	01 c8                	add    %ecx,%eax
c0101bac:	83 c0 30             	add    $0x30,%eax
c0101baf:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101bb4:	89 50 0c             	mov    %edx,0xc(%eax)
c0101bb7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101bba:	c1 e0 02             	shl    $0x2,%eax
c0101bbd:	89 c2                	mov    %eax,%edx
c0101bbf:	c1 e2 04             	shl    $0x4,%edx
c0101bc2:	01 d0                	add    %edx,%eax
c0101bc4:	83 c0 40             	add    $0x40,%eax
c0101bc7:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101bcd:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101bd0:	89 02                	mov    %eax,(%edx)
c0101bd2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101bd5:	c1 e0 02             	shl    $0x2,%eax
c0101bd8:	89 c2                	mov    %eax,%edx
c0101bda:	c1 e2 04             	shl    $0x4,%edx
c0101bdd:	01 d0                	add    %edx,%eax
c0101bdf:	83 c0 30             	add    $0x30,%eax
c0101be2:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101be7:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101bee:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101bf1:	a3 cc f0 10 c0       	mov    %eax,0xc010f0cc
c0101bf6:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101bfb:	83 c0 01             	add    $0x1,%eax
c0101bfe:	a3 10 3f 13 c0       	mov    %eax,0xc0133f10
c0101c03:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c06:	c1 e0 02             	shl    $0x2,%eax
c0101c09:	89 c2                	mov    %eax,%edx
c0101c0b:	c1 e2 04             	shl    $0x4,%edx
c0101c0e:	01 d0                	add    %edx,%eax
c0101c10:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101c15:	83 c0 0c             	add    $0xc,%eax
c0101c18:	83 ec 08             	sub    $0x8,%esp
c0101c1b:	ff 75 10             	pushl  0x10(%ebp)
c0101c1e:	50                   	push   %eax
c0101c1f:	e8 63 f9 ff ff       	call   c0101587 <my_strcpy>
c0101c24:	83 c4 10             	add    $0x10,%esp
c0101c27:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c2a:	c1 e0 02             	shl    $0x2,%eax
c0101c2d:	89 c2                	mov    %eax,%edx
c0101c2f:	c1 e2 04             	shl    $0x4,%edx
c0101c32:	01 d0                	add    %edx,%eax
c0101c34:	83 c0 30             	add    $0x30,%eax
c0101c37:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101c3d:	8b 45 14             	mov    0x14(%ebp),%eax
c0101c40:	89 42 08             	mov    %eax,0x8(%edx)
c0101c43:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c46:	c1 e0 02             	shl    $0x2,%eax
c0101c49:	89 c2                	mov    %eax,%edx
c0101c4b:	c1 e2 04             	shl    $0x4,%edx
c0101c4e:	01 d0                	add    %edx,%eax
c0101c50:	83 c0 30             	add    $0x30,%eax
c0101c53:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101c59:	8b 45 08             	mov    0x8(%ebp),%eax
c0101c5c:	89 42 04             	mov    %eax,0x4(%edx)
c0101c5f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c62:	c1 e0 02             	shl    $0x2,%eax
c0101c65:	89 c2                	mov    %eax,%edx
c0101c67:	c1 e2 04             	shl    $0x4,%edx
c0101c6a:	01 d0                	add    %edx,%eax
c0101c6c:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101c72:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101c75:	89 42 04             	mov    %eax,0x4(%edx)
c0101c78:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c7b:	c1 e0 02             	shl    $0x2,%eax
c0101c7e:	89 c2                	mov    %eax,%edx
c0101c80:	c1 e2 04             	shl    $0x4,%edx
c0101c83:	01 d0                	add    %edx,%eax
c0101c85:	83 c0 30             	add    $0x30,%eax
c0101c88:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101c8e:	8b 45 18             	mov    0x18(%ebp),%eax
c0101c91:	89 02                	mov    %eax,(%edx)
c0101c93:	8b 55 1c             	mov    0x1c(%ebp),%edx
c0101c96:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101c99:	c1 e0 02             	shl    $0x2,%eax
c0101c9c:	89 c1                	mov    %eax,%ecx
c0101c9e:	c1 e1 04             	shl    $0x4,%ecx
c0101ca1:	01 c8                	add    %ecx,%eax
c0101ca3:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101ca8:	89 50 08             	mov    %edx,0x8(%eax)
c0101cab:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101cae:	c9                   	leave  
c0101caf:	c3                   	ret    

c0101cb0 <delete_PCB>:
c0101cb0:	55                   	push   %ebp
c0101cb1:	89 e5                	mov    %esp,%ebp
c0101cb3:	83 ec 18             	sub    $0x18,%esp
c0101cb6:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0101cba:	75 15                	jne    c0101cd1 <delete_PCB+0x21>
c0101cbc:	83 ec 0c             	sub    $0xc,%esp
c0101cbf:	68 24 35 10 c0       	push   $0xc0103524
c0101cc4:	e8 d0 f4 ff ff       	call   c0101199 <printk>
c0101cc9:	83 c4 10             	add    $0x10,%esp
c0101ccc:	e9 c4 03 00 00       	jmp    c0102095 <delete_PCB+0x3e5>
c0101cd1:	8b 45 08             	mov    0x8(%ebp),%eax
c0101cd4:	c1 e0 02             	shl    $0x2,%eax
c0101cd7:	89 c2                	mov    %eax,%edx
c0101cd9:	c1 e2 04             	shl    $0x4,%edx
c0101cdc:	01 d0                	add    %edx,%eax
c0101cde:	83 c0 20             	add    $0x20,%eax
c0101ce1:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101ce6:	8b 40 0c             	mov    0xc(%eax),%eax
c0101ce9:	85 c0                	test   %eax,%eax
c0101ceb:	75 15                	jne    c0101d02 <delete_PCB+0x52>
c0101ced:	83 ec 0c             	sub    $0xc,%esp
c0101cf0:	68 47 35 10 c0       	push   $0xc0103547
c0101cf5:	e8 9f f4 ff ff       	call   c0101199 <printk>
c0101cfa:	83 c4 10             	add    $0x10,%esp
c0101cfd:	e9 93 03 00 00       	jmp    c0102095 <delete_PCB+0x3e5>
c0101d02:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d05:	c1 e0 02             	shl    $0x2,%eax
c0101d08:	89 c2                	mov    %eax,%edx
c0101d0a:	c1 e2 04             	shl    $0x4,%edx
c0101d0d:	01 d0                	add    %edx,%eax
c0101d0f:	83 c0 20             	add    $0x20,%eax
c0101d12:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d17:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101d1e:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d21:	c1 e0 02             	shl    $0x2,%eax
c0101d24:	89 c2                	mov    %eax,%edx
c0101d26:	c1 e2 04             	shl    $0x4,%edx
c0101d29:	01 d0                	add    %edx,%eax
c0101d2b:	83 c0 30             	add    $0x30,%eax
c0101d2e:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d33:	8b 40 04             	mov    0x4(%eax),%eax
c0101d36:	83 f8 01             	cmp    $0x1,%eax
c0101d39:	0f 85 d8 00 00 00    	jne    c0101e17 <delete_PCB+0x167>
c0101d3f:	a1 bc f0 10 c0       	mov    0xc010f0bc,%eax
c0101d44:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101d47:	75 52                	jne    c0101d9b <delete_PCB+0xeb>
c0101d49:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d4c:	c1 e0 02             	shl    $0x2,%eax
c0101d4f:	89 c2                	mov    %eax,%edx
c0101d51:	c1 e2 04             	shl    $0x4,%edx
c0101d54:	01 d0                	add    %edx,%eax
c0101d56:	83 c0 40             	add    $0x40,%eax
c0101d59:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d5e:	8b 00                	mov    (%eax),%eax
c0101d60:	8b 00                	mov    (%eax),%eax
c0101d62:	a3 bc f0 10 c0       	mov    %eax,0xc010f0bc
c0101d67:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d6a:	c1 e0 02             	shl    $0x2,%eax
c0101d6d:	89 c2                	mov    %eax,%edx
c0101d6f:	c1 e2 04             	shl    $0x4,%edx
c0101d72:	01 d0                	add    %edx,%eax
c0101d74:	83 c0 40             	add    $0x40,%eax
c0101d77:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d7c:	8b 10                	mov    (%eax),%edx
c0101d7e:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d81:	c1 e0 02             	shl    $0x2,%eax
c0101d84:	89 c1                	mov    %eax,%ecx
c0101d86:	c1 e1 04             	shl    $0x4,%ecx
c0101d89:	01 c8                	add    %ecx,%eax
c0101d8b:	83 c0 30             	add    $0x30,%eax
c0101d8e:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d93:	8b 40 0c             	mov    0xc(%eax),%eax
c0101d96:	89 42 3c             	mov    %eax,0x3c(%edx)
c0101d99:	eb 6a                	jmp    c0101e05 <delete_PCB+0x155>
c0101d9b:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d9e:	c1 e0 02             	shl    $0x2,%eax
c0101da1:	89 c2                	mov    %eax,%edx
c0101da3:	c1 e2 04             	shl    $0x4,%edx
c0101da6:	01 d0                	add    %edx,%eax
c0101da8:	83 c0 40             	add    $0x40,%eax
c0101dab:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101db0:	8b 00                	mov    (%eax),%eax
c0101db2:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101db5:	8b 45 08             	mov    0x8(%ebp),%eax
c0101db8:	c1 e0 02             	shl    $0x2,%eax
c0101dbb:	89 c2                	mov    %eax,%edx
c0101dbd:	c1 e2 04             	shl    $0x4,%edx
c0101dc0:	01 d0                	add    %edx,%eax
c0101dc2:	83 c0 40             	add    $0x40,%eax
c0101dc5:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101dca:	8b 10                	mov    (%eax),%edx
c0101dcc:	8b 45 08             	mov    0x8(%ebp),%eax
c0101dcf:	c1 e0 02             	shl    $0x2,%eax
c0101dd2:	89 c1                	mov    %eax,%ecx
c0101dd4:	c1 e1 04             	shl    $0x4,%ecx
c0101dd7:	01 c8                	add    %ecx,%eax
c0101dd9:	83 c0 30             	add    $0x30,%eax
c0101ddc:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101de1:	8b 40 0c             	mov    0xc(%eax),%eax
c0101de4:	89 42 3c             	mov    %eax,0x3c(%edx)
c0101de7:	8b 45 08             	mov    0x8(%ebp),%eax
c0101dea:	c1 e0 02             	shl    $0x2,%eax
c0101ded:	89 c2                	mov    %eax,%edx
c0101def:	c1 e2 04             	shl    $0x4,%edx
c0101df2:	01 d0                	add    %edx,%eax
c0101df4:	83 c0 30             	add    $0x30,%eax
c0101df7:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101dfc:	8b 40 0c             	mov    0xc(%eax),%eax
c0101dff:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101e02:	89 50 40             	mov    %edx,0x40(%eax)
c0101e05:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c0101e0a:	83 e8 01             	sub    $0x1,%eax
c0101e0d:	a3 00 10 17 c0       	mov    %eax,0xc0171000
c0101e12:	e9 7e 02 00 00       	jmp    c0102095 <delete_PCB+0x3e5>
c0101e17:	8b 45 08             	mov    0x8(%ebp),%eax
c0101e1a:	c1 e0 02             	shl    $0x2,%eax
c0101e1d:	89 c2                	mov    %eax,%edx
c0101e1f:	c1 e2 04             	shl    $0x4,%edx
c0101e22:	01 d0                	add    %edx,%eax
c0101e24:	83 c0 30             	add    $0x30,%eax
c0101e27:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101e2c:	8b 40 04             	mov    0x4(%eax),%eax
c0101e2f:	83 f8 02             	cmp    $0x2,%eax
c0101e32:	0f 85 33 01 00 00    	jne    c0101f6b <delete_PCB+0x2bb>
c0101e38:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c0101e3d:	83 e8 01             	sub    $0x1,%eax
c0101e40:	a3 04 10 17 c0       	mov    %eax,0xc0171004
c0101e45:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c0101e4a:	85 c0                	test   %eax,%eax
c0101e4c:	75 19                	jne    c0101e67 <delete_PCB+0x1b7>
c0101e4e:	c7 05 c0 f0 10 c0 00 	movl   $0x0,0xc010f0c0
c0101e55:	00 00 00 
c0101e58:	c7 05 c4 f0 10 c0 00 	movl   $0x0,0xc010f0c4
c0101e5f:	00 00 00 
c0101e62:	e9 2e 02 00 00       	jmp    c0102095 <delete_PCB+0x3e5>
c0101e67:	a1 c0 f0 10 c0       	mov    0xc010f0c0,%eax
c0101e6c:	39 45 08             	cmp    %eax,0x8(%ebp)
c0101e6f:	75 43                	jne    c0101eb4 <delete_PCB+0x204>
c0101e71:	8b 45 08             	mov    0x8(%ebp),%eax
c0101e74:	c1 e0 02             	shl    $0x2,%eax
c0101e77:	89 c2                	mov    %eax,%edx
c0101e79:	c1 e2 04             	shl    $0x4,%edx
c0101e7c:	01 d0                	add    %edx,%eax
c0101e7e:	83 c0 30             	add    $0x30,%eax
c0101e81:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101e86:	8b 40 0c             	mov    0xc(%eax),%eax
c0101e89:	8b 00                	mov    (%eax),%eax
c0101e8b:	a3 c0 f0 10 c0       	mov    %eax,0xc010f0c0
c0101e90:	8b 45 08             	mov    0x8(%ebp),%eax
c0101e93:	c1 e0 02             	shl    $0x2,%eax
c0101e96:	89 c2                	mov    %eax,%edx
c0101e98:	c1 e2 04             	shl    $0x4,%edx
c0101e9b:	01 d0                	add    %edx,%eax
c0101e9d:	83 c0 30             	add    $0x30,%eax
c0101ea0:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101ea5:	8b 40 0c             	mov    0xc(%eax),%eax
c0101ea8:	c7 40 40 00 00 00 00 	movl   $0x0,0x40(%eax)
c0101eaf:	e9 e1 01 00 00       	jmp    c0102095 <delete_PCB+0x3e5>
c0101eb4:	a1 c4 f0 10 c0       	mov    0xc010f0c4,%eax
c0101eb9:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101ebc:	75 1e                	jne    c0101edc <delete_PCB+0x22c>
c0101ebe:	8b 45 08             	mov    0x8(%ebp),%eax
c0101ec1:	c1 e0 02             	shl    $0x2,%eax
c0101ec4:	89 c2                	mov    %eax,%edx
c0101ec6:	c1 e2 04             	shl    $0x4,%edx
c0101ec9:	01 d0                	add    %edx,%eax
c0101ecb:	83 c0 40             	add    $0x40,%eax
c0101ece:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101ed3:	8b 00                	mov    (%eax),%eax
c0101ed5:	8b 00                	mov    (%eax),%eax
c0101ed7:	a3 c4 f0 10 c0       	mov    %eax,0xc010f0c4
c0101edc:	8b 45 08             	mov    0x8(%ebp),%eax
c0101edf:	c1 e0 02             	shl    $0x2,%eax
c0101ee2:	89 c2                	mov    %eax,%edx
c0101ee4:	c1 e2 04             	shl    $0x4,%edx
c0101ee7:	01 d0                	add    %edx,%eax
c0101ee9:	83 c0 40             	add    $0x40,%eax
c0101eec:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101ef1:	8b 00                	mov    (%eax),%eax
c0101ef3:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101ef6:	8b 45 08             	mov    0x8(%ebp),%eax
c0101ef9:	c1 e0 02             	shl    $0x2,%eax
c0101efc:	89 c2                	mov    %eax,%edx
c0101efe:	c1 e2 04             	shl    $0x4,%edx
c0101f01:	01 d0                	add    %edx,%eax
c0101f03:	83 c0 40             	add    $0x40,%eax
c0101f06:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101f0b:	8b 10                	mov    (%eax),%edx
c0101f0d:	8b 45 08             	mov    0x8(%ebp),%eax
c0101f10:	c1 e0 02             	shl    $0x2,%eax
c0101f13:	89 c1                	mov    %eax,%ecx
c0101f15:	c1 e1 04             	shl    $0x4,%ecx
c0101f18:	01 c8                	add    %ecx,%eax
c0101f1a:	83 c0 30             	add    $0x30,%eax
c0101f1d:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101f22:	8b 40 0c             	mov    0xc(%eax),%eax
c0101f25:	89 42 3c             	mov    %eax,0x3c(%edx)
c0101f28:	8b 45 08             	mov    0x8(%ebp),%eax
c0101f2b:	c1 e0 02             	shl    $0x2,%eax
c0101f2e:	89 c2                	mov    %eax,%edx
c0101f30:	c1 e2 04             	shl    $0x4,%edx
c0101f33:	01 d0                	add    %edx,%eax
c0101f35:	83 c0 30             	add    $0x30,%eax
c0101f38:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101f3d:	8b 40 0c             	mov    0xc(%eax),%eax
c0101f40:	85 c0                	test   %eax,%eax
c0101f42:	0f 84 4d 01 00 00    	je     c0102095 <delete_PCB+0x3e5>
c0101f48:	8b 45 08             	mov    0x8(%ebp),%eax
c0101f4b:	c1 e0 02             	shl    $0x2,%eax
c0101f4e:	89 c2                	mov    %eax,%edx
c0101f50:	c1 e2 04             	shl    $0x4,%edx
c0101f53:	01 d0                	add    %edx,%eax
c0101f55:	83 c0 30             	add    $0x30,%eax
c0101f58:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101f5d:	8b 40 0c             	mov    0xc(%eax),%eax
c0101f60:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101f63:	89 50 40             	mov    %edx,0x40(%eax)
c0101f66:	e9 2a 01 00 00       	jmp    c0102095 <delete_PCB+0x3e5>
c0101f6b:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101f70:	83 e8 01             	sub    $0x1,%eax
c0101f73:	a3 10 3f 13 c0       	mov    %eax,0xc0133f10
c0101f78:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101f7d:	85 c0                	test   %eax,%eax
c0101f7f:	75 19                	jne    c0101f9a <delete_PCB+0x2ea>
c0101f81:	c7 05 c8 f0 10 c0 00 	movl   $0x0,0xc010f0c8
c0101f88:	00 00 00 
c0101f8b:	c7 05 cc f0 10 c0 00 	movl   $0x0,0xc010f0cc
c0101f92:	00 00 00 
c0101f95:	e9 fb 00 00 00       	jmp    c0102095 <delete_PCB+0x3e5>
c0101f9a:	a1 c8 f0 10 c0       	mov    0xc010f0c8,%eax
c0101f9f:	39 45 08             	cmp    %eax,0x8(%ebp)
c0101fa2:	75 43                	jne    c0101fe7 <delete_PCB+0x337>
c0101fa4:	8b 45 08             	mov    0x8(%ebp),%eax
c0101fa7:	c1 e0 02             	shl    $0x2,%eax
c0101faa:	89 c2                	mov    %eax,%edx
c0101fac:	c1 e2 04             	shl    $0x4,%edx
c0101faf:	01 d0                	add    %edx,%eax
c0101fb1:	83 c0 30             	add    $0x30,%eax
c0101fb4:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101fb9:	8b 40 0c             	mov    0xc(%eax),%eax
c0101fbc:	8b 00                	mov    (%eax),%eax
c0101fbe:	a3 c8 f0 10 c0       	mov    %eax,0xc010f0c8
c0101fc3:	8b 45 08             	mov    0x8(%ebp),%eax
c0101fc6:	c1 e0 02             	shl    $0x2,%eax
c0101fc9:	89 c2                	mov    %eax,%edx
c0101fcb:	c1 e2 04             	shl    $0x4,%edx
c0101fce:	01 d0                	add    %edx,%eax
c0101fd0:	83 c0 30             	add    $0x30,%eax
c0101fd3:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101fd8:	8b 40 0c             	mov    0xc(%eax),%eax
c0101fdb:	c7 40 40 00 00 00 00 	movl   $0x0,0x40(%eax)
c0101fe2:	e9 ae 00 00 00       	jmp    c0102095 <delete_PCB+0x3e5>
c0101fe7:	a1 cc f0 10 c0       	mov    0xc010f0cc,%eax
c0101fec:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101fef:	75 1e                	jne    c010200f <delete_PCB+0x35f>
c0101ff1:	8b 45 08             	mov    0x8(%ebp),%eax
c0101ff4:	c1 e0 02             	shl    $0x2,%eax
c0101ff7:	89 c2                	mov    %eax,%edx
c0101ff9:	c1 e2 04             	shl    $0x4,%edx
c0101ffc:	01 d0                	add    %edx,%eax
c0101ffe:	83 c0 40             	add    $0x40,%eax
c0102001:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102006:	8b 00                	mov    (%eax),%eax
c0102008:	8b 00                	mov    (%eax),%eax
c010200a:	a3 cc f0 10 c0       	mov    %eax,0xc010f0cc
c010200f:	8b 45 08             	mov    0x8(%ebp),%eax
c0102012:	c1 e0 02             	shl    $0x2,%eax
c0102015:	89 c2                	mov    %eax,%edx
c0102017:	c1 e2 04             	shl    $0x4,%edx
c010201a:	01 d0                	add    %edx,%eax
c010201c:	83 c0 40             	add    $0x40,%eax
c010201f:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102024:	8b 00                	mov    (%eax),%eax
c0102026:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102029:	8b 45 08             	mov    0x8(%ebp),%eax
c010202c:	c1 e0 02             	shl    $0x2,%eax
c010202f:	89 c2                	mov    %eax,%edx
c0102031:	c1 e2 04             	shl    $0x4,%edx
c0102034:	01 d0                	add    %edx,%eax
c0102036:	83 c0 40             	add    $0x40,%eax
c0102039:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010203e:	8b 10                	mov    (%eax),%edx
c0102040:	8b 45 08             	mov    0x8(%ebp),%eax
c0102043:	c1 e0 02             	shl    $0x2,%eax
c0102046:	89 c1                	mov    %eax,%ecx
c0102048:	c1 e1 04             	shl    $0x4,%ecx
c010204b:	01 c8                	add    %ecx,%eax
c010204d:	83 c0 30             	add    $0x30,%eax
c0102050:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102055:	8b 40 0c             	mov    0xc(%eax),%eax
c0102058:	89 42 3c             	mov    %eax,0x3c(%edx)
c010205b:	8b 45 08             	mov    0x8(%ebp),%eax
c010205e:	c1 e0 02             	shl    $0x2,%eax
c0102061:	89 c2                	mov    %eax,%edx
c0102063:	c1 e2 04             	shl    $0x4,%edx
c0102066:	01 d0                	add    %edx,%eax
c0102068:	83 c0 30             	add    $0x30,%eax
c010206b:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102070:	8b 40 0c             	mov    0xc(%eax),%eax
c0102073:	85 c0                	test   %eax,%eax
c0102075:	74 1e                	je     c0102095 <delete_PCB+0x3e5>
c0102077:	8b 45 08             	mov    0x8(%ebp),%eax
c010207a:	c1 e0 02             	shl    $0x2,%eax
c010207d:	89 c2                	mov    %eax,%edx
c010207f:	c1 e2 04             	shl    $0x4,%edx
c0102082:	01 d0                	add    %edx,%eax
c0102084:	83 c0 30             	add    $0x30,%eax
c0102087:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010208c:	8b 40 0c             	mov    0xc(%eax),%eax
c010208f:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102092:	89 50 40             	mov    %edx,0x40(%eax)
c0102095:	c9                   	leave  
c0102096:	c3                   	ret    

c0102097 <reschedule>:
c0102097:	55                   	push   %ebp
c0102098:	89 e5                	mov    %esp,%ebp
c010209a:	83 ec 28             	sub    $0x28,%esp
c010209d:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01020a2:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01020a5:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c01020aa:	83 f8 01             	cmp    $0x1,%eax
c01020ad:	75 46                	jne    c01020f5 <reschedule+0x5e>
c01020af:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c01020b4:	85 c0                	test   %eax,%eax
c01020b6:	75 3d                	jne    c01020f5 <reschedule+0x5e>
c01020b8:	b8 f8 3f 17 c0       	mov    $0xc0173ff8,%eax
c01020bd:	83 ec 0c             	sub    $0xc,%esp
c01020c0:	50                   	push   %eax
c01020c1:	e8 77 e2 ff ff       	call   c010033d <set_tss>
c01020c6:	83 c4 10             	add    $0x10,%esp
c01020c9:	b8 00 50 13 c0       	mov    $0xc0135000,%eax
c01020ce:	05 00 00 00 40       	add    $0x40000000,%eax
c01020d3:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01020d6:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01020d9:	0f 22 d8             	mov    %eax,%cr3
c01020dc:	66 b8 23 00          	mov    $0x23,%ax
c01020e0:	8e d8                	mov    %eax,%ds
c01020e2:	8e c0                	mov    %eax,%es
c01020e4:	a1 44 3f 13 c0       	mov    0xc0133f44,%eax
c01020e9:	89 c4                	mov    %eax,%esp
c01020eb:	61                   	popa   
c01020ec:	83 c4 08             	add    $0x8,%esp
c01020ef:	cf                   	iret   
c01020f0:	e9 f0 01 00 00       	jmp    c01022e5 <reschedule+0x24e>
c01020f5:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c01020fa:	83 f8 01             	cmp    $0x1,%eax
c01020fd:	0f 8e 94 00 00 00    	jle    c0102197 <reschedule+0x100>
c0102103:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102106:	c1 e0 02             	shl    $0x2,%eax
c0102109:	89 c2                	mov    %eax,%edx
c010210b:	c1 e2 04             	shl    $0x4,%edx
c010210e:	01 d0                	add    %edx,%eax
c0102110:	83 c0 30             	add    $0x30,%eax
c0102113:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102118:	8b 40 0c             	mov    0xc(%eax),%eax
c010211b:	8b 40 08             	mov    0x8(%eax),%eax
c010211e:	c1 e0 0c             	shl    $0xc,%eax
c0102121:	05 00 30 17 c0       	add    $0xc0173000,%eax
c0102126:	05 f8 0f 00 00       	add    $0xff8,%eax
c010212b:	83 ec 0c             	sub    $0xc,%esp
c010212e:	50                   	push   %eax
c010212f:	e8 09 e2 ff ff       	call   c010033d <set_tss>
c0102134:	83 c4 10             	add    $0x10,%esp
c0102137:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010213a:	c1 e0 02             	shl    $0x2,%eax
c010213d:	89 c2                	mov    %eax,%edx
c010213f:	c1 e2 04             	shl    $0x4,%edx
c0102142:	01 d0                	add    %edx,%eax
c0102144:	83 c0 30             	add    $0x30,%eax
c0102147:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010214c:	8b 40 0c             	mov    0xc(%eax),%eax
c010214f:	8b 40 08             	mov    0x8(%eax),%eax
c0102152:	c1 e0 0c             	shl    $0xc,%eax
c0102155:	05 00 50 13 c0       	add    $0xc0135000,%eax
c010215a:	05 00 00 00 40       	add    $0x40000000,%eax
c010215f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0102162:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102165:	0f 22 d8             	mov    %eax,%cr3
c0102168:	66 b8 23 00          	mov    $0x23,%ax
c010216c:	8e d8                	mov    %eax,%ds
c010216e:	8e c0                	mov    %eax,%es
c0102170:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102173:	c1 e0 02             	shl    $0x2,%eax
c0102176:	89 c2                	mov    %eax,%edx
c0102178:	c1 e2 04             	shl    $0x4,%edx
c010217b:	01 d0                	add    %edx,%eax
c010217d:	83 c0 30             	add    $0x30,%eax
c0102180:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102185:	8b 40 0c             	mov    0xc(%eax),%eax
c0102188:	8b 40 04             	mov    0x4(%eax),%eax
c010218b:	89 c4                	mov    %eax,%esp
c010218d:	61                   	popa   
c010218e:	83 c4 08             	add    $0x8,%esp
c0102191:	cf                   	iret   
c0102192:	e9 4e 01 00 00       	jmp    c01022e5 <reschedule+0x24e>
c0102197:	8b 0d b8 f0 10 c0    	mov    0xc010f0b8,%ecx
c010219d:	a1 c0 f0 10 c0       	mov    0xc010f0c0,%eax
c01021a2:	c1 e0 02             	shl    $0x2,%eax
c01021a5:	89 c2                	mov    %eax,%edx
c01021a7:	c1 e2 04             	shl    $0x4,%edx
c01021aa:	01 d0                	add    %edx,%eax
c01021ac:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c01021b2:	89 c8                	mov    %ecx,%eax
c01021b4:	c1 e0 02             	shl    $0x2,%eax
c01021b7:	89 c1                	mov    %eax,%ecx
c01021b9:	c1 e1 04             	shl    $0x4,%ecx
c01021bc:	01 c8                	add    %ecx,%eax
c01021be:	83 c0 30             	add    $0x30,%eax
c01021c1:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01021c6:	89 50 0c             	mov    %edx,0xc(%eax)
c01021c9:	8b 0d c0 f0 10 c0    	mov    0xc010f0c0,%ecx
c01021cf:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01021d4:	c1 e0 02             	shl    $0x2,%eax
c01021d7:	89 c2                	mov    %eax,%edx
c01021d9:	c1 e2 04             	shl    $0x4,%edx
c01021dc:	01 d0                	add    %edx,%eax
c01021de:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c01021e4:	89 c8                	mov    %ecx,%eax
c01021e6:	c1 e0 02             	shl    $0x2,%eax
c01021e9:	89 c1                	mov    %eax,%ecx
c01021eb:	c1 e1 04             	shl    $0x4,%ecx
c01021ee:	01 c8                	add    %ecx,%eax
c01021f0:	83 c0 40             	add    $0x40,%eax
c01021f3:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01021f8:	89 10                	mov    %edx,(%eax)
c01021fa:	a1 c4 f0 10 c0       	mov    0xc010f0c4,%eax
c01021ff:	a3 bc f0 10 c0       	mov    %eax,0xc010f0bc
c0102204:	c7 05 c0 f0 10 c0 00 	movl   $0x0,0xc010f0c0
c010220b:	00 00 00 
c010220e:	c7 05 c4 f0 10 c0 00 	movl   $0x0,0xc010f0c4
c0102215:	00 00 00 
c0102218:	8b 15 00 10 17 c0    	mov    0xc0171000,%edx
c010221e:	a1 04 10 17 c0       	mov    0xc0171004,%eax
c0102223:	01 d0                	add    %edx,%eax
c0102225:	a3 00 10 17 c0       	mov    %eax,0xc0171000
c010222a:	c7 05 04 10 17 c0 00 	movl   $0x0,0xc0171004
c0102231:	00 00 00 
c0102234:	c7 45 f4 40 3f 13 c0 	movl   $0xc0133f40,-0xc(%ebp)
c010223b:	eb 13                	jmp    c0102250 <reschedule+0x1b9>
c010223d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102240:	c7 40 34 01 00 00 00 	movl   $0x1,0x34(%eax)
c0102247:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010224a:	8b 40 3c             	mov    0x3c(%eax),%eax
c010224d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102250:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102254:	75 e7                	jne    c010223d <reschedule+0x1a6>
c0102256:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102259:	c1 e0 02             	shl    $0x2,%eax
c010225c:	89 c2                	mov    %eax,%edx
c010225e:	c1 e2 04             	shl    $0x4,%edx
c0102261:	01 d0                	add    %edx,%eax
c0102263:	83 c0 30             	add    $0x30,%eax
c0102266:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010226b:	8b 40 0c             	mov    0xc(%eax),%eax
c010226e:	8b 40 08             	mov    0x8(%eax),%eax
c0102271:	c1 e0 0c             	shl    $0xc,%eax
c0102274:	05 00 30 17 c0       	add    $0xc0173000,%eax
c0102279:	05 f8 0f 00 00       	add    $0xff8,%eax
c010227e:	83 ec 0c             	sub    $0xc,%esp
c0102281:	50                   	push   %eax
c0102282:	e8 b6 e0 ff ff       	call   c010033d <set_tss>
c0102287:	83 c4 10             	add    $0x10,%esp
c010228a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010228d:	c1 e0 02             	shl    $0x2,%eax
c0102290:	89 c2                	mov    %eax,%edx
c0102292:	c1 e2 04             	shl    $0x4,%edx
c0102295:	01 d0                	add    %edx,%eax
c0102297:	83 c0 30             	add    $0x30,%eax
c010229a:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010229f:	8b 40 0c             	mov    0xc(%eax),%eax
c01022a2:	8b 40 08             	mov    0x8(%eax),%eax
c01022a5:	c1 e0 0c             	shl    $0xc,%eax
c01022a8:	05 00 50 13 c0       	add    $0xc0135000,%eax
c01022ad:	05 00 00 00 40       	add    $0x40000000,%eax
c01022b2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01022b5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01022b8:	0f 22 d8             	mov    %eax,%cr3
c01022bb:	66 b8 23 00          	mov    $0x23,%ax
c01022bf:	8e d8                	mov    %eax,%ds
c01022c1:	8e c0                	mov    %eax,%es
c01022c3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01022c6:	c1 e0 02             	shl    $0x2,%eax
c01022c9:	89 c2                	mov    %eax,%edx
c01022cb:	c1 e2 04             	shl    $0x4,%edx
c01022ce:	01 d0                	add    %edx,%eax
c01022d0:	83 c0 30             	add    $0x30,%eax
c01022d3:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01022d8:	8b 40 0c             	mov    0xc(%eax),%eax
c01022db:	8b 40 04             	mov    0x4(%eax),%eax
c01022de:	89 c4                	mov    %eax,%esp
c01022e0:	61                   	popa   
c01022e1:	83 c4 08             	add    $0x8,%esp
c01022e4:	cf                   	iret   
c01022e5:	c9                   	leave  
c01022e6:	c3                   	ret    

c01022e7 <time_treat>:
c01022e7:	55                   	push   %ebp
c01022e8:	89 e5                	mov    %esp,%ebp
c01022ea:	53                   	push   %ebx
c01022eb:	83 ec 14             	sub    $0x14,%esp
c01022ee:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c01022f3:	83 f8 01             	cmp    $0x1,%eax
c01022f6:	0f 84 eb 00 00 00    	je     c01023e7 <time_treat+0x100>
c01022fc:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102301:	c1 e0 02             	shl    $0x2,%eax
c0102304:	89 c2                	mov    %eax,%edx
c0102306:	c1 e2 04             	shl    $0x4,%edx
c0102309:	01 d0                	add    %edx,%eax
c010230b:	83 c0 30             	add    $0x30,%eax
c010230e:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102313:	8b 40 0c             	mov    0xc(%eax),%eax
c0102316:	8b 50 38             	mov    0x38(%eax),%edx
c0102319:	83 ea 01             	sub    $0x1,%edx
c010231c:	89 50 38             	mov    %edx,0x38(%eax)
c010231f:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102324:	c1 e0 02             	shl    $0x2,%eax
c0102327:	89 c2                	mov    %eax,%edx
c0102329:	c1 e2 04             	shl    $0x4,%edx
c010232c:	01 d0                	add    %edx,%eax
c010232e:	83 c0 30             	add    $0x30,%eax
c0102331:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102336:	8b 40 0c             	mov    0xc(%eax),%eax
c0102339:	8b 40 38             	mov    0x38(%eax),%eax
c010233c:	85 c0                	test   %eax,%eax
c010233e:	0f 85 2b 01 00 00    	jne    c010246f <time_treat+0x188>
c0102344:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102349:	c1 e0 02             	shl    $0x2,%eax
c010234c:	89 c2                	mov    %eax,%edx
c010234e:	c1 e2 04             	shl    $0x4,%edx
c0102351:	01 d0                	add    %edx,%eax
c0102353:	83 c0 30             	add    $0x30,%eax
c0102356:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010235b:	8b 40 0c             	mov    0xc(%eax),%eax
c010235e:	8b 40 08             	mov    0x8(%eax),%eax
c0102361:	89 c3                	mov    %eax,%ebx
c0102363:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102368:	c1 e0 02             	shl    $0x2,%eax
c010236b:	89 c2                	mov    %eax,%edx
c010236d:	c1 e2 04             	shl    $0x4,%edx
c0102370:	01 d0                	add    %edx,%eax
c0102372:	83 c0 30             	add    $0x30,%eax
c0102375:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010237a:	8b 40 0c             	mov    0xc(%eax),%eax
c010237d:	8b 50 30             	mov    0x30(%eax),%edx
c0102380:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102385:	c1 e0 02             	shl    $0x2,%eax
c0102388:	89 c1                	mov    %eax,%ecx
c010238a:	c1 e1 04             	shl    $0x4,%ecx
c010238d:	01 c8                	add    %ecx,%eax
c010238f:	83 c0 30             	add    $0x30,%eax
c0102392:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102397:	8b 40 0c             	mov    0xc(%eax),%eax
c010239a:	83 c0 0c             	add    $0xc,%eax
c010239d:	83 ec 08             	sub    $0x8,%esp
c01023a0:	53                   	push   %ebx
c01023a1:	52                   	push   %edx
c01023a2:	68 c8 00 00 00       	push   $0xc8
c01023a7:	50                   	push   %eax
c01023a8:	ff 75 08             	pushl  0x8(%ebp)
c01023ab:	6a 02                	push   $0x2
c01023ad:	e8 2f f5 ff ff       	call   c01018e1 <add_PCB>
c01023b2:	83 c4 20             	add    $0x20,%esp
c01023b5:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01023ba:	c1 e0 02             	shl    $0x2,%eax
c01023bd:	89 c2                	mov    %eax,%edx
c01023bf:	c1 e2 04             	shl    $0x4,%edx
c01023c2:	01 d0                	add    %edx,%eax
c01023c4:	83 c0 30             	add    $0x30,%eax
c01023c7:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01023cc:	8b 40 0c             	mov    0xc(%eax),%eax
c01023cf:	8b 00                	mov    (%eax),%eax
c01023d1:	83 ec 0c             	sub    $0xc,%esp
c01023d4:	50                   	push   %eax
c01023d5:	e8 d6 f8 ff ff       	call   c0101cb0 <delete_PCB>
c01023da:	83 c4 10             	add    $0x10,%esp
c01023dd:	e8 b5 fc ff ff       	call   c0102097 <reschedule>
c01023e2:	e9 88 00 00 00       	jmp    c010246f <time_treat+0x188>
c01023e7:	8b 45 08             	mov    0x8(%ebp),%eax
c01023ea:	8b 10                	mov    (%eax),%edx
c01023ec:	89 15 00 31 13 c0    	mov    %edx,0xc0133100
c01023f2:	8b 50 04             	mov    0x4(%eax),%edx
c01023f5:	89 15 04 31 13 c0    	mov    %edx,0xc0133104
c01023fb:	8b 50 08             	mov    0x8(%eax),%edx
c01023fe:	89 15 08 31 13 c0    	mov    %edx,0xc0133108
c0102404:	8b 50 0c             	mov    0xc(%eax),%edx
c0102407:	89 15 0c 31 13 c0    	mov    %edx,0xc013310c
c010240d:	8b 50 10             	mov    0x10(%eax),%edx
c0102410:	89 15 10 31 13 c0    	mov    %edx,0xc0133110
c0102416:	8b 50 14             	mov    0x14(%eax),%edx
c0102419:	89 15 14 31 13 c0    	mov    %edx,0xc0133114
c010241f:	8b 50 18             	mov    0x18(%eax),%edx
c0102422:	89 15 18 31 13 c0    	mov    %edx,0xc0133118
c0102428:	8b 50 1c             	mov    0x1c(%eax),%edx
c010242b:	89 15 1c 31 13 c0    	mov    %edx,0xc013311c
c0102431:	8b 50 20             	mov    0x20(%eax),%edx
c0102434:	89 15 20 31 13 c0    	mov    %edx,0xc0133120
c010243a:	8b 50 24             	mov    0x24(%eax),%edx
c010243d:	89 15 24 31 13 c0    	mov    %edx,0xc0133124
c0102443:	8b 50 28             	mov    0x28(%eax),%edx
c0102446:	89 15 28 31 13 c0    	mov    %edx,0xc0133128
c010244c:	8b 50 2c             	mov    0x2c(%eax),%edx
c010244f:	89 15 2c 31 13 c0    	mov    %edx,0xc013312c
c0102455:	8b 50 30             	mov    0x30(%eax),%edx
c0102458:	89 15 30 31 13 c0    	mov    %edx,0xc0133130
c010245e:	8b 50 34             	mov    0x34(%eax),%edx
c0102461:	89 15 34 31 13 c0    	mov    %edx,0xc0133134
c0102467:	8b 40 38             	mov    0x38(%eax),%eax
c010246a:	a3 38 31 13 c0       	mov    %eax,0xc0133138
c010246f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102476:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c010247b:	85 c0                	test   %eax,%eax
c010247d:	0f 84 b7 00 00 00    	je     c010253a <time_treat+0x253>
c0102483:	a1 c8 f0 10 c0       	mov    0xc010f0c8,%eax
c0102488:	c1 e0 02             	shl    $0x2,%eax
c010248b:	89 c2                	mov    %eax,%edx
c010248d:	c1 e2 04             	shl    $0x4,%edx
c0102490:	01 d0                	add    %edx,%eax
c0102492:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102497:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010249a:	e9 91 00 00 00       	jmp    c0102530 <time_treat+0x249>
c010249f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024a2:	8b 40 38             	mov    0x38(%eax),%eax
c01024a5:	8d 50 ff             	lea    -0x1(%eax),%edx
c01024a8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024ab:	89 50 38             	mov    %edx,0x38(%eax)
c01024ae:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024b1:	8b 40 38             	mov    0x38(%eax),%eax
c01024b4:	85 c0                	test   %eax,%eax
c01024b6:	75 6f                	jne    c0102527 <time_treat+0x240>
c01024b8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024bb:	8b 40 08             	mov    0x8(%eax),%eax
c01024be:	83 ec 08             	sub    $0x8,%esp
c01024c1:	50                   	push   %eax
c01024c2:	68 65 35 10 c0       	push   $0xc0103565
c01024c7:	e8 cd ec ff ff       	call   c0101199 <printk>
c01024cc:	83 c4 10             	add    $0x10,%esp
c01024cf:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c01024d6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024d9:	8b 40 08             	mov    0x8(%eax),%eax
c01024dc:	89 c3                	mov    %eax,%ebx
c01024de:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024e1:	8b 50 30             	mov    0x30(%eax),%edx
c01024e4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024e7:	8d 48 0c             	lea    0xc(%eax),%ecx
c01024ea:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024ed:	8b 40 04             	mov    0x4(%eax),%eax
c01024f0:	83 ec 08             	sub    $0x8,%esp
c01024f3:	53                   	push   %ebx
c01024f4:	52                   	push   %edx
c01024f5:	68 c8 00 00 00       	push   $0xc8
c01024fa:	51                   	push   %ecx
c01024fb:	50                   	push   %eax
c01024fc:	6a 02                	push   $0x2
c01024fe:	e8 de f3 ff ff       	call   c01018e1 <add_PCB>
c0102503:	83 c4 20             	add    $0x20,%esp
c0102506:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102509:	8b 00                	mov    (%eax),%eax
c010250b:	89 45 ec             	mov    %eax,-0x14(%ebp)
c010250e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102511:	8b 40 3c             	mov    0x3c(%eax),%eax
c0102514:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102517:	83 ec 0c             	sub    $0xc,%esp
c010251a:	ff 75 ec             	pushl  -0x14(%ebp)
c010251d:	e8 8e f7 ff ff       	call   c0101cb0 <delete_PCB>
c0102522:	83 c4 10             	add    $0x10,%esp
c0102525:	eb 09                	jmp    c0102530 <time_treat+0x249>
c0102527:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010252a:	8b 40 3c             	mov    0x3c(%eax),%eax
c010252d:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102530:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0102534:	0f 85 65 ff ff ff    	jne    c010249f <time_treat+0x1b8>
c010253a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c010253e:	74 0f                	je     c010254f <time_treat+0x268>
c0102540:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c0102545:	83 f8 01             	cmp    $0x1,%eax
c0102548:	75 05                	jne    c010254f <time_treat+0x268>
c010254a:	e8 48 fb ff ff       	call   c0102097 <reschedule>
c010254f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102552:	c9                   	leave  
c0102553:	c3                   	ret    

c0102554 <process_exit>:
c0102554:	55                   	push   %ebp
c0102555:	89 e5                	mov    %esp,%ebp
c0102557:	83 ec 08             	sub    $0x8,%esp
c010255a:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c010255f:	83 f8 01             	cmp    $0x1,%eax
c0102562:	75 15                	jne    c0102579 <process_exit+0x25>
c0102564:	83 ec 0c             	sub    $0xc,%esp
c0102567:	68 79 35 10 c0       	push   $0xc0103579
c010256c:	e8 28 ec ff ff       	call   c0101199 <printk>
c0102571:	83 c4 10             	add    $0x10,%esp
c0102574:	e9 84 00 00 00       	jmp    c01025fd <process_exit+0xa9>
c0102579:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c010257e:	c1 e0 02             	shl    $0x2,%eax
c0102581:	89 c2                	mov    %eax,%edx
c0102583:	c1 e2 04             	shl    $0x4,%edx
c0102586:	01 d0                	add    %edx,%eax
c0102588:	83 c0 30             	add    $0x30,%eax
c010258b:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102590:	8b 40 0c             	mov    0xc(%eax),%eax
c0102593:	8b 40 08             	mov    0x8(%eax),%eax
c0102596:	83 ec 08             	sub    $0x8,%esp
c0102599:	50                   	push   %eax
c010259a:	68 8c 35 10 c0       	push   $0xc010358c
c010259f:	e8 f5 eb ff ff       	call   c0101199 <printk>
c01025a4:	83 c4 10             	add    $0x10,%esp
c01025a7:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01025ac:	c1 e0 02             	shl    $0x2,%eax
c01025af:	89 c2                	mov    %eax,%edx
c01025b1:	c1 e2 04             	shl    $0x4,%edx
c01025b4:	01 d0                	add    %edx,%eax
c01025b6:	83 c0 30             	add    $0x30,%eax
c01025b9:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01025be:	8b 40 0c             	mov    0xc(%eax),%eax
c01025c1:	8b 40 08             	mov    0x8(%eax),%eax
c01025c4:	83 ec 0c             	sub    $0xc,%esp
c01025c7:	50                   	push   %eax
c01025c8:	e8 a1 f1 ff ff       	call   c010176e <free_a_pid>
c01025cd:	83 c4 10             	add    $0x10,%esp
c01025d0:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01025d5:	c1 e0 02             	shl    $0x2,%eax
c01025d8:	89 c2                	mov    %eax,%edx
c01025da:	c1 e2 04             	shl    $0x4,%edx
c01025dd:	01 d0                	add    %edx,%eax
c01025df:	83 c0 30             	add    $0x30,%eax
c01025e2:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01025e7:	8b 40 0c             	mov    0xc(%eax),%eax
c01025ea:	8b 00                	mov    (%eax),%eax
c01025ec:	83 ec 0c             	sub    $0xc,%esp
c01025ef:	50                   	push   %eax
c01025f0:	e8 bb f6 ff ff       	call   c0101cb0 <delete_PCB>
c01025f5:	83 c4 10             	add    $0x10,%esp
c01025f8:	e8 9a fa ff ff       	call   c0102097 <reschedule>
c01025fd:	c9                   	leave  
c01025fe:	c3                   	ret    

c01025ff <load_PCB>:
c01025ff:	55                   	push   %ebp
c0102600:	89 e5                	mov    %esp,%ebp
c0102602:	83 ec 18             	sub    $0x18,%esp
c0102605:	e8 0f f1 ff ff       	call   c0101719 <get_free_pid>
c010260a:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010260d:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c0102612:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0102615:	c1 e2 0c             	shl    $0xc,%edx
c0102618:	81 c2 00 50 13 c0    	add    $0xc0135000,%edx
c010261e:	83 ec 04             	sub    $0x4,%esp
c0102621:	68 00 10 00 00       	push   $0x1000
c0102626:	50                   	push   %eax
c0102627:	52                   	push   %edx
c0102628:	e8 91 eb ff ff       	call   c01011be <my_memcpy>
c010262d:	83 c4 10             	add    $0x10,%esp
c0102630:	c7 45 ec 00 04 00 00 	movl   $0x400,-0x14(%ebp)
c0102637:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c010263e:	eb 1d                	jmp    c010265d <load_PCB+0x5e>
c0102640:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102643:	0f b7 04 c5 44 f0 1a 	movzwl -0x3fe50fbc(,%eax,8),%eax
c010264a:	c0 
c010264b:	8d 50 01             	lea    0x1(%eax),%edx
c010264e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102651:	66 89 14 c5 44 f0 1a 	mov    %dx,-0x3fe50fbc(,%eax,8)
c0102658:	c0 
c0102659:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c010265d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102660:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c0102663:	7c db                	jl     c0102640 <load_PCB+0x41>
c0102665:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102668:	c1 e0 0c             	shl    $0xc,%eax
c010266b:	05 00 50 13 c0       	add    $0xc0135000,%eax
c0102670:	83 ec 08             	sub    $0x8,%esp
c0102673:	50                   	push   %eax
c0102674:	ff 75 08             	pushl  0x8(%ebp)
c0102677:	e8 10 ed ff ff       	call   c010138c <load>
c010267c:	83 c4 10             	add    $0x10,%esp
c010267f:	89 c1                	mov    %eax,%ecx
c0102681:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102684:	89 c2                	mov    %eax,%edx
c0102686:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c010268d:	89 c2                	mov    %eax,%edx
c010268f:	89 d0                	mov    %edx,%eax
c0102691:	c1 e0 04             	shl    $0x4,%eax
c0102694:	29 d0                	sub    %edx,%eax
c0102696:	83 c0 20             	add    $0x20,%eax
c0102699:	05 00 31 13 c0       	add    $0xc0133100,%eax
c010269e:	89 48 08             	mov    %ecx,0x8(%eax)
c01026a1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01026a4:	89 c2                	mov    %eax,%edx
c01026a6:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01026ad:	89 c2                	mov    %eax,%edx
c01026af:	89 d0                	mov    %edx,%eax
c01026b1:	c1 e0 04             	shl    $0x4,%eax
c01026b4:	29 d0                	sub    %edx,%eax
c01026b6:	83 c0 20             	add    $0x20,%eax
c01026b9:	05 00 31 13 c0       	add    $0xc0133100,%eax
c01026be:	c7 40 0c 1b 00 00 00 	movl   $0x1b,0xc(%eax)
c01026c5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01026c8:	89 c2                	mov    %eax,%edx
c01026ca:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01026d1:	89 c2                	mov    %eax,%edx
c01026d3:	89 d0                	mov    %edx,%eax
c01026d5:	c1 e0 04             	shl    $0x4,%eax
c01026d8:	29 d0                	sub    %edx,%eax
c01026da:	83 c0 30             	add    $0x30,%eax
c01026dd:	05 00 31 13 c0       	add    $0xc0133100,%eax
c01026e2:	c7 00 02 02 00 00    	movl   $0x202,(%eax)
c01026e8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01026eb:	89 c2                	mov    %eax,%edx
c01026ed:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01026f4:	89 c2                	mov    %eax,%edx
c01026f6:	89 d0                	mov    %edx,%eax
c01026f8:	c1 e0 04             	shl    $0x4,%eax
c01026fb:	29 d0                	sub    %edx,%eax
c01026fd:	83 c0 30             	add    $0x30,%eax
c0102700:	05 00 31 13 c0       	add    $0xc0133100,%eax
c0102705:	c7 40 04 f0 ff 60 00 	movl   $0x60fff0,0x4(%eax)
c010270c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010270f:	89 c2                	mov    %eax,%edx
c0102711:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102718:	89 c2                	mov    %eax,%edx
c010271a:	89 d0                	mov    %edx,%eax
c010271c:	c1 e0 04             	shl    $0x4,%eax
c010271f:	29 d0                	sub    %edx,%eax
c0102721:	83 c0 30             	add    $0x30,%eax
c0102724:	05 00 31 13 c0       	add    $0xc0133100,%eax
c0102729:	c7 40 08 23 00 00 00 	movl   $0x23,0x8(%eax)
c0102730:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102733:	89 c2                	mov    %eax,%edx
c0102735:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c010273c:	89 c2                	mov    %eax,%edx
c010273e:	89 d0                	mov    %edx,%eax
c0102740:	c1 e0 04             	shl    $0x4,%eax
c0102743:	29 d0                	sub    %edx,%eax
c0102745:	05 00 31 13 c0       	add    $0xc0133100,%eax
c010274a:	83 ec 08             	sub    $0x8,%esp
c010274d:	ff 75 f0             	pushl  -0x10(%ebp)
c0102750:	6a 00                	push   $0x0
c0102752:	68 c8 00 00 00       	push   $0xc8
c0102757:	ff 75 0c             	pushl  0xc(%ebp)
c010275a:	50                   	push   %eax
c010275b:	6a 01                	push   $0x1
c010275d:	e8 7f f1 ff ff       	call   c01018e1 <add_PCB>
c0102762:	83 c4 20             	add    $0x20,%esp
c0102765:	c9                   	leave  
c0102766:	c3                   	ret    

c0102767 <my_sleep>:
c0102767:	55                   	push   %ebp
c0102768:	89 e5                	mov    %esp,%ebp
c010276a:	53                   	push   %ebx
c010276b:	83 ec 04             	sub    $0x4,%esp
c010276e:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c0102773:	83 f8 01             	cmp    $0x1,%eax
c0102776:	75 15                	jne    c010278d <my_sleep+0x26>
c0102778:	83 ec 0c             	sub    $0xc,%esp
c010277b:	68 9d 35 10 c0       	push   $0xc010359d
c0102780:	e8 14 ea ff ff       	call   c0101199 <printk>
c0102785:	83 c4 10             	add    $0x10,%esp
c0102788:	e9 cd 00 00 00       	jmp    c010285a <my_sleep+0xf3>
c010278d:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102792:	c1 e0 02             	shl    $0x2,%eax
c0102795:	89 c2                	mov    %eax,%edx
c0102797:	c1 e2 04             	shl    $0x4,%edx
c010279a:	01 d0                	add    %edx,%eax
c010279c:	83 c0 30             	add    $0x30,%eax
c010279f:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01027a4:	8b 40 0c             	mov    0xc(%eax),%eax
c01027a7:	8b 40 08             	mov    0x8(%eax),%eax
c01027aa:	83 ec 04             	sub    $0x4,%esp
c01027ad:	ff 75 08             	pushl  0x8(%ebp)
c01027b0:	50                   	push   %eax
c01027b1:	68 b9 35 10 c0       	push   $0xc01035b9
c01027b6:	e8 de e9 ff ff       	call   c0101199 <printk>
c01027bb:	83 c4 10             	add    $0x10,%esp
c01027be:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01027c3:	c1 e0 02             	shl    $0x2,%eax
c01027c6:	89 c2                	mov    %eax,%edx
c01027c8:	c1 e2 04             	shl    $0x4,%edx
c01027cb:	01 d0                	add    %edx,%eax
c01027cd:	83 c0 30             	add    $0x30,%eax
c01027d0:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01027d5:	8b 40 0c             	mov    0xc(%eax),%eax
c01027d8:	8b 40 08             	mov    0x8(%eax),%eax
c01027db:	89 c3                	mov    %eax,%ebx
c01027dd:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01027e2:	c1 e0 02             	shl    $0x2,%eax
c01027e5:	89 c2                	mov    %eax,%edx
c01027e7:	c1 e2 04             	shl    $0x4,%edx
c01027ea:	01 d0                	add    %edx,%eax
c01027ec:	83 c0 30             	add    $0x30,%eax
c01027ef:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01027f4:	8b 40 0c             	mov    0xc(%eax),%eax
c01027f7:	8b 50 30             	mov    0x30(%eax),%edx
c01027fa:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01027ff:	c1 e0 02             	shl    $0x2,%eax
c0102802:	89 c1                	mov    %eax,%ecx
c0102804:	c1 e1 04             	shl    $0x4,%ecx
c0102807:	01 c8                	add    %ecx,%eax
c0102809:	83 c0 30             	add    $0x30,%eax
c010280c:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102811:	8b 40 0c             	mov    0xc(%eax),%eax
c0102814:	83 c0 0c             	add    $0xc,%eax
c0102817:	83 ec 08             	sub    $0x8,%esp
c010281a:	53                   	push   %ebx
c010281b:	52                   	push   %edx
c010281c:	ff 75 08             	pushl  0x8(%ebp)
c010281f:	50                   	push   %eax
c0102820:	ff 75 0c             	pushl  0xc(%ebp)
c0102823:	6a 03                	push   $0x3
c0102825:	e8 b7 f0 ff ff       	call   c01018e1 <add_PCB>
c010282a:	83 c4 20             	add    $0x20,%esp
c010282d:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102832:	c1 e0 02             	shl    $0x2,%eax
c0102835:	89 c2                	mov    %eax,%edx
c0102837:	c1 e2 04             	shl    $0x4,%edx
c010283a:	01 d0                	add    %edx,%eax
c010283c:	83 c0 30             	add    $0x30,%eax
c010283f:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102844:	8b 40 0c             	mov    0xc(%eax),%eax
c0102847:	8b 00                	mov    (%eax),%eax
c0102849:	83 ec 0c             	sub    $0xc,%esp
c010284c:	50                   	push   %eax
c010284d:	e8 5e f4 ff ff       	call   c0101cb0 <delete_PCB>
c0102852:	83 c4 10             	add    $0x10,%esp
c0102855:	e8 3d f8 ff ff       	call   c0102097 <reschedule>
c010285a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c010285d:	c9                   	leave  
c010285e:	c3                   	ret    

c010285f <my_fork>:
c010285f:	55                   	push   %ebp
c0102860:	89 e5                	mov    %esp,%ebp
c0102862:	56                   	push   %esi
c0102863:	53                   	push   %ebx
c0102864:	83 ec 10             	sub    $0x10,%esp
c0102867:	e8 ad ee ff ff       	call   c0101719 <get_free_pid>
c010286c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c010286f:	83 ec 08             	sub    $0x8,%esp
c0102872:	ff 75 f4             	pushl  -0xc(%ebp)
c0102875:	68 d1 35 10 c0       	push   $0xc01035d1
c010287a:	e8 1a e9 ff ff       	call   c0101199 <printk>
c010287f:	83 c4 10             	add    $0x10,%esp
c0102882:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102885:	c1 e0 02             	shl    $0x2,%eax
c0102888:	89 c2                	mov    %eax,%edx
c010288a:	c1 e2 04             	shl    $0x4,%edx
c010288d:	29 c2                	sub    %eax,%edx
c010288f:	89 d0                	mov    %edx,%eax
c0102891:	8d 90 00 31 13 c0    	lea    -0x3feccf00(%eax),%edx
c0102897:	8b 45 08             	mov    0x8(%ebp),%eax
c010289a:	8b 08                	mov    (%eax),%ecx
c010289c:	89 0a                	mov    %ecx,(%edx)
c010289e:	8b 48 04             	mov    0x4(%eax),%ecx
c01028a1:	89 4a 04             	mov    %ecx,0x4(%edx)
c01028a4:	8b 48 08             	mov    0x8(%eax),%ecx
c01028a7:	89 4a 08             	mov    %ecx,0x8(%edx)
c01028aa:	8b 48 0c             	mov    0xc(%eax),%ecx
c01028ad:	89 4a 0c             	mov    %ecx,0xc(%edx)
c01028b0:	8b 48 10             	mov    0x10(%eax),%ecx
c01028b3:	89 4a 10             	mov    %ecx,0x10(%edx)
c01028b6:	8b 48 14             	mov    0x14(%eax),%ecx
c01028b9:	89 4a 14             	mov    %ecx,0x14(%edx)
c01028bc:	8b 48 18             	mov    0x18(%eax),%ecx
c01028bf:	89 4a 18             	mov    %ecx,0x18(%edx)
c01028c2:	8b 48 1c             	mov    0x1c(%eax),%ecx
c01028c5:	89 4a 1c             	mov    %ecx,0x1c(%edx)
c01028c8:	8b 48 20             	mov    0x20(%eax),%ecx
c01028cb:	89 4a 20             	mov    %ecx,0x20(%edx)
c01028ce:	8b 48 24             	mov    0x24(%eax),%ecx
c01028d1:	89 4a 24             	mov    %ecx,0x24(%edx)
c01028d4:	8b 48 28             	mov    0x28(%eax),%ecx
c01028d7:	89 4a 28             	mov    %ecx,0x28(%edx)
c01028da:	8b 48 2c             	mov    0x2c(%eax),%ecx
c01028dd:	89 4a 2c             	mov    %ecx,0x2c(%edx)
c01028e0:	8b 48 30             	mov    0x30(%eax),%ecx
c01028e3:	89 4a 30             	mov    %ecx,0x30(%edx)
c01028e6:	8b 48 34             	mov    0x34(%eax),%ecx
c01028e9:	89 4a 34             	mov    %ecx,0x34(%edx)
c01028ec:	8b 40 38             	mov    0x38(%eax),%eax
c01028ef:	89 42 38             	mov    %eax,0x38(%edx)
c01028f2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01028f5:	89 c2                	mov    %eax,%edx
c01028f7:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01028fe:	89 c2                	mov    %eax,%edx
c0102900:	89 d0                	mov    %edx,%eax
c0102902:	c1 e0 04             	shl    $0x4,%eax
c0102905:	29 d0                	sub    %edx,%eax
c0102907:	83 c0 10             	add    $0x10,%eax
c010290a:	05 00 31 13 c0       	add    $0xc0133100,%eax
c010290f:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0102916:	a1 00 10 17 c0       	mov    0xc0171000,%eax
c010291b:	83 f8 01             	cmp    $0x1,%eax
c010291e:	75 1a                	jne    c010293a <my_fork+0xdb>
c0102920:	83 ec 0c             	sub    $0xc,%esp
c0102923:	68 e4 35 10 c0       	push   $0xc01035e4
c0102928:	e8 6c e8 ff ff       	call   c0101199 <printk>
c010292d:	83 c4 10             	add    $0x10,%esp
c0102930:	b8 00 00 00 00       	mov    $0x0,%eax
c0102935:	e9 03 01 00 00       	jmp    c0102a3d <my_fork+0x1de>
c010293a:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c010293f:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102942:	c1 e2 0c             	shl    $0xc,%edx
c0102945:	81 c2 00 50 13 c0    	add    $0xc0135000,%edx
c010294b:	83 ec 04             	sub    $0x4,%esp
c010294e:	68 00 10 00 00       	push   $0x1000
c0102953:	50                   	push   %eax
c0102954:	52                   	push   %edx
c0102955:	e8 64 e8 ff ff       	call   c01011be <my_memcpy>
c010295a:	83 c4 10             	add    $0x10,%esp
c010295d:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102962:	c1 e0 02             	shl    $0x2,%eax
c0102965:	89 c2                	mov    %eax,%edx
c0102967:	c1 e2 04             	shl    $0x4,%edx
c010296a:	01 d0                	add    %edx,%eax
c010296c:	83 c0 30             	add    $0x30,%eax
c010296f:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102974:	8b 40 0c             	mov    0xc(%eax),%eax
c0102977:	8b 58 08             	mov    0x8(%eax),%ebx
c010297a:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c010297f:	c1 e0 02             	shl    $0x2,%eax
c0102982:	89 c2                	mov    %eax,%edx
c0102984:	c1 e2 04             	shl    $0x4,%edx
c0102987:	01 d0                	add    %edx,%eax
c0102989:	83 c0 30             	add    $0x30,%eax
c010298c:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102991:	8b 40 0c             	mov    0xc(%eax),%eax
c0102994:	8b 48 38             	mov    0x38(%eax),%ecx
c0102997:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c010299c:	c1 e0 02             	shl    $0x2,%eax
c010299f:	89 c2                	mov    %eax,%edx
c01029a1:	c1 e2 04             	shl    $0x4,%edx
c01029a4:	01 d0                	add    %edx,%eax
c01029a6:	83 c0 30             	add    $0x30,%eax
c01029a9:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01029ae:	8b 40 0c             	mov    0xc(%eax),%eax
c01029b1:	8d 70 0c             	lea    0xc(%eax),%esi
c01029b4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01029b7:	89 c2                	mov    %eax,%edx
c01029b9:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01029c0:	89 c2                	mov    %eax,%edx
c01029c2:	89 d0                	mov    %edx,%eax
c01029c4:	c1 e0 04             	shl    $0x4,%eax
c01029c7:	29 d0                	sub    %edx,%eax
c01029c9:	05 00 31 13 c0       	add    $0xc0133100,%eax
c01029ce:	83 ec 08             	sub    $0x8,%esp
c01029d1:	ff 75 f4             	pushl  -0xc(%ebp)
c01029d4:	53                   	push   %ebx
c01029d5:	51                   	push   %ecx
c01029d6:	56                   	push   %esi
c01029d7:	50                   	push   %eax
c01029d8:	6a 01                	push   $0x1
c01029da:	e8 02 ef ff ff       	call   c01018e1 <add_PCB>
c01029df:	83 c4 20             	add    $0x20,%esp
c01029e2:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01029e7:	c1 e0 02             	shl    $0x2,%eax
c01029ea:	89 c2                	mov    %eax,%edx
c01029ec:	c1 e2 04             	shl    $0x4,%edx
c01029ef:	01 d0                	add    %edx,%eax
c01029f1:	83 c0 30             	add    $0x30,%eax
c01029f4:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01029f9:	8b 40 0c             	mov    0xc(%eax),%eax
c01029fc:	8b 40 08             	mov    0x8(%eax),%eax
c01029ff:	c1 e0 0c             	shl    $0xc,%eax
c0102a02:	8d 90 00 50 13 c0    	lea    -0x3fecb000(%eax),%edx
c0102a08:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102a0b:	c1 e0 0c             	shl    $0xc,%eax
c0102a0e:	05 00 50 13 c0       	add    $0xc0135000,%eax
c0102a13:	83 ec 08             	sub    $0x8,%esp
c0102a16:	52                   	push   %edx
c0102a17:	50                   	push   %eax
c0102a18:	e8 68 07 00 00       	call   c0103185 <copy_pgdir>
c0102a1d:	83 c4 10             	add    $0x10,%esp
c0102a20:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0102a25:	c1 e0 02             	shl    $0x2,%eax
c0102a28:	89 c2                	mov    %eax,%edx
c0102a2a:	c1 e2 04             	shl    $0x4,%edx
c0102a2d:	01 d0                	add    %edx,%eax
c0102a2f:	83 c0 30             	add    $0x30,%eax
c0102a32:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0102a37:	8b 40 0c             	mov    0xc(%eax),%eax
c0102a3a:	8b 40 08             	mov    0x8(%eax),%eax
c0102a3d:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0102a40:	5b                   	pop    %ebx
c0102a41:	5e                   	pop    %esi
c0102a42:	5d                   	pop    %ebp
c0102a43:	c3                   	ret    

c0102a44 <_paddr>:
c0102a44:	55                   	push   %ebp
c0102a45:	89 e5                	mov    %esp,%ebp
c0102a47:	83 ec 08             	sub    $0x8,%esp
c0102a4a:	8b 45 10             	mov    0x10(%ebp),%eax
c0102a4d:	3d ff ff ff bf       	cmp    $0xbfffffff,%eax
c0102a52:	77 16                	ja     c0102a6a <_paddr+0x26>
c0102a54:	ff 75 10             	pushl  0x10(%ebp)
c0102a57:	68 20 36 10 c0       	push   $0xc0103620
c0102a5c:	ff 75 0c             	pushl  0xc(%ebp)
c0102a5f:	ff 75 08             	pushl  0x8(%ebp)
c0102a62:	e8 32 e7 ff ff       	call   c0101199 <printk>
c0102a67:	83 c4 10             	add    $0x10,%esp
c0102a6a:	8b 45 10             	mov    0x10(%ebp),%eax
c0102a6d:	05 00 00 00 40       	add    $0x40000000,%eax
c0102a72:	c9                   	leave  
c0102a73:	c3                   	ret    

c0102a74 <_kaddr>:
c0102a74:	55                   	push   %ebp
c0102a75:	89 e5                	mov    %esp,%ebp
c0102a77:	83 ec 08             	sub    $0x8,%esp
c0102a7a:	8b 45 10             	mov    0x10(%ebp),%eax
c0102a7d:	c1 e8 0c             	shr    $0xc,%eax
c0102a80:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0102a85:	76 13                	jbe    c0102a9a <_kaddr+0x26>
c0102a87:	83 ec 08             	sub    $0x8,%esp
c0102a8a:	ff 75 10             	pushl  0x10(%ebp)
c0102a8d:	68 44 36 10 c0       	push   $0xc0103644
c0102a92:	e8 02 e7 ff ff       	call   c0101199 <printk>
c0102a97:	83 c4 10             	add    $0x10,%esp
c0102a9a:	8b 45 10             	mov    0x10(%ebp),%eax
c0102a9d:	2d 00 00 00 40       	sub    $0x40000000,%eax
c0102aa2:	c9                   	leave  
c0102aa3:	c3                   	ret    

c0102aa4 <page2pa>:
c0102aa4:	55                   	push   %ebp
c0102aa5:	89 e5                	mov    %esp,%ebp
c0102aa7:	8b 45 08             	mov    0x8(%ebp),%eax
c0102aaa:	ba 40 f0 1a c0       	mov    $0xc01af040,%edx
c0102aaf:	29 d0                	sub    %edx,%eax
c0102ab1:	c1 f8 03             	sar    $0x3,%eax
c0102ab4:	c1 e0 0c             	shl    $0xc,%eax
c0102ab7:	5d                   	pop    %ebp
c0102ab8:	c3                   	ret    

c0102ab9 <pa2page>:
c0102ab9:	55                   	push   %ebp
c0102aba:	89 e5                	mov    %esp,%ebp
c0102abc:	83 ec 08             	sub    $0x8,%esp
c0102abf:	8b 45 08             	mov    0x8(%ebp),%eax
c0102ac2:	c1 e8 0c             	shr    $0xc,%eax
c0102ac5:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0102aca:	76 10                	jbe    c0102adc <pa2page+0x23>
c0102acc:	83 ec 0c             	sub    $0xc,%esp
c0102acf:	68 68 36 10 c0       	push   $0xc0103668
c0102ad4:	e8 c0 e6 ff ff       	call   c0101199 <printk>
c0102ad9:	83 c4 10             	add    $0x10,%esp
c0102adc:	8b 45 08             	mov    0x8(%ebp),%eax
c0102adf:	c1 e8 0c             	shr    $0xc,%eax
c0102ae2:	c1 e0 03             	shl    $0x3,%eax
c0102ae5:	05 40 f0 1a c0       	add    $0xc01af040,%eax
c0102aea:	c9                   	leave  
c0102aeb:	c3                   	ret    

c0102aec <page2kva>:
c0102aec:	55                   	push   %ebp
c0102aed:	89 e5                	mov    %esp,%ebp
c0102aef:	83 ec 08             	sub    $0x8,%esp
c0102af2:	ff 75 08             	pushl  0x8(%ebp)
c0102af5:	e8 aa ff ff ff       	call   c0102aa4 <page2pa>
c0102afa:	83 c4 04             	add    $0x4,%esp
c0102afd:	83 ec 04             	sub    $0x4,%esp
c0102b00:	50                   	push   %eax
c0102b01:	6a 52                	push   $0x52
c0102b03:	68 87 36 10 c0       	push   $0xc0103687
c0102b08:	e8 67 ff ff ff       	call   c0102a74 <_kaddr>
c0102b0d:	83 c4 10             	add    $0x10,%esp
c0102b10:	c9                   	leave  
c0102b11:	c3                   	ret    

c0102b12 <mm_alloc>:
c0102b12:	55                   	push   %ebp
c0102b13:	89 e5                	mov    %esp,%ebp
c0102b15:	83 ec 28             	sub    $0x28,%esp
c0102b18:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102b1b:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102b1e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102b21:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102b26:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102b29:	c7 45 e8 00 10 00 00 	movl   $0x1000,-0x18(%ebp)
c0102b30:	8b 55 10             	mov    0x10(%ebp),%edx
c0102b33:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102b36:	01 c2                	add    %eax,%edx
c0102b38:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102b3b:	01 d0                	add    %edx,%eax
c0102b3d:	83 e8 01             	sub    $0x1,%eax
c0102b40:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0102b43:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0102b46:	ba 00 00 00 00       	mov    $0x0,%edx
c0102b4b:	f7 75 e8             	divl   -0x18(%ebp)
c0102b4e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0102b51:	29 d0                	sub    %edx,%eax
c0102b53:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0102b56:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102b59:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102b5c:	eb 2b                	jmp    c0102b89 <mm_alloc+0x77>
c0102b5e:	83 ec 0c             	sub    $0xc,%esp
c0102b61:	6a 00                	push   $0x0
c0102b63:	e8 9c 01 00 00       	call   c0102d04 <page_alloc>
c0102b68:	83 c4 10             	add    $0x10,%esp
c0102b6b:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0102b6e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102b71:	6a 07                	push   $0x7
c0102b73:	50                   	push   %eax
c0102b74:	ff 75 dc             	pushl  -0x24(%ebp)
c0102b77:	ff 75 08             	pushl  0x8(%ebp)
c0102b7a:	e8 84 03 00 00       	call   c0102f03 <page_insert>
c0102b7f:	83 c4 10             	add    $0x10,%esp
c0102b82:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
c0102b89:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102b8c:	3b 45 e0             	cmp    -0x20(%ebp),%eax
c0102b8f:	72 cd                	jb     c0102b5e <mm_alloc+0x4c>
c0102b91:	c9                   	leave  
c0102b92:	c3                   	ret    

c0102b93 <init_kern_pgdir>:
c0102b93:	55                   	push   %ebp
c0102b94:	89 e5                	mov    %esp,%ebp
c0102b96:	53                   	push   %ebx
c0102b97:	83 ec 24             	sub    $0x24,%esp
c0102b9a:	c7 45 e8 00 10 11 c0 	movl   $0xc0111000,-0x18(%ebp)
c0102ba1:	c7 45 f0 00 20 11 c0 	movl   $0xc0112000,-0x10(%ebp)
c0102ba8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102baf:	eb 3a                	jmp    c0102beb <init_kern_pgdir+0x58>
c0102bb1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102bb4:	05 00 03 00 00       	add    $0x300,%eax
c0102bb9:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102bc0:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102bc3:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0102bc6:	83 ec 04             	sub    $0x4,%esp
c0102bc9:	ff 75 f0             	pushl  -0x10(%ebp)
c0102bcc:	6a 42                	push   $0x42
c0102bce:	68 96 36 10 c0       	push   $0xc0103696
c0102bd3:	e8 6c fe ff ff       	call   c0102a44 <_paddr>
c0102bd8:	83 c4 10             	add    $0x10,%esp
c0102bdb:	83 c8 03             	or     $0x3,%eax
c0102bde:	89 03                	mov    %eax,(%ebx)
c0102be0:	81 45 f0 00 10 00 00 	addl   $0x1000,-0x10(%ebp)
c0102be7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102beb:	83 7d f4 1f          	cmpl   $0x1f,-0xc(%ebp)
c0102bef:	7e c0                	jle    c0102bb1 <init_kern_pgdir+0x1e>
c0102bf1:	c7 45 ec 00 f0 ff 07 	movl   $0x7fff000,-0x14(%ebp)
c0102bf8:	83 6d f0 04          	subl   $0x4,-0x10(%ebp)
c0102bfc:	eb 18                	jmp    c0102c16 <init_kern_pgdir+0x83>
c0102bfe:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102c01:	83 c8 07             	or     $0x7,%eax
c0102c04:	89 c2                	mov    %eax,%edx
c0102c06:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102c09:	89 10                	mov    %edx,(%eax)
c0102c0b:	83 6d f0 04          	subl   $0x4,-0x10(%ebp)
c0102c0f:	81 6d ec 00 10 00 00 	subl   $0x1000,-0x14(%ebp)
c0102c16:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102c1a:	79 e2                	jns    c0102bfe <init_kern_pgdir+0x6b>
c0102c1c:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102c1f:	a3 04 f0 1a c0       	mov    %eax,0xc01af004
c0102c24:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c0102c29:	83 ec 04             	sub    $0x4,%esp
c0102c2c:	50                   	push   %eax
c0102c2d:	6a 4f                	push   $0x4f
c0102c2f:	68 96 36 10 c0       	push   $0xc0103696
c0102c34:	e8 0b fe ff ff       	call   c0102a44 <_paddr>
c0102c39:	83 c4 10             	add    $0x10,%esp
c0102c3c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0102c3f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0102c42:	0f 22 d8             	mov    %eax,%cr3
c0102c45:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102c48:	c9                   	leave  
c0102c49:	c3                   	ret    

c0102c4a <page_init>:
c0102c4a:	55                   	push   %ebp
c0102c4b:	89 e5                	mov    %esp,%ebp
c0102c4d:	83 ec 18             	sub    $0x18,%esp
c0102c50:	e8 3e ff ff ff       	call   c0102b93 <init_kern_pgdir>
c0102c55:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
c0102c5c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102c63:	eb 11                	jmp    c0102c76 <page_init+0x2c>
c0102c65:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102c68:	66 c7 04 c5 44 f0 1a 	movw   $0x1,-0x3fe50fbc(,%eax,8)
c0102c6f:	c0 01 00 
c0102c72:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102c76:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102c79:	3b 45 f4             	cmp    -0xc(%ebp),%eax
c0102c7c:	77 e7                	ja     c0102c65 <page_init+0x1b>
c0102c7e:	c7 45 f4 ff 7f 00 00 	movl   $0x7fff,-0xc(%ebp)
c0102c85:	eb 31                	jmp    c0102cb8 <page_init+0x6e>
c0102c87:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102c8a:	66 c7 04 c5 44 f0 1a 	movw   $0x0,-0x3fe50fbc(,%eax,8)
c0102c91:	c0 00 00 
c0102c94:	8b 15 00 00 11 c0    	mov    0xc0110000,%edx
c0102c9a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102c9d:	89 14 c5 40 f0 1a c0 	mov    %edx,-0x3fe50fc0(,%eax,8)
c0102ca4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102ca7:	c1 e0 03             	shl    $0x3,%eax
c0102caa:	05 40 f0 1a c0       	add    $0xc01af040,%eax
c0102caf:	a3 00 00 11 c0       	mov    %eax,0xc0110000
c0102cb4:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
c0102cb8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102cbb:	3b 45 f4             	cmp    -0xc(%ebp),%eax
c0102cbe:	76 c7                	jbe    c0102c87 <page_init+0x3d>
c0102cc0:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
c0102cc7:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102cca:	05 ff f9 00 00       	add    $0xf9ff,%eax
c0102ccf:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0102cd2:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102cd5:	ba 00 00 00 00       	mov    $0x0,%edx
c0102cda:	f7 75 ec             	divl   -0x14(%ebp)
c0102cdd:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102ce0:	29 d0                	sub    %edx,%eax
c0102ce2:	89 c2                	mov    %eax,%edx
c0102ce4:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c0102ce9:	83 ec 0c             	sub    $0xc,%esp
c0102cec:	6a 03                	push   $0x3
c0102cee:	68 00 00 0a 00       	push   $0xa0000
c0102cf3:	52                   	push   %edx
c0102cf4:	68 00 00 0a 00       	push   $0xa0000
c0102cf9:	50                   	push   %eax
c0102cfa:	e8 a1 01 00 00       	call   c0102ea0 <boot_map_region>
c0102cff:	83 c4 20             	add    $0x20,%esp
c0102d02:	c9                   	leave  
c0102d03:	c3                   	ret    

c0102d04 <page_alloc>:
c0102d04:	55                   	push   %ebp
c0102d05:	89 e5                	mov    %esp,%ebp
c0102d07:	83 ec 18             	sub    $0x18,%esp
c0102d0a:	a1 00 00 11 c0       	mov    0xc0110000,%eax
c0102d0f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102d12:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102d16:	75 07                	jne    c0102d1f <page_alloc+0x1b>
c0102d18:	b8 00 00 00 00       	mov    $0x0,%eax
c0102d1d:	eb 43                	jmp    c0102d62 <page_alloc+0x5e>
c0102d1f:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d22:	83 e0 01             	and    $0x1,%eax
c0102d25:	85 c0                	test   %eax,%eax
c0102d27:	74 21                	je     c0102d4a <page_alloc+0x46>
c0102d29:	83 ec 0c             	sub    $0xc,%esp
c0102d2c:	ff 75 f4             	pushl  -0xc(%ebp)
c0102d2f:	e8 b8 fd ff ff       	call   c0102aec <page2kva>
c0102d34:	83 c4 10             	add    $0x10,%esp
c0102d37:	83 ec 04             	sub    $0x4,%esp
c0102d3a:	68 00 10 00 00       	push   $0x1000
c0102d3f:	6a 00                	push   $0x0
c0102d41:	50                   	push   %eax
c0102d42:	e8 94 e4 ff ff       	call   c01011db <my_memset>
c0102d47:	83 c4 10             	add    $0x10,%esp
c0102d4a:	a1 00 00 11 c0       	mov    0xc0110000,%eax
c0102d4f:	8b 00                	mov    (%eax),%eax
c0102d51:	a3 00 00 11 c0       	mov    %eax,0xc0110000
c0102d56:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102d59:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0102d5f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102d62:	c9                   	leave  
c0102d63:	c3                   	ret    

c0102d64 <page_free>:
c0102d64:	55                   	push   %ebp
c0102d65:	89 e5                	mov    %esp,%ebp
c0102d67:	8b 15 00 00 11 c0    	mov    0xc0110000,%edx
c0102d6d:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d70:	89 10                	mov    %edx,(%eax)
c0102d72:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d75:	a3 00 00 11 c0       	mov    %eax,0xc0110000
c0102d7a:	5d                   	pop    %ebp
c0102d7b:	c3                   	ret    

c0102d7c <page_decref>:
c0102d7c:	55                   	push   %ebp
c0102d7d:	89 e5                	mov    %esp,%ebp
c0102d7f:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d82:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102d86:	8d 50 ff             	lea    -0x1(%eax),%edx
c0102d89:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d8c:	66 89 50 04          	mov    %dx,0x4(%eax)
c0102d90:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d93:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102d97:	66 85 c0             	test   %ax,%ax
c0102d9a:	75 0b                	jne    c0102da7 <page_decref+0x2b>
c0102d9c:	ff 75 08             	pushl  0x8(%ebp)
c0102d9f:	e8 c0 ff ff ff       	call   c0102d64 <page_free>
c0102da4:	83 c4 04             	add    $0x4,%esp
c0102da7:	c9                   	leave  
c0102da8:	c3                   	ret    

c0102da9 <pgdir_walk>:
c0102da9:	55                   	push   %ebp
c0102daa:	89 e5                	mov    %esp,%ebp
c0102dac:	53                   	push   %ebx
c0102dad:	83 ec 14             	sub    $0x14,%esp
c0102db0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102db3:	c1 e8 16             	shr    $0x16,%eax
c0102db6:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102db9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102dbc:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102dc3:	8b 45 08             	mov    0x8(%ebp),%eax
c0102dc6:	01 d0                	add    %edx,%eax
c0102dc8:	8b 00                	mov    (%eax),%eax
c0102dca:	83 e0 01             	and    $0x1,%eax
c0102dcd:	85 c0                	test   %eax,%eax
c0102dcf:	74 31                	je     c0102e02 <pgdir_walk+0x59>
c0102dd1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102dd4:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102ddb:	8b 45 08             	mov    0x8(%ebp),%eax
c0102dde:	01 d0                	add    %edx,%eax
c0102de0:	8b 00                	mov    (%eax),%eax
c0102de2:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102de7:	83 ec 04             	sub    $0x4,%esp
c0102dea:	50                   	push   %eax
c0102deb:	68 c8 00 00 00       	push   $0xc8
c0102df0:	68 96 36 10 c0       	push   $0xc0103696
c0102df5:	e8 7a fc ff ff       	call   c0102a74 <_kaddr>
c0102dfa:	83 c4 10             	add    $0x10,%esp
c0102dfd:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102e00:	eb 7c                	jmp    c0102e7e <pgdir_walk+0xd5>
c0102e02:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0102e06:	75 0a                	jne    c0102e12 <pgdir_walk+0x69>
c0102e08:	b8 00 00 00 00       	mov    $0x0,%eax
c0102e0d:	e9 89 00 00 00       	jmp    c0102e9b <pgdir_walk+0xf2>
c0102e12:	83 ec 0c             	sub    $0xc,%esp
c0102e15:	6a 01                	push   $0x1
c0102e17:	e8 e8 fe ff ff       	call   c0102d04 <page_alloc>
c0102e1c:	83 c4 10             	add    $0x10,%esp
c0102e1f:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102e22:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102e26:	75 07                	jne    c0102e2f <pgdir_walk+0x86>
c0102e28:	b8 00 00 00 00       	mov    $0x0,%eax
c0102e2d:	eb 6c                	jmp    c0102e9b <pgdir_walk+0xf2>
c0102e2f:	83 ec 0c             	sub    $0xc,%esp
c0102e32:	ff 75 ec             	pushl  -0x14(%ebp)
c0102e35:	e8 b2 fc ff ff       	call   c0102aec <page2kva>
c0102e3a:	83 c4 10             	add    $0x10,%esp
c0102e3d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102e40:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102e43:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102e47:	8d 50 01             	lea    0x1(%eax),%edx
c0102e4a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102e4d:	66 89 50 04          	mov    %dx,0x4(%eax)
c0102e51:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102e54:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102e5b:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e5e:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0102e61:	83 ec 04             	sub    $0x4,%esp
c0102e64:	ff 75 f4             	pushl  -0xc(%ebp)
c0102e67:	68 d3 00 00 00       	push   $0xd3
c0102e6c:	68 96 36 10 c0       	push   $0xc0103696
c0102e71:	e8 ce fb ff ff       	call   c0102a44 <_paddr>
c0102e76:	83 c4 10             	add    $0x10,%esp
c0102e79:	83 c8 07             	or     $0x7,%eax
c0102e7c:	89 03                	mov    %eax,(%ebx)
c0102e7e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102e81:	c1 e8 0c             	shr    $0xc,%eax
c0102e84:	25 ff 03 00 00       	and    $0x3ff,%eax
c0102e89:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0102e8c:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102e8f:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102e96:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102e99:	01 d0                	add    %edx,%eax
c0102e9b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102e9e:	c9                   	leave  
c0102e9f:	c3                   	ret    

c0102ea0 <boot_map_region>:
c0102ea0:	55                   	push   %ebp
c0102ea1:	89 e5                	mov    %esp,%ebp
c0102ea3:	83 ec 18             	sub    $0x18,%esp
c0102ea6:	8b 45 10             	mov    0x10(%ebp),%eax
c0102ea9:	c1 e8 0c             	shr    $0xc,%eax
c0102eac:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102eaf:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102eb6:	eb 41                	jmp    c0102ef9 <boot_map_region+0x59>
c0102eb8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102ebb:	83 ec 04             	sub    $0x4,%esp
c0102ebe:	6a 01                	push   $0x1
c0102ec0:	50                   	push   %eax
c0102ec1:	ff 75 08             	pushl  0x8(%ebp)
c0102ec4:	e8 e0 fe ff ff       	call   c0102da9 <pgdir_walk>
c0102ec9:	83 c4 10             	add    $0x10,%esp
c0102ecc:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102ecf:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102ed3:	75 02                	jne    c0102ed7 <boot_map_region+0x37>
c0102ed5:	eb 2a                	jmp    c0102f01 <boot_map_region+0x61>
c0102ed7:	8b 45 18             	mov    0x18(%ebp),%eax
c0102eda:	0b 45 14             	or     0x14(%ebp),%eax
c0102edd:	83 c8 01             	or     $0x1,%eax
c0102ee0:	89 c2                	mov    %eax,%edx
c0102ee2:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102ee5:	89 10                	mov    %edx,(%eax)
c0102ee7:	81 45 0c 00 10 00 00 	addl   $0x1000,0xc(%ebp)
c0102eee:	81 45 14 00 10 00 00 	addl   $0x1000,0x14(%ebp)
c0102ef5:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102ef9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102efc:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0102eff:	7c b7                	jl     c0102eb8 <boot_map_region+0x18>
c0102f01:	c9                   	leave  
c0102f02:	c3                   	ret    

c0102f03 <page_insert>:
c0102f03:	55                   	push   %ebp
c0102f04:	89 e5                	mov    %esp,%ebp
c0102f06:	83 ec 18             	sub    $0x18,%esp
c0102f09:	83 ec 04             	sub    $0x4,%esp
c0102f0c:	6a 01                	push   $0x1
c0102f0e:	ff 75 10             	pushl  0x10(%ebp)
c0102f11:	ff 75 08             	pushl  0x8(%ebp)
c0102f14:	e8 90 fe ff ff       	call   c0102da9 <pgdir_walk>
c0102f19:	83 c4 10             	add    $0x10,%esp
c0102f1c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102f1f:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102f23:	75 07                	jne    c0102f2c <page_insert+0x29>
c0102f25:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0102f2a:	eb 75                	jmp    c0102fa1 <page_insert+0x9e>
c0102f2c:	83 ec 0c             	sub    $0xc,%esp
c0102f2f:	ff 75 0c             	pushl  0xc(%ebp)
c0102f32:	e8 6d fb ff ff       	call   c0102aa4 <page2pa>
c0102f37:	83 c4 10             	add    $0x10,%esp
c0102f3a:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102f3d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102f40:	8b 00                	mov    (%eax),%eax
c0102f42:	83 e0 01             	and    $0x1,%eax
c0102f45:	85 c0                	test   %eax,%eax
c0102f47:	74 32                	je     c0102f7b <page_insert+0x78>
c0102f49:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102f4c:	8b 00                	mov    (%eax),%eax
c0102f4e:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102f53:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0102f56:	75 12                	jne    c0102f6a <page_insert+0x67>
c0102f58:	8b 45 14             	mov    0x14(%ebp),%eax
c0102f5b:	0b 45 f0             	or     -0x10(%ebp),%eax
c0102f5e:	83 c8 01             	or     $0x1,%eax
c0102f61:	89 c2                	mov    %eax,%edx
c0102f63:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102f66:	89 10                	mov    %edx,(%eax)
c0102f68:	eb 11                	jmp    c0102f7b <page_insert+0x78>
c0102f6a:	83 ec 08             	sub    $0x8,%esp
c0102f6d:	ff 75 10             	pushl  0x10(%ebp)
c0102f70:	ff 75 08             	pushl  0x8(%ebp)
c0102f73:	e8 7a 00 00 00       	call   c0102ff2 <page_remove>
c0102f78:	83 c4 10             	add    $0x10,%esp
c0102f7b:	8b 45 14             	mov    0x14(%ebp),%eax
c0102f7e:	0b 45 f0             	or     -0x10(%ebp),%eax
c0102f81:	83 c8 01             	or     $0x1,%eax
c0102f84:	89 c2                	mov    %eax,%edx
c0102f86:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102f89:	89 10                	mov    %edx,(%eax)
c0102f8b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102f8e:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102f92:	8d 50 01             	lea    0x1(%eax),%edx
c0102f95:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102f98:	66 89 50 04          	mov    %dx,0x4(%eax)
c0102f9c:	b8 00 00 00 00       	mov    $0x0,%eax
c0102fa1:	c9                   	leave  
c0102fa2:	c3                   	ret    

c0102fa3 <page_lookup>:
c0102fa3:	55                   	push   %ebp
c0102fa4:	89 e5                	mov    %esp,%ebp
c0102fa6:	83 ec 18             	sub    $0x18,%esp
c0102fa9:	83 ec 04             	sub    $0x4,%esp
c0102fac:	6a 00                	push   $0x0
c0102fae:	ff 75 0c             	pushl  0xc(%ebp)
c0102fb1:	ff 75 08             	pushl  0x8(%ebp)
c0102fb4:	e8 f0 fd ff ff       	call   c0102da9 <pgdir_walk>
c0102fb9:	83 c4 10             	add    $0x10,%esp
c0102fbc:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102fbf:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102fc3:	75 07                	jne    c0102fcc <page_lookup+0x29>
c0102fc5:	b8 00 00 00 00       	mov    $0x0,%eax
c0102fca:	eb 24                	jmp    c0102ff0 <page_lookup+0x4d>
c0102fcc:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0102fd0:	74 08                	je     c0102fda <page_lookup+0x37>
c0102fd2:	8b 45 10             	mov    0x10(%ebp),%eax
c0102fd5:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102fd8:	89 10                	mov    %edx,(%eax)
c0102fda:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102fdd:	8b 00                	mov    (%eax),%eax
c0102fdf:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102fe4:	83 ec 0c             	sub    $0xc,%esp
c0102fe7:	50                   	push   %eax
c0102fe8:	e8 cc fa ff ff       	call   c0102ab9 <pa2page>
c0102fed:	83 c4 10             	add    $0x10,%esp
c0102ff0:	c9                   	leave  
c0102ff1:	c3                   	ret    

c0102ff2 <page_remove>:
c0102ff2:	55                   	push   %ebp
c0102ff3:	89 e5                	mov    %esp,%ebp
c0102ff5:	83 ec 18             	sub    $0x18,%esp
c0102ff8:	8d 45 ec             	lea    -0x14(%ebp),%eax
c0102ffb:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102ffe:	83 ec 04             	sub    $0x4,%esp
c0103001:	ff 75 f4             	pushl  -0xc(%ebp)
c0103004:	ff 75 0c             	pushl  0xc(%ebp)
c0103007:	ff 75 08             	pushl  0x8(%ebp)
c010300a:	e8 94 ff ff ff       	call   c0102fa3 <page_lookup>
c010300f:	83 c4 10             	add    $0x10,%esp
c0103012:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0103015:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0103019:	74 2a                	je     c0103045 <page_remove+0x53>
c010301b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010301e:	8b 00                	mov    (%eax),%eax
c0103020:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0103026:	83 ec 0c             	sub    $0xc,%esp
c0103029:	ff 75 f0             	pushl  -0x10(%ebp)
c010302c:	e8 4b fd ff ff       	call   c0102d7c <page_decref>
c0103031:	83 c4 10             	add    $0x10,%esp
c0103034:	83 ec 08             	sub    $0x8,%esp
c0103037:	ff 75 0c             	pushl  0xc(%ebp)
c010303a:	ff 75 08             	pushl  0x8(%ebp)
c010303d:	e8 05 00 00 00       	call   c0103047 <tlb_invalidate>
c0103042:	83 c4 10             	add    $0x10,%esp
c0103045:	c9                   	leave  
c0103046:	c3                   	ret    

c0103047 <tlb_invalidate>:
c0103047:	55                   	push   %ebp
c0103048:	89 e5                	mov    %esp,%ebp
c010304a:	83 ec 10             	sub    $0x10,%esp
c010304d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103050:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0103053:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103056:	0f 01 38             	invlpg (%eax)
c0103059:	c9                   	leave  
c010305a:	c3                   	ret    

c010305b <free_pgdir>:
c010305b:	55                   	push   %ebp
c010305c:	89 e5                	mov    %esp,%ebp
c010305e:	83 ec 18             	sub    $0x18,%esp
c0103061:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0103068:	e9 09 01 00 00       	jmp    c0103176 <free_pgdir+0x11b>
c010306d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103070:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103077:	8b 45 08             	mov    0x8(%ebp),%eax
c010307a:	01 d0                	add    %edx,%eax
c010307c:	8b 00                	mov    (%eax),%eax
c010307e:	83 e0 01             	and    $0x1,%eax
c0103081:	85 c0                	test   %eax,%eax
c0103083:	0f 84 e9 00 00 00    	je     c0103172 <free_pgdir+0x117>
c0103089:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c010308e:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0103091:	c1 e2 02             	shl    $0x2,%edx
c0103094:	01 d0                	add    %edx,%eax
c0103096:	8b 00                	mov    (%eax),%eax
c0103098:	83 e0 01             	and    $0x1,%eax
c010309b:	85 c0                	test   %eax,%eax
c010309d:	74 05                	je     c01030a4 <free_pgdir+0x49>
c010309f:	e9 ce 00 00 00       	jmp    c0103172 <free_pgdir+0x117>
c01030a4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01030a7:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01030ae:	8b 45 08             	mov    0x8(%ebp),%eax
c01030b1:	01 d0                	add    %edx,%eax
c01030b3:	8b 00                	mov    (%eax),%eax
c01030b5:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01030ba:	83 ec 04             	sub    $0x4,%esp
c01030bd:	50                   	push   %eax
c01030be:	68 68 01 00 00       	push   $0x168
c01030c3:	68 96 36 10 c0       	push   $0xc0103696
c01030c8:	e8 a7 f9 ff ff       	call   c0102a74 <_kaddr>
c01030cd:	83 c4 10             	add    $0x10,%esp
c01030d0:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01030d3:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c01030da:	eb 4a                	jmp    c0103126 <free_pgdir+0xcb>
c01030dc:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01030df:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01030e6:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01030e9:	01 d0                	add    %edx,%eax
c01030eb:	8b 00                	mov    (%eax),%eax
c01030ed:	83 e0 01             	and    $0x1,%eax
c01030f0:	85 c0                	test   %eax,%eax
c01030f2:	74 2e                	je     c0103122 <free_pgdir+0xc7>
c01030f4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01030f7:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01030fe:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0103101:	01 d0                	add    %edx,%eax
c0103103:	8b 00                	mov    (%eax),%eax
c0103105:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c010310a:	83 ec 0c             	sub    $0xc,%esp
c010310d:	50                   	push   %eax
c010310e:	e8 a6 f9 ff ff       	call   c0102ab9 <pa2page>
c0103113:	83 c4 10             	add    $0x10,%esp
c0103116:	83 ec 0c             	sub    $0xc,%esp
c0103119:	50                   	push   %eax
c010311a:	e8 5d fc ff ff       	call   c0102d7c <page_decref>
c010311f:	83 c4 10             	add    $0x10,%esp
c0103122:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0103126:	81 7d f0 ff 03 00 00 	cmpl   $0x3ff,-0x10(%ebp)
c010312d:	7e ad                	jle    c01030dc <free_pgdir+0x81>
c010312f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103132:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103139:	8b 45 08             	mov    0x8(%ebp),%eax
c010313c:	01 d0                	add    %edx,%eax
c010313e:	8b 00                	mov    (%eax),%eax
c0103140:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0103145:	83 ec 0c             	sub    $0xc,%esp
c0103148:	50                   	push   %eax
c0103149:	e8 6b f9 ff ff       	call   c0102ab9 <pa2page>
c010314e:	83 c4 10             	add    $0x10,%esp
c0103151:	83 ec 0c             	sub    $0xc,%esp
c0103154:	50                   	push   %eax
c0103155:	e8 22 fc ff ff       	call   c0102d7c <page_decref>
c010315a:	83 c4 10             	add    $0x10,%esp
c010315d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103160:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103167:	8b 45 08             	mov    0x8(%ebp),%eax
c010316a:	01 d0                	add    %edx,%eax
c010316c:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0103172:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0103176:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
c010317d:	0f 8e ea fe ff ff    	jle    c010306d <free_pgdir+0x12>
c0103183:	c9                   	leave  
c0103184:	c3                   	ret    

c0103185 <copy_pgdir>:
c0103185:	55                   	push   %ebp
c0103186:	89 e5                	mov    %esp,%ebp
c0103188:	53                   	push   %ebx
c0103189:	83 ec 24             	sub    $0x24,%esp
c010318c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0103193:	e9 d8 01 00 00       	jmp    c0103370 <copy_pgdir+0x1eb>
c0103198:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010319b:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01031a2:	8b 45 0c             	mov    0xc(%ebp),%eax
c01031a5:	01 d0                	add    %edx,%eax
c01031a7:	8b 00                	mov    (%eax),%eax
c01031a9:	83 e0 01             	and    $0x1,%eax
c01031ac:	85 c0                	test   %eax,%eax
c01031ae:	0f 84 b8 01 00 00    	je     c010336c <copy_pgdir+0x1e7>
c01031b4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01031b7:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01031be:	8b 45 08             	mov    0x8(%ebp),%eax
c01031c1:	01 d0                	add    %edx,%eax
c01031c3:	8b 00                	mov    (%eax),%eax
c01031c5:	83 e0 01             	and    $0x1,%eax
c01031c8:	85 c0                	test   %eax,%eax
c01031ca:	74 05                	je     c01031d1 <copy_pgdir+0x4c>
c01031cc:	e9 9b 01 00 00       	jmp    c010336c <copy_pgdir+0x1e7>
c01031d1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01031d4:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01031db:	8b 45 0c             	mov    0xc(%ebp),%eax
c01031de:	01 d0                	add    %edx,%eax
c01031e0:	8b 00                	mov    (%eax),%eax
c01031e2:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01031e7:	83 ec 04             	sub    $0x4,%esp
c01031ea:	50                   	push   %eax
c01031eb:	68 7c 01 00 00       	push   $0x17c
c01031f0:	68 96 36 10 c0       	push   $0xc0103696
c01031f5:	e8 7a f8 ff ff       	call   c0102a74 <_kaddr>
c01031fa:	83 c4 10             	add    $0x10,%esp
c01031fd:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0103200:	83 ec 0c             	sub    $0xc,%esp
c0103203:	6a 01                	push   $0x1
c0103205:	e8 fa fa ff ff       	call   c0102d04 <page_alloc>
c010320a:	83 c4 10             	add    $0x10,%esp
c010320d:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0103210:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0103213:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0103217:	8d 50 01             	lea    0x1(%eax),%edx
c010321a:	8b 45 e8             	mov    -0x18(%ebp),%eax
c010321d:	66 89 50 04          	mov    %dx,0x4(%eax)
c0103221:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103224:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010322b:	8b 45 08             	mov    0x8(%ebp),%eax
c010322e:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0103231:	83 ec 0c             	sub    $0xc,%esp
c0103234:	ff 75 e8             	pushl  -0x18(%ebp)
c0103237:	e8 68 f8 ff ff       	call   c0102aa4 <page2pa>
c010323c:	83 c4 10             	add    $0x10,%esp
c010323f:	89 c1                	mov    %eax,%ecx
c0103241:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103244:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010324b:	8b 45 0c             	mov    0xc(%ebp),%eax
c010324e:	01 d0                	add    %edx,%eax
c0103250:	8b 00                	mov    (%eax),%eax
c0103252:	25 ff 0f 00 00       	and    $0xfff,%eax
c0103257:	09 c8                	or     %ecx,%eax
c0103259:	89 03                	mov    %eax,(%ebx)
c010325b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010325e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103265:	8b 45 08             	mov    0x8(%ebp),%eax
c0103268:	01 d0                	add    %edx,%eax
c010326a:	8b 00                	mov    (%eax),%eax
c010326c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0103271:	83 ec 04             	sub    $0x4,%esp
c0103274:	50                   	push   %eax
c0103275:	68 83 01 00 00       	push   $0x183
c010327a:	68 96 36 10 c0       	push   $0xc0103696
c010327f:	e8 f0 f7 ff ff       	call   c0102a74 <_kaddr>
c0103284:	83 c4 10             	add    $0x10,%esp
c0103287:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c010328a:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0103291:	e9 c9 00 00 00       	jmp    c010335f <copy_pgdir+0x1da>
c0103296:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0103299:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01032a0:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01032a3:	01 d0                	add    %edx,%eax
c01032a5:	8b 00                	mov    (%eax),%eax
c01032a7:	83 e0 01             	and    $0x1,%eax
c01032aa:	85 c0                	test   %eax,%eax
c01032ac:	0f 84 a9 00 00 00    	je     c010335b <copy_pgdir+0x1d6>
c01032b2:	83 ec 0c             	sub    $0xc,%esp
c01032b5:	6a 00                	push   $0x0
c01032b7:	e8 48 fa ff ff       	call   c0102d04 <page_alloc>
c01032bc:	83 c4 10             	add    $0x10,%esp
c01032bf:	89 45 e8             	mov    %eax,-0x18(%ebp)
c01032c2:	8b 45 e8             	mov    -0x18(%ebp),%eax
c01032c5:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c01032c9:	8d 50 01             	lea    0x1(%eax),%edx
c01032cc:	8b 45 e8             	mov    -0x18(%ebp),%eax
c01032cf:	66 89 50 04          	mov    %dx,0x4(%eax)
c01032d3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01032d6:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01032dd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01032e0:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c01032e3:	83 ec 0c             	sub    $0xc,%esp
c01032e6:	ff 75 e8             	pushl  -0x18(%ebp)
c01032e9:	e8 b6 f7 ff ff       	call   c0102aa4 <page2pa>
c01032ee:	83 c4 10             	add    $0x10,%esp
c01032f1:	89 c1                	mov    %eax,%ecx
c01032f3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01032f6:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01032fd:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0103300:	01 d0                	add    %edx,%eax
c0103302:	8b 00                	mov    (%eax),%eax
c0103304:	25 ff 0f 00 00       	and    $0xfff,%eax
c0103309:	09 c8                	or     %ecx,%eax
c010330b:	89 03                	mov    %eax,(%ebx)
c010330d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0103310:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103317:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010331a:	01 d0                	add    %edx,%eax
c010331c:	8b 00                	mov    (%eax),%eax
c010331e:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0103323:	83 ec 04             	sub    $0x4,%esp
c0103326:	50                   	push   %eax
c0103327:	68 89 01 00 00       	push   $0x189
c010332c:	68 96 36 10 c0       	push   $0xc0103696
c0103331:	e8 3e f7 ff ff       	call   c0102a74 <_kaddr>
c0103336:	83 c4 10             	add    $0x10,%esp
c0103339:	89 c3                	mov    %eax,%ebx
c010333b:	83 ec 0c             	sub    $0xc,%esp
c010333e:	ff 75 e8             	pushl  -0x18(%ebp)
c0103341:	e8 a6 f7 ff ff       	call   c0102aec <page2kva>
c0103346:	83 c4 10             	add    $0x10,%esp
c0103349:	83 ec 04             	sub    $0x4,%esp
c010334c:	68 00 10 00 00       	push   $0x1000
c0103351:	53                   	push   %ebx
c0103352:	50                   	push   %eax
c0103353:	e8 66 de ff ff       	call   c01011be <my_memcpy>
c0103358:	83 c4 10             	add    $0x10,%esp
c010335b:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c010335f:	81 7d f0 ff 03 00 00 	cmpl   $0x3ff,-0x10(%ebp)
c0103366:	0f 8e 2a ff ff ff    	jle    c0103296 <copy_pgdir+0x111>
c010336c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0103370:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
c0103377:	0f 8e 1b fe ff ff    	jle    c0103198 <copy_pgdir+0x13>
c010337d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0103380:	c9                   	leave  
c0103381:	c3                   	ret    
