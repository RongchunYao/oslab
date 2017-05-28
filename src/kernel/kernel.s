
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

c010013b <entry>:
c010013b:	66 c7 05 72 04 00 00 	movw   $0x1234,0x472
c0100142:	34 12 
c0100144:	b8 00 f0 10 00       	mov    $0x10f000,%eax
c0100149:	0f 22 d8             	mov    %eax,%cr3
c010014c:	0f 20 c0             	mov    %cr0,%eax
c010014f:	0d 01 00 00 80       	or     $0x80000001,%eax
c0100154:	0f 22 c0             	mov    %eax,%cr0
c0100157:	b8 5e 01 10 c0       	mov    $0xc010015e,%eax
c010015c:	ff e0                	jmp    *%eax

c010015e <relocated>:
c010015e:	bd 00 00 00 00       	mov    $0x0,%ebp
c0100163:	bc 00 e0 10 c0       	mov    $0xc010e000,%esp
c0100168:	e8 64 08 00 00       	call   c01009d1 <main>

c010016d <spin>:
c010016d:	eb fe                	jmp    c010016d <spin>

c010016f <init_intr>:
c010016f:	55                   	push   %ebp
c0100170:	89 e5                	mov    %esp,%ebp
c0100172:	83 ec 70             	sub    $0x70,%esp
c0100175:	c7 45 fc 21 00 00 00 	movl   $0x21,-0x4(%ebp)
c010017c:	c6 45 fb ff          	movb   $0xff,-0x5(%ebp)
c0100180:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
c0100184:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0100187:	ee                   	out    %al,(%dx)
c0100188:	c7 45 f4 a1 00 00 00 	movl   $0xa1,-0xc(%ebp)
c010018f:	c6 45 f3 ff          	movb   $0xff,-0xd(%ebp)
c0100193:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
c0100197:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010019a:	ee                   	out    %al,(%dx)
c010019b:	c7 45 ec 20 00 00 00 	movl   $0x20,-0x14(%ebp)
c01001a2:	c6 45 eb 11          	movb   $0x11,-0x15(%ebp)
c01001a6:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
c01001aa:	8b 55 ec             	mov    -0x14(%ebp),%edx
c01001ad:	ee                   	out    %al,(%dx)
c01001ae:	c7 45 e4 21 00 00 00 	movl   $0x21,-0x1c(%ebp)
c01001b5:	c6 45 e3 20          	movb   $0x20,-0x1d(%ebp)
c01001b9:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
c01001bd:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c01001c0:	ee                   	out    %al,(%dx)
c01001c1:	c7 45 dc 21 00 00 00 	movl   $0x21,-0x24(%ebp)
c01001c8:	c6 45 db 04          	movb   $0x4,-0x25(%ebp)
c01001cc:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
c01001d0:	8b 55 dc             	mov    -0x24(%ebp),%edx
c01001d3:	ee                   	out    %al,(%dx)
c01001d4:	c7 45 d4 21 00 00 00 	movl   $0x21,-0x2c(%ebp)
c01001db:	c6 45 d3 03          	movb   $0x3,-0x2d(%ebp)
c01001df:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
c01001e3:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c01001e6:	ee                   	out    %al,(%dx)
c01001e7:	c7 45 cc a0 00 00 00 	movl   $0xa0,-0x34(%ebp)
c01001ee:	c6 45 cb 11          	movb   $0x11,-0x35(%ebp)
c01001f2:	0f b6 45 cb          	movzbl -0x35(%ebp),%eax
c01001f6:	8b 55 cc             	mov    -0x34(%ebp),%edx
c01001f9:	ee                   	out    %al,(%dx)
c01001fa:	c7 45 c4 a1 00 00 00 	movl   $0xa1,-0x3c(%ebp)
c0100201:	c6 45 c3 28          	movb   $0x28,-0x3d(%ebp)
c0100205:	0f b6 45 c3          	movzbl -0x3d(%ebp),%eax
c0100209:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c010020c:	ee                   	out    %al,(%dx)
c010020d:	c7 45 bc a1 00 00 00 	movl   $0xa1,-0x44(%ebp)
c0100214:	c6 45 bb 02          	movb   $0x2,-0x45(%ebp)
c0100218:	0f b6 45 bb          	movzbl -0x45(%ebp),%eax
c010021c:	8b 55 bc             	mov    -0x44(%ebp),%edx
c010021f:	ee                   	out    %al,(%dx)
c0100220:	c7 45 b4 a1 00 00 00 	movl   $0xa1,-0x4c(%ebp)
c0100227:	c6 45 b3 03          	movb   $0x3,-0x4d(%ebp)
c010022b:	0f b6 45 b3          	movzbl -0x4d(%ebp),%eax
c010022f:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c0100232:	ee                   	out    %al,(%dx)
c0100233:	c7 45 ac 20 00 00 00 	movl   $0x20,-0x54(%ebp)
c010023a:	c6 45 ab 68          	movb   $0x68,-0x55(%ebp)
c010023e:	0f b6 45 ab          	movzbl -0x55(%ebp),%eax
c0100242:	8b 55 ac             	mov    -0x54(%ebp),%edx
c0100245:	ee                   	out    %al,(%dx)
c0100246:	c7 45 a4 20 00 00 00 	movl   $0x20,-0x5c(%ebp)
c010024d:	c6 45 a3 0a          	movb   $0xa,-0x5d(%ebp)
c0100251:	0f b6 45 a3          	movzbl -0x5d(%ebp),%eax
c0100255:	8b 55 a4             	mov    -0x5c(%ebp),%edx
c0100258:	ee                   	out    %al,(%dx)
c0100259:	c7 45 9c a0 00 00 00 	movl   $0xa0,-0x64(%ebp)
c0100260:	c6 45 9b 68          	movb   $0x68,-0x65(%ebp)
c0100264:	0f b6 45 9b          	movzbl -0x65(%ebp),%eax
c0100268:	8b 55 9c             	mov    -0x64(%ebp),%edx
c010026b:	ee                   	out    %al,(%dx)
c010026c:	c7 45 94 a0 00 00 00 	movl   $0xa0,-0x6c(%ebp)
c0100273:	c6 45 93 0a          	movb   $0xa,-0x6d(%ebp)
c0100277:	0f b6 45 93          	movzbl -0x6d(%ebp),%eax
c010027b:	8b 55 94             	mov    -0x6c(%ebp),%edx
c010027e:	ee                   	out    %al,(%dx)
c010027f:	c9                   	leave  
c0100280:	c3                   	ret    

c0100281 <save_idt>:
c0100281:	55                   	push   %ebp
c0100282:	89 e5                	mov    %esp,%ebp
c0100284:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100287:	83 e8 01             	sub    $0x1,%eax
c010028a:	66 a3 a8 00 11 c0    	mov    %ax,0xc01100a8
c0100290:	8b 45 08             	mov    0x8(%ebp),%eax
c0100293:	66 a3 aa 00 11 c0    	mov    %ax,0xc01100aa
c0100299:	8b 45 08             	mov    0x8(%ebp),%eax
c010029c:	c1 e8 10             	shr    $0x10,%eax
c010029f:	66 a3 ac 00 11 c0    	mov    %ax,0xc01100ac
c01002a5:	b8 a8 00 11 c0       	mov    $0xc01100a8,%eax
c01002aa:	0f 01 18             	lidtl  (%eax)
c01002ad:	5d                   	pop    %ebp
c01002ae:	c3                   	ret    

c01002af <set_intr>:
c01002af:	55                   	push   %ebp
c01002b0:	89 e5                	mov    %esp,%ebp
c01002b2:	8b 45 10             	mov    0x10(%ebp),%eax
c01002b5:	89 c2                	mov    %eax,%edx
c01002b7:	8b 45 08             	mov    0x8(%ebp),%eax
c01002ba:	66 89 10             	mov    %dx,(%eax)
c01002bd:	8b 45 0c             	mov    0xc(%ebp),%eax
c01002c0:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c01002c7:	8b 45 08             	mov    0x8(%ebp),%eax
c01002ca:	66 89 50 02          	mov    %dx,0x2(%eax)
c01002ce:	8b 45 08             	mov    0x8(%ebp),%eax
c01002d1:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c01002d5:	8b 45 08             	mov    0x8(%ebp),%eax
c01002d8:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c01002dc:	83 e2 f0             	and    $0xfffffff0,%edx
c01002df:	83 ca 0e             	or     $0xe,%edx
c01002e2:	88 50 05             	mov    %dl,0x5(%eax)
c01002e5:	8b 45 08             	mov    0x8(%ebp),%eax
c01002e8:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c01002ec:	83 e2 ef             	and    $0xffffffef,%edx
c01002ef:	88 50 05             	mov    %dl,0x5(%eax)
c01002f2:	8b 45 14             	mov    0x14(%ebp),%eax
c01002f5:	83 e0 03             	and    $0x3,%eax
c01002f8:	89 c2                	mov    %eax,%edx
c01002fa:	8b 45 08             	mov    0x8(%ebp),%eax
c01002fd:	83 e2 03             	and    $0x3,%edx
c0100300:	89 d1                	mov    %edx,%ecx
c0100302:	c1 e1 05             	shl    $0x5,%ecx
c0100305:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c0100309:	83 e2 9f             	and    $0xffffff9f,%edx
c010030c:	09 ca                	or     %ecx,%edx
c010030e:	88 50 05             	mov    %dl,0x5(%eax)
c0100311:	8b 45 08             	mov    0x8(%ebp),%eax
c0100314:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c0100318:	83 ca 80             	or     $0xffffff80,%edx
c010031b:	88 50 05             	mov    %dl,0x5(%eax)
c010031e:	8b 45 10             	mov    0x10(%ebp),%eax
c0100321:	c1 e8 10             	shr    $0x10,%eax
c0100324:	89 c2                	mov    %eax,%edx
c0100326:	8b 45 08             	mov    0x8(%ebp),%eax
c0100329:	66 89 50 06          	mov    %dx,0x6(%eax)
c010032d:	5d                   	pop    %ebp
c010032e:	c3                   	ret    

c010032f <set_trap>:
c010032f:	55                   	push   %ebp
c0100330:	89 e5                	mov    %esp,%ebp
c0100332:	8b 45 10             	mov    0x10(%ebp),%eax
c0100335:	89 c2                	mov    %eax,%edx
c0100337:	8b 45 08             	mov    0x8(%ebp),%eax
c010033a:	66 89 10             	mov    %dx,(%eax)
c010033d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100340:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c0100347:	8b 45 08             	mov    0x8(%ebp),%eax
c010034a:	66 89 50 02          	mov    %dx,0x2(%eax)
c010034e:	8b 45 08             	mov    0x8(%ebp),%eax
c0100351:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0100355:	8b 45 08             	mov    0x8(%ebp),%eax
c0100358:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c010035c:	83 ca 0f             	or     $0xf,%edx
c010035f:	88 50 05             	mov    %dl,0x5(%eax)
c0100362:	8b 45 08             	mov    0x8(%ebp),%eax
c0100365:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c0100369:	83 e2 ef             	and    $0xffffffef,%edx
c010036c:	88 50 05             	mov    %dl,0x5(%eax)
c010036f:	8b 45 14             	mov    0x14(%ebp),%eax
c0100372:	83 e0 03             	and    $0x3,%eax
c0100375:	89 c2                	mov    %eax,%edx
c0100377:	8b 45 08             	mov    0x8(%ebp),%eax
c010037a:	83 e2 03             	and    $0x3,%edx
c010037d:	89 d1                	mov    %edx,%ecx
c010037f:	c1 e1 05             	shl    $0x5,%ecx
c0100382:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c0100386:	83 e2 9f             	and    $0xffffff9f,%edx
c0100389:	09 ca                	or     %ecx,%edx
c010038b:	88 50 05             	mov    %dl,0x5(%eax)
c010038e:	8b 45 08             	mov    0x8(%ebp),%eax
c0100391:	0f b6 50 05          	movzbl 0x5(%eax),%edx
c0100395:	83 ca 80             	or     $0xffffff80,%edx
c0100398:	88 50 05             	mov    %dl,0x5(%eax)
c010039b:	8b 45 10             	mov    0x10(%ebp),%eax
c010039e:	c1 e8 10             	shr    $0x10,%eax
c01003a1:	89 c2                	mov    %eax,%edx
c01003a3:	8b 45 08             	mov    0x8(%ebp),%eax
c01003a6:	66 89 50 06          	mov    %dx,0x6(%eax)
c01003aa:	5d                   	pop    %ebp
c01003ab:	c3                   	ret    

c01003ac <init_idt>:
c01003ac:	55                   	push   %ebp
c01003ad:	89 e5                	mov    %esp,%ebp
c01003af:	83 ec 10             	sub    $0x10,%esp
c01003b2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c01003b9:	eb 22                	jmp    c01003dd <init_idt+0x31>
c01003bb:	ba 49 06 10 c0       	mov    $0xc0100649,%edx
c01003c0:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01003c3:	c1 e0 03             	shl    $0x3,%eax
c01003c6:	05 40 30 13 c0       	add    $0xc0133040,%eax
c01003cb:	6a 00                	push   $0x0
c01003cd:	52                   	push   %edx
c01003ce:	6a 01                	push   $0x1
c01003d0:	50                   	push   %eax
c01003d1:	e8 59 ff ff ff       	call   c010032f <set_trap>
c01003d6:	83 c4 10             	add    $0x10,%esp
c01003d9:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c01003dd:	81 7d fc ff 00 00 00 	cmpl   $0xff,-0x4(%ebp)
c01003e4:	7e d5                	jle    c01003bb <init_idt+0xf>
c01003e6:	b8 af 05 10 c0       	mov    $0xc01005af,%eax
c01003eb:	6a 00                	push   $0x0
c01003ed:	50                   	push   %eax
c01003ee:	6a 01                	push   $0x1
c01003f0:	68 40 30 13 c0       	push   $0xc0133040
c01003f5:	e8 35 ff ff ff       	call   c010032f <set_trap>
c01003fa:	83 c4 10             	add    $0x10,%esp
c01003fd:	b8 b9 05 10 c0       	mov    $0xc01005b9,%eax
c0100402:	6a 00                	push   $0x0
c0100404:	50                   	push   %eax
c0100405:	6a 01                	push   $0x1
c0100407:	68 48 30 13 c0       	push   $0xc0133048
c010040c:	e8 1e ff ff ff       	call   c010032f <set_trap>
c0100411:	83 c4 10             	add    $0x10,%esp
c0100414:	b8 c3 05 10 c0       	mov    $0xc01005c3,%eax
c0100419:	6a 00                	push   $0x0
c010041b:	50                   	push   %eax
c010041c:	6a 01                	push   $0x1
c010041e:	68 50 30 13 c0       	push   $0xc0133050
c0100423:	e8 07 ff ff ff       	call   c010032f <set_trap>
c0100428:	83 c4 10             	add    $0x10,%esp
c010042b:	b8 cd 05 10 c0       	mov    $0xc01005cd,%eax
c0100430:	6a 00                	push   $0x0
c0100432:	50                   	push   %eax
c0100433:	6a 01                	push   $0x1
c0100435:	68 58 30 13 c0       	push   $0xc0133058
c010043a:	e8 f0 fe ff ff       	call   c010032f <set_trap>
c010043f:	83 c4 10             	add    $0x10,%esp
c0100442:	b8 d4 05 10 c0       	mov    $0xc01005d4,%eax
c0100447:	6a 00                	push   $0x0
c0100449:	50                   	push   %eax
c010044a:	6a 01                	push   $0x1
c010044c:	68 60 30 13 c0       	push   $0xc0133060
c0100451:	e8 d9 fe ff ff       	call   c010032f <set_trap>
c0100456:	83 c4 10             	add    $0x10,%esp
c0100459:	b8 db 05 10 c0       	mov    $0xc01005db,%eax
c010045e:	6a 00                	push   $0x0
c0100460:	50                   	push   %eax
c0100461:	6a 01                	push   $0x1
c0100463:	68 68 30 13 c0       	push   $0xc0133068
c0100468:	e8 c2 fe ff ff       	call   c010032f <set_trap>
c010046d:	83 c4 10             	add    $0x10,%esp
c0100470:	b8 e2 05 10 c0       	mov    $0xc01005e2,%eax
c0100475:	6a 00                	push   $0x0
c0100477:	50                   	push   %eax
c0100478:	6a 01                	push   $0x1
c010047a:	68 70 30 13 c0       	push   $0xc0133070
c010047f:	e8 ab fe ff ff       	call   c010032f <set_trap>
c0100484:	83 c4 10             	add    $0x10,%esp
c0100487:	b8 e9 05 10 c0       	mov    $0xc01005e9,%eax
c010048c:	6a 00                	push   $0x0
c010048e:	50                   	push   %eax
c010048f:	6a 01                	push   $0x1
c0100491:	68 78 30 13 c0       	push   $0xc0133078
c0100496:	e8 94 fe ff ff       	call   c010032f <set_trap>
c010049b:	83 c4 10             	add    $0x10,%esp
c010049e:	b8 f0 05 10 c0       	mov    $0xc01005f0,%eax
c01004a3:	6a 00                	push   $0x0
c01004a5:	50                   	push   %eax
c01004a6:	6a 01                	push   $0x1
c01004a8:	68 80 30 13 c0       	push   $0xc0133080
c01004ad:	e8 7d fe ff ff       	call   c010032f <set_trap>
c01004b2:	83 c4 10             	add    $0x10,%esp
c01004b5:	b8 f7 05 10 c0       	mov    $0xc01005f7,%eax
c01004ba:	6a 00                	push   $0x0
c01004bc:	50                   	push   %eax
c01004bd:	6a 01                	push   $0x1
c01004bf:	68 88 30 13 c0       	push   $0xc0133088
c01004c4:	e8 66 fe ff ff       	call   c010032f <set_trap>
c01004c9:	83 c4 10             	add    $0x10,%esp
c01004cc:	b8 fe 05 10 c0       	mov    $0xc01005fe,%eax
c01004d1:	6a 00                	push   $0x0
c01004d3:	50                   	push   %eax
c01004d4:	6a 01                	push   $0x1
c01004d6:	68 90 30 13 c0       	push   $0xc0133090
c01004db:	e8 4f fe ff ff       	call   c010032f <set_trap>
c01004e0:	83 c4 10             	add    $0x10,%esp
c01004e3:	b8 05 06 10 c0       	mov    $0xc0100605,%eax
c01004e8:	6a 00                	push   $0x0
c01004ea:	50                   	push   %eax
c01004eb:	6a 01                	push   $0x1
c01004ed:	68 98 30 13 c0       	push   $0xc0133098
c01004f2:	e8 38 fe ff ff       	call   c010032f <set_trap>
c01004f7:	83 c4 10             	add    $0x10,%esp
c01004fa:	b8 0c 06 10 c0       	mov    $0xc010060c,%eax
c01004ff:	6a 00                	push   $0x0
c0100501:	50                   	push   %eax
c0100502:	6a 01                	push   $0x1
c0100504:	68 a0 30 13 c0       	push   $0xc01330a0
c0100509:	e8 21 fe ff ff       	call   c010032f <set_trap>
c010050e:	83 c4 10             	add    $0x10,%esp
c0100511:	b8 13 06 10 c0       	mov    $0xc0100613,%eax
c0100516:	6a 00                	push   $0x0
c0100518:	50                   	push   %eax
c0100519:	6a 01                	push   $0x1
c010051b:	68 a8 30 13 c0       	push   $0xc01330a8
c0100520:	e8 0a fe ff ff       	call   c010032f <set_trap>
c0100525:	83 c4 10             	add    $0x10,%esp
c0100528:	b8 1a 06 10 c0       	mov    $0xc010061a,%eax
c010052d:	6a 00                	push   $0x0
c010052f:	50                   	push   %eax
c0100530:	6a 01                	push   $0x1
c0100532:	68 b0 30 13 c0       	push   $0xc01330b0
c0100537:	e8 f3 fd ff ff       	call   c010032f <set_trap>
c010053c:	83 c4 10             	add    $0x10,%esp
c010053f:	b8 21 06 10 c0       	mov    $0xc0100621,%eax
c0100544:	6a 00                	push   $0x0
c0100546:	50                   	push   %eax
c0100547:	6a 01                	push   $0x1
c0100549:	68 40 31 13 c0       	push   $0xc0133140
c010054e:	e8 5c fd ff ff       	call   c01002af <set_intr>
c0100553:	83 c4 10             	add    $0x10,%esp
c0100556:	b8 2b 06 10 c0       	mov    $0xc010062b,%eax
c010055b:	6a 00                	push   $0x0
c010055d:	50                   	push   %eax
c010055e:	6a 01                	push   $0x1
c0100560:	68 48 31 13 c0       	push   $0xc0133148
c0100565:	e8 45 fd ff ff       	call   c01002af <set_intr>
c010056a:	83 c4 10             	add    $0x10,%esp
c010056d:	b8 35 06 10 c0       	mov    $0xc0100635,%eax
c0100572:	6a 00                	push   $0x0
c0100574:	50                   	push   %eax
c0100575:	6a 01                	push   $0x1
c0100577:	68 b0 31 13 c0       	push   $0xc01331b0
c010057c:	e8 2e fd ff ff       	call   c01002af <set_intr>
c0100581:	83 c4 10             	add    $0x10,%esp
c0100584:	b8 3f 06 10 c0       	mov    $0xc010063f,%eax
c0100589:	6a 03                	push   $0x3
c010058b:	50                   	push   %eax
c010058c:	6a 01                	push   $0x1
c010058e:	68 40 34 13 c0       	push   $0xc0133440
c0100593:	e8 97 fd ff ff       	call   c010032f <set_trap>
c0100598:	83 c4 10             	add    $0x10,%esp
c010059b:	68 00 08 00 00       	push   $0x800
c01005a0:	68 40 30 13 c0       	push   $0xc0133040
c01005a5:	e8 d7 fc ff ff       	call   c0100281 <save_idt>
c01005aa:	83 c4 08             	add    $0x8,%esp
c01005ad:	c9                   	leave  
c01005ae:	c3                   	ret    

c01005af <vec0>:
c01005af:	fa                   	cli    
c01005b0:	6a 00                	push   $0x0
c01005b2:	6a 00                	push   $0x0
c01005b4:	e9 97 00 00 00       	jmp    c0100650 <asm_do_irq>

c01005b9 <vec1>:
c01005b9:	fa                   	cli    
c01005ba:	6a 00                	push   $0x0
c01005bc:	6a 01                	push   $0x1
c01005be:	e9 8d 00 00 00       	jmp    c0100650 <asm_do_irq>

c01005c3 <vec2>:
c01005c3:	fa                   	cli    
c01005c4:	6a 00                	push   $0x0
c01005c6:	6a 02                	push   $0x2
c01005c8:	e9 83 00 00 00       	jmp    c0100650 <asm_do_irq>

c01005cd <vec3>:
c01005cd:	fa                   	cli    
c01005ce:	6a 00                	push   $0x0
c01005d0:	6a 03                	push   $0x3
c01005d2:	eb 7c                	jmp    c0100650 <asm_do_irq>

c01005d4 <vec4>:
c01005d4:	fa                   	cli    
c01005d5:	6a 00                	push   $0x0
c01005d7:	6a 04                	push   $0x4
c01005d9:	eb 75                	jmp    c0100650 <asm_do_irq>

c01005db <vec5>:
c01005db:	fa                   	cli    
c01005dc:	6a 00                	push   $0x0
c01005de:	6a 05                	push   $0x5
c01005e0:	eb 6e                	jmp    c0100650 <asm_do_irq>

c01005e2 <vec6>:
c01005e2:	fa                   	cli    
c01005e3:	6a 00                	push   $0x0
c01005e5:	6a 06                	push   $0x6
c01005e7:	eb 67                	jmp    c0100650 <asm_do_irq>

c01005e9 <vec7>:
c01005e9:	fa                   	cli    
c01005ea:	6a 00                	push   $0x0
c01005ec:	6a 07                	push   $0x7
c01005ee:	eb 60                	jmp    c0100650 <asm_do_irq>

c01005f0 <vec8>:
c01005f0:	fa                   	cli    
c01005f1:	6a 00                	push   $0x0
c01005f3:	6a 08                	push   $0x8
c01005f5:	eb 59                	jmp    c0100650 <asm_do_irq>

c01005f7 <vec9>:
c01005f7:	fa                   	cli    
c01005f8:	6a 00                	push   $0x0
c01005fa:	6a 09                	push   $0x9
c01005fc:	eb 52                	jmp    c0100650 <asm_do_irq>

c01005fe <vec10>:
c01005fe:	fa                   	cli    
c01005ff:	6a 00                	push   $0x0
c0100601:	6a 0a                	push   $0xa
c0100603:	eb 4b                	jmp    c0100650 <asm_do_irq>

c0100605 <vec11>:
c0100605:	fa                   	cli    
c0100606:	6a 00                	push   $0x0
c0100608:	6a 0b                	push   $0xb
c010060a:	eb 44                	jmp    c0100650 <asm_do_irq>

c010060c <vec12>:
c010060c:	fa                   	cli    
c010060d:	6a 00                	push   $0x0
c010060f:	6a 0c                	push   $0xc
c0100611:	eb 3d                	jmp    c0100650 <asm_do_irq>

c0100613 <vec13>:
c0100613:	fa                   	cli    
c0100614:	6a 00                	push   $0x0
c0100616:	6a 0d                	push   $0xd
c0100618:	eb 36                	jmp    c0100650 <asm_do_irq>

c010061a <vec14>:
c010061a:	fa                   	cli    
c010061b:	6a 00                	push   $0x0
c010061d:	6a 0e                	push   $0xe
c010061f:	eb 2f                	jmp    c0100650 <asm_do_irq>

c0100621 <irq0>:
c0100621:	fa                   	cli    
c0100622:	6a 00                	push   $0x0
c0100624:	68 e8 03 00 00       	push   $0x3e8
c0100629:	eb 25                	jmp    c0100650 <asm_do_irq>

c010062b <irq1>:
c010062b:	fa                   	cli    
c010062c:	6a 00                	push   $0x0
c010062e:	68 e9 03 00 00       	push   $0x3e9
c0100633:	eb 1b                	jmp    c0100650 <asm_do_irq>

c0100635 <irq14>:
c0100635:	fa                   	cli    
c0100636:	6a 00                	push   $0x0
c0100638:	68 f6 03 00 00       	push   $0x3f6
c010063d:	eb 11                	jmp    c0100650 <asm_do_irq>

c010063f <syscall>:
c010063f:	fa                   	cli    
c0100640:	6a 00                	push   $0x0
c0100642:	68 80 00 00 00       	push   $0x80
c0100647:	eb 07                	jmp    c0100650 <asm_do_irq>

c0100649 <irq_empty>:
c0100649:	fa                   	cli    
c010064a:	6a 00                	push   $0x0
c010064c:	6a ff                	push   $0xffffffff
c010064e:	eb 00                	jmp    c0100650 <asm_do_irq>

c0100650 <asm_do_irq>:
c0100650:	60                   	pusha  
c0100651:	54                   	push   %esp
c0100652:	e8 08 00 00 00       	call   c010065f <irq_handle>
c0100657:	83 c4 04             	add    $0x4,%esp
c010065a:	61                   	popa   
c010065b:	83 c4 08             	add    $0x8,%esp
c010065e:	cf                   	iret   

c010065f <irq_handle>:
c010065f:	55                   	push   %ebp
c0100660:	89 e5                	mov    %esp,%ebp
c0100662:	83 ec 38             	sub    $0x38,%esp
c0100665:	8b 45 08             	mov    0x8(%ebp),%eax
c0100668:	8b 40 20             	mov    0x20(%eax),%eax
c010066b:	3d e8 03 00 00       	cmp    $0x3e8,%eax
c0100670:	75 28                	jne    c010069a <irq_handle+0x3b>
c0100672:	e8 89 f9 ff ff       	call   c0100000 <timer_event>
c0100677:	8b 45 08             	mov    0x8(%ebp),%eax
c010067a:	8b 40 2c             	mov    0x2c(%eax),%eax
c010067d:	83 f8 08             	cmp    $0x8,%eax
c0100680:	75 05                	jne    c0100687 <irq_handle+0x28>
c0100682:	e9 42 03 00 00       	jmp    c01009c9 <irq_handle+0x36a>
c0100687:	83 ec 0c             	sub    $0xc,%esp
c010068a:	ff 75 08             	pushl  0x8(%ebp)
c010068d:	e8 8e 14 00 00       	call   c0101b20 <time_treat>
c0100692:	83 c4 10             	add    $0x10,%esp
c0100695:	e9 2f 03 00 00       	jmp    c01009c9 <irq_handle+0x36a>
c010069a:	8b 45 08             	mov    0x8(%ebp),%eax
c010069d:	8b 40 20             	mov    0x20(%eax),%eax
c01006a0:	3d e9 03 00 00       	cmp    $0x3e9,%eax
c01006a5:	75 7b                	jne    c0100722 <irq_handle+0xc3>
c01006a7:	c7 45 ec 60 00 00 00 	movl   $0x60,-0x14(%ebp)
c01006ae:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01006b1:	89 c2                	mov    %eax,%edx
c01006b3:	ec                   	in     (%dx),%al
c01006b4:	88 45 eb             	mov    %al,-0x15(%ebp)
c01006b7:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
c01006bb:	0f b6 c0             	movzbl %al,%eax
c01006be:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01006c1:	c7 45 e4 61 00 00 00 	movl   $0x61,-0x1c(%ebp)
c01006c8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01006cb:	89 c2                	mov    %eax,%edx
c01006cd:	ec                   	in     (%dx),%al
c01006ce:	88 45 e3             	mov    %al,-0x1d(%ebp)
c01006d1:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
c01006d5:	0f b6 c0             	movzbl %al,%eax
c01006d8:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01006db:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01006de:	83 c8 80             	or     $0xffffff80,%eax
c01006e1:	0f b6 c0             	movzbl %al,%eax
c01006e4:	c7 45 dc 61 00 00 00 	movl   $0x61,-0x24(%ebp)
c01006eb:	88 45 db             	mov    %al,-0x25(%ebp)
c01006ee:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
c01006f2:	8b 55 dc             	mov    -0x24(%ebp),%edx
c01006f5:	ee                   	out    %al,(%dx)
c01006f6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01006f9:	0f b6 c0             	movzbl %al,%eax
c01006fc:	c7 45 d4 61 00 00 00 	movl   $0x61,-0x2c(%ebp)
c0100703:	88 45 d3             	mov    %al,-0x2d(%ebp)
c0100706:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
c010070a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c010070d:	ee                   	out    %al,(%dx)
c010070e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100711:	83 ec 0c             	sub    $0xc,%esp
c0100714:	50                   	push   %eax
c0100715:	e8 11 fa ff ff       	call   c010012b <keyboard_event>
c010071a:	83 c4 10             	add    $0x10,%esp
c010071d:	e9 a7 02 00 00       	jmp    c01009c9 <irq_handle+0x36a>
c0100722:	8b 45 08             	mov    0x8(%ebp),%eax
c0100725:	8b 40 20             	mov    0x20(%eax),%eax
c0100728:	3d f6 03 00 00       	cmp    $0x3f6,%eax
c010072d:	0f 84 96 02 00 00    	je     c01009c9 <irq_handle+0x36a>
c0100733:	8b 45 08             	mov    0x8(%ebp),%eax
c0100736:	8b 40 20             	mov    0x20(%eax),%eax
c0100739:	3d 80 00 00 00       	cmp    $0x80,%eax
c010073e:	0f 85 60 02 00 00    	jne    c01009a4 <irq_handle+0x345>
c0100744:	8b 45 08             	mov    0x8(%ebp),%eax
c0100747:	8b 40 1c             	mov    0x1c(%eax),%eax
c010074a:	83 f8 01             	cmp    $0x1,%eax
c010074d:	75 26                	jne    c0100775 <irq_handle+0x116>
c010074f:	8b 45 08             	mov    0x8(%ebp),%eax
c0100752:	8b 40 10             	mov    0x10(%eax),%eax
c0100755:	83 f8 01             	cmp    $0x1,%eax
c0100758:	0f 85 6b 02 00 00    	jne    c01009c9 <irq_handle+0x36a>
c010075e:	8b 45 08             	mov    0x8(%ebp),%eax
c0100761:	8b 40 18             	mov    0x18(%eax),%eax
c0100764:	83 ec 0c             	sub    $0xc,%esp
c0100767:	50                   	push   %eax
c0100768:	e8 fd 2b 00 00       	call   c010336a <printk>
c010076d:	83 c4 10             	add    $0x10,%esp
c0100770:	e9 54 02 00 00       	jmp    c01009c9 <irq_handle+0x36a>
c0100775:	8b 45 08             	mov    0x8(%ebp),%eax
c0100778:	8b 40 1c             	mov    0x1c(%eax),%eax
c010077b:	83 f8 02             	cmp    $0x2,%eax
c010077e:	75 35                	jne    c01007b5 <irq_handle+0x156>
c0100780:	8b 45 08             	mov    0x8(%ebp),%eax
c0100783:	8b 40 10             	mov    0x10(%eax),%eax
c0100786:	85 c0                	test   %eax,%eax
c0100788:	75 12                	jne    c010079c <irq_handle+0x13d>
c010078a:	e8 83 f8 ff ff       	call   c0100012 <get_time>
c010078f:	89 c2                	mov    %eax,%edx
c0100791:	8b 45 08             	mov    0x8(%ebp),%eax
c0100794:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100797:	e9 2d 02 00 00       	jmp    c01009c9 <irq_handle+0x36a>
c010079c:	8b 45 08             	mov    0x8(%ebp),%eax
c010079f:	8b 40 10             	mov    0x10(%eax),%eax
c01007a2:	83 f8 01             	cmp    $0x1,%eax
c01007a5:	0f 85 1e 02 00 00    	jne    c01009c9 <irq_handle+0x36a>
c01007ab:	e8 6c f8 ff ff       	call   c010001c <time_pop>
c01007b0:	e9 14 02 00 00       	jmp    c01009c9 <irq_handle+0x36a>
c01007b5:	8b 45 08             	mov    0x8(%ebp),%eax
c01007b8:	8b 40 1c             	mov    0x1c(%eax),%eax
c01007bb:	83 f8 03             	cmp    $0x3,%eax
c01007be:	75 35                	jne    c01007f5 <irq_handle+0x196>
c01007c0:	8b 45 08             	mov    0x8(%ebp),%eax
c01007c3:	8b 40 10             	mov    0x10(%eax),%eax
c01007c6:	85 c0                	test   %eax,%eax
c01007c8:	75 12                	jne    c01007dc <irq_handle+0x17d>
c01007ca:	e8 43 f9 ff ff       	call   c0100112 <last_key_code>
c01007cf:	89 c2                	mov    %eax,%edx
c01007d1:	8b 45 08             	mov    0x8(%ebp),%eax
c01007d4:	89 50 1c             	mov    %edx,0x1c(%eax)
c01007d7:	e9 ed 01 00 00       	jmp    c01009c9 <irq_handle+0x36a>
c01007dc:	8b 45 08             	mov    0x8(%ebp),%eax
c01007df:	8b 40 10             	mov    0x10(%eax),%eax
c01007e2:	83 f8 01             	cmp    $0x1,%eax
c01007e5:	0f 85 de 01 00 00    	jne    c01009c9 <irq_handle+0x36a>
c01007eb:	e8 2c f9 ff ff       	call   c010011c <reset_last_key>
c01007f0:	e9 d4 01 00 00       	jmp    c01009c9 <irq_handle+0x36a>
c01007f5:	8b 45 08             	mov    0x8(%ebp),%eax
c01007f8:	8b 40 1c             	mov    0x1c(%eax),%eax
c01007fb:	83 f8 04             	cmp    $0x4,%eax
c01007fe:	75 21                	jne    c0100821 <irq_handle+0x1c2>
c0100800:	8b 45 08             	mov    0x8(%ebp),%eax
c0100803:	8b 40 10             	mov    0x10(%eax),%eax
c0100806:	83 ec 04             	sub    $0x4,%esp
c0100809:	68 00 00 01 00       	push   $0x10000
c010080e:	50                   	push   %eax
c010080f:	68 00 00 0a c0       	push   $0xc00a0000
c0100814:	e8 76 2b 00 00       	call   c010338f <my_memcpy>
c0100819:	83 c4 10             	add    $0x10,%esp
c010081c:	e9 a8 01 00 00       	jmp    c01009c9 <irq_handle+0x36a>
c0100821:	8b 45 08             	mov    0x8(%ebp),%eax
c0100824:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100827:	83 f8 05             	cmp    $0x5,%eax
c010082a:	75 0a                	jne    c0100836 <irq_handle+0x1d7>
c010082c:	e8 5c 15 00 00       	call   c0101d8d <process_exit>
c0100831:	e9 93 01 00 00       	jmp    c01009c9 <irq_handle+0x36a>
c0100836:	8b 45 08             	mov    0x8(%ebp),%eax
c0100839:	8b 40 1c             	mov    0x1c(%eax),%eax
c010083c:	83 f8 06             	cmp    $0x6,%eax
c010083f:	75 12                	jne    c0100853 <irq_handle+0x1f4>
c0100841:	e8 e6 06 00 00       	call   c0100f2c <getpid>
c0100846:	89 c2                	mov    %eax,%edx
c0100848:	8b 45 08             	mov    0x8(%ebp),%eax
c010084b:	89 50 1c             	mov    %edx,0x1c(%eax)
c010084e:	e9 76 01 00 00       	jmp    c01009c9 <irq_handle+0x36a>
c0100853:	8b 45 08             	mov    0x8(%ebp),%eax
c0100856:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100859:	83 f8 07             	cmp    $0x7,%eax
c010085c:	75 1a                	jne    c0100878 <irq_handle+0x219>
c010085e:	8b 45 08             	mov    0x8(%ebp),%eax
c0100861:	8b 40 10             	mov    0x10(%eax),%eax
c0100864:	83 ec 08             	sub    $0x8,%esp
c0100867:	ff 75 08             	pushl  0x8(%ebp)
c010086a:	50                   	push   %eax
c010086b:	e8 30 17 00 00       	call   c0101fa0 <my_sleep>
c0100870:	83 c4 10             	add    $0x10,%esp
c0100873:	e9 51 01 00 00       	jmp    c01009c9 <irq_handle+0x36a>
c0100878:	8b 45 08             	mov    0x8(%ebp),%eax
c010087b:	8b 40 1c             	mov    0x1c(%eax),%eax
c010087e:	83 f8 08             	cmp    $0x8,%eax
c0100881:	75 1b                	jne    c010089e <irq_handle+0x23f>
c0100883:	83 ec 0c             	sub    $0xc,%esp
c0100886:	ff 75 08             	pushl  0x8(%ebp)
c0100889:	e8 0a 18 00 00       	call   c0102098 <my_fork>
c010088e:	83 c4 10             	add    $0x10,%esp
c0100891:	89 c2                	mov    %eax,%edx
c0100893:	8b 45 08             	mov    0x8(%ebp),%eax
c0100896:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100899:	e9 2b 01 00 00       	jmp    c01009c9 <irq_handle+0x36a>
c010089e:	8b 45 08             	mov    0x8(%ebp),%eax
c01008a1:	8b 40 1c             	mov    0x1c(%eax),%eax
c01008a4:	83 f8 09             	cmp    $0x9,%eax
c01008a7:	75 28                	jne    c01008d1 <irq_handle+0x272>
c01008a9:	8b 45 08             	mov    0x8(%ebp),%eax
c01008ac:	8b 40 18             	mov    0x18(%eax),%eax
c01008af:	89 c2                	mov    %eax,%edx
c01008b1:	8b 45 08             	mov    0x8(%ebp),%eax
c01008b4:	8b 40 10             	mov    0x10(%eax),%eax
c01008b7:	83 ec 08             	sub    $0x8,%esp
c01008ba:	52                   	push   %edx
c01008bb:	50                   	push   %eax
c01008bc:	e8 bc 19 00 00       	call   c010227d <pthread_create>
c01008c1:	83 c4 10             	add    $0x10,%esp
c01008c4:	89 c2                	mov    %eax,%edx
c01008c6:	8b 45 08             	mov    0x8(%ebp),%eax
c01008c9:	89 50 1c             	mov    %edx,0x1c(%eax)
c01008cc:	e9 f8 00 00 00       	jmp    c01009c9 <irq_handle+0x36a>
c01008d1:	8b 45 08             	mov    0x8(%ebp),%eax
c01008d4:	8b 40 1c             	mov    0x1c(%eax),%eax
c01008d7:	83 f8 0a             	cmp    $0xa,%eax
c01008da:	75 26                	jne    c0100902 <irq_handle+0x2a3>
c01008dc:	8b 45 08             	mov    0x8(%ebp),%eax
c01008df:	8b 40 18             	mov    0x18(%eax),%eax
c01008e2:	8b 55 08             	mov    0x8(%ebp),%edx
c01008e5:	8b 52 10             	mov    0x10(%edx),%edx
c01008e8:	83 ec 08             	sub    $0x8,%esp
c01008eb:	50                   	push   %eax
c01008ec:	52                   	push   %edx
c01008ed:	e8 b4 2e 00 00       	call   c01037a6 <sem_init>
c01008f2:	83 c4 10             	add    $0x10,%esp
c01008f5:	89 c2                	mov    %eax,%edx
c01008f7:	8b 45 08             	mov    0x8(%ebp),%eax
c01008fa:	89 50 1c             	mov    %edx,0x1c(%eax)
c01008fd:	e9 c7 00 00 00       	jmp    c01009c9 <irq_handle+0x36a>
c0100902:	8b 45 08             	mov    0x8(%ebp),%eax
c0100905:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100908:	83 f8 0b             	cmp    $0xb,%eax
c010090b:	75 1f                	jne    c010092c <irq_handle+0x2cd>
c010090d:	8b 45 08             	mov    0x8(%ebp),%eax
c0100910:	8b 40 10             	mov    0x10(%eax),%eax
c0100913:	83 ec 0c             	sub    $0xc,%esp
c0100916:	50                   	push   %eax
c0100917:	e8 ce 2e 00 00       	call   c01037ea <sem_destroy>
c010091c:	83 c4 10             	add    $0x10,%esp
c010091f:	89 c2                	mov    %eax,%edx
c0100921:	8b 45 08             	mov    0x8(%ebp),%eax
c0100924:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100927:	e9 9d 00 00 00       	jmp    c01009c9 <irq_handle+0x36a>
c010092c:	8b 45 08             	mov    0x8(%ebp),%eax
c010092f:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100932:	83 f8 0c             	cmp    $0xc,%eax
c0100935:	75 1f                	jne    c0100956 <irq_handle+0x2f7>
c0100937:	8b 45 08             	mov    0x8(%ebp),%eax
c010093a:	8b 40 10             	mov    0x10(%eax),%eax
c010093d:	83 ec 08             	sub    $0x8,%esp
c0100940:	ff 75 08             	pushl  0x8(%ebp)
c0100943:	50                   	push   %eax
c0100944:	e8 c6 2e 00 00       	call   c010380f <sem_wait>
c0100949:	83 c4 10             	add    $0x10,%esp
c010094c:	89 c2                	mov    %eax,%edx
c010094e:	8b 45 08             	mov    0x8(%ebp),%eax
c0100951:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100954:	eb 73                	jmp    c01009c9 <irq_handle+0x36a>
c0100956:	8b 45 08             	mov    0x8(%ebp),%eax
c0100959:	8b 40 1c             	mov    0x1c(%eax),%eax
c010095c:	83 f8 0d             	cmp    $0xd,%eax
c010095f:	75 1c                	jne    c010097d <irq_handle+0x31e>
c0100961:	8b 45 08             	mov    0x8(%ebp),%eax
c0100964:	8b 40 10             	mov    0x10(%eax),%eax
c0100967:	83 ec 0c             	sub    $0xc,%esp
c010096a:	50                   	push   %eax
c010096b:	e8 4c 2f 00 00       	call   c01038bc <sem_post>
c0100970:	83 c4 10             	add    $0x10,%esp
c0100973:	89 c2                	mov    %eax,%edx
c0100975:	8b 45 08             	mov    0x8(%ebp),%eax
c0100978:	89 50 1c             	mov    %edx,0x1c(%eax)
c010097b:	eb 4c                	jmp    c01009c9 <irq_handle+0x36a>
c010097d:	8b 45 08             	mov    0x8(%ebp),%eax
c0100980:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100983:	83 f8 0e             	cmp    $0xe,%eax
c0100986:	75 41                	jne    c01009c9 <irq_handle+0x36a>
c0100988:	8b 45 08             	mov    0x8(%ebp),%eax
c010098b:	8b 40 10             	mov    0x10(%eax),%eax
c010098e:	83 ec 0c             	sub    $0xc,%esp
c0100991:	50                   	push   %eax
c0100992:	e8 ed 2e 00 00       	call   c0103884 <sem_trywait>
c0100997:	83 c4 10             	add    $0x10,%esp
c010099a:	89 c2                	mov    %eax,%edx
c010099c:	8b 45 08             	mov    0x8(%ebp),%eax
c010099f:	89 50 1c             	mov    %edx,0x1c(%eax)
c01009a2:	eb 25                	jmp    c01009c9 <irq_handle+0x36a>
c01009a4:	83 ec 0c             	sub    $0xc,%esp
c01009a7:	ff 75 08             	pushl  0x8(%ebp)
c01009aa:	e8 8e 03 00 00       	call   c0100d3d <print_tf>
c01009af:	83 c4 10             	add    $0x10,%esp
c01009b2:	8b 45 08             	mov    0x8(%ebp),%eax
c01009b5:	8b 40 20             	mov    0x20(%eax),%eax
c01009b8:	83 ec 08             	sub    $0x8,%esp
c01009bb:	50                   	push   %eax
c01009bc:	68 f4 3b 10 c0       	push   $0xc0103bf4
c01009c1:	e8 a4 29 00 00       	call   c010336a <printk>
c01009c6:	83 c4 10             	add    $0x10,%esp
c01009c9:	c9                   	leave  
c01009ca:	c3                   	ret    

c01009cb <disable_interrupt>:
c01009cb:	55                   	push   %ebp
c01009cc:	89 e5                	mov    %esp,%ebp
c01009ce:	fa                   	cli    
c01009cf:	5d                   	pop    %ebp
c01009d0:	c3                   	ret    

c01009d1 <main>:
c01009d1:	8d 4c 24 04          	lea    0x4(%esp),%ecx
c01009d5:	83 e4 f0             	and    $0xfffffff0,%esp
c01009d8:	ff 71 fc             	pushl  -0x4(%ecx)
c01009db:	55                   	push   %ebp
c01009dc:	89 e5                	mov    %esp,%ebp
c01009de:	51                   	push   %ecx
c01009df:	83 ec 04             	sub    $0x4,%esp
c01009e2:	83 ec 0c             	sub    $0xc,%esp
c01009e5:	68 1c 3c 10 c0       	push   $0xc0103c1c
c01009ea:	e8 7b 29 00 00       	call   c010336a <printk>
c01009ef:	83 c4 10             	add    $0x10,%esp
c01009f2:	e8 d4 ff ff ff       	call   c01009cb <disable_interrupt>
c01009f7:	e8 77 2f 00 00       	call   c0103973 <init_serial>
c01009fc:	e8 86 31 00 00       	call   c0103b87 <init_timer>
c0100a01:	e8 69 f7 ff ff       	call   c010016f <init_intr>
c0100a06:	e8 a1 f9 ff ff       	call   c01003ac <init_idt>
c0100a0b:	e8 65 2c 00 00       	call   c0103675 <init_seg>
c0100a10:	e8 83 1e 00 00       	call   c0102898 <page_init>
c0100a15:	e8 9c 05 00 00       	call   c0100fb6 <init_PCB>
c0100a1a:	83 ec 08             	sub    $0x8,%esp
c0100a1d:	68 33 3c 10 c0       	push   $0xc0103c33
c0100a22:	68 00 b0 04 00       	push   $0x4b000
c0100a27:	e8 0c 14 00 00       	call   c0101e38 <load_PCB>
c0100a2c:	83 c4 10             	add    $0x10,%esp
c0100a2f:	83 ec 08             	sub    $0x8,%esp
c0100a32:	68 38 3c 10 c0       	push   $0xc0103c38
c0100a37:	68 00 90 01 00       	push   $0x19000
c0100a3c:	e8 f7 13 00 00       	call   c0101e38 <load_PCB>
c0100a41:	83 c4 10             	add    $0x10,%esp
c0100a44:	e8 ba 04 00 00       	call   c0100f03 <debug>
c0100a49:	e8 82 0e 00 00       	call   c01018d0 <reschedule>
c0100a4e:	eb fe                	jmp    c0100a4e <main+0x7d>

c0100a50 <_paddr>:
c0100a50:	55                   	push   %ebp
c0100a51:	89 e5                	mov    %esp,%ebp
c0100a53:	83 ec 08             	sub    $0x8,%esp
c0100a56:	8b 45 10             	mov    0x10(%ebp),%eax
c0100a59:	3d ff ff ff bf       	cmp    $0xbfffffff,%eax
c0100a5e:	77 16                	ja     c0100a76 <_paddr+0x26>
c0100a60:	ff 75 10             	pushl  0x10(%ebp)
c0100a63:	68 40 3c 10 c0       	push   $0xc0103c40
c0100a68:	ff 75 0c             	pushl  0xc(%ebp)
c0100a6b:	ff 75 08             	pushl  0x8(%ebp)
c0100a6e:	e8 f7 28 00 00       	call   c010336a <printk>
c0100a73:	83 c4 10             	add    $0x10,%esp
c0100a76:	8b 45 10             	mov    0x10(%ebp),%eax
c0100a79:	05 00 00 00 40       	add    $0x40000000,%eax
c0100a7e:	c9                   	leave  
c0100a7f:	c3                   	ret    

c0100a80 <waitdisk>:
c0100a80:	55                   	push   %ebp
c0100a81:	89 e5                	mov    %esp,%ebp
c0100a83:	83 ec 10             	sub    $0x10,%esp
c0100a86:	90                   	nop
c0100a87:	c7 45 fc f7 01 00 00 	movl   $0x1f7,-0x4(%ebp)
c0100a8e:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100a91:	89 c2                	mov    %eax,%edx
c0100a93:	ec                   	in     (%dx),%al
c0100a94:	88 45 fb             	mov    %al,-0x5(%ebp)
c0100a97:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
c0100a9b:	0f b6 c0             	movzbl %al,%eax
c0100a9e:	25 c0 00 00 00       	and    $0xc0,%eax
c0100aa3:	83 f8 40             	cmp    $0x40,%eax
c0100aa6:	75 df                	jne    c0100a87 <waitdisk+0x7>
c0100aa8:	c9                   	leave  
c0100aa9:	c3                   	ret    

c0100aaa <readsect>:
c0100aaa:	55                   	push   %ebp
c0100aab:	89 e5                	mov    %esp,%ebp
c0100aad:	57                   	push   %edi
c0100aae:	53                   	push   %ebx
c0100aaf:	83 ec 40             	sub    $0x40,%esp
c0100ab2:	e8 c9 ff ff ff       	call   c0100a80 <waitdisk>
c0100ab7:	c7 45 f4 f2 01 00 00 	movl   $0x1f2,-0xc(%ebp)
c0100abe:	c6 45 f3 01          	movb   $0x1,-0xd(%ebp)
c0100ac2:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
c0100ac6:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0100ac9:	ee                   	out    %al,(%dx)
c0100aca:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100acd:	0f b6 c0             	movzbl %al,%eax
c0100ad0:	c7 45 ec f3 01 00 00 	movl   $0x1f3,-0x14(%ebp)
c0100ad7:	88 45 eb             	mov    %al,-0x15(%ebp)
c0100ada:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
c0100ade:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0100ae1:	ee                   	out    %al,(%dx)
c0100ae2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100ae5:	c1 e8 08             	shr    $0x8,%eax
c0100ae8:	0f b6 c0             	movzbl %al,%eax
c0100aeb:	c7 45 e4 f4 01 00 00 	movl   $0x1f4,-0x1c(%ebp)
c0100af2:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0100af5:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
c0100af9:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0100afc:	ee                   	out    %al,(%dx)
c0100afd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100b00:	c1 e8 10             	shr    $0x10,%eax
c0100b03:	0f b6 c0             	movzbl %al,%eax
c0100b06:	c7 45 dc f5 01 00 00 	movl   $0x1f5,-0x24(%ebp)
c0100b0d:	88 45 db             	mov    %al,-0x25(%ebp)
c0100b10:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
c0100b14:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0100b17:	ee                   	out    %al,(%dx)
c0100b18:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100b1b:	c1 e8 18             	shr    $0x18,%eax
c0100b1e:	83 c8 e0             	or     $0xffffffe0,%eax
c0100b21:	0f b6 c0             	movzbl %al,%eax
c0100b24:	c7 45 d4 f6 01 00 00 	movl   $0x1f6,-0x2c(%ebp)
c0100b2b:	88 45 d3             	mov    %al,-0x2d(%ebp)
c0100b2e:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
c0100b32:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0100b35:	ee                   	out    %al,(%dx)
c0100b36:	c7 45 cc f7 01 00 00 	movl   $0x1f7,-0x34(%ebp)
c0100b3d:	c6 45 cb 20          	movb   $0x20,-0x35(%ebp)
c0100b41:	0f b6 45 cb          	movzbl -0x35(%ebp),%eax
c0100b45:	8b 55 cc             	mov    -0x34(%ebp),%edx
c0100b48:	ee                   	out    %al,(%dx)
c0100b49:	e8 32 ff ff ff       	call   c0100a80 <waitdisk>
c0100b4e:	c7 45 c4 f0 01 00 00 	movl   $0x1f0,-0x3c(%ebp)
c0100b55:	8b 45 08             	mov    0x8(%ebp),%eax
c0100b58:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0100b5b:	c7 45 bc 80 00 00 00 	movl   $0x80,-0x44(%ebp)
c0100b62:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0100b65:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0100b68:	8b 45 bc             	mov    -0x44(%ebp),%eax
c0100b6b:	89 cb                	mov    %ecx,%ebx
c0100b6d:	89 df                	mov    %ebx,%edi
c0100b6f:	89 c1                	mov    %eax,%ecx
c0100b71:	fc                   	cld    
c0100b72:	f2 6d                	repnz insl (%dx),%es:(%edi)
c0100b74:	89 c8                	mov    %ecx,%eax
c0100b76:	89 fb                	mov    %edi,%ebx
c0100b78:	89 5d c0             	mov    %ebx,-0x40(%ebp)
c0100b7b:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0100b7e:	83 c4 40             	add    $0x40,%esp
c0100b81:	5b                   	pop    %ebx
c0100b82:	5f                   	pop    %edi
c0100b83:	5d                   	pop    %ebp
c0100b84:	c3                   	ret    

c0100b85 <read_disk>:
c0100b85:	55                   	push   %ebp
c0100b86:	89 e5                	mov    %esp,%ebp
c0100b88:	83 ec 10             	sub    $0x10,%esp
c0100b8b:	8b 55 0c             	mov    0xc(%ebp),%edx
c0100b8e:	8b 45 08             	mov    0x8(%ebp),%eax
c0100b91:	01 d0                	add    %edx,%eax
c0100b93:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0100b96:	8b 45 10             	mov    0x10(%ebp),%eax
c0100b99:	99                   	cltd   
c0100b9a:	c1 ea 17             	shr    $0x17,%edx
c0100b9d:	01 d0                	add    %edx,%eax
c0100b9f:	25 ff 01 00 00       	and    $0x1ff,%eax
c0100ba4:	29 d0                	sub    %edx,%eax
c0100ba6:	f7 d8                	neg    %eax
c0100ba8:	01 45 08             	add    %eax,0x8(%ebp)
c0100bab:	8b 45 10             	mov    0x10(%ebp),%eax
c0100bae:	8d 90 ff 01 00 00    	lea    0x1ff(%eax),%edx
c0100bb4:	85 c0                	test   %eax,%eax
c0100bb6:	0f 48 c2             	cmovs  %edx,%eax
c0100bb9:	c1 f8 09             	sar    $0x9,%eax
c0100bbc:	83 c0 01             	add    $0x1,%eax
c0100bbf:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0100bc2:	eb 1a                	jmp    c0100bde <read_disk+0x59>
c0100bc4:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100bc7:	50                   	push   %eax
c0100bc8:	ff 75 08             	pushl  0x8(%ebp)
c0100bcb:	e8 da fe ff ff       	call   c0100aaa <readsect>
c0100bd0:	83 c4 08             	add    $0x8,%esp
c0100bd3:	81 45 08 00 02 00 00 	addl   $0x200,0x8(%ebp)
c0100bda:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0100bde:	8b 45 08             	mov    0x8(%ebp),%eax
c0100be1:	3b 45 f8             	cmp    -0x8(%ebp),%eax
c0100be4:	72 de                	jb     c0100bc4 <read_disk+0x3f>
c0100be6:	c9                   	leave  
c0100be7:	c3                   	ret    

c0100be8 <load>:
c0100be8:	55                   	push   %ebp
c0100be9:	89 e5                	mov    %esp,%ebp
c0100beb:	83 ec 28             	sub    $0x28,%esp
c0100bee:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0100bf5:	83 ec 04             	sub    $0x4,%esp
c0100bf8:	68 00 10 00 00       	push   $0x1000
c0100bfd:	6a 00                	push   $0x0
c0100bff:	ff 75 0c             	pushl  0xc(%ebp)
c0100c02:	e8 59 1b 00 00       	call   c0102760 <mm_alloc>
c0100c07:	83 c4 10             	add    $0x10,%esp
c0100c0a:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c0d:	83 ec 04             	sub    $0x4,%esp
c0100c10:	50                   	push   %eax
c0100c11:	68 00 10 00 00       	push   $0x1000
c0100c16:	ff 75 ec             	pushl  -0x14(%ebp)
c0100c19:	e8 67 ff ff ff       	call   c0100b85 <read_disk>
c0100c1e:	83 c4 10             	add    $0x10,%esp
c0100c21:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100c24:	8b 50 1c             	mov    0x1c(%eax),%edx
c0100c27:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100c2a:	01 d0                	add    %edx,%eax
c0100c2c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100c2f:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100c32:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
c0100c36:	0f b7 c0             	movzwl %ax,%eax
c0100c39:	c1 e0 05             	shl    $0x5,%eax
c0100c3c:	89 c2                	mov    %eax,%edx
c0100c3e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100c41:	01 d0                	add    %edx,%eax
c0100c43:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0100c46:	83 ec 04             	sub    $0x4,%esp
c0100c49:	ff 75 0c             	pushl  0xc(%ebp)
c0100c4c:	6a 51                	push   $0x51
c0100c4e:	68 63 3c 10 c0       	push   $0xc0103c63
c0100c53:	e8 f8 fd ff ff       	call   c0100a50 <_paddr>
c0100c58:	83 c4 10             	add    $0x10,%esp
c0100c5b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0100c5e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0100c61:	0f 22 d8             	mov    %eax,%cr3
c0100c64:	eb 7b                	jmp    c0100ce1 <load+0xf9>
c0100c66:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100c69:	8b 40 14             	mov    0x14(%eax),%eax
c0100c6c:	89 c2                	mov    %eax,%edx
c0100c6e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100c71:	8b 40 0c             	mov    0xc(%eax),%eax
c0100c74:	83 ec 04             	sub    $0x4,%esp
c0100c77:	52                   	push   %edx
c0100c78:	50                   	push   %eax
c0100c79:	ff 75 0c             	pushl  0xc(%ebp)
c0100c7c:	e8 df 1a 00 00       	call   c0102760 <mm_alloc>
c0100c81:	83 c4 10             	add    $0x10,%esp
c0100c84:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100c87:	8b 50 04             	mov    0x4(%eax),%edx
c0100c8a:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c8d:	01 d0                	add    %edx,%eax
c0100c8f:	89 c1                	mov    %eax,%ecx
c0100c91:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100c94:	8b 40 10             	mov    0x10(%eax),%eax
c0100c97:	89 c2                	mov    %eax,%edx
c0100c99:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100c9c:	8b 40 0c             	mov    0xc(%eax),%eax
c0100c9f:	83 ec 04             	sub    $0x4,%esp
c0100ca2:	51                   	push   %ecx
c0100ca3:	52                   	push   %edx
c0100ca4:	50                   	push   %eax
c0100ca5:	e8 db fe ff ff       	call   c0100b85 <read_disk>
c0100caa:	83 c4 10             	add    $0x10,%esp
c0100cad:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100cb0:	8b 50 0c             	mov    0xc(%eax),%edx
c0100cb3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100cb6:	8b 40 10             	mov    0x10(%eax),%eax
c0100cb9:	01 d0                	add    %edx,%eax
c0100cbb:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100cbe:	eb 0a                	jmp    c0100cca <load+0xe2>
c0100cc0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0100cc3:	c6 00 00             	movb   $0x0,(%eax)
c0100cc6:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0100cca:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100ccd:	8b 50 0c             	mov    0xc(%eax),%edx
c0100cd0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100cd3:	8b 40 14             	mov    0x14(%eax),%eax
c0100cd6:	01 d0                	add    %edx,%eax
c0100cd8:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0100cdb:	77 e3                	ja     c0100cc0 <load+0xd8>
c0100cdd:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c0100ce1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100ce4:	3b 45 e8             	cmp    -0x18(%ebp),%eax
c0100ce7:	0f 82 79 ff ff ff    	jb     c0100c66 <load+0x7e>
c0100ced:	83 ec 04             	sub    $0x4,%esp
c0100cf0:	68 00 00 01 00       	push   $0x10000
c0100cf5:	68 00 00 60 00       	push   $0x600000
c0100cfa:	ff 75 0c             	pushl  0xc(%ebp)
c0100cfd:	e8 5e 1a 00 00       	call   c0102760 <mm_alloc>
c0100d02:	83 c4 10             	add    $0x10,%esp
c0100d05:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100d08:	8b 40 18             	mov    0x18(%eax),%eax
c0100d0b:	c9                   	leave  
c0100d0c:	c3                   	ret    

c0100d0d <_paddr>:
c0100d0d:	55                   	push   %ebp
c0100d0e:	89 e5                	mov    %esp,%ebp
c0100d10:	83 ec 08             	sub    $0x8,%esp
c0100d13:	8b 45 10             	mov    0x10(%ebp),%eax
c0100d16:	3d ff ff ff bf       	cmp    $0xbfffffff,%eax
c0100d1b:	77 16                	ja     c0100d33 <_paddr+0x26>
c0100d1d:	ff 75 10             	pushl  0x10(%ebp)
c0100d20:	68 74 3c 10 c0       	push   $0xc0103c74
c0100d25:	ff 75 0c             	pushl  0xc(%ebp)
c0100d28:	ff 75 08             	pushl  0x8(%ebp)
c0100d2b:	e8 3a 26 00 00       	call   c010336a <printk>
c0100d30:	83 c4 10             	add    $0x10,%esp
c0100d33:	8b 45 10             	mov    0x10(%ebp),%eax
c0100d36:	05 00 00 00 40       	add    $0x40000000,%eax
c0100d3b:	c9                   	leave  
c0100d3c:	c3                   	ret    

c0100d3d <print_tf>:
c0100d3d:	55                   	push   %ebp
c0100d3e:	89 e5                	mov    %esp,%ebp
c0100d40:	83 ec 08             	sub    $0x8,%esp
c0100d43:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d46:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100d49:	83 ec 08             	sub    $0x8,%esp
c0100d4c:	50                   	push   %eax
c0100d4d:	68 97 3c 10 c0       	push   $0xc0103c97
c0100d52:	e8 13 26 00 00       	call   c010336a <printk>
c0100d57:	83 c4 10             	add    $0x10,%esp
c0100d5a:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d5d:	8b 40 10             	mov    0x10(%eax),%eax
c0100d60:	83 ec 08             	sub    $0x8,%esp
c0100d63:	50                   	push   %eax
c0100d64:	68 9e 3c 10 c0       	push   $0xc0103c9e
c0100d69:	e8 fc 25 00 00       	call   c010336a <printk>
c0100d6e:	83 c4 10             	add    $0x10,%esp
c0100d71:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d74:	8b 40 18             	mov    0x18(%eax),%eax
c0100d77:	83 ec 08             	sub    $0x8,%esp
c0100d7a:	50                   	push   %eax
c0100d7b:	68 a5 3c 10 c0       	push   $0xc0103ca5
c0100d80:	e8 e5 25 00 00       	call   c010336a <printk>
c0100d85:	83 c4 10             	add    $0x10,%esp
c0100d88:	8b 45 08             	mov    0x8(%ebp),%eax
c0100d8b:	8b 40 14             	mov    0x14(%eax),%eax
c0100d8e:	83 ec 08             	sub    $0x8,%esp
c0100d91:	50                   	push   %eax
c0100d92:	68 ac 3c 10 c0       	push   $0xc0103cac
c0100d97:	e8 ce 25 00 00       	call   c010336a <printk>
c0100d9c:	83 c4 10             	add    $0x10,%esp
c0100d9f:	8b 45 08             	mov    0x8(%ebp),%eax
c0100da2:	8b 00                	mov    (%eax),%eax
c0100da4:	83 ec 08             	sub    $0x8,%esp
c0100da7:	50                   	push   %eax
c0100da8:	68 b3 3c 10 c0       	push   $0xc0103cb3
c0100dad:	e8 b8 25 00 00       	call   c010336a <printk>
c0100db2:	83 c4 10             	add    $0x10,%esp
c0100db5:	8b 45 08             	mov    0x8(%ebp),%eax
c0100db8:	8b 40 34             	mov    0x34(%eax),%eax
c0100dbb:	83 ec 08             	sub    $0x8,%esp
c0100dbe:	50                   	push   %eax
c0100dbf:	68 ba 3c 10 c0       	push   $0xc0103cba
c0100dc4:	e8 a1 25 00 00       	call   c010336a <printk>
c0100dc9:	83 c4 10             	add    $0x10,%esp
c0100dcc:	8b 45 08             	mov    0x8(%ebp),%eax
c0100dcf:	8b 40 08             	mov    0x8(%eax),%eax
c0100dd2:	83 ec 08             	sub    $0x8,%esp
c0100dd5:	50                   	push   %eax
c0100dd6:	68 c1 3c 10 c0       	push   $0xc0103cc1
c0100ddb:	e8 8a 25 00 00       	call   c010336a <printk>
c0100de0:	83 c4 10             	add    $0x10,%esp
c0100de3:	8b 45 08             	mov    0x8(%ebp),%eax
c0100de6:	8b 40 28             	mov    0x28(%eax),%eax
c0100de9:	83 ec 08             	sub    $0x8,%esp
c0100dec:	50                   	push   %eax
c0100ded:	68 c8 3c 10 c0       	push   $0xc0103cc8
c0100df2:	e8 73 25 00 00       	call   c010336a <printk>
c0100df7:	83 c4 10             	add    $0x10,%esp
c0100dfa:	8b 45 08             	mov    0x8(%ebp),%eax
c0100dfd:	8b 40 2c             	mov    0x2c(%eax),%eax
c0100e00:	83 ec 08             	sub    $0x8,%esp
c0100e03:	50                   	push   %eax
c0100e04:	68 cf 3c 10 c0       	push   $0xc0103ccf
c0100e09:	e8 5c 25 00 00       	call   c010336a <printk>
c0100e0e:	83 c4 10             	add    $0x10,%esp
c0100e11:	c9                   	leave  
c0100e12:	c3                   	ret    

c0100e13 <list>:
c0100e13:	55                   	push   %ebp
c0100e14:	89 e5                	mov    %esp,%ebp
c0100e16:	83 ec 18             	sub    $0x18,%esp
c0100e19:	c7 45 f4 40 4f 13 c0 	movl   $0xc0134f40,-0xc(%ebp)
c0100e20:	eb 27                	jmp    c0100e49 <list+0x36>
c0100e22:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100e25:	8d 50 0c             	lea    0xc(%eax),%edx
c0100e28:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100e2b:	8b 40 08             	mov    0x8(%eax),%eax
c0100e2e:	83 ec 04             	sub    $0x4,%esp
c0100e31:	52                   	push   %edx
c0100e32:	50                   	push   %eax
c0100e33:	68 d8 3c 10 c0       	push   $0xc0103cd8
c0100e38:	e8 2d 25 00 00       	call   c010336a <printk>
c0100e3d:	83 c4 10             	add    $0x10,%esp
c0100e40:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100e43:	8b 40 3c             	mov    0x3c(%eax),%eax
c0100e46:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100e49:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0100e4d:	75 d3                	jne    c0100e22 <list+0xf>
c0100e4f:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c0100e54:	c1 e0 02             	shl    $0x2,%eax
c0100e57:	89 c2                	mov    %eax,%edx
c0100e59:	c1 e2 04             	shl    $0x4,%edx
c0100e5c:	01 d0                	add    %edx,%eax
c0100e5e:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0100e63:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100e66:	eb 32                	jmp    c0100e9a <list+0x87>
c0100e68:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c0100e6d:	85 c0                	test   %eax,%eax
c0100e6f:	75 02                	jne    c0100e73 <list+0x60>
c0100e71:	eb 2d                	jmp    c0100ea0 <list+0x8d>
c0100e73:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100e76:	8d 50 0c             	lea    0xc(%eax),%edx
c0100e79:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100e7c:	8b 40 08             	mov    0x8(%eax),%eax
c0100e7f:	83 ec 04             	sub    $0x4,%esp
c0100e82:	52                   	push   %edx
c0100e83:	50                   	push   %eax
c0100e84:	68 fc 3c 10 c0       	push   $0xc0103cfc
c0100e89:	e8 dc 24 00 00       	call   c010336a <printk>
c0100e8e:	83 c4 10             	add    $0x10,%esp
c0100e91:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100e94:	8b 40 3c             	mov    0x3c(%eax),%eax
c0100e97:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100e9a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0100e9e:	75 c8                	jne    c0100e68 <list+0x55>
c0100ea0:	a1 c0 00 11 c0       	mov    0xc01100c0,%eax
c0100ea5:	c1 e0 02             	shl    $0x2,%eax
c0100ea8:	89 c2                	mov    %eax,%edx
c0100eaa:	c1 e2 04             	shl    $0x4,%edx
c0100ead:	01 d0                	add    %edx,%eax
c0100eaf:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0100eb4:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100eb7:	eb 32                	jmp    c0100eeb <list+0xd8>
c0100eb9:	a1 c0 00 11 c0       	mov    0xc01100c0,%eax
c0100ebe:	85 c0                	test   %eax,%eax
c0100ec0:	75 02                	jne    c0100ec4 <list+0xb1>
c0100ec2:	eb 2d                	jmp    c0100ef1 <list+0xde>
c0100ec4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100ec7:	8d 50 0c             	lea    0xc(%eax),%edx
c0100eca:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100ecd:	8b 40 08             	mov    0x8(%eax),%eax
c0100ed0:	83 ec 04             	sub    $0x4,%esp
c0100ed3:	52                   	push   %edx
c0100ed4:	50                   	push   %eax
c0100ed5:	68 20 3d 10 c0       	push   $0xc0103d20
c0100eda:	e8 8b 24 00 00       	call   c010336a <printk>
c0100edf:	83 c4 10             	add    $0x10,%esp
c0100ee2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100ee5:	8b 40 3c             	mov    0x3c(%eax),%eax
c0100ee8:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100eeb:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0100eef:	75 c8                	jne    c0100eb9 <list+0xa6>
c0100ef1:	83 ec 0c             	sub    $0xc,%esp
c0100ef4:	68 43 3d 10 c0       	push   $0xc0103d43
c0100ef9:	e8 6c 24 00 00       	call   c010336a <printk>
c0100efe:	83 c4 10             	add    $0x10,%esp
c0100f01:	c9                   	leave  
c0100f02:	c3                   	ret    

c0100f03 <debug>:
c0100f03:	55                   	push   %ebp
c0100f04:	89 e5                	mov    %esp,%ebp
c0100f06:	83 ec 08             	sub    $0x8,%esp
c0100f09:	8b 0d 10 4f 13 c0    	mov    0xc0134f10,%ecx
c0100f0f:	8b 15 04 20 17 c0    	mov    0xc0172004,%edx
c0100f15:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c0100f1a:	51                   	push   %ecx
c0100f1b:	52                   	push   %edx
c0100f1c:	50                   	push   %eax
c0100f1d:	68 4c 3d 10 c0       	push   $0xc0103d4c
c0100f22:	e8 43 24 00 00       	call   c010336a <printk>
c0100f27:	83 c4 10             	add    $0x10,%esp
c0100f2a:	c9                   	leave  
c0100f2b:	c3                   	ret    

c0100f2c <getpid>:
c0100f2c:	55                   	push   %ebp
c0100f2d:	89 e5                	mov    %esp,%ebp
c0100f2f:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0100f34:	c1 e0 02             	shl    $0x2,%eax
c0100f37:	89 c2                	mov    %eax,%edx
c0100f39:	c1 e2 04             	shl    $0x4,%edx
c0100f3c:	01 d0                	add    %edx,%eax
c0100f3e:	83 c0 30             	add    $0x30,%eax
c0100f41:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0100f46:	8b 40 0c             	mov    0xc(%eax),%eax
c0100f49:	8b 40 08             	mov    0x8(%eax),%eax
c0100f4c:	5d                   	pop    %ebp
c0100f4d:	c3                   	ret    

c0100f4e <get_free_pid>:
c0100f4e:	55                   	push   %ebp
c0100f4f:	89 e5                	mov    %esp,%ebp
c0100f51:	83 ec 18             	sub    $0x18,%esp
c0100f54:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0100f5b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0100f62:	eb 25                	jmp    c0100f89 <get_free_pid+0x3b>
c0100f64:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100f67:	8b 04 85 00 40 13 c0 	mov    -0x3fecc000(,%eax,4),%eax
c0100f6e:	85 c0                	test   %eax,%eax
c0100f70:	75 13                	jne    c0100f85 <get_free_pid+0x37>
c0100f72:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100f75:	c7 04 85 00 40 13 c0 	movl   $0x1,-0x3fecc000(,%eax,4)
c0100f7c:	01 00 00 00 
c0100f80:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100f83:	eb 1c                	jmp    c0100fa1 <get_free_pid+0x53>
c0100f85:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0100f89:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c0100f8d:	7e d5                	jle    c0100f64 <get_free_pid+0x16>
c0100f8f:	83 ec 0c             	sub    $0xc,%esp
c0100f92:	68 70 3d 10 c0       	push   $0xc0103d70
c0100f97:	e8 ce 23 00 00       	call   c010336a <printk>
c0100f9c:	83 c4 10             	add    $0x10,%esp
c0100f9f:	eb fe                	jmp    c0100f9f <get_free_pid+0x51>
c0100fa1:	c9                   	leave  
c0100fa2:	c3                   	ret    

c0100fa3 <free_a_pid>:
c0100fa3:	55                   	push   %ebp
c0100fa4:	89 e5                	mov    %esp,%ebp
c0100fa6:	8b 45 08             	mov    0x8(%ebp),%eax
c0100fa9:	c7 04 85 00 40 13 c0 	movl   $0x0,-0x3fecc000(,%eax,4)
c0100fb0:	00 00 00 00 
c0100fb4:	5d                   	pop    %ebp
c0100fb5:	c3                   	ret    

c0100fb6 <init_PCB>:
c0100fb6:	55                   	push   %ebp
c0100fb7:	89 e5                	mov    %esp,%ebp
c0100fb9:	83 ec 18             	sub    $0x18,%esp
c0100fbc:	a1 04 00 1b c0       	mov    0xc01b0004,%eax
c0100fc1:	83 ec 04             	sub    $0x4,%esp
c0100fc4:	68 00 10 00 00       	push   $0x1000
c0100fc9:	50                   	push   %eax
c0100fca:	68 00 60 13 c0       	push   $0xc0136000
c0100fcf:	e8 bb 23 00 00       	call   c010338f <my_memcpy>
c0100fd4:	83 c4 10             	add    $0x10,%esp
c0100fd7:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
c0100fde:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0100fe5:	eb 1d                	jmp    c0101004 <init_PCB+0x4e>
c0100fe7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100fea:	0f b7 04 c5 44 00 1b 	movzwl -0x3fe4ffbc(,%eax,8),%eax
c0100ff1:	c0 
c0100ff2:	8d 50 01             	lea    0x1(%eax),%edx
c0100ff5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100ff8:	66 89 14 c5 44 00 1b 	mov    %dx,-0x3fe4ffbc(,%eax,8)
c0100fff:	c0 
c0101000:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0101004:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101007:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c010100a:	7c db                	jl     c0100fe7 <init_PCB+0x31>
c010100c:	83 ec 08             	sub    $0x8,%esp
c010100f:	68 00 60 13 c0       	push   $0xc0136000
c0101014:	68 00 20 03 00       	push   $0x32000
c0101019:	e8 ca fb ff ff       	call   c0100be8 <load>
c010101e:	83 c4 10             	add    $0x10,%esp
c0101021:	a3 28 41 13 c0       	mov    %eax,0xc0134128
c0101026:	c7 05 2c 41 13 c0 1b 	movl   $0x1b,0xc013412c
c010102d:	00 00 00 
c0101030:	c7 05 30 41 13 c0 02 	movl   $0x202,0xc0134130
c0101037:	02 00 00 
c010103a:	c7 05 34 41 13 c0 f0 	movl   $0x60fff0,0xc0134134
c0101041:	ff 60 00 
c0101044:	c7 05 38 41 13 c0 23 	movl   $0x23,0xc0134138
c010104b:	00 00 00 
c010104e:	83 ec 04             	sub    $0x4,%esp
c0101051:	6a 04                	push   $0x4
c0101053:	68 7e 3d 10 c0       	push   $0xc0103d7e
c0101058:	68 4c 4f 13 c0       	push   $0xc0134f4c
c010105d:	e8 c9 2a 00 00       	call   c0103b2b <my_strcpy>
c0101062:	83 c4 10             	add    $0x10,%esp
c0101065:	c7 05 48 4f 13 c0 00 	movl   $0x0,0xc0134f48
c010106c:	00 00 00 
c010106f:	c7 05 70 4f 13 c0 00 	movl   $0x0,0xc0134f70
c0101076:	00 00 00 
c0101079:	c7 05 80 4f 13 c0 00 	movl   $0x0,0xc0134f80
c0101080:	00 00 00 
c0101083:	c7 05 7c 4f 13 c0 00 	movl   $0x0,0xc0134f7c
c010108a:	00 00 00 
c010108d:	c7 05 6c 4f 13 c0 01 	movl   $0x1,0xc0134f6c
c0101094:	00 00 00 
c0101097:	c7 05 74 4f 13 c0 01 	movl   $0x1,0xc0134f74
c010109e:	00 00 00 
c01010a1:	c7 05 78 4f 13 c0 c8 	movl   $0xc8,0xc0134f78
c01010a8:	00 00 00 
c01010ab:	c7 05 44 4f 13 c0 00 	movl   $0xc0134100,0xc0134f44
c01010b2:	41 13 c0 
c01010b5:	c7 05 00 20 17 c0 01 	movl   $0x1,0xc0172000
c01010bc:	00 00 00 
c01010bf:	c7 05 04 20 17 c0 00 	movl   $0x0,0xc0172004
c01010c6:	00 00 00 
c01010c9:	c7 05 10 4f 13 c0 00 	movl   $0x0,0xc0134f10
c01010d0:	00 00 00 
c01010d3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01010da:	eb 2a                	jmp    c0101106 <init_PCB+0x150>
c01010dc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01010df:	c1 e0 02             	shl    $0x2,%eax
c01010e2:	89 c2                	mov    %eax,%edx
c01010e4:	c1 e2 04             	shl    $0x4,%edx
c01010e7:	01 d0                	add    %edx,%eax
c01010e9:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c01010ef:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01010f2:	89 02                	mov    %eax,(%edx)
c01010f4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01010f7:	c7 04 85 00 40 13 c0 	movl   $0x0,-0x3fecc000(,%eax,4)
c01010fe:	00 00 00 00 
c0101102:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0101106:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c010110a:	7e d0                	jle    c01010dc <init_PCB+0x126>
c010110c:	c7 05 00 40 13 c0 01 	movl   $0x1,0xc0134000
c0101113:	00 00 00 
c0101116:	c9                   	leave  
c0101117:	c3                   	ret    

c0101118 <add_PCB>:
c0101118:	55                   	push   %ebp
c0101119:	89 e5                	mov    %esp,%ebp
c010111b:	83 ec 18             	sub    $0x18,%esp
c010111e:	8b 15 00 20 17 c0    	mov    0xc0172000,%edx
c0101124:	a1 04 20 17 c0       	mov    0xc0172004,%eax
c0101129:	01 c2                	add    %eax,%edx
c010112b:	a1 10 4f 13 c0       	mov    0xc0134f10,%eax
c0101130:	01 d0                	add    %edx,%eax
c0101132:	83 f8 3c             	cmp    $0x3c,%eax
c0101135:	75 1b                	jne    c0101152 <add_PCB+0x3a>
c0101137:	83 ec 0c             	sub    $0xc,%esp
c010113a:	68 83 3d 10 c0       	push   $0xc0103d83
c010113f:	e8 26 22 00 00       	call   c010336a <printk>
c0101144:	83 c4 10             	add    $0x10,%esp
c0101147:	fb                   	sti    
c0101148:	b8 00 00 00 00       	mov    $0x0,%eax
c010114d:	e9 95 03 00 00       	jmp    c01014e7 <add_PCB+0x3cf>
c0101152:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0101159:	eb 22                	jmp    c010117d <add_PCB+0x65>
c010115b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010115e:	c1 e0 02             	shl    $0x2,%eax
c0101161:	89 c2                	mov    %eax,%edx
c0101163:	c1 e2 04             	shl    $0x4,%edx
c0101166:	01 d0                	add    %edx,%eax
c0101168:	83 c0 20             	add    $0x20,%eax
c010116b:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101170:	8b 40 0c             	mov    0xc(%eax),%eax
c0101173:	85 c0                	test   %eax,%eax
c0101175:	75 02                	jne    c0101179 <add_PCB+0x61>
c0101177:	eb 0a                	jmp    c0101183 <add_PCB+0x6b>
c0101179:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c010117d:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c0101181:	7e d8                	jle    c010115b <add_PCB+0x43>
c0101183:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101186:	c1 e0 02             	shl    $0x2,%eax
c0101189:	89 c2                	mov    %eax,%edx
c010118b:	c1 e2 04             	shl    $0x4,%edx
c010118e:	01 d0                	add    %edx,%eax
c0101190:	83 c0 20             	add    $0x20,%eax
c0101193:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101198:	c7 40 0c 01 00 00 00 	movl   $0x1,0xc(%eax)
c010119f:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c01011a3:	0f 85 98 00 00 00    	jne    c0101241 <add_PCB+0x129>
c01011a9:	a1 b4 00 11 c0       	mov    0xc01100b4,%eax
c01011ae:	c1 e0 02             	shl    $0x2,%eax
c01011b1:	89 c2                	mov    %eax,%edx
c01011b3:	c1 e2 04             	shl    $0x4,%edx
c01011b6:	01 d0                	add    %edx,%eax
c01011b8:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01011bd:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01011c0:	8b 0d b4 00 11 c0    	mov    0xc01100b4,%ecx
c01011c6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01011c9:	c1 e0 02             	shl    $0x2,%eax
c01011cc:	89 c2                	mov    %eax,%edx
c01011ce:	c1 e2 04             	shl    $0x4,%edx
c01011d1:	01 d0                	add    %edx,%eax
c01011d3:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c01011d9:	89 c8                	mov    %ecx,%eax
c01011db:	c1 e0 02             	shl    $0x2,%eax
c01011de:	89 c1                	mov    %eax,%ecx
c01011e0:	c1 e1 04             	shl    $0x4,%ecx
c01011e3:	01 c8                	add    %ecx,%eax
c01011e5:	83 c0 30             	add    $0x30,%eax
c01011e8:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01011ed:	89 50 0c             	mov    %edx,0xc(%eax)
c01011f0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01011f3:	c1 e0 02             	shl    $0x2,%eax
c01011f6:	89 c2                	mov    %eax,%edx
c01011f8:	c1 e2 04             	shl    $0x4,%edx
c01011fb:	01 d0                	add    %edx,%eax
c01011fd:	83 c0 40             	add    $0x40,%eax
c0101200:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c0101206:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101209:	89 02                	mov    %eax,(%edx)
c010120b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010120e:	c1 e0 02             	shl    $0x2,%eax
c0101211:	89 c2                	mov    %eax,%edx
c0101213:	c1 e2 04             	shl    $0x4,%edx
c0101216:	01 d0                	add    %edx,%eax
c0101218:	83 c0 30             	add    $0x30,%eax
c010121b:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101220:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101227:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010122a:	a3 b4 00 11 c0       	mov    %eax,0xc01100b4
c010122f:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c0101234:	83 c0 01             	add    $0x1,%eax
c0101237:	a3 00 20 17 c0       	mov    %eax,0xc0172000
c010123c:	e9 f9 01 00 00       	jmp    c010143a <add_PCB+0x322>
c0101241:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0101245:	0f 85 fa 00 00 00    	jne    c0101345 <add_PCB+0x22d>
c010124b:	a1 04 20 17 c0       	mov    0xc0172004,%eax
c0101250:	85 c0                	test   %eax,%eax
c0101252:	75 59                	jne    c01012ad <add_PCB+0x195>
c0101254:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101257:	a3 b8 00 11 c0       	mov    %eax,0xc01100b8
c010125c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010125f:	a3 bc 00 11 c0       	mov    %eax,0xc01100bc
c0101264:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101267:	c1 e0 02             	shl    $0x2,%eax
c010126a:	89 c2                	mov    %eax,%edx
c010126c:	c1 e2 04             	shl    $0x4,%edx
c010126f:	01 d0                	add    %edx,%eax
c0101271:	83 c0 40             	add    $0x40,%eax
c0101274:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101279:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c010127f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101282:	c1 e0 02             	shl    $0x2,%eax
c0101285:	89 c2                	mov    %eax,%edx
c0101287:	c1 e2 04             	shl    $0x4,%edx
c010128a:	01 d0                	add    %edx,%eax
c010128c:	83 c0 30             	add    $0x30,%eax
c010128f:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101294:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c010129b:	a1 04 20 17 c0       	mov    0xc0172004,%eax
c01012a0:	83 c0 01             	add    $0x1,%eax
c01012a3:	a3 04 20 17 c0       	mov    %eax,0xc0172004
c01012a8:	e9 8d 01 00 00       	jmp    c010143a <add_PCB+0x322>
c01012ad:	a1 bc 00 11 c0       	mov    0xc01100bc,%eax
c01012b2:	c1 e0 02             	shl    $0x2,%eax
c01012b5:	89 c2                	mov    %eax,%edx
c01012b7:	c1 e2 04             	shl    $0x4,%edx
c01012ba:	01 d0                	add    %edx,%eax
c01012bc:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01012c1:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01012c4:	8b 0d bc 00 11 c0    	mov    0xc01100bc,%ecx
c01012ca:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01012cd:	c1 e0 02             	shl    $0x2,%eax
c01012d0:	89 c2                	mov    %eax,%edx
c01012d2:	c1 e2 04             	shl    $0x4,%edx
c01012d5:	01 d0                	add    %edx,%eax
c01012d7:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c01012dd:	89 c8                	mov    %ecx,%eax
c01012df:	c1 e0 02             	shl    $0x2,%eax
c01012e2:	89 c1                	mov    %eax,%ecx
c01012e4:	c1 e1 04             	shl    $0x4,%ecx
c01012e7:	01 c8                	add    %ecx,%eax
c01012e9:	83 c0 30             	add    $0x30,%eax
c01012ec:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01012f1:	89 50 0c             	mov    %edx,0xc(%eax)
c01012f4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01012f7:	c1 e0 02             	shl    $0x2,%eax
c01012fa:	89 c2                	mov    %eax,%edx
c01012fc:	c1 e2 04             	shl    $0x4,%edx
c01012ff:	01 d0                	add    %edx,%eax
c0101301:	83 c0 40             	add    $0x40,%eax
c0101304:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c010130a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010130d:	89 02                	mov    %eax,(%edx)
c010130f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101312:	c1 e0 02             	shl    $0x2,%eax
c0101315:	89 c2                	mov    %eax,%edx
c0101317:	c1 e2 04             	shl    $0x4,%edx
c010131a:	01 d0                	add    %edx,%eax
c010131c:	83 c0 30             	add    $0x30,%eax
c010131f:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101324:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c010132b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010132e:	a3 bc 00 11 c0       	mov    %eax,0xc01100bc
c0101333:	a1 04 20 17 c0       	mov    0xc0172004,%eax
c0101338:	83 c0 01             	add    $0x1,%eax
c010133b:	a3 04 20 17 c0       	mov    %eax,0xc0172004
c0101340:	e9 f5 00 00 00       	jmp    c010143a <add_PCB+0x322>
c0101345:	a1 10 4f 13 c0       	mov    0xc0134f10,%eax
c010134a:	85 c0                	test   %eax,%eax
c010134c:	75 59                	jne    c01013a7 <add_PCB+0x28f>
c010134e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101351:	a3 c0 00 11 c0       	mov    %eax,0xc01100c0
c0101356:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101359:	a3 c4 00 11 c0       	mov    %eax,0xc01100c4
c010135e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101361:	c1 e0 02             	shl    $0x2,%eax
c0101364:	89 c2                	mov    %eax,%edx
c0101366:	c1 e2 04             	shl    $0x4,%edx
c0101369:	01 d0                	add    %edx,%eax
c010136b:	83 c0 40             	add    $0x40,%eax
c010136e:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101373:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0101379:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010137c:	c1 e0 02             	shl    $0x2,%eax
c010137f:	89 c2                	mov    %eax,%edx
c0101381:	c1 e2 04             	shl    $0x4,%edx
c0101384:	01 d0                	add    %edx,%eax
c0101386:	83 c0 30             	add    $0x30,%eax
c0101389:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010138e:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101395:	a1 10 4f 13 c0       	mov    0xc0134f10,%eax
c010139a:	83 c0 01             	add    $0x1,%eax
c010139d:	a3 10 4f 13 c0       	mov    %eax,0xc0134f10
c01013a2:	e9 93 00 00 00       	jmp    c010143a <add_PCB+0x322>
c01013a7:	a1 c4 00 11 c0       	mov    0xc01100c4,%eax
c01013ac:	c1 e0 02             	shl    $0x2,%eax
c01013af:	89 c2                	mov    %eax,%edx
c01013b1:	c1 e2 04             	shl    $0x4,%edx
c01013b4:	01 d0                	add    %edx,%eax
c01013b6:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01013bb:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01013be:	8b 0d c4 00 11 c0    	mov    0xc01100c4,%ecx
c01013c4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01013c7:	c1 e0 02             	shl    $0x2,%eax
c01013ca:	89 c2                	mov    %eax,%edx
c01013cc:	c1 e2 04             	shl    $0x4,%edx
c01013cf:	01 d0                	add    %edx,%eax
c01013d1:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c01013d7:	89 c8                	mov    %ecx,%eax
c01013d9:	c1 e0 02             	shl    $0x2,%eax
c01013dc:	89 c1                	mov    %eax,%ecx
c01013de:	c1 e1 04             	shl    $0x4,%ecx
c01013e1:	01 c8                	add    %ecx,%eax
c01013e3:	83 c0 30             	add    $0x30,%eax
c01013e6:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01013eb:	89 50 0c             	mov    %edx,0xc(%eax)
c01013ee:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01013f1:	c1 e0 02             	shl    $0x2,%eax
c01013f4:	89 c2                	mov    %eax,%edx
c01013f6:	c1 e2 04             	shl    $0x4,%edx
c01013f9:	01 d0                	add    %edx,%eax
c01013fb:	83 c0 40             	add    $0x40,%eax
c01013fe:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c0101404:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101407:	89 02                	mov    %eax,(%edx)
c0101409:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010140c:	c1 e0 02             	shl    $0x2,%eax
c010140f:	89 c2                	mov    %eax,%edx
c0101411:	c1 e2 04             	shl    $0x4,%edx
c0101414:	01 d0                	add    %edx,%eax
c0101416:	83 c0 30             	add    $0x30,%eax
c0101419:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010141e:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101425:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101428:	a3 c4 00 11 c0       	mov    %eax,0xc01100c4
c010142d:	a1 10 4f 13 c0       	mov    0xc0134f10,%eax
c0101432:	83 c0 01             	add    $0x1,%eax
c0101435:	a3 10 4f 13 c0       	mov    %eax,0xc0134f10
c010143a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010143d:	c1 e0 02             	shl    $0x2,%eax
c0101440:	89 c2                	mov    %eax,%edx
c0101442:	c1 e2 04             	shl    $0x4,%edx
c0101445:	01 d0                	add    %edx,%eax
c0101447:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010144c:	83 c0 0c             	add    $0xc,%eax
c010144f:	83 ec 04             	sub    $0x4,%esp
c0101452:	6a 1f                	push   $0x1f
c0101454:	ff 75 10             	pushl  0x10(%ebp)
c0101457:	50                   	push   %eax
c0101458:	e8 ce 26 00 00       	call   c0103b2b <my_strcpy>
c010145d:	83 c4 10             	add    $0x10,%esp
c0101460:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101463:	c1 e0 02             	shl    $0x2,%eax
c0101466:	89 c2                	mov    %eax,%edx
c0101468:	c1 e2 04             	shl    $0x4,%edx
c010146b:	01 d0                	add    %edx,%eax
c010146d:	83 c0 30             	add    $0x30,%eax
c0101470:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c0101476:	8b 45 14             	mov    0x14(%ebp),%eax
c0101479:	89 42 08             	mov    %eax,0x8(%edx)
c010147c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010147f:	c1 e0 02             	shl    $0x2,%eax
c0101482:	89 c2                	mov    %eax,%edx
c0101484:	c1 e2 04             	shl    $0x4,%edx
c0101487:	01 d0                	add    %edx,%eax
c0101489:	83 c0 30             	add    $0x30,%eax
c010148c:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c0101492:	8b 45 08             	mov    0x8(%ebp),%eax
c0101495:	89 42 04             	mov    %eax,0x4(%edx)
c0101498:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010149b:	c1 e0 02             	shl    $0x2,%eax
c010149e:	89 c2                	mov    %eax,%edx
c01014a0:	c1 e2 04             	shl    $0x4,%edx
c01014a3:	01 d0                	add    %edx,%eax
c01014a5:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c01014ab:	8b 45 0c             	mov    0xc(%ebp),%eax
c01014ae:	89 42 04             	mov    %eax,0x4(%edx)
c01014b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01014b4:	c1 e0 02             	shl    $0x2,%eax
c01014b7:	89 c2                	mov    %eax,%edx
c01014b9:	c1 e2 04             	shl    $0x4,%edx
c01014bc:	01 d0                	add    %edx,%eax
c01014be:	83 c0 30             	add    $0x30,%eax
c01014c1:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c01014c7:	8b 45 18             	mov    0x18(%ebp),%eax
c01014ca:	89 02                	mov    %eax,(%edx)
c01014cc:	8b 55 1c             	mov    0x1c(%ebp),%edx
c01014cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01014d2:	c1 e0 02             	shl    $0x2,%eax
c01014d5:	89 c1                	mov    %eax,%ecx
c01014d7:	c1 e1 04             	shl    $0x4,%ecx
c01014da:	01 c8                	add    %ecx,%eax
c01014dc:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01014e1:	89 50 08             	mov    %edx,0x8(%eax)
c01014e4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01014e7:	c9                   	leave  
c01014e8:	c3                   	ret    

c01014e9 <delete_PCB>:
c01014e9:	55                   	push   %ebp
c01014ea:	89 e5                	mov    %esp,%ebp
c01014ec:	83 ec 18             	sub    $0x18,%esp
c01014ef:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c01014f3:	75 15                	jne    c010150a <delete_PCB+0x21>
c01014f5:	83 ec 0c             	sub    $0xc,%esp
c01014f8:	68 98 3d 10 c0       	push   $0xc0103d98
c01014fd:	e8 68 1e 00 00       	call   c010336a <printk>
c0101502:	83 c4 10             	add    $0x10,%esp
c0101505:	e9 c4 03 00 00       	jmp    c01018ce <delete_PCB+0x3e5>
c010150a:	8b 45 08             	mov    0x8(%ebp),%eax
c010150d:	c1 e0 02             	shl    $0x2,%eax
c0101510:	89 c2                	mov    %eax,%edx
c0101512:	c1 e2 04             	shl    $0x4,%edx
c0101515:	01 d0                	add    %edx,%eax
c0101517:	83 c0 20             	add    $0x20,%eax
c010151a:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010151f:	8b 40 0c             	mov    0xc(%eax),%eax
c0101522:	85 c0                	test   %eax,%eax
c0101524:	75 15                	jne    c010153b <delete_PCB+0x52>
c0101526:	83 ec 0c             	sub    $0xc,%esp
c0101529:	68 bb 3d 10 c0       	push   $0xc0103dbb
c010152e:	e8 37 1e 00 00       	call   c010336a <printk>
c0101533:	83 c4 10             	add    $0x10,%esp
c0101536:	e9 93 03 00 00       	jmp    c01018ce <delete_PCB+0x3e5>
c010153b:	8b 45 08             	mov    0x8(%ebp),%eax
c010153e:	c1 e0 02             	shl    $0x2,%eax
c0101541:	89 c2                	mov    %eax,%edx
c0101543:	c1 e2 04             	shl    $0x4,%edx
c0101546:	01 d0                	add    %edx,%eax
c0101548:	83 c0 20             	add    $0x20,%eax
c010154b:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101550:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101557:	8b 45 08             	mov    0x8(%ebp),%eax
c010155a:	c1 e0 02             	shl    $0x2,%eax
c010155d:	89 c2                	mov    %eax,%edx
c010155f:	c1 e2 04             	shl    $0x4,%edx
c0101562:	01 d0                	add    %edx,%eax
c0101564:	83 c0 30             	add    $0x30,%eax
c0101567:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010156c:	8b 40 04             	mov    0x4(%eax),%eax
c010156f:	83 f8 01             	cmp    $0x1,%eax
c0101572:	0f 85 d8 00 00 00    	jne    c0101650 <delete_PCB+0x167>
c0101578:	a1 b4 00 11 c0       	mov    0xc01100b4,%eax
c010157d:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101580:	75 52                	jne    c01015d4 <delete_PCB+0xeb>
c0101582:	8b 45 08             	mov    0x8(%ebp),%eax
c0101585:	c1 e0 02             	shl    $0x2,%eax
c0101588:	89 c2                	mov    %eax,%edx
c010158a:	c1 e2 04             	shl    $0x4,%edx
c010158d:	01 d0                	add    %edx,%eax
c010158f:	83 c0 40             	add    $0x40,%eax
c0101592:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101597:	8b 00                	mov    (%eax),%eax
c0101599:	8b 00                	mov    (%eax),%eax
c010159b:	a3 b4 00 11 c0       	mov    %eax,0xc01100b4
c01015a0:	8b 45 08             	mov    0x8(%ebp),%eax
c01015a3:	c1 e0 02             	shl    $0x2,%eax
c01015a6:	89 c2                	mov    %eax,%edx
c01015a8:	c1 e2 04             	shl    $0x4,%edx
c01015ab:	01 d0                	add    %edx,%eax
c01015ad:	83 c0 40             	add    $0x40,%eax
c01015b0:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01015b5:	8b 10                	mov    (%eax),%edx
c01015b7:	8b 45 08             	mov    0x8(%ebp),%eax
c01015ba:	c1 e0 02             	shl    $0x2,%eax
c01015bd:	89 c1                	mov    %eax,%ecx
c01015bf:	c1 e1 04             	shl    $0x4,%ecx
c01015c2:	01 c8                	add    %ecx,%eax
c01015c4:	83 c0 30             	add    $0x30,%eax
c01015c7:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01015cc:	8b 40 0c             	mov    0xc(%eax),%eax
c01015cf:	89 42 3c             	mov    %eax,0x3c(%edx)
c01015d2:	eb 6a                	jmp    c010163e <delete_PCB+0x155>
c01015d4:	8b 45 08             	mov    0x8(%ebp),%eax
c01015d7:	c1 e0 02             	shl    $0x2,%eax
c01015da:	89 c2                	mov    %eax,%edx
c01015dc:	c1 e2 04             	shl    $0x4,%edx
c01015df:	01 d0                	add    %edx,%eax
c01015e1:	83 c0 40             	add    $0x40,%eax
c01015e4:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01015e9:	8b 00                	mov    (%eax),%eax
c01015eb:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01015ee:	8b 45 08             	mov    0x8(%ebp),%eax
c01015f1:	c1 e0 02             	shl    $0x2,%eax
c01015f4:	89 c2                	mov    %eax,%edx
c01015f6:	c1 e2 04             	shl    $0x4,%edx
c01015f9:	01 d0                	add    %edx,%eax
c01015fb:	83 c0 40             	add    $0x40,%eax
c01015fe:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101603:	8b 10                	mov    (%eax),%edx
c0101605:	8b 45 08             	mov    0x8(%ebp),%eax
c0101608:	c1 e0 02             	shl    $0x2,%eax
c010160b:	89 c1                	mov    %eax,%ecx
c010160d:	c1 e1 04             	shl    $0x4,%ecx
c0101610:	01 c8                	add    %ecx,%eax
c0101612:	83 c0 30             	add    $0x30,%eax
c0101615:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010161a:	8b 40 0c             	mov    0xc(%eax),%eax
c010161d:	89 42 3c             	mov    %eax,0x3c(%edx)
c0101620:	8b 45 08             	mov    0x8(%ebp),%eax
c0101623:	c1 e0 02             	shl    $0x2,%eax
c0101626:	89 c2                	mov    %eax,%edx
c0101628:	c1 e2 04             	shl    $0x4,%edx
c010162b:	01 d0                	add    %edx,%eax
c010162d:	83 c0 30             	add    $0x30,%eax
c0101630:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101635:	8b 40 0c             	mov    0xc(%eax),%eax
c0101638:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010163b:	89 50 40             	mov    %edx,0x40(%eax)
c010163e:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c0101643:	83 e8 01             	sub    $0x1,%eax
c0101646:	a3 00 20 17 c0       	mov    %eax,0xc0172000
c010164b:	e9 7e 02 00 00       	jmp    c01018ce <delete_PCB+0x3e5>
c0101650:	8b 45 08             	mov    0x8(%ebp),%eax
c0101653:	c1 e0 02             	shl    $0x2,%eax
c0101656:	89 c2                	mov    %eax,%edx
c0101658:	c1 e2 04             	shl    $0x4,%edx
c010165b:	01 d0                	add    %edx,%eax
c010165d:	83 c0 30             	add    $0x30,%eax
c0101660:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101665:	8b 40 04             	mov    0x4(%eax),%eax
c0101668:	83 f8 02             	cmp    $0x2,%eax
c010166b:	0f 85 33 01 00 00    	jne    c01017a4 <delete_PCB+0x2bb>
c0101671:	a1 04 20 17 c0       	mov    0xc0172004,%eax
c0101676:	83 e8 01             	sub    $0x1,%eax
c0101679:	a3 04 20 17 c0       	mov    %eax,0xc0172004
c010167e:	a1 04 20 17 c0       	mov    0xc0172004,%eax
c0101683:	85 c0                	test   %eax,%eax
c0101685:	75 19                	jne    c01016a0 <delete_PCB+0x1b7>
c0101687:	c7 05 b8 00 11 c0 00 	movl   $0x0,0xc01100b8
c010168e:	00 00 00 
c0101691:	c7 05 bc 00 11 c0 00 	movl   $0x0,0xc01100bc
c0101698:	00 00 00 
c010169b:	e9 2e 02 00 00       	jmp    c01018ce <delete_PCB+0x3e5>
c01016a0:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c01016a5:	39 45 08             	cmp    %eax,0x8(%ebp)
c01016a8:	75 43                	jne    c01016ed <delete_PCB+0x204>
c01016aa:	8b 45 08             	mov    0x8(%ebp),%eax
c01016ad:	c1 e0 02             	shl    $0x2,%eax
c01016b0:	89 c2                	mov    %eax,%edx
c01016b2:	c1 e2 04             	shl    $0x4,%edx
c01016b5:	01 d0                	add    %edx,%eax
c01016b7:	83 c0 30             	add    $0x30,%eax
c01016ba:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01016bf:	8b 40 0c             	mov    0xc(%eax),%eax
c01016c2:	8b 00                	mov    (%eax),%eax
c01016c4:	a3 b8 00 11 c0       	mov    %eax,0xc01100b8
c01016c9:	8b 45 08             	mov    0x8(%ebp),%eax
c01016cc:	c1 e0 02             	shl    $0x2,%eax
c01016cf:	89 c2                	mov    %eax,%edx
c01016d1:	c1 e2 04             	shl    $0x4,%edx
c01016d4:	01 d0                	add    %edx,%eax
c01016d6:	83 c0 30             	add    $0x30,%eax
c01016d9:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01016de:	8b 40 0c             	mov    0xc(%eax),%eax
c01016e1:	c7 40 40 00 00 00 00 	movl   $0x0,0x40(%eax)
c01016e8:	e9 e1 01 00 00       	jmp    c01018ce <delete_PCB+0x3e5>
c01016ed:	a1 bc 00 11 c0       	mov    0xc01100bc,%eax
c01016f2:	3b 45 08             	cmp    0x8(%ebp),%eax
c01016f5:	75 1e                	jne    c0101715 <delete_PCB+0x22c>
c01016f7:	8b 45 08             	mov    0x8(%ebp),%eax
c01016fa:	c1 e0 02             	shl    $0x2,%eax
c01016fd:	89 c2                	mov    %eax,%edx
c01016ff:	c1 e2 04             	shl    $0x4,%edx
c0101702:	01 d0                	add    %edx,%eax
c0101704:	83 c0 40             	add    $0x40,%eax
c0101707:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010170c:	8b 00                	mov    (%eax),%eax
c010170e:	8b 00                	mov    (%eax),%eax
c0101710:	a3 bc 00 11 c0       	mov    %eax,0xc01100bc
c0101715:	8b 45 08             	mov    0x8(%ebp),%eax
c0101718:	c1 e0 02             	shl    $0x2,%eax
c010171b:	89 c2                	mov    %eax,%edx
c010171d:	c1 e2 04             	shl    $0x4,%edx
c0101720:	01 d0                	add    %edx,%eax
c0101722:	83 c0 40             	add    $0x40,%eax
c0101725:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010172a:	8b 00                	mov    (%eax),%eax
c010172c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c010172f:	8b 45 08             	mov    0x8(%ebp),%eax
c0101732:	c1 e0 02             	shl    $0x2,%eax
c0101735:	89 c2                	mov    %eax,%edx
c0101737:	c1 e2 04             	shl    $0x4,%edx
c010173a:	01 d0                	add    %edx,%eax
c010173c:	83 c0 40             	add    $0x40,%eax
c010173f:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101744:	8b 10                	mov    (%eax),%edx
c0101746:	8b 45 08             	mov    0x8(%ebp),%eax
c0101749:	c1 e0 02             	shl    $0x2,%eax
c010174c:	89 c1                	mov    %eax,%ecx
c010174e:	c1 e1 04             	shl    $0x4,%ecx
c0101751:	01 c8                	add    %ecx,%eax
c0101753:	83 c0 30             	add    $0x30,%eax
c0101756:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010175b:	8b 40 0c             	mov    0xc(%eax),%eax
c010175e:	89 42 3c             	mov    %eax,0x3c(%edx)
c0101761:	8b 45 08             	mov    0x8(%ebp),%eax
c0101764:	c1 e0 02             	shl    $0x2,%eax
c0101767:	89 c2                	mov    %eax,%edx
c0101769:	c1 e2 04             	shl    $0x4,%edx
c010176c:	01 d0                	add    %edx,%eax
c010176e:	83 c0 30             	add    $0x30,%eax
c0101771:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101776:	8b 40 0c             	mov    0xc(%eax),%eax
c0101779:	85 c0                	test   %eax,%eax
c010177b:	0f 84 4d 01 00 00    	je     c01018ce <delete_PCB+0x3e5>
c0101781:	8b 45 08             	mov    0x8(%ebp),%eax
c0101784:	c1 e0 02             	shl    $0x2,%eax
c0101787:	89 c2                	mov    %eax,%edx
c0101789:	c1 e2 04             	shl    $0x4,%edx
c010178c:	01 d0                	add    %edx,%eax
c010178e:	83 c0 30             	add    $0x30,%eax
c0101791:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101796:	8b 40 0c             	mov    0xc(%eax),%eax
c0101799:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010179c:	89 50 40             	mov    %edx,0x40(%eax)
c010179f:	e9 2a 01 00 00       	jmp    c01018ce <delete_PCB+0x3e5>
c01017a4:	a1 10 4f 13 c0       	mov    0xc0134f10,%eax
c01017a9:	83 e8 01             	sub    $0x1,%eax
c01017ac:	a3 10 4f 13 c0       	mov    %eax,0xc0134f10
c01017b1:	a1 10 4f 13 c0       	mov    0xc0134f10,%eax
c01017b6:	85 c0                	test   %eax,%eax
c01017b8:	75 19                	jne    c01017d3 <delete_PCB+0x2ea>
c01017ba:	c7 05 c0 00 11 c0 00 	movl   $0x0,0xc01100c0
c01017c1:	00 00 00 
c01017c4:	c7 05 c4 00 11 c0 00 	movl   $0x0,0xc01100c4
c01017cb:	00 00 00 
c01017ce:	e9 fb 00 00 00       	jmp    c01018ce <delete_PCB+0x3e5>
c01017d3:	a1 c0 00 11 c0       	mov    0xc01100c0,%eax
c01017d8:	39 45 08             	cmp    %eax,0x8(%ebp)
c01017db:	75 43                	jne    c0101820 <delete_PCB+0x337>
c01017dd:	8b 45 08             	mov    0x8(%ebp),%eax
c01017e0:	c1 e0 02             	shl    $0x2,%eax
c01017e3:	89 c2                	mov    %eax,%edx
c01017e5:	c1 e2 04             	shl    $0x4,%edx
c01017e8:	01 d0                	add    %edx,%eax
c01017ea:	83 c0 30             	add    $0x30,%eax
c01017ed:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01017f2:	8b 40 0c             	mov    0xc(%eax),%eax
c01017f5:	8b 00                	mov    (%eax),%eax
c01017f7:	a3 c0 00 11 c0       	mov    %eax,0xc01100c0
c01017fc:	8b 45 08             	mov    0x8(%ebp),%eax
c01017ff:	c1 e0 02             	shl    $0x2,%eax
c0101802:	89 c2                	mov    %eax,%edx
c0101804:	c1 e2 04             	shl    $0x4,%edx
c0101807:	01 d0                	add    %edx,%eax
c0101809:	83 c0 30             	add    $0x30,%eax
c010180c:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101811:	8b 40 0c             	mov    0xc(%eax),%eax
c0101814:	c7 40 40 00 00 00 00 	movl   $0x0,0x40(%eax)
c010181b:	e9 ae 00 00 00       	jmp    c01018ce <delete_PCB+0x3e5>
c0101820:	a1 c4 00 11 c0       	mov    0xc01100c4,%eax
c0101825:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101828:	75 1e                	jne    c0101848 <delete_PCB+0x35f>
c010182a:	8b 45 08             	mov    0x8(%ebp),%eax
c010182d:	c1 e0 02             	shl    $0x2,%eax
c0101830:	89 c2                	mov    %eax,%edx
c0101832:	c1 e2 04             	shl    $0x4,%edx
c0101835:	01 d0                	add    %edx,%eax
c0101837:	83 c0 40             	add    $0x40,%eax
c010183a:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010183f:	8b 00                	mov    (%eax),%eax
c0101841:	8b 00                	mov    (%eax),%eax
c0101843:	a3 c4 00 11 c0       	mov    %eax,0xc01100c4
c0101848:	8b 45 08             	mov    0x8(%ebp),%eax
c010184b:	c1 e0 02             	shl    $0x2,%eax
c010184e:	89 c2                	mov    %eax,%edx
c0101850:	c1 e2 04             	shl    $0x4,%edx
c0101853:	01 d0                	add    %edx,%eax
c0101855:	83 c0 40             	add    $0x40,%eax
c0101858:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010185d:	8b 00                	mov    (%eax),%eax
c010185f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101862:	8b 45 08             	mov    0x8(%ebp),%eax
c0101865:	c1 e0 02             	shl    $0x2,%eax
c0101868:	89 c2                	mov    %eax,%edx
c010186a:	c1 e2 04             	shl    $0x4,%edx
c010186d:	01 d0                	add    %edx,%eax
c010186f:	83 c0 40             	add    $0x40,%eax
c0101872:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101877:	8b 10                	mov    (%eax),%edx
c0101879:	8b 45 08             	mov    0x8(%ebp),%eax
c010187c:	c1 e0 02             	shl    $0x2,%eax
c010187f:	89 c1                	mov    %eax,%ecx
c0101881:	c1 e1 04             	shl    $0x4,%ecx
c0101884:	01 c8                	add    %ecx,%eax
c0101886:	83 c0 30             	add    $0x30,%eax
c0101889:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010188e:	8b 40 0c             	mov    0xc(%eax),%eax
c0101891:	89 42 3c             	mov    %eax,0x3c(%edx)
c0101894:	8b 45 08             	mov    0x8(%ebp),%eax
c0101897:	c1 e0 02             	shl    $0x2,%eax
c010189a:	89 c2                	mov    %eax,%edx
c010189c:	c1 e2 04             	shl    $0x4,%edx
c010189f:	01 d0                	add    %edx,%eax
c01018a1:	83 c0 30             	add    $0x30,%eax
c01018a4:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01018a9:	8b 40 0c             	mov    0xc(%eax),%eax
c01018ac:	85 c0                	test   %eax,%eax
c01018ae:	74 1e                	je     c01018ce <delete_PCB+0x3e5>
c01018b0:	8b 45 08             	mov    0x8(%ebp),%eax
c01018b3:	c1 e0 02             	shl    $0x2,%eax
c01018b6:	89 c2                	mov    %eax,%edx
c01018b8:	c1 e2 04             	shl    $0x4,%edx
c01018bb:	01 d0                	add    %edx,%eax
c01018bd:	83 c0 30             	add    $0x30,%eax
c01018c0:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01018c5:	8b 40 0c             	mov    0xc(%eax),%eax
c01018c8:	8b 55 f4             	mov    -0xc(%ebp),%edx
c01018cb:	89 50 40             	mov    %edx,0x40(%eax)
c01018ce:	c9                   	leave  
c01018cf:	c3                   	ret    

c01018d0 <reschedule>:
c01018d0:	55                   	push   %ebp
c01018d1:	89 e5                	mov    %esp,%ebp
c01018d3:	83 ec 28             	sub    $0x28,%esp
c01018d6:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c01018db:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01018de:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c01018e3:	83 f8 01             	cmp    $0x1,%eax
c01018e6:	75 46                	jne    c010192e <reschedule+0x5e>
c01018e8:	a1 04 20 17 c0       	mov    0xc0172004,%eax
c01018ed:	85 c0                	test   %eax,%eax
c01018ef:	75 3d                	jne    c010192e <reschedule+0x5e>
c01018f1:	b8 f8 4f 17 c0       	mov    $0xc0174ff8,%eax
c01018f6:	83 ec 0c             	sub    $0xc,%esp
c01018f9:	50                   	push   %eax
c01018fa:	e8 f4 1a 00 00       	call   c01033f3 <set_tss>
c01018ff:	83 c4 10             	add    $0x10,%esp
c0101902:	b8 00 60 13 c0       	mov    $0xc0136000,%eax
c0101907:	05 00 00 00 40       	add    $0x40000000,%eax
c010190c:	89 45 ec             	mov    %eax,-0x14(%ebp)
c010190f:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0101912:	0f 22 d8             	mov    %eax,%cr3
c0101915:	66 b8 23 00          	mov    $0x23,%ax
c0101919:	8e d8                	mov    %eax,%ds
c010191b:	8e c0                	mov    %eax,%es
c010191d:	a1 44 4f 13 c0       	mov    0xc0134f44,%eax
c0101922:	89 c4                	mov    %eax,%esp
c0101924:	61                   	popa   
c0101925:	83 c4 08             	add    $0x8,%esp
c0101928:	cf                   	iret   
c0101929:	e9 f0 01 00 00       	jmp    c0101b1e <reschedule+0x24e>
c010192e:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c0101933:	83 f8 01             	cmp    $0x1,%eax
c0101936:	0f 8e 94 00 00 00    	jle    c01019d0 <reschedule+0x100>
c010193c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010193f:	c1 e0 02             	shl    $0x2,%eax
c0101942:	89 c2                	mov    %eax,%edx
c0101944:	c1 e2 04             	shl    $0x4,%edx
c0101947:	01 d0                	add    %edx,%eax
c0101949:	83 c0 30             	add    $0x30,%eax
c010194c:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101951:	8b 40 0c             	mov    0xc(%eax),%eax
c0101954:	8b 40 08             	mov    0x8(%eax),%eax
c0101957:	c1 e0 0c             	shl    $0xc,%eax
c010195a:	05 00 40 17 c0       	add    $0xc0174000,%eax
c010195f:	05 f8 0f 00 00       	add    $0xff8,%eax
c0101964:	83 ec 0c             	sub    $0xc,%esp
c0101967:	50                   	push   %eax
c0101968:	e8 86 1a 00 00       	call   c01033f3 <set_tss>
c010196d:	83 c4 10             	add    $0x10,%esp
c0101970:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101973:	c1 e0 02             	shl    $0x2,%eax
c0101976:	89 c2                	mov    %eax,%edx
c0101978:	c1 e2 04             	shl    $0x4,%edx
c010197b:	01 d0                	add    %edx,%eax
c010197d:	83 c0 30             	add    $0x30,%eax
c0101980:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101985:	8b 40 0c             	mov    0xc(%eax),%eax
c0101988:	8b 40 08             	mov    0x8(%eax),%eax
c010198b:	c1 e0 0c             	shl    $0xc,%eax
c010198e:	05 00 60 13 c0       	add    $0xc0136000,%eax
c0101993:	05 00 00 00 40       	add    $0x40000000,%eax
c0101998:	89 45 e8             	mov    %eax,-0x18(%ebp)
c010199b:	8b 45 e8             	mov    -0x18(%ebp),%eax
c010199e:	0f 22 d8             	mov    %eax,%cr3
c01019a1:	66 b8 23 00          	mov    $0x23,%ax
c01019a5:	8e d8                	mov    %eax,%ds
c01019a7:	8e c0                	mov    %eax,%es
c01019a9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01019ac:	c1 e0 02             	shl    $0x2,%eax
c01019af:	89 c2                	mov    %eax,%edx
c01019b1:	c1 e2 04             	shl    $0x4,%edx
c01019b4:	01 d0                	add    %edx,%eax
c01019b6:	83 c0 30             	add    $0x30,%eax
c01019b9:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01019be:	8b 40 0c             	mov    0xc(%eax),%eax
c01019c1:	8b 40 04             	mov    0x4(%eax),%eax
c01019c4:	89 c4                	mov    %eax,%esp
c01019c6:	61                   	popa   
c01019c7:	83 c4 08             	add    $0x8,%esp
c01019ca:	cf                   	iret   
c01019cb:	e9 4e 01 00 00       	jmp    c0101b1e <reschedule+0x24e>
c01019d0:	8b 0d b0 00 11 c0    	mov    0xc01100b0,%ecx
c01019d6:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c01019db:	c1 e0 02             	shl    $0x2,%eax
c01019de:	89 c2                	mov    %eax,%edx
c01019e0:	c1 e2 04             	shl    $0x4,%edx
c01019e3:	01 d0                	add    %edx,%eax
c01019e5:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c01019eb:	89 c8                	mov    %ecx,%eax
c01019ed:	c1 e0 02             	shl    $0x2,%eax
c01019f0:	89 c1                	mov    %eax,%ecx
c01019f2:	c1 e1 04             	shl    $0x4,%ecx
c01019f5:	01 c8                	add    %ecx,%eax
c01019f7:	83 c0 30             	add    $0x30,%eax
c01019fa:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01019ff:	89 50 0c             	mov    %edx,0xc(%eax)
c0101a02:	8b 0d b8 00 11 c0    	mov    0xc01100b8,%ecx
c0101a08:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101a0d:	c1 e0 02             	shl    $0x2,%eax
c0101a10:	89 c2                	mov    %eax,%edx
c0101a12:	c1 e2 04             	shl    $0x4,%edx
c0101a15:	01 d0                	add    %edx,%eax
c0101a17:	8d 90 40 4f 13 c0    	lea    -0x3fecb0c0(%eax),%edx
c0101a1d:	89 c8                	mov    %ecx,%eax
c0101a1f:	c1 e0 02             	shl    $0x2,%eax
c0101a22:	89 c1                	mov    %eax,%ecx
c0101a24:	c1 e1 04             	shl    $0x4,%ecx
c0101a27:	01 c8                	add    %ecx,%eax
c0101a29:	83 c0 40             	add    $0x40,%eax
c0101a2c:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101a31:	89 10                	mov    %edx,(%eax)
c0101a33:	a1 bc 00 11 c0       	mov    0xc01100bc,%eax
c0101a38:	a3 b4 00 11 c0       	mov    %eax,0xc01100b4
c0101a3d:	c7 05 b8 00 11 c0 00 	movl   $0x0,0xc01100b8
c0101a44:	00 00 00 
c0101a47:	c7 05 bc 00 11 c0 00 	movl   $0x0,0xc01100bc
c0101a4e:	00 00 00 
c0101a51:	8b 15 00 20 17 c0    	mov    0xc0172000,%edx
c0101a57:	a1 04 20 17 c0       	mov    0xc0172004,%eax
c0101a5c:	01 d0                	add    %edx,%eax
c0101a5e:	a3 00 20 17 c0       	mov    %eax,0xc0172000
c0101a63:	c7 05 04 20 17 c0 00 	movl   $0x0,0xc0172004
c0101a6a:	00 00 00 
c0101a6d:	c7 45 f4 40 4f 13 c0 	movl   $0xc0134f40,-0xc(%ebp)
c0101a74:	eb 13                	jmp    c0101a89 <reschedule+0x1b9>
c0101a76:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a79:	c7 40 34 01 00 00 00 	movl   $0x1,0x34(%eax)
c0101a80:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101a83:	8b 40 3c             	mov    0x3c(%eax),%eax
c0101a86:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101a89:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0101a8d:	75 e7                	jne    c0101a76 <reschedule+0x1a6>
c0101a8f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101a92:	c1 e0 02             	shl    $0x2,%eax
c0101a95:	89 c2                	mov    %eax,%edx
c0101a97:	c1 e2 04             	shl    $0x4,%edx
c0101a9a:	01 d0                	add    %edx,%eax
c0101a9c:	83 c0 30             	add    $0x30,%eax
c0101a9f:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101aa4:	8b 40 0c             	mov    0xc(%eax),%eax
c0101aa7:	8b 40 08             	mov    0x8(%eax),%eax
c0101aaa:	c1 e0 0c             	shl    $0xc,%eax
c0101aad:	05 00 40 17 c0       	add    $0xc0174000,%eax
c0101ab2:	05 f8 0f 00 00       	add    $0xff8,%eax
c0101ab7:	83 ec 0c             	sub    $0xc,%esp
c0101aba:	50                   	push   %eax
c0101abb:	e8 33 19 00 00       	call   c01033f3 <set_tss>
c0101ac0:	83 c4 10             	add    $0x10,%esp
c0101ac3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101ac6:	c1 e0 02             	shl    $0x2,%eax
c0101ac9:	89 c2                	mov    %eax,%edx
c0101acb:	c1 e2 04             	shl    $0x4,%edx
c0101ace:	01 d0                	add    %edx,%eax
c0101ad0:	83 c0 30             	add    $0x30,%eax
c0101ad3:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101ad8:	8b 40 0c             	mov    0xc(%eax),%eax
c0101adb:	8b 40 08             	mov    0x8(%eax),%eax
c0101ade:	c1 e0 0c             	shl    $0xc,%eax
c0101ae1:	05 00 60 13 c0       	add    $0xc0136000,%eax
c0101ae6:	05 00 00 00 40       	add    $0x40000000,%eax
c0101aeb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0101aee:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0101af1:	0f 22 d8             	mov    %eax,%cr3
c0101af4:	66 b8 23 00          	mov    $0x23,%ax
c0101af8:	8e d8                	mov    %eax,%ds
c0101afa:	8e c0                	mov    %eax,%es
c0101afc:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101aff:	c1 e0 02             	shl    $0x2,%eax
c0101b02:	89 c2                	mov    %eax,%edx
c0101b04:	c1 e2 04             	shl    $0x4,%edx
c0101b07:	01 d0                	add    %edx,%eax
c0101b09:	83 c0 30             	add    $0x30,%eax
c0101b0c:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101b11:	8b 40 0c             	mov    0xc(%eax),%eax
c0101b14:	8b 40 04             	mov    0x4(%eax),%eax
c0101b17:	89 c4                	mov    %eax,%esp
c0101b19:	61                   	popa   
c0101b1a:	83 c4 08             	add    $0x8,%esp
c0101b1d:	cf                   	iret   
c0101b1e:	c9                   	leave  
c0101b1f:	c3                   	ret    

c0101b20 <time_treat>:
c0101b20:	55                   	push   %ebp
c0101b21:	89 e5                	mov    %esp,%ebp
c0101b23:	53                   	push   %ebx
c0101b24:	83 ec 14             	sub    $0x14,%esp
c0101b27:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c0101b2c:	83 f8 01             	cmp    $0x1,%eax
c0101b2f:	0f 84 eb 00 00 00    	je     c0101c20 <time_treat+0x100>
c0101b35:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101b3a:	c1 e0 02             	shl    $0x2,%eax
c0101b3d:	89 c2                	mov    %eax,%edx
c0101b3f:	c1 e2 04             	shl    $0x4,%edx
c0101b42:	01 d0                	add    %edx,%eax
c0101b44:	83 c0 30             	add    $0x30,%eax
c0101b47:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101b4c:	8b 40 0c             	mov    0xc(%eax),%eax
c0101b4f:	8b 50 38             	mov    0x38(%eax),%edx
c0101b52:	83 ea 01             	sub    $0x1,%edx
c0101b55:	89 50 38             	mov    %edx,0x38(%eax)
c0101b58:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101b5d:	c1 e0 02             	shl    $0x2,%eax
c0101b60:	89 c2                	mov    %eax,%edx
c0101b62:	c1 e2 04             	shl    $0x4,%edx
c0101b65:	01 d0                	add    %edx,%eax
c0101b67:	83 c0 30             	add    $0x30,%eax
c0101b6a:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101b6f:	8b 40 0c             	mov    0xc(%eax),%eax
c0101b72:	8b 40 38             	mov    0x38(%eax),%eax
c0101b75:	85 c0                	test   %eax,%eax
c0101b77:	0f 85 2b 01 00 00    	jne    c0101ca8 <time_treat+0x188>
c0101b7d:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101b82:	c1 e0 02             	shl    $0x2,%eax
c0101b85:	89 c2                	mov    %eax,%edx
c0101b87:	c1 e2 04             	shl    $0x4,%edx
c0101b8a:	01 d0                	add    %edx,%eax
c0101b8c:	83 c0 30             	add    $0x30,%eax
c0101b8f:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101b94:	8b 40 0c             	mov    0xc(%eax),%eax
c0101b97:	8b 40 08             	mov    0x8(%eax),%eax
c0101b9a:	89 c3                	mov    %eax,%ebx
c0101b9c:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101ba1:	c1 e0 02             	shl    $0x2,%eax
c0101ba4:	89 c2                	mov    %eax,%edx
c0101ba6:	c1 e2 04             	shl    $0x4,%edx
c0101ba9:	01 d0                	add    %edx,%eax
c0101bab:	83 c0 30             	add    $0x30,%eax
c0101bae:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101bb3:	8b 40 0c             	mov    0xc(%eax),%eax
c0101bb6:	8b 50 30             	mov    0x30(%eax),%edx
c0101bb9:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101bbe:	c1 e0 02             	shl    $0x2,%eax
c0101bc1:	89 c1                	mov    %eax,%ecx
c0101bc3:	c1 e1 04             	shl    $0x4,%ecx
c0101bc6:	01 c8                	add    %ecx,%eax
c0101bc8:	83 c0 30             	add    $0x30,%eax
c0101bcb:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101bd0:	8b 40 0c             	mov    0xc(%eax),%eax
c0101bd3:	83 c0 0c             	add    $0xc,%eax
c0101bd6:	83 ec 08             	sub    $0x8,%esp
c0101bd9:	53                   	push   %ebx
c0101bda:	52                   	push   %edx
c0101bdb:	68 c8 00 00 00       	push   $0xc8
c0101be0:	50                   	push   %eax
c0101be1:	ff 75 08             	pushl  0x8(%ebp)
c0101be4:	6a 02                	push   $0x2
c0101be6:	e8 2d f5 ff ff       	call   c0101118 <add_PCB>
c0101beb:	83 c4 20             	add    $0x20,%esp
c0101bee:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101bf3:	c1 e0 02             	shl    $0x2,%eax
c0101bf6:	89 c2                	mov    %eax,%edx
c0101bf8:	c1 e2 04             	shl    $0x4,%edx
c0101bfb:	01 d0                	add    %edx,%eax
c0101bfd:	83 c0 30             	add    $0x30,%eax
c0101c00:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101c05:	8b 40 0c             	mov    0xc(%eax),%eax
c0101c08:	8b 00                	mov    (%eax),%eax
c0101c0a:	83 ec 0c             	sub    $0xc,%esp
c0101c0d:	50                   	push   %eax
c0101c0e:	e8 d6 f8 ff ff       	call   c01014e9 <delete_PCB>
c0101c13:	83 c4 10             	add    $0x10,%esp
c0101c16:	e8 b5 fc ff ff       	call   c01018d0 <reschedule>
c0101c1b:	e9 88 00 00 00       	jmp    c0101ca8 <time_treat+0x188>
c0101c20:	8b 45 08             	mov    0x8(%ebp),%eax
c0101c23:	8b 10                	mov    (%eax),%edx
c0101c25:	89 15 00 41 13 c0    	mov    %edx,0xc0134100
c0101c2b:	8b 50 04             	mov    0x4(%eax),%edx
c0101c2e:	89 15 04 41 13 c0    	mov    %edx,0xc0134104
c0101c34:	8b 50 08             	mov    0x8(%eax),%edx
c0101c37:	89 15 08 41 13 c0    	mov    %edx,0xc0134108
c0101c3d:	8b 50 0c             	mov    0xc(%eax),%edx
c0101c40:	89 15 0c 41 13 c0    	mov    %edx,0xc013410c
c0101c46:	8b 50 10             	mov    0x10(%eax),%edx
c0101c49:	89 15 10 41 13 c0    	mov    %edx,0xc0134110
c0101c4f:	8b 50 14             	mov    0x14(%eax),%edx
c0101c52:	89 15 14 41 13 c0    	mov    %edx,0xc0134114
c0101c58:	8b 50 18             	mov    0x18(%eax),%edx
c0101c5b:	89 15 18 41 13 c0    	mov    %edx,0xc0134118
c0101c61:	8b 50 1c             	mov    0x1c(%eax),%edx
c0101c64:	89 15 1c 41 13 c0    	mov    %edx,0xc013411c
c0101c6a:	8b 50 20             	mov    0x20(%eax),%edx
c0101c6d:	89 15 20 41 13 c0    	mov    %edx,0xc0134120
c0101c73:	8b 50 24             	mov    0x24(%eax),%edx
c0101c76:	89 15 24 41 13 c0    	mov    %edx,0xc0134124
c0101c7c:	8b 50 28             	mov    0x28(%eax),%edx
c0101c7f:	89 15 28 41 13 c0    	mov    %edx,0xc0134128
c0101c85:	8b 50 2c             	mov    0x2c(%eax),%edx
c0101c88:	89 15 2c 41 13 c0    	mov    %edx,0xc013412c
c0101c8e:	8b 50 30             	mov    0x30(%eax),%edx
c0101c91:	89 15 30 41 13 c0    	mov    %edx,0xc0134130
c0101c97:	8b 50 34             	mov    0x34(%eax),%edx
c0101c9a:	89 15 34 41 13 c0    	mov    %edx,0xc0134134
c0101ca0:	8b 40 38             	mov    0x38(%eax),%eax
c0101ca3:	a3 38 41 13 c0       	mov    %eax,0xc0134138
c0101ca8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0101caf:	a1 10 4f 13 c0       	mov    0xc0134f10,%eax
c0101cb4:	85 c0                	test   %eax,%eax
c0101cb6:	0f 84 b7 00 00 00    	je     c0101d73 <time_treat+0x253>
c0101cbc:	a1 c0 00 11 c0       	mov    0xc01100c0,%eax
c0101cc1:	c1 e0 02             	shl    $0x2,%eax
c0101cc4:	89 c2                	mov    %eax,%edx
c0101cc6:	c1 e2 04             	shl    $0x4,%edx
c0101cc9:	01 d0                	add    %edx,%eax
c0101ccb:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101cd0:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101cd3:	e9 91 00 00 00       	jmp    c0101d69 <time_treat+0x249>
c0101cd8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101cdb:	8b 40 38             	mov    0x38(%eax),%eax
c0101cde:	8d 50 ff             	lea    -0x1(%eax),%edx
c0101ce1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101ce4:	89 50 38             	mov    %edx,0x38(%eax)
c0101ce7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101cea:	8b 40 38             	mov    0x38(%eax),%eax
c0101ced:	85 c0                	test   %eax,%eax
c0101cef:	75 6f                	jne    c0101d60 <time_treat+0x240>
c0101cf1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101cf4:	8b 40 08             	mov    0x8(%eax),%eax
c0101cf7:	83 ec 08             	sub    $0x8,%esp
c0101cfa:	50                   	push   %eax
c0101cfb:	68 d9 3d 10 c0       	push   $0xc0103dd9
c0101d00:	e8 65 16 00 00       	call   c010336a <printk>
c0101d05:	83 c4 10             	add    $0x10,%esp
c0101d08:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0101d0f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101d12:	8b 40 08             	mov    0x8(%eax),%eax
c0101d15:	89 c3                	mov    %eax,%ebx
c0101d17:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101d1a:	8b 50 30             	mov    0x30(%eax),%edx
c0101d1d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101d20:	8d 48 0c             	lea    0xc(%eax),%ecx
c0101d23:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101d26:	8b 40 04             	mov    0x4(%eax),%eax
c0101d29:	83 ec 08             	sub    $0x8,%esp
c0101d2c:	53                   	push   %ebx
c0101d2d:	52                   	push   %edx
c0101d2e:	68 c8 00 00 00       	push   $0xc8
c0101d33:	51                   	push   %ecx
c0101d34:	50                   	push   %eax
c0101d35:	6a 02                	push   $0x2
c0101d37:	e8 dc f3 ff ff       	call   c0101118 <add_PCB>
c0101d3c:	83 c4 20             	add    $0x20,%esp
c0101d3f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101d42:	8b 00                	mov    (%eax),%eax
c0101d44:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0101d47:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101d4a:	8b 40 3c             	mov    0x3c(%eax),%eax
c0101d4d:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101d50:	83 ec 0c             	sub    $0xc,%esp
c0101d53:	ff 75 ec             	pushl  -0x14(%ebp)
c0101d56:	e8 8e f7 ff ff       	call   c01014e9 <delete_PCB>
c0101d5b:	83 c4 10             	add    $0x10,%esp
c0101d5e:	eb 09                	jmp    c0101d69 <time_treat+0x249>
c0101d60:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101d63:	8b 40 3c             	mov    0x3c(%eax),%eax
c0101d66:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101d69:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0101d6d:	0f 85 65 ff ff ff    	jne    c0101cd8 <time_treat+0x1b8>
c0101d73:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0101d77:	74 0f                	je     c0101d88 <time_treat+0x268>
c0101d79:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c0101d7e:	83 f8 01             	cmp    $0x1,%eax
c0101d81:	75 05                	jne    c0101d88 <time_treat+0x268>
c0101d83:	e8 48 fb ff ff       	call   c01018d0 <reschedule>
c0101d88:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0101d8b:	c9                   	leave  
c0101d8c:	c3                   	ret    

c0101d8d <process_exit>:
c0101d8d:	55                   	push   %ebp
c0101d8e:	89 e5                	mov    %esp,%ebp
c0101d90:	83 ec 08             	sub    $0x8,%esp
c0101d93:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c0101d98:	83 f8 01             	cmp    $0x1,%eax
c0101d9b:	75 15                	jne    c0101db2 <process_exit+0x25>
c0101d9d:	83 ec 0c             	sub    $0xc,%esp
c0101da0:	68 ed 3d 10 c0       	push   $0xc0103ded
c0101da5:	e8 c0 15 00 00       	call   c010336a <printk>
c0101daa:	83 c4 10             	add    $0x10,%esp
c0101dad:	e9 84 00 00 00       	jmp    c0101e36 <process_exit+0xa9>
c0101db2:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101db7:	c1 e0 02             	shl    $0x2,%eax
c0101dba:	89 c2                	mov    %eax,%edx
c0101dbc:	c1 e2 04             	shl    $0x4,%edx
c0101dbf:	01 d0                	add    %edx,%eax
c0101dc1:	83 c0 30             	add    $0x30,%eax
c0101dc4:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101dc9:	8b 40 0c             	mov    0xc(%eax),%eax
c0101dcc:	8b 40 08             	mov    0x8(%eax),%eax
c0101dcf:	83 ec 08             	sub    $0x8,%esp
c0101dd2:	50                   	push   %eax
c0101dd3:	68 00 3e 10 c0       	push   $0xc0103e00
c0101dd8:	e8 8d 15 00 00       	call   c010336a <printk>
c0101ddd:	83 c4 10             	add    $0x10,%esp
c0101de0:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101de5:	c1 e0 02             	shl    $0x2,%eax
c0101de8:	89 c2                	mov    %eax,%edx
c0101dea:	c1 e2 04             	shl    $0x4,%edx
c0101ded:	01 d0                	add    %edx,%eax
c0101def:	83 c0 30             	add    $0x30,%eax
c0101df2:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101df7:	8b 40 0c             	mov    0xc(%eax),%eax
c0101dfa:	8b 40 08             	mov    0x8(%eax),%eax
c0101dfd:	83 ec 0c             	sub    $0xc,%esp
c0101e00:	50                   	push   %eax
c0101e01:	e8 9d f1 ff ff       	call   c0100fa3 <free_a_pid>
c0101e06:	83 c4 10             	add    $0x10,%esp
c0101e09:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101e0e:	c1 e0 02             	shl    $0x2,%eax
c0101e11:	89 c2                	mov    %eax,%edx
c0101e13:	c1 e2 04             	shl    $0x4,%edx
c0101e16:	01 d0                	add    %edx,%eax
c0101e18:	83 c0 30             	add    $0x30,%eax
c0101e1b:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101e20:	8b 40 0c             	mov    0xc(%eax),%eax
c0101e23:	8b 00                	mov    (%eax),%eax
c0101e25:	83 ec 0c             	sub    $0xc,%esp
c0101e28:	50                   	push   %eax
c0101e29:	e8 bb f6 ff ff       	call   c01014e9 <delete_PCB>
c0101e2e:	83 c4 10             	add    $0x10,%esp
c0101e31:	e8 9a fa ff ff       	call   c01018d0 <reschedule>
c0101e36:	c9                   	leave  
c0101e37:	c3                   	ret    

c0101e38 <load_PCB>:
c0101e38:	55                   	push   %ebp
c0101e39:	89 e5                	mov    %esp,%ebp
c0101e3b:	83 ec 18             	sub    $0x18,%esp
c0101e3e:	e8 0b f1 ff ff       	call   c0100f4e <get_free_pid>
c0101e43:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101e46:	a1 04 00 1b c0       	mov    0xc01b0004,%eax
c0101e4b:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101e4e:	c1 e2 0c             	shl    $0xc,%edx
c0101e51:	81 c2 00 60 13 c0    	add    $0xc0136000,%edx
c0101e57:	83 ec 04             	sub    $0x4,%esp
c0101e5a:	68 00 10 00 00       	push   $0x1000
c0101e5f:	50                   	push   %eax
c0101e60:	52                   	push   %edx
c0101e61:	e8 29 15 00 00       	call   c010338f <my_memcpy>
c0101e66:	83 c4 10             	add    $0x10,%esp
c0101e69:	c7 45 ec 00 04 00 00 	movl   $0x400,-0x14(%ebp)
c0101e70:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0101e77:	eb 1d                	jmp    c0101e96 <load_PCB+0x5e>
c0101e79:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101e7c:	0f b7 04 c5 44 00 1b 	movzwl -0x3fe4ffbc(,%eax,8),%eax
c0101e83:	c0 
c0101e84:	8d 50 01             	lea    0x1(%eax),%edx
c0101e87:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101e8a:	66 89 14 c5 44 00 1b 	mov    %dx,-0x3fe4ffbc(,%eax,8)
c0101e91:	c0 
c0101e92:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0101e96:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101e99:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c0101e9c:	7c db                	jl     c0101e79 <load_PCB+0x41>
c0101e9e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101ea1:	c1 e0 0c             	shl    $0xc,%eax
c0101ea4:	05 00 60 13 c0       	add    $0xc0136000,%eax
c0101ea9:	83 ec 08             	sub    $0x8,%esp
c0101eac:	50                   	push   %eax
c0101ead:	ff 75 08             	pushl  0x8(%ebp)
c0101eb0:	e8 33 ed ff ff       	call   c0100be8 <load>
c0101eb5:	83 c4 10             	add    $0x10,%esp
c0101eb8:	89 c1                	mov    %eax,%ecx
c0101eba:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101ebd:	89 c2                	mov    %eax,%edx
c0101ebf:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0101ec6:	89 c2                	mov    %eax,%edx
c0101ec8:	89 d0                	mov    %edx,%eax
c0101eca:	c1 e0 04             	shl    $0x4,%eax
c0101ecd:	29 d0                	sub    %edx,%eax
c0101ecf:	83 c0 20             	add    $0x20,%eax
c0101ed2:	05 00 41 13 c0       	add    $0xc0134100,%eax
c0101ed7:	89 48 08             	mov    %ecx,0x8(%eax)
c0101eda:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101edd:	89 c2                	mov    %eax,%edx
c0101edf:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0101ee6:	89 c2                	mov    %eax,%edx
c0101ee8:	89 d0                	mov    %edx,%eax
c0101eea:	c1 e0 04             	shl    $0x4,%eax
c0101eed:	29 d0                	sub    %edx,%eax
c0101eef:	83 c0 20             	add    $0x20,%eax
c0101ef2:	05 00 41 13 c0       	add    $0xc0134100,%eax
c0101ef7:	c7 40 0c 1b 00 00 00 	movl   $0x1b,0xc(%eax)
c0101efe:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101f01:	89 c2                	mov    %eax,%edx
c0101f03:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0101f0a:	89 c2                	mov    %eax,%edx
c0101f0c:	89 d0                	mov    %edx,%eax
c0101f0e:	c1 e0 04             	shl    $0x4,%eax
c0101f11:	29 d0                	sub    %edx,%eax
c0101f13:	83 c0 30             	add    $0x30,%eax
c0101f16:	05 00 41 13 c0       	add    $0xc0134100,%eax
c0101f1b:	c7 00 02 02 00 00    	movl   $0x202,(%eax)
c0101f21:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101f24:	89 c2                	mov    %eax,%edx
c0101f26:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0101f2d:	89 c2                	mov    %eax,%edx
c0101f2f:	89 d0                	mov    %edx,%eax
c0101f31:	c1 e0 04             	shl    $0x4,%eax
c0101f34:	29 d0                	sub    %edx,%eax
c0101f36:	83 c0 30             	add    $0x30,%eax
c0101f39:	05 00 41 13 c0       	add    $0xc0134100,%eax
c0101f3e:	c7 40 04 f0 ff 60 00 	movl   $0x60fff0,0x4(%eax)
c0101f45:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101f48:	89 c2                	mov    %eax,%edx
c0101f4a:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0101f51:	89 c2                	mov    %eax,%edx
c0101f53:	89 d0                	mov    %edx,%eax
c0101f55:	c1 e0 04             	shl    $0x4,%eax
c0101f58:	29 d0                	sub    %edx,%eax
c0101f5a:	83 c0 30             	add    $0x30,%eax
c0101f5d:	05 00 41 13 c0       	add    $0xc0134100,%eax
c0101f62:	c7 40 08 23 00 00 00 	movl   $0x23,0x8(%eax)
c0101f69:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101f6c:	89 c2                	mov    %eax,%edx
c0101f6e:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0101f75:	89 c2                	mov    %eax,%edx
c0101f77:	89 d0                	mov    %edx,%eax
c0101f79:	c1 e0 04             	shl    $0x4,%eax
c0101f7c:	29 d0                	sub    %edx,%eax
c0101f7e:	05 00 41 13 c0       	add    $0xc0134100,%eax
c0101f83:	83 ec 08             	sub    $0x8,%esp
c0101f86:	ff 75 f0             	pushl  -0x10(%ebp)
c0101f89:	6a 00                	push   $0x0
c0101f8b:	68 c8 00 00 00       	push   $0xc8
c0101f90:	ff 75 0c             	pushl  0xc(%ebp)
c0101f93:	50                   	push   %eax
c0101f94:	6a 01                	push   $0x1
c0101f96:	e8 7d f1 ff ff       	call   c0101118 <add_PCB>
c0101f9b:	83 c4 20             	add    $0x20,%esp
c0101f9e:	c9                   	leave  
c0101f9f:	c3                   	ret    

c0101fa0 <my_sleep>:
c0101fa0:	55                   	push   %ebp
c0101fa1:	89 e5                	mov    %esp,%ebp
c0101fa3:	53                   	push   %ebx
c0101fa4:	83 ec 04             	sub    $0x4,%esp
c0101fa7:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c0101fac:	83 f8 01             	cmp    $0x1,%eax
c0101faf:	75 15                	jne    c0101fc6 <my_sleep+0x26>
c0101fb1:	83 ec 0c             	sub    $0xc,%esp
c0101fb4:	68 11 3e 10 c0       	push   $0xc0103e11
c0101fb9:	e8 ac 13 00 00       	call   c010336a <printk>
c0101fbe:	83 c4 10             	add    $0x10,%esp
c0101fc1:	e9 cd 00 00 00       	jmp    c0102093 <my_sleep+0xf3>
c0101fc6:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101fcb:	c1 e0 02             	shl    $0x2,%eax
c0101fce:	89 c2                	mov    %eax,%edx
c0101fd0:	c1 e2 04             	shl    $0x4,%edx
c0101fd3:	01 d0                	add    %edx,%eax
c0101fd5:	83 c0 30             	add    $0x30,%eax
c0101fd8:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0101fdd:	8b 40 0c             	mov    0xc(%eax),%eax
c0101fe0:	8b 40 08             	mov    0x8(%eax),%eax
c0101fe3:	83 ec 04             	sub    $0x4,%esp
c0101fe6:	ff 75 08             	pushl  0x8(%ebp)
c0101fe9:	50                   	push   %eax
c0101fea:	68 2d 3e 10 c0       	push   $0xc0103e2d
c0101fef:	e8 76 13 00 00       	call   c010336a <printk>
c0101ff4:	83 c4 10             	add    $0x10,%esp
c0101ff7:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101ffc:	c1 e0 02             	shl    $0x2,%eax
c0101fff:	89 c2                	mov    %eax,%edx
c0102001:	c1 e2 04             	shl    $0x4,%edx
c0102004:	01 d0                	add    %edx,%eax
c0102006:	83 c0 30             	add    $0x30,%eax
c0102009:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010200e:	8b 40 0c             	mov    0xc(%eax),%eax
c0102011:	8b 40 08             	mov    0x8(%eax),%eax
c0102014:	89 c3                	mov    %eax,%ebx
c0102016:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c010201b:	c1 e0 02             	shl    $0x2,%eax
c010201e:	89 c2                	mov    %eax,%edx
c0102020:	c1 e2 04             	shl    $0x4,%edx
c0102023:	01 d0                	add    %edx,%eax
c0102025:	83 c0 30             	add    $0x30,%eax
c0102028:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010202d:	8b 40 0c             	mov    0xc(%eax),%eax
c0102030:	8b 50 30             	mov    0x30(%eax),%edx
c0102033:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0102038:	c1 e0 02             	shl    $0x2,%eax
c010203b:	89 c1                	mov    %eax,%ecx
c010203d:	c1 e1 04             	shl    $0x4,%ecx
c0102040:	01 c8                	add    %ecx,%eax
c0102042:	83 c0 30             	add    $0x30,%eax
c0102045:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010204a:	8b 40 0c             	mov    0xc(%eax),%eax
c010204d:	83 c0 0c             	add    $0xc,%eax
c0102050:	83 ec 08             	sub    $0x8,%esp
c0102053:	53                   	push   %ebx
c0102054:	52                   	push   %edx
c0102055:	ff 75 08             	pushl  0x8(%ebp)
c0102058:	50                   	push   %eax
c0102059:	ff 75 0c             	pushl  0xc(%ebp)
c010205c:	6a 03                	push   $0x3
c010205e:	e8 b5 f0 ff ff       	call   c0101118 <add_PCB>
c0102063:	83 c4 20             	add    $0x20,%esp
c0102066:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c010206b:	c1 e0 02             	shl    $0x2,%eax
c010206e:	89 c2                	mov    %eax,%edx
c0102070:	c1 e2 04             	shl    $0x4,%edx
c0102073:	01 d0                	add    %edx,%eax
c0102075:	83 c0 30             	add    $0x30,%eax
c0102078:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010207d:	8b 40 0c             	mov    0xc(%eax),%eax
c0102080:	8b 00                	mov    (%eax),%eax
c0102082:	83 ec 0c             	sub    $0xc,%esp
c0102085:	50                   	push   %eax
c0102086:	e8 5e f4 ff ff       	call   c01014e9 <delete_PCB>
c010208b:	83 c4 10             	add    $0x10,%esp
c010208e:	e8 3d f8 ff ff       	call   c01018d0 <reschedule>
c0102093:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102096:	c9                   	leave  
c0102097:	c3                   	ret    

c0102098 <my_fork>:
c0102098:	55                   	push   %ebp
c0102099:	89 e5                	mov    %esp,%ebp
c010209b:	56                   	push   %esi
c010209c:	53                   	push   %ebx
c010209d:	83 ec 10             	sub    $0x10,%esp
c01020a0:	e8 a9 ee ff ff       	call   c0100f4e <get_free_pid>
c01020a5:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01020a8:	83 ec 08             	sub    $0x8,%esp
c01020ab:	ff 75 f4             	pushl  -0xc(%ebp)
c01020ae:	68 45 3e 10 c0       	push   $0xc0103e45
c01020b3:	e8 b2 12 00 00       	call   c010336a <printk>
c01020b8:	83 c4 10             	add    $0x10,%esp
c01020bb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01020be:	c1 e0 02             	shl    $0x2,%eax
c01020c1:	89 c2                	mov    %eax,%edx
c01020c3:	c1 e2 04             	shl    $0x4,%edx
c01020c6:	29 c2                	sub    %eax,%edx
c01020c8:	89 d0                	mov    %edx,%eax
c01020ca:	8d 90 00 41 13 c0    	lea    -0x3fecbf00(%eax),%edx
c01020d0:	8b 45 08             	mov    0x8(%ebp),%eax
c01020d3:	8b 08                	mov    (%eax),%ecx
c01020d5:	89 0a                	mov    %ecx,(%edx)
c01020d7:	8b 48 04             	mov    0x4(%eax),%ecx
c01020da:	89 4a 04             	mov    %ecx,0x4(%edx)
c01020dd:	8b 48 08             	mov    0x8(%eax),%ecx
c01020e0:	89 4a 08             	mov    %ecx,0x8(%edx)
c01020e3:	8b 48 0c             	mov    0xc(%eax),%ecx
c01020e6:	89 4a 0c             	mov    %ecx,0xc(%edx)
c01020e9:	8b 48 10             	mov    0x10(%eax),%ecx
c01020ec:	89 4a 10             	mov    %ecx,0x10(%edx)
c01020ef:	8b 48 14             	mov    0x14(%eax),%ecx
c01020f2:	89 4a 14             	mov    %ecx,0x14(%edx)
c01020f5:	8b 48 18             	mov    0x18(%eax),%ecx
c01020f8:	89 4a 18             	mov    %ecx,0x18(%edx)
c01020fb:	8b 48 1c             	mov    0x1c(%eax),%ecx
c01020fe:	89 4a 1c             	mov    %ecx,0x1c(%edx)
c0102101:	8b 48 20             	mov    0x20(%eax),%ecx
c0102104:	89 4a 20             	mov    %ecx,0x20(%edx)
c0102107:	8b 48 24             	mov    0x24(%eax),%ecx
c010210a:	89 4a 24             	mov    %ecx,0x24(%edx)
c010210d:	8b 48 28             	mov    0x28(%eax),%ecx
c0102110:	89 4a 28             	mov    %ecx,0x28(%edx)
c0102113:	8b 48 2c             	mov    0x2c(%eax),%ecx
c0102116:	89 4a 2c             	mov    %ecx,0x2c(%edx)
c0102119:	8b 48 30             	mov    0x30(%eax),%ecx
c010211c:	89 4a 30             	mov    %ecx,0x30(%edx)
c010211f:	8b 48 34             	mov    0x34(%eax),%ecx
c0102122:	89 4a 34             	mov    %ecx,0x34(%edx)
c0102125:	8b 40 38             	mov    0x38(%eax),%eax
c0102128:	89 42 38             	mov    %eax,0x38(%edx)
c010212b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010212e:	89 c2                	mov    %eax,%edx
c0102130:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102137:	89 c2                	mov    %eax,%edx
c0102139:	89 d0                	mov    %edx,%eax
c010213b:	c1 e0 04             	shl    $0x4,%eax
c010213e:	29 d0                	sub    %edx,%eax
c0102140:	83 c0 10             	add    $0x10,%eax
c0102143:	05 00 41 13 c0       	add    $0xc0134100,%eax
c0102148:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c010214f:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c0102154:	83 f8 01             	cmp    $0x1,%eax
c0102157:	75 1a                	jne    c0102173 <my_fork+0xdb>
c0102159:	83 ec 0c             	sub    $0xc,%esp
c010215c:	68 58 3e 10 c0       	push   $0xc0103e58
c0102161:	e8 04 12 00 00       	call   c010336a <printk>
c0102166:	83 c4 10             	add    $0x10,%esp
c0102169:	b8 00 00 00 00       	mov    $0x0,%eax
c010216e:	e9 03 01 00 00       	jmp    c0102276 <my_fork+0x1de>
c0102173:	a1 04 00 1b c0       	mov    0xc01b0004,%eax
c0102178:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010217b:	c1 e2 0c             	shl    $0xc,%edx
c010217e:	81 c2 00 60 13 c0    	add    $0xc0136000,%edx
c0102184:	83 ec 04             	sub    $0x4,%esp
c0102187:	68 00 10 00 00       	push   $0x1000
c010218c:	50                   	push   %eax
c010218d:	52                   	push   %edx
c010218e:	e8 fc 11 00 00       	call   c010338f <my_memcpy>
c0102193:	83 c4 10             	add    $0x10,%esp
c0102196:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c010219b:	c1 e0 02             	shl    $0x2,%eax
c010219e:	89 c2                	mov    %eax,%edx
c01021a0:	c1 e2 04             	shl    $0x4,%edx
c01021a3:	01 d0                	add    %edx,%eax
c01021a5:	83 c0 30             	add    $0x30,%eax
c01021a8:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01021ad:	8b 40 0c             	mov    0xc(%eax),%eax
c01021b0:	8b 58 08             	mov    0x8(%eax),%ebx
c01021b3:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c01021b8:	c1 e0 02             	shl    $0x2,%eax
c01021bb:	89 c2                	mov    %eax,%edx
c01021bd:	c1 e2 04             	shl    $0x4,%edx
c01021c0:	01 d0                	add    %edx,%eax
c01021c2:	83 c0 30             	add    $0x30,%eax
c01021c5:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01021ca:	8b 40 0c             	mov    0xc(%eax),%eax
c01021cd:	8b 48 38             	mov    0x38(%eax),%ecx
c01021d0:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c01021d5:	c1 e0 02             	shl    $0x2,%eax
c01021d8:	89 c2                	mov    %eax,%edx
c01021da:	c1 e2 04             	shl    $0x4,%edx
c01021dd:	01 d0                	add    %edx,%eax
c01021df:	83 c0 30             	add    $0x30,%eax
c01021e2:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01021e7:	8b 40 0c             	mov    0xc(%eax),%eax
c01021ea:	8d 70 0c             	lea    0xc(%eax),%esi
c01021ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01021f0:	89 c2                	mov    %eax,%edx
c01021f2:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01021f9:	89 c2                	mov    %eax,%edx
c01021fb:	89 d0                	mov    %edx,%eax
c01021fd:	c1 e0 04             	shl    $0x4,%eax
c0102200:	29 d0                	sub    %edx,%eax
c0102202:	05 00 41 13 c0       	add    $0xc0134100,%eax
c0102207:	83 ec 08             	sub    $0x8,%esp
c010220a:	ff 75 f4             	pushl  -0xc(%ebp)
c010220d:	53                   	push   %ebx
c010220e:	51                   	push   %ecx
c010220f:	56                   	push   %esi
c0102210:	50                   	push   %eax
c0102211:	6a 01                	push   $0x1
c0102213:	e8 00 ef ff ff       	call   c0101118 <add_PCB>
c0102218:	83 c4 20             	add    $0x20,%esp
c010221b:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0102220:	c1 e0 02             	shl    $0x2,%eax
c0102223:	89 c2                	mov    %eax,%edx
c0102225:	c1 e2 04             	shl    $0x4,%edx
c0102228:	01 d0                	add    %edx,%eax
c010222a:	83 c0 30             	add    $0x30,%eax
c010222d:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102232:	8b 40 0c             	mov    0xc(%eax),%eax
c0102235:	8b 40 08             	mov    0x8(%eax),%eax
c0102238:	c1 e0 0c             	shl    $0xc,%eax
c010223b:	8d 90 00 60 13 c0    	lea    -0x3feca000(%eax),%edx
c0102241:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102244:	c1 e0 0c             	shl    $0xc,%eax
c0102247:	05 00 60 13 c0       	add    $0xc0136000,%eax
c010224c:	83 ec 08             	sub    $0x8,%esp
c010224f:	52                   	push   %edx
c0102250:	50                   	push   %eax
c0102251:	e8 7d 0b 00 00       	call   c0102dd3 <copy_pgdir>
c0102256:	83 c4 10             	add    $0x10,%esp
c0102259:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c010225e:	c1 e0 02             	shl    $0x2,%eax
c0102261:	89 c2                	mov    %eax,%edx
c0102263:	c1 e2 04             	shl    $0x4,%edx
c0102266:	01 d0                	add    %edx,%eax
c0102268:	83 c0 30             	add    $0x30,%eax
c010226b:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102270:	8b 40 0c             	mov    0xc(%eax),%eax
c0102273:	8b 40 08             	mov    0x8(%eax),%eax
c0102276:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0102279:	5b                   	pop    %ebx
c010227a:	5e                   	pop    %esi
c010227b:	5d                   	pop    %ebp
c010227c:	c3                   	ret    

c010227d <pthread_create>:
c010227d:	55                   	push   %ebp
c010227e:	89 e5                	mov    %esp,%ebp
c0102280:	53                   	push   %ebx
c0102281:	83 ec 24             	sub    $0x24,%esp
c0102284:	e8 c5 ec ff ff       	call   c0100f4e <get_free_pid>
c0102289:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010228c:	83 ec 08             	sub    $0x8,%esp
c010228f:	ff 75 f0             	pushl  -0x10(%ebp)
c0102292:	68 93 3e 10 c0       	push   $0xc0103e93
c0102297:	e8 ce 10 00 00       	call   c010336a <printk>
c010229c:	83 c4 10             	add    $0x10,%esp
c010229f:	c7 45 ec 00 04 00 00 	movl   $0x400,-0x14(%ebp)
c01022a6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01022ad:	eb 1d                	jmp    c01022cc <pthread_create+0x4f>
c01022af:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01022b2:	0f b7 04 c5 44 00 1b 	movzwl -0x3fe4ffbc(,%eax,8),%eax
c01022b9:	c0 
c01022ba:	8d 50 01             	lea    0x1(%eax),%edx
c01022bd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01022c0:	66 89 14 c5 44 00 1b 	mov    %dx,-0x3fe4ffbc(,%eax,8)
c01022c7:	c0 
c01022c8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01022cc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01022cf:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c01022d2:	7c db                	jl     c01022af <pthread_create+0x32>
c01022d4:	8b 4d 08             	mov    0x8(%ebp),%ecx
c01022d7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01022da:	89 c2                	mov    %eax,%edx
c01022dc:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01022e3:	89 c2                	mov    %eax,%edx
c01022e5:	89 d0                	mov    %edx,%eax
c01022e7:	c1 e0 04             	shl    $0x4,%eax
c01022ea:	29 d0                	sub    %edx,%eax
c01022ec:	83 c0 20             	add    $0x20,%eax
c01022ef:	05 00 41 13 c0       	add    $0xc0134100,%eax
c01022f4:	89 48 08             	mov    %ecx,0x8(%eax)
c01022f7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01022fa:	89 c2                	mov    %eax,%edx
c01022fc:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102303:	89 c2                	mov    %eax,%edx
c0102305:	89 d0                	mov    %edx,%eax
c0102307:	c1 e0 04             	shl    $0x4,%eax
c010230a:	29 d0                	sub    %edx,%eax
c010230c:	83 c0 20             	add    $0x20,%eax
c010230f:	05 00 41 13 c0       	add    $0xc0134100,%eax
c0102314:	c7 40 0c 1b 00 00 00 	movl   $0x1b,0xc(%eax)
c010231b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010231e:	89 c2                	mov    %eax,%edx
c0102320:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0102327:	89 c2                	mov    %eax,%edx
c0102329:	89 d0                	mov    %edx,%eax
c010232b:	c1 e0 04             	shl    $0x4,%eax
c010232e:	29 d0                	sub    %edx,%eax
c0102330:	83 c0 30             	add    $0x30,%eax
c0102333:	05 00 41 13 c0       	add    $0xc0134100,%eax
c0102338:	c7 00 02 02 00 00    	movl   $0x202,(%eax)
c010233e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102341:	89 c2                	mov    %eax,%edx
c0102343:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c010234a:	89 c2                	mov    %eax,%edx
c010234c:	89 d0                	mov    %edx,%eax
c010234e:	c1 e0 04             	shl    $0x4,%eax
c0102351:	29 d0                	sub    %edx,%eax
c0102353:	83 c0 30             	add    $0x30,%eax
c0102356:	05 00 41 13 c0       	add    $0xc0134100,%eax
c010235b:	c7 40 04 f0 ff 60 00 	movl   $0x60fff0,0x4(%eax)
c0102362:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102365:	89 c2                	mov    %eax,%edx
c0102367:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c010236e:	89 c2                	mov    %eax,%edx
c0102370:	89 d0                	mov    %edx,%eax
c0102372:	c1 e0 04             	shl    $0x4,%eax
c0102375:	29 d0                	sub    %edx,%eax
c0102377:	83 c0 30             	add    $0x30,%eax
c010237a:	05 00 41 13 c0       	add    $0xc0134100,%eax
c010237f:	c7 40 08 23 00 00 00 	movl   $0x23,0x8(%eax)
c0102386:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c010238b:	c1 e0 02             	shl    $0x2,%eax
c010238e:	89 c2                	mov    %eax,%edx
c0102390:	c1 e2 04             	shl    $0x4,%edx
c0102393:	01 d0                	add    %edx,%eax
c0102395:	83 c0 30             	add    $0x30,%eax
c0102398:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010239d:	8b 40 0c             	mov    0xc(%eax),%eax
c01023a0:	8b 48 08             	mov    0x8(%eax),%ecx
c01023a3:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c01023a8:	c1 e0 02             	shl    $0x2,%eax
c01023ab:	89 c2                	mov    %eax,%edx
c01023ad:	c1 e2 04             	shl    $0x4,%edx
c01023b0:	01 d0                	add    %edx,%eax
c01023b2:	83 c0 30             	add    $0x30,%eax
c01023b5:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01023ba:	8b 40 0c             	mov    0xc(%eax),%eax
c01023bd:	8d 58 0c             	lea    0xc(%eax),%ebx
c01023c0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01023c3:	89 c2                	mov    %eax,%edx
c01023c5:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01023cc:	89 c2                	mov    %eax,%edx
c01023ce:	89 d0                	mov    %edx,%eax
c01023d0:	c1 e0 04             	shl    $0x4,%eax
c01023d3:	29 d0                	sub    %edx,%eax
c01023d5:	05 00 41 13 c0       	add    $0xc0134100,%eax
c01023da:	83 ec 08             	sub    $0x8,%esp
c01023dd:	ff 75 f0             	pushl  -0x10(%ebp)
c01023e0:	51                   	push   %ecx
c01023e1:	68 c8 00 00 00       	push   $0xc8
c01023e6:	53                   	push   %ebx
c01023e7:	50                   	push   %eax
c01023e8:	6a 02                	push   $0x2
c01023ea:	e8 29 ed ff ff       	call   c0101118 <add_PCB>
c01023ef:	83 c4 20             	add    $0x20,%esp
c01023f2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01023f5:	c1 e0 0c             	shl    $0xc,%eax
c01023f8:	05 00 60 13 c0       	add    $0xc0136000,%eax
c01023fd:	83 ec 04             	sub    $0x4,%esp
c0102400:	68 00 00 01 00       	push   $0x10000
c0102405:	68 00 00 60 00       	push   $0x600000
c010240a:	50                   	push   %eax
c010240b:	e8 50 03 00 00       	call   c0102760 <mm_alloc>
c0102410:	83 c4 10             	add    $0x10,%esp
c0102413:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0102418:	c1 e0 02             	shl    $0x2,%eax
c010241b:	89 c2                	mov    %eax,%edx
c010241d:	c1 e2 04             	shl    $0x4,%edx
c0102420:	01 d0                	add    %edx,%eax
c0102422:	83 c0 30             	add    $0x30,%eax
c0102425:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010242a:	8b 40 0c             	mov    0xc(%eax),%eax
c010242d:	8b 40 08             	mov    0x8(%eax),%eax
c0102430:	c1 e0 0c             	shl    $0xc,%eax
c0102433:	8d 90 00 60 13 c0    	lea    -0x3feca000(%eax),%edx
c0102439:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010243c:	c1 e0 0c             	shl    $0xc,%eax
c010243f:	05 00 60 13 c0       	add    $0xc0136000,%eax
c0102444:	83 ec 08             	sub    $0x8,%esp
c0102447:	52                   	push   %edx
c0102448:	50                   	push   %eax
c0102449:	e8 82 0b 00 00       	call   c0102fd0 <thread_copy_pgdir>
c010244e:	83 c4 10             	add    $0x10,%esp
c0102451:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102454:	c1 e0 0c             	shl    $0xc,%eax
c0102457:	05 00 60 13 c0       	add    $0xc0136000,%eax
c010245c:	83 ec 04             	sub    $0x4,%esp
c010245f:	50                   	push   %eax
c0102460:	68 d2 01 00 00       	push   $0x1d2
c0102465:	68 a8 3e 10 c0       	push   $0xc0103ea8
c010246a:	e8 9e e8 ff ff       	call   c0100d0d <_paddr>
c010246f:	83 c4 10             	add    $0x10,%esp
c0102472:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0102475:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0102478:	0f 22 d8             	mov    %eax,%cr3
c010247b:	c7 45 e8 f4 ff 60 00 	movl   $0x60fff4,-0x18(%ebp)
c0102482:	8b 55 0c             	mov    0xc(%ebp),%edx
c0102485:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102488:	89 10                	mov    %edx,(%eax)
c010248a:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c010248f:	c1 e0 02             	shl    $0x2,%eax
c0102492:	89 c2                	mov    %eax,%edx
c0102494:	c1 e2 04             	shl    $0x4,%edx
c0102497:	01 d0                	add    %edx,%eax
c0102499:	83 c0 30             	add    $0x30,%eax
c010249c:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01024a1:	8b 40 0c             	mov    0xc(%eax),%eax
c01024a4:	8b 40 08             	mov    0x8(%eax),%eax
c01024a7:	c1 e0 0c             	shl    $0xc,%eax
c01024aa:	05 00 60 13 c0       	add    $0xc0136000,%eax
c01024af:	83 ec 04             	sub    $0x4,%esp
c01024b2:	50                   	push   %eax
c01024b3:	68 d5 01 00 00       	push   $0x1d5
c01024b8:	68 a8 3e 10 c0       	push   $0xc0103ea8
c01024bd:	e8 4b e8 ff ff       	call   c0100d0d <_paddr>
c01024c2:	83 c4 10             	add    $0x10,%esp
c01024c5:	89 45 e0             	mov    %eax,-0x20(%ebp)
c01024c8:	8b 45 e0             	mov    -0x20(%ebp),%eax
c01024cb:	0f 22 d8             	mov    %eax,%cr3
c01024ce:	b8 00 00 00 00       	mov    $0x0,%eax
c01024d3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c01024d6:	c9                   	leave  
c01024d7:	c3                   	ret    

c01024d8 <run_pid>:
c01024d8:	55                   	push   %ebp
c01024d9:	89 e5                	mov    %esp,%ebp
c01024db:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c01024e0:	c1 e0 02             	shl    $0x2,%eax
c01024e3:	89 c2                	mov    %eax,%edx
c01024e5:	c1 e2 04             	shl    $0x4,%edx
c01024e8:	01 d0                	add    %edx,%eax
c01024ea:	83 c0 30             	add    $0x30,%eax
c01024ed:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01024f2:	8b 40 0c             	mov    0xc(%eax),%eax
c01024f5:	8b 40 08             	mov    0x8(%eax),%eax
c01024f8:	5d                   	pop    %ebp
c01024f9:	c3                   	ret    

c01024fa <sleep_forever>:
c01024fa:	55                   	push   %ebp
c01024fb:	89 e5                	mov    %esp,%ebp
c01024fd:	53                   	push   %ebx
c01024fe:	83 ec 04             	sub    $0x4,%esp
c0102501:	a1 00 20 17 c0       	mov    0xc0172000,%eax
c0102506:	83 f8 01             	cmp    $0x1,%eax
c0102509:	75 15                	jne    c0102520 <sleep_forever+0x26>
c010250b:	83 ec 0c             	sub    $0xc,%esp
c010250e:	68 11 3e 10 c0       	push   $0xc0103e11
c0102513:	e8 52 0e 00 00       	call   c010336a <printk>
c0102518:	83 c4 10             	add    $0x10,%esp
c010251b:	e9 c9 00 00 00       	jmp    c01025e9 <sleep_forever+0xef>
c0102520:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0102525:	c1 e0 02             	shl    $0x2,%eax
c0102528:	89 c2                	mov    %eax,%edx
c010252a:	c1 e2 04             	shl    $0x4,%edx
c010252d:	01 d0                	add    %edx,%eax
c010252f:	83 c0 30             	add    $0x30,%eax
c0102532:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102537:	8b 40 0c             	mov    0xc(%eax),%eax
c010253a:	8b 40 08             	mov    0x8(%eax),%eax
c010253d:	83 ec 08             	sub    $0x8,%esp
c0102540:	50                   	push   %eax
c0102541:	68 b8 3e 10 c0       	push   $0xc0103eb8
c0102546:	e8 1f 0e 00 00       	call   c010336a <printk>
c010254b:	83 c4 10             	add    $0x10,%esp
c010254e:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0102553:	c1 e0 02             	shl    $0x2,%eax
c0102556:	89 c2                	mov    %eax,%edx
c0102558:	c1 e2 04             	shl    $0x4,%edx
c010255b:	01 d0                	add    %edx,%eax
c010255d:	83 c0 30             	add    $0x30,%eax
c0102560:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102565:	8b 40 0c             	mov    0xc(%eax),%eax
c0102568:	8b 40 08             	mov    0x8(%eax),%eax
c010256b:	89 c3                	mov    %eax,%ebx
c010256d:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0102572:	c1 e0 02             	shl    $0x2,%eax
c0102575:	89 c2                	mov    %eax,%edx
c0102577:	c1 e2 04             	shl    $0x4,%edx
c010257a:	01 d0                	add    %edx,%eax
c010257c:	83 c0 30             	add    $0x30,%eax
c010257f:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102584:	8b 40 0c             	mov    0xc(%eax),%eax
c0102587:	8b 50 30             	mov    0x30(%eax),%edx
c010258a:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c010258f:	c1 e0 02             	shl    $0x2,%eax
c0102592:	89 c1                	mov    %eax,%ecx
c0102594:	c1 e1 04             	shl    $0x4,%ecx
c0102597:	01 c8                	add    %ecx,%eax
c0102599:	83 c0 30             	add    $0x30,%eax
c010259c:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01025a1:	8b 40 0c             	mov    0xc(%eax),%eax
c01025a4:	83 c0 0c             	add    $0xc,%eax
c01025a7:	83 ec 08             	sub    $0x8,%esp
c01025aa:	53                   	push   %ebx
c01025ab:	52                   	push   %edx
c01025ac:	6a ff                	push   $0xffffffff
c01025ae:	50                   	push   %eax
c01025af:	ff 75 08             	pushl  0x8(%ebp)
c01025b2:	6a 03                	push   $0x3
c01025b4:	e8 5f eb ff ff       	call   c0101118 <add_PCB>
c01025b9:	83 c4 20             	add    $0x20,%esp
c01025bc:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c01025c1:	c1 e0 02             	shl    $0x2,%eax
c01025c4:	89 c2                	mov    %eax,%edx
c01025c6:	c1 e2 04             	shl    $0x4,%edx
c01025c9:	01 d0                	add    %edx,%eax
c01025cb:	83 c0 30             	add    $0x30,%eax
c01025ce:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c01025d3:	8b 40 0c             	mov    0xc(%eax),%eax
c01025d6:	8b 00                	mov    (%eax),%eax
c01025d8:	83 ec 0c             	sub    $0xc,%esp
c01025db:	50                   	push   %eax
c01025dc:	e8 08 ef ff ff       	call   c01014e9 <delete_PCB>
c01025e1:	83 c4 10             	add    $0x10,%esp
c01025e4:	e8 e7 f2 ff ff       	call   c01018d0 <reschedule>
c01025e9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c01025ec:	c9                   	leave  
c01025ed:	c3                   	ret    

c01025ee <wakeup>:
c01025ee:	55                   	push   %ebp
c01025ef:	89 e5                	mov    %esp,%ebp
c01025f1:	53                   	push   %ebx
c01025f2:	83 ec 14             	sub    $0x14,%esp
c01025f5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01025fc:	eb 22                	jmp    c0102620 <wakeup+0x32>
c01025fe:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102601:	c1 e0 02             	shl    $0x2,%eax
c0102604:	89 c2                	mov    %eax,%edx
c0102606:	c1 e2 04             	shl    $0x4,%edx
c0102609:	01 d0                	add    %edx,%eax
c010260b:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102610:	8b 50 08             	mov    0x8(%eax),%edx
c0102613:	8b 45 08             	mov    0x8(%ebp),%eax
c0102616:	39 c2                	cmp    %eax,%edx
c0102618:	75 02                	jne    c010261c <wakeup+0x2e>
c010261a:	eb 0a                	jmp    c0102626 <wakeup+0x38>
c010261c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102620:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c0102624:	7e d8                	jle    c01025fe <wakeup+0x10>
c0102626:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102629:	c1 e0 02             	shl    $0x2,%eax
c010262c:	89 c2                	mov    %eax,%edx
c010262e:	c1 e2 04             	shl    $0x4,%edx
c0102631:	01 d0                	add    %edx,%eax
c0102633:	83 c0 30             	add    $0x30,%eax
c0102636:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010263b:	8b 10                	mov    (%eax),%edx
c010263d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102640:	c1 e0 02             	shl    $0x2,%eax
c0102643:	89 c1                	mov    %eax,%ecx
c0102645:	c1 e1 04             	shl    $0x4,%ecx
c0102648:	01 c8                	add    %ecx,%eax
c010264a:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c010264f:	8d 48 0c             	lea    0xc(%eax),%ecx
c0102652:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102655:	c1 e0 02             	shl    $0x2,%eax
c0102658:	89 c3                	mov    %eax,%ebx
c010265a:	c1 e3 04             	shl    $0x4,%ebx
c010265d:	01 d8                	add    %ebx,%eax
c010265f:	05 40 4f 13 c0       	add    $0xc0134f40,%eax
c0102664:	8b 40 04             	mov    0x4(%eax),%eax
c0102667:	83 ec 08             	sub    $0x8,%esp
c010266a:	ff 75 08             	pushl  0x8(%ebp)
c010266d:	52                   	push   %edx
c010266e:	68 c8 00 00 00       	push   $0xc8
c0102673:	51                   	push   %ecx
c0102674:	50                   	push   %eax
c0102675:	6a 02                	push   $0x2
c0102677:	e8 9c ea ff ff       	call   c0101118 <add_PCB>
c010267c:	83 c4 20             	add    $0x20,%esp
c010267f:	83 ec 0c             	sub    $0xc,%esp
c0102682:	ff 75 f4             	pushl  -0xc(%ebp)
c0102685:	e8 5f ee ff ff       	call   c01014e9 <delete_PCB>
c010268a:	83 c4 10             	add    $0x10,%esp
c010268d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102690:	c9                   	leave  
c0102691:	c3                   	ret    

c0102692 <_paddr>:
c0102692:	55                   	push   %ebp
c0102693:	89 e5                	mov    %esp,%ebp
c0102695:	83 ec 08             	sub    $0x8,%esp
c0102698:	8b 45 10             	mov    0x10(%ebp),%eax
c010269b:	3d ff ff ff bf       	cmp    $0xbfffffff,%eax
c01026a0:	77 16                	ja     c01026b8 <_paddr+0x26>
c01026a2:	ff 75 10             	pushl  0x10(%ebp)
c01026a5:	68 cc 3e 10 c0       	push   $0xc0103ecc
c01026aa:	ff 75 0c             	pushl  0xc(%ebp)
c01026ad:	ff 75 08             	pushl  0x8(%ebp)
c01026b0:	e8 b5 0c 00 00       	call   c010336a <printk>
c01026b5:	83 c4 10             	add    $0x10,%esp
c01026b8:	8b 45 10             	mov    0x10(%ebp),%eax
c01026bb:	05 00 00 00 40       	add    $0x40000000,%eax
c01026c0:	c9                   	leave  
c01026c1:	c3                   	ret    

c01026c2 <_kaddr>:
c01026c2:	55                   	push   %ebp
c01026c3:	89 e5                	mov    %esp,%ebp
c01026c5:	83 ec 08             	sub    $0x8,%esp
c01026c8:	8b 45 10             	mov    0x10(%ebp),%eax
c01026cb:	c1 e8 0c             	shr    $0xc,%eax
c01026ce:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c01026d3:	76 13                	jbe    c01026e8 <_kaddr+0x26>
c01026d5:	83 ec 08             	sub    $0x8,%esp
c01026d8:	ff 75 10             	pushl  0x10(%ebp)
c01026db:	68 f0 3e 10 c0       	push   $0xc0103ef0
c01026e0:	e8 85 0c 00 00       	call   c010336a <printk>
c01026e5:	83 c4 10             	add    $0x10,%esp
c01026e8:	8b 45 10             	mov    0x10(%ebp),%eax
c01026eb:	2d 00 00 00 40       	sub    $0x40000000,%eax
c01026f0:	c9                   	leave  
c01026f1:	c3                   	ret    

c01026f2 <page2pa>:
c01026f2:	55                   	push   %ebp
c01026f3:	89 e5                	mov    %esp,%ebp
c01026f5:	8b 45 08             	mov    0x8(%ebp),%eax
c01026f8:	ba 40 00 1b c0       	mov    $0xc01b0040,%edx
c01026fd:	29 d0                	sub    %edx,%eax
c01026ff:	c1 f8 03             	sar    $0x3,%eax
c0102702:	c1 e0 0c             	shl    $0xc,%eax
c0102705:	5d                   	pop    %ebp
c0102706:	c3                   	ret    

c0102707 <pa2page>:
c0102707:	55                   	push   %ebp
c0102708:	89 e5                	mov    %esp,%ebp
c010270a:	83 ec 08             	sub    $0x8,%esp
c010270d:	8b 45 08             	mov    0x8(%ebp),%eax
c0102710:	c1 e8 0c             	shr    $0xc,%eax
c0102713:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0102718:	76 10                	jbe    c010272a <pa2page+0x23>
c010271a:	83 ec 0c             	sub    $0xc,%esp
c010271d:	68 14 3f 10 c0       	push   $0xc0103f14
c0102722:	e8 43 0c 00 00       	call   c010336a <printk>
c0102727:	83 c4 10             	add    $0x10,%esp
c010272a:	8b 45 08             	mov    0x8(%ebp),%eax
c010272d:	c1 e8 0c             	shr    $0xc,%eax
c0102730:	c1 e0 03             	shl    $0x3,%eax
c0102733:	05 40 00 1b c0       	add    $0xc01b0040,%eax
c0102738:	c9                   	leave  
c0102739:	c3                   	ret    

c010273a <page2kva>:
c010273a:	55                   	push   %ebp
c010273b:	89 e5                	mov    %esp,%ebp
c010273d:	83 ec 08             	sub    $0x8,%esp
c0102740:	ff 75 08             	pushl  0x8(%ebp)
c0102743:	e8 aa ff ff ff       	call   c01026f2 <page2pa>
c0102748:	83 c4 04             	add    $0x4,%esp
c010274b:	83 ec 04             	sub    $0x4,%esp
c010274e:	50                   	push   %eax
c010274f:	6a 52                	push   $0x52
c0102751:	68 33 3f 10 c0       	push   $0xc0103f33
c0102756:	e8 67 ff ff ff       	call   c01026c2 <_kaddr>
c010275b:	83 c4 10             	add    $0x10,%esp
c010275e:	c9                   	leave  
c010275f:	c3                   	ret    

c0102760 <mm_alloc>:
c0102760:	55                   	push   %ebp
c0102761:	89 e5                	mov    %esp,%ebp
c0102763:	83 ec 28             	sub    $0x28,%esp
c0102766:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102769:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010276c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010276f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102774:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102777:	c7 45 e8 00 10 00 00 	movl   $0x1000,-0x18(%ebp)
c010277e:	8b 55 10             	mov    0x10(%ebp),%edx
c0102781:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102784:	01 c2                	add    %eax,%edx
c0102786:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102789:	01 d0                	add    %edx,%eax
c010278b:	83 e8 01             	sub    $0x1,%eax
c010278e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0102791:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0102794:	ba 00 00 00 00       	mov    $0x0,%edx
c0102799:	f7 75 e8             	divl   -0x18(%ebp)
c010279c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c010279f:	29 d0                	sub    %edx,%eax
c01027a1:	89 45 e0             	mov    %eax,-0x20(%ebp)
c01027a4:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01027a7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01027aa:	eb 2b                	jmp    c01027d7 <mm_alloc+0x77>
c01027ac:	83 ec 0c             	sub    $0xc,%esp
c01027af:	6a 00                	push   $0x0
c01027b1:	e8 9c 01 00 00       	call   c0102952 <page_alloc>
c01027b6:	83 c4 10             	add    $0x10,%esp
c01027b9:	89 45 dc             	mov    %eax,-0x24(%ebp)
c01027bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01027bf:	6a 07                	push   $0x7
c01027c1:	50                   	push   %eax
c01027c2:	ff 75 dc             	pushl  -0x24(%ebp)
c01027c5:	ff 75 08             	pushl  0x8(%ebp)
c01027c8:	e8 84 03 00 00       	call   c0102b51 <page_insert>
c01027cd:	83 c4 10             	add    $0x10,%esp
c01027d0:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
c01027d7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01027da:	3b 45 e0             	cmp    -0x20(%ebp),%eax
c01027dd:	72 cd                	jb     c01027ac <mm_alloc+0x4c>
c01027df:	c9                   	leave  
c01027e0:	c3                   	ret    

c01027e1 <init_kern_pgdir>:
c01027e1:	55                   	push   %ebp
c01027e2:	89 e5                	mov    %esp,%ebp
c01027e4:	53                   	push   %ebx
c01027e5:	83 ec 24             	sub    $0x24,%esp
c01027e8:	c7 45 e8 00 20 11 c0 	movl   $0xc0112000,-0x18(%ebp)
c01027ef:	c7 45 f0 00 30 11 c0 	movl   $0xc0113000,-0x10(%ebp)
c01027f6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01027fd:	eb 3a                	jmp    c0102839 <init_kern_pgdir+0x58>
c01027ff:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102802:	05 00 03 00 00       	add    $0x300,%eax
c0102807:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010280e:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102811:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0102814:	83 ec 04             	sub    $0x4,%esp
c0102817:	ff 75 f0             	pushl  -0x10(%ebp)
c010281a:	6a 54                	push   $0x54
c010281c:	68 42 3f 10 c0       	push   $0xc0103f42
c0102821:	e8 6c fe ff ff       	call   c0102692 <_paddr>
c0102826:	83 c4 10             	add    $0x10,%esp
c0102829:	83 c8 03             	or     $0x3,%eax
c010282c:	89 03                	mov    %eax,(%ebx)
c010282e:	81 45 f0 00 10 00 00 	addl   $0x1000,-0x10(%ebp)
c0102835:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102839:	83 7d f4 1f          	cmpl   $0x1f,-0xc(%ebp)
c010283d:	7e c0                	jle    c01027ff <init_kern_pgdir+0x1e>
c010283f:	c7 45 ec 00 f0 ff 07 	movl   $0x7fff000,-0x14(%ebp)
c0102846:	83 6d f0 04          	subl   $0x4,-0x10(%ebp)
c010284a:	eb 18                	jmp    c0102864 <init_kern_pgdir+0x83>
c010284c:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010284f:	83 c8 07             	or     $0x7,%eax
c0102852:	89 c2                	mov    %eax,%edx
c0102854:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102857:	89 10                	mov    %edx,(%eax)
c0102859:	83 6d f0 04          	subl   $0x4,-0x10(%ebp)
c010285d:	81 6d ec 00 10 00 00 	subl   $0x1000,-0x14(%ebp)
c0102864:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102868:	79 e2                	jns    c010284c <init_kern_pgdir+0x6b>
c010286a:	8b 45 e8             	mov    -0x18(%ebp),%eax
c010286d:	a3 04 00 1b c0       	mov    %eax,0xc01b0004
c0102872:	a1 04 00 1b c0       	mov    0xc01b0004,%eax
c0102877:	83 ec 04             	sub    $0x4,%esp
c010287a:	50                   	push   %eax
c010287b:	6a 61                	push   $0x61
c010287d:	68 42 3f 10 c0       	push   $0xc0103f42
c0102882:	e8 0b fe ff ff       	call   c0102692 <_paddr>
c0102887:	83 c4 10             	add    $0x10,%esp
c010288a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c010288d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0102890:	0f 22 d8             	mov    %eax,%cr3
c0102893:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102896:	c9                   	leave  
c0102897:	c3                   	ret    

c0102898 <page_init>:
c0102898:	55                   	push   %ebp
c0102899:	89 e5                	mov    %esp,%ebp
c010289b:	83 ec 18             	sub    $0x18,%esp
c010289e:	e8 3e ff ff ff       	call   c01027e1 <init_kern_pgdir>
c01028a3:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
c01028aa:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01028b1:	eb 11                	jmp    c01028c4 <page_init+0x2c>
c01028b3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01028b6:	66 c7 04 c5 44 00 1b 	movw   $0x1,-0x3fe4ffbc(,%eax,8)
c01028bd:	c0 01 00 
c01028c0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01028c4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01028c7:	3b 45 f4             	cmp    -0xc(%ebp),%eax
c01028ca:	77 e7                	ja     c01028b3 <page_init+0x1b>
c01028cc:	c7 45 f4 ff 7f 00 00 	movl   $0x7fff,-0xc(%ebp)
c01028d3:	eb 31                	jmp    c0102906 <page_init+0x6e>
c01028d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01028d8:	66 c7 04 c5 44 00 1b 	movw   $0x0,-0x3fe4ffbc(,%eax,8)
c01028df:	c0 00 00 
c01028e2:	8b 15 00 10 11 c0    	mov    0xc0111000,%edx
c01028e8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01028eb:	89 14 c5 40 00 1b c0 	mov    %edx,-0x3fe4ffc0(,%eax,8)
c01028f2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01028f5:	c1 e0 03             	shl    $0x3,%eax
c01028f8:	05 40 00 1b c0       	add    $0xc01b0040,%eax
c01028fd:	a3 00 10 11 c0       	mov    %eax,0xc0111000
c0102902:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
c0102906:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102909:	3b 45 f4             	cmp    -0xc(%ebp),%eax
c010290c:	76 c7                	jbe    c01028d5 <page_init+0x3d>
c010290e:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
c0102915:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102918:	05 ff f9 00 00       	add    $0xf9ff,%eax
c010291d:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0102920:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102923:	ba 00 00 00 00       	mov    $0x0,%edx
c0102928:	f7 75 ec             	divl   -0x14(%ebp)
c010292b:	8b 45 e8             	mov    -0x18(%ebp),%eax
c010292e:	29 d0                	sub    %edx,%eax
c0102930:	89 c2                	mov    %eax,%edx
c0102932:	a1 04 00 1b c0       	mov    0xc01b0004,%eax
c0102937:	83 ec 0c             	sub    $0xc,%esp
c010293a:	6a 03                	push   $0x3
c010293c:	68 00 00 0a 00       	push   $0xa0000
c0102941:	52                   	push   %edx
c0102942:	68 00 00 0a 00       	push   $0xa0000
c0102947:	50                   	push   %eax
c0102948:	e8 a1 01 00 00       	call   c0102aee <boot_map_region>
c010294d:	83 c4 20             	add    $0x20,%esp
c0102950:	c9                   	leave  
c0102951:	c3                   	ret    

c0102952 <page_alloc>:
c0102952:	55                   	push   %ebp
c0102953:	89 e5                	mov    %esp,%ebp
c0102955:	83 ec 18             	sub    $0x18,%esp
c0102958:	a1 00 10 11 c0       	mov    0xc0111000,%eax
c010295d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102960:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102964:	75 07                	jne    c010296d <page_alloc+0x1b>
c0102966:	b8 00 00 00 00       	mov    $0x0,%eax
c010296b:	eb 43                	jmp    c01029b0 <page_alloc+0x5e>
c010296d:	8b 45 08             	mov    0x8(%ebp),%eax
c0102970:	83 e0 01             	and    $0x1,%eax
c0102973:	85 c0                	test   %eax,%eax
c0102975:	74 21                	je     c0102998 <page_alloc+0x46>
c0102977:	83 ec 0c             	sub    $0xc,%esp
c010297a:	ff 75 f4             	pushl  -0xc(%ebp)
c010297d:	e8 b8 fd ff ff       	call   c010273a <page2kva>
c0102982:	83 c4 10             	add    $0x10,%esp
c0102985:	83 ec 04             	sub    $0x4,%esp
c0102988:	68 00 10 00 00       	push   $0x1000
c010298d:	6a 00                	push   $0x0
c010298f:	50                   	push   %eax
c0102990:	e8 17 0a 00 00       	call   c01033ac <my_memset>
c0102995:	83 c4 10             	add    $0x10,%esp
c0102998:	a1 00 10 11 c0       	mov    0xc0111000,%eax
c010299d:	8b 00                	mov    (%eax),%eax
c010299f:	a3 00 10 11 c0       	mov    %eax,0xc0111000
c01029a4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01029a7:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c01029ad:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01029b0:	c9                   	leave  
c01029b1:	c3                   	ret    

c01029b2 <page_free>:
c01029b2:	55                   	push   %ebp
c01029b3:	89 e5                	mov    %esp,%ebp
c01029b5:	8b 15 00 10 11 c0    	mov    0xc0111000,%edx
c01029bb:	8b 45 08             	mov    0x8(%ebp),%eax
c01029be:	89 10                	mov    %edx,(%eax)
c01029c0:	8b 45 08             	mov    0x8(%ebp),%eax
c01029c3:	a3 00 10 11 c0       	mov    %eax,0xc0111000
c01029c8:	5d                   	pop    %ebp
c01029c9:	c3                   	ret    

c01029ca <page_decref>:
c01029ca:	55                   	push   %ebp
c01029cb:	89 e5                	mov    %esp,%ebp
c01029cd:	8b 45 08             	mov    0x8(%ebp),%eax
c01029d0:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c01029d4:	8d 50 ff             	lea    -0x1(%eax),%edx
c01029d7:	8b 45 08             	mov    0x8(%ebp),%eax
c01029da:	66 89 50 04          	mov    %dx,0x4(%eax)
c01029de:	8b 45 08             	mov    0x8(%ebp),%eax
c01029e1:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c01029e5:	66 85 c0             	test   %ax,%ax
c01029e8:	75 0b                	jne    c01029f5 <page_decref+0x2b>
c01029ea:	ff 75 08             	pushl  0x8(%ebp)
c01029ed:	e8 c0 ff ff ff       	call   c01029b2 <page_free>
c01029f2:	83 c4 04             	add    $0x4,%esp
c01029f5:	c9                   	leave  
c01029f6:	c3                   	ret    

c01029f7 <pgdir_walk>:
c01029f7:	55                   	push   %ebp
c01029f8:	89 e5                	mov    %esp,%ebp
c01029fa:	53                   	push   %ebx
c01029fb:	83 ec 14             	sub    $0x14,%esp
c01029fe:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102a01:	c1 e8 16             	shr    $0x16,%eax
c0102a04:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102a07:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102a0a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102a11:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a14:	01 d0                	add    %edx,%eax
c0102a16:	8b 00                	mov    (%eax),%eax
c0102a18:	83 e0 01             	and    $0x1,%eax
c0102a1b:	85 c0                	test   %eax,%eax
c0102a1d:	74 31                	je     c0102a50 <pgdir_walk+0x59>
c0102a1f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102a22:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102a29:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a2c:	01 d0                	add    %edx,%eax
c0102a2e:	8b 00                	mov    (%eax),%eax
c0102a30:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102a35:	83 ec 04             	sub    $0x4,%esp
c0102a38:	50                   	push   %eax
c0102a39:	68 da 00 00 00       	push   $0xda
c0102a3e:	68 42 3f 10 c0       	push   $0xc0103f42
c0102a43:	e8 7a fc ff ff       	call   c01026c2 <_kaddr>
c0102a48:	83 c4 10             	add    $0x10,%esp
c0102a4b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102a4e:	eb 7c                	jmp    c0102acc <pgdir_walk+0xd5>
c0102a50:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0102a54:	75 0a                	jne    c0102a60 <pgdir_walk+0x69>
c0102a56:	b8 00 00 00 00       	mov    $0x0,%eax
c0102a5b:	e9 89 00 00 00       	jmp    c0102ae9 <pgdir_walk+0xf2>
c0102a60:	83 ec 0c             	sub    $0xc,%esp
c0102a63:	6a 01                	push   $0x1
c0102a65:	e8 e8 fe ff ff       	call   c0102952 <page_alloc>
c0102a6a:	83 c4 10             	add    $0x10,%esp
c0102a6d:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102a70:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102a74:	75 07                	jne    c0102a7d <pgdir_walk+0x86>
c0102a76:	b8 00 00 00 00       	mov    $0x0,%eax
c0102a7b:	eb 6c                	jmp    c0102ae9 <pgdir_walk+0xf2>
c0102a7d:	83 ec 0c             	sub    $0xc,%esp
c0102a80:	ff 75 ec             	pushl  -0x14(%ebp)
c0102a83:	e8 b2 fc ff ff       	call   c010273a <page2kva>
c0102a88:	83 c4 10             	add    $0x10,%esp
c0102a8b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102a8e:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102a91:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102a95:	8d 50 01             	lea    0x1(%eax),%edx
c0102a98:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102a9b:	66 89 50 04          	mov    %dx,0x4(%eax)
c0102a9f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102aa2:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102aa9:	8b 45 08             	mov    0x8(%ebp),%eax
c0102aac:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0102aaf:	83 ec 04             	sub    $0x4,%esp
c0102ab2:	ff 75 f4             	pushl  -0xc(%ebp)
c0102ab5:	68 e5 00 00 00       	push   $0xe5
c0102aba:	68 42 3f 10 c0       	push   $0xc0103f42
c0102abf:	e8 ce fb ff ff       	call   c0102692 <_paddr>
c0102ac4:	83 c4 10             	add    $0x10,%esp
c0102ac7:	83 c8 07             	or     $0x7,%eax
c0102aca:	89 03                	mov    %eax,(%ebx)
c0102acc:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102acf:	c1 e8 0c             	shr    $0xc,%eax
c0102ad2:	25 ff 03 00 00       	and    $0x3ff,%eax
c0102ad7:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0102ada:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102add:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102ae4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102ae7:	01 d0                	add    %edx,%eax
c0102ae9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102aec:	c9                   	leave  
c0102aed:	c3                   	ret    

c0102aee <boot_map_region>:
c0102aee:	55                   	push   %ebp
c0102aef:	89 e5                	mov    %esp,%ebp
c0102af1:	83 ec 18             	sub    $0x18,%esp
c0102af4:	8b 45 10             	mov    0x10(%ebp),%eax
c0102af7:	c1 e8 0c             	shr    $0xc,%eax
c0102afa:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102afd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102b04:	eb 41                	jmp    c0102b47 <boot_map_region+0x59>
c0102b06:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102b09:	83 ec 04             	sub    $0x4,%esp
c0102b0c:	6a 01                	push   $0x1
c0102b0e:	50                   	push   %eax
c0102b0f:	ff 75 08             	pushl  0x8(%ebp)
c0102b12:	e8 e0 fe ff ff       	call   c01029f7 <pgdir_walk>
c0102b17:	83 c4 10             	add    $0x10,%esp
c0102b1a:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102b1d:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102b21:	75 02                	jne    c0102b25 <boot_map_region+0x37>
c0102b23:	eb 2a                	jmp    c0102b4f <boot_map_region+0x61>
c0102b25:	8b 45 18             	mov    0x18(%ebp),%eax
c0102b28:	0b 45 14             	or     0x14(%ebp),%eax
c0102b2b:	83 c8 01             	or     $0x1,%eax
c0102b2e:	89 c2                	mov    %eax,%edx
c0102b30:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102b33:	89 10                	mov    %edx,(%eax)
c0102b35:	81 45 0c 00 10 00 00 	addl   $0x1000,0xc(%ebp)
c0102b3c:	81 45 14 00 10 00 00 	addl   $0x1000,0x14(%ebp)
c0102b43:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102b47:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102b4a:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0102b4d:	7c b7                	jl     c0102b06 <boot_map_region+0x18>
c0102b4f:	c9                   	leave  
c0102b50:	c3                   	ret    

c0102b51 <page_insert>:
c0102b51:	55                   	push   %ebp
c0102b52:	89 e5                	mov    %esp,%ebp
c0102b54:	83 ec 18             	sub    $0x18,%esp
c0102b57:	83 ec 04             	sub    $0x4,%esp
c0102b5a:	6a 01                	push   $0x1
c0102b5c:	ff 75 10             	pushl  0x10(%ebp)
c0102b5f:	ff 75 08             	pushl  0x8(%ebp)
c0102b62:	e8 90 fe ff ff       	call   c01029f7 <pgdir_walk>
c0102b67:	83 c4 10             	add    $0x10,%esp
c0102b6a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102b6d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102b71:	75 07                	jne    c0102b7a <page_insert+0x29>
c0102b73:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0102b78:	eb 75                	jmp    c0102bef <page_insert+0x9e>
c0102b7a:	83 ec 0c             	sub    $0xc,%esp
c0102b7d:	ff 75 0c             	pushl  0xc(%ebp)
c0102b80:	e8 6d fb ff ff       	call   c01026f2 <page2pa>
c0102b85:	83 c4 10             	add    $0x10,%esp
c0102b88:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102b8b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102b8e:	8b 00                	mov    (%eax),%eax
c0102b90:	83 e0 01             	and    $0x1,%eax
c0102b93:	85 c0                	test   %eax,%eax
c0102b95:	74 32                	je     c0102bc9 <page_insert+0x78>
c0102b97:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102b9a:	8b 00                	mov    (%eax),%eax
c0102b9c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102ba1:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0102ba4:	75 12                	jne    c0102bb8 <page_insert+0x67>
c0102ba6:	8b 45 14             	mov    0x14(%ebp),%eax
c0102ba9:	0b 45 f0             	or     -0x10(%ebp),%eax
c0102bac:	83 c8 01             	or     $0x1,%eax
c0102baf:	89 c2                	mov    %eax,%edx
c0102bb1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102bb4:	89 10                	mov    %edx,(%eax)
c0102bb6:	eb 11                	jmp    c0102bc9 <page_insert+0x78>
c0102bb8:	83 ec 08             	sub    $0x8,%esp
c0102bbb:	ff 75 10             	pushl  0x10(%ebp)
c0102bbe:	ff 75 08             	pushl  0x8(%ebp)
c0102bc1:	e8 7a 00 00 00       	call   c0102c40 <page_remove>
c0102bc6:	83 c4 10             	add    $0x10,%esp
c0102bc9:	8b 45 14             	mov    0x14(%ebp),%eax
c0102bcc:	0b 45 f0             	or     -0x10(%ebp),%eax
c0102bcf:	83 c8 01             	or     $0x1,%eax
c0102bd2:	89 c2                	mov    %eax,%edx
c0102bd4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102bd7:	89 10                	mov    %edx,(%eax)
c0102bd9:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102bdc:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102be0:	8d 50 01             	lea    0x1(%eax),%edx
c0102be3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102be6:	66 89 50 04          	mov    %dx,0x4(%eax)
c0102bea:	b8 00 00 00 00       	mov    $0x0,%eax
c0102bef:	c9                   	leave  
c0102bf0:	c3                   	ret    

c0102bf1 <page_lookup>:
c0102bf1:	55                   	push   %ebp
c0102bf2:	89 e5                	mov    %esp,%ebp
c0102bf4:	83 ec 18             	sub    $0x18,%esp
c0102bf7:	83 ec 04             	sub    $0x4,%esp
c0102bfa:	6a 00                	push   $0x0
c0102bfc:	ff 75 0c             	pushl  0xc(%ebp)
c0102bff:	ff 75 08             	pushl  0x8(%ebp)
c0102c02:	e8 f0 fd ff ff       	call   c01029f7 <pgdir_walk>
c0102c07:	83 c4 10             	add    $0x10,%esp
c0102c0a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102c0d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102c11:	75 07                	jne    c0102c1a <page_lookup+0x29>
c0102c13:	b8 00 00 00 00       	mov    $0x0,%eax
c0102c18:	eb 24                	jmp    c0102c3e <page_lookup+0x4d>
c0102c1a:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0102c1e:	74 08                	je     c0102c28 <page_lookup+0x37>
c0102c20:	8b 45 10             	mov    0x10(%ebp),%eax
c0102c23:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102c26:	89 10                	mov    %edx,(%eax)
c0102c28:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102c2b:	8b 00                	mov    (%eax),%eax
c0102c2d:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102c32:	83 ec 0c             	sub    $0xc,%esp
c0102c35:	50                   	push   %eax
c0102c36:	e8 cc fa ff ff       	call   c0102707 <pa2page>
c0102c3b:	83 c4 10             	add    $0x10,%esp
c0102c3e:	c9                   	leave  
c0102c3f:	c3                   	ret    

c0102c40 <page_remove>:
c0102c40:	55                   	push   %ebp
c0102c41:	89 e5                	mov    %esp,%ebp
c0102c43:	83 ec 18             	sub    $0x18,%esp
c0102c46:	8d 45 ec             	lea    -0x14(%ebp),%eax
c0102c49:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102c4c:	83 ec 04             	sub    $0x4,%esp
c0102c4f:	ff 75 f4             	pushl  -0xc(%ebp)
c0102c52:	ff 75 0c             	pushl  0xc(%ebp)
c0102c55:	ff 75 08             	pushl  0x8(%ebp)
c0102c58:	e8 94 ff ff ff       	call   c0102bf1 <page_lookup>
c0102c5d:	83 c4 10             	add    $0x10,%esp
c0102c60:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102c63:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0102c67:	74 2a                	je     c0102c93 <page_remove+0x53>
c0102c69:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102c6c:	8b 00                	mov    (%eax),%eax
c0102c6e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0102c74:	83 ec 0c             	sub    $0xc,%esp
c0102c77:	ff 75 f0             	pushl  -0x10(%ebp)
c0102c7a:	e8 4b fd ff ff       	call   c01029ca <page_decref>
c0102c7f:	83 c4 10             	add    $0x10,%esp
c0102c82:	83 ec 08             	sub    $0x8,%esp
c0102c85:	ff 75 0c             	pushl  0xc(%ebp)
c0102c88:	ff 75 08             	pushl  0x8(%ebp)
c0102c8b:	e8 05 00 00 00       	call   c0102c95 <tlb_invalidate>
c0102c90:	83 c4 10             	add    $0x10,%esp
c0102c93:	c9                   	leave  
c0102c94:	c3                   	ret    

c0102c95 <tlb_invalidate>:
c0102c95:	55                   	push   %ebp
c0102c96:	89 e5                	mov    %esp,%ebp
c0102c98:	83 ec 10             	sub    $0x10,%esp
c0102c9b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102c9e:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0102ca1:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0102ca4:	0f 01 38             	invlpg (%eax)
c0102ca7:	c9                   	leave  
c0102ca8:	c3                   	ret    

c0102ca9 <free_pgdir>:
c0102ca9:	55                   	push   %ebp
c0102caa:	89 e5                	mov    %esp,%ebp
c0102cac:	83 ec 18             	sub    $0x18,%esp
c0102caf:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102cb6:	e9 09 01 00 00       	jmp    c0102dc4 <free_pgdir+0x11b>
c0102cbb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102cbe:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102cc5:	8b 45 08             	mov    0x8(%ebp),%eax
c0102cc8:	01 d0                	add    %edx,%eax
c0102cca:	8b 00                	mov    (%eax),%eax
c0102ccc:	83 e0 01             	and    $0x1,%eax
c0102ccf:	85 c0                	test   %eax,%eax
c0102cd1:	0f 84 e9 00 00 00    	je     c0102dc0 <free_pgdir+0x117>
c0102cd7:	a1 04 00 1b c0       	mov    0xc01b0004,%eax
c0102cdc:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102cdf:	c1 e2 02             	shl    $0x2,%edx
c0102ce2:	01 d0                	add    %edx,%eax
c0102ce4:	8b 00                	mov    (%eax),%eax
c0102ce6:	83 e0 01             	and    $0x1,%eax
c0102ce9:	85 c0                	test   %eax,%eax
c0102ceb:	74 05                	je     c0102cf2 <free_pgdir+0x49>
c0102ced:	e9 ce 00 00 00       	jmp    c0102dc0 <free_pgdir+0x117>
c0102cf2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102cf5:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102cfc:	8b 45 08             	mov    0x8(%ebp),%eax
c0102cff:	01 d0                	add    %edx,%eax
c0102d01:	8b 00                	mov    (%eax),%eax
c0102d03:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102d08:	83 ec 04             	sub    $0x4,%esp
c0102d0b:	50                   	push   %eax
c0102d0c:	68 7a 01 00 00       	push   $0x17a
c0102d11:	68 42 3f 10 c0       	push   $0xc0103f42
c0102d16:	e8 a7 f9 ff ff       	call   c01026c2 <_kaddr>
c0102d1b:	83 c4 10             	add    $0x10,%esp
c0102d1e:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102d21:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0102d28:	eb 4a                	jmp    c0102d74 <free_pgdir+0xcb>
c0102d2a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102d2d:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102d34:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102d37:	01 d0                	add    %edx,%eax
c0102d39:	8b 00                	mov    (%eax),%eax
c0102d3b:	83 e0 01             	and    $0x1,%eax
c0102d3e:	85 c0                	test   %eax,%eax
c0102d40:	74 2e                	je     c0102d70 <free_pgdir+0xc7>
c0102d42:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102d45:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102d4c:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102d4f:	01 d0                	add    %edx,%eax
c0102d51:	8b 00                	mov    (%eax),%eax
c0102d53:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102d58:	83 ec 0c             	sub    $0xc,%esp
c0102d5b:	50                   	push   %eax
c0102d5c:	e8 a6 f9 ff ff       	call   c0102707 <pa2page>
c0102d61:	83 c4 10             	add    $0x10,%esp
c0102d64:	83 ec 0c             	sub    $0xc,%esp
c0102d67:	50                   	push   %eax
c0102d68:	e8 5d fc ff ff       	call   c01029ca <page_decref>
c0102d6d:	83 c4 10             	add    $0x10,%esp
c0102d70:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0102d74:	81 7d f0 ff 03 00 00 	cmpl   $0x3ff,-0x10(%ebp)
c0102d7b:	7e ad                	jle    c0102d2a <free_pgdir+0x81>
c0102d7d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102d80:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102d87:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d8a:	01 d0                	add    %edx,%eax
c0102d8c:	8b 00                	mov    (%eax),%eax
c0102d8e:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102d93:	83 ec 0c             	sub    $0xc,%esp
c0102d96:	50                   	push   %eax
c0102d97:	e8 6b f9 ff ff       	call   c0102707 <pa2page>
c0102d9c:	83 c4 10             	add    $0x10,%esp
c0102d9f:	83 ec 0c             	sub    $0xc,%esp
c0102da2:	50                   	push   %eax
c0102da3:	e8 22 fc ff ff       	call   c01029ca <page_decref>
c0102da8:	83 c4 10             	add    $0x10,%esp
c0102dab:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102dae:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102db5:	8b 45 08             	mov    0x8(%ebp),%eax
c0102db8:	01 d0                	add    %edx,%eax
c0102dba:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0102dc0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102dc4:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
c0102dcb:	0f 8e ea fe ff ff    	jle    c0102cbb <free_pgdir+0x12>
c0102dd1:	c9                   	leave  
c0102dd2:	c3                   	ret    

c0102dd3 <copy_pgdir>:
c0102dd3:	55                   	push   %ebp
c0102dd4:	89 e5                	mov    %esp,%ebp
c0102dd6:	53                   	push   %ebx
c0102dd7:	83 ec 24             	sub    $0x24,%esp
c0102dda:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102de1:	e9 d8 01 00 00       	jmp    c0102fbe <copy_pgdir+0x1eb>
c0102de6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102de9:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102df0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102df3:	01 d0                	add    %edx,%eax
c0102df5:	8b 00                	mov    (%eax),%eax
c0102df7:	83 e0 01             	and    $0x1,%eax
c0102dfa:	85 c0                	test   %eax,%eax
c0102dfc:	0f 84 b8 01 00 00    	je     c0102fba <copy_pgdir+0x1e7>
c0102e02:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102e05:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102e0c:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e0f:	01 d0                	add    %edx,%eax
c0102e11:	8b 00                	mov    (%eax),%eax
c0102e13:	83 e0 01             	and    $0x1,%eax
c0102e16:	85 c0                	test   %eax,%eax
c0102e18:	74 05                	je     c0102e1f <copy_pgdir+0x4c>
c0102e1a:	e9 9b 01 00 00       	jmp    c0102fba <copy_pgdir+0x1e7>
c0102e1f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102e22:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102e29:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102e2c:	01 d0                	add    %edx,%eax
c0102e2e:	8b 00                	mov    (%eax),%eax
c0102e30:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102e35:	83 ec 04             	sub    $0x4,%esp
c0102e38:	50                   	push   %eax
c0102e39:	68 8e 01 00 00       	push   $0x18e
c0102e3e:	68 42 3f 10 c0       	push   $0xc0103f42
c0102e43:	e8 7a f8 ff ff       	call   c01026c2 <_kaddr>
c0102e48:	83 c4 10             	add    $0x10,%esp
c0102e4b:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102e4e:	83 ec 0c             	sub    $0xc,%esp
c0102e51:	6a 01                	push   $0x1
c0102e53:	e8 fa fa ff ff       	call   c0102952 <page_alloc>
c0102e58:	83 c4 10             	add    $0x10,%esp
c0102e5b:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0102e5e:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102e61:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102e65:	8d 50 01             	lea    0x1(%eax),%edx
c0102e68:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102e6b:	66 89 50 04          	mov    %dx,0x4(%eax)
c0102e6f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102e72:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102e79:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e7c:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0102e7f:	83 ec 0c             	sub    $0xc,%esp
c0102e82:	ff 75 e8             	pushl  -0x18(%ebp)
c0102e85:	e8 68 f8 ff ff       	call   c01026f2 <page2pa>
c0102e8a:	83 c4 10             	add    $0x10,%esp
c0102e8d:	89 c1                	mov    %eax,%ecx
c0102e8f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102e92:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102e99:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102e9c:	01 d0                	add    %edx,%eax
c0102e9e:	8b 00                	mov    (%eax),%eax
c0102ea0:	25 ff 0f 00 00       	and    $0xfff,%eax
c0102ea5:	09 c8                	or     %ecx,%eax
c0102ea7:	89 03                	mov    %eax,(%ebx)
c0102ea9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102eac:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102eb3:	8b 45 08             	mov    0x8(%ebp),%eax
c0102eb6:	01 d0                	add    %edx,%eax
c0102eb8:	8b 00                	mov    (%eax),%eax
c0102eba:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102ebf:	83 ec 04             	sub    $0x4,%esp
c0102ec2:	50                   	push   %eax
c0102ec3:	68 95 01 00 00       	push   $0x195
c0102ec8:	68 42 3f 10 c0       	push   $0xc0103f42
c0102ecd:	e8 f0 f7 ff ff       	call   c01026c2 <_kaddr>
c0102ed2:	83 c4 10             	add    $0x10,%esp
c0102ed5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0102ed8:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0102edf:	e9 c9 00 00 00       	jmp    c0102fad <copy_pgdir+0x1da>
c0102ee4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102ee7:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102eee:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102ef1:	01 d0                	add    %edx,%eax
c0102ef3:	8b 00                	mov    (%eax),%eax
c0102ef5:	83 e0 01             	and    $0x1,%eax
c0102ef8:	85 c0                	test   %eax,%eax
c0102efa:	0f 84 a9 00 00 00    	je     c0102fa9 <copy_pgdir+0x1d6>
c0102f00:	83 ec 0c             	sub    $0xc,%esp
c0102f03:	6a 00                	push   $0x0
c0102f05:	e8 48 fa ff ff       	call   c0102952 <page_alloc>
c0102f0a:	83 c4 10             	add    $0x10,%esp
c0102f0d:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0102f10:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102f13:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102f17:	8d 50 01             	lea    0x1(%eax),%edx
c0102f1a:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102f1d:	66 89 50 04          	mov    %dx,0x4(%eax)
c0102f21:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102f24:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102f2b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0102f2e:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0102f31:	83 ec 0c             	sub    $0xc,%esp
c0102f34:	ff 75 e8             	pushl  -0x18(%ebp)
c0102f37:	e8 b6 f7 ff ff       	call   c01026f2 <page2pa>
c0102f3c:	83 c4 10             	add    $0x10,%esp
c0102f3f:	89 c1                	mov    %eax,%ecx
c0102f41:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102f44:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102f4b:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102f4e:	01 d0                	add    %edx,%eax
c0102f50:	8b 00                	mov    (%eax),%eax
c0102f52:	25 ff 0f 00 00       	and    $0xfff,%eax
c0102f57:	09 c8                	or     %ecx,%eax
c0102f59:	89 03                	mov    %eax,(%ebx)
c0102f5b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102f5e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102f65:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102f68:	01 d0                	add    %edx,%eax
c0102f6a:	8b 00                	mov    (%eax),%eax
c0102f6c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102f71:	83 ec 04             	sub    $0x4,%esp
c0102f74:	50                   	push   %eax
c0102f75:	68 9b 01 00 00       	push   $0x19b
c0102f7a:	68 42 3f 10 c0       	push   $0xc0103f42
c0102f7f:	e8 3e f7 ff ff       	call   c01026c2 <_kaddr>
c0102f84:	83 c4 10             	add    $0x10,%esp
c0102f87:	89 c3                	mov    %eax,%ebx
c0102f89:	83 ec 0c             	sub    $0xc,%esp
c0102f8c:	ff 75 e8             	pushl  -0x18(%ebp)
c0102f8f:	e8 a6 f7 ff ff       	call   c010273a <page2kva>
c0102f94:	83 c4 10             	add    $0x10,%esp
c0102f97:	83 ec 04             	sub    $0x4,%esp
c0102f9a:	68 00 10 00 00       	push   $0x1000
c0102f9f:	53                   	push   %ebx
c0102fa0:	50                   	push   %eax
c0102fa1:	e8 e9 03 00 00       	call   c010338f <my_memcpy>
c0102fa6:	83 c4 10             	add    $0x10,%esp
c0102fa9:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0102fad:	81 7d f0 ff 03 00 00 	cmpl   $0x3ff,-0x10(%ebp)
c0102fb4:	0f 8e 2a ff ff ff    	jle    c0102ee4 <copy_pgdir+0x111>
c0102fba:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102fbe:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
c0102fc5:	0f 8e 1b fe ff ff    	jle    c0102de6 <copy_pgdir+0x13>
c0102fcb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102fce:	c9                   	leave  
c0102fcf:	c3                   	ret    

c0102fd0 <thread_copy_pgdir>:
c0102fd0:	55                   	push   %ebp
c0102fd1:	89 e5                	mov    %esp,%ebp
c0102fd3:	83 ec 10             	sub    $0x10,%esp
c0102fd6:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0102fdd:	eb 58                	jmp    c0103037 <thread_copy_pgdir+0x67>
c0102fdf:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0102fe2:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102fe9:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102fec:	01 d0                	add    %edx,%eax
c0102fee:	8b 00                	mov    (%eax),%eax
c0102ff0:	83 e0 01             	and    $0x1,%eax
c0102ff3:	85 c0                	test   %eax,%eax
c0102ff5:	74 3c                	je     c0103033 <thread_copy_pgdir+0x63>
c0102ff7:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0102ffa:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103001:	8b 45 08             	mov    0x8(%ebp),%eax
c0103004:	01 d0                	add    %edx,%eax
c0103006:	8b 00                	mov    (%eax),%eax
c0103008:	83 e0 01             	and    $0x1,%eax
c010300b:	85 c0                	test   %eax,%eax
c010300d:	74 02                	je     c0103011 <thread_copy_pgdir+0x41>
c010300f:	eb 22                	jmp    c0103033 <thread_copy_pgdir+0x63>
c0103011:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103014:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010301b:	8b 45 08             	mov    0x8(%ebp),%eax
c010301e:	01 c2                	add    %eax,%edx
c0103020:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103023:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c010302a:	8b 45 0c             	mov    0xc(%ebp),%eax
c010302d:	01 c8                	add    %ecx,%eax
c010302f:	8b 00                	mov    (%eax),%eax
c0103031:	89 02                	mov    %eax,(%edx)
c0103033:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0103037:	81 7d fc ff 03 00 00 	cmpl   $0x3ff,-0x4(%ebp)
c010303e:	7e 9f                	jle    c0102fdf <thread_copy_pgdir+0xf>
c0103040:	c9                   	leave  
c0103041:	c3                   	ret    

c0103042 <change>:
c0103042:	55                   	push   %ebp
c0103043:	89 e5                	mov    %esp,%ebp
c0103045:	53                   	push   %ebx
c0103046:	83 c4 80             	add    $0xffffff80,%esp
c0103049:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0103050:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0103057:	8b 45 08             	mov    0x8(%ebp),%eax
c010305a:	89 45 ec             	mov    %eax,-0x14(%ebp)
c010305d:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0103061:	75 14                	jne    c0103077 <change+0x35>
c0103063:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103066:	c6 00 30             	movb   $0x30,(%eax)
c0103069:	8b 45 0c             	mov    0xc(%ebp),%eax
c010306c:	83 c0 01             	add    $0x1,%eax
c010306f:	c6 00 00             	movb   $0x0,(%eax)
c0103072:	e9 a5 00 00 00       	jmp    c010311c <change+0xda>
c0103077:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c010307b:	79 1d                	jns    c010309a <change+0x58>
c010307d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103080:	8d 50 01             	lea    0x1(%eax),%edx
c0103083:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0103086:	89 c2                	mov    %eax,%edx
c0103088:	8b 45 0c             	mov    0xc(%ebp),%eax
c010308b:	01 d0                	add    %edx,%eax
c010308d:	c6 00 2d             	movb   $0x2d,(%eax)
c0103090:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0103093:	f7 d8                	neg    %eax
c0103095:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0103098:	eb 06                	jmp    c01030a0 <change+0x5e>
c010309a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010309d:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01030a0:	eb 40                	jmp    c01030e2 <change+0xa0>
c01030a2:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c01030a5:	8d 41 01             	lea    0x1(%ecx),%eax
c01030a8:	89 45 f8             	mov    %eax,-0x8(%ebp)
c01030ab:	8b 5d f0             	mov    -0x10(%ebp),%ebx
c01030ae:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c01030b3:	89 d8                	mov    %ebx,%eax
c01030b5:	f7 e2                	mul    %edx
c01030b7:	c1 ea 03             	shr    $0x3,%edx
c01030ba:	89 d0                	mov    %edx,%eax
c01030bc:	c1 e0 02             	shl    $0x2,%eax
c01030bf:	01 d0                	add    %edx,%eax
c01030c1:	01 c0                	add    %eax,%eax
c01030c3:	29 c3                	sub    %eax,%ebx
c01030c5:	89 da                	mov    %ebx,%edx
c01030c7:	89 d0                	mov    %edx,%eax
c01030c9:	83 c0 30             	add    $0x30,%eax
c01030cc:	88 44 0d 88          	mov    %al,-0x78(%ebp,%ecx,1)
c01030d0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01030d3:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c01030d8:	f7 e2                	mul    %edx
c01030da:	89 d0                	mov    %edx,%eax
c01030dc:	c1 e8 03             	shr    $0x3,%eax
c01030df:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01030e2:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c01030e6:	75 ba                	jne    c01030a2 <change+0x60>
c01030e8:	eb 21                	jmp    c010310b <change+0xc9>
c01030ea:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01030ed:	8d 50 01             	lea    0x1(%eax),%edx
c01030f0:	89 55 f4             	mov    %edx,-0xc(%ebp)
c01030f3:	89 c2                	mov    %eax,%edx
c01030f5:	8b 45 0c             	mov    0xc(%ebp),%eax
c01030f8:	01 c2                	add    %eax,%edx
c01030fa:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
c01030fe:	8d 4d 88             	lea    -0x78(%ebp),%ecx
c0103101:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0103104:	01 c8                	add    %ecx,%eax
c0103106:	0f b6 00             	movzbl (%eax),%eax
c0103109:	88 02                	mov    %al,(%edx)
c010310b:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
c010310f:	75 d9                	jne    c01030ea <change+0xa8>
c0103111:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0103114:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103117:	01 d0                	add    %edx,%eax
c0103119:	c6 00 00             	movb   $0x0,(%eax)
c010311c:	83 ec 80             	sub    $0xffffff80,%esp
c010311f:	5b                   	pop    %ebx
c0103120:	5d                   	pop    %ebp
c0103121:	c3                   	ret    

c0103122 <change_x>:
c0103122:	55                   	push   %ebp
c0103123:	89 e5                	mov    %esp,%ebp
c0103125:	83 ec 70             	sub    $0x70,%esp
c0103128:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c010312f:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0103136:	8b 45 08             	mov    0x8(%ebp),%eax
c0103139:	89 45 f4             	mov    %eax,-0xc(%ebp)
c010313c:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0103140:	75 11                	jne    c0103153 <change_x+0x31>
c0103142:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103145:	c6 00 30             	movb   $0x30,(%eax)
c0103148:	8b 45 0c             	mov    0xc(%ebp),%eax
c010314b:	83 c0 01             	add    $0x1,%eax
c010314e:	c6 00 00             	movb   $0x0,(%eax)
c0103151:	eb 7e                	jmp    c01031d1 <change_x+0xaf>
c0103153:	eb 42                	jmp    c0103197 <change_x+0x75>
c0103155:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103158:	83 e0 0f             	and    $0xf,%eax
c010315b:	83 f8 09             	cmp    $0x9,%eax
c010315e:	77 18                	ja     c0103178 <change_x+0x56>
c0103160:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103163:	8d 50 01             	lea    0x1(%eax),%edx
c0103166:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0103169:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010316c:	83 e2 0f             	and    $0xf,%edx
c010316f:	83 c2 30             	add    $0x30,%edx
c0103172:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
c0103176:	eb 16                	jmp    c010318e <change_x+0x6c>
c0103178:	8b 45 fc             	mov    -0x4(%ebp),%eax
c010317b:	8d 50 01             	lea    0x1(%eax),%edx
c010317e:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0103181:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0103184:	83 e2 0f             	and    $0xf,%edx
c0103187:	83 c2 37             	add    $0x37,%edx
c010318a:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
c010318e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103191:	c1 e8 04             	shr    $0x4,%eax
c0103194:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0103197:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c010319b:	75 b8                	jne    c0103155 <change_x+0x33>
c010319d:	eb 21                	jmp    c01031c0 <change_x+0x9e>
c010319f:	8b 45 f8             	mov    -0x8(%ebp),%eax
c01031a2:	8d 50 01             	lea    0x1(%eax),%edx
c01031a5:	89 55 f8             	mov    %edx,-0x8(%ebp)
c01031a8:	89 c2                	mov    %eax,%edx
c01031aa:	8b 45 0c             	mov    0xc(%ebp),%eax
c01031ad:	01 c2                	add    %eax,%edx
c01031af:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
c01031b3:	8d 4d 90             	lea    -0x70(%ebp),%ecx
c01031b6:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01031b9:	01 c8                	add    %ecx,%eax
c01031bb:	0f b6 00             	movzbl (%eax),%eax
c01031be:	88 02                	mov    %al,(%edx)
c01031c0:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
c01031c4:	75 d9                	jne    c010319f <change_x+0x7d>
c01031c6:	8b 55 f8             	mov    -0x8(%ebp),%edx
c01031c9:	8b 45 0c             	mov    0xc(%ebp),%eax
c01031cc:	01 d0                	add    %edx,%eax
c01031ce:	c6 00 00             	movb   $0x0,(%eax)
c01031d1:	c9                   	leave  
c01031d2:	c3                   	ret    

c01031d3 <v_fprintf>:
c01031d3:	55                   	push   %ebp
c01031d4:	89 e5                	mov    %esp,%ebp
c01031d6:	81 ec 88 00 00 00    	sub    $0x88,%esp
c01031dc:	8b 45 0c             	mov    0xc(%ebp),%eax
c01031df:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01031e2:	8b 45 10             	mov    0x10(%ebp),%eax
c01031e5:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01031e8:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c01031ef:	e9 61 01 00 00       	jmp    c0103355 <v_fprintf+0x182>
c01031f4:	8b 55 f0             	mov    -0x10(%ebp),%edx
c01031f7:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01031fa:	01 d0                	add    %edx,%eax
c01031fc:	0f b6 00             	movzbl (%eax),%eax
c01031ff:	3c 25                	cmp    $0x25,%al
c0103201:	74 27                	je     c010322a <v_fprintf+0x57>
c0103203:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0103206:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0103209:	01 d0                	add    %edx,%eax
c010320b:	0f b6 00             	movzbl (%eax),%eax
c010320e:	88 45 eb             	mov    %al,-0x15(%ebp)
c0103211:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
c0103215:	83 ec 0c             	sub    $0xc,%esp
c0103218:	50                   	push   %eax
c0103219:	8b 45 08             	mov    0x8(%ebp),%eax
c010321c:	ff d0                	call   *%eax
c010321e:	83 c4 10             	add    $0x10,%esp
c0103221:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0103225:	e9 2b 01 00 00       	jmp    c0103355 <v_fprintf+0x182>
c010322a:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c010322e:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0103231:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0103234:	01 d0                	add    %edx,%eax
c0103236:	0f b6 00             	movzbl (%eax),%eax
c0103239:	3c 25                	cmp    $0x25,%al
c010323b:	75 16                	jne    c0103253 <v_fprintf+0x80>
c010323d:	83 ec 0c             	sub    $0xc,%esp
c0103240:	6a 25                	push   $0x25
c0103242:	8b 45 08             	mov    0x8(%ebp),%eax
c0103245:	ff d0                	call   *%eax
c0103247:	83 c4 10             	add    $0x10,%esp
c010324a:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c010324e:	e9 02 01 00 00       	jmp    c0103355 <v_fprintf+0x182>
c0103253:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0103256:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0103259:	01 d0                	add    %edx,%eax
c010325b:	0f b6 00             	movzbl (%eax),%eax
c010325e:	3c 63                	cmp    $0x63,%al
c0103260:	75 26                	jne    c0103288 <v_fprintf+0xb5>
c0103262:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0103266:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103269:	0f b6 00             	movzbl (%eax),%eax
c010326c:	88 45 eb             	mov    %al,-0x15(%ebp)
c010326f:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
c0103273:	83 ec 0c             	sub    $0xc,%esp
c0103276:	50                   	push   %eax
c0103277:	8b 45 08             	mov    0x8(%ebp),%eax
c010327a:	ff d0                	call   *%eax
c010327c:	83 c4 10             	add    $0x10,%esp
c010327f:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0103283:	e9 cd 00 00 00       	jmp    c0103355 <v_fprintf+0x182>
c0103288:	8b 55 f0             	mov    -0x10(%ebp),%edx
c010328b:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010328e:	01 d0                	add    %edx,%eax
c0103290:	0f b6 00             	movzbl (%eax),%eax
c0103293:	3c 64                	cmp    $0x64,%al
c0103295:	75 36                	jne    c01032cd <v_fprintf+0xfa>
c0103297:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c010329b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010329e:	8b 00                	mov    (%eax),%eax
c01032a0:	83 ec 08             	sub    $0x8,%esp
c01032a3:	8d 55 87             	lea    -0x79(%ebp),%edx
c01032a6:	52                   	push   %edx
c01032a7:	50                   	push   %eax
c01032a8:	e8 95 fd ff ff       	call   c0103042 <change>
c01032ad:	83 c4 10             	add    $0x10,%esp
c01032b0:	83 ec 04             	sub    $0x4,%esp
c01032b3:	6a 00                	push   $0x0
c01032b5:	8d 45 87             	lea    -0x79(%ebp),%eax
c01032b8:	50                   	push   %eax
c01032b9:	ff 75 08             	pushl  0x8(%ebp)
c01032bc:	e8 12 ff ff ff       	call   c01031d3 <v_fprintf>
c01032c1:	83 c4 10             	add    $0x10,%esp
c01032c4:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c01032c8:	e9 88 00 00 00       	jmp    c0103355 <v_fprintf+0x182>
c01032cd:	8b 55 f0             	mov    -0x10(%ebp),%edx
c01032d0:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01032d3:	01 d0                	add    %edx,%eax
c01032d5:	0f b6 00             	movzbl (%eax),%eax
c01032d8:	3c 78                	cmp    $0x78,%al
c01032da:	75 33                	jne    c010330f <v_fprintf+0x13c>
c01032dc:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c01032e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01032e3:	8b 00                	mov    (%eax),%eax
c01032e5:	83 ec 08             	sub    $0x8,%esp
c01032e8:	8d 55 87             	lea    -0x79(%ebp),%edx
c01032eb:	52                   	push   %edx
c01032ec:	50                   	push   %eax
c01032ed:	e8 30 fe ff ff       	call   c0103122 <change_x>
c01032f2:	83 c4 10             	add    $0x10,%esp
c01032f5:	83 ec 04             	sub    $0x4,%esp
c01032f8:	6a 00                	push   $0x0
c01032fa:	8d 45 87             	lea    -0x79(%ebp),%eax
c01032fd:	50                   	push   %eax
c01032fe:	ff 75 08             	pushl  0x8(%ebp)
c0103301:	e8 cd fe ff ff       	call   c01031d3 <v_fprintf>
c0103306:	83 c4 10             	add    $0x10,%esp
c0103309:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c010330d:	eb 46                	jmp    c0103355 <v_fprintf+0x182>
c010330f:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0103312:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0103315:	01 d0                	add    %edx,%eax
c0103317:	0f b6 00             	movzbl (%eax),%eax
c010331a:	3c 73                	cmp    $0x73,%al
c010331c:	75 20                	jne    c010333e <v_fprintf+0x16b>
c010331e:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0103322:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103325:	8b 00                	mov    (%eax),%eax
c0103327:	83 ec 04             	sub    $0x4,%esp
c010332a:	6a 00                	push   $0x0
c010332c:	50                   	push   %eax
c010332d:	ff 75 08             	pushl  0x8(%ebp)
c0103330:	e8 9e fe ff ff       	call   c01031d3 <v_fprintf>
c0103335:	83 c4 10             	add    $0x10,%esp
c0103338:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c010333c:	eb 17                	jmp    c0103355 <v_fprintf+0x182>
c010333e:	83 ec 04             	sub    $0x4,%esp
c0103341:	6a 00                	push   $0x0
c0103343:	68 54 3f 10 c0       	push   $0xc0103f54
c0103348:	ff 75 08             	pushl  0x8(%ebp)
c010334b:	e8 83 fe ff ff       	call   c01031d3 <v_fprintf>
c0103350:	83 c4 10             	add    $0x10,%esp
c0103353:	eb 13                	jmp    c0103368 <v_fprintf+0x195>
c0103355:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0103358:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010335b:	01 d0                	add    %edx,%eax
c010335d:	0f b6 00             	movzbl (%eax),%eax
c0103360:	84 c0                	test   %al,%al
c0103362:	0f 85 8c fe ff ff    	jne    c01031f4 <v_fprintf+0x21>
c0103368:	c9                   	leave  
c0103369:	c3                   	ret    

c010336a <printk>:
c010336a:	55                   	push   %ebp
c010336b:	89 e5                	mov    %esp,%ebp
c010336d:	83 ec 18             	sub    $0x18,%esp
c0103370:	8d 45 0c             	lea    0xc(%ebp),%eax
c0103373:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0103376:	8b 45 08             	mov    0x8(%ebp),%eax
c0103379:	83 ec 04             	sub    $0x4,%esp
c010337c:	ff 75 f4             	pushl  -0xc(%ebp)
c010337f:	50                   	push   %eax
c0103380:	68 ff 39 10 c0       	push   $0xc01039ff
c0103385:	e8 49 fe ff ff       	call   c01031d3 <v_fprintf>
c010338a:	83 c4 10             	add    $0x10,%esp
c010338d:	c9                   	leave  
c010338e:	c3                   	ret    

c010338f <my_memcpy>:
c010338f:	55                   	push   %ebp
c0103390:	89 e5                	mov    %esp,%ebp
c0103392:	57                   	push   %edi
c0103393:	56                   	push   %esi
c0103394:	53                   	push   %ebx
c0103395:	8b 45 10             	mov    0x10(%ebp),%eax
c0103398:	8b 55 0c             	mov    0xc(%ebp),%edx
c010339b:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010339e:	89 c1                	mov    %eax,%ecx
c01033a0:	89 d6                	mov    %edx,%esi
c01033a2:	89 df                	mov    %ebx,%edi
c01033a4:	fc                   	cld    
c01033a5:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c01033a7:	5b                   	pop    %ebx
c01033a8:	5e                   	pop    %esi
c01033a9:	5f                   	pop    %edi
c01033aa:	5d                   	pop    %ebp
c01033ab:	c3                   	ret    

c01033ac <my_memset>:
c01033ac:	55                   	push   %ebp
c01033ad:	89 e5                	mov    %esp,%ebp
c01033af:	57                   	push   %edi
c01033b0:	53                   	push   %ebx
c01033b1:	8b 55 10             	mov    0x10(%ebp),%edx
c01033b4:	8b 45 0c             	mov    0xc(%ebp),%eax
c01033b7:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01033ba:	89 d1                	mov    %edx,%ecx
c01033bc:	89 df                	mov    %ebx,%edi
c01033be:	fc                   	cld    
c01033bf:	f3 aa                	rep stos %al,%es:(%edi)
c01033c1:	5b                   	pop    %ebx
c01033c2:	5f                   	pop    %edi
c01033c3:	5d                   	pop    %ebp
c01033c4:	c3                   	ret    

c01033c5 <write_gdtr>:
c01033c5:	55                   	push   %ebp
c01033c6:	89 e5                	mov    %esp,%ebp
c01033c8:	8b 45 0c             	mov    0xc(%ebp),%eax
c01033cb:	83 e8 01             	sub    $0x1,%eax
c01033ce:	66 a3 04 30 13 c0    	mov    %ax,0xc0133004
c01033d4:	8b 45 08             	mov    0x8(%ebp),%eax
c01033d7:	66 a3 06 30 13 c0    	mov    %ax,0xc0133006
c01033dd:	8b 45 08             	mov    0x8(%ebp),%eax
c01033e0:	c1 e8 10             	shr    $0x10,%eax
c01033e3:	66 a3 08 30 13 c0    	mov    %ax,0xc0133008
c01033e9:	b8 04 30 13 c0       	mov    $0xc0133004,%eax
c01033ee:	0f 01 10             	lgdtl  (%eax)
c01033f1:	5d                   	pop    %ebp
c01033f2:	c3                   	ret    

c01033f3 <set_tss>:
c01033f3:	55                   	push   %ebp
c01033f4:	89 e5                	mov    %esp,%ebp
c01033f6:	8b 45 08             	mov    0x8(%ebp),%eax
c01033f9:	a3 c4 00 1f c0       	mov    %eax,0xc01f00c4
c01033fe:	5d                   	pop    %ebp
c01033ff:	c3                   	ret    

c0103400 <Makegdt>:
c0103400:	55                   	push   %ebp
c0103401:	89 e5                	mov    %esp,%ebp
c0103403:	8b 45 08             	mov    0x8(%ebp),%eax
c0103406:	c1 e8 0c             	shr    $0xc,%eax
c0103409:	89 c2                	mov    %eax,%edx
c010340b:	8b 45 18             	mov    0x18(%ebp),%eax
c010340e:	66 89 14 c5 40 00 1f 	mov    %dx,-0x3fe0ffc0(,%eax,8)
c0103415:	c0 
c0103416:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103419:	89 c2                	mov    %eax,%edx
c010341b:	8b 45 18             	mov    0x18(%ebp),%eax
c010341e:	66 89 14 c5 42 00 1f 	mov    %dx,-0x3fe0ffbe(,%eax,8)
c0103425:	c0 
c0103426:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103429:	c1 e8 10             	shr    $0x10,%eax
c010342c:	89 c2                	mov    %eax,%edx
c010342e:	8b 45 18             	mov    0x18(%ebp),%eax
c0103431:	88 14 c5 44 00 1f c0 	mov    %dl,-0x3fe0ffbc(,%eax,8)
c0103438:	8b 45 10             	mov    0x10(%ebp),%eax
c010343b:	83 e0 0f             	and    $0xf,%eax
c010343e:	89 c2                	mov    %eax,%edx
c0103440:	8b 45 18             	mov    0x18(%ebp),%eax
c0103443:	89 d1                	mov    %edx,%ecx
c0103445:	83 e1 0f             	and    $0xf,%ecx
c0103448:	0f b6 14 c5 45 00 1f 	movzbl -0x3fe0ffbb(,%eax,8),%edx
c010344f:	c0 
c0103450:	83 e2 f0             	and    $0xfffffff0,%edx
c0103453:	09 ca                	or     %ecx,%edx
c0103455:	88 14 c5 45 00 1f c0 	mov    %dl,-0x3fe0ffbb(,%eax,8)
c010345c:	8b 45 18             	mov    0x18(%ebp),%eax
c010345f:	0f b6 14 c5 45 00 1f 	movzbl -0x3fe0ffbb(,%eax,8),%edx
c0103466:	c0 
c0103467:	83 ca 10             	or     $0x10,%edx
c010346a:	88 14 c5 45 00 1f c0 	mov    %dl,-0x3fe0ffbb(,%eax,8)
c0103471:	8b 45 14             	mov    0x14(%ebp),%eax
c0103474:	83 e0 03             	and    $0x3,%eax
c0103477:	89 c2                	mov    %eax,%edx
c0103479:	8b 45 18             	mov    0x18(%ebp),%eax
c010347c:	83 e2 03             	and    $0x3,%edx
c010347f:	89 d1                	mov    %edx,%ecx
c0103481:	c1 e1 05             	shl    $0x5,%ecx
c0103484:	0f b6 14 c5 45 00 1f 	movzbl -0x3fe0ffbb(,%eax,8),%edx
c010348b:	c0 
c010348c:	83 e2 9f             	and    $0xffffff9f,%edx
c010348f:	09 ca                	or     %ecx,%edx
c0103491:	88 14 c5 45 00 1f c0 	mov    %dl,-0x3fe0ffbb(,%eax,8)
c0103498:	8b 45 18             	mov    0x18(%ebp),%eax
c010349b:	0f b6 14 c5 45 00 1f 	movzbl -0x3fe0ffbb(,%eax,8),%edx
c01034a2:	c0 
c01034a3:	83 ca 80             	or     $0xffffff80,%edx
c01034a6:	88 14 c5 45 00 1f c0 	mov    %dl,-0x3fe0ffbb(,%eax,8)
c01034ad:	8b 45 08             	mov    0x8(%ebp),%eax
c01034b0:	c1 e8 1c             	shr    $0x1c,%eax
c01034b3:	83 e0 0f             	and    $0xf,%eax
c01034b6:	89 c2                	mov    %eax,%edx
c01034b8:	8b 45 18             	mov    0x18(%ebp),%eax
c01034bb:	89 d1                	mov    %edx,%ecx
c01034bd:	83 e1 0f             	and    $0xf,%ecx
c01034c0:	0f b6 14 c5 46 00 1f 	movzbl -0x3fe0ffba(,%eax,8),%edx
c01034c7:	c0 
c01034c8:	83 e2 f0             	and    $0xfffffff0,%edx
c01034cb:	09 ca                	or     %ecx,%edx
c01034cd:	88 14 c5 46 00 1f c0 	mov    %dl,-0x3fe0ffba(,%eax,8)
c01034d4:	8b 45 18             	mov    0x18(%ebp),%eax
c01034d7:	0f b6 14 c5 46 00 1f 	movzbl -0x3fe0ffba(,%eax,8),%edx
c01034de:	c0 
c01034df:	83 e2 ef             	and    $0xffffffef,%edx
c01034e2:	88 14 c5 46 00 1f c0 	mov    %dl,-0x3fe0ffba(,%eax,8)
c01034e9:	8b 45 18             	mov    0x18(%ebp),%eax
c01034ec:	0f b6 14 c5 46 00 1f 	movzbl -0x3fe0ffba(,%eax,8),%edx
c01034f3:	c0 
c01034f4:	83 e2 df             	and    $0xffffffdf,%edx
c01034f7:	88 14 c5 46 00 1f c0 	mov    %dl,-0x3fe0ffba(,%eax,8)
c01034fe:	8b 45 18             	mov    0x18(%ebp),%eax
c0103501:	0f b6 14 c5 46 00 1f 	movzbl -0x3fe0ffba(,%eax,8),%edx
c0103508:	c0 
c0103509:	83 ca 40             	or     $0x40,%edx
c010350c:	88 14 c5 46 00 1f c0 	mov    %dl,-0x3fe0ffba(,%eax,8)
c0103513:	8b 45 18             	mov    0x18(%ebp),%eax
c0103516:	0f b6 14 c5 46 00 1f 	movzbl -0x3fe0ffba(,%eax,8),%edx
c010351d:	c0 
c010351e:	83 ca 80             	or     $0xffffff80,%edx
c0103521:	88 14 c5 46 00 1f c0 	mov    %dl,-0x3fe0ffba(,%eax,8)
c0103528:	8b 45 0c             	mov    0xc(%ebp),%eax
c010352b:	c1 e8 18             	shr    $0x18,%eax
c010352e:	89 c2                	mov    %eax,%edx
c0103530:	8b 45 18             	mov    0x18(%ebp),%eax
c0103533:	88 14 c5 47 00 1f c0 	mov    %dl,-0x3fe0ffb9(,%eax,8)
c010353a:	5d                   	pop    %ebp
c010353b:	c3                   	ret    

c010353c <Maketss>:
c010353c:	55                   	push   %ebp
c010353d:	89 e5                	mov    %esp,%ebp
c010353f:	8b 45 08             	mov    0x8(%ebp),%eax
c0103542:	89 c2                	mov    %eax,%edx
c0103544:	8b 45 18             	mov    0x18(%ebp),%eax
c0103547:	66 89 14 c5 40 00 1f 	mov    %dx,-0x3fe0ffc0(,%eax,8)
c010354e:	c0 
c010354f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103552:	89 c2                	mov    %eax,%edx
c0103554:	8b 45 18             	mov    0x18(%ebp),%eax
c0103557:	66 89 14 c5 42 00 1f 	mov    %dx,-0x3fe0ffbe(,%eax,8)
c010355e:	c0 
c010355f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103562:	c1 e8 10             	shr    $0x10,%eax
c0103565:	89 c2                	mov    %eax,%edx
c0103567:	8b 45 18             	mov    0x18(%ebp),%eax
c010356a:	88 14 c5 44 00 1f c0 	mov    %dl,-0x3fe0ffbc(,%eax,8)
c0103571:	8b 45 10             	mov    0x10(%ebp),%eax
c0103574:	83 e0 0f             	and    $0xf,%eax
c0103577:	89 c2                	mov    %eax,%edx
c0103579:	8b 45 18             	mov    0x18(%ebp),%eax
c010357c:	89 d1                	mov    %edx,%ecx
c010357e:	83 e1 0f             	and    $0xf,%ecx
c0103581:	0f b6 14 c5 45 00 1f 	movzbl -0x3fe0ffbb(,%eax,8),%edx
c0103588:	c0 
c0103589:	83 e2 f0             	and    $0xfffffff0,%edx
c010358c:	09 ca                	or     %ecx,%edx
c010358e:	88 14 c5 45 00 1f c0 	mov    %dl,-0x3fe0ffbb(,%eax,8)
c0103595:	8b 45 18             	mov    0x18(%ebp),%eax
c0103598:	0f b6 14 c5 45 00 1f 	movzbl -0x3fe0ffbb(,%eax,8),%edx
c010359f:	c0 
c01035a0:	83 e2 ef             	and    $0xffffffef,%edx
c01035a3:	88 14 c5 45 00 1f c0 	mov    %dl,-0x3fe0ffbb(,%eax,8)
c01035aa:	8b 45 14             	mov    0x14(%ebp),%eax
c01035ad:	83 e0 03             	and    $0x3,%eax
c01035b0:	89 c2                	mov    %eax,%edx
c01035b2:	8b 45 18             	mov    0x18(%ebp),%eax
c01035b5:	83 e2 03             	and    $0x3,%edx
c01035b8:	89 d1                	mov    %edx,%ecx
c01035ba:	c1 e1 05             	shl    $0x5,%ecx
c01035bd:	0f b6 14 c5 45 00 1f 	movzbl -0x3fe0ffbb(,%eax,8),%edx
c01035c4:	c0 
c01035c5:	83 e2 9f             	and    $0xffffff9f,%edx
c01035c8:	09 ca                	or     %ecx,%edx
c01035ca:	88 14 c5 45 00 1f c0 	mov    %dl,-0x3fe0ffbb(,%eax,8)
c01035d1:	8b 45 18             	mov    0x18(%ebp),%eax
c01035d4:	0f b6 14 c5 45 00 1f 	movzbl -0x3fe0ffbb(,%eax,8),%edx
c01035db:	c0 
c01035dc:	83 ca 80             	or     $0xffffff80,%edx
c01035df:	88 14 c5 45 00 1f c0 	mov    %dl,-0x3fe0ffbb(,%eax,8)
c01035e6:	8b 45 08             	mov    0x8(%ebp),%eax
c01035e9:	c1 e8 10             	shr    $0x10,%eax
c01035ec:	83 e0 0f             	and    $0xf,%eax
c01035ef:	89 c2                	mov    %eax,%edx
c01035f1:	8b 45 18             	mov    0x18(%ebp),%eax
c01035f4:	89 d1                	mov    %edx,%ecx
c01035f6:	83 e1 0f             	and    $0xf,%ecx
c01035f9:	0f b6 14 c5 46 00 1f 	movzbl -0x3fe0ffba(,%eax,8),%edx
c0103600:	c0 
c0103601:	83 e2 f0             	and    $0xfffffff0,%edx
c0103604:	09 ca                	or     %ecx,%edx
c0103606:	88 14 c5 46 00 1f c0 	mov    %dl,-0x3fe0ffba(,%eax,8)
c010360d:	8b 45 18             	mov    0x18(%ebp),%eax
c0103610:	0f b6 14 c5 46 00 1f 	movzbl -0x3fe0ffba(,%eax,8),%edx
c0103617:	c0 
c0103618:	83 e2 ef             	and    $0xffffffef,%edx
c010361b:	88 14 c5 46 00 1f c0 	mov    %dl,-0x3fe0ffba(,%eax,8)
c0103622:	8b 45 18             	mov    0x18(%ebp),%eax
c0103625:	0f b6 14 c5 46 00 1f 	movzbl -0x3fe0ffba(,%eax,8),%edx
c010362c:	c0 
c010362d:	83 e2 df             	and    $0xffffffdf,%edx
c0103630:	88 14 c5 46 00 1f c0 	mov    %dl,-0x3fe0ffba(,%eax,8)
c0103637:	8b 45 18             	mov    0x18(%ebp),%eax
c010363a:	0f b6 14 c5 46 00 1f 	movzbl -0x3fe0ffba(,%eax,8),%edx
c0103641:	c0 
c0103642:	83 ca 40             	or     $0x40,%edx
c0103645:	88 14 c5 46 00 1f c0 	mov    %dl,-0x3fe0ffba(,%eax,8)
c010364c:	8b 45 18             	mov    0x18(%ebp),%eax
c010364f:	0f b6 14 c5 46 00 1f 	movzbl -0x3fe0ffba(,%eax,8),%edx
c0103656:	c0 
c0103657:	83 ca 80             	or     $0xffffff80,%edx
c010365a:	88 14 c5 46 00 1f c0 	mov    %dl,-0x3fe0ffba(,%eax,8)
c0103661:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103664:	c1 e8 18             	shr    $0x18,%eax
c0103667:	89 c2                	mov    %eax,%edx
c0103669:	8b 45 18             	mov    0x18(%ebp),%eax
c010366c:	88 14 c5 47 00 1f c0 	mov    %dl,-0x3fe0ffb9(,%eax,8)
c0103673:	5d                   	pop    %ebp
c0103674:	c3                   	ret    

c0103675 <init_seg>:
c0103675:	55                   	push   %ebp
c0103676:	89 e5                	mov    %esp,%ebp
c0103678:	83 ec 10             	sub    $0x10,%esp
c010367b:	c7 05 00 30 13 c0 00 	movl   $0x0,0xc0133000
c0103682:	00 00 00 
c0103685:	6a 00                	push   $0x0
c0103687:	6a 00                	push   $0x0
c0103689:	6a 00                	push   $0x0
c010368b:	6a 00                	push   $0x0
c010368d:	6a 00                	push   $0x0
c010368f:	e8 6c fd ff ff       	call   c0103400 <Makegdt>
c0103694:	83 c4 14             	add    $0x14,%esp
c0103697:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c010369c:	83 c0 01             	add    $0x1,%eax
c010369f:	a3 00 30 13 c0       	mov    %eax,0xc0133000
c01036a4:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c01036a9:	50                   	push   %eax
c01036aa:	6a 00                	push   $0x0
c01036ac:	6a 0a                	push   $0xa
c01036ae:	6a 00                	push   $0x0
c01036b0:	6a ff                	push   $0xffffffff
c01036b2:	e8 49 fd ff ff       	call   c0103400 <Makegdt>
c01036b7:	83 c4 14             	add    $0x14,%esp
c01036ba:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c01036bf:	83 c0 01             	add    $0x1,%eax
c01036c2:	a3 00 30 13 c0       	mov    %eax,0xc0133000
c01036c7:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c01036cc:	50                   	push   %eax
c01036cd:	6a 00                	push   $0x0
c01036cf:	6a 02                	push   $0x2
c01036d1:	6a 00                	push   $0x0
c01036d3:	6a ff                	push   $0xffffffff
c01036d5:	e8 26 fd ff ff       	call   c0103400 <Makegdt>
c01036da:	83 c4 14             	add    $0x14,%esp
c01036dd:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c01036e2:	83 c0 01             	add    $0x1,%eax
c01036e5:	a3 00 30 13 c0       	mov    %eax,0xc0133000
c01036ea:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c01036ef:	50                   	push   %eax
c01036f0:	6a 03                	push   $0x3
c01036f2:	6a 0a                	push   $0xa
c01036f4:	6a 00                	push   $0x0
c01036f6:	6a ff                	push   $0xffffffff
c01036f8:	e8 03 fd ff ff       	call   c0103400 <Makegdt>
c01036fd:	83 c4 14             	add    $0x14,%esp
c0103700:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c0103705:	83 c0 01             	add    $0x1,%eax
c0103708:	a3 00 30 13 c0       	mov    %eax,0xc0133000
c010370d:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c0103712:	50                   	push   %eax
c0103713:	6a 03                	push   $0x3
c0103715:	6a 02                	push   $0x2
c0103717:	6a 00                	push   $0x0
c0103719:	6a ff                	push   $0xffffffff
c010371b:	e8 e0 fc ff ff       	call   c0103400 <Makegdt>
c0103720:	83 c4 14             	add    $0x14,%esp
c0103723:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c0103728:	83 c0 01             	add    $0x1,%eax
c010372b:	a3 00 30 13 c0       	mov    %eax,0xc0133000
c0103730:	c7 05 c4 00 1f c0 00 	movl   $0x2f0000,0xc01f00c4
c0103737:	00 2f 00 
c010373a:	66 c7 05 c8 00 1f c0 	movw   $0x10,0xc01f00c8
c0103741:	10 00 
c0103743:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c0103748:	ba c0 00 1f c0       	mov    $0xc01f00c0,%edx
c010374d:	50                   	push   %eax
c010374e:	6a 00                	push   $0x0
c0103750:	6a 09                	push   $0x9
c0103752:	52                   	push   %edx
c0103753:	6a ff                	push   $0xffffffff
c0103755:	e8 e2 fd ff ff       	call   c010353c <Maketss>
c010375a:	83 c4 14             	add    $0x14,%esp
c010375d:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c0103762:	83 c0 01             	add    $0x1,%eax
c0103765:	a3 00 30 13 c0       	mov    %eax,0xc0133000
c010376a:	66 c7 05 1c 01 1f c0 	movw   $0x2b,0xc01f011c
c0103771:	2b 00 
c0103773:	66 b8 10 00          	mov    $0x10,%ax
c0103777:	8e d8                	mov    %eax,%ds
c0103779:	8e c0                	mov    %eax,%es
c010377b:	8e d0                	mov    %eax,%ss
c010377d:	68 80 00 00 00       	push   $0x80
c0103782:	68 40 00 1f c0       	push   $0xc01f0040
c0103787:	e8 39 fc ff ff       	call   c01033c5 <write_gdtr>
c010378c:	83 c4 08             	add    $0x8,%esp
c010378f:	0f b7 05 1c 01 1f c0 	movzwl 0xc01f011c,%eax
c0103796:	0f b7 c0             	movzwl %ax,%eax
c0103799:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
c010379d:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
c01037a1:	0f 00 d8             	ltr    %ax
c01037a4:	c9                   	leave  
c01037a5:	c3                   	ret    

c01037a6 <sem_init>:
c01037a6:	55                   	push   %ebp
c01037a7:	89 e5                	mov    %esp,%ebp
c01037a9:	8b 45 08             	mov    0x8(%ebp),%eax
c01037ac:	8b 40 04             	mov    0x4(%eax),%eax
c01037af:	85 c0                	test   %eax,%eax
c01037b1:	74 07                	je     c01037ba <sem_init+0x14>
c01037b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c01037b8:	eb 2e                	jmp    c01037e8 <sem_init+0x42>
c01037ba:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c01037be:	75 07                	jne    c01037c7 <sem_init+0x21>
c01037c0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c01037c5:	eb 21                	jmp    c01037e8 <sem_init+0x42>
c01037c7:	8b 55 0c             	mov    0xc(%ebp),%edx
c01037ca:	8b 45 08             	mov    0x8(%ebp),%eax
c01037cd:	89 10                	mov    %edx,(%eax)
c01037cf:	8b 45 08             	mov    0x8(%ebp),%eax
c01037d2:	c7 40 30 00 00 00 00 	movl   $0x0,0x30(%eax)
c01037d9:	8b 45 08             	mov    0x8(%ebp),%eax
c01037dc:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
c01037e3:	b8 00 00 00 00       	mov    $0x0,%eax
c01037e8:	5d                   	pop    %ebp
c01037e9:	c3                   	ret    

c01037ea <sem_destroy>:
c01037ea:	55                   	push   %ebp
c01037eb:	89 e5                	mov    %esp,%ebp
c01037ed:	8b 45 08             	mov    0x8(%ebp),%eax
c01037f0:	8b 40 04             	mov    0x4(%eax),%eax
c01037f3:	85 c0                	test   %eax,%eax
c01037f5:	75 07                	jne    c01037fe <sem_destroy+0x14>
c01037f7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c01037fc:	eb 0f                	jmp    c010380d <sem_destroy+0x23>
c01037fe:	8b 45 08             	mov    0x8(%ebp),%eax
c0103801:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0103808:	b8 00 00 00 00       	mov    $0x0,%eax
c010380d:	5d                   	pop    %ebp
c010380e:	c3                   	ret    

c010380f <sem_wait>:
c010380f:	55                   	push   %ebp
c0103810:	89 e5                	mov    %esp,%ebp
c0103812:	53                   	push   %ebx
c0103813:	83 ec 04             	sub    $0x4,%esp
c0103816:	8b 45 08             	mov    0x8(%ebp),%eax
c0103819:	8b 40 04             	mov    0x4(%eax),%eax
c010381c:	85 c0                	test   %eax,%eax
c010381e:	75 07                	jne    c0103827 <sem_wait+0x18>
c0103820:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0103825:	eb 58                	jmp    c010387f <sem_wait+0x70>
c0103827:	8b 45 08             	mov    0x8(%ebp),%eax
c010382a:	8b 00                	mov    (%eax),%eax
c010382c:	85 c0                	test   %eax,%eax
c010382e:	7e 14                	jle    c0103844 <sem_wait+0x35>
c0103830:	8b 45 08             	mov    0x8(%ebp),%eax
c0103833:	8b 00                	mov    (%eax),%eax
c0103835:	8d 50 ff             	lea    -0x1(%eax),%edx
c0103838:	8b 45 08             	mov    0x8(%ebp),%eax
c010383b:	89 10                	mov    %edx,(%eax)
c010383d:	b8 00 00 00 00       	mov    $0x0,%eax
c0103842:	eb 3b                	jmp    c010387f <sem_wait+0x70>
c0103844:	8b 45 08             	mov    0x8(%ebp),%eax
c0103847:	8b 58 30             	mov    0x30(%eax),%ebx
c010384a:	e8 89 ec ff ff       	call   c01024d8 <run_pid>
c010384f:	89 c2                	mov    %eax,%edx
c0103851:	8b 45 08             	mov    0x8(%ebp),%eax
c0103854:	89 54 98 08          	mov    %edx,0x8(%eax,%ebx,4)
c0103858:	8b 45 08             	mov    0x8(%ebp),%eax
c010385b:	8b 40 30             	mov    0x30(%eax),%eax
c010385e:	8d 50 01             	lea    0x1(%eax),%edx
c0103861:	8b 45 08             	mov    0x8(%ebp),%eax
c0103864:	89 50 30             	mov    %edx,0x30(%eax)
c0103867:	83 ec 0c             	sub    $0xc,%esp
c010386a:	ff 75 0c             	pushl  0xc(%ebp)
c010386d:	e8 88 ec ff ff       	call   c01024fa <sleep_forever>
c0103872:	83 c4 10             	add    $0x10,%esp
c0103875:	e8 56 e0 ff ff       	call   c01018d0 <reschedule>
c010387a:	b8 00 00 00 00       	mov    $0x0,%eax
c010387f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0103882:	c9                   	leave  
c0103883:	c3                   	ret    

c0103884 <sem_trywait>:
c0103884:	55                   	push   %ebp
c0103885:	89 e5                	mov    %esp,%ebp
c0103887:	8b 45 08             	mov    0x8(%ebp),%eax
c010388a:	8b 40 04             	mov    0x4(%eax),%eax
c010388d:	85 c0                	test   %eax,%eax
c010388f:	75 07                	jne    c0103898 <sem_trywait+0x14>
c0103891:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0103896:	eb 22                	jmp    c01038ba <sem_trywait+0x36>
c0103898:	8b 45 08             	mov    0x8(%ebp),%eax
c010389b:	8b 00                	mov    (%eax),%eax
c010389d:	85 c0                	test   %eax,%eax
c010389f:	7e 14                	jle    c01038b5 <sem_trywait+0x31>
c01038a1:	8b 45 08             	mov    0x8(%ebp),%eax
c01038a4:	8b 00                	mov    (%eax),%eax
c01038a6:	8d 50 ff             	lea    -0x1(%eax),%edx
c01038a9:	8b 45 08             	mov    0x8(%ebp),%eax
c01038ac:	89 10                	mov    %edx,(%eax)
c01038ae:	b8 00 00 00 00       	mov    $0x0,%eax
c01038b3:	eb 05                	jmp    c01038ba <sem_trywait+0x36>
c01038b5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c01038ba:	5d                   	pop    %ebp
c01038bb:	c3                   	ret    

c01038bc <sem_post>:
c01038bc:	55                   	push   %ebp
c01038bd:	89 e5                	mov    %esp,%ebp
c01038bf:	83 ec 18             	sub    $0x18,%esp
c01038c2:	8b 45 08             	mov    0x8(%ebp),%eax
c01038c5:	8b 40 04             	mov    0x4(%eax),%eax
c01038c8:	85 c0                	test   %eax,%eax
c01038ca:	75 07                	jne    c01038d3 <sem_post+0x17>
c01038cc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c01038d1:	eb 73                	jmp    c0103946 <sem_post+0x8a>
c01038d3:	8b 45 08             	mov    0x8(%ebp),%eax
c01038d6:	8b 40 30             	mov    0x30(%eax),%eax
c01038d9:	85 c0                	test   %eax,%eax
c01038db:	74 57                	je     c0103934 <sem_post+0x78>
c01038dd:	8b 45 08             	mov    0x8(%ebp),%eax
c01038e0:	8b 40 08             	mov    0x8(%eax),%eax
c01038e3:	83 ec 0c             	sub    $0xc,%esp
c01038e6:	50                   	push   %eax
c01038e7:	e8 02 ed ff ff       	call   c01025ee <wakeup>
c01038ec:	83 c4 10             	add    $0x10,%esp
c01038ef:	8b 45 08             	mov    0x8(%ebp),%eax
c01038f2:	8b 40 30             	mov    0x30(%eax),%eax
c01038f5:	8d 50 ff             	lea    -0x1(%eax),%edx
c01038f8:	8b 45 08             	mov    0x8(%ebp),%eax
c01038fb:	89 50 30             	mov    %edx,0x30(%eax)
c01038fe:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0103905:	eb 1b                	jmp    c0103922 <sem_post+0x66>
c0103907:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010390a:	8d 50 01             	lea    0x1(%eax),%edx
c010390d:	8b 45 08             	mov    0x8(%ebp),%eax
c0103910:	8b 4c 90 08          	mov    0x8(%eax,%edx,4),%ecx
c0103914:	8b 45 08             	mov    0x8(%ebp),%eax
c0103917:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010391a:	89 4c 90 08          	mov    %ecx,0x8(%eax,%edx,4)
c010391e:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0103922:	8b 45 08             	mov    0x8(%ebp),%eax
c0103925:	8b 40 30             	mov    0x30(%eax),%eax
c0103928:	3b 45 f4             	cmp    -0xc(%ebp),%eax
c010392b:	7f da                	jg     c0103907 <sem_post+0x4b>
c010392d:	b8 00 00 00 00       	mov    $0x0,%eax
c0103932:	eb 12                	jmp    c0103946 <sem_post+0x8a>
c0103934:	8b 45 08             	mov    0x8(%ebp),%eax
c0103937:	8b 00                	mov    (%eax),%eax
c0103939:	8d 50 01             	lea    0x1(%eax),%edx
c010393c:	8b 45 08             	mov    0x8(%ebp),%eax
c010393f:	89 10                	mov    %edx,(%eax)
c0103941:	b8 00 00 00 00       	mov    $0x0,%eax
c0103946:	c9                   	leave  
c0103947:	c3                   	ret    

c0103948 <inb>:
c0103948:	55                   	push   %ebp
c0103949:	89 e5                	mov    %esp,%ebp
c010394b:	83 ec 10             	sub    $0x10,%esp
c010394e:	8b 45 08             	mov    0x8(%ebp),%eax
c0103951:	89 c2                	mov    %eax,%edx
c0103953:	ec                   	in     (%dx),%al
c0103954:	88 45 ff             	mov    %al,-0x1(%ebp)
c0103957:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c010395b:	c9                   	leave  
c010395c:	c3                   	ret    

c010395d <outb>:
c010395d:	55                   	push   %ebp
c010395e:	89 e5                	mov    %esp,%ebp
c0103960:	83 ec 04             	sub    $0x4,%esp
c0103963:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103966:	88 45 fc             	mov    %al,-0x4(%ebp)
c0103969:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c010396d:	8b 55 08             	mov    0x8(%ebp),%edx
c0103970:	ee                   	out    %al,(%dx)
c0103971:	c9                   	leave  
c0103972:	c3                   	ret    

c0103973 <init_serial>:
c0103973:	55                   	push   %ebp
c0103974:	89 e5                	mov    %esp,%ebp
c0103976:	6a 00                	push   $0x0
c0103978:	68 f9 03 00 00       	push   $0x3f9
c010397d:	e8 db ff ff ff       	call   c010395d <outb>
c0103982:	83 c4 08             	add    $0x8,%esp
c0103985:	68 80 00 00 00       	push   $0x80
c010398a:	68 fb 03 00 00       	push   $0x3fb
c010398f:	e8 c9 ff ff ff       	call   c010395d <outb>
c0103994:	83 c4 08             	add    $0x8,%esp
c0103997:	6a 03                	push   $0x3
c0103999:	68 f8 03 00 00       	push   $0x3f8
c010399e:	e8 ba ff ff ff       	call   c010395d <outb>
c01039a3:	83 c4 08             	add    $0x8,%esp
c01039a6:	6a 00                	push   $0x0
c01039a8:	68 f9 03 00 00       	push   $0x3f9
c01039ad:	e8 ab ff ff ff       	call   c010395d <outb>
c01039b2:	83 c4 08             	add    $0x8,%esp
c01039b5:	6a 03                	push   $0x3
c01039b7:	68 fb 03 00 00       	push   $0x3fb
c01039bc:	e8 9c ff ff ff       	call   c010395d <outb>
c01039c1:	83 c4 08             	add    $0x8,%esp
c01039c4:	68 c7 00 00 00       	push   $0xc7
c01039c9:	68 fa 03 00 00       	push   $0x3fa
c01039ce:	e8 8a ff ff ff       	call   c010395d <outb>
c01039d3:	83 c4 08             	add    $0x8,%esp
c01039d6:	6a 0b                	push   $0xb
c01039d8:	68 fc 03 00 00       	push   $0x3fc
c01039dd:	e8 7b ff ff ff       	call   c010395d <outb>
c01039e2:	83 c4 08             	add    $0x8,%esp
c01039e5:	c9                   	leave  
c01039e6:	c3                   	ret    

c01039e7 <is_serial_idle>:
c01039e7:	55                   	push   %ebp
c01039e8:	89 e5                	mov    %esp,%ebp
c01039ea:	68 fd 03 00 00       	push   $0x3fd
c01039ef:	e8 54 ff ff ff       	call   c0103948 <inb>
c01039f4:	83 c4 04             	add    $0x4,%esp
c01039f7:	0f b6 c0             	movzbl %al,%eax
c01039fa:	83 e0 20             	and    $0x20,%eax
c01039fd:	c9                   	leave  
c01039fe:	c3                   	ret    

c01039ff <serial_out>:
c01039ff:	55                   	push   %ebp
c0103a00:	89 e5                	mov    %esp,%ebp
c0103a02:	83 ec 04             	sub    $0x4,%esp
c0103a05:	8b 45 08             	mov    0x8(%ebp),%eax
c0103a08:	88 45 fc             	mov    %al,-0x4(%ebp)
c0103a0b:	90                   	nop
c0103a0c:	e8 d6 ff ff ff       	call   c01039e7 <is_serial_idle>
c0103a11:	85 c0                	test   %eax,%eax
c0103a13:	74 f7                	je     c0103a0c <serial_out+0xd>
c0103a15:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c0103a19:	0f b6 c0             	movzbl %al,%eax
c0103a1c:	50                   	push   %eax
c0103a1d:	68 f8 03 00 00       	push   $0x3f8
c0103a22:	e8 36 ff ff ff       	call   c010395d <outb>
c0103a27:	83 c4 08             	add    $0x8,%esp
c0103a2a:	c9                   	leave  
c0103a2b:	c3                   	ret    

c0103a2c <my_strlen>:
c0103a2c:	55                   	push   %ebp
c0103a2d:	89 e5                	mov    %esp,%ebp
c0103a2f:	83 ec 10             	sub    $0x10,%esp
c0103a32:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0103a39:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0103a40:	eb 08                	jmp    c0103a4a <my_strlen+0x1e>
c0103a42:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c0103a46:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0103a4a:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0103a4d:	8b 45 08             	mov    0x8(%ebp),%eax
c0103a50:	01 d0                	add    %edx,%eax
c0103a52:	0f b6 00             	movzbl (%eax),%eax
c0103a55:	84 c0                	test   %al,%al
c0103a57:	75 e9                	jne    c0103a42 <my_strlen+0x16>
c0103a59:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0103a5c:	c9                   	leave  
c0103a5d:	c3                   	ret    

c0103a5e <my_strcmp>:
c0103a5e:	55                   	push   %ebp
c0103a5f:	89 e5                	mov    %esp,%ebp
c0103a61:	83 ec 10             	sub    $0x10,%esp
c0103a64:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0103a6b:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0103a72:	eb 4a                	jmp    c0103abe <my_strcmp+0x60>
c0103a74:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0103a77:	8b 45 08             	mov    0x8(%ebp),%eax
c0103a7a:	01 d0                	add    %edx,%eax
c0103a7c:	0f b6 10             	movzbl (%eax),%edx
c0103a7f:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0103a82:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103a85:	01 c8                	add    %ecx,%eax
c0103a87:	0f b6 00             	movzbl (%eax),%eax
c0103a8a:	38 c2                	cmp    %al,%dl
c0103a8c:	7d 09                	jge    c0103a97 <my_strcmp+0x39>
c0103a8e:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%ebp)
c0103a95:	eb 45                	jmp    c0103adc <my_strcmp+0x7e>
c0103a97:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0103a9a:	8b 45 08             	mov    0x8(%ebp),%eax
c0103a9d:	01 d0                	add    %edx,%eax
c0103a9f:	0f b6 10             	movzbl (%eax),%edx
c0103aa2:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0103aa5:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103aa8:	01 c8                	add    %ecx,%eax
c0103aaa:	0f b6 00             	movzbl (%eax),%eax
c0103aad:	38 c2                	cmp    %al,%dl
c0103aaf:	7e 09                	jle    c0103aba <my_strcmp+0x5c>
c0103ab1:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
c0103ab8:	eb 22                	jmp    c0103adc <my_strcmp+0x7e>
c0103aba:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c0103abe:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0103ac1:	8b 45 08             	mov    0x8(%ebp),%eax
c0103ac4:	01 d0                	add    %edx,%eax
c0103ac6:	0f b6 00             	movzbl (%eax),%eax
c0103ac9:	84 c0                	test   %al,%al
c0103acb:	74 0f                	je     c0103adc <my_strcmp+0x7e>
c0103acd:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0103ad0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103ad3:	01 d0                	add    %edx,%eax
c0103ad5:	0f b6 00             	movzbl (%eax),%eax
c0103ad8:	84 c0                	test   %al,%al
c0103ada:	75 98                	jne    c0103a74 <my_strcmp+0x16>
c0103adc:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0103adf:	8b 45 08             	mov    0x8(%ebp),%eax
c0103ae2:	01 d0                	add    %edx,%eax
c0103ae4:	0f b6 00             	movzbl (%eax),%eax
c0103ae7:	84 c0                	test   %al,%al
c0103ae9:	75 16                	jne    c0103b01 <my_strcmp+0xa3>
c0103aeb:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0103aee:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103af1:	01 d0                	add    %edx,%eax
c0103af3:	0f b6 00             	movzbl (%eax),%eax
c0103af6:	84 c0                	test   %al,%al
c0103af8:	74 07                	je     c0103b01 <my_strcmp+0xa3>
c0103afa:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%ebp)
c0103b01:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0103b04:	8b 45 08             	mov    0x8(%ebp),%eax
c0103b07:	01 d0                	add    %edx,%eax
c0103b09:	0f b6 00             	movzbl (%eax),%eax
c0103b0c:	84 c0                	test   %al,%al
c0103b0e:	74 16                	je     c0103b26 <my_strcmp+0xc8>
c0103b10:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0103b13:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103b16:	01 d0                	add    %edx,%eax
c0103b18:	0f b6 00             	movzbl (%eax),%eax
c0103b1b:	84 c0                	test   %al,%al
c0103b1d:	75 07                	jne    c0103b26 <my_strcmp+0xc8>
c0103b1f:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
c0103b26:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103b29:	c9                   	leave  
c0103b2a:	c3                   	ret    

c0103b2b <my_strcpy>:
c0103b2b:	55                   	push   %ebp
c0103b2c:	89 e5                	mov    %esp,%ebp
c0103b2e:	83 ec 10             	sub    $0x10,%esp
c0103b31:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0103b38:	8b 45 10             	mov    0x10(%ebp),%eax
c0103b3b:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0103b3e:	eb 2a                	jmp    c0103b6a <my_strcpy+0x3f>
c0103b40:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0103b43:	8b 45 08             	mov    0x8(%ebp),%eax
c0103b46:	01 c2                	add    %eax,%edx
c0103b48:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0103b4b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103b4e:	01 c8                	add    %ecx,%eax
c0103b50:	0f b6 00             	movzbl (%eax),%eax
c0103b53:	88 02                	mov    %al,(%edx)
c0103b55:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0103b58:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103b5b:	01 d0                	add    %edx,%eax
c0103b5d:	0f b6 00             	movzbl (%eax),%eax
c0103b60:	84 c0                	test   %al,%al
c0103b62:	75 02                	jne    c0103b66 <my_strcpy+0x3b>
c0103b64:	eb 11                	jmp    c0103b77 <my_strcpy+0x4c>
c0103b66:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0103b6a:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0103b6d:	8d 50 ff             	lea    -0x1(%eax),%edx
c0103b70:	89 55 f8             	mov    %edx,-0x8(%ebp)
c0103b73:	85 c0                	test   %eax,%eax
c0103b75:	75 c9                	jne    c0103b40 <my_strcpy+0x15>
c0103b77:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0103b7a:	8b 45 08             	mov    0x8(%ebp),%eax
c0103b7d:	01 d0                	add    %edx,%eax
c0103b7f:	c6 00 00             	movb   $0x0,(%eax)
c0103b82:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103b85:	c9                   	leave  
c0103b86:	c3                   	ret    

c0103b87 <init_timer>:
c0103b87:	55                   	push   %ebp
c0103b88:	89 e5                	mov    %esp,%ebp
c0103b8a:	83 ec 20             	sub    $0x20,%esp
c0103b8d:	c7 45 fc a9 04 00 00 	movl   $0x4a9,-0x4(%ebp)
c0103b94:	c7 45 f8 43 00 00 00 	movl   $0x43,-0x8(%ebp)
c0103b9b:	c6 45 f7 34          	movb   $0x34,-0x9(%ebp)
c0103b9f:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c0103ba3:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0103ba6:	ee                   	out    %al,(%dx)
c0103ba7:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103baa:	99                   	cltd   
c0103bab:	c1 ea 18             	shr    $0x18,%edx
c0103bae:	01 d0                	add    %edx,%eax
c0103bb0:	0f b6 c0             	movzbl %al,%eax
c0103bb3:	29 d0                	sub    %edx,%eax
c0103bb5:	0f b6 c0             	movzbl %al,%eax
c0103bb8:	c7 45 f0 40 00 00 00 	movl   $0x40,-0x10(%ebp)
c0103bbf:	88 45 ef             	mov    %al,-0x11(%ebp)
c0103bc2:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
c0103bc6:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0103bc9:	ee                   	out    %al,(%dx)
c0103bca:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103bcd:	8d 90 ff 00 00 00    	lea    0xff(%eax),%edx
c0103bd3:	85 c0                	test   %eax,%eax
c0103bd5:	0f 48 c2             	cmovs  %edx,%eax
c0103bd8:	c1 f8 08             	sar    $0x8,%eax
c0103bdb:	0f b6 c0             	movzbl %al,%eax
c0103bde:	c7 45 e8 40 00 00 00 	movl   $0x40,-0x18(%ebp)
c0103be5:	88 45 e7             	mov    %al,-0x19(%ebp)
c0103be8:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
c0103bec:	8b 55 e8             	mov    -0x18(%ebp),%edx
c0103bef:	ee                   	out    %al,(%dx)
c0103bf0:	c9                   	leave  
c0103bf1:	c3                   	ret    
