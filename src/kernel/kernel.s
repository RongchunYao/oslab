
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
c0100155:	68 28 29 10 c0       	push   $0xc0102928
c010015a:	e8 fd 0f 00 00       	call   c010115c <printk>
c010015f:	83 c4 10             	add    $0x10,%esp
c0100162:	e8 d4 ff ff ff       	call   c010013b <disable_interrupt>
c0100167:	e8 70 00 00 00       	call   c01001dc <init_serial>
c010016c:	e8 24 01 00 00       	call   c0100295 <init_timer>
c0100171:	e8 9f 05 00 00       	call   c0100715 <init_intr>
c0100176:	e8 d7 07 00 00       	call   c0100952 <init_idt>
c010017b:	e8 30 04 00 00       	call   c01005b0 <init_seg>
c0100180:	e8 c7 14 00 00       	call   c010164c <init_PCB>
c0100185:	e8 63 22 00 00       	call   c01023ed <page_init>
c010018a:	83 ec 0c             	sub    $0xc,%esp
c010018d:	68 00 90 01 00       	push   $0x19000
c0100192:	e8 cd 1e 00 00       	call   c0102064 <load_PCB>
c0100197:	83 c4 10             	add    $0x10,%esp
c010019a:	83 ec 0c             	sub    $0xc,%esp
c010019d:	68 00 20 03 00       	push   $0x32000
c01001a2:	e8 bd 1e 00 00       	call   c0102064 <load_PCB>
c01001a7:	83 c4 10             	add    $0x10,%esp
c01001aa:	e8 c4 1b 00 00       	call   c0101d73 <reschedule>
c01001af:	eb fe                	jmp    c01001af <main+0x6e>

c01001b1 <inb>:
c01001b1:	55                   	push   %ebp
c01001b2:	89 e5                	mov    %esp,%ebp
c01001b4:	83 ec 10             	sub    $0x10,%esp
c01001b7:	8b 45 08             	mov    0x8(%ebp),%eax
c01001ba:	89 c2                	mov    %eax,%edx
c01001bc:	ec                   	in     (%dx),%al
c01001bd:	88 45 ff             	mov    %al,-0x1(%ebp)
c01001c0:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c01001c4:	c9                   	leave  
c01001c5:	c3                   	ret    

c01001c6 <outb>:
c01001c6:	55                   	push   %ebp
c01001c7:	89 e5                	mov    %esp,%ebp
c01001c9:	83 ec 04             	sub    $0x4,%esp
c01001cc:	8b 45 0c             	mov    0xc(%ebp),%eax
c01001cf:	88 45 fc             	mov    %al,-0x4(%ebp)
c01001d2:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c01001d6:	8b 55 08             	mov    0x8(%ebp),%edx
c01001d9:	ee                   	out    %al,(%dx)
c01001da:	c9                   	leave  
c01001db:	c3                   	ret    

c01001dc <init_serial>:
c01001dc:	55                   	push   %ebp
c01001dd:	89 e5                	mov    %esp,%ebp
c01001df:	6a 00                	push   $0x0
c01001e1:	68 f9 03 00 00       	push   $0x3f9
c01001e6:	e8 db ff ff ff       	call   c01001c6 <outb>
c01001eb:	83 c4 08             	add    $0x8,%esp
c01001ee:	68 80 00 00 00       	push   $0x80
c01001f3:	68 fb 03 00 00       	push   $0x3fb
c01001f8:	e8 c9 ff ff ff       	call   c01001c6 <outb>
c01001fd:	83 c4 08             	add    $0x8,%esp
c0100200:	6a 03                	push   $0x3
c0100202:	68 f8 03 00 00       	push   $0x3f8
c0100207:	e8 ba ff ff ff       	call   c01001c6 <outb>
c010020c:	83 c4 08             	add    $0x8,%esp
c010020f:	6a 00                	push   $0x0
c0100211:	68 f9 03 00 00       	push   $0x3f9
c0100216:	e8 ab ff ff ff       	call   c01001c6 <outb>
c010021b:	83 c4 08             	add    $0x8,%esp
c010021e:	6a 03                	push   $0x3
c0100220:	68 fb 03 00 00       	push   $0x3fb
c0100225:	e8 9c ff ff ff       	call   c01001c6 <outb>
c010022a:	83 c4 08             	add    $0x8,%esp
c010022d:	68 c7 00 00 00       	push   $0xc7
c0100232:	68 fa 03 00 00       	push   $0x3fa
c0100237:	e8 8a ff ff ff       	call   c01001c6 <outb>
c010023c:	83 c4 08             	add    $0x8,%esp
c010023f:	6a 0b                	push   $0xb
c0100241:	68 fc 03 00 00       	push   $0x3fc
c0100246:	e8 7b ff ff ff       	call   c01001c6 <outb>
c010024b:	83 c4 08             	add    $0x8,%esp
c010024e:	c9                   	leave  
c010024f:	c3                   	ret    

c0100250 <is_serial_idle>:
c0100250:	55                   	push   %ebp
c0100251:	89 e5                	mov    %esp,%ebp
c0100253:	68 fd 03 00 00       	push   $0x3fd
c0100258:	e8 54 ff ff ff       	call   c01001b1 <inb>
c010025d:	83 c4 04             	add    $0x4,%esp
c0100260:	0f b6 c0             	movzbl %al,%eax
c0100263:	83 e0 20             	and    $0x20,%eax
c0100266:	c9                   	leave  
c0100267:	c3                   	ret    

c0100268 <serial_out>:
c0100268:	55                   	push   %ebp
c0100269:	89 e5                	mov    %esp,%ebp
c010026b:	83 ec 04             	sub    $0x4,%esp
c010026e:	8b 45 08             	mov    0x8(%ebp),%eax
c0100271:	88 45 fc             	mov    %al,-0x4(%ebp)
c0100274:	90                   	nop
c0100275:	e8 d6 ff ff ff       	call   c0100250 <is_serial_idle>
c010027a:	85 c0                	test   %eax,%eax
c010027c:	74 f7                	je     c0100275 <serial_out+0xd>
c010027e:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c0100282:	0f b6 c0             	movzbl %al,%eax
c0100285:	50                   	push   %eax
c0100286:	68 f8 03 00 00       	push   $0x3f8
c010028b:	e8 36 ff ff ff       	call   c01001c6 <outb>
c0100290:	83 c4 08             	add    $0x8,%esp
c0100293:	c9                   	leave  
c0100294:	c3                   	ret    

c0100295 <init_timer>:
c0100295:	55                   	push   %ebp
c0100296:	89 e5                	mov    %esp,%ebp
c0100298:	83 ec 20             	sub    $0x20,%esp
c010029b:	c7 45 fc a9 04 00 00 	movl   $0x4a9,-0x4(%ebp)
c01002a2:	c7 45 f8 43 00 00 00 	movl   $0x43,-0x8(%ebp)
c01002a9:	c6 45 f7 34          	movb   $0x34,-0x9(%ebp)
c01002ad:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c01002b1:	8b 55 f8             	mov    -0x8(%ebp),%edx
c01002b4:	ee                   	out    %al,(%dx)
c01002b5:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01002b8:	99                   	cltd   
c01002b9:	c1 ea 18             	shr    $0x18,%edx
c01002bc:	01 d0                	add    %edx,%eax
c01002be:	0f b6 c0             	movzbl %al,%eax
c01002c1:	29 d0                	sub    %edx,%eax
c01002c3:	0f b6 c0             	movzbl %al,%eax
c01002c6:	c7 45 f0 40 00 00 00 	movl   $0x40,-0x10(%ebp)
c01002cd:	88 45 ef             	mov    %al,-0x11(%ebp)
c01002d0:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
c01002d4:	8b 55 f0             	mov    -0x10(%ebp),%edx
c01002d7:	ee                   	out    %al,(%dx)
c01002d8:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01002db:	8d 90 ff 00 00 00    	lea    0xff(%eax),%edx
c01002e1:	85 c0                	test   %eax,%eax
c01002e3:	0f 48 c2             	cmovs  %edx,%eax
c01002e6:	c1 f8 08             	sar    $0x8,%eax
c01002e9:	0f b6 c0             	movzbl %al,%eax
c01002ec:	c7 45 e8 40 00 00 00 	movl   $0x40,-0x18(%ebp)
c01002f3:	88 45 e7             	mov    %al,-0x19(%ebp)
c01002f6:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
c01002fa:	8b 55 e8             	mov    -0x18(%ebp),%edx
c01002fd:	ee                   	out    %al,(%dx)
c01002fe:	c9                   	leave  
c01002ff:	c3                   	ret    

c0100300 <write_gdtr>:
c0100300:	55                   	push   %ebp
c0100301:	89 e5                	mov    %esp,%ebp
c0100303:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100306:	83 e8 01             	sub    $0x1,%eax
c0100309:	66 a3 ac f0 10 c0    	mov    %ax,0xc010f0ac
c010030f:	8b 45 08             	mov    0x8(%ebp),%eax
c0100312:	66 a3 ae f0 10 c0    	mov    %ax,0xc010f0ae
c0100318:	8b 45 08             	mov    0x8(%ebp),%eax
c010031b:	c1 e8 10             	shr    $0x10,%eax
c010031e:	66 a3 b0 f0 10 c0    	mov    %ax,0xc010f0b0
c0100324:	b8 ac f0 10 c0       	mov    $0xc010f0ac,%eax
c0100329:	0f 01 10             	lgdtl  (%eax)
c010032c:	5d                   	pop    %ebp
c010032d:	c3                   	ret    

c010032e <set_tss>:
c010032e:	55                   	push   %ebp
c010032f:	89 e5                	mov    %esp,%ebp
c0100331:	8b 45 08             	mov    0x8(%ebp),%eax
c0100334:	a3 84 20 13 c0       	mov    %eax,0xc0132084
c0100339:	5d                   	pop    %ebp
c010033a:	c3                   	ret    

c010033b <Makegdt>:
c010033b:	55                   	push   %ebp
c010033c:	89 e5                	mov    %esp,%ebp
c010033e:	8b 45 08             	mov    0x8(%ebp),%eax
c0100341:	c1 e8 0c             	shr    $0xc,%eax
c0100344:	89 c2                	mov    %eax,%edx
c0100346:	8b 45 18             	mov    0x18(%ebp),%eax
c0100349:	66 89 14 c5 00 20 13 	mov    %dx,-0x3fece000(,%eax,8)
c0100350:	c0 
c0100351:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100354:	89 c2                	mov    %eax,%edx
c0100356:	8b 45 18             	mov    0x18(%ebp),%eax
c0100359:	66 89 14 c5 02 20 13 	mov    %dx,-0x3fecdffe(,%eax,8)
c0100360:	c0 
c0100361:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100364:	c1 e8 10             	shr    $0x10,%eax
c0100367:	89 c2                	mov    %eax,%edx
c0100369:	8b 45 18             	mov    0x18(%ebp),%eax
c010036c:	88 14 c5 04 20 13 c0 	mov    %dl,-0x3fecdffc(,%eax,8)
c0100373:	8b 45 10             	mov    0x10(%ebp),%eax
c0100376:	83 e0 0f             	and    $0xf,%eax
c0100379:	89 c2                	mov    %eax,%edx
c010037b:	8b 45 18             	mov    0x18(%ebp),%eax
c010037e:	89 d1                	mov    %edx,%ecx
c0100380:	83 e1 0f             	and    $0xf,%ecx
c0100383:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c010038a:	c0 
c010038b:	83 e2 f0             	and    $0xfffffff0,%edx
c010038e:	09 ca                	or     %ecx,%edx
c0100390:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c0100397:	8b 45 18             	mov    0x18(%ebp),%eax
c010039a:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c01003a1:	c0 
c01003a2:	83 ca 10             	or     $0x10,%edx
c01003a5:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c01003ac:	8b 45 14             	mov    0x14(%ebp),%eax
c01003af:	83 e0 03             	and    $0x3,%eax
c01003b2:	89 c2                	mov    %eax,%edx
c01003b4:	8b 45 18             	mov    0x18(%ebp),%eax
c01003b7:	83 e2 03             	and    $0x3,%edx
c01003ba:	89 d1                	mov    %edx,%ecx
c01003bc:	c1 e1 05             	shl    $0x5,%ecx
c01003bf:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c01003c6:	c0 
c01003c7:	83 e2 9f             	and    $0xffffff9f,%edx
c01003ca:	09 ca                	or     %ecx,%edx
c01003cc:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c01003d3:	8b 45 18             	mov    0x18(%ebp),%eax
c01003d6:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c01003dd:	c0 
c01003de:	83 ca 80             	or     $0xffffff80,%edx
c01003e1:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c01003e8:	8b 45 08             	mov    0x8(%ebp),%eax
c01003eb:	c1 e8 1c             	shr    $0x1c,%eax
c01003ee:	83 e0 0f             	and    $0xf,%eax
c01003f1:	89 c2                	mov    %eax,%edx
c01003f3:	8b 45 18             	mov    0x18(%ebp),%eax
c01003f6:	89 d1                	mov    %edx,%ecx
c01003f8:	83 e1 0f             	and    $0xf,%ecx
c01003fb:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c0100402:	c0 
c0100403:	83 e2 f0             	and    $0xfffffff0,%edx
c0100406:	09 ca                	or     %ecx,%edx
c0100408:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c010040f:	8b 45 18             	mov    0x18(%ebp),%eax
c0100412:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c0100419:	c0 
c010041a:	83 e2 ef             	and    $0xffffffef,%edx
c010041d:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c0100424:	8b 45 18             	mov    0x18(%ebp),%eax
c0100427:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c010042e:	c0 
c010042f:	83 e2 df             	and    $0xffffffdf,%edx
c0100432:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c0100439:	8b 45 18             	mov    0x18(%ebp),%eax
c010043c:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c0100443:	c0 
c0100444:	83 ca 40             	or     $0x40,%edx
c0100447:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c010044e:	8b 45 18             	mov    0x18(%ebp),%eax
c0100451:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c0100458:	c0 
c0100459:	83 ca 80             	or     $0xffffff80,%edx
c010045c:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c0100463:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100466:	c1 e8 18             	shr    $0x18,%eax
c0100469:	89 c2                	mov    %eax,%edx
c010046b:	8b 45 18             	mov    0x18(%ebp),%eax
c010046e:	88 14 c5 07 20 13 c0 	mov    %dl,-0x3fecdff9(,%eax,8)
c0100475:	5d                   	pop    %ebp
c0100476:	c3                   	ret    

c0100477 <Maketss>:
c0100477:	55                   	push   %ebp
c0100478:	89 e5                	mov    %esp,%ebp
c010047a:	8b 45 08             	mov    0x8(%ebp),%eax
c010047d:	89 c2                	mov    %eax,%edx
c010047f:	8b 45 18             	mov    0x18(%ebp),%eax
c0100482:	66 89 14 c5 00 20 13 	mov    %dx,-0x3fece000(,%eax,8)
c0100489:	c0 
c010048a:	8b 45 0c             	mov    0xc(%ebp),%eax
c010048d:	89 c2                	mov    %eax,%edx
c010048f:	8b 45 18             	mov    0x18(%ebp),%eax
c0100492:	66 89 14 c5 02 20 13 	mov    %dx,-0x3fecdffe(,%eax,8)
c0100499:	c0 
c010049a:	8b 45 0c             	mov    0xc(%ebp),%eax
c010049d:	c1 e8 10             	shr    $0x10,%eax
c01004a0:	89 c2                	mov    %eax,%edx
c01004a2:	8b 45 18             	mov    0x18(%ebp),%eax
c01004a5:	88 14 c5 04 20 13 c0 	mov    %dl,-0x3fecdffc(,%eax,8)
c01004ac:	8b 45 10             	mov    0x10(%ebp),%eax
c01004af:	83 e0 0f             	and    $0xf,%eax
c01004b2:	89 c2                	mov    %eax,%edx
c01004b4:	8b 45 18             	mov    0x18(%ebp),%eax
c01004b7:	89 d1                	mov    %edx,%ecx
c01004b9:	83 e1 0f             	and    $0xf,%ecx
c01004bc:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c01004c3:	c0 
c01004c4:	83 e2 f0             	and    $0xfffffff0,%edx
c01004c7:	09 ca                	or     %ecx,%edx
c01004c9:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c01004d0:	8b 45 18             	mov    0x18(%ebp),%eax
c01004d3:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c01004da:	c0 
c01004db:	83 e2 ef             	and    $0xffffffef,%edx
c01004de:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c01004e5:	8b 45 14             	mov    0x14(%ebp),%eax
c01004e8:	83 e0 03             	and    $0x3,%eax
c01004eb:	89 c2                	mov    %eax,%edx
c01004ed:	8b 45 18             	mov    0x18(%ebp),%eax
c01004f0:	83 e2 03             	and    $0x3,%edx
c01004f3:	89 d1                	mov    %edx,%ecx
c01004f5:	c1 e1 05             	shl    $0x5,%ecx
c01004f8:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c01004ff:	c0 
c0100500:	83 e2 9f             	and    $0xffffff9f,%edx
c0100503:	09 ca                	or     %ecx,%edx
c0100505:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c010050c:	8b 45 18             	mov    0x18(%ebp),%eax
c010050f:	0f b6 14 c5 05 20 13 	movzbl -0x3fecdffb(,%eax,8),%edx
c0100516:	c0 
c0100517:	83 ca 80             	or     $0xffffff80,%edx
c010051a:	88 14 c5 05 20 13 c0 	mov    %dl,-0x3fecdffb(,%eax,8)
c0100521:	8b 45 08             	mov    0x8(%ebp),%eax
c0100524:	c1 e8 10             	shr    $0x10,%eax
c0100527:	83 e0 0f             	and    $0xf,%eax
c010052a:	89 c2                	mov    %eax,%edx
c010052c:	8b 45 18             	mov    0x18(%ebp),%eax
c010052f:	89 d1                	mov    %edx,%ecx
c0100531:	83 e1 0f             	and    $0xf,%ecx
c0100534:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c010053b:	c0 
c010053c:	83 e2 f0             	and    $0xfffffff0,%edx
c010053f:	09 ca                	or     %ecx,%edx
c0100541:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c0100548:	8b 45 18             	mov    0x18(%ebp),%eax
c010054b:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c0100552:	c0 
c0100553:	83 e2 ef             	and    $0xffffffef,%edx
c0100556:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c010055d:	8b 45 18             	mov    0x18(%ebp),%eax
c0100560:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c0100567:	c0 
c0100568:	83 e2 df             	and    $0xffffffdf,%edx
c010056b:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c0100572:	8b 45 18             	mov    0x18(%ebp),%eax
c0100575:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c010057c:	c0 
c010057d:	83 ca 40             	or     $0x40,%edx
c0100580:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c0100587:	8b 45 18             	mov    0x18(%ebp),%eax
c010058a:	0f b6 14 c5 06 20 13 	movzbl -0x3fecdffa(,%eax,8),%edx
c0100591:	c0 
c0100592:	83 ca 80             	or     $0xffffff80,%edx
c0100595:	88 14 c5 06 20 13 c0 	mov    %dl,-0x3fecdffa(,%eax,8)
c010059c:	8b 45 0c             	mov    0xc(%ebp),%eax
c010059f:	c1 e8 18             	shr    $0x18,%eax
c01005a2:	89 c2                	mov    %eax,%edx
c01005a4:	8b 45 18             	mov    0x18(%ebp),%eax
c01005a7:	88 14 c5 07 20 13 c0 	mov    %dl,-0x3fecdff9(,%eax,8)
c01005ae:	5d                   	pop    %ebp
c01005af:	c3                   	ret    

c01005b0 <init_seg>:
c01005b0:	55                   	push   %ebp
c01005b1:	89 e5                	mov    %esp,%ebp
c01005b3:	83 ec 10             	sub    $0x10,%esp
c01005b6:	c7 05 a8 f0 10 c0 00 	movl   $0x0,0xc010f0a8
c01005bd:	00 00 00 
c01005c0:	6a 00                	push   $0x0
c01005c2:	6a 00                	push   $0x0
c01005c4:	6a 00                	push   $0x0
c01005c6:	6a 00                	push   $0x0
c01005c8:	6a 00                	push   $0x0
c01005ca:	e8 6c fd ff ff       	call   c010033b <Makegdt>
c01005cf:	83 c4 14             	add    $0x14,%esp
c01005d2:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c01005d7:	83 c0 01             	add    $0x1,%eax
c01005da:	a3 a8 f0 10 c0       	mov    %eax,0xc010f0a8
c01005df:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c01005e4:	50                   	push   %eax
c01005e5:	6a 00                	push   $0x0
c01005e7:	6a 0a                	push   $0xa
c01005e9:	6a 00                	push   $0x0
c01005eb:	6a ff                	push   $0xffffffff
c01005ed:	e8 49 fd ff ff       	call   c010033b <Makegdt>
c01005f2:	83 c4 14             	add    $0x14,%esp
c01005f5:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c01005fa:	83 c0 01             	add    $0x1,%eax
c01005fd:	a3 a8 f0 10 c0       	mov    %eax,0xc010f0a8
c0100602:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c0100607:	50                   	push   %eax
c0100608:	6a 00                	push   $0x0
c010060a:	6a 02                	push   $0x2
c010060c:	6a 00                	push   $0x0
c010060e:	6a ff                	push   $0xffffffff
c0100610:	e8 26 fd ff ff       	call   c010033b <Makegdt>
c0100615:	83 c4 14             	add    $0x14,%esp
c0100618:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c010061d:	83 c0 01             	add    $0x1,%eax
c0100620:	a3 a8 f0 10 c0       	mov    %eax,0xc010f0a8
c0100625:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c010062a:	50                   	push   %eax
c010062b:	6a 03                	push   $0x3
c010062d:	6a 0a                	push   $0xa
c010062f:	6a 00                	push   $0x0
c0100631:	6a ff                	push   $0xffffffff
c0100633:	e8 03 fd ff ff       	call   c010033b <Makegdt>
c0100638:	83 c4 14             	add    $0x14,%esp
c010063b:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c0100640:	83 c0 01             	add    $0x1,%eax
c0100643:	a3 a8 f0 10 c0       	mov    %eax,0xc010f0a8
c0100648:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c010064d:	50                   	push   %eax
c010064e:	6a 03                	push   $0x3
c0100650:	6a 02                	push   $0x2
c0100652:	6a 00                	push   $0x0
c0100654:	6a ff                	push   $0xffffffff
c0100656:	e8 e0 fc ff ff       	call   c010033b <Makegdt>
c010065b:	83 c4 14             	add    $0x14,%esp
c010065e:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c0100663:	83 c0 01             	add    $0x1,%eax
c0100666:	a3 a8 f0 10 c0       	mov    %eax,0xc010f0a8
c010066b:	c7 05 84 20 13 c0 00 	movl   $0x2f0000,0xc0132084
c0100672:	00 2f 00 
c0100675:	66 c7 05 88 20 13 c0 	movw   $0x10,0xc0132088
c010067c:	10 00 
c010067e:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c0100683:	ba 80 20 13 c0       	mov    $0xc0132080,%edx
c0100688:	50                   	push   %eax
c0100689:	6a 00                	push   $0x0
c010068b:	6a 09                	push   $0x9
c010068d:	52                   	push   %edx
c010068e:	6a ff                	push   $0xffffffff
c0100690:	e8 e2 fd ff ff       	call   c0100477 <Maketss>
c0100695:	83 c4 14             	add    $0x14,%esp
c0100698:	a1 a8 f0 10 c0       	mov    0xc010f0a8,%eax
c010069d:	83 c0 01             	add    $0x1,%eax
c01006a0:	a3 a8 f0 10 c0       	mov    %eax,0xc010f0a8
c01006a5:	66 c7 05 dc 20 13 c0 	movw   $0x2b,0xc01320dc
c01006ac:	2b 00 
c01006ae:	66 b8 10 00          	mov    $0x10,%ax
c01006b2:	8e d8                	mov    %eax,%ds
c01006b4:	8e c0                	mov    %eax,%es
c01006b6:	8e d0                	mov    %eax,%ss
c01006b8:	68 80 00 00 00       	push   $0x80
c01006bd:	68 00 20 13 c0       	push   $0xc0132000
c01006c2:	e8 39 fc ff ff       	call   c0100300 <write_gdtr>
c01006c7:	83 c4 08             	add    $0x8,%esp
c01006ca:	0f b7 05 dc 20 13 c0 	movzwl 0xc01320dc,%eax
c01006d1:	0f b7 c0             	movzwl %ax,%eax
c01006d4:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
c01006d8:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
c01006dc:	0f 00 d8             	ltr    %ax
c01006df:	c9                   	leave  
c01006e0:	c3                   	ret    

c01006e1 <entry>:
c01006e1:	66 c7 05 72 04 00 00 	movw   $0x1234,0x472
c01006e8:	34 12 
c01006ea:	b8 00 e0 10 00       	mov    $0x10e000,%eax
c01006ef:	0f 22 d8             	mov    %eax,%cr3
c01006f2:	0f 20 c0             	mov    %cr0,%eax
c01006f5:	0d 01 00 00 80       	or     $0x80000001,%eax
c01006fa:	0f 22 c0             	mov    %eax,%cr0
c01006fd:	b8 04 07 10 c0       	mov    $0xc0100704,%eax
c0100702:	ff e0                	jmp    *%eax

c0100704 <relocated>:
c0100704:	bd 00 00 00 00       	mov    $0x0,%ebp
c0100709:	bc 00 d0 10 c0       	mov    $0xc010d000,%esp
c010070e:	e8 2e fa ff ff       	call   c0100141 <main>

c0100713 <spin>:
c0100713:	eb fe                	jmp    c0100713 <spin>

c0100715 <init_intr>:
c0100715:	55                   	push   %ebp
c0100716:	89 e5                	mov    %esp,%ebp
c0100718:	83 ec 70             	sub    $0x70,%esp
c010071b:	c7 45 fc 21 00 00 00 	movl   $0x21,-0x4(%ebp)
c0100722:	c6 45 fb ff          	movb   $0xff,-0x5(%ebp)
c0100726:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
c010072a:	8b 55 fc             	mov    -0x4(%ebp),%edx
c010072d:	ee                   	out    %al,(%dx)
c010072e:	c7 45 f4 a1 00 00 00 	movl   $0xa1,-0xc(%ebp)
c0100735:	c6 45 f3 ff          	movb   $0xff,-0xd(%ebp)
c0100739:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
c010073d:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100740:	ee                   	out    %al,(%dx)
c0100741:	c7 45 ec 20 00 00 00 	movl   $0x20,-0x14(%ebp)
c0100748:	c6 45 eb 11          	movb   $0x11,-0x15(%ebp)
c010074c:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
c0100750:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0100753:	ee                   	out    %al,(%dx)
c0100754:	c7 45 e4 21 00 00 00 	movl   $0x21,-0x1c(%ebp)
c010075b:	c6 45 e3 20          	movb   $0x20,-0x1d(%ebp)
c010075f:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
c0100763:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0100766:	ee                   	out    %al,(%dx)
c0100767:	c7 45 dc 21 00 00 00 	movl   $0x21,-0x24(%ebp)
c010076e:	c6 45 db 04          	movb   $0x4,-0x25(%ebp)
c0100772:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
c0100776:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0100779:	ee                   	out    %al,(%dx)
c010077a:	c7 45 d4 21 00 00 00 	movl   $0x21,-0x2c(%ebp)
c0100781:	c6 45 d3 03          	movb   $0x3,-0x2d(%ebp)
c0100785:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
c0100789:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c010078c:	ee                   	out    %al,(%dx)
c010078d:	c7 45 cc a0 00 00 00 	movl   $0xa0,-0x34(%ebp)
c0100794:	c6 45 cb 11          	movb   $0x11,-0x35(%ebp)
c0100798:	0f b6 45 cb          	movzbl -0x35(%ebp),%eax
c010079c:	8b 55 cc             	mov    -0x34(%ebp),%edx
c010079f:	ee                   	out    %al,(%dx)
c01007a0:	c7 45 c4 a1 00 00 00 	movl   $0xa1,-0x3c(%ebp)
c01007a7:	c6 45 c3 28          	movb   $0x28,-0x3d(%ebp)
c01007ab:	0f b6 45 c3          	movzbl -0x3d(%ebp),%eax
c01007af:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c01007b2:	ee                   	out    %al,(%dx)
c01007b3:	c7 45 bc a1 00 00 00 	movl   $0xa1,-0x44(%ebp)
c01007ba:	c6 45 bb 02          	movb   $0x2,-0x45(%ebp)
c01007be:	0f b6 45 bb          	movzbl -0x45(%ebp),%eax
c01007c2:	8b 55 bc             	mov    -0x44(%ebp),%edx
c01007c5:	ee                   	out    %al,(%dx)
c01007c6:	c7 45 b4 a1 00 00 00 	movl   $0xa1,-0x4c(%ebp)
c01007cd:	c6 45 b3 03          	movb   $0x3,-0x4d(%ebp)
c01007d1:	0f b6 45 b3          	movzbl -0x4d(%ebp),%eax
c01007d5:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c01007d8:	ee                   	out    %al,(%dx)
c01007d9:	c7 45 ac 20 00 00 00 	movl   $0x20,-0x54(%ebp)
c01007e0:	c6 45 ab 68          	movb   $0x68,-0x55(%ebp)
c01007e4:	0f b6 45 ab          	movzbl -0x55(%ebp),%eax
c01007e8:	8b 55 ac             	mov    -0x54(%ebp),%edx
c01007eb:	ee                   	out    %al,(%dx)
c01007ec:	c7 45 a4 20 00 00 00 	movl   $0x20,-0x5c(%ebp)
c01007f3:	c6 45 a3 0a          	movb   $0xa,-0x5d(%ebp)
c01007f7:	0f b6 45 a3          	movzbl -0x5d(%ebp),%eax
c01007fb:	8b 55 a4             	mov    -0x5c(%ebp),%edx
c01007fe:	ee                   	out    %al,(%dx)
c01007ff:	c7 45 9c a0 00 00 00 	movl   $0xa0,-0x64(%ebp)
c0100806:	c6 45 9b 68          	movb   $0x68,-0x65(%ebp)
c010080a:	0f b6 45 9b          	movzbl -0x65(%ebp),%eax
c010080e:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0100811:	ee                   	out    %al,(%dx)
c0100812:	c7 45 94 a0 00 00 00 	movl   $0xa0,-0x6c(%ebp)
c0100819:	c6 45 93 0a          	movb   $0xa,-0x6d(%ebp)
c010081d:	0f b6 45 93          	movzbl -0x6d(%ebp),%eax
c0100821:	8b 55 94             	mov    -0x6c(%ebp),%edx
c0100824:	ee                   	out    %al,(%dx)
c0100825:	c9                   	leave  
c0100826:	c3                   	ret    

c0100827 <save_idt>:
c0100827:	55                   	push   %ebp
c0100828:	89 e5                	mov    %esp,%ebp
c010082a:	8b 45 0c             	mov    0xc(%ebp),%eax
c010082d:	83 e8 01             	sub    $0x1,%eax
c0100830:	66 a3 b2 f0 10 c0    	mov    %ax,0xc010f0b2
c0100836:	8b 45 08             	mov    0x8(%ebp),%eax
c0100839:	66 a3 b4 f0 10 c0    	mov    %ax,0xc010f0b4
c010083f:	8b 45 08             	mov    0x8(%ebp),%eax
c0100842:	c1 e8 10             	shr    $0x10,%eax
c0100845:	66 a3 b6 f0 10 c0    	mov    %ax,0xc010f0b6
c010084b:	b8 b2 f0 10 c0       	mov    $0xc010f0b2,%eax
c0100850:	0f 01 18             	lidtl  (%eax)
c0100853:	5d                   	pop    %ebp
c0100854:	c3                   	ret    

c0100855 <set_intr>:
c0100855:	55                   	push   %ebp
c0100856:	89 e5                	mov    %esp,%ebp
c0100858:	8b 45 10             	mov    0x10(%ebp),%eax
c010085b:	89 c2                	mov    %eax,%edx
c010085d:	8b 45 08             	mov    0x8(%ebp),%eax
c0100860:	66 89 10             	mov    %dx,(%eax)
c0100863:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100866:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c010086d:	8b 45 08             	mov    0x8(%ebp),%eax
c0100870:	66 89 50 02          	mov    %dx,0x2(%eax)
c0100874:	8b 45 08             	mov    0x8(%ebp),%eax
c0100877:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c010087b:	8b 45 08             	mov    0x8(%ebp),%eax
c010087e:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c0100882:	83 e2 f0             	and    $0xfffffff0,%edx
c0100885:	83 ca 0e             	or     $0xe,%edx
c0100888:	88 50 05             	mov    %dl,0x5(%eax)
c010088b:	8b 45 08             	mov    0x8(%ebp),%eax
c010088e:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c0100892:	83 e2 ef             	and    $0xffffffef,%edx
c0100895:	88 50 05             	mov    %dl,0x5(%eax)
c0100898:	8b 45 14             	mov    0x14(%ebp),%eax
c010089b:	83 e0 03             	and    $0x3,%eax
c010089e:	89 c2                	mov    %eax,%edx
c01008a0:	8b 45 08             	mov    0x8(%ebp),%eax
c01008a3:	83 e2 03             	and    $0x3,%edx
c01008a6:	89 d1                	mov    %edx,%ecx
c01008a8:	c1 e1 05             	shl    $0x5,%ecx
c01008ab:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c01008af:	83 e2 9f             	and    $0xffffff9f,%edx
c01008b2:	09 ca                	or     %ecx,%edx
c01008b4:	88 50 05             	mov    %dl,0x5(%eax)
c01008b7:	8b 45 08             	mov    0x8(%ebp),%eax
c01008ba:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c01008be:	83 ca 80             	or     $0xffffff80,%edx
c01008c1:	88 50 05             	mov    %dl,0x5(%eax)
c01008c4:	8b 45 10             	mov    0x10(%ebp),%eax
c01008c7:	c1 e8 10             	shr    $0x10,%eax
c01008ca:	89 c2                	mov    %eax,%edx
c01008cc:	8b 45 08             	mov    0x8(%ebp),%eax
c01008cf:	66 89 50 06          	mov    %dx,0x6(%eax)
c01008d3:	5d                   	pop    %ebp
c01008d4:	c3                   	ret    

c01008d5 <set_trap>:
c01008d5:	55                   	push   %ebp
c01008d6:	89 e5                	mov    %esp,%ebp
c01008d8:	8b 45 10             	mov    0x10(%ebp),%eax
c01008db:	89 c2                	mov    %eax,%edx
c01008dd:	8b 45 08             	mov    0x8(%ebp),%eax
c01008e0:	66 89 10             	mov    %dx,(%eax)
c01008e3:	8b 45 0c             	mov    0xc(%ebp),%eax
c01008e6:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c01008ed:	8b 45 08             	mov    0x8(%ebp),%eax
c01008f0:	66 89 50 02          	mov    %dx,0x2(%eax)
c01008f4:	8b 45 08             	mov    0x8(%ebp),%eax
c01008f7:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c01008fb:	8b 45 08             	mov    0x8(%ebp),%eax
c01008fe:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c0100902:	83 ca 0f             	or     $0xf,%edx
c0100905:	88 50 05             	mov    %dl,0x5(%eax)
c0100908:	8b 45 08             	mov    0x8(%ebp),%eax
c010090b:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c010090f:	83 e2 ef             	and    $0xffffffef,%edx
c0100912:	88 50 05             	mov    %dl,0x5(%eax)
c0100915:	8b 45 14             	mov    0x14(%ebp),%eax
c0100918:	83 e0 03             	and    $0x3,%eax
c010091b:	89 c2                	mov    %eax,%edx
c010091d:	8b 45 08             	mov    0x8(%ebp),%eax
c0100920:	83 e2 03             	and    $0x3,%edx
c0100923:	89 d1                	mov    %edx,%ecx
c0100925:	c1 e1 05             	shl    $0x5,%ecx
c0100928:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c010092c:	83 e2 9f             	and    $0xffffff9f,%edx
c010092f:	09 ca                	or     %ecx,%edx
c0100931:	88 50 05             	mov    %dl,0x5(%eax)
c0100934:	8b 45 08             	mov    0x8(%ebp),%eax
c0100937:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c010093b:	83 ca 80             	or     $0xffffff80,%edx
c010093e:	88 50 05             	mov    %dl,0x5(%eax)
c0100941:	8b 45 10             	mov    0x10(%ebp),%eax
c0100944:	c1 e8 10             	shr    $0x10,%eax
c0100947:	89 c2                	mov    %eax,%edx
c0100949:	8b 45 08             	mov    0x8(%ebp),%eax
c010094c:	66 89 50 06          	mov    %dx,0x6(%eax)
c0100950:	5d                   	pop    %ebp
c0100951:	c3                   	ret    

c0100952 <init_idt>:
c0100952:	55                   	push   %ebp
c0100953:	89 e5                	mov    %esp,%ebp
c0100955:	83 ec 10             	sub    $0x10,%esp
c0100958:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c010095f:	eb 22                	jmp    c0100983 <init_idt+0x31>
c0100961:	ba ef 0b 10 c0       	mov    $0xc0100bef,%edx
c0100966:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100969:	c1 e0 03             	shl    $0x3,%eax
c010096c:	05 00 21 13 c0       	add    $0xc0132100,%eax
c0100971:	6a 00                	push   $0x0
c0100973:	52                   	push   %edx
c0100974:	6a 01                	push   $0x1
c0100976:	50                   	push   %eax
c0100977:	e8 59 ff ff ff       	call   c01008d5 <set_trap>
c010097c:	83 c4 10             	add    $0x10,%esp
c010097f:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0100983:	81 7d fc ff 00 00 00 	cmpl   $0xff,-0x4(%ebp)
c010098a:	7e d5                	jle    c0100961 <init_idt+0xf>
c010098c:	b8 55 0b 10 c0       	mov    $0xc0100b55,%eax
c0100991:	6a 00                	push   $0x0
c0100993:	50                   	push   %eax
c0100994:	6a 01                	push   $0x1
c0100996:	68 00 21 13 c0       	push   $0xc0132100
c010099b:	e8 35 ff ff ff       	call   c01008d5 <set_trap>
c01009a0:	83 c4 10             	add    $0x10,%esp
c01009a3:	b8 5f 0b 10 c0       	mov    $0xc0100b5f,%eax
c01009a8:	6a 00                	push   $0x0
c01009aa:	50                   	push   %eax
c01009ab:	6a 01                	push   $0x1
c01009ad:	68 08 21 13 c0       	push   $0xc0132108
c01009b2:	e8 1e ff ff ff       	call   c01008d5 <set_trap>
c01009b7:	83 c4 10             	add    $0x10,%esp
c01009ba:	b8 69 0b 10 c0       	mov    $0xc0100b69,%eax
c01009bf:	6a 00                	push   $0x0
c01009c1:	50                   	push   %eax
c01009c2:	6a 01                	push   $0x1
c01009c4:	68 10 21 13 c0       	push   $0xc0132110
c01009c9:	e8 07 ff ff ff       	call   c01008d5 <set_trap>
c01009ce:	83 c4 10             	add    $0x10,%esp
c01009d1:	b8 73 0b 10 c0       	mov    $0xc0100b73,%eax
c01009d6:	6a 00                	push   $0x0
c01009d8:	50                   	push   %eax
c01009d9:	6a 01                	push   $0x1
c01009db:	68 18 21 13 c0       	push   $0xc0132118
c01009e0:	e8 f0 fe ff ff       	call   c01008d5 <set_trap>
c01009e5:	83 c4 10             	add    $0x10,%esp
c01009e8:	b8 7a 0b 10 c0       	mov    $0xc0100b7a,%eax
c01009ed:	6a 00                	push   $0x0
c01009ef:	50                   	push   %eax
c01009f0:	6a 01                	push   $0x1
c01009f2:	68 20 21 13 c0       	push   $0xc0132120
c01009f7:	e8 d9 fe ff ff       	call   c01008d5 <set_trap>
c01009fc:	83 c4 10             	add    $0x10,%esp
c01009ff:	b8 81 0b 10 c0       	mov    $0xc0100b81,%eax
c0100a04:	6a 00                	push   $0x0
c0100a06:	50                   	push   %eax
c0100a07:	6a 01                	push   $0x1
c0100a09:	68 28 21 13 c0       	push   $0xc0132128
c0100a0e:	e8 c2 fe ff ff       	call   c01008d5 <set_trap>
c0100a13:	83 c4 10             	add    $0x10,%esp
c0100a16:	b8 88 0b 10 c0       	mov    $0xc0100b88,%eax
c0100a1b:	6a 00                	push   $0x0
c0100a1d:	50                   	push   %eax
c0100a1e:	6a 01                	push   $0x1
c0100a20:	68 30 21 13 c0       	push   $0xc0132130
c0100a25:	e8 ab fe ff ff       	call   c01008d5 <set_trap>
c0100a2a:	83 c4 10             	add    $0x10,%esp
c0100a2d:	b8 8f 0b 10 c0       	mov    $0xc0100b8f,%eax
c0100a32:	6a 00                	push   $0x0
c0100a34:	50                   	push   %eax
c0100a35:	6a 01                	push   $0x1
c0100a37:	68 38 21 13 c0       	push   $0xc0132138
c0100a3c:	e8 94 fe ff ff       	call   c01008d5 <set_trap>
c0100a41:	83 c4 10             	add    $0x10,%esp
c0100a44:	b8 96 0b 10 c0       	mov    $0xc0100b96,%eax
c0100a49:	6a 00                	push   $0x0
c0100a4b:	50                   	push   %eax
c0100a4c:	6a 01                	push   $0x1
c0100a4e:	68 40 21 13 c0       	push   $0xc0132140
c0100a53:	e8 7d fe ff ff       	call   c01008d5 <set_trap>
c0100a58:	83 c4 10             	add    $0x10,%esp
c0100a5b:	b8 9d 0b 10 c0       	mov    $0xc0100b9d,%eax
c0100a60:	6a 00                	push   $0x0
c0100a62:	50                   	push   %eax
c0100a63:	6a 01                	push   $0x1
c0100a65:	68 48 21 13 c0       	push   $0xc0132148
c0100a6a:	e8 66 fe ff ff       	call   c01008d5 <set_trap>
c0100a6f:	83 c4 10             	add    $0x10,%esp
c0100a72:	b8 a4 0b 10 c0       	mov    $0xc0100ba4,%eax
c0100a77:	6a 00                	push   $0x0
c0100a79:	50                   	push   %eax
c0100a7a:	6a 01                	push   $0x1
c0100a7c:	68 50 21 13 c0       	push   $0xc0132150
c0100a81:	e8 4f fe ff ff       	call   c01008d5 <set_trap>
c0100a86:	83 c4 10             	add    $0x10,%esp
c0100a89:	b8 ab 0b 10 c0       	mov    $0xc0100bab,%eax
c0100a8e:	6a 00                	push   $0x0
c0100a90:	50                   	push   %eax
c0100a91:	6a 01                	push   $0x1
c0100a93:	68 58 21 13 c0       	push   $0xc0132158
c0100a98:	e8 38 fe ff ff       	call   c01008d5 <set_trap>
c0100a9d:	83 c4 10             	add    $0x10,%esp
c0100aa0:	b8 b2 0b 10 c0       	mov    $0xc0100bb2,%eax
c0100aa5:	6a 00                	push   $0x0
c0100aa7:	50                   	push   %eax
c0100aa8:	6a 01                	push   $0x1
c0100aaa:	68 60 21 13 c0       	push   $0xc0132160
c0100aaf:	e8 21 fe ff ff       	call   c01008d5 <set_trap>
c0100ab4:	83 c4 10             	add    $0x10,%esp
c0100ab7:	b8 b9 0b 10 c0       	mov    $0xc0100bb9,%eax
c0100abc:	6a 00                	push   $0x0
c0100abe:	50                   	push   %eax
c0100abf:	6a 01                	push   $0x1
c0100ac1:	68 68 21 13 c0       	push   $0xc0132168
c0100ac6:	e8 0a fe ff ff       	call   c01008d5 <set_trap>
c0100acb:	83 c4 10             	add    $0x10,%esp
c0100ace:	b8 c0 0b 10 c0       	mov    $0xc0100bc0,%eax
c0100ad3:	6a 00                	push   $0x0
c0100ad5:	50                   	push   %eax
c0100ad6:	6a 01                	push   $0x1
c0100ad8:	68 70 21 13 c0       	push   $0xc0132170
c0100add:	e8 f3 fd ff ff       	call   c01008d5 <set_trap>
c0100ae2:	83 c4 10             	add    $0x10,%esp
c0100ae5:	b8 c7 0b 10 c0       	mov    $0xc0100bc7,%eax
c0100aea:	6a 00                	push   $0x0
c0100aec:	50                   	push   %eax
c0100aed:	6a 01                	push   $0x1
c0100aef:	68 00 22 13 c0       	push   $0xc0132200
c0100af4:	e8 5c fd ff ff       	call   c0100855 <set_intr>
c0100af9:	83 c4 10             	add    $0x10,%esp
c0100afc:	b8 d1 0b 10 c0       	mov    $0xc0100bd1,%eax
c0100b01:	6a 00                	push   $0x0
c0100b03:	50                   	push   %eax
c0100b04:	6a 01                	push   $0x1
c0100b06:	68 08 22 13 c0       	push   $0xc0132208
c0100b0b:	e8 45 fd ff ff       	call   c0100855 <set_intr>
c0100b10:	83 c4 10             	add    $0x10,%esp
c0100b13:	b8 db 0b 10 c0       	mov    $0xc0100bdb,%eax
c0100b18:	6a 00                	push   $0x0
c0100b1a:	50                   	push   %eax
c0100b1b:	6a 01                	push   $0x1
c0100b1d:	68 70 22 13 c0       	push   $0xc0132270
c0100b22:	e8 2e fd ff ff       	call   c0100855 <set_intr>
c0100b27:	83 c4 10             	add    $0x10,%esp
c0100b2a:	b8 e5 0b 10 c0       	mov    $0xc0100be5,%eax
c0100b2f:	6a 03                	push   $0x3
c0100b31:	50                   	push   %eax
c0100b32:	6a 01                	push   $0x1
c0100b34:	68 00 25 13 c0       	push   $0xc0132500
c0100b39:	e8 97 fd ff ff       	call   c01008d5 <set_trap>
c0100b3e:	83 c4 10             	add    $0x10,%esp
c0100b41:	68 00 08 00 00       	push   $0x800
c0100b46:	68 00 21 13 c0       	push   $0xc0132100
c0100b4b:	e8 d7 fc ff ff       	call   c0100827 <save_idt>
c0100b50:	83 c4 08             	add    $0x8,%esp
c0100b53:	c9                   	leave  
c0100b54:	c3                   	ret    

c0100b55 <vec0>:
c0100b55:	fa                   	cli    
c0100b56:	6a 00                	push   $0x0
c0100b58:	6a 00                	push   $0x0
c0100b5a:	e9 97 00 00 00       	jmp    c0100bf6 <asm_do_irq>

c0100b5f <vec1>:
c0100b5f:	fa                   	cli    
c0100b60:	6a 00                	push   $0x0
c0100b62:	6a 01                	push   $0x1
c0100b64:	e9 8d 00 00 00       	jmp    c0100bf6 <asm_do_irq>

c0100b69 <vec2>:
c0100b69:	fa                   	cli    
c0100b6a:	6a 00                	push   $0x0
c0100b6c:	6a 02                	push   $0x2
c0100b6e:	e9 83 00 00 00       	jmp    c0100bf6 <asm_do_irq>

c0100b73 <vec3>:
c0100b73:	fa                   	cli    
c0100b74:	6a 00                	push   $0x0
c0100b76:	6a 03                	push   $0x3
c0100b78:	eb 7c                	jmp    c0100bf6 <asm_do_irq>

c0100b7a <vec4>:
c0100b7a:	fa                   	cli    
c0100b7b:	6a 00                	push   $0x0
c0100b7d:	6a 04                	push   $0x4
c0100b7f:	eb 75                	jmp    c0100bf6 <asm_do_irq>

c0100b81 <vec5>:
c0100b81:	fa                   	cli    
c0100b82:	6a 00                	push   $0x0
c0100b84:	6a 05                	push   $0x5
c0100b86:	eb 6e                	jmp    c0100bf6 <asm_do_irq>

c0100b88 <vec6>:
c0100b88:	fa                   	cli    
c0100b89:	6a 00                	push   $0x0
c0100b8b:	6a 06                	push   $0x6
c0100b8d:	eb 67                	jmp    c0100bf6 <asm_do_irq>

c0100b8f <vec7>:
c0100b8f:	fa                   	cli    
c0100b90:	6a 00                	push   $0x0
c0100b92:	6a 07                	push   $0x7
c0100b94:	eb 60                	jmp    c0100bf6 <asm_do_irq>

c0100b96 <vec8>:
c0100b96:	fa                   	cli    
c0100b97:	6a 00                	push   $0x0
c0100b99:	6a 08                	push   $0x8
c0100b9b:	eb 59                	jmp    c0100bf6 <asm_do_irq>

c0100b9d <vec9>:
c0100b9d:	fa                   	cli    
c0100b9e:	6a 00                	push   $0x0
c0100ba0:	6a 09                	push   $0x9
c0100ba2:	eb 52                	jmp    c0100bf6 <asm_do_irq>

c0100ba4 <vec10>:
c0100ba4:	fa                   	cli    
c0100ba5:	6a 00                	push   $0x0
c0100ba7:	6a 0a                	push   $0xa
c0100ba9:	eb 4b                	jmp    c0100bf6 <asm_do_irq>

c0100bab <vec11>:
c0100bab:	fa                   	cli    
c0100bac:	6a 00                	push   $0x0
c0100bae:	6a 0b                	push   $0xb
c0100bb0:	eb 44                	jmp    c0100bf6 <asm_do_irq>

c0100bb2 <vec12>:
c0100bb2:	fa                   	cli    
c0100bb3:	6a 00                	push   $0x0
c0100bb5:	6a 0c                	push   $0xc
c0100bb7:	eb 3d                	jmp    c0100bf6 <asm_do_irq>

c0100bb9 <vec13>:
c0100bb9:	fa                   	cli    
c0100bba:	6a 00                	push   $0x0
c0100bbc:	6a 0d                	push   $0xd
c0100bbe:	eb 36                	jmp    c0100bf6 <asm_do_irq>

c0100bc0 <vec14>:
c0100bc0:	fa                   	cli    
c0100bc1:	6a 00                	push   $0x0
c0100bc3:	6a 0e                	push   $0xe
c0100bc5:	eb 2f                	jmp    c0100bf6 <asm_do_irq>

c0100bc7 <irq0>:
c0100bc7:	fa                   	cli    
c0100bc8:	6a 00                	push   $0x0
c0100bca:	68 e8 03 00 00       	push   $0x3e8
c0100bcf:	eb 25                	jmp    c0100bf6 <asm_do_irq>

c0100bd1 <irq1>:
c0100bd1:	fa                   	cli    
c0100bd2:	6a 00                	push   $0x0
c0100bd4:	68 e9 03 00 00       	push   $0x3e9
c0100bd9:	eb 1b                	jmp    c0100bf6 <asm_do_irq>

c0100bdb <irq14>:
c0100bdb:	fa                   	cli    
c0100bdc:	6a 00                	push   $0x0
c0100bde:	68 f6 03 00 00       	push   $0x3f6
c0100be3:	eb 11                	jmp    c0100bf6 <asm_do_irq>

c0100be5 <syscall>:
c0100be5:	fa                   	cli    
c0100be6:	6a 00                	push   $0x0
c0100be8:	68 80 00 00 00       	push   $0x80
c0100bed:	eb 07                	jmp    c0100bf6 <asm_do_irq>

c0100bef <irq_empty>:
c0100bef:	fa                   	cli    
c0100bf0:	6a 00                	push   $0x0
c0100bf2:	6a ff                	push   $0xffffffff
c0100bf4:	eb 00                	jmp    c0100bf6 <asm_do_irq>

c0100bf6 <asm_do_irq>:
c0100bf6:	60                   	pusha  
c0100bf7:	54                   	push   %esp
c0100bf8:	e8 08 00 00 00       	call   c0100c05 <irq_handle>
c0100bfd:	83 c4 04             	add    $0x4,%esp
c0100c00:	61                   	popa   
c0100c01:	83 c4 08             	add    $0x8,%esp
c0100c04:	cf                   	iret   

c0100c05 <irq_handle>:
c0100c05:	55                   	push   %ebp
c0100c06:	89 e5                	mov    %esp,%ebp
c0100c08:	83 ec 38             	sub    $0x38,%esp
c0100c0b:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c0e:	8b 40 20             	mov    0x20(%eax),%eax
c0100c11:	3d e8 03 00 00       	cmp    $0x3e8,%eax
c0100c16:	75 18                	jne    c0100c30 <irq_handle+0x2b>
c0100c18:	e8 e3 f3 ff ff       	call   c0100000 <timer_event>
c0100c1d:	83 ec 0c             	sub    $0xc,%esp
c0100c20:	ff 75 08             	pushl  0x8(%ebp)
c0100c23:	e8 24 13 00 00       	call   c0101f4c <time_treat>
c0100c28:	83 c4 10             	add    $0x10,%esp
c0100c2b:	e9 02 02 00 00       	jmp    c0100e32 <irq_handle+0x22d>
c0100c30:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c33:	8b 40 20             	mov    0x20(%eax),%eax
c0100c36:	3d e9 03 00 00       	cmp    $0x3e9,%eax
c0100c3b:	75 7b                	jne    c0100cb8 <irq_handle+0xb3>
c0100c3d:	c7 45 e8 60 00 00 00 	movl   $0x60,-0x18(%ebp)
c0100c44:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0100c47:	89 c2                	mov    %eax,%edx
c0100c49:	ec                   	in     (%dx),%al
c0100c4a:	88 45 e7             	mov    %al,-0x19(%ebp)
c0100c4d:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
c0100c51:	0f b6 c0             	movzbl %al,%eax
c0100c54:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100c57:	c7 45 e0 61 00 00 00 	movl   $0x61,-0x20(%ebp)
c0100c5e:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0100c61:	89 c2                	mov    %eax,%edx
c0100c63:	ec                   	in     (%dx),%al
c0100c64:	88 45 df             	mov    %al,-0x21(%ebp)
c0100c67:	0f b6 45 df          	movzbl -0x21(%ebp),%eax
c0100c6b:	0f b6 c0             	movzbl %al,%eax
c0100c6e:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100c71:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0100c74:	83 c8 80             	or     $0xffffff80,%eax
c0100c77:	0f b6 c0             	movzbl %al,%eax
c0100c7a:	c7 45 d8 61 00 00 00 	movl   $0x61,-0x28(%ebp)
c0100c81:	88 45 d7             	mov    %al,-0x29(%ebp)
c0100c84:	0f b6 45 d7          	movzbl -0x29(%ebp),%eax
c0100c88:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0100c8b:	ee                   	out    %al,(%dx)
c0100c8c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0100c8f:	0f b6 c0             	movzbl %al,%eax
c0100c92:	c7 45 d0 61 00 00 00 	movl   $0x61,-0x30(%ebp)
c0100c99:	88 45 cf             	mov    %al,-0x31(%ebp)
c0100c9c:	0f b6 45 cf          	movzbl -0x31(%ebp),%eax
c0100ca0:	8b 55 d0             	mov    -0x30(%ebp),%edx
c0100ca3:	ee                   	out    %al,(%dx)
c0100ca4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100ca7:	83 ec 0c             	sub    $0xc,%esp
c0100caa:	50                   	push   %eax
c0100cab:	e8 7b f4 ff ff       	call   c010012b <keyboard_event>
c0100cb0:	83 c4 10             	add    $0x10,%esp
c0100cb3:	e9 7a 01 00 00       	jmp    c0100e32 <irq_handle+0x22d>
c0100cb8:	8b 45 08             	mov    0x8(%ebp),%eax
c0100cbb:	8b 40 20             	mov    0x20(%eax),%eax
c0100cbe:	3d f6 03 00 00       	cmp    $0x3f6,%eax
c0100cc3:	0f 84 69 01 00 00    	je     c0100e32 <irq_handle+0x22d>
c0100cc9:	8b 45 08             	mov    0x8(%ebp),%eax
c0100ccc:	8b 40 20             	mov    0x20(%eax),%eax
c0100ccf:	3d 80 00 00 00       	cmp    $0x80,%eax
c0100cd4:	0f 85 33 01 00 00    	jne    c0100e0d <irq_handle+0x208>
c0100cda:	8b 45 08             	mov    0x8(%ebp),%eax
c0100cdd:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100ce0:	83 f8 01             	cmp    $0x1,%eax
c0100ce3:	75 26                	jne    c0100d0b <irq_handle+0x106>
c0100ce5:	8b 45 08             	mov    0x8(%ebp),%eax
c0100ce8:	8b 40 10             	mov    0x10(%eax),%eax
c0100ceb:	83 f8 01             	cmp    $0x1,%eax
c0100cee:	0f 85 3e 01 00 00    	jne    c0100e32 <irq_handle+0x22d>
c0100cf4:	8b 45 08             	mov    0x8(%ebp),%eax
c0100cf7:	8b 40 18             	mov    0x18(%eax),%eax
c0100cfa:	83 ec 0c             	sub    $0xc,%esp
c0100cfd:	50                   	push   %eax
c0100cfe:	e8 59 04 00 00       	call   c010115c <printk>
c0100d03:	83 c4 10             	add    $0x10,%esp
c0100d06:	e9 27 01 00 00       	jmp    c0100e32 <irq_handle+0x22d>
c0100d0b:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d0e:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100d11:	83 f8 02             	cmp    $0x2,%eax
c0100d14:	75 35                	jne    c0100d4b <irq_handle+0x146>
c0100d16:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d19:	8b 40 10             	mov    0x10(%eax),%eax
c0100d1c:	85 c0                	test   %eax,%eax
c0100d1e:	75 12                	jne    c0100d32 <irq_handle+0x12d>
c0100d20:	e8 ed f2 ff ff       	call   c0100012 <get_time>
c0100d25:	89 c2                	mov    %eax,%edx
c0100d27:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d2a:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100d2d:	e9 00 01 00 00       	jmp    c0100e32 <irq_handle+0x22d>
c0100d32:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d35:	8b 40 10             	mov    0x10(%eax),%eax
c0100d38:	83 f8 01             	cmp    $0x1,%eax
c0100d3b:	0f 85 f1 00 00 00    	jne    c0100e32 <irq_handle+0x22d>
c0100d41:	e8 d6 f2 ff ff       	call   c010001c <time_pop>
c0100d46:	e9 e7 00 00 00       	jmp    c0100e32 <irq_handle+0x22d>
c0100d4b:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d4e:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100d51:	83 f8 03             	cmp    $0x3,%eax
c0100d54:	75 35                	jne    c0100d8b <irq_handle+0x186>
c0100d56:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d59:	8b 40 10             	mov    0x10(%eax),%eax
c0100d5c:	85 c0                	test   %eax,%eax
c0100d5e:	75 12                	jne    c0100d72 <irq_handle+0x16d>
c0100d60:	e8 ad f3 ff ff       	call   c0100112 <last_key_code>
c0100d65:	89 c2                	mov    %eax,%edx
c0100d67:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d6a:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100d6d:	e9 c0 00 00 00       	jmp    c0100e32 <irq_handle+0x22d>
c0100d72:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d75:	8b 40 10             	mov    0x10(%eax),%eax
c0100d78:	83 f8 01             	cmp    $0x1,%eax
c0100d7b:	0f 85 b1 00 00 00    	jne    c0100e32 <irq_handle+0x22d>
c0100d81:	e8 96 f3 ff ff       	call   c010011c <reset_last_key>
c0100d86:	e9 a7 00 00 00       	jmp    c0100e32 <irq_handle+0x22d>
c0100d8b:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d8e:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100d91:	83 f8 04             	cmp    $0x4,%eax
c0100d94:	75 1e                	jne    c0100db4 <irq_handle+0x1af>
c0100d96:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d99:	8b 40 10             	mov    0x10(%eax),%eax
c0100d9c:	83 ec 04             	sub    $0x4,%esp
c0100d9f:	68 00 00 01 00       	push   $0x10000
c0100da4:	50                   	push   %eax
c0100da5:	68 00 00 0a c0       	push   $0xc00a0000
c0100daa:	e8 d2 03 00 00       	call   c0101181 <my_memcpy>
c0100daf:	83 c4 10             	add    $0x10,%esp
c0100db2:	eb 7e                	jmp    c0100e32 <irq_handle+0x22d>
c0100db4:	8b 45 08             	mov    0x8(%ebp),%eax
c0100db7:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100dba:	83 f8 05             	cmp    $0x5,%eax
c0100dbd:	75 07                	jne    c0100dc6 <irq_handle+0x1c1>
c0100dbf:	e8 6e 12 00 00       	call   c0102032 <process_exit>
c0100dc4:	eb 6c                	jmp    c0100e32 <irq_handle+0x22d>
c0100dc6:	8b 45 08             	mov    0x8(%ebp),%eax
c0100dc9:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100dcc:	83 f8 06             	cmp    $0x6,%eax
c0100dcf:	75 0f                	jne    c0100de0 <irq_handle+0x1db>
c0100dd1:	e8 f0 07 00 00       	call   c01015c6 <getpid>
c0100dd6:	89 c2                	mov    %eax,%edx
c0100dd8:	8b 45 08             	mov    0x8(%ebp),%eax
c0100ddb:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100dde:	eb 52                	jmp    c0100e32 <irq_handle+0x22d>
c0100de0:	8b 45 08             	mov    0x8(%ebp),%eax
c0100de3:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100de6:	83 f8 07             	cmp    $0x7,%eax
c0100de9:	75 20                	jne    c0100e0b <irq_handle+0x206>
c0100deb:	e8 22 f2 ff ff       	call   c0100012 <get_time>
c0100df0:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0100df3:	fb                   	sti    
c0100df4:	90                   	nop
c0100df5:	e8 18 f2 ff ff       	call   c0100012 <get_time>
c0100dfa:	89 c1                	mov    %eax,%ecx
c0100dfc:	8b 45 08             	mov    0x8(%ebp),%eax
c0100dff:	8b 50 10             	mov    0x10(%eax),%edx
c0100e02:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100e05:	01 d0                	add    %edx,%eax
c0100e07:	39 c1                	cmp    %eax,%ecx
c0100e09:	72 ea                	jb     c0100df5 <irq_handle+0x1f0>
c0100e0b:	eb 25                	jmp    c0100e32 <irq_handle+0x22d>
c0100e0d:	83 ec 0c             	sub    $0xc,%esp
c0100e10:	ff 75 08             	pushl  0x8(%ebp)
c0100e13:	e8 5c 06 00 00       	call   c0101474 <print_tf>
c0100e18:	83 c4 10             	add    $0x10,%esp
c0100e1b:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e1e:	8b 40 20             	mov    0x20(%eax),%eax
c0100e21:	83 ec 08             	sub    $0x8,%esp
c0100e24:	50                   	push   %eax
c0100e25:	68 40 29 10 c0       	push   $0xc0102940
c0100e2a:	e8 2d 03 00 00       	call   c010115c <printk>
c0100e2f:	83 c4 10             	add    $0x10,%esp
c0100e32:	c9                   	leave  
c0100e33:	c3                   	ret    

c0100e34 <change>:
c0100e34:	55                   	push   %ebp
c0100e35:	89 e5                	mov    %esp,%ebp
c0100e37:	53                   	push   %ebx
c0100e38:	83 c4 80             	add    $0xffffff80,%esp
c0100e3b:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0100e42:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0100e49:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e4c:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0100e4f:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0100e53:	75 14                	jne    c0100e69 <change+0x35>
c0100e55:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100e58:	c6 00 30             	movb   $0x30,(%eax)
c0100e5b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100e5e:	83 c0 01             	add    $0x1,%eax
c0100e61:	c6 00 00             	movb   $0x0,(%eax)
c0100e64:	e9 a5 00 00 00       	jmp    c0100f0e <change+0xda>
c0100e69:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0100e6d:	79 1d                	jns    c0100e8c <change+0x58>
c0100e6f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100e72:	8d 50 01             	lea    0x1(%eax),%edx
c0100e75:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0100e78:	89 c2                	mov    %eax,%edx
c0100e7a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100e7d:	01 d0                	add    %edx,%eax
c0100e7f:	c6 00 2d             	movb   $0x2d,(%eax)
c0100e82:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100e85:	f7 d8                	neg    %eax
c0100e87:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100e8a:	eb 06                	jmp    c0100e92 <change+0x5e>
c0100e8c:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100e8f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100e92:	eb 40                	jmp    c0100ed4 <change+0xa0>
c0100e94:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0100e97:	8d 41 01             	lea    0x1(%ecx),%eax
c0100e9a:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0100e9d:	8b 5d f0             	mov    -0x10(%ebp),%ebx
c0100ea0:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c0100ea5:	89 d8                	mov    %ebx,%eax
c0100ea7:	f7 e2                	mul    %edx
c0100ea9:	c1 ea 03             	shr    $0x3,%edx
c0100eac:	89 d0                	mov    %edx,%eax
c0100eae:	c1 e0 02             	shl    $0x2,%eax
c0100eb1:	01 d0                	add    %edx,%eax
c0100eb3:	01 c0                	add    %eax,%eax
c0100eb5:	29 c3                	sub    %eax,%ebx
c0100eb7:	89 da                	mov    %ebx,%edx
c0100eb9:	89 d0                	mov    %edx,%eax
c0100ebb:	83 c0 30             	add    $0x30,%eax
c0100ebe:	88 44 0d 88          	mov    %al,-0x78(%ebp,%ecx,1)
c0100ec2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0100ec5:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c0100eca:	f7 e2                	mul    %edx
c0100ecc:	89 d0                	mov    %edx,%eax
c0100ece:	c1 e8 03             	shr    $0x3,%eax
c0100ed1:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100ed4:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0100ed8:	75 ba                	jne    c0100e94 <change+0x60>
c0100eda:	eb 21                	jmp    c0100efd <change+0xc9>
c0100edc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100edf:	8d 50 01             	lea    0x1(%eax),%edx
c0100ee2:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0100ee5:	89 c2                	mov    %eax,%edx
c0100ee7:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100eea:	01 c2                	add    %eax,%edx
c0100eec:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
c0100ef0:	8d 4d 88             	lea    -0x78(%ebp),%ecx
c0100ef3:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0100ef6:	01 c8                	add    %ecx,%eax
c0100ef8:	0f b6 00             	movzbl (%eax),%eax
c0100efb:	88 02                	mov    %al,(%edx)
c0100efd:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
c0100f01:	75 d9                	jne    c0100edc <change+0xa8>
c0100f03:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100f06:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100f09:	01 d0                	add    %edx,%eax
c0100f0b:	c6 00 00             	movb   $0x0,(%eax)
c0100f0e:	83 ec 80             	sub    $0xffffff80,%esp
c0100f11:	5b                   	pop    %ebx
c0100f12:	5d                   	pop    %ebp
c0100f13:	c3                   	ret    

c0100f14 <change_x>:
c0100f14:	55                   	push   %ebp
c0100f15:	89 e5                	mov    %esp,%ebp
c0100f17:	83 ec 70             	sub    $0x70,%esp
c0100f1a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0100f21:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0100f28:	8b 45 08             	mov    0x8(%ebp),%eax
c0100f2b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100f2e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0100f32:	75 11                	jne    c0100f45 <change_x+0x31>
c0100f34:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100f37:	c6 00 30             	movb   $0x30,(%eax)
c0100f3a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100f3d:	83 c0 01             	add    $0x1,%eax
c0100f40:	c6 00 00             	movb   $0x0,(%eax)
c0100f43:	eb 7e                	jmp    c0100fc3 <change_x+0xaf>
c0100f45:	eb 42                	jmp    c0100f89 <change_x+0x75>
c0100f47:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100f4a:	83 e0 0f             	and    $0xf,%eax
c0100f4d:	83 f8 09             	cmp    $0x9,%eax
c0100f50:	77 18                	ja     c0100f6a <change_x+0x56>
c0100f52:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100f55:	8d 50 01             	lea    0x1(%eax),%edx
c0100f58:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0100f5b:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100f5e:	83 e2 0f             	and    $0xf,%edx
c0100f61:	83 c2 30             	add    $0x30,%edx
c0100f64:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
c0100f68:	eb 16                	jmp    c0100f80 <change_x+0x6c>
c0100f6a:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100f6d:	8d 50 01             	lea    0x1(%eax),%edx
c0100f70:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0100f73:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100f76:	83 e2 0f             	and    $0xf,%edx
c0100f79:	83 c2 37             	add    $0x37,%edx
c0100f7c:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
c0100f80:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100f83:	c1 e8 04             	shr    $0x4,%eax
c0100f86:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100f89:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0100f8d:	75 b8                	jne    c0100f47 <change_x+0x33>
c0100f8f:	eb 21                	jmp    c0100fb2 <change_x+0x9e>
c0100f91:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0100f94:	8d 50 01             	lea    0x1(%eax),%edx
c0100f97:	89 55 f8             	mov    %edx,-0x8(%ebp)
c0100f9a:	89 c2                	mov    %eax,%edx
c0100f9c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100f9f:	01 c2                	add    %eax,%edx
c0100fa1:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
c0100fa5:	8d 4d 90             	lea    -0x70(%ebp),%ecx
c0100fa8:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100fab:	01 c8                	add    %ecx,%eax
c0100fad:	0f b6 00             	movzbl (%eax),%eax
c0100fb0:	88 02                	mov    %al,(%edx)
c0100fb2:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
c0100fb6:	75 d9                	jne    c0100f91 <change_x+0x7d>
c0100fb8:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0100fbb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100fbe:	01 d0                	add    %edx,%eax
c0100fc0:	c6 00 00             	movb   $0x0,(%eax)
c0100fc3:	c9                   	leave  
c0100fc4:	c3                   	ret    

c0100fc5 <v_fprintf>:
c0100fc5:	55                   	push   %ebp
c0100fc6:	89 e5                	mov    %esp,%ebp
c0100fc8:	81 ec 88 00 00 00    	sub    $0x88,%esp
c0100fce:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100fd1:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0100fd4:	8b 45 10             	mov    0x10(%ebp),%eax
c0100fd7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100fda:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0100fe1:	e9 61 01 00 00       	jmp    c0101147 <v_fprintf+0x182>
c0100fe6:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0100fe9:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100fec:	01 d0                	add    %edx,%eax
c0100fee:	0f b6 00             	movzbl (%eax),%eax
c0100ff1:	3c 25                	cmp    $0x25,%al
c0100ff3:	74 27                	je     c010101c <v_fprintf+0x57>
c0100ff5:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0100ff8:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100ffb:	01 d0                	add    %edx,%eax
c0100ffd:	0f b6 00             	movzbl (%eax),%eax
c0101000:	88 45 eb             	mov    %al,-0x15(%ebp)
c0101003:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
c0101007:	83 ec 0c             	sub    $0xc,%esp
c010100a:	50                   	push   %eax
c010100b:	8b 45 08             	mov    0x8(%ebp),%eax
c010100e:	ff d0                	call   *%eax
c0101010:	83 c4 10             	add    $0x10,%esp
c0101013:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0101017:	e9 2b 01 00 00       	jmp    c0101147 <v_fprintf+0x182>
c010101c:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0101020:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101023:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101026:	01 d0                	add    %edx,%eax
c0101028:	0f b6 00             	movzbl (%eax),%eax
c010102b:	3c 25                	cmp    $0x25,%al
c010102d:	75 16                	jne    c0101045 <v_fprintf+0x80>
c010102f:	83 ec 0c             	sub    $0xc,%esp
c0101032:	6a 25                	push   $0x25
c0101034:	8b 45 08             	mov    0x8(%ebp),%eax
c0101037:	ff d0                	call   *%eax
c0101039:	83 c4 10             	add    $0x10,%esp
c010103c:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0101040:	e9 02 01 00 00       	jmp    c0101147 <v_fprintf+0x182>
c0101045:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101048:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010104b:	01 d0                	add    %edx,%eax
c010104d:	0f b6 00             	movzbl (%eax),%eax
c0101050:	3c 63                	cmp    $0x63,%al
c0101052:	75 26                	jne    c010107a <v_fprintf+0xb5>
c0101054:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0101058:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010105b:	0f b6 00             	movzbl (%eax),%eax
c010105e:	88 45 eb             	mov    %al,-0x15(%ebp)
c0101061:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
c0101065:	83 ec 0c             	sub    $0xc,%esp
c0101068:	50                   	push   %eax
c0101069:	8b 45 08             	mov    0x8(%ebp),%eax
c010106c:	ff d0                	call   *%eax
c010106e:	83 c4 10             	add    $0x10,%esp
c0101071:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0101075:	e9 cd 00 00 00       	jmp    c0101147 <v_fprintf+0x182>
c010107a:	8b 55 f0             	mov    -0x10(%ebp),%edx
c010107d:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101080:	01 d0                	add    %edx,%eax
c0101082:	0f b6 00             	movzbl (%eax),%eax
c0101085:	3c 64                	cmp    $0x64,%al
c0101087:	75 36                	jne    c01010bf <v_fprintf+0xfa>
c0101089:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c010108d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101090:	8b 00                	mov    (%eax),%eax
c0101092:	83 ec 08             	sub    $0x8,%esp
c0101095:	8d 55 87             	lea    -0x79(%ebp),%edx
c0101098:	52                   	push   %edx
c0101099:	50                   	push   %eax
c010109a:	e8 95 fd ff ff       	call   c0100e34 <change>
c010109f:	83 c4 10             	add    $0x10,%esp
c01010a2:	83 ec 04             	sub    $0x4,%esp
c01010a5:	6a 00                	push   $0x0
c01010a7:	8d 45 87             	lea    -0x79(%ebp),%eax
c01010aa:	50                   	push   %eax
c01010ab:	ff 75 08             	pushl  0x8(%ebp)
c01010ae:	e8 12 ff ff ff       	call   c0100fc5 <v_fprintf>
c01010b3:	83 c4 10             	add    $0x10,%esp
c01010b6:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c01010ba:	e9 88 00 00 00       	jmp    c0101147 <v_fprintf+0x182>
c01010bf:	8b 55 f0             	mov    -0x10(%ebp),%edx
c01010c2:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01010c5:	01 d0                	add    %edx,%eax
c01010c7:	0f b6 00             	movzbl (%eax),%eax
c01010ca:	3c 78                	cmp    $0x78,%al
c01010cc:	75 33                	jne    c0101101 <v_fprintf+0x13c>
c01010ce:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c01010d2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01010d5:	8b 00                	mov    (%eax),%eax
c01010d7:	83 ec 08             	sub    $0x8,%esp
c01010da:	8d 55 87             	lea    -0x79(%ebp),%edx
c01010dd:	52                   	push   %edx
c01010de:	50                   	push   %eax
c01010df:	e8 30 fe ff ff       	call   c0100f14 <change_x>
c01010e4:	83 c4 10             	add    $0x10,%esp
c01010e7:	83 ec 04             	sub    $0x4,%esp
c01010ea:	6a 00                	push   $0x0
c01010ec:	8d 45 87             	lea    -0x79(%ebp),%eax
c01010ef:	50                   	push   %eax
c01010f0:	ff 75 08             	pushl  0x8(%ebp)
c01010f3:	e8 cd fe ff ff       	call   c0100fc5 <v_fprintf>
c01010f8:	83 c4 10             	add    $0x10,%esp
c01010fb:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c01010ff:	eb 46                	jmp    c0101147 <v_fprintf+0x182>
c0101101:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101104:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101107:	01 d0                	add    %edx,%eax
c0101109:	0f b6 00             	movzbl (%eax),%eax
c010110c:	3c 73                	cmp    $0x73,%al
c010110e:	75 20                	jne    c0101130 <v_fprintf+0x16b>
c0101110:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0101114:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101117:	8b 00                	mov    (%eax),%eax
c0101119:	83 ec 04             	sub    $0x4,%esp
c010111c:	6a 00                	push   $0x0
c010111e:	50                   	push   %eax
c010111f:	ff 75 08             	pushl  0x8(%ebp)
c0101122:	e8 9e fe ff ff       	call   c0100fc5 <v_fprintf>
c0101127:	83 c4 10             	add    $0x10,%esp
c010112a:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c010112e:	eb 17                	jmp    c0101147 <v_fprintf+0x182>
c0101130:	83 ec 04             	sub    $0x4,%esp
c0101133:	6a 00                	push   $0x0
c0101135:	68 68 29 10 c0       	push   $0xc0102968
c010113a:	ff 75 08             	pushl  0x8(%ebp)
c010113d:	e8 83 fe ff ff       	call   c0100fc5 <v_fprintf>
c0101142:	83 c4 10             	add    $0x10,%esp
c0101145:	eb 13                	jmp    c010115a <v_fprintf+0x195>
c0101147:	8b 55 f0             	mov    -0x10(%ebp),%edx
c010114a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010114d:	01 d0                	add    %edx,%eax
c010114f:	0f b6 00             	movzbl (%eax),%eax
c0101152:	84 c0                	test   %al,%al
c0101154:	0f 85 8c fe ff ff    	jne    c0100fe6 <v_fprintf+0x21>
c010115a:	c9                   	leave  
c010115b:	c3                   	ret    

c010115c <printk>:
c010115c:	55                   	push   %ebp
c010115d:	89 e5                	mov    %esp,%ebp
c010115f:	83 ec 18             	sub    $0x18,%esp
c0101162:	8d 45 0c             	lea    0xc(%ebp),%eax
c0101165:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101168:	8b 45 08             	mov    0x8(%ebp),%eax
c010116b:	83 ec 04             	sub    $0x4,%esp
c010116e:	ff 75 f4             	pushl  -0xc(%ebp)
c0101171:	50                   	push   %eax
c0101172:	68 68 02 10 c0       	push   $0xc0100268
c0101177:	e8 49 fe ff ff       	call   c0100fc5 <v_fprintf>
c010117c:	83 c4 10             	add    $0x10,%esp
c010117f:	c9                   	leave  
c0101180:	c3                   	ret    

c0101181 <my_memcpy>:
c0101181:	55                   	push   %ebp
c0101182:	89 e5                	mov    %esp,%ebp
c0101184:	57                   	push   %edi
c0101185:	56                   	push   %esi
c0101186:	53                   	push   %ebx
c0101187:	8b 45 10             	mov    0x10(%ebp),%eax
c010118a:	8b 55 0c             	mov    0xc(%ebp),%edx
c010118d:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0101190:	89 c1                	mov    %eax,%ecx
c0101192:	89 d6                	mov    %edx,%esi
c0101194:	89 df                	mov    %ebx,%edi
c0101196:	fc                   	cld    
c0101197:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0101199:	5b                   	pop    %ebx
c010119a:	5e                   	pop    %esi
c010119b:	5f                   	pop    %edi
c010119c:	5d                   	pop    %ebp
c010119d:	c3                   	ret    

c010119e <my_memset>:
c010119e:	55                   	push   %ebp
c010119f:	89 e5                	mov    %esp,%ebp
c01011a1:	57                   	push   %edi
c01011a2:	53                   	push   %ebx
c01011a3:	8b 55 10             	mov    0x10(%ebp),%edx
c01011a6:	8b 45 0c             	mov    0xc(%ebp),%eax
c01011a9:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01011ac:	89 d1                	mov    %edx,%ecx
c01011ae:	89 df                	mov    %ebx,%edi
c01011b0:	fc                   	cld    
c01011b1:	f3 aa                	rep stos %al,%es:(%edi)
c01011b3:	5b                   	pop    %ebx
c01011b4:	5f                   	pop    %edi
c01011b5:	5d                   	pop    %ebp
c01011b6:	c3                   	ret    

c01011b7 <_paddr>:
c01011b7:	55                   	push   %ebp
c01011b8:	89 e5                	mov    %esp,%ebp
c01011ba:	83 ec 08             	sub    $0x8,%esp
c01011bd:	8b 45 10             	mov    0x10(%ebp),%eax
c01011c0:	3d ff ff ff bf       	cmp    $0xbfffffff,%eax
c01011c5:	77 16                	ja     c01011dd <_paddr+0x26>
c01011c7:	ff 75 10             	pushl  0x10(%ebp)
c01011ca:	68 88 29 10 c0       	push   $0xc0102988
c01011cf:	ff 75 0c             	pushl  0xc(%ebp)
c01011d2:	ff 75 08             	pushl  0x8(%ebp)
c01011d5:	e8 82 ff ff ff       	call   c010115c <printk>
c01011da:	83 c4 10             	add    $0x10,%esp
c01011dd:	8b 45 10             	mov    0x10(%ebp),%eax
c01011e0:	05 00 00 00 40       	add    $0x40000000,%eax
c01011e5:	c9                   	leave  
c01011e6:	c3                   	ret    

c01011e7 <waitdisk>:
c01011e7:	55                   	push   %ebp
c01011e8:	89 e5                	mov    %esp,%ebp
c01011ea:	83 ec 10             	sub    $0x10,%esp
c01011ed:	90                   	nop
c01011ee:	c7 45 fc f7 01 00 00 	movl   $0x1f7,-0x4(%ebp)
c01011f5:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01011f8:	89 c2                	mov    %eax,%edx
c01011fa:	ec                   	in     (%dx),%al
c01011fb:	88 45 fb             	mov    %al,-0x5(%ebp)
c01011fe:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
c0101202:	0f b6 c0             	movzbl %al,%eax
c0101205:	25 c0 00 00 00       	and    $0xc0,%eax
c010120a:	83 f8 40             	cmp    $0x40,%eax
c010120d:	75 df                	jne    c01011ee <waitdisk+0x7>
c010120f:	c9                   	leave  
c0101210:	c3                   	ret    

c0101211 <readsect>:
c0101211:	55                   	push   %ebp
c0101212:	89 e5                	mov    %esp,%ebp
c0101214:	57                   	push   %edi
c0101215:	53                   	push   %ebx
c0101216:	83 ec 40             	sub    $0x40,%esp
c0101219:	e8 c9 ff ff ff       	call   c01011e7 <waitdisk>
c010121e:	c7 45 f4 f2 01 00 00 	movl   $0x1f2,-0xc(%ebp)
c0101225:	c6 45 f3 01          	movb   $0x1,-0xd(%ebp)
c0101229:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
c010122d:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101230:	ee                   	out    %al,(%dx)
c0101231:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101234:	0f b6 c0             	movzbl %al,%eax
c0101237:	c7 45 ec f3 01 00 00 	movl   $0x1f3,-0x14(%ebp)
c010123e:	88 45 eb             	mov    %al,-0x15(%ebp)
c0101241:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
c0101245:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0101248:	ee                   	out    %al,(%dx)
c0101249:	8b 45 0c             	mov    0xc(%ebp),%eax
c010124c:	c1 e8 08             	shr    $0x8,%eax
c010124f:	0f b6 c0             	movzbl %al,%eax
c0101252:	c7 45 e4 f4 01 00 00 	movl   $0x1f4,-0x1c(%ebp)
c0101259:	88 45 e3             	mov    %al,-0x1d(%ebp)
c010125c:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
c0101260:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0101263:	ee                   	out    %al,(%dx)
c0101264:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101267:	c1 e8 10             	shr    $0x10,%eax
c010126a:	0f b6 c0             	movzbl %al,%eax
c010126d:	c7 45 dc f5 01 00 00 	movl   $0x1f5,-0x24(%ebp)
c0101274:	88 45 db             	mov    %al,-0x25(%ebp)
c0101277:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
c010127b:	8b 55 dc             	mov    -0x24(%ebp),%edx
c010127e:	ee                   	out    %al,(%dx)
c010127f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101282:	c1 e8 18             	shr    $0x18,%eax
c0101285:	83 c8 e0             	or     $0xffffffe0,%eax
c0101288:	0f b6 c0             	movzbl %al,%eax
c010128b:	c7 45 d4 f6 01 00 00 	movl   $0x1f6,-0x2c(%ebp)
c0101292:	88 45 d3             	mov    %al,-0x2d(%ebp)
c0101295:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
c0101299:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c010129c:	ee                   	out    %al,(%dx)
c010129d:	c7 45 cc f7 01 00 00 	movl   $0x1f7,-0x34(%ebp)
c01012a4:	c6 45 cb 20          	movb   $0x20,-0x35(%ebp)
c01012a8:	0f b6 45 cb          	movzbl -0x35(%ebp),%eax
c01012ac:	8b 55 cc             	mov    -0x34(%ebp),%edx
c01012af:	ee                   	out    %al,(%dx)
c01012b0:	e8 32 ff ff ff       	call   c01011e7 <waitdisk>
c01012b5:	c7 45 c4 f0 01 00 00 	movl   $0x1f0,-0x3c(%ebp)
c01012bc:	8b 45 08             	mov    0x8(%ebp),%eax
c01012bf:	89 45 c0             	mov    %eax,-0x40(%ebp)
c01012c2:	c7 45 bc 80 00 00 00 	movl   $0x80,-0x44(%ebp)
c01012c9:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c01012cc:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c01012cf:	8b 45 bc             	mov    -0x44(%ebp),%eax
c01012d2:	89 cb                	mov    %ecx,%ebx
c01012d4:	89 df                	mov    %ebx,%edi
c01012d6:	89 c1                	mov    %eax,%ecx
c01012d8:	fc                   	cld    
c01012d9:	f2 6d                	repnz insl (%dx),%es:(%edi)
c01012db:	89 c8                	mov    %ecx,%eax
c01012dd:	89 fb                	mov    %edi,%ebx
c01012df:	89 5d c0             	mov    %ebx,-0x40(%ebp)
c01012e2:	89 45 bc             	mov    %eax,-0x44(%ebp)
c01012e5:	83 c4 40             	add    $0x40,%esp
c01012e8:	5b                   	pop    %ebx
c01012e9:	5f                   	pop    %edi
c01012ea:	5d                   	pop    %ebp
c01012eb:	c3                   	ret    

c01012ec <read_disk>:
c01012ec:	55                   	push   %ebp
c01012ed:	89 e5                	mov    %esp,%ebp
c01012ef:	83 ec 10             	sub    $0x10,%esp
c01012f2:	8b 55 0c             	mov    0xc(%ebp),%edx
c01012f5:	8b 45 08             	mov    0x8(%ebp),%eax
c01012f8:	01 d0                	add    %edx,%eax
c01012fa:	89 45 f8             	mov    %eax,-0x8(%ebp)
c01012fd:	8b 45 10             	mov    0x10(%ebp),%eax
c0101300:	99                   	cltd   
c0101301:	c1 ea 17             	shr    $0x17,%edx
c0101304:	01 d0                	add    %edx,%eax
c0101306:	25 ff 01 00 00       	and    $0x1ff,%eax
c010130b:	29 d0                	sub    %edx,%eax
c010130d:	f7 d8                	neg    %eax
c010130f:	01 45 08             	add    %eax,0x8(%ebp)
c0101312:	8b 45 10             	mov    0x10(%ebp),%eax
c0101315:	8d 90 ff 01 00 00    	lea    0x1ff(%eax),%edx
c010131b:	85 c0                	test   %eax,%eax
c010131d:	0f 48 c2             	cmovs  %edx,%eax
c0101320:	c1 f8 09             	sar    $0x9,%eax
c0101323:	83 c0 01             	add    $0x1,%eax
c0101326:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0101329:	eb 1a                	jmp    c0101345 <read_disk+0x59>
c010132b:	8b 45 fc             	mov    -0x4(%ebp),%eax
c010132e:	50                   	push   %eax
c010132f:	ff 75 08             	pushl  0x8(%ebp)
c0101332:	e8 da fe ff ff       	call   c0101211 <readsect>
c0101337:	83 c4 08             	add    $0x8,%esp
c010133a:	81 45 08 00 02 00 00 	addl   $0x200,0x8(%ebp)
c0101341:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0101345:	8b 45 08             	mov    0x8(%ebp),%eax
c0101348:	3b 45 f8             	cmp    -0x8(%ebp),%eax
c010134b:	72 de                	jb     c010132b <read_disk+0x3f>
c010134d:	c9                   	leave  
c010134e:	c3                   	ret    

c010134f <load>:
c010134f:	55                   	push   %ebp
c0101350:	89 e5                	mov    %esp,%ebp
c0101352:	83 ec 28             	sub    $0x28,%esp
c0101355:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c010135c:	83 ec 04             	sub    $0x4,%esp
c010135f:	68 00 10 00 00       	push   $0x1000
c0101364:	6a 00                	push   $0x0
c0101366:	ff 75 0c             	pushl  0xc(%ebp)
c0101369:	e8 47 0f 00 00       	call   c01022b5 <mm_alloc>
c010136e:	83 c4 10             	add    $0x10,%esp
c0101371:	8b 45 08             	mov    0x8(%ebp),%eax
c0101374:	83 ec 04             	sub    $0x4,%esp
c0101377:	50                   	push   %eax
c0101378:	68 00 10 00 00       	push   $0x1000
c010137d:	ff 75 ec             	pushl  -0x14(%ebp)
c0101380:	e8 67 ff ff ff       	call   c01012ec <read_disk>
c0101385:	83 c4 10             	add    $0x10,%esp
c0101388:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010138b:	8b 50 1c             	mov    0x1c(%eax),%edx
c010138e:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101391:	01 d0                	add    %edx,%eax
c0101393:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101396:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101399:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
c010139d:	0f b7 c0             	movzwl %ax,%eax
c01013a0:	c1 e0 05             	shl    $0x5,%eax
c01013a3:	89 c2                	mov    %eax,%edx
c01013a5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01013a8:	01 d0                	add    %edx,%eax
c01013aa:	89 45 e8             	mov    %eax,-0x18(%ebp)
c01013ad:	83 ec 04             	sub    $0x4,%esp
c01013b0:	ff 75 0c             	pushl  0xc(%ebp)
c01013b3:	6a 52                	push   $0x52
c01013b5:	68 ab 29 10 c0       	push   $0xc01029ab
c01013ba:	e8 f8 fd ff ff       	call   c01011b7 <_paddr>
c01013bf:	83 c4 10             	add    $0x10,%esp
c01013c2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01013c5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01013c8:	0f 22 d8             	mov    %eax,%cr3
c01013cb:	eb 7b                	jmp    c0101448 <load+0xf9>
c01013cd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01013d0:	8b 40 14             	mov    0x14(%eax),%eax
c01013d3:	89 c2                	mov    %eax,%edx
c01013d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01013d8:	8b 40 0c             	mov    0xc(%eax),%eax
c01013db:	83 ec 04             	sub    $0x4,%esp
c01013de:	52                   	push   %edx
c01013df:	50                   	push   %eax
c01013e0:	ff 75 0c             	pushl  0xc(%ebp)
c01013e3:	e8 cd 0e 00 00       	call   c01022b5 <mm_alloc>
c01013e8:	83 c4 10             	add    $0x10,%esp
c01013eb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01013ee:	8b 50 04             	mov    0x4(%eax),%edx
c01013f1:	8b 45 08             	mov    0x8(%ebp),%eax
c01013f4:	01 d0                	add    %edx,%eax
c01013f6:	89 c1                	mov    %eax,%ecx
c01013f8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01013fb:	8b 40 10             	mov    0x10(%eax),%eax
c01013fe:	89 c2                	mov    %eax,%edx
c0101400:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101403:	8b 40 0c             	mov    0xc(%eax),%eax
c0101406:	83 ec 04             	sub    $0x4,%esp
c0101409:	51                   	push   %ecx
c010140a:	52                   	push   %edx
c010140b:	50                   	push   %eax
c010140c:	e8 db fe ff ff       	call   c01012ec <read_disk>
c0101411:	83 c4 10             	add    $0x10,%esp
c0101414:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101417:	8b 50 0c             	mov    0xc(%eax),%edx
c010141a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010141d:	8b 40 10             	mov    0x10(%eax),%eax
c0101420:	01 d0                	add    %edx,%eax
c0101422:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101425:	eb 0a                	jmp    c0101431 <load+0xe2>
c0101427:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010142a:	c6 00 00             	movb   $0x0,(%eax)
c010142d:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0101431:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101434:	8b 50 0c             	mov    0xc(%eax),%edx
c0101437:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010143a:	8b 40 14             	mov    0x14(%eax),%eax
c010143d:	01 d0                	add    %edx,%eax
c010143f:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0101442:	77 e3                	ja     c0101427 <load+0xd8>
c0101444:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c0101448:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010144b:	3b 45 e8             	cmp    -0x18(%ebp),%eax
c010144e:	0f 82 79 ff ff ff    	jb     c01013cd <load+0x7e>
c0101454:	83 ec 04             	sub    $0x4,%esp
c0101457:	68 00 00 01 00       	push   $0x10000
c010145c:	68 00 00 60 00       	push   $0x600000
c0101461:	ff 75 0c             	pushl  0xc(%ebp)
c0101464:	e8 4c 0e 00 00       	call   c01022b5 <mm_alloc>
c0101469:	83 c4 10             	add    $0x10,%esp
c010146c:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010146f:	8b 40 18             	mov    0x18(%eax),%eax
c0101472:	c9                   	leave  
c0101473:	c3                   	ret    

c0101474 <print_tf>:
c0101474:	55                   	push   %ebp
c0101475:	89 e5                	mov    %esp,%ebp
c0101477:	83 ec 08             	sub    $0x8,%esp
c010147a:	8b 45 08             	mov    0x8(%ebp),%eax
c010147d:	8b 40 1c             	mov    0x1c(%eax),%eax
c0101480:	83 ec 08             	sub    $0x8,%esp
c0101483:	50                   	push   %eax
c0101484:	68 b4 29 10 c0       	push   $0xc01029b4
c0101489:	e8 ce fc ff ff       	call   c010115c <printk>
c010148e:	83 c4 10             	add    $0x10,%esp
c0101491:	8b 45 08             	mov    0x8(%ebp),%eax
c0101494:	8b 40 10             	mov    0x10(%eax),%eax
c0101497:	83 ec 08             	sub    $0x8,%esp
c010149a:	50                   	push   %eax
c010149b:	68 bb 29 10 c0       	push   $0xc01029bb
c01014a0:	e8 b7 fc ff ff       	call   c010115c <printk>
c01014a5:	83 c4 10             	add    $0x10,%esp
c01014a8:	8b 45 08             	mov    0x8(%ebp),%eax
c01014ab:	8b 40 18             	mov    0x18(%eax),%eax
c01014ae:	83 ec 08             	sub    $0x8,%esp
c01014b1:	50                   	push   %eax
c01014b2:	68 c2 29 10 c0       	push   $0xc01029c2
c01014b7:	e8 a0 fc ff ff       	call   c010115c <printk>
c01014bc:	83 c4 10             	add    $0x10,%esp
c01014bf:	8b 45 08             	mov    0x8(%ebp),%eax
c01014c2:	8b 40 14             	mov    0x14(%eax),%eax
c01014c5:	83 ec 08             	sub    $0x8,%esp
c01014c8:	50                   	push   %eax
c01014c9:	68 c9 29 10 c0       	push   $0xc01029c9
c01014ce:	e8 89 fc ff ff       	call   c010115c <printk>
c01014d3:	83 c4 10             	add    $0x10,%esp
c01014d6:	8b 45 08             	mov    0x8(%ebp),%eax
c01014d9:	8b 00                	mov    (%eax),%eax
c01014db:	83 ec 08             	sub    $0x8,%esp
c01014de:	50                   	push   %eax
c01014df:	68 d0 29 10 c0       	push   $0xc01029d0
c01014e4:	e8 73 fc ff ff       	call   c010115c <printk>
c01014e9:	83 c4 10             	add    $0x10,%esp
c01014ec:	8b 45 08             	mov    0x8(%ebp),%eax
c01014ef:	8b 40 34             	mov    0x34(%eax),%eax
c01014f2:	83 ec 08             	sub    $0x8,%esp
c01014f5:	50                   	push   %eax
c01014f6:	68 d7 29 10 c0       	push   $0xc01029d7
c01014fb:	e8 5c fc ff ff       	call   c010115c <printk>
c0101500:	83 c4 10             	add    $0x10,%esp
c0101503:	8b 45 08             	mov    0x8(%ebp),%eax
c0101506:	8b 40 08             	mov    0x8(%eax),%eax
c0101509:	83 ec 08             	sub    $0x8,%esp
c010150c:	50                   	push   %eax
c010150d:	68 de 29 10 c0       	push   $0xc01029de
c0101512:	e8 45 fc ff ff       	call   c010115c <printk>
c0101517:	83 c4 10             	add    $0x10,%esp
c010151a:	8b 45 08             	mov    0x8(%ebp),%eax
c010151d:	8b 40 28             	mov    0x28(%eax),%eax
c0101520:	83 ec 08             	sub    $0x8,%esp
c0101523:	50                   	push   %eax
c0101524:	68 e5 29 10 c0       	push   $0xc01029e5
c0101529:	e8 2e fc ff ff       	call   c010115c <printk>
c010152e:	83 c4 10             	add    $0x10,%esp
c0101531:	8b 45 08             	mov    0x8(%ebp),%eax
c0101534:	8b 40 2c             	mov    0x2c(%eax),%eax
c0101537:	83 ec 08             	sub    $0x8,%esp
c010153a:	50                   	push   %eax
c010153b:	68 ec 29 10 c0       	push   $0xc01029ec
c0101540:	e8 17 fc ff ff       	call   c010115c <printk>
c0101545:	83 c4 10             	add    $0x10,%esp
c0101548:	c9                   	leave  
c0101549:	c3                   	ret    

c010154a <my_strcpy>:
c010154a:	55                   	push   %ebp
c010154b:	89 e5                	mov    %esp,%ebp
c010154d:	83 ec 10             	sub    $0x10,%esp
c0101550:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0101557:	eb 2c                	jmp    c0101585 <my_strcpy+0x3b>
c0101559:	8b 55 fc             	mov    -0x4(%ebp),%edx
c010155c:	8b 45 08             	mov    0x8(%ebp),%eax
c010155f:	01 c2                	add    %eax,%edx
c0101561:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0101564:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101567:	01 c8                	add    %ecx,%eax
c0101569:	0f b6 00             	movzbl (%eax),%eax
c010156c:	88 02                	mov    %al,(%edx)
c010156e:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0101572:	83 7d fc 1d          	cmpl   $0x1d,-0x4(%ebp)
c0101576:	75 0d                	jne    c0101585 <my_strcpy+0x3b>
c0101578:	8b 55 fc             	mov    -0x4(%ebp),%edx
c010157b:	8b 45 08             	mov    0x8(%ebp),%eax
c010157e:	01 d0                	add    %edx,%eax
c0101580:	c6 00 00             	movb   $0x0,(%eax)
c0101583:	eb 1a                	jmp    c010159f <my_strcpy+0x55>
c0101585:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0101588:	8b 45 0c             	mov    0xc(%ebp),%eax
c010158b:	01 d0                	add    %edx,%eax
c010158d:	0f b6 00             	movzbl (%eax),%eax
c0101590:	84 c0                	test   %al,%al
c0101592:	75 c5                	jne    c0101559 <my_strcpy+0xf>
c0101594:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0101597:	8b 45 08             	mov    0x8(%ebp),%eax
c010159a:	01 d0                	add    %edx,%eax
c010159c:	c6 00 00             	movb   $0x0,(%eax)
c010159f:	c9                   	leave  
c01015a0:	c3                   	ret    

c01015a1 <debug>:
c01015a1:	55                   	push   %ebp
c01015a2:	89 e5                	mov    %esp,%ebp
c01015a4:	83 ec 08             	sub    $0x8,%esp
c01015a7:	8b 15 04 d0 1a c0    	mov    0xc01ad004,%edx
c01015ad:	a1 00 d0 1a c0       	mov    0xc01ad000,%eax
c01015b2:	83 ec 04             	sub    $0x4,%esp
c01015b5:	52                   	push   %edx
c01015b6:	50                   	push   %eax
c01015b7:	68 f2 29 10 c0       	push   $0xc01029f2
c01015bc:	e8 9b fb ff ff       	call   c010115c <printk>
c01015c1:	83 c4 10             	add    $0x10,%esp
c01015c4:	c9                   	leave  
c01015c5:	c3                   	ret    

c01015c6 <getpid>:
c01015c6:	55                   	push   %ebp
c01015c7:	89 e5                	mov    %esp,%ebp
c01015c9:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c01015ce:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01015d4:	83 c0 30             	add    $0x30,%eax
c01015d7:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01015dc:	8b 40 0c             	mov    0xc(%eax),%eax
c01015df:	8b 40 08             	mov    0x8(%eax),%eax
c01015e2:	5d                   	pop    %ebp
c01015e3:	c3                   	ret    

c01015e4 <get_free_pid>:
c01015e4:	55                   	push   %ebp
c01015e5:	89 e5                	mov    %esp,%ebp
c01015e7:	83 ec 18             	sub    $0x18,%esp
c01015ea:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01015f1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01015f8:	eb 25                	jmp    c010161f <get_free_pid+0x3b>
c01015fa:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01015fd:	8b 04 85 00 30 13 c0 	mov    -0x3fecd000(,%eax,4),%eax
c0101604:	85 c0                	test   %eax,%eax
c0101606:	75 13                	jne    c010161b <get_free_pid+0x37>
c0101608:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010160b:	c7 04 85 00 30 13 c0 	movl   $0x1,-0x3fecd000(,%eax,4)
c0101612:	01 00 00 00 
c0101616:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101619:	eb 1c                	jmp    c0101637 <get_free_pid+0x53>
c010161b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c010161f:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c0101623:	7e d5                	jle    c01015fa <get_free_pid+0x16>
c0101625:	83 ec 0c             	sub    $0xc,%esp
c0101628:	68 0b 2a 10 c0       	push   $0xc0102a0b
c010162d:	e8 2a fb ff ff       	call   c010115c <printk>
c0101632:	83 c4 10             	add    $0x10,%esp
c0101635:	eb fe                	jmp    c0101635 <get_free_pid+0x51>
c0101637:	c9                   	leave  
c0101638:	c3                   	ret    

c0101639 <free_pid>:
c0101639:	55                   	push   %ebp
c010163a:	89 e5                	mov    %esp,%ebp
c010163c:	8b 45 08             	mov    0x8(%ebp),%eax
c010163f:	c7 04 85 00 30 13 c0 	movl   $0x0,-0x3fecd000(,%eax,4)
c0101646:	00 00 00 00 
c010164a:	5d                   	pop    %ebp
c010164b:	c3                   	ret    

c010164c <init_PCB>:
c010164c:	55                   	push   %ebp
c010164d:	89 e5                	mov    %esp,%ebp
c010164f:	83 ec 10             	sub    $0x10,%esp
c0101652:	68 19 2a 10 c0       	push   $0xc0102a19
c0101657:	68 4c 3f 13 c0       	push   $0xc0133f4c
c010165c:	e8 e9 fe ff ff       	call   c010154a <my_strcpy>
c0101661:	83 c4 08             	add    $0x8,%esp
c0101664:	c7 05 48 3f 13 c0 00 	movl   $0x0,0xc0133f48
c010166b:	00 00 00 
c010166e:	c7 05 70 3f 13 c0 00 	movl   $0x0,0xc0133f70
c0101675:	00 00 00 
c0101678:	c7 05 80 3f 13 c0 00 	movl   $0x0,0xc0133f80
c010167f:	00 00 00 
c0101682:	c7 05 7c 3f 13 c0 00 	movl   $0x0,0xc0133f7c
c0101689:	00 00 00 
c010168c:	c7 05 6c 3f 13 c0 01 	movl   $0x1,0xc0133f6c
c0101693:	00 00 00 
c0101696:	c7 05 74 3f 13 c0 01 	movl   $0x1,0xc0133f74
c010169d:	00 00 00 
c01016a0:	c7 05 78 3f 13 c0 0a 	movl   $0xa,0xc0133f78
c01016a7:	00 00 00 
c01016aa:	c7 05 00 d0 1a c0 01 	movl   $0x1,0xc01ad000
c01016b1:	00 00 00 
c01016b4:	c7 05 04 d0 1a c0 00 	movl   $0x0,0xc01ad004
c01016bb:	00 00 00 
c01016be:	c7 05 10 3f 13 c0 00 	movl   $0x0,0xc0133f10
c01016c5:	00 00 00 
c01016c8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c01016cf:	eb 26                	jmp    c01016f7 <init_PCB+0xab>
c01016d1:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01016d4:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01016da:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c01016e0:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01016e3:	89 02                	mov    %eax,(%edx)
c01016e5:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01016e8:	c7 04 85 00 30 13 c0 	movl   $0x0,-0x3fecd000(,%eax,4)
c01016ef:	00 00 00 00 
c01016f3:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c01016f7:	83 7d fc 3b          	cmpl   $0x3b,-0x4(%ebp)
c01016fb:	7e d4                	jle    c01016d1 <init_PCB+0x85>
c01016fd:	c7 05 00 30 13 c0 01 	movl   $0x1,0xc0133000
c0101704:	00 00 00 
c0101707:	c9                   	leave  
c0101708:	c3                   	ret    

c0101709 <add_PCB>:
c0101709:	55                   	push   %ebp
c010170a:	89 e5                	mov    %esp,%ebp
c010170c:	83 ec 18             	sub    $0x18,%esp
c010170f:	8b 15 00 d0 1a c0    	mov    0xc01ad000,%edx
c0101715:	a1 04 d0 1a c0       	mov    0xc01ad004,%eax
c010171a:	01 c2                	add    %eax,%edx
c010171c:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101721:	01 d0                	add    %edx,%eax
c0101723:	83 f8 3c             	cmp    $0x3c,%eax
c0101726:	75 1b                	jne    c0101743 <add_PCB+0x3a>
c0101728:	83 ec 0c             	sub    $0xc,%esp
c010172b:	68 1e 2a 10 c0       	push   $0xc0102a1e
c0101730:	e8 27 fa ff ff       	call   c010115c <printk>
c0101735:	83 c4 10             	add    $0x10,%esp
c0101738:	fb                   	sti    
c0101739:	b8 00 00 00 00       	mov    $0x0,%eax
c010173e:	e9 1c 03 00 00       	jmp    c0101a5f <add_PCB+0x356>
c0101743:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c010174a:	eb 1e                	jmp    c010176a <add_PCB+0x61>
c010174c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010174f:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101755:	83 c0 20             	add    $0x20,%eax
c0101758:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010175d:	8b 40 0c             	mov    0xc(%eax),%eax
c0101760:	85 c0                	test   %eax,%eax
c0101762:	75 02                	jne    c0101766 <add_PCB+0x5d>
c0101764:	eb 0a                	jmp    c0101770 <add_PCB+0x67>
c0101766:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c010176a:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c010176e:	7e dc                	jle    c010174c <add_PCB+0x43>
c0101770:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101773:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101779:	83 c0 20             	add    $0x20,%eax
c010177c:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101781:	c7 40 0c 01 00 00 00 	movl   $0x1,0xc(%eax)
c0101788:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c010178c:	0f 85 81 00 00 00    	jne    c0101813 <add_PCB+0x10a>
c0101792:	a1 bc f0 10 c0       	mov    0xc010f0bc,%eax
c0101797:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c010179d:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01017a2:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01017a5:	a1 bc f0 10 c0       	mov    0xc010f0bc,%eax
c01017aa:	8b 55 f4             	mov    -0xc(%ebp),%edx
c01017ad:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c01017b3:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c01017b9:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01017bf:	83 c0 30             	add    $0x30,%eax
c01017c2:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01017c7:	89 50 0c             	mov    %edx,0xc(%eax)
c01017ca:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01017cd:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01017d3:	83 c0 40             	add    $0x40,%eax
c01017d6:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c01017dc:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01017df:	89 02                	mov    %eax,(%edx)
c01017e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01017e4:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01017ea:	83 c0 30             	add    $0x30,%eax
c01017ed:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01017f2:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c01017f9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01017fc:	a3 bc f0 10 c0       	mov    %eax,0xc010f0bc
c0101801:	a1 00 d0 1a c0       	mov    0xc01ad000,%eax
c0101806:	83 c0 01             	add    $0x1,%eax
c0101809:	a3 00 d0 1a c0       	mov    %eax,0xc01ad000
c010180e:	e9 b8 01 00 00       	jmp    c01019cb <add_PCB+0x2c2>
c0101813:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0101817:	0f 85 db 00 00 00    	jne    c01018f8 <add_PCB+0x1ef>
c010181d:	a1 04 d0 1a c0       	mov    0xc01ad004,%eax
c0101822:	85 c0                	test   %eax,%eax
c0101824:	75 51                	jne    c0101877 <add_PCB+0x16e>
c0101826:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101829:	a3 c0 f0 10 c0       	mov    %eax,0xc010f0c0
c010182e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101831:	a3 c4 f0 10 c0       	mov    %eax,0xc010f0c4
c0101836:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101839:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c010183f:	83 c0 40             	add    $0x40,%eax
c0101842:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101847:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c010184d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101850:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101856:	83 c0 30             	add    $0x30,%eax
c0101859:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010185e:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101865:	a1 04 d0 1a c0       	mov    0xc01ad004,%eax
c010186a:	83 c0 01             	add    $0x1,%eax
c010186d:	a3 04 d0 1a c0       	mov    %eax,0xc01ad004
c0101872:	e9 54 01 00 00       	jmp    c01019cb <add_PCB+0x2c2>
c0101877:	a1 c4 f0 10 c0       	mov    0xc010f0c4,%eax
c010187c:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101882:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101887:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010188a:	a1 c4 f0 10 c0       	mov    0xc010f0c4,%eax
c010188f:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101892:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c0101898:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c010189e:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01018a4:	83 c0 30             	add    $0x30,%eax
c01018a7:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01018ac:	89 50 0c             	mov    %edx,0xc(%eax)
c01018af:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018b2:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01018b8:	83 c0 40             	add    $0x40,%eax
c01018bb:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c01018c1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01018c4:	89 02                	mov    %eax,(%edx)
c01018c6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018c9:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01018cf:	83 c0 30             	add    $0x30,%eax
c01018d2:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01018d7:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c01018de:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01018e1:	a3 c4 f0 10 c0       	mov    %eax,0xc010f0c4
c01018e6:	a1 04 d0 1a c0       	mov    0xc01ad004,%eax
c01018eb:	83 c0 01             	add    $0x1,%eax
c01018ee:	a3 04 d0 1a c0       	mov    %eax,0xc01ad004
c01018f3:	e9 d3 00 00 00       	jmp    c01019cb <add_PCB+0x2c2>
c01018f8:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c01018fd:	85 c0                	test   %eax,%eax
c01018ff:	75 4e                	jne    c010194f <add_PCB+0x246>
c0101901:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101904:	a3 c8 f0 10 c0       	mov    %eax,0xc010f0c8
c0101909:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010190c:	a3 cc f0 10 c0       	mov    %eax,0xc010f0cc
c0101911:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101914:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c010191a:	83 c0 40             	add    $0x40,%eax
c010191d:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101922:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0101928:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010192b:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101931:	83 c0 30             	add    $0x30,%eax
c0101934:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101939:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101940:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101945:	83 c0 01             	add    $0x1,%eax
c0101948:	a3 10 3f 13 c0       	mov    %eax,0xc0133f10
c010194d:	eb 7c                	jmp    c01019cb <add_PCB+0x2c2>
c010194f:	a1 cc f0 10 c0       	mov    0xc010f0cc,%eax
c0101954:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c010195a:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010195f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101962:	a1 cc f0 10 c0       	mov    0xc010f0cc,%eax
c0101967:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010196a:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c0101970:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c0101976:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c010197c:	83 c0 30             	add    $0x30,%eax
c010197f:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101984:	89 50 0c             	mov    %edx,0xc(%eax)
c0101987:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010198a:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101990:	83 c0 40             	add    $0x40,%eax
c0101993:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101999:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010199c:	89 02                	mov    %eax,(%edx)
c010199e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01019a1:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01019a7:	83 c0 30             	add    $0x30,%eax
c01019aa:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01019af:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c01019b6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01019b9:	a3 cc f0 10 c0       	mov    %eax,0xc010f0cc
c01019be:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c01019c3:	83 c0 01             	add    $0x1,%eax
c01019c6:	a3 10 3f 13 c0       	mov    %eax,0xc0133f10
c01019cb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01019ce:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01019d4:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c01019d9:	83 c0 0c             	add    $0xc,%eax
c01019dc:	83 ec 08             	sub    $0x8,%esp
c01019df:	ff 75 10             	pushl  0x10(%ebp)
c01019e2:	50                   	push   %eax
c01019e3:	e8 62 fb ff ff       	call   c010154a <my_strcpy>
c01019e8:	83 c4 10             	add    $0x10,%esp
c01019eb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01019ee:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c01019f4:	83 c0 30             	add    $0x30,%eax
c01019f7:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c01019fd:	8b 45 14             	mov    0x14(%ebp),%eax
c0101a00:	89 42 08             	mov    %eax,0x8(%edx)
c0101a03:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a06:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101a0c:	83 c0 30             	add    $0x30,%eax
c0101a0f:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101a15:	8b 45 08             	mov    0x8(%ebp),%eax
c0101a18:	89 42 04             	mov    %eax,0x4(%edx)
c0101a1b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a1e:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101a24:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101a2a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101a2d:	89 42 04             	mov    %eax,0x4(%edx)
c0101a30:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a33:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101a39:	83 c0 30             	add    $0x30,%eax
c0101a3c:	8d 90 40 3f 13 c0    	lea    -0x3fecc0c0(%eax),%edx
c0101a42:	8b 45 18             	mov    0x18(%ebp),%eax
c0101a45:	89 02                	mov    %eax,(%edx)
c0101a47:	8b 45 1c             	mov    0x1c(%ebp),%eax
c0101a4a:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101a4d:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c0101a53:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c0101a59:	89 42 08             	mov    %eax,0x8(%edx)
c0101a5c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a5f:	c9                   	leave  
c0101a60:	c3                   	ret    

c0101a61 <delete_PCB>:
c0101a61:	55                   	push   %ebp
c0101a62:	89 e5                	mov    %esp,%ebp
c0101a64:	83 ec 18             	sub    $0x18,%esp
c0101a67:	8b 45 08             	mov    0x8(%ebp),%eax
c0101a6a:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101a70:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101a75:	8b 40 08             	mov    0x8(%eax),%eax
c0101a78:	50                   	push   %eax
c0101a79:	e8 bb fb ff ff       	call   c0101639 <free_pid>
c0101a7e:	83 c4 04             	add    $0x4,%esp
c0101a81:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0101a85:	75 15                	jne    c0101a9c <delete_PCB+0x3b>
c0101a87:	83 ec 0c             	sub    $0xc,%esp
c0101a8a:	68 34 2a 10 c0       	push   $0xc0102a34
c0101a8f:	e8 c8 f6 ff ff       	call   c010115c <printk>
c0101a94:	83 c4 10             	add    $0x10,%esp
c0101a97:	e9 d5 02 00 00       	jmp    c0101d71 <delete_PCB+0x310>
c0101a9c:	8b 45 08             	mov    0x8(%ebp),%eax
c0101a9f:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101aa5:	83 c0 20             	add    $0x20,%eax
c0101aa8:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101aad:	8b 40 0c             	mov    0xc(%eax),%eax
c0101ab0:	85 c0                	test   %eax,%eax
c0101ab2:	75 15                	jne    c0101ac9 <delete_PCB+0x68>
c0101ab4:	83 ec 0c             	sub    $0xc,%esp
c0101ab7:	68 57 2a 10 c0       	push   $0xc0102a57
c0101abc:	e8 9b f6 ff ff       	call   c010115c <printk>
c0101ac1:	83 c4 10             	add    $0x10,%esp
c0101ac4:	e9 a8 02 00 00       	jmp    c0101d71 <delete_PCB+0x310>
c0101ac9:	8b 45 08             	mov    0x8(%ebp),%eax
c0101acc:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101ad2:	83 c0 20             	add    $0x20,%eax
c0101ad5:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101ada:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101ae1:	8b 45 08             	mov    0x8(%ebp),%eax
c0101ae4:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101aea:	83 c0 30             	add    $0x30,%eax
c0101aed:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101af2:	8b 40 04             	mov    0x4(%eax),%eax
c0101af5:	83 f8 01             	cmp    $0x1,%eax
c0101af8:	0f 85 bf 00 00 00    	jne    c0101bbd <delete_PCB+0x15c>
c0101afe:	a1 bc f0 10 c0       	mov    0xc010f0bc,%eax
c0101b03:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101b06:	75 48                	jne    c0101b50 <delete_PCB+0xef>
c0101b08:	8b 45 08             	mov    0x8(%ebp),%eax
c0101b0b:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101b11:	83 c0 40             	add    $0x40,%eax
c0101b14:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101b19:	8b 00                	mov    (%eax),%eax
c0101b1b:	8b 40 08             	mov    0x8(%eax),%eax
c0101b1e:	a3 bc f0 10 c0       	mov    %eax,0xc010f0bc
c0101b23:	8b 45 08             	mov    0x8(%ebp),%eax
c0101b26:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101b2c:	83 c0 40             	add    $0x40,%eax
c0101b2f:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101b34:	8b 00                	mov    (%eax),%eax
c0101b36:	8b 55 08             	mov    0x8(%ebp),%edx
c0101b39:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c0101b3f:	83 c2 30             	add    $0x30,%edx
c0101b42:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c0101b48:	8b 52 0c             	mov    0xc(%edx),%edx
c0101b4b:	89 50 3c             	mov    %edx,0x3c(%eax)
c0101b4e:	eb 5b                	jmp    c0101bab <delete_PCB+0x14a>
c0101b50:	8b 45 08             	mov    0x8(%ebp),%eax
c0101b53:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101b59:	83 c0 40             	add    $0x40,%eax
c0101b5c:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101b61:	8b 00                	mov    (%eax),%eax
c0101b63:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101b66:	8b 45 08             	mov    0x8(%ebp),%eax
c0101b69:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101b6f:	83 c0 40             	add    $0x40,%eax
c0101b72:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101b77:	8b 00                	mov    (%eax),%eax
c0101b79:	8b 55 08             	mov    0x8(%ebp),%edx
c0101b7c:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c0101b82:	83 c2 30             	add    $0x30,%edx
c0101b85:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c0101b8b:	8b 52 0c             	mov    0xc(%edx),%edx
c0101b8e:	89 50 3c             	mov    %edx,0x3c(%eax)
c0101b91:	8b 45 08             	mov    0x8(%ebp),%eax
c0101b94:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101b9a:	83 c0 30             	add    $0x30,%eax
c0101b9d:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101ba2:	8b 40 0c             	mov    0xc(%eax),%eax
c0101ba5:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101ba8:	89 50 40             	mov    %edx,0x40(%eax)
c0101bab:	a1 00 d0 1a c0       	mov    0xc01ad000,%eax
c0101bb0:	83 e8 01             	sub    $0x1,%eax
c0101bb3:	a3 00 d0 1a c0       	mov    %eax,0xc01ad000
c0101bb8:	e9 b4 01 00 00       	jmp    c0101d71 <delete_PCB+0x310>
c0101bbd:	8b 45 08             	mov    0x8(%ebp),%eax
c0101bc0:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101bc6:	83 c0 30             	add    $0x30,%eax
c0101bc9:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101bce:	8b 40 04             	mov    0x4(%eax),%eax
c0101bd1:	83 f8 02             	cmp    $0x2,%eax
c0101bd4:	0f 85 d0 00 00 00    	jne    c0101caa <delete_PCB+0x249>
c0101bda:	a1 04 d0 1a c0       	mov    0xc01ad004,%eax
c0101bdf:	83 e8 01             	sub    $0x1,%eax
c0101be2:	a3 04 d0 1a c0       	mov    %eax,0xc01ad004
c0101be7:	a1 04 d0 1a c0       	mov    0xc01ad004,%eax
c0101bec:	85 c0                	test   %eax,%eax
c0101bee:	75 19                	jne    c0101c09 <delete_PCB+0x1a8>
c0101bf0:	c7 05 c0 f0 10 c0 00 	movl   $0x0,0xc010f0c0
c0101bf7:	00 00 00 
c0101bfa:	c7 05 c4 f0 10 c0 00 	movl   $0x0,0xc010f0c4
c0101c01:	00 00 00 
c0101c04:	e9 68 01 00 00       	jmp    c0101d71 <delete_PCB+0x310>
c0101c09:	a1 c4 f0 10 c0       	mov    0xc010f0c4,%eax
c0101c0e:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101c11:	75 1b                	jne    c0101c2e <delete_PCB+0x1cd>
c0101c13:	8b 45 08             	mov    0x8(%ebp),%eax
c0101c16:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101c1c:	83 c0 40             	add    $0x40,%eax
c0101c1f:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101c24:	8b 00                	mov    (%eax),%eax
c0101c26:	8b 40 08             	mov    0x8(%eax),%eax
c0101c29:	a3 c4 f0 10 c0       	mov    %eax,0xc010f0c4
c0101c2e:	8b 45 08             	mov    0x8(%ebp),%eax
c0101c31:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101c37:	83 c0 40             	add    $0x40,%eax
c0101c3a:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101c3f:	8b 00                	mov    (%eax),%eax
c0101c41:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101c44:	8b 45 08             	mov    0x8(%ebp),%eax
c0101c47:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101c4d:	83 c0 40             	add    $0x40,%eax
c0101c50:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101c55:	8b 00                	mov    (%eax),%eax
c0101c57:	8b 55 08             	mov    0x8(%ebp),%edx
c0101c5a:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c0101c60:	83 c2 30             	add    $0x30,%edx
c0101c63:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c0101c69:	8b 52 0c             	mov    0xc(%edx),%edx
c0101c6c:	89 50 3c             	mov    %edx,0x3c(%eax)
c0101c6f:	8b 45 08             	mov    0x8(%ebp),%eax
c0101c72:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101c78:	83 c0 30             	add    $0x30,%eax
c0101c7b:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101c80:	8b 40 0c             	mov    0xc(%eax),%eax
c0101c83:	85 c0                	test   %eax,%eax
c0101c85:	0f 84 e6 00 00 00    	je     c0101d71 <delete_PCB+0x310>
c0101c8b:	8b 45 08             	mov    0x8(%ebp),%eax
c0101c8e:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101c94:	83 c0 30             	add    $0x30,%eax
c0101c97:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101c9c:	8b 40 0c             	mov    0xc(%eax),%eax
c0101c9f:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101ca2:	89 50 40             	mov    %edx,0x40(%eax)
c0101ca5:	e9 c7 00 00 00       	jmp    c0101d71 <delete_PCB+0x310>
c0101caa:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101caf:	83 e8 01             	sub    $0x1,%eax
c0101cb2:	a3 10 3f 13 c0       	mov    %eax,0xc0133f10
c0101cb7:	a1 10 3f 13 c0       	mov    0xc0133f10,%eax
c0101cbc:	85 c0                	test   %eax,%eax
c0101cbe:	75 19                	jne    c0101cd9 <delete_PCB+0x278>
c0101cc0:	c7 05 c8 f0 10 c0 00 	movl   $0x0,0xc010f0c8
c0101cc7:	00 00 00 
c0101cca:	c7 05 cc f0 10 c0 00 	movl   $0x0,0xc010f0cc
c0101cd1:	00 00 00 
c0101cd4:	e9 98 00 00 00       	jmp    c0101d71 <delete_PCB+0x310>
c0101cd9:	a1 cc f0 10 c0       	mov    0xc010f0cc,%eax
c0101cde:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101ce1:	75 1b                	jne    c0101cfe <delete_PCB+0x29d>
c0101ce3:	8b 45 08             	mov    0x8(%ebp),%eax
c0101ce6:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101cec:	83 c0 40             	add    $0x40,%eax
c0101cef:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101cf4:	8b 00                	mov    (%eax),%eax
c0101cf6:	8b 40 08             	mov    0x8(%eax),%eax
c0101cf9:	a3 cc f0 10 c0       	mov    %eax,0xc010f0cc
c0101cfe:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d01:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101d07:	83 c0 40             	add    $0x40,%eax
c0101d0a:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d0f:	8b 00                	mov    (%eax),%eax
c0101d11:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101d14:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d17:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101d1d:	83 c0 40             	add    $0x40,%eax
c0101d20:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d25:	8b 00                	mov    (%eax),%eax
c0101d27:	8b 55 08             	mov    0x8(%ebp),%edx
c0101d2a:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c0101d30:	83 c2 30             	add    $0x30,%edx
c0101d33:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c0101d39:	8b 52 0c             	mov    0xc(%edx),%edx
c0101d3c:	89 50 3c             	mov    %edx,0x3c(%eax)
c0101d3f:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d42:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101d48:	83 c0 30             	add    $0x30,%eax
c0101d4b:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d50:	8b 40 0c             	mov    0xc(%eax),%eax
c0101d53:	85 c0                	test   %eax,%eax
c0101d55:	74 1a                	je     c0101d71 <delete_PCB+0x310>
c0101d57:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d5a:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101d60:	83 c0 30             	add    $0x30,%eax
c0101d63:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101d68:	8b 40 0c             	mov    0xc(%eax),%eax
c0101d6b:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0101d6e:	89 50 40             	mov    %edx,0x40(%eax)
c0101d71:	c9                   	leave  
c0101d72:	c3                   	ret    

c0101d73 <reschedule>:
c0101d73:	55                   	push   %ebp
c0101d74:	89 e5                	mov    %esp,%ebp
c0101d76:	83 ec 18             	sub    $0x18,%esp
c0101d79:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0101d7e:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101d81:	a1 00 d0 1a c0       	mov    0xc01ad000,%eax
c0101d86:	83 f8 01             	cmp    $0x1,%eax
c0101d89:	75 0b                	jne    c0101d96 <reschedule+0x23>
c0101d8b:	a1 04 d0 1a c0       	mov    0xc01ad004,%eax
c0101d90:	85 c0                	test   %eax,%eax
c0101d92:	75 02                	jne    c0101d96 <reschedule+0x23>
c0101d94:	eb fe                	jmp    c0101d94 <reschedule+0x21>
c0101d96:	a1 00 d0 1a c0       	mov    0xc01ad000,%eax
c0101d9b:	83 f8 01             	cmp    $0x1,%eax
c0101d9e:	0f 8e 80 00 00 00    	jle    c0101e24 <reschedule+0xb1>
c0101da4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101da7:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101dad:	83 c0 30             	add    $0x30,%eax
c0101db0:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101db5:	8b 40 0c             	mov    0xc(%eax),%eax
c0101db8:	83 c0 44             	add    $0x44,%eax
c0101dbb:	05 f8 0f 00 00       	add    $0xff8,%eax
c0101dc0:	83 ec 0c             	sub    $0xc,%esp
c0101dc3:	50                   	push   %eax
c0101dc4:	e8 65 e5 ff ff       	call   c010032e <set_tss>
c0101dc9:	83 c4 10             	add    $0x10,%esp
c0101dcc:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101dcf:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101dd5:	83 c0 30             	add    $0x30,%eax
c0101dd8:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101ddd:	8b 40 0c             	mov    0xc(%eax),%eax
c0101de0:	8b 40 08             	mov    0x8(%eax),%eax
c0101de3:	c1 e0 0c             	shl    $0xc,%eax
c0101de6:	05 00 10 17 c0       	add    $0xc0171000,%eax
c0101deb:	05 00 00 00 40       	add    $0x40000000,%eax
c0101df0:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0101df3:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101df6:	0f 22 d8             	mov    %eax,%cr3
c0101df9:	66 b8 23 00          	mov    $0x23,%ax
c0101dfd:	8e d8                	mov    %eax,%ds
c0101dff:	8e c0                	mov    %eax,%es
c0101e01:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101e04:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101e0a:	83 c0 30             	add    $0x30,%eax
c0101e0d:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101e12:	8b 40 0c             	mov    0xc(%eax),%eax
c0101e15:	8b 40 04             	mov    0x4(%eax),%eax
c0101e18:	89 c4                	mov    %eax,%esp
c0101e1a:	61                   	popa   
c0101e1b:	83 c4 08             	add    $0x8,%esp
c0101e1e:	cf                   	iret   
c0101e1f:	e9 26 01 00 00       	jmp    c0101f4a <reschedule+0x1d7>
c0101e24:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0101e29:	8b 15 c0 f0 10 c0    	mov    0xc010f0c0,%edx
c0101e2f:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c0101e35:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c0101e3b:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101e41:	83 c0 30             	add    $0x30,%eax
c0101e44:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101e49:	89 50 0c             	mov    %edx,0xc(%eax)
c0101e4c:	a1 c0 f0 10 c0       	mov    0xc010f0c0,%eax
c0101e51:	8b 15 b8 f0 10 c0    	mov    0xc010f0b8,%edx
c0101e57:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c0101e5d:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c0101e63:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101e69:	83 c0 40             	add    $0x40,%eax
c0101e6c:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101e71:	89 10                	mov    %edx,(%eax)
c0101e73:	a1 c4 f0 10 c0       	mov    0xc010f0c4,%eax
c0101e78:	a3 bc f0 10 c0       	mov    %eax,0xc010f0bc
c0101e7d:	c7 05 c0 f0 10 c0 00 	movl   $0x0,0xc010f0c0
c0101e84:	00 00 00 
c0101e87:	c7 05 c4 f0 10 c0 00 	movl   $0x0,0xc010f0c4
c0101e8e:	00 00 00 
c0101e91:	8b 15 00 d0 1a c0    	mov    0xc01ad000,%edx
c0101e97:	a1 04 d0 1a c0       	mov    0xc01ad004,%eax
c0101e9c:	01 d0                	add    %edx,%eax
c0101e9e:	a3 00 d0 1a c0       	mov    %eax,0xc01ad000
c0101ea3:	c7 05 04 d0 1a c0 00 	movl   $0x0,0xc01ad004
c0101eaa:	00 00 00 
c0101ead:	c7 45 f4 40 3f 13 c0 	movl   $0xc0133f40,-0xc(%ebp)
c0101eb4:	eb 13                	jmp    c0101ec9 <reschedule+0x156>
c0101eb6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101eb9:	c7 40 34 01 00 00 00 	movl   $0x1,0x34(%eax)
c0101ec0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101ec3:	8b 40 3c             	mov    0x3c(%eax),%eax
c0101ec6:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101ec9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0101ecd:	75 e7                	jne    c0101eb6 <reschedule+0x143>
c0101ecf:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101ed2:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101ed8:	83 c0 30             	add    $0x30,%eax
c0101edb:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101ee0:	8b 40 0c             	mov    0xc(%eax),%eax
c0101ee3:	83 c0 44             	add    $0x44,%eax
c0101ee6:	05 f8 0f 00 00       	add    $0xff8,%eax
c0101eeb:	83 ec 0c             	sub    $0xc,%esp
c0101eee:	50                   	push   %eax
c0101eef:	e8 3a e4 ff ff       	call   c010032e <set_tss>
c0101ef4:	83 c4 10             	add    $0x10,%esp
c0101ef7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101efa:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101f00:	83 c0 30             	add    $0x30,%eax
c0101f03:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101f08:	8b 40 0c             	mov    0xc(%eax),%eax
c0101f0b:	8b 40 08             	mov    0x8(%eax),%eax
c0101f0e:	c1 e0 0c             	shl    $0xc,%eax
c0101f11:	05 00 10 17 c0       	add    $0xc0171000,%eax
c0101f16:	05 00 00 00 40       	add    $0x40000000,%eax
c0101f1b:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0101f1e:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0101f21:	0f 22 d8             	mov    %eax,%cr3
c0101f24:	66 b8 23 00          	mov    $0x23,%ax
c0101f28:	8e d8                	mov    %eax,%ds
c0101f2a:	8e c0                	mov    %eax,%es
c0101f2c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101f2f:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101f35:	83 c0 30             	add    $0x30,%eax
c0101f38:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101f3d:	8b 40 0c             	mov    0xc(%eax),%eax
c0101f40:	8b 40 04             	mov    0x4(%eax),%eax
c0101f43:	89 c4                	mov    %eax,%esp
c0101f45:	61                   	popa   
c0101f46:	83 c4 08             	add    $0x8,%esp
c0101f49:	cf                   	iret   
c0101f4a:	c9                   	leave  
c0101f4b:	c3                   	ret    

c0101f4c <time_treat>:
c0101f4c:	55                   	push   %ebp
c0101f4d:	89 e5                	mov    %esp,%ebp
c0101f4f:	83 ec 08             	sub    $0x8,%esp
c0101f52:	a1 00 d0 1a c0       	mov    0xc01ad000,%eax
c0101f57:	83 f8 01             	cmp    $0x1,%eax
c0101f5a:	0f 84 d0 00 00 00    	je     c0102030 <time_treat+0xe4>
c0101f60:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0101f65:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101f6b:	83 c0 30             	add    $0x30,%eax
c0101f6e:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101f73:	8b 40 0c             	mov    0xc(%eax),%eax
c0101f76:	8b 50 38             	mov    0x38(%eax),%edx
c0101f79:	83 ea 01             	sub    $0x1,%edx
c0101f7c:	89 50 38             	mov    %edx,0x38(%eax)
c0101f7f:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0101f84:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101f8a:	83 c0 30             	add    $0x30,%eax
c0101f8d:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101f92:	8b 40 0c             	mov    0xc(%eax),%eax
c0101f95:	8b 40 38             	mov    0x38(%eax),%eax
c0101f98:	85 c0                	test   %eax,%eax
c0101f9a:	0f 85 90 00 00 00    	jne    c0102030 <time_treat+0xe4>
c0101fa0:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0101fa5:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101fab:	83 c0 30             	add    $0x30,%eax
c0101fae:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101fb3:	8b 40 0c             	mov    0xc(%eax),%eax
c0101fb6:	8b 40 08             	mov    0x8(%eax),%eax
c0101fb9:	89 c1                	mov    %eax,%ecx
c0101fbb:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c0101fc0:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0101fc6:	83 c0 30             	add    $0x30,%eax
c0101fc9:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c0101fce:	8b 40 0c             	mov    0xc(%eax),%eax
c0101fd1:	8b 40 30             	mov    0x30(%eax),%eax
c0101fd4:	8b 15 b8 f0 10 c0    	mov    0xc010f0b8,%edx
c0101fda:	69 d2 44 10 00 00    	imul   $0x1044,%edx,%edx
c0101fe0:	83 c2 30             	add    $0x30,%edx
c0101fe3:	81 c2 40 3f 13 c0    	add    $0xc0133f40,%edx
c0101fe9:	8b 52 0c             	mov    0xc(%edx),%edx
c0101fec:	83 c2 0c             	add    $0xc,%edx
c0101fef:	83 ec 08             	sub    $0x8,%esp
c0101ff2:	51                   	push   %ecx
c0101ff3:	50                   	push   %eax
c0101ff4:	68 c8 00 00 00       	push   $0xc8
c0101ff9:	52                   	push   %edx
c0101ffa:	ff 75 08             	pushl  0x8(%ebp)
c0101ffd:	6a 02                	push   $0x2
c0101fff:	e8 05 f7 ff ff       	call   c0101709 <add_PCB>
c0102004:	83 c4 20             	add    $0x20,%esp
c0102007:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c010200c:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0102012:	83 c0 30             	add    $0x30,%eax
c0102015:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010201a:	8b 40 0c             	mov    0xc(%eax),%eax
c010201d:	8b 00                	mov    (%eax),%eax
c010201f:	83 ec 0c             	sub    $0xc,%esp
c0102022:	50                   	push   %eax
c0102023:	e8 39 fa ff ff       	call   c0101a61 <delete_PCB>
c0102028:	83 c4 10             	add    $0x10,%esp
c010202b:	e8 43 fd ff ff       	call   c0101d73 <reschedule>
c0102030:	c9                   	leave  
c0102031:	c3                   	ret    

c0102032 <process_exit>:
c0102032:	55                   	push   %ebp
c0102033:	89 e5                	mov    %esp,%ebp
c0102035:	83 ec 08             	sub    $0x8,%esp
c0102038:	a1 b8 f0 10 c0       	mov    0xc010f0b8,%eax
c010203d:	69 c0 44 10 00 00    	imul   $0x1044,%eax,%eax
c0102043:	83 c0 30             	add    $0x30,%eax
c0102046:	05 40 3f 13 c0       	add    $0xc0133f40,%eax
c010204b:	8b 40 0c             	mov    0xc(%eax),%eax
c010204e:	8b 40 08             	mov    0x8(%eax),%eax
c0102051:	83 ec 0c             	sub    $0xc,%esp
c0102054:	50                   	push   %eax
c0102055:	e8 07 fa ff ff       	call   c0101a61 <delete_PCB>
c010205a:	83 c4 10             	add    $0x10,%esp
c010205d:	e8 11 fd ff ff       	call   c0101d73 <reschedule>
c0102062:	c9                   	leave  
c0102063:	c3                   	ret    

c0102064 <load_PCB>:
c0102064:	55                   	push   %ebp
c0102065:	89 e5                	mov    %esp,%ebp
c0102067:	83 ec 18             	sub    $0x18,%esp
c010206a:	e8 75 f5 ff ff       	call   c01015e4 <get_free_pid>
c010206f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102072:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c0102077:	8b 55 f0             	mov    -0x10(%ebp),%edx
c010207a:	c1 e2 0c             	shl    $0xc,%edx
c010207d:	81 c2 00 10 17 c0    	add    $0xc0171000,%edx
c0102083:	83 ec 04             	sub    $0x4,%esp
c0102086:	68 00 10 00 00       	push   $0x1000
c010208b:	50                   	push   %eax
c010208c:	52                   	push   %edx
c010208d:	e8 ef f0 ff ff       	call   c0101181 <my_memcpy>
c0102092:	83 c4 10             	add    $0x10,%esp
c0102095:	c7 45 ec 00 04 00 00 	movl   $0x400,-0x14(%ebp)
c010209c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01020a3:	eb 1d                	jmp    c01020c2 <load_PCB+0x5e>
c01020a5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01020a8:	0f b7 04 c5 44 f0 1a 	movzwl -0x3fe50fbc(,%eax,8),%eax
c01020af:	c0 
c01020b0:	8d 50 01             	lea    0x1(%eax),%edx
c01020b3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01020b6:	66 89 14 c5 44 f0 1a 	mov    %dx,-0x3fe50fbc(,%eax,8)
c01020bd:	c0 
c01020be:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01020c2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01020c5:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c01020c8:	7c db                	jl     c01020a5 <load_PCB+0x41>
c01020ca:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01020cd:	c1 e0 0c             	shl    $0xc,%eax
c01020d0:	05 00 10 17 c0       	add    $0xc0171000,%eax
c01020d5:	83 ec 08             	sub    $0x8,%esp
c01020d8:	50                   	push   %eax
c01020d9:	68 75 2a 10 c0       	push   $0xc0102a75
c01020de:	e8 79 f0 ff ff       	call   c010115c <printk>
c01020e3:	83 c4 10             	add    $0x10,%esp
c01020e6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01020e9:	c1 e0 0c             	shl    $0xc,%eax
c01020ec:	05 00 10 17 c0       	add    $0xc0171000,%eax
c01020f1:	83 ec 08             	sub    $0x8,%esp
c01020f4:	50                   	push   %eax
c01020f5:	ff 75 08             	pushl  0x8(%ebp)
c01020f8:	e8 52 f2 ff ff       	call   c010134f <load>
c01020fd:	83 c4 10             	add    $0x10,%esp
c0102100:	89 c1                	mov    %eax,%ecx
c0102102:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102105:	89 c2                	mov    %eax,%edx
c0102107:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c010210e:	89 c2                	mov    %eax,%edx
c0102110:	89 d0                	mov    %edx,%eax
c0102112:	c1 e0 04             	shl    $0x4,%eax
c0102115:	29 d0                	sub    %edx,%eax
c0102117:	83 c0 20             	add    $0x20,%eax
c010211a:	05 00 31 13 c0       	add    $0xc0133100,%eax
c010211f:	89 48 08             	mov    %ecx,0x8(%eax)
c0102122:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102125:	89 c2                	mov    %eax,%edx
c0102127:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c010212e:	89 c2                	mov    %eax,%edx
c0102130:	89 d0                	mov    %edx,%eax
c0102132:	c1 e0 04             	shl    $0x4,%eax
c0102135:	29 d0                	sub    %edx,%eax
c0102137:	83 c0 20             	add    $0x20,%eax
c010213a:	05 00 31 13 c0       	add    $0xc0133100,%eax
c010213f:	c7 40 0c 1b 00 00 00 	movl   $0x1b,0xc(%eax)
c0102146:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102149:	89 c2                	mov    %eax,%edx
c010214b:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102152:	89 c2                	mov    %eax,%edx
c0102154:	89 d0                	mov    %edx,%eax
c0102156:	c1 e0 04             	shl    $0x4,%eax
c0102159:	29 d0                	sub    %edx,%eax
c010215b:	83 c0 30             	add    $0x30,%eax
c010215e:	05 00 31 13 c0       	add    $0xc0133100,%eax
c0102163:	c7 00 02 02 00 00    	movl   $0x202,(%eax)
c0102169:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010216c:	89 c2                	mov    %eax,%edx
c010216e:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102175:	89 c2                	mov    %eax,%edx
c0102177:	89 d0                	mov    %edx,%eax
c0102179:	c1 e0 04             	shl    $0x4,%eax
c010217c:	29 d0                	sub    %edx,%eax
c010217e:	83 c0 30             	add    $0x30,%eax
c0102181:	05 00 31 13 c0       	add    $0xc0133100,%eax
c0102186:	c7 40 04 f0 ff 60 00 	movl   $0x60fff0,0x4(%eax)
c010218d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102190:	89 c2                	mov    %eax,%edx
c0102192:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102199:	89 c2                	mov    %eax,%edx
c010219b:	89 d0                	mov    %edx,%eax
c010219d:	c1 e0 04             	shl    $0x4,%eax
c01021a0:	29 d0                	sub    %edx,%eax
c01021a2:	83 c0 30             	add    $0x30,%eax
c01021a5:	05 00 31 13 c0       	add    $0xc0133100,%eax
c01021aa:	c7 40 08 23 00 00 00 	movl   $0x23,0x8(%eax)
c01021b1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01021b4:	89 c2                	mov    %eax,%edx
c01021b6:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01021bd:	89 c2                	mov    %eax,%edx
c01021bf:	89 d0                	mov    %edx,%eax
c01021c1:	c1 e0 04             	shl    $0x4,%eax
c01021c4:	29 d0                	sub    %edx,%eax
c01021c6:	05 00 31 13 c0       	add    $0xc0133100,%eax
c01021cb:	83 ec 08             	sub    $0x8,%esp
c01021ce:	ff 75 f0             	pushl  -0x10(%ebp)
c01021d1:	6a 00                	push   $0x0
c01021d3:	6a 64                	push   $0x64
c01021d5:	68 79 2a 10 c0       	push   $0xc0102a79
c01021da:	50                   	push   %eax
c01021db:	6a 01                	push   $0x1
c01021dd:	e8 27 f5 ff ff       	call   c0101709 <add_PCB>
c01021e2:	83 c4 20             	add    $0x20,%esp
c01021e5:	c9                   	leave  
c01021e6:	c3                   	ret    

c01021e7 <_paddr>:
c01021e7:	55                   	push   %ebp
c01021e8:	89 e5                	mov    %esp,%ebp
c01021ea:	83 ec 08             	sub    $0x8,%esp
c01021ed:	8b 45 10             	mov    0x10(%ebp),%eax
c01021f0:	3d ff ff ff bf       	cmp    $0xbfffffff,%eax
c01021f5:	77 16                	ja     c010220d <_paddr+0x26>
c01021f7:	ff 75 10             	pushl  0x10(%ebp)
c01021fa:	68 80 2a 10 c0       	push   $0xc0102a80
c01021ff:	ff 75 0c             	pushl  0xc(%ebp)
c0102202:	ff 75 08             	pushl  0x8(%ebp)
c0102205:	e8 52 ef ff ff       	call   c010115c <printk>
c010220a:	83 c4 10             	add    $0x10,%esp
c010220d:	8b 45 10             	mov    0x10(%ebp),%eax
c0102210:	05 00 00 00 40       	add    $0x40000000,%eax
c0102215:	c9                   	leave  
c0102216:	c3                   	ret    

c0102217 <_kaddr>:
c0102217:	55                   	push   %ebp
c0102218:	89 e5                	mov    %esp,%ebp
c010221a:	83 ec 08             	sub    $0x8,%esp
c010221d:	8b 45 10             	mov    0x10(%ebp),%eax
c0102220:	c1 e8 0c             	shr    $0xc,%eax
c0102223:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0102228:	76 13                	jbe    c010223d <_kaddr+0x26>
c010222a:	83 ec 08             	sub    $0x8,%esp
c010222d:	ff 75 10             	pushl  0x10(%ebp)
c0102230:	68 a4 2a 10 c0       	push   $0xc0102aa4
c0102235:	e8 22 ef ff ff       	call   c010115c <printk>
c010223a:	83 c4 10             	add    $0x10,%esp
c010223d:	8b 45 10             	mov    0x10(%ebp),%eax
c0102240:	2d 00 00 00 40       	sub    $0x40000000,%eax
c0102245:	c9                   	leave  
c0102246:	c3                   	ret    

c0102247 <page2pa>:
c0102247:	55                   	push   %ebp
c0102248:	89 e5                	mov    %esp,%ebp
c010224a:	8b 45 08             	mov    0x8(%ebp),%eax
c010224d:	ba 40 f0 1a c0       	mov    $0xc01af040,%edx
c0102252:	29 d0                	sub    %edx,%eax
c0102254:	c1 f8 03             	sar    $0x3,%eax
c0102257:	c1 e0 0c             	shl    $0xc,%eax
c010225a:	5d                   	pop    %ebp
c010225b:	c3                   	ret    

c010225c <pa2page>:
c010225c:	55                   	push   %ebp
c010225d:	89 e5                	mov    %esp,%ebp
c010225f:	83 ec 08             	sub    $0x8,%esp
c0102262:	8b 45 08             	mov    0x8(%ebp),%eax
c0102265:	c1 e8 0c             	shr    $0xc,%eax
c0102268:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c010226d:	76 10                	jbe    c010227f <pa2page+0x23>
c010226f:	83 ec 0c             	sub    $0xc,%esp
c0102272:	68 c8 2a 10 c0       	push   $0xc0102ac8
c0102277:	e8 e0 ee ff ff       	call   c010115c <printk>
c010227c:	83 c4 10             	add    $0x10,%esp
c010227f:	8b 45 08             	mov    0x8(%ebp),%eax
c0102282:	c1 e8 0c             	shr    $0xc,%eax
c0102285:	c1 e0 03             	shl    $0x3,%eax
c0102288:	05 40 f0 1a c0       	add    $0xc01af040,%eax
c010228d:	c9                   	leave  
c010228e:	c3                   	ret    

c010228f <page2kva>:
c010228f:	55                   	push   %ebp
c0102290:	89 e5                	mov    %esp,%ebp
c0102292:	83 ec 08             	sub    $0x8,%esp
c0102295:	ff 75 08             	pushl  0x8(%ebp)
c0102298:	e8 aa ff ff ff       	call   c0102247 <page2pa>
c010229d:	83 c4 04             	add    $0x4,%esp
c01022a0:	83 ec 04             	sub    $0x4,%esp
c01022a3:	50                   	push   %eax
c01022a4:	6a 52                	push   $0x52
c01022a6:	68 e7 2a 10 c0       	push   $0xc0102ae7
c01022ab:	e8 67 ff ff ff       	call   c0102217 <_kaddr>
c01022b0:	83 c4 10             	add    $0x10,%esp
c01022b3:	c9                   	leave  
c01022b4:	c3                   	ret    

c01022b5 <mm_alloc>:
c01022b5:	55                   	push   %ebp
c01022b6:	89 e5                	mov    %esp,%ebp
c01022b8:	83 ec 28             	sub    $0x28,%esp
c01022bb:	8b 45 0c             	mov    0xc(%ebp),%eax
c01022be:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01022c1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01022c4:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01022c9:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01022cc:	c7 45 e8 00 10 00 00 	movl   $0x1000,-0x18(%ebp)
c01022d3:	8b 55 10             	mov    0x10(%ebp),%edx
c01022d6:	8b 45 0c             	mov    0xc(%ebp),%eax
c01022d9:	01 c2                	add    %eax,%edx
c01022db:	8b 45 e8             	mov    -0x18(%ebp),%eax
c01022de:	01 d0                	add    %edx,%eax
c01022e0:	83 e8 01             	sub    $0x1,%eax
c01022e3:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01022e6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01022e9:	ba 00 00 00 00       	mov    $0x0,%edx
c01022ee:	f7 75 e8             	divl   -0x18(%ebp)
c01022f1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01022f4:	29 d0                	sub    %edx,%eax
c01022f6:	89 45 e0             	mov    %eax,-0x20(%ebp)
c01022f9:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01022fc:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01022ff:	eb 2b                	jmp    c010232c <mm_alloc+0x77>
c0102301:	83 ec 0c             	sub    $0xc,%esp
c0102304:	6a 00                	push   $0x0
c0102306:	e8 9c 01 00 00       	call   c01024a7 <page_alloc>
c010230b:	83 c4 10             	add    $0x10,%esp
c010230e:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0102311:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102314:	6a 07                	push   $0x7
c0102316:	50                   	push   %eax
c0102317:	ff 75 dc             	pushl  -0x24(%ebp)
c010231a:	ff 75 08             	pushl  0x8(%ebp)
c010231d:	e8 84 03 00 00       	call   c01026a6 <page_insert>
c0102322:	83 c4 10             	add    $0x10,%esp
c0102325:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
c010232c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010232f:	3b 45 e0             	cmp    -0x20(%ebp),%eax
c0102332:	72 cd                	jb     c0102301 <mm_alloc+0x4c>
c0102334:	c9                   	leave  
c0102335:	c3                   	ret    

c0102336 <init_kern_pgdir>:
c0102336:	55                   	push   %ebp
c0102337:	89 e5                	mov    %esp,%ebp
c0102339:	53                   	push   %ebx
c010233a:	83 ec 24             	sub    $0x24,%esp
c010233d:	c7 45 e8 00 10 11 c0 	movl   $0xc0111000,-0x18(%ebp)
c0102344:	c7 45 f0 00 20 11 c0 	movl   $0xc0112000,-0x10(%ebp)
c010234b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102352:	eb 3a                	jmp    c010238e <init_kern_pgdir+0x58>
c0102354:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102357:	05 00 03 00 00       	add    $0x300,%eax
c010235c:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102363:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102366:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0102369:	83 ec 04             	sub    $0x4,%esp
c010236c:	ff 75 f0             	pushl  -0x10(%ebp)
c010236f:	6a 42                	push   $0x42
c0102371:	68 f6 2a 10 c0       	push   $0xc0102af6
c0102376:	e8 6c fe ff ff       	call   c01021e7 <_paddr>
c010237b:	83 c4 10             	add    $0x10,%esp
c010237e:	83 c8 03             	or     $0x3,%eax
c0102381:	89 03                	mov    %eax,(%ebx)
c0102383:	81 45 f0 00 10 00 00 	addl   $0x1000,-0x10(%ebp)
c010238a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c010238e:	83 7d f4 1f          	cmpl   $0x1f,-0xc(%ebp)
c0102392:	7e c0                	jle    c0102354 <init_kern_pgdir+0x1e>
c0102394:	c7 45 ec 00 f0 ff 07 	movl   $0x7fff000,-0x14(%ebp)
c010239b:	83 6d f0 04          	subl   $0x4,-0x10(%ebp)
c010239f:	eb 18                	jmp    c01023b9 <init_kern_pgdir+0x83>
c01023a1:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01023a4:	83 c8 07             	or     $0x7,%eax
c01023a7:	89 c2                	mov    %eax,%edx
c01023a9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01023ac:	89 10                	mov    %edx,(%eax)
c01023ae:	83 6d f0 04          	subl   $0x4,-0x10(%ebp)
c01023b2:	81 6d ec 00 10 00 00 	subl   $0x1000,-0x14(%ebp)
c01023b9:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c01023bd:	79 e2                	jns    c01023a1 <init_kern_pgdir+0x6b>
c01023bf:	8b 45 e8             	mov    -0x18(%ebp),%eax
c01023c2:	a3 04 f0 1a c0       	mov    %eax,0xc01af004
c01023c7:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c01023cc:	83 ec 04             	sub    $0x4,%esp
c01023cf:	50                   	push   %eax
c01023d0:	6a 4f                	push   $0x4f
c01023d2:	68 f6 2a 10 c0       	push   $0xc0102af6
c01023d7:	e8 0b fe ff ff       	call   c01021e7 <_paddr>
c01023dc:	83 c4 10             	add    $0x10,%esp
c01023df:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01023e2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01023e5:	0f 22 d8             	mov    %eax,%cr3
c01023e8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c01023eb:	c9                   	leave  
c01023ec:	c3                   	ret    

c01023ed <page_init>:
c01023ed:	55                   	push   %ebp
c01023ee:	89 e5                	mov    %esp,%ebp
c01023f0:	83 ec 18             	sub    $0x18,%esp
c01023f3:	e8 3e ff ff ff       	call   c0102336 <init_kern_pgdir>
c01023f8:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
c01023ff:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102406:	eb 11                	jmp    c0102419 <page_init+0x2c>
c0102408:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010240b:	66 c7 04 c5 44 f0 1a 	movw   $0x1,-0x3fe50fbc(,%eax,8)
c0102412:	c0 01 00 
c0102415:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102419:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010241c:	3b 45 f4             	cmp    -0xc(%ebp),%eax
c010241f:	77 e7                	ja     c0102408 <page_init+0x1b>
c0102421:	c7 45 f4 ff 7f 00 00 	movl   $0x7fff,-0xc(%ebp)
c0102428:	eb 31                	jmp    c010245b <page_init+0x6e>
c010242a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010242d:	66 c7 04 c5 44 f0 1a 	movw   $0x0,-0x3fe50fbc(,%eax,8)
c0102434:	c0 00 00 
c0102437:	8b 15 00 00 11 c0    	mov    0xc0110000,%edx
c010243d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102440:	89 14 c5 40 f0 1a c0 	mov    %edx,-0x3fe50fc0(,%eax,8)
c0102447:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010244a:	c1 e0 03             	shl    $0x3,%eax
c010244d:	05 40 f0 1a c0       	add    $0xc01af040,%eax
c0102452:	a3 00 00 11 c0       	mov    %eax,0xc0110000
c0102457:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
c010245b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010245e:	3b 45 f4             	cmp    -0xc(%ebp),%eax
c0102461:	76 c7                	jbe    c010242a <page_init+0x3d>
c0102463:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
c010246a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010246d:	05 ff f9 00 00       	add    $0xf9ff,%eax
c0102472:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0102475:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102478:	ba 00 00 00 00       	mov    $0x0,%edx
c010247d:	f7 75 ec             	divl   -0x14(%ebp)
c0102480:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102483:	29 d0                	sub    %edx,%eax
c0102485:	89 c2                	mov    %eax,%edx
c0102487:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c010248c:	83 ec 0c             	sub    $0xc,%esp
c010248f:	6a 03                	push   $0x3
c0102491:	68 00 00 0a 00       	push   $0xa0000
c0102496:	52                   	push   %edx
c0102497:	68 00 00 0a 00       	push   $0xa0000
c010249c:	50                   	push   %eax
c010249d:	e8 a1 01 00 00       	call   c0102643 <boot_map_region>
c01024a2:	83 c4 20             	add    $0x20,%esp
c01024a5:	c9                   	leave  
c01024a6:	c3                   	ret    

c01024a7 <page_alloc>:
c01024a7:	55                   	push   %ebp
c01024a8:	89 e5                	mov    %esp,%ebp
c01024aa:	83 ec 18             	sub    $0x18,%esp
c01024ad:	a1 00 00 11 c0       	mov    0xc0110000,%eax
c01024b2:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01024b5:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c01024b9:	75 07                	jne    c01024c2 <page_alloc+0x1b>
c01024bb:	b8 00 00 00 00       	mov    $0x0,%eax
c01024c0:	eb 43                	jmp    c0102505 <page_alloc+0x5e>
c01024c2:	8b 45 08             	mov    0x8(%ebp),%eax
c01024c5:	83 e0 01             	and    $0x1,%eax
c01024c8:	85 c0                	test   %eax,%eax
c01024ca:	74 21                	je     c01024ed <page_alloc+0x46>
c01024cc:	83 ec 0c             	sub    $0xc,%esp
c01024cf:	ff 75 f4             	pushl  -0xc(%ebp)
c01024d2:	e8 b8 fd ff ff       	call   c010228f <page2kva>
c01024d7:	83 c4 10             	add    $0x10,%esp
c01024da:	83 ec 04             	sub    $0x4,%esp
c01024dd:	68 00 10 00 00       	push   $0x1000
c01024e2:	6a 00                	push   $0x0
c01024e4:	50                   	push   %eax
c01024e5:	e8 b4 ec ff ff       	call   c010119e <my_memset>
c01024ea:	83 c4 10             	add    $0x10,%esp
c01024ed:	a1 00 00 11 c0       	mov    0xc0110000,%eax
c01024f2:	8b 00                	mov    (%eax),%eax
c01024f4:	a3 00 00 11 c0       	mov    %eax,0xc0110000
c01024f9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01024fc:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0102502:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102505:	c9                   	leave  
c0102506:	c3                   	ret    

c0102507 <page_free>:
c0102507:	55                   	push   %ebp
c0102508:	89 e5                	mov    %esp,%ebp
c010250a:	8b 15 00 00 11 c0    	mov    0xc0110000,%edx
c0102510:	8b 45 08             	mov    0x8(%ebp),%eax
c0102513:	89 10                	mov    %edx,(%eax)
c0102515:	8b 45 08             	mov    0x8(%ebp),%eax
c0102518:	a3 00 00 11 c0       	mov    %eax,0xc0110000
c010251d:	5d                   	pop    %ebp
c010251e:	c3                   	ret    

c010251f <page_decref>:
c010251f:	55                   	push   %ebp
c0102520:	89 e5                	mov    %esp,%ebp
c0102522:	8b 45 08             	mov    0x8(%ebp),%eax
c0102525:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102529:	8d 50 ff             	lea    -0x1(%eax),%edx
c010252c:	8b 45 08             	mov    0x8(%ebp),%eax
c010252f:	66 89 50 04          	mov    %dx,0x4(%eax)
c0102533:	8b 45 08             	mov    0x8(%ebp),%eax
c0102536:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c010253a:	66 85 c0             	test   %ax,%ax
c010253d:	75 0b                	jne    c010254a <page_decref+0x2b>
c010253f:	ff 75 08             	pushl  0x8(%ebp)
c0102542:	e8 c0 ff ff ff       	call   c0102507 <page_free>
c0102547:	83 c4 04             	add    $0x4,%esp
c010254a:	c9                   	leave  
c010254b:	c3                   	ret    

c010254c <pgdir_walk>:
c010254c:	55                   	push   %ebp
c010254d:	89 e5                	mov    %esp,%ebp
c010254f:	53                   	push   %ebx
c0102550:	83 ec 14             	sub    $0x14,%esp
c0102553:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102556:	c1 e8 16             	shr    $0x16,%eax
c0102559:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010255c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010255f:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102566:	8b 45 08             	mov    0x8(%ebp),%eax
c0102569:	01 d0                	add    %edx,%eax
c010256b:	8b 00                	mov    (%eax),%eax
c010256d:	83 e0 01             	and    $0x1,%eax
c0102570:	85 c0                	test   %eax,%eax
c0102572:	74 31                	je     c01025a5 <pgdir_walk+0x59>
c0102574:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102577:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010257e:	8b 45 08             	mov    0x8(%ebp),%eax
c0102581:	01 d0                	add    %edx,%eax
c0102583:	8b 00                	mov    (%eax),%eax
c0102585:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c010258a:	83 ec 04             	sub    $0x4,%esp
c010258d:	50                   	push   %eax
c010258e:	68 c8 00 00 00       	push   $0xc8
c0102593:	68 f6 2a 10 c0       	push   $0xc0102af6
c0102598:	e8 7a fc ff ff       	call   c0102217 <_kaddr>
c010259d:	83 c4 10             	add    $0x10,%esp
c01025a0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01025a3:	eb 7c                	jmp    c0102621 <pgdir_walk+0xd5>
c01025a5:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c01025a9:	75 0a                	jne    c01025b5 <pgdir_walk+0x69>
c01025ab:	b8 00 00 00 00       	mov    $0x0,%eax
c01025b0:	e9 89 00 00 00       	jmp    c010263e <pgdir_walk+0xf2>
c01025b5:	83 ec 0c             	sub    $0xc,%esp
c01025b8:	6a 01                	push   $0x1
c01025ba:	e8 e8 fe ff ff       	call   c01024a7 <page_alloc>
c01025bf:	83 c4 10             	add    $0x10,%esp
c01025c2:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01025c5:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c01025c9:	75 07                	jne    c01025d2 <pgdir_walk+0x86>
c01025cb:	b8 00 00 00 00       	mov    $0x0,%eax
c01025d0:	eb 6c                	jmp    c010263e <pgdir_walk+0xf2>
c01025d2:	83 ec 0c             	sub    $0xc,%esp
c01025d5:	ff 75 ec             	pushl  -0x14(%ebp)
c01025d8:	e8 b2 fc ff ff       	call   c010228f <page2kva>
c01025dd:	83 c4 10             	add    $0x10,%esp
c01025e0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01025e3:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01025e6:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c01025ea:	8d 50 01             	lea    0x1(%eax),%edx
c01025ed:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01025f0:	66 89 50 04          	mov    %dx,0x4(%eax)
c01025f4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01025f7:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01025fe:	8b 45 08             	mov    0x8(%ebp),%eax
c0102601:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0102604:	83 ec 04             	sub    $0x4,%esp
c0102607:	ff 75 f4             	pushl  -0xc(%ebp)
c010260a:	68 d3 00 00 00       	push   $0xd3
c010260f:	68 f6 2a 10 c0       	push   $0xc0102af6
c0102614:	e8 ce fb ff ff       	call   c01021e7 <_paddr>
c0102619:	83 c4 10             	add    $0x10,%esp
c010261c:	83 c8 07             	or     $0x7,%eax
c010261f:	89 03                	mov    %eax,(%ebx)
c0102621:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102624:	c1 e8 0c             	shr    $0xc,%eax
c0102627:	25 ff 03 00 00       	and    $0x3ff,%eax
c010262c:	89 45 e8             	mov    %eax,-0x18(%ebp)
c010262f:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102632:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102639:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010263c:	01 d0                	add    %edx,%eax
c010263e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102641:	c9                   	leave  
c0102642:	c3                   	ret    

c0102643 <boot_map_region>:
c0102643:	55                   	push   %ebp
c0102644:	89 e5                	mov    %esp,%ebp
c0102646:	83 ec 18             	sub    $0x18,%esp
c0102649:	8b 45 10             	mov    0x10(%ebp),%eax
c010264c:	c1 e8 0c             	shr    $0xc,%eax
c010264f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102652:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102659:	eb 41                	jmp    c010269c <boot_map_region+0x59>
c010265b:	8b 45 0c             	mov    0xc(%ebp),%eax
c010265e:	83 ec 04             	sub    $0x4,%esp
c0102661:	6a 01                	push   $0x1
c0102663:	50                   	push   %eax
c0102664:	ff 75 08             	pushl  0x8(%ebp)
c0102667:	e8 e0 fe ff ff       	call   c010254c <pgdir_walk>
c010266c:	83 c4 10             	add    $0x10,%esp
c010266f:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102672:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102676:	75 02                	jne    c010267a <boot_map_region+0x37>
c0102678:	eb 2a                	jmp    c01026a4 <boot_map_region+0x61>
c010267a:	8b 45 18             	mov    0x18(%ebp),%eax
c010267d:	0b 45 14             	or     0x14(%ebp),%eax
c0102680:	83 c8 01             	or     $0x1,%eax
c0102683:	89 c2                	mov    %eax,%edx
c0102685:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102688:	89 10                	mov    %edx,(%eax)
c010268a:	81 45 0c 00 10 00 00 	addl   $0x1000,0xc(%ebp)
c0102691:	81 45 14 00 10 00 00 	addl   $0x1000,0x14(%ebp)
c0102698:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c010269c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010269f:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c01026a2:	7c b7                	jl     c010265b <boot_map_region+0x18>
c01026a4:	c9                   	leave  
c01026a5:	c3                   	ret    

c01026a6 <page_insert>:
c01026a6:	55                   	push   %ebp
c01026a7:	89 e5                	mov    %esp,%ebp
c01026a9:	83 ec 18             	sub    $0x18,%esp
c01026ac:	83 ec 04             	sub    $0x4,%esp
c01026af:	6a 01                	push   $0x1
c01026b1:	ff 75 10             	pushl  0x10(%ebp)
c01026b4:	ff 75 08             	pushl  0x8(%ebp)
c01026b7:	e8 90 fe ff ff       	call   c010254c <pgdir_walk>
c01026bc:	83 c4 10             	add    $0x10,%esp
c01026bf:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01026c2:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c01026c6:	75 07                	jne    c01026cf <page_insert+0x29>
c01026c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c01026cd:	eb 75                	jmp    c0102744 <page_insert+0x9e>
c01026cf:	83 ec 0c             	sub    $0xc,%esp
c01026d2:	ff 75 0c             	pushl  0xc(%ebp)
c01026d5:	e8 6d fb ff ff       	call   c0102247 <page2pa>
c01026da:	83 c4 10             	add    $0x10,%esp
c01026dd:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01026e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01026e3:	8b 00                	mov    (%eax),%eax
c01026e5:	83 e0 01             	and    $0x1,%eax
c01026e8:	85 c0                	test   %eax,%eax
c01026ea:	74 32                	je     c010271e <page_insert+0x78>
c01026ec:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01026ef:	8b 00                	mov    (%eax),%eax
c01026f1:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01026f6:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c01026f9:	75 12                	jne    c010270d <page_insert+0x67>
c01026fb:	8b 45 14             	mov    0x14(%ebp),%eax
c01026fe:	0b 45 f0             	or     -0x10(%ebp),%eax
c0102701:	83 c8 01             	or     $0x1,%eax
c0102704:	89 c2                	mov    %eax,%edx
c0102706:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102709:	89 10                	mov    %edx,(%eax)
c010270b:	eb 11                	jmp    c010271e <page_insert+0x78>
c010270d:	83 ec 08             	sub    $0x8,%esp
c0102710:	ff 75 10             	pushl  0x10(%ebp)
c0102713:	ff 75 08             	pushl  0x8(%ebp)
c0102716:	e8 7a 00 00 00       	call   c0102795 <page_remove>
c010271b:	83 c4 10             	add    $0x10,%esp
c010271e:	8b 45 14             	mov    0x14(%ebp),%eax
c0102721:	0b 45 f0             	or     -0x10(%ebp),%eax
c0102724:	83 c8 01             	or     $0x1,%eax
c0102727:	89 c2                	mov    %eax,%edx
c0102729:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010272c:	89 10                	mov    %edx,(%eax)
c010272e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102731:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102735:	8d 50 01             	lea    0x1(%eax),%edx
c0102738:	8b 45 0c             	mov    0xc(%ebp),%eax
c010273b:	66 89 50 04          	mov    %dx,0x4(%eax)
c010273f:	b8 00 00 00 00       	mov    $0x0,%eax
c0102744:	c9                   	leave  
c0102745:	c3                   	ret    

c0102746 <page_lookup>:
c0102746:	55                   	push   %ebp
c0102747:	89 e5                	mov    %esp,%ebp
c0102749:	83 ec 18             	sub    $0x18,%esp
c010274c:	83 ec 04             	sub    $0x4,%esp
c010274f:	6a 00                	push   $0x0
c0102751:	ff 75 0c             	pushl  0xc(%ebp)
c0102754:	ff 75 08             	pushl  0x8(%ebp)
c0102757:	e8 f0 fd ff ff       	call   c010254c <pgdir_walk>
c010275c:	83 c4 10             	add    $0x10,%esp
c010275f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102762:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102766:	75 07                	jne    c010276f <page_lookup+0x29>
c0102768:	b8 00 00 00 00       	mov    $0x0,%eax
c010276d:	eb 24                	jmp    c0102793 <page_lookup+0x4d>
c010276f:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0102773:	74 08                	je     c010277d <page_lookup+0x37>
c0102775:	8b 45 10             	mov    0x10(%ebp),%eax
c0102778:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010277b:	89 10                	mov    %edx,(%eax)
c010277d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102780:	8b 00                	mov    (%eax),%eax
c0102782:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102787:	83 ec 0c             	sub    $0xc,%esp
c010278a:	50                   	push   %eax
c010278b:	e8 cc fa ff ff       	call   c010225c <pa2page>
c0102790:	83 c4 10             	add    $0x10,%esp
c0102793:	c9                   	leave  
c0102794:	c3                   	ret    

c0102795 <page_remove>:
c0102795:	55                   	push   %ebp
c0102796:	89 e5                	mov    %esp,%ebp
c0102798:	83 ec 18             	sub    $0x18,%esp
c010279b:	8d 45 ec             	lea    -0x14(%ebp),%eax
c010279e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01027a1:	83 ec 04             	sub    $0x4,%esp
c01027a4:	ff 75 f4             	pushl  -0xc(%ebp)
c01027a7:	ff 75 0c             	pushl  0xc(%ebp)
c01027aa:	ff 75 08             	pushl  0x8(%ebp)
c01027ad:	e8 94 ff ff ff       	call   c0102746 <page_lookup>
c01027b2:	83 c4 10             	add    $0x10,%esp
c01027b5:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01027b8:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c01027bc:	74 2a                	je     c01027e8 <page_remove+0x53>
c01027be:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01027c1:	8b 00                	mov    (%eax),%eax
c01027c3:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c01027c9:	83 ec 0c             	sub    $0xc,%esp
c01027cc:	ff 75 f0             	pushl  -0x10(%ebp)
c01027cf:	e8 4b fd ff ff       	call   c010251f <page_decref>
c01027d4:	83 c4 10             	add    $0x10,%esp
c01027d7:	83 ec 08             	sub    $0x8,%esp
c01027da:	ff 75 0c             	pushl  0xc(%ebp)
c01027dd:	ff 75 08             	pushl  0x8(%ebp)
c01027e0:	e8 05 00 00 00       	call   c01027ea <tlb_invalidate>
c01027e5:	83 c4 10             	add    $0x10,%esp
c01027e8:	c9                   	leave  
c01027e9:	c3                   	ret    

c01027ea <tlb_invalidate>:
c01027ea:	55                   	push   %ebp
c01027eb:	89 e5                	mov    %esp,%ebp
c01027ed:	83 ec 10             	sub    $0x10,%esp
c01027f0:	8b 45 0c             	mov    0xc(%ebp),%eax
c01027f3:	89 45 fc             	mov    %eax,-0x4(%ebp)
c01027f6:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01027f9:	0f 01 38             	invlpg (%eax)
c01027fc:	c9                   	leave  
c01027fd:	c3                   	ret    

c01027fe <free_pgdir>:
c01027fe:	55                   	push   %ebp
c01027ff:	89 e5                	mov    %esp,%ebp
c0102801:	83 ec 18             	sub    $0x18,%esp
c0102804:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c010280b:	e9 09 01 00 00       	jmp    c0102919 <free_pgdir+0x11b>
c0102810:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102813:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010281a:	8b 45 08             	mov    0x8(%ebp),%eax
c010281d:	01 d0                	add    %edx,%eax
c010281f:	8b 00                	mov    (%eax),%eax
c0102821:	83 e0 01             	and    $0x1,%eax
c0102824:	85 c0                	test   %eax,%eax
c0102826:	0f 84 e9 00 00 00    	je     c0102915 <free_pgdir+0x117>
c010282c:	a1 04 f0 1a c0       	mov    0xc01af004,%eax
c0102831:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102834:	c1 e2 02             	shl    $0x2,%edx
c0102837:	01 d0                	add    %edx,%eax
c0102839:	8b 00                	mov    (%eax),%eax
c010283b:	83 e0 01             	and    $0x1,%eax
c010283e:	85 c0                	test   %eax,%eax
c0102840:	74 05                	je     c0102847 <free_pgdir+0x49>
c0102842:	e9 ce 00 00 00       	jmp    c0102915 <free_pgdir+0x117>
c0102847:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010284a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102851:	8b 45 08             	mov    0x8(%ebp),%eax
c0102854:	01 d0                	add    %edx,%eax
c0102856:	8b 00                	mov    (%eax),%eax
c0102858:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c010285d:	83 ec 04             	sub    $0x4,%esp
c0102860:	50                   	push   %eax
c0102861:	68 68 01 00 00       	push   $0x168
c0102866:	68 f6 2a 10 c0       	push   $0xc0102af6
c010286b:	e8 a7 f9 ff ff       	call   c0102217 <_kaddr>
c0102870:	83 c4 10             	add    $0x10,%esp
c0102873:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102876:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c010287d:	eb 4a                	jmp    c01028c9 <free_pgdir+0xcb>
c010287f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102882:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102889:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010288c:	01 d0                	add    %edx,%eax
c010288e:	8b 00                	mov    (%eax),%eax
c0102890:	83 e0 01             	and    $0x1,%eax
c0102893:	85 c0                	test   %eax,%eax
c0102895:	74 2e                	je     c01028c5 <free_pgdir+0xc7>
c0102897:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010289a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01028a1:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01028a4:	01 d0                	add    %edx,%eax
c01028a6:	8b 00                	mov    (%eax),%eax
c01028a8:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01028ad:	83 ec 0c             	sub    $0xc,%esp
c01028b0:	50                   	push   %eax
c01028b1:	e8 a6 f9 ff ff       	call   c010225c <pa2page>
c01028b6:	83 c4 10             	add    $0x10,%esp
c01028b9:	83 ec 0c             	sub    $0xc,%esp
c01028bc:	50                   	push   %eax
c01028bd:	e8 5d fc ff ff       	call   c010251f <page_decref>
c01028c2:	83 c4 10             	add    $0x10,%esp
c01028c5:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c01028c9:	81 7d f0 ff 03 00 00 	cmpl   $0x3ff,-0x10(%ebp)
c01028d0:	7e ad                	jle    c010287f <free_pgdir+0x81>
c01028d2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01028d5:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01028dc:	8b 45 08             	mov    0x8(%ebp),%eax
c01028df:	01 d0                	add    %edx,%eax
c01028e1:	8b 00                	mov    (%eax),%eax
c01028e3:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01028e8:	83 ec 0c             	sub    $0xc,%esp
c01028eb:	50                   	push   %eax
c01028ec:	e8 6b f9 ff ff       	call   c010225c <pa2page>
c01028f1:	83 c4 10             	add    $0x10,%esp
c01028f4:	83 ec 0c             	sub    $0xc,%esp
c01028f7:	50                   	push   %eax
c01028f8:	e8 22 fc ff ff       	call   c010251f <page_decref>
c01028fd:	83 c4 10             	add    $0x10,%esp
c0102900:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102903:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010290a:	8b 45 08             	mov    0x8(%ebp),%eax
c010290d:	01 d0                	add    %edx,%eax
c010290f:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0102915:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102919:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
c0102920:	0f 8e ea fe ff ff    	jle    c0102810 <free_pgdir+0x12>
c0102926:	c9                   	leave  
c0102927:	c3                   	ret    
