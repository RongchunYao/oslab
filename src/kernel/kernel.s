
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
c0100168:	e8 55 07 00 00       	call   c01008c2 <main>

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
c01003c6:	05 00 43 13 c0       	add    $0xc0134300,%eax
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
c01003f0:	68 00 43 13 c0       	push   $0xc0134300
c01003f5:	e8 35 ff ff ff       	call   c010032f <set_trap>
c01003fa:	83 c4 10             	add    $0x10,%esp
c01003fd:	b8 b9 05 10 c0       	mov    $0xc01005b9,%eax
c0100402:	6a 00                	push   $0x0
c0100404:	50                   	push   %eax
c0100405:	6a 01                	push   $0x1
c0100407:	68 08 43 13 c0       	push   $0xc0134308
c010040c:	e8 1e ff ff ff       	call   c010032f <set_trap>
c0100411:	83 c4 10             	add    $0x10,%esp
c0100414:	b8 c3 05 10 c0       	mov    $0xc01005c3,%eax
c0100419:	6a 00                	push   $0x0
c010041b:	50                   	push   %eax
c010041c:	6a 01                	push   $0x1
c010041e:	68 10 43 13 c0       	push   $0xc0134310
c0100423:	e8 07 ff ff ff       	call   c010032f <set_trap>
c0100428:	83 c4 10             	add    $0x10,%esp
c010042b:	b8 cd 05 10 c0       	mov    $0xc01005cd,%eax
c0100430:	6a 00                	push   $0x0
c0100432:	50                   	push   %eax
c0100433:	6a 01                	push   $0x1
c0100435:	68 18 43 13 c0       	push   $0xc0134318
c010043a:	e8 f0 fe ff ff       	call   c010032f <set_trap>
c010043f:	83 c4 10             	add    $0x10,%esp
c0100442:	b8 d4 05 10 c0       	mov    $0xc01005d4,%eax
c0100447:	6a 00                	push   $0x0
c0100449:	50                   	push   %eax
c010044a:	6a 01                	push   $0x1
c010044c:	68 20 43 13 c0       	push   $0xc0134320
c0100451:	e8 d9 fe ff ff       	call   c010032f <set_trap>
c0100456:	83 c4 10             	add    $0x10,%esp
c0100459:	b8 db 05 10 c0       	mov    $0xc01005db,%eax
c010045e:	6a 00                	push   $0x0
c0100460:	50                   	push   %eax
c0100461:	6a 01                	push   $0x1
c0100463:	68 28 43 13 c0       	push   $0xc0134328
c0100468:	e8 c2 fe ff ff       	call   c010032f <set_trap>
c010046d:	83 c4 10             	add    $0x10,%esp
c0100470:	b8 e2 05 10 c0       	mov    $0xc01005e2,%eax
c0100475:	6a 00                	push   $0x0
c0100477:	50                   	push   %eax
c0100478:	6a 01                	push   $0x1
c010047a:	68 30 43 13 c0       	push   $0xc0134330
c010047f:	e8 ab fe ff ff       	call   c010032f <set_trap>
c0100484:	83 c4 10             	add    $0x10,%esp
c0100487:	b8 e9 05 10 c0       	mov    $0xc01005e9,%eax
c010048c:	6a 00                	push   $0x0
c010048e:	50                   	push   %eax
c010048f:	6a 01                	push   $0x1
c0100491:	68 38 43 13 c0       	push   $0xc0134338
c0100496:	e8 94 fe ff ff       	call   c010032f <set_trap>
c010049b:	83 c4 10             	add    $0x10,%esp
c010049e:	b8 f0 05 10 c0       	mov    $0xc01005f0,%eax
c01004a3:	6a 00                	push   $0x0
c01004a5:	50                   	push   %eax
c01004a6:	6a 01                	push   $0x1
c01004a8:	68 40 43 13 c0       	push   $0xc0134340
c01004ad:	e8 7d fe ff ff       	call   c010032f <set_trap>
c01004b2:	83 c4 10             	add    $0x10,%esp
c01004b5:	b8 f7 05 10 c0       	mov    $0xc01005f7,%eax
c01004ba:	6a 00                	push   $0x0
c01004bc:	50                   	push   %eax
c01004bd:	6a 01                	push   $0x1
c01004bf:	68 48 43 13 c0       	push   $0xc0134348
c01004c4:	e8 66 fe ff ff       	call   c010032f <set_trap>
c01004c9:	83 c4 10             	add    $0x10,%esp
c01004cc:	b8 fe 05 10 c0       	mov    $0xc01005fe,%eax
c01004d1:	6a 00                	push   $0x0
c01004d3:	50                   	push   %eax
c01004d4:	6a 01                	push   $0x1
c01004d6:	68 50 43 13 c0       	push   $0xc0134350
c01004db:	e8 4f fe ff ff       	call   c010032f <set_trap>
c01004e0:	83 c4 10             	add    $0x10,%esp
c01004e3:	b8 05 06 10 c0       	mov    $0xc0100605,%eax
c01004e8:	6a 00                	push   $0x0
c01004ea:	50                   	push   %eax
c01004eb:	6a 01                	push   $0x1
c01004ed:	68 58 43 13 c0       	push   $0xc0134358
c01004f2:	e8 38 fe ff ff       	call   c010032f <set_trap>
c01004f7:	83 c4 10             	add    $0x10,%esp
c01004fa:	b8 0c 06 10 c0       	mov    $0xc010060c,%eax
c01004ff:	6a 00                	push   $0x0
c0100501:	50                   	push   %eax
c0100502:	6a 01                	push   $0x1
c0100504:	68 60 43 13 c0       	push   $0xc0134360
c0100509:	e8 21 fe ff ff       	call   c010032f <set_trap>
c010050e:	83 c4 10             	add    $0x10,%esp
c0100511:	b8 13 06 10 c0       	mov    $0xc0100613,%eax
c0100516:	6a 00                	push   $0x0
c0100518:	50                   	push   %eax
c0100519:	6a 01                	push   $0x1
c010051b:	68 68 43 13 c0       	push   $0xc0134368
c0100520:	e8 0a fe ff ff       	call   c010032f <set_trap>
c0100525:	83 c4 10             	add    $0x10,%esp
c0100528:	b8 1a 06 10 c0       	mov    $0xc010061a,%eax
c010052d:	6a 00                	push   $0x0
c010052f:	50                   	push   %eax
c0100530:	6a 01                	push   $0x1
c0100532:	68 70 43 13 c0       	push   $0xc0134370
c0100537:	e8 f3 fd ff ff       	call   c010032f <set_trap>
c010053c:	83 c4 10             	add    $0x10,%esp
c010053f:	b8 21 06 10 c0       	mov    $0xc0100621,%eax
c0100544:	6a 00                	push   $0x0
c0100546:	50                   	push   %eax
c0100547:	6a 01                	push   $0x1
c0100549:	68 00 44 13 c0       	push   $0xc0134400
c010054e:	e8 5c fd ff ff       	call   c01002af <set_intr>
c0100553:	83 c4 10             	add    $0x10,%esp
c0100556:	b8 2b 06 10 c0       	mov    $0xc010062b,%eax
c010055b:	6a 00                	push   $0x0
c010055d:	50                   	push   %eax
c010055e:	6a 01                	push   $0x1
c0100560:	68 08 44 13 c0       	push   $0xc0134408
c0100565:	e8 45 fd ff ff       	call   c01002af <set_intr>
c010056a:	83 c4 10             	add    $0x10,%esp
c010056d:	b8 35 06 10 c0       	mov    $0xc0100635,%eax
c0100572:	6a 00                	push   $0x0
c0100574:	50                   	push   %eax
c0100575:	6a 01                	push   $0x1
c0100577:	68 70 44 13 c0       	push   $0xc0134470
c010057c:	e8 2e fd ff ff       	call   c01002af <set_intr>
c0100581:	83 c4 10             	add    $0x10,%esp
c0100584:	b8 3f 06 10 c0       	mov    $0xc010063f,%eax
c0100589:	6a 03                	push   $0x3
c010058b:	50                   	push   %eax
c010058c:	6a 01                	push   $0x1
c010058e:	68 00 47 13 c0       	push   $0xc0134700
c0100593:	e8 97 fd ff ff       	call   c010032f <set_trap>
c0100598:	83 c4 10             	add    $0x10,%esp
c010059b:	68 00 08 00 00       	push   $0x800
c01005a0:	68 00 43 13 c0       	push   $0xc0134300
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
c0100682:	e9 33 02 00 00       	jmp    c01008ba <irq_handle+0x25b>
c0100687:	83 ec 0c             	sub    $0xc,%esp
c010068a:	ff 75 08             	pushl  0x8(%ebp)
c010068d:	e8 4f 13 00 00       	call   c01019e1 <time_treat>
c0100692:	83 c4 10             	add    $0x10,%esp
c0100695:	e9 20 02 00 00       	jmp    c01008ba <irq_handle+0x25b>
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
c010071d:	e9 98 01 00 00       	jmp    c01008ba <irq_handle+0x25b>
c0100722:	8b 45 08             	mov    0x8(%ebp),%eax
c0100725:	8b 40 20             	mov    0x20(%eax),%eax
c0100728:	3d f6 03 00 00       	cmp    $0x3f6,%eax
c010072d:	0f 84 87 01 00 00    	je     c01008ba <irq_handle+0x25b>
c0100733:	8b 45 08             	mov    0x8(%ebp),%eax
c0100736:	8b 40 20             	mov    0x20(%eax),%eax
c0100739:	3d 80 00 00 00       	cmp    $0x80,%eax
c010073e:	0f 85 51 01 00 00    	jne    c0100895 <irq_handle+0x236>
c0100744:	8b 45 08             	mov    0x8(%ebp),%eax
c0100747:	8b 40 1c             	mov    0x1c(%eax),%eax
c010074a:	83 f8 01             	cmp    $0x1,%eax
c010074d:	75 26                	jne    c0100775 <irq_handle+0x116>
c010074f:	8b 45 08             	mov    0x8(%ebp),%eax
c0100752:	8b 40 10             	mov    0x10(%eax),%eax
c0100755:	83 f8 01             	cmp    $0x1,%eax
c0100758:	0f 85 5c 01 00 00    	jne    c01008ba <irq_handle+0x25b>
c010075e:	8b 45 08             	mov    0x8(%ebp),%eax
c0100761:	8b 40 18             	mov    0x18(%eax),%eax
c0100764:	83 ec 0c             	sub    $0xc,%esp
c0100767:	50                   	push   %eax
c0100768:	e8 37 26 00 00       	call   c0102da4 <printk>
c010076d:	83 c4 10             	add    $0x10,%esp
c0100770:	e9 45 01 00 00       	jmp    c01008ba <irq_handle+0x25b>
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
c0100797:	e9 1e 01 00 00       	jmp    c01008ba <irq_handle+0x25b>
c010079c:	8b 45 08             	mov    0x8(%ebp),%eax
c010079f:	8b 40 10             	mov    0x10(%eax),%eax
c01007a2:	83 f8 01             	cmp    $0x1,%eax
c01007a5:	0f 85 0f 01 00 00    	jne    c01008ba <irq_handle+0x25b>
c01007ab:	e8 6c f8 ff ff       	call   c010001c <time_pop>
c01007b0:	e9 05 01 00 00       	jmp    c01008ba <irq_handle+0x25b>
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
c01007d7:	e9 de 00 00 00       	jmp    c01008ba <irq_handle+0x25b>
c01007dc:	8b 45 08             	mov    0x8(%ebp),%eax
c01007df:	8b 40 10             	mov    0x10(%eax),%eax
c01007e2:	83 f8 01             	cmp    $0x1,%eax
c01007e5:	0f 85 cf 00 00 00    	jne    c01008ba <irq_handle+0x25b>
c01007eb:	e8 2c f9 ff ff       	call   c010011c <reset_last_key>
c01007f0:	e9 c5 00 00 00       	jmp    c01008ba <irq_handle+0x25b>
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
c0100814:	e8 b0 25 00 00       	call   c0102dc9 <my_memcpy>
c0100819:	83 c4 10             	add    $0x10,%esp
c010081c:	e9 99 00 00 00       	jmp    c01008ba <irq_handle+0x25b>
c0100821:	8b 45 08             	mov    0x8(%ebp),%eax
c0100824:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100827:	83 f8 05             	cmp    $0x5,%eax
c010082a:	75 0a                	jne    c0100836 <irq_handle+0x1d7>
c010082c:	e8 1d 14 00 00       	call   c0101c4e <process_exit>
c0100831:	e9 84 00 00 00       	jmp    c01008ba <irq_handle+0x25b>
c0100836:	8b 45 08             	mov    0x8(%ebp),%eax
c0100839:	8b 40 1c             	mov    0x1c(%eax),%eax
c010083c:	83 f8 06             	cmp    $0x6,%eax
c010083f:	75 0f                	jne    c0100850 <irq_handle+0x1f1>
c0100841:	e8 a7 05 00 00       	call   c0100ded <getpid>
c0100846:	89 c2                	mov    %eax,%edx
c0100848:	8b 45 08             	mov    0x8(%ebp),%eax
c010084b:	89 50 1c             	mov    %edx,0x1c(%eax)
c010084e:	eb 6a                	jmp    c01008ba <irq_handle+0x25b>
c0100850:	8b 45 08             	mov    0x8(%ebp),%eax
c0100853:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100856:	83 f8 07             	cmp    $0x7,%eax
c0100859:	75 17                	jne    c0100872 <irq_handle+0x213>
c010085b:	8b 45 08             	mov    0x8(%ebp),%eax
c010085e:	8b 40 10             	mov    0x10(%eax),%eax
c0100861:	83 ec 08             	sub    $0x8,%esp
c0100864:	ff 75 08             	pushl  0x8(%ebp)
c0100867:	50                   	push   %eax
c0100868:	e8 f4 15 00 00       	call   c0101e61 <my_sleep>
c010086d:	83 c4 10             	add    $0x10,%esp
c0100870:	eb 48                	jmp    c01008ba <irq_handle+0x25b>
c0100872:	8b 45 08             	mov    0x8(%ebp),%eax
c0100875:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100878:	83 f8 08             	cmp    $0x8,%eax
c010087b:	75 3d                	jne    c01008ba <irq_handle+0x25b>
c010087d:	83 ec 0c             	sub    $0xc,%esp
c0100880:	ff 75 08             	pushl  0x8(%ebp)
c0100883:	e8 d1 16 00 00       	call   c0101f59 <my_fork>
c0100888:	83 c4 10             	add    $0x10,%esp
c010088b:	89 c2                	mov    %eax,%edx
c010088d:	8b 45 08             	mov    0x8(%ebp),%eax
c0100890:	89 50 1c             	mov    %edx,0x1c(%eax)
c0100893:	eb 25                	jmp    c01008ba <irq_handle+0x25b>
c0100895:	83 ec 0c             	sub    $0xc,%esp
c0100898:	ff 75 08             	pushl  0x8(%ebp)
c010089b:	e8 5e 03 00 00       	call   c0100bfe <print_tf>
c01008a0:	83 c4 10             	add    $0x10,%esp
c01008a3:	8b 45 08             	mov    0x8(%ebp),%eax
c01008a6:	8b 40 20             	mov    0x20(%eax),%eax
c01008a9:	83 ec 08             	sub    $0x8,%esp
c01008ac:	50                   	push   %eax
c01008ad:	68 f4 35 10 c0       	push   $0xc01035f4
c01008b2:	e8 ed 24 00 00       	call   c0102da4 <printk>
c01008b7:	83 c4 10             	add    $0x10,%esp
c01008ba:	c9                   	leave  
c01008bb:	c3                   	ret    

c01008bc <disable_interrupt>:
c01008bc:	55                   	push   %ebp
c01008bd:	89 e5                	mov    %esp,%ebp
c01008bf:	fa                   	cli    
c01008c0:	5d                   	pop    %ebp
c01008c1:	c3                   	ret    

c01008c2 <main>:
c01008c2:	8d 4c 24 04          	lea    0x4(%esp),%ecx
c01008c6:	83 e4 f0             	and    $0xfffffff0,%esp
c01008c9:	ff 71 fc             	pushl  -0x4(%ecx)
c01008cc:	55                   	push   %ebp
c01008cd:	89 e5                	mov    %esp,%ebp
c01008cf:	51                   	push   %ecx
c01008d0:	83 ec 04             	sub    $0x4,%esp
c01008d3:	83 ec 0c             	sub    $0xc,%esp
c01008d6:	68 1c 36 10 c0       	push   $0xc010361c
c01008db:	e8 c4 24 00 00       	call   c0102da4 <printk>
c01008e0:	83 c4 10             	add    $0x10,%esp
c01008e3:	e8 d4 ff ff ff       	call   c01008bc <disable_interrupt>
c01008e8:	e8 86 2a 00 00       	call   c0103373 <init_serial>
c01008ed:	e8 95 2c 00 00       	call   c0103587 <init_timer>
c01008f2:	e8 78 f8 ff ff       	call   c010016f <init_intr>
c01008f7:	e8 b0 fa ff ff       	call   c01003ac <init_idt>
c01008fc:	e8 ae 27 00 00       	call   c01030af <init_seg>
c0100901:	e8 3e 1a 00 00       	call   c0102344 <page_init>
c0100906:	e8 6c 05 00 00       	call   c0100e77 <init_PCB>
c010090b:	83 ec 08             	sub    $0x8,%esp
c010090e:	68 33 36 10 c0       	push   $0xc0103633
c0100913:	68 00 b0 04 00       	push   $0x4b000
c0100918:	e8 dc 13 00 00       	call   c0101cf9 <load_PCB>
c010091d:	83 c4 10             	add    $0x10,%esp
c0100920:	83 ec 08             	sub    $0x8,%esp
c0100923:	68 38 36 10 c0       	push   $0xc0103638
c0100928:	68 00 90 01 00       	push   $0x19000
c010092d:	e8 c7 13 00 00       	call   c0101cf9 <load_PCB>
c0100932:	83 c4 10             	add    $0x10,%esp
c0100935:	e8 8a 04 00 00       	call   c0100dc4 <debug>
c010093a:	e8 52 0e 00 00       	call   c0101791 <reschedule>
c010093f:	eb fe                	jmp    c010093f <main+0x7d>

c0100941 <_paddr>:
c0100941:	55                   	push   %ebp
c0100942:	89 e5                	mov    %esp,%ebp
c0100944:	83 ec 08             	sub    $0x8,%esp
c0100947:	8b 45 10             	mov    0x10(%ebp),%eax
c010094a:	3d ff ff ff bf       	cmp    $0xbfffffff,%eax
c010094f:	77 16                	ja     c0100967 <_paddr+0x26>
c0100951:	ff 75 10             	pushl  0x10(%ebp)
c0100954:	68 40 36 10 c0       	push   $0xc0103640
c0100959:	ff 75 0c             	pushl  0xc(%ebp)
c010095c:	ff 75 08             	pushl  0x8(%ebp)
c010095f:	e8 40 24 00 00       	call   c0102da4 <printk>
c0100964:	83 c4 10             	add    $0x10,%esp
c0100967:	8b 45 10             	mov    0x10(%ebp),%eax
c010096a:	05 00 00 00 40       	add    $0x40000000,%eax
c010096f:	c9                   	leave  
c0100970:	c3                   	ret    

c0100971 <waitdisk>:
c0100971:	55                   	push   %ebp
c0100972:	89 e5                	mov    %esp,%ebp
c0100974:	83 ec 10             	sub    $0x10,%esp
c0100977:	90                   	nop
c0100978:	c7 45 fc f7 01 00 00 	movl   $0x1f7,-0x4(%ebp)
c010097f:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100982:	89 c2                	mov    %eax,%edx
c0100984:	ec                   	in     (%dx),%al
c0100985:	88 45 fb             	mov    %al,-0x5(%ebp)
c0100988:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
c010098c:	0f b6 c0             	movzbl %al,%eax
c010098f:	25 c0 00 00 00       	and    $0xc0,%eax
c0100994:	83 f8 40             	cmp    $0x40,%eax
c0100997:	75 df                	jne    c0100978 <waitdisk+0x7>
c0100999:	c9                   	leave  
c010099a:	c3                   	ret    

c010099b <readsect>:
c010099b:	55                   	push   %ebp
c010099c:	89 e5                	mov    %esp,%ebp
c010099e:	57                   	push   %edi
c010099f:	53                   	push   %ebx
c01009a0:	83 ec 40             	sub    $0x40,%esp
c01009a3:	e8 c9 ff ff ff       	call   c0100971 <waitdisk>
c01009a8:	c7 45 f4 f2 01 00 00 	movl   $0x1f2,-0xc(%ebp)
c01009af:	c6 45 f3 01          	movb   $0x1,-0xd(%ebp)
c01009b3:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
c01009b7:	8b 55 f4             	mov    -0xc(%ebp),%edx
c01009ba:	ee                   	out    %al,(%dx)
c01009bb:	8b 45 0c             	mov    0xc(%ebp),%eax
c01009be:	0f b6 c0             	movzbl %al,%eax
c01009c1:	c7 45 ec f3 01 00 00 	movl   $0x1f3,-0x14(%ebp)
c01009c8:	88 45 eb             	mov    %al,-0x15(%ebp)
c01009cb:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
c01009cf:	8b 55 ec             	mov    -0x14(%ebp),%edx
c01009d2:	ee                   	out    %al,(%dx)
c01009d3:	8b 45 0c             	mov    0xc(%ebp),%eax
c01009d6:	c1 e8 08             	shr    $0x8,%eax
c01009d9:	0f b6 c0             	movzbl %al,%eax
c01009dc:	c7 45 e4 f4 01 00 00 	movl   $0x1f4,-0x1c(%ebp)
c01009e3:	88 45 e3             	mov    %al,-0x1d(%ebp)
c01009e6:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
c01009ea:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c01009ed:	ee                   	out    %al,(%dx)
c01009ee:	8b 45 0c             	mov    0xc(%ebp),%eax
c01009f1:	c1 e8 10             	shr    $0x10,%eax
c01009f4:	0f b6 c0             	movzbl %al,%eax
c01009f7:	c7 45 dc f5 01 00 00 	movl   $0x1f5,-0x24(%ebp)
c01009fe:	88 45 db             	mov    %al,-0x25(%ebp)
c0100a01:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
c0100a05:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0100a08:	ee                   	out    %al,(%dx)
c0100a09:	8b 45 0c             	mov    0xc(%ebp),%eax
c0100a0c:	c1 e8 18             	shr    $0x18,%eax
c0100a0f:	83 c8 e0             	or     $0xffffffe0,%eax
c0100a12:	0f b6 c0             	movzbl %al,%eax
c0100a15:	c7 45 d4 f6 01 00 00 	movl   $0x1f6,-0x2c(%ebp)
c0100a1c:	88 45 d3             	mov    %al,-0x2d(%ebp)
c0100a1f:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
c0100a23:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0100a26:	ee                   	out    %al,(%dx)
c0100a27:	c7 45 cc f7 01 00 00 	movl   $0x1f7,-0x34(%ebp)
c0100a2e:	c6 45 cb 20          	movb   $0x20,-0x35(%ebp)
c0100a32:	0f b6 45 cb          	movzbl -0x35(%ebp),%eax
c0100a36:	8b 55 cc             	mov    -0x34(%ebp),%edx
c0100a39:	ee                   	out    %al,(%dx)
c0100a3a:	e8 32 ff ff ff       	call   c0100971 <waitdisk>
c0100a3f:	c7 45 c4 f0 01 00 00 	movl   $0x1f0,-0x3c(%ebp)
c0100a46:	8b 45 08             	mov    0x8(%ebp),%eax
c0100a49:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0100a4c:	c7 45 bc 80 00 00 00 	movl   $0x80,-0x44(%ebp)
c0100a53:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0100a56:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0100a59:	8b 45 bc             	mov    -0x44(%ebp),%eax
c0100a5c:	89 cb                	mov    %ecx,%ebx
c0100a5e:	89 df                	mov    %ebx,%edi
c0100a60:	89 c1                	mov    %eax,%ecx
c0100a62:	fc                   	cld    
c0100a63:	f2 6d                	repnz insl (%dx),%es:(%edi)
c0100a65:	89 c8                	mov    %ecx,%eax
c0100a67:	89 fb                	mov    %edi,%ebx
c0100a69:	89 5d c0             	mov    %ebx,-0x40(%ebp)
c0100a6c:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0100a6f:	83 c4 40             	add    $0x40,%esp
c0100a72:	5b                   	pop    %ebx
c0100a73:	5f                   	pop    %edi
c0100a74:	5d                   	pop    %ebp
c0100a75:	c3                   	ret    

c0100a76 <read_disk>:
c0100a76:	55                   	push   %ebp
c0100a77:	89 e5                	mov    %esp,%ebp
c0100a79:	83 ec 10             	sub    $0x10,%esp
c0100a7c:	8b 55 0c             	mov    0xc(%ebp),%edx
c0100a7f:	8b 45 08             	mov    0x8(%ebp),%eax
c0100a82:	01 d0                	add    %edx,%eax
c0100a84:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0100a87:	8b 45 10             	mov    0x10(%ebp),%eax
c0100a8a:	99                   	cltd   
c0100a8b:	c1 ea 17             	shr    $0x17,%edx
c0100a8e:	01 d0                	add    %edx,%eax
c0100a90:	25 ff 01 00 00       	and    $0x1ff,%eax
c0100a95:	29 d0                	sub    %edx,%eax
c0100a97:	f7 d8                	neg    %eax
c0100a99:	01 45 08             	add    %eax,0x8(%ebp)
c0100a9c:	8b 45 10             	mov    0x10(%ebp),%eax
c0100a9f:	8d 90 ff 01 00 00    	lea    0x1ff(%eax),%edx
c0100aa5:	85 c0                	test   %eax,%eax
c0100aa7:	0f 48 c2             	cmovs  %edx,%eax
c0100aaa:	c1 f8 09             	sar    $0x9,%eax
c0100aad:	83 c0 01             	add    $0x1,%eax
c0100ab0:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0100ab3:	eb 1a                	jmp    c0100acf <read_disk+0x59>
c0100ab5:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0100ab8:	50                   	push   %eax
c0100ab9:	ff 75 08             	pushl  0x8(%ebp)
c0100abc:	e8 da fe ff ff       	call   c010099b <readsect>
c0100ac1:	83 c4 08             	add    $0x8,%esp
c0100ac4:	81 45 08 00 02 00 00 	addl   $0x200,0x8(%ebp)
c0100acb:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0100acf:	8b 45 08             	mov    0x8(%ebp),%eax
c0100ad2:	3b 45 f8             	cmp    -0x8(%ebp),%eax
c0100ad5:	72 de                	jb     c0100ab5 <read_disk+0x3f>
c0100ad7:	c9                   	leave  
c0100ad8:	c3                   	ret    

c0100ad9 <load>:
c0100ad9:	55                   	push   %ebp
c0100ada:	89 e5                	mov    %esp,%ebp
c0100adc:	83 ec 28             	sub    $0x28,%esp
c0100adf:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0100ae6:	83 ec 04             	sub    $0x4,%esp
c0100ae9:	68 00 10 00 00       	push   $0x1000
c0100aee:	6a 00                	push   $0x0
c0100af0:	ff 75 0c             	pushl  0xc(%ebp)
c0100af3:	e8 14 17 00 00       	call   c010220c <mm_alloc>
c0100af8:	83 c4 10             	add    $0x10,%esp
c0100afb:	8b 45 08             	mov    0x8(%ebp),%eax
c0100afe:	83 ec 04             	sub    $0x4,%esp
c0100b01:	50                   	push   %eax
c0100b02:	68 00 10 00 00       	push   $0x1000
c0100b07:	ff 75 ec             	pushl  -0x14(%ebp)
c0100b0a:	e8 67 ff ff ff       	call   c0100a76 <read_disk>
c0100b0f:	83 c4 10             	add    $0x10,%esp
c0100b12:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100b15:	8b 50 1c             	mov    0x1c(%eax),%edx
c0100b18:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100b1b:	01 d0                	add    %edx,%eax
c0100b1d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100b20:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100b23:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
c0100b27:	0f b7 c0             	movzwl %ax,%eax
c0100b2a:	c1 e0 05             	shl    $0x5,%eax
c0100b2d:	89 c2                	mov    %eax,%edx
c0100b2f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100b32:	01 d0                	add    %edx,%eax
c0100b34:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0100b37:	83 ec 04             	sub    $0x4,%esp
c0100b3a:	ff 75 0c             	pushl  0xc(%ebp)
c0100b3d:	6a 52                	push   $0x52
c0100b3f:	68 63 36 10 c0       	push   $0xc0103663
c0100b44:	e8 f8 fd ff ff       	call   c0100941 <_paddr>
c0100b49:	83 c4 10             	add    $0x10,%esp
c0100b4c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0100b4f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0100b52:	0f 22 d8             	mov    %eax,%cr3
c0100b55:	eb 7b                	jmp    c0100bd2 <load+0xf9>
c0100b57:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100b5a:	8b 40 14             	mov    0x14(%eax),%eax
c0100b5d:	89 c2                	mov    %eax,%edx
c0100b5f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100b62:	8b 40 0c             	mov    0xc(%eax),%eax
c0100b65:	83 ec 04             	sub    $0x4,%esp
c0100b68:	52                   	push   %edx
c0100b69:	50                   	push   %eax
c0100b6a:	ff 75 0c             	pushl  0xc(%ebp)
c0100b6d:	e8 9a 16 00 00       	call   c010220c <mm_alloc>
c0100b72:	83 c4 10             	add    $0x10,%esp
c0100b75:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100b78:	8b 50 04             	mov    0x4(%eax),%edx
c0100b7b:	8b 45 08             	mov    0x8(%ebp),%eax
c0100b7e:	01 d0                	add    %edx,%eax
c0100b80:	89 c1                	mov    %eax,%ecx
c0100b82:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100b85:	8b 40 10             	mov    0x10(%eax),%eax
c0100b88:	89 c2                	mov    %eax,%edx
c0100b8a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100b8d:	8b 40 0c             	mov    0xc(%eax),%eax
c0100b90:	83 ec 04             	sub    $0x4,%esp
c0100b93:	51                   	push   %ecx
c0100b94:	52                   	push   %edx
c0100b95:	50                   	push   %eax
c0100b96:	e8 db fe ff ff       	call   c0100a76 <read_disk>
c0100b9b:	83 c4 10             	add    $0x10,%esp
c0100b9e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100ba1:	8b 50 0c             	mov    0xc(%eax),%edx
c0100ba4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100ba7:	8b 40 10             	mov    0x10(%eax),%eax
c0100baa:	01 d0                	add    %edx,%eax
c0100bac:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0100baf:	eb 0a                	jmp    c0100bbb <load+0xe2>
c0100bb1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0100bb4:	c6 00 00             	movb   $0x0,(%eax)
c0100bb7:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0100bbb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100bbe:	8b 50 0c             	mov    0xc(%eax),%edx
c0100bc1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100bc4:	8b 40 14             	mov    0x14(%eax),%eax
c0100bc7:	01 d0                	add    %edx,%eax
c0100bc9:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0100bcc:	77 e3                	ja     c0100bb1 <load+0xd8>
c0100bce:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c0100bd2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100bd5:	3b 45 e8             	cmp    -0x18(%ebp),%eax
c0100bd8:	0f 82 79 ff ff ff    	jb     c0100b57 <load+0x7e>
c0100bde:	83 ec 04             	sub    $0x4,%esp
c0100be1:	68 00 00 01 00       	push   $0x10000
c0100be6:	68 00 00 60 00       	push   $0x600000
c0100beb:	ff 75 0c             	pushl  0xc(%ebp)
c0100bee:	e8 19 16 00 00       	call   c010220c <mm_alloc>
c0100bf3:	83 c4 10             	add    $0x10,%esp
c0100bf6:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0100bf9:	8b 40 18             	mov    0x18(%eax),%eax
c0100bfc:	c9                   	leave  
c0100bfd:	c3                   	ret    

c0100bfe <print_tf>:
c0100bfe:	55                   	push   %ebp
c0100bff:	89 e5                	mov    %esp,%ebp
c0100c01:	83 ec 08             	sub    $0x8,%esp
c0100c04:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c07:	8b 40 1c             	mov    0x1c(%eax),%eax
c0100c0a:	83 ec 08             	sub    $0x8,%esp
c0100c0d:	50                   	push   %eax
c0100c0e:	68 74 36 10 c0       	push   $0xc0103674
c0100c13:	e8 8c 21 00 00       	call   c0102da4 <printk>
c0100c18:	83 c4 10             	add    $0x10,%esp
c0100c1b:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c1e:	8b 40 10             	mov    0x10(%eax),%eax
c0100c21:	83 ec 08             	sub    $0x8,%esp
c0100c24:	50                   	push   %eax
c0100c25:	68 7b 36 10 c0       	push   $0xc010367b
c0100c2a:	e8 75 21 00 00       	call   c0102da4 <printk>
c0100c2f:	83 c4 10             	add    $0x10,%esp
c0100c32:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c35:	8b 40 18             	mov    0x18(%eax),%eax
c0100c38:	83 ec 08             	sub    $0x8,%esp
c0100c3b:	50                   	push   %eax
c0100c3c:	68 82 36 10 c0       	push   $0xc0103682
c0100c41:	e8 5e 21 00 00       	call   c0102da4 <printk>
c0100c46:	83 c4 10             	add    $0x10,%esp
c0100c49:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c4c:	8b 40 14             	mov    0x14(%eax),%eax
c0100c4f:	83 ec 08             	sub    $0x8,%esp
c0100c52:	50                   	push   %eax
c0100c53:	68 89 36 10 c0       	push   $0xc0103689
c0100c58:	e8 47 21 00 00       	call   c0102da4 <printk>
c0100c5d:	83 c4 10             	add    $0x10,%esp
c0100c60:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c63:	8b 00                	mov    (%eax),%eax
c0100c65:	83 ec 08             	sub    $0x8,%esp
c0100c68:	50                   	push   %eax
c0100c69:	68 90 36 10 c0       	push   $0xc0103690
c0100c6e:	e8 31 21 00 00       	call   c0102da4 <printk>
c0100c73:	83 c4 10             	add    $0x10,%esp
c0100c76:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c79:	8b 40 34             	mov    0x34(%eax),%eax
c0100c7c:	83 ec 08             	sub    $0x8,%esp
c0100c7f:	50                   	push   %eax
c0100c80:	68 97 36 10 c0       	push   $0xc0103697
c0100c85:	e8 1a 21 00 00       	call   c0102da4 <printk>
c0100c8a:	83 c4 10             	add    $0x10,%esp
c0100c8d:	8b 45 08             	mov    0x8(%ebp),%eax
c0100c90:	8b 40 08             	mov    0x8(%eax),%eax
c0100c93:	83 ec 08             	sub    $0x8,%esp
c0100c96:	50                   	push   %eax
c0100c97:	68 9e 36 10 c0       	push   $0xc010369e
c0100c9c:	e8 03 21 00 00       	call   c0102da4 <printk>
c0100ca1:	83 c4 10             	add    $0x10,%esp
c0100ca4:	8b 45 08             	mov    0x8(%ebp),%eax
c0100ca7:	8b 40 28             	mov    0x28(%eax),%eax
c0100caa:	83 ec 08             	sub    $0x8,%esp
c0100cad:	50                   	push   %eax
c0100cae:	68 a5 36 10 c0       	push   $0xc01036a5
c0100cb3:	e8 ec 20 00 00       	call   c0102da4 <printk>
c0100cb8:	83 c4 10             	add    $0x10,%esp
c0100cbb:	8b 45 08             	mov    0x8(%ebp),%eax
c0100cbe:	8b 40 2c             	mov    0x2c(%eax),%eax
c0100cc1:	83 ec 08             	sub    $0x8,%esp
c0100cc4:	50                   	push   %eax
c0100cc5:	68 ac 36 10 c0       	push   $0xc01036ac
c0100cca:	e8 d5 20 00 00       	call   c0102da4 <printk>
c0100ccf:	83 c4 10             	add    $0x10,%esp
c0100cd2:	c9                   	leave  
c0100cd3:	c3                   	ret    

c0100cd4 <list>:
c0100cd4:	55                   	push   %ebp
c0100cd5:	89 e5                	mov    %esp,%ebp
c0100cd7:	83 ec 18             	sub    $0x18,%esp
c0100cda:	c7 45 f4 40 5f 13 c0 	movl   $0xc0135f40,-0xc(%ebp)
c0100ce1:	eb 27                	jmp    c0100d0a <list+0x36>
c0100ce3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100ce6:	8d 50 0c             	lea    0xc(%eax),%edx
c0100ce9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100cec:	8b 40 08             	mov    0x8(%eax),%eax
c0100cef:	83 ec 04             	sub    $0x4,%esp
c0100cf2:	52                   	push   %edx
c0100cf3:	50                   	push   %eax
c0100cf4:	68 b4 36 10 c0       	push   $0xc01036b4
c0100cf9:	e8 a6 20 00 00       	call   c0102da4 <printk>
c0100cfe:	83 c4 10             	add    $0x10,%esp
c0100d01:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100d04:	8b 40 3c             	mov    0x3c(%eax),%eax
c0100d07:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100d0a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0100d0e:	75 d3                	jne    c0100ce3 <list+0xf>
c0100d10:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c0100d15:	c1 e0 02             	shl    $0x2,%eax
c0100d18:	89 c2                	mov    %eax,%edx
c0100d1a:	c1 e2 04             	shl    $0x4,%edx
c0100d1d:	01 d0                	add    %edx,%eax
c0100d1f:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0100d24:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100d27:	eb 32                	jmp    c0100d5b <list+0x87>
c0100d29:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c0100d2e:	85 c0                	test   %eax,%eax
c0100d30:	75 02                	jne    c0100d34 <list+0x60>
c0100d32:	eb 2d                	jmp    c0100d61 <list+0x8d>
c0100d34:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100d37:	8d 50 0c             	lea    0xc(%eax),%edx
c0100d3a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100d3d:	8b 40 08             	mov    0x8(%eax),%eax
c0100d40:	83 ec 04             	sub    $0x4,%esp
c0100d43:	52                   	push   %edx
c0100d44:	50                   	push   %eax
c0100d45:	68 d8 36 10 c0       	push   $0xc01036d8
c0100d4a:	e8 55 20 00 00       	call   c0102da4 <printk>
c0100d4f:	83 c4 10             	add    $0x10,%esp
c0100d52:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100d55:	8b 40 3c             	mov    0x3c(%eax),%eax
c0100d58:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100d5b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0100d5f:	75 c8                	jne    c0100d29 <list+0x55>
c0100d61:	a1 c0 00 11 c0       	mov    0xc01100c0,%eax
c0100d66:	c1 e0 02             	shl    $0x2,%eax
c0100d69:	89 c2                	mov    %eax,%edx
c0100d6b:	c1 e2 04             	shl    $0x4,%edx
c0100d6e:	01 d0                	add    %edx,%eax
c0100d70:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0100d75:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100d78:	eb 32                	jmp    c0100dac <list+0xd8>
c0100d7a:	a1 c0 00 11 c0       	mov    0xc01100c0,%eax
c0100d7f:	85 c0                	test   %eax,%eax
c0100d81:	75 02                	jne    c0100d85 <list+0xb1>
c0100d83:	eb 2d                	jmp    c0100db2 <list+0xde>
c0100d85:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100d88:	8d 50 0c             	lea    0xc(%eax),%edx
c0100d8b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100d8e:	8b 40 08             	mov    0x8(%eax),%eax
c0100d91:	83 ec 04             	sub    $0x4,%esp
c0100d94:	52                   	push   %edx
c0100d95:	50                   	push   %eax
c0100d96:	68 fc 36 10 c0       	push   $0xc01036fc
c0100d9b:	e8 04 20 00 00       	call   c0102da4 <printk>
c0100da0:	83 c4 10             	add    $0x10,%esp
c0100da3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100da6:	8b 40 3c             	mov    0x3c(%eax),%eax
c0100da9:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0100dac:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0100db0:	75 c8                	jne    c0100d7a <list+0xa6>
c0100db2:	83 ec 0c             	sub    $0xc,%esp
c0100db5:	68 1f 37 10 c0       	push   $0xc010371f
c0100dba:	e8 e5 1f 00 00       	call   c0102da4 <printk>
c0100dbf:	83 c4 10             	add    $0x10,%esp
c0100dc2:	c9                   	leave  
c0100dc3:	c3                   	ret    

c0100dc4 <debug>:
c0100dc4:	55                   	push   %ebp
c0100dc5:	89 e5                	mov    %esp,%ebp
c0100dc7:	83 ec 08             	sub    $0x8,%esp
c0100dca:	8b 0d 10 5f 13 c0    	mov    0xc0135f10,%ecx
c0100dd0:	8b 15 04 30 17 c0    	mov    0xc0173004,%edx
c0100dd6:	a1 00 30 17 c0       	mov    0xc0173000,%eax
c0100ddb:	51                   	push   %ecx
c0100ddc:	52                   	push   %edx
c0100ddd:	50                   	push   %eax
c0100dde:	68 28 37 10 c0       	push   $0xc0103728
c0100de3:	e8 bc 1f 00 00       	call   c0102da4 <printk>
c0100de8:	83 c4 10             	add    $0x10,%esp
c0100deb:	c9                   	leave  
c0100dec:	c3                   	ret    

c0100ded <getpid>:
c0100ded:	55                   	push   %ebp
c0100dee:	89 e5                	mov    %esp,%ebp
c0100df0:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0100df5:	c1 e0 02             	shl    $0x2,%eax
c0100df8:	89 c2                	mov    %eax,%edx
c0100dfa:	c1 e2 04             	shl    $0x4,%edx
c0100dfd:	01 d0                	add    %edx,%eax
c0100dff:	83 c0 30             	add    $0x30,%eax
c0100e02:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0100e07:	8b 40 0c             	mov    0xc(%eax),%eax
c0100e0a:	8b 40 08             	mov    0x8(%eax),%eax
c0100e0d:	5d                   	pop    %ebp
c0100e0e:	c3                   	ret    

c0100e0f <get_free_pid>:
c0100e0f:	55                   	push   %ebp
c0100e10:	89 e5                	mov    %esp,%ebp
c0100e12:	83 ec 18             	sub    $0x18,%esp
c0100e15:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0100e1c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0100e23:	eb 25                	jmp    c0100e4a <get_free_pid+0x3b>
c0100e25:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100e28:	8b 04 85 00 50 13 c0 	mov    -0x3fecb000(,%eax,4),%eax
c0100e2f:	85 c0                	test   %eax,%eax
c0100e31:	75 13                	jne    c0100e46 <get_free_pid+0x37>
c0100e33:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100e36:	c7 04 85 00 50 13 c0 	movl   $0x1,-0x3fecb000(,%eax,4)
c0100e3d:	01 00 00 00 
c0100e41:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100e44:	eb 1c                	jmp    c0100e62 <get_free_pid+0x53>
c0100e46:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0100e4a:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c0100e4e:	7e d5                	jle    c0100e25 <get_free_pid+0x16>
c0100e50:	83 ec 0c             	sub    $0xc,%esp
c0100e53:	68 4c 37 10 c0       	push   $0xc010374c
c0100e58:	e8 47 1f 00 00       	call   c0102da4 <printk>
c0100e5d:	83 c4 10             	add    $0x10,%esp
c0100e60:	eb fe                	jmp    c0100e60 <get_free_pid+0x51>
c0100e62:	c9                   	leave  
c0100e63:	c3                   	ret    

c0100e64 <free_a_pid>:
c0100e64:	55                   	push   %ebp
c0100e65:	89 e5                	mov    %esp,%ebp
c0100e67:	8b 45 08             	mov    0x8(%ebp),%eax
c0100e6a:	c7 04 85 00 50 13 c0 	movl   $0x0,-0x3fecb000(,%eax,4)
c0100e71:	00 00 00 00 
c0100e75:	5d                   	pop    %ebp
c0100e76:	c3                   	ret    

c0100e77 <init_PCB>:
c0100e77:	55                   	push   %ebp
c0100e78:	89 e5                	mov    %esp,%ebp
c0100e7a:	83 ec 18             	sub    $0x18,%esp
c0100e7d:	a1 04 10 1b c0       	mov    0xc01b1004,%eax
c0100e82:	83 ec 04             	sub    $0x4,%esp
c0100e85:	68 00 10 00 00       	push   $0x1000
c0100e8a:	50                   	push   %eax
c0100e8b:	68 00 70 13 c0       	push   $0xc0137000
c0100e90:	e8 34 1f 00 00       	call   c0102dc9 <my_memcpy>
c0100e95:	83 c4 10             	add    $0x10,%esp
c0100e98:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
c0100e9f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0100ea6:	eb 1d                	jmp    c0100ec5 <init_PCB+0x4e>
c0100ea8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100eab:	0f b7 04 c5 44 10 1b 	movzwl -0x3fe4efbc(,%eax,8),%eax
c0100eb2:	c0 
c0100eb3:	8d 50 01             	lea    0x1(%eax),%edx
c0100eb6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100eb9:	66 89 14 c5 44 10 1b 	mov    %dx,-0x3fe4efbc(,%eax,8)
c0100ec0:	c0 
c0100ec1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0100ec5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100ec8:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0100ecb:	7c db                	jl     c0100ea8 <init_PCB+0x31>
c0100ecd:	83 ec 08             	sub    $0x8,%esp
c0100ed0:	68 00 70 13 c0       	push   $0xc0137000
c0100ed5:	68 00 20 03 00       	push   $0x32000
c0100eda:	e8 fa fb ff ff       	call   c0100ad9 <load>
c0100edf:	83 c4 10             	add    $0x10,%esp
c0100ee2:	a3 28 51 13 c0       	mov    %eax,0xc0135128
c0100ee7:	c7 05 2c 51 13 c0 1b 	movl   $0x1b,0xc013512c
c0100eee:	00 00 00 
c0100ef1:	c7 05 30 51 13 c0 02 	movl   $0x202,0xc0135130
c0100ef8:	02 00 00 
c0100efb:	c7 05 34 51 13 c0 f0 	movl   $0x60fff0,0xc0135134
c0100f02:	ff 60 00 
c0100f05:	c7 05 38 51 13 c0 23 	movl   $0x23,0xc0135138
c0100f0c:	00 00 00 
c0100f0f:	83 ec 04             	sub    $0x4,%esp
c0100f12:	6a 04                	push   $0x4
c0100f14:	68 5a 37 10 c0       	push   $0xc010375a
c0100f19:	68 4c 5f 13 c0       	push   $0xc0135f4c
c0100f1e:	e8 08 26 00 00       	call   c010352b <my_strcpy>
c0100f23:	83 c4 10             	add    $0x10,%esp
c0100f26:	c7 05 48 5f 13 c0 00 	movl   $0x0,0xc0135f48
c0100f2d:	00 00 00 
c0100f30:	c7 05 70 5f 13 c0 00 	movl   $0x0,0xc0135f70
c0100f37:	00 00 00 
c0100f3a:	c7 05 80 5f 13 c0 00 	movl   $0x0,0xc0135f80
c0100f41:	00 00 00 
c0100f44:	c7 05 7c 5f 13 c0 00 	movl   $0x0,0xc0135f7c
c0100f4b:	00 00 00 
c0100f4e:	c7 05 6c 5f 13 c0 01 	movl   $0x1,0xc0135f6c
c0100f55:	00 00 00 
c0100f58:	c7 05 74 5f 13 c0 01 	movl   $0x1,0xc0135f74
c0100f5f:	00 00 00 
c0100f62:	c7 05 78 5f 13 c0 c8 	movl   $0xc8,0xc0135f78
c0100f69:	00 00 00 
c0100f6c:	c7 05 44 5f 13 c0 00 	movl   $0xc0135100,0xc0135f44
c0100f73:	51 13 c0 
c0100f76:	c7 05 00 30 17 c0 01 	movl   $0x1,0xc0173000
c0100f7d:	00 00 00 
c0100f80:	c7 05 04 30 17 c0 00 	movl   $0x0,0xc0173004
c0100f87:	00 00 00 
c0100f8a:	c7 05 10 5f 13 c0 00 	movl   $0x0,0xc0135f10
c0100f91:	00 00 00 
c0100f94:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0100f9b:	eb 2a                	jmp    c0100fc7 <init_PCB+0x150>
c0100f9d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100fa0:	c1 e0 02             	shl    $0x2,%eax
c0100fa3:	89 c2                	mov    %eax,%edx
c0100fa5:	c1 e2 04             	shl    $0x4,%edx
c0100fa8:	01 d0                	add    %edx,%eax
c0100faa:	8d 90 40 5f 13 c0    	lea    -0x3feca0c0(%eax),%edx
c0100fb0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100fb3:	89 02                	mov    %eax,(%edx)
c0100fb5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0100fb8:	c7 04 85 00 50 13 c0 	movl   $0x0,-0x3fecb000(,%eax,4)
c0100fbf:	00 00 00 00 
c0100fc3:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0100fc7:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c0100fcb:	7e d0                	jle    c0100f9d <init_PCB+0x126>
c0100fcd:	c7 05 00 50 13 c0 01 	movl   $0x1,0xc0135000
c0100fd4:	00 00 00 
c0100fd7:	c9                   	leave  
c0100fd8:	c3                   	ret    

c0100fd9 <add_PCB>:
c0100fd9:	55                   	push   %ebp
c0100fda:	89 e5                	mov    %esp,%ebp
c0100fdc:	83 ec 18             	sub    $0x18,%esp
c0100fdf:	8b 15 00 30 17 c0    	mov    0xc0173000,%edx
c0100fe5:	a1 04 30 17 c0       	mov    0xc0173004,%eax
c0100fea:	01 c2                	add    %eax,%edx
c0100fec:	a1 10 5f 13 c0       	mov    0xc0135f10,%eax
c0100ff1:	01 d0                	add    %edx,%eax
c0100ff3:	83 f8 3c             	cmp    $0x3c,%eax
c0100ff6:	75 1b                	jne    c0101013 <add_PCB+0x3a>
c0100ff8:	83 ec 0c             	sub    $0xc,%esp
c0100ffb:	68 5f 37 10 c0       	push   $0xc010375f
c0101000:	e8 9f 1d 00 00       	call   c0102da4 <printk>
c0101005:	83 c4 10             	add    $0x10,%esp
c0101008:	fb                   	sti    
c0101009:	b8 00 00 00 00       	mov    $0x0,%eax
c010100e:	e9 95 03 00 00       	jmp    c01013a8 <add_PCB+0x3cf>
c0101013:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c010101a:	eb 22                	jmp    c010103e <add_PCB+0x65>
c010101c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010101f:	c1 e0 02             	shl    $0x2,%eax
c0101022:	89 c2                	mov    %eax,%edx
c0101024:	c1 e2 04             	shl    $0x4,%edx
c0101027:	01 d0                	add    %edx,%eax
c0101029:	83 c0 20             	add    $0x20,%eax
c010102c:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101031:	8b 40 0c             	mov    0xc(%eax),%eax
c0101034:	85 c0                	test   %eax,%eax
c0101036:	75 02                	jne    c010103a <add_PCB+0x61>
c0101038:	eb 0a                	jmp    c0101044 <add_PCB+0x6b>
c010103a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c010103e:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
c0101042:	7e d8                	jle    c010101c <add_PCB+0x43>
c0101044:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101047:	c1 e0 02             	shl    $0x2,%eax
c010104a:	89 c2                	mov    %eax,%edx
c010104c:	c1 e2 04             	shl    $0x4,%edx
c010104f:	01 d0                	add    %edx,%eax
c0101051:	83 c0 20             	add    $0x20,%eax
c0101054:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101059:	c7 40 0c 01 00 00 00 	movl   $0x1,0xc(%eax)
c0101060:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0101064:	0f 85 98 00 00 00    	jne    c0101102 <add_PCB+0x129>
c010106a:	a1 b4 00 11 c0       	mov    0xc01100b4,%eax
c010106f:	c1 e0 02             	shl    $0x2,%eax
c0101072:	89 c2                	mov    %eax,%edx
c0101074:	c1 e2 04             	shl    $0x4,%edx
c0101077:	01 d0                	add    %edx,%eax
c0101079:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c010107e:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101081:	8b 0d b4 00 11 c0    	mov    0xc01100b4,%ecx
c0101087:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010108a:	c1 e0 02             	shl    $0x2,%eax
c010108d:	89 c2                	mov    %eax,%edx
c010108f:	c1 e2 04             	shl    $0x4,%edx
c0101092:	01 d0                	add    %edx,%eax
c0101094:	8d 90 40 5f 13 c0    	lea    -0x3feca0c0(%eax),%edx
c010109a:	89 c8                	mov    %ecx,%eax
c010109c:	c1 e0 02             	shl    $0x2,%eax
c010109f:	89 c1                	mov    %eax,%ecx
c01010a1:	c1 e1 04             	shl    $0x4,%ecx
c01010a4:	01 c8                	add    %ecx,%eax
c01010a6:	83 c0 30             	add    $0x30,%eax
c01010a9:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01010ae:	89 50 0c             	mov    %edx,0xc(%eax)
c01010b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01010b4:	c1 e0 02             	shl    $0x2,%eax
c01010b7:	89 c2                	mov    %eax,%edx
c01010b9:	c1 e2 04             	shl    $0x4,%edx
c01010bc:	01 d0                	add    %edx,%eax
c01010be:	83 c0 40             	add    $0x40,%eax
c01010c1:	8d 90 40 5f 13 c0    	lea    -0x3feca0c0(%eax),%edx
c01010c7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01010ca:	89 02                	mov    %eax,(%edx)
c01010cc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01010cf:	c1 e0 02             	shl    $0x2,%eax
c01010d2:	89 c2                	mov    %eax,%edx
c01010d4:	c1 e2 04             	shl    $0x4,%edx
c01010d7:	01 d0                	add    %edx,%eax
c01010d9:	83 c0 30             	add    $0x30,%eax
c01010dc:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01010e1:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c01010e8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01010eb:	a3 b4 00 11 c0       	mov    %eax,0xc01100b4
c01010f0:	a1 00 30 17 c0       	mov    0xc0173000,%eax
c01010f5:	83 c0 01             	add    $0x1,%eax
c01010f8:	a3 00 30 17 c0       	mov    %eax,0xc0173000
c01010fd:	e9 f9 01 00 00       	jmp    c01012fb <add_PCB+0x322>
c0101102:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0101106:	0f 85 fa 00 00 00    	jne    c0101206 <add_PCB+0x22d>
c010110c:	a1 04 30 17 c0       	mov    0xc0173004,%eax
c0101111:	85 c0                	test   %eax,%eax
c0101113:	75 59                	jne    c010116e <add_PCB+0x195>
c0101115:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101118:	a3 b8 00 11 c0       	mov    %eax,0xc01100b8
c010111d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101120:	a3 bc 00 11 c0       	mov    %eax,0xc01100bc
c0101125:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101128:	c1 e0 02             	shl    $0x2,%eax
c010112b:	89 c2                	mov    %eax,%edx
c010112d:	c1 e2 04             	shl    $0x4,%edx
c0101130:	01 d0                	add    %edx,%eax
c0101132:	83 c0 40             	add    $0x40,%eax
c0101135:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c010113a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0101140:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101143:	c1 e0 02             	shl    $0x2,%eax
c0101146:	89 c2                	mov    %eax,%edx
c0101148:	c1 e2 04             	shl    $0x4,%edx
c010114b:	01 d0                	add    %edx,%eax
c010114d:	83 c0 30             	add    $0x30,%eax
c0101150:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101155:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c010115c:	a1 04 30 17 c0       	mov    0xc0173004,%eax
c0101161:	83 c0 01             	add    $0x1,%eax
c0101164:	a3 04 30 17 c0       	mov    %eax,0xc0173004
c0101169:	e9 8d 01 00 00       	jmp    c01012fb <add_PCB+0x322>
c010116e:	a1 bc 00 11 c0       	mov    0xc01100bc,%eax
c0101173:	c1 e0 02             	shl    $0x2,%eax
c0101176:	89 c2                	mov    %eax,%edx
c0101178:	c1 e2 04             	shl    $0x4,%edx
c010117b:	01 d0                	add    %edx,%eax
c010117d:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101182:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101185:	8b 0d bc 00 11 c0    	mov    0xc01100bc,%ecx
c010118b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010118e:	c1 e0 02             	shl    $0x2,%eax
c0101191:	89 c2                	mov    %eax,%edx
c0101193:	c1 e2 04             	shl    $0x4,%edx
c0101196:	01 d0                	add    %edx,%eax
c0101198:	8d 90 40 5f 13 c0    	lea    -0x3feca0c0(%eax),%edx
c010119e:	89 c8                	mov    %ecx,%eax
c01011a0:	c1 e0 02             	shl    $0x2,%eax
c01011a3:	89 c1                	mov    %eax,%ecx
c01011a5:	c1 e1 04             	shl    $0x4,%ecx
c01011a8:	01 c8                	add    %ecx,%eax
c01011aa:	83 c0 30             	add    $0x30,%eax
c01011ad:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01011b2:	89 50 0c             	mov    %edx,0xc(%eax)
c01011b5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01011b8:	c1 e0 02             	shl    $0x2,%eax
c01011bb:	89 c2                	mov    %eax,%edx
c01011bd:	c1 e2 04             	shl    $0x4,%edx
c01011c0:	01 d0                	add    %edx,%eax
c01011c2:	83 c0 40             	add    $0x40,%eax
c01011c5:	8d 90 40 5f 13 c0    	lea    -0x3feca0c0(%eax),%edx
c01011cb:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01011ce:	89 02                	mov    %eax,(%edx)
c01011d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01011d3:	c1 e0 02             	shl    $0x2,%eax
c01011d6:	89 c2                	mov    %eax,%edx
c01011d8:	c1 e2 04             	shl    $0x4,%edx
c01011db:	01 d0                	add    %edx,%eax
c01011dd:	83 c0 30             	add    $0x30,%eax
c01011e0:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01011e5:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c01011ec:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01011ef:	a3 bc 00 11 c0       	mov    %eax,0xc01100bc
c01011f4:	a1 04 30 17 c0       	mov    0xc0173004,%eax
c01011f9:	83 c0 01             	add    $0x1,%eax
c01011fc:	a3 04 30 17 c0       	mov    %eax,0xc0173004
c0101201:	e9 f5 00 00 00       	jmp    c01012fb <add_PCB+0x322>
c0101206:	a1 10 5f 13 c0       	mov    0xc0135f10,%eax
c010120b:	85 c0                	test   %eax,%eax
c010120d:	75 59                	jne    c0101268 <add_PCB+0x28f>
c010120f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101212:	a3 c0 00 11 c0       	mov    %eax,0xc01100c0
c0101217:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010121a:	a3 c4 00 11 c0       	mov    %eax,0xc01100c4
c010121f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101222:	c1 e0 02             	shl    $0x2,%eax
c0101225:	89 c2                	mov    %eax,%edx
c0101227:	c1 e2 04             	shl    $0x4,%edx
c010122a:	01 d0                	add    %edx,%eax
c010122c:	83 c0 40             	add    $0x40,%eax
c010122f:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101234:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c010123a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010123d:	c1 e0 02             	shl    $0x2,%eax
c0101240:	89 c2                	mov    %eax,%edx
c0101242:	c1 e2 04             	shl    $0x4,%edx
c0101245:	01 d0                	add    %edx,%eax
c0101247:	83 c0 30             	add    $0x30,%eax
c010124a:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c010124f:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101256:	a1 10 5f 13 c0       	mov    0xc0135f10,%eax
c010125b:	83 c0 01             	add    $0x1,%eax
c010125e:	a3 10 5f 13 c0       	mov    %eax,0xc0135f10
c0101263:	e9 93 00 00 00       	jmp    c01012fb <add_PCB+0x322>
c0101268:	a1 c4 00 11 c0       	mov    0xc01100c4,%eax
c010126d:	c1 e0 02             	shl    $0x2,%eax
c0101270:	89 c2                	mov    %eax,%edx
c0101272:	c1 e2 04             	shl    $0x4,%edx
c0101275:	01 d0                	add    %edx,%eax
c0101277:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c010127c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010127f:	8b 0d c4 00 11 c0    	mov    0xc01100c4,%ecx
c0101285:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101288:	c1 e0 02             	shl    $0x2,%eax
c010128b:	89 c2                	mov    %eax,%edx
c010128d:	c1 e2 04             	shl    $0x4,%edx
c0101290:	01 d0                	add    %edx,%eax
c0101292:	8d 90 40 5f 13 c0    	lea    -0x3feca0c0(%eax),%edx
c0101298:	89 c8                	mov    %ecx,%eax
c010129a:	c1 e0 02             	shl    $0x2,%eax
c010129d:	89 c1                	mov    %eax,%ecx
c010129f:	c1 e1 04             	shl    $0x4,%ecx
c01012a2:	01 c8                	add    %ecx,%eax
c01012a4:	83 c0 30             	add    $0x30,%eax
c01012a7:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01012ac:	89 50 0c             	mov    %edx,0xc(%eax)
c01012af:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01012b2:	c1 e0 02             	shl    $0x2,%eax
c01012b5:	89 c2                	mov    %eax,%edx
c01012b7:	c1 e2 04             	shl    $0x4,%edx
c01012ba:	01 d0                	add    %edx,%eax
c01012bc:	83 c0 40             	add    $0x40,%eax
c01012bf:	8d 90 40 5f 13 c0    	lea    -0x3feca0c0(%eax),%edx
c01012c5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01012c8:	89 02                	mov    %eax,(%edx)
c01012ca:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01012cd:	c1 e0 02             	shl    $0x2,%eax
c01012d0:	89 c2                	mov    %eax,%edx
c01012d2:	c1 e2 04             	shl    $0x4,%edx
c01012d5:	01 d0                	add    %edx,%eax
c01012d7:	83 c0 30             	add    $0x30,%eax
c01012da:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01012df:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c01012e6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01012e9:	a3 c4 00 11 c0       	mov    %eax,0xc01100c4
c01012ee:	a1 10 5f 13 c0       	mov    0xc0135f10,%eax
c01012f3:	83 c0 01             	add    $0x1,%eax
c01012f6:	a3 10 5f 13 c0       	mov    %eax,0xc0135f10
c01012fb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01012fe:	c1 e0 02             	shl    $0x2,%eax
c0101301:	89 c2                	mov    %eax,%edx
c0101303:	c1 e2 04             	shl    $0x4,%edx
c0101306:	01 d0                	add    %edx,%eax
c0101308:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c010130d:	83 c0 0c             	add    $0xc,%eax
c0101310:	83 ec 04             	sub    $0x4,%esp
c0101313:	6a 1f                	push   $0x1f
c0101315:	ff 75 10             	pushl  0x10(%ebp)
c0101318:	50                   	push   %eax
c0101319:	e8 0d 22 00 00       	call   c010352b <my_strcpy>
c010131e:	83 c4 10             	add    $0x10,%esp
c0101321:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101324:	c1 e0 02             	shl    $0x2,%eax
c0101327:	89 c2                	mov    %eax,%edx
c0101329:	c1 e2 04             	shl    $0x4,%edx
c010132c:	01 d0                	add    %edx,%eax
c010132e:	83 c0 30             	add    $0x30,%eax
c0101331:	8d 90 40 5f 13 c0    	lea    -0x3feca0c0(%eax),%edx
c0101337:	8b 45 14             	mov    0x14(%ebp),%eax
c010133a:	89 42 08             	mov    %eax,0x8(%edx)
c010133d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101340:	c1 e0 02             	shl    $0x2,%eax
c0101343:	89 c2                	mov    %eax,%edx
c0101345:	c1 e2 04             	shl    $0x4,%edx
c0101348:	01 d0                	add    %edx,%eax
c010134a:	83 c0 30             	add    $0x30,%eax
c010134d:	8d 90 40 5f 13 c0    	lea    -0x3feca0c0(%eax),%edx
c0101353:	8b 45 08             	mov    0x8(%ebp),%eax
c0101356:	89 42 04             	mov    %eax,0x4(%edx)
c0101359:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010135c:	c1 e0 02             	shl    $0x2,%eax
c010135f:	89 c2                	mov    %eax,%edx
c0101361:	c1 e2 04             	shl    $0x4,%edx
c0101364:	01 d0                	add    %edx,%eax
c0101366:	8d 90 40 5f 13 c0    	lea    -0x3feca0c0(%eax),%edx
c010136c:	8b 45 0c             	mov    0xc(%ebp),%eax
c010136f:	89 42 04             	mov    %eax,0x4(%edx)
c0101372:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101375:	c1 e0 02             	shl    $0x2,%eax
c0101378:	89 c2                	mov    %eax,%edx
c010137a:	c1 e2 04             	shl    $0x4,%edx
c010137d:	01 d0                	add    %edx,%eax
c010137f:	83 c0 30             	add    $0x30,%eax
c0101382:	8d 90 40 5f 13 c0    	lea    -0x3feca0c0(%eax),%edx
c0101388:	8b 45 18             	mov    0x18(%ebp),%eax
c010138b:	89 02                	mov    %eax,(%edx)
c010138d:	8b 55 1c             	mov    0x1c(%ebp),%edx
c0101390:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101393:	c1 e0 02             	shl    $0x2,%eax
c0101396:	89 c1                	mov    %eax,%ecx
c0101398:	c1 e1 04             	shl    $0x4,%ecx
c010139b:	01 c8                	add    %ecx,%eax
c010139d:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01013a2:	89 50 08             	mov    %edx,0x8(%eax)
c01013a5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01013a8:	c9                   	leave  
c01013a9:	c3                   	ret    

c01013aa <delete_PCB>:
c01013aa:	55                   	push   %ebp
c01013ab:	89 e5                	mov    %esp,%ebp
c01013ad:	83 ec 18             	sub    $0x18,%esp
c01013b0:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c01013b4:	75 15                	jne    c01013cb <delete_PCB+0x21>
c01013b6:	83 ec 0c             	sub    $0xc,%esp
c01013b9:	68 74 37 10 c0       	push   $0xc0103774
c01013be:	e8 e1 19 00 00       	call   c0102da4 <printk>
c01013c3:	83 c4 10             	add    $0x10,%esp
c01013c6:	e9 c4 03 00 00       	jmp    c010178f <delete_PCB+0x3e5>
c01013cb:	8b 45 08             	mov    0x8(%ebp),%eax
c01013ce:	c1 e0 02             	shl    $0x2,%eax
c01013d1:	89 c2                	mov    %eax,%edx
c01013d3:	c1 e2 04             	shl    $0x4,%edx
c01013d6:	01 d0                	add    %edx,%eax
c01013d8:	83 c0 20             	add    $0x20,%eax
c01013db:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01013e0:	8b 40 0c             	mov    0xc(%eax),%eax
c01013e3:	85 c0                	test   %eax,%eax
c01013e5:	75 15                	jne    c01013fc <delete_PCB+0x52>
c01013e7:	83 ec 0c             	sub    $0xc,%esp
c01013ea:	68 97 37 10 c0       	push   $0xc0103797
c01013ef:	e8 b0 19 00 00       	call   c0102da4 <printk>
c01013f4:	83 c4 10             	add    $0x10,%esp
c01013f7:	e9 93 03 00 00       	jmp    c010178f <delete_PCB+0x3e5>
c01013fc:	8b 45 08             	mov    0x8(%ebp),%eax
c01013ff:	c1 e0 02             	shl    $0x2,%eax
c0101402:	89 c2                	mov    %eax,%edx
c0101404:	c1 e2 04             	shl    $0x4,%edx
c0101407:	01 d0                	add    %edx,%eax
c0101409:	83 c0 20             	add    $0x20,%eax
c010140c:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101411:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0101418:	8b 45 08             	mov    0x8(%ebp),%eax
c010141b:	c1 e0 02             	shl    $0x2,%eax
c010141e:	89 c2                	mov    %eax,%edx
c0101420:	c1 e2 04             	shl    $0x4,%edx
c0101423:	01 d0                	add    %edx,%eax
c0101425:	83 c0 30             	add    $0x30,%eax
c0101428:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c010142d:	8b 40 04             	mov    0x4(%eax),%eax
c0101430:	83 f8 01             	cmp    $0x1,%eax
c0101433:	0f 85 d8 00 00 00    	jne    c0101511 <delete_PCB+0x167>
c0101439:	a1 b4 00 11 c0       	mov    0xc01100b4,%eax
c010143e:	3b 45 08             	cmp    0x8(%ebp),%eax
c0101441:	75 52                	jne    c0101495 <delete_PCB+0xeb>
c0101443:	8b 45 08             	mov    0x8(%ebp),%eax
c0101446:	c1 e0 02             	shl    $0x2,%eax
c0101449:	89 c2                	mov    %eax,%edx
c010144b:	c1 e2 04             	shl    $0x4,%edx
c010144e:	01 d0                	add    %edx,%eax
c0101450:	83 c0 40             	add    $0x40,%eax
c0101453:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101458:	8b 00                	mov    (%eax),%eax
c010145a:	8b 00                	mov    (%eax),%eax
c010145c:	a3 b4 00 11 c0       	mov    %eax,0xc01100b4
c0101461:	8b 45 08             	mov    0x8(%ebp),%eax
c0101464:	c1 e0 02             	shl    $0x2,%eax
c0101467:	89 c2                	mov    %eax,%edx
c0101469:	c1 e2 04             	shl    $0x4,%edx
c010146c:	01 d0                	add    %edx,%eax
c010146e:	83 c0 40             	add    $0x40,%eax
c0101471:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101476:	8b 10                	mov    (%eax),%edx
c0101478:	8b 45 08             	mov    0x8(%ebp),%eax
c010147b:	c1 e0 02             	shl    $0x2,%eax
c010147e:	89 c1                	mov    %eax,%ecx
c0101480:	c1 e1 04             	shl    $0x4,%ecx
c0101483:	01 c8                	add    %ecx,%eax
c0101485:	83 c0 30             	add    $0x30,%eax
c0101488:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c010148d:	8b 40 0c             	mov    0xc(%eax),%eax
c0101490:	89 42 3c             	mov    %eax,0x3c(%edx)
c0101493:	eb 6a                	jmp    c01014ff <delete_PCB+0x155>
c0101495:	8b 45 08             	mov    0x8(%ebp),%eax
c0101498:	c1 e0 02             	shl    $0x2,%eax
c010149b:	89 c2                	mov    %eax,%edx
c010149d:	c1 e2 04             	shl    $0x4,%edx
c01014a0:	01 d0                	add    %edx,%eax
c01014a2:	83 c0 40             	add    $0x40,%eax
c01014a5:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01014aa:	8b 00                	mov    (%eax),%eax
c01014ac:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01014af:	8b 45 08             	mov    0x8(%ebp),%eax
c01014b2:	c1 e0 02             	shl    $0x2,%eax
c01014b5:	89 c2                	mov    %eax,%edx
c01014b7:	c1 e2 04             	shl    $0x4,%edx
c01014ba:	01 d0                	add    %edx,%eax
c01014bc:	83 c0 40             	add    $0x40,%eax
c01014bf:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01014c4:	8b 10                	mov    (%eax),%edx
c01014c6:	8b 45 08             	mov    0x8(%ebp),%eax
c01014c9:	c1 e0 02             	shl    $0x2,%eax
c01014cc:	89 c1                	mov    %eax,%ecx
c01014ce:	c1 e1 04             	shl    $0x4,%ecx
c01014d1:	01 c8                	add    %ecx,%eax
c01014d3:	83 c0 30             	add    $0x30,%eax
c01014d6:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01014db:	8b 40 0c             	mov    0xc(%eax),%eax
c01014de:	89 42 3c             	mov    %eax,0x3c(%edx)
c01014e1:	8b 45 08             	mov    0x8(%ebp),%eax
c01014e4:	c1 e0 02             	shl    $0x2,%eax
c01014e7:	89 c2                	mov    %eax,%edx
c01014e9:	c1 e2 04             	shl    $0x4,%edx
c01014ec:	01 d0                	add    %edx,%eax
c01014ee:	83 c0 30             	add    $0x30,%eax
c01014f1:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01014f6:	8b 40 0c             	mov    0xc(%eax),%eax
c01014f9:	8b 55 f4             	mov    -0xc(%ebp),%edx
c01014fc:	89 50 40             	mov    %edx,0x40(%eax)
c01014ff:	a1 00 30 17 c0       	mov    0xc0173000,%eax
c0101504:	83 e8 01             	sub    $0x1,%eax
c0101507:	a3 00 30 17 c0       	mov    %eax,0xc0173000
c010150c:	e9 7e 02 00 00       	jmp    c010178f <delete_PCB+0x3e5>
c0101511:	8b 45 08             	mov    0x8(%ebp),%eax
c0101514:	c1 e0 02             	shl    $0x2,%eax
c0101517:	89 c2                	mov    %eax,%edx
c0101519:	c1 e2 04             	shl    $0x4,%edx
c010151c:	01 d0                	add    %edx,%eax
c010151e:	83 c0 30             	add    $0x30,%eax
c0101521:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101526:	8b 40 04             	mov    0x4(%eax),%eax
c0101529:	83 f8 02             	cmp    $0x2,%eax
c010152c:	0f 85 33 01 00 00    	jne    c0101665 <delete_PCB+0x2bb>
c0101532:	a1 04 30 17 c0       	mov    0xc0173004,%eax
c0101537:	83 e8 01             	sub    $0x1,%eax
c010153a:	a3 04 30 17 c0       	mov    %eax,0xc0173004
c010153f:	a1 04 30 17 c0       	mov    0xc0173004,%eax
c0101544:	85 c0                	test   %eax,%eax
c0101546:	75 19                	jne    c0101561 <delete_PCB+0x1b7>
c0101548:	c7 05 b8 00 11 c0 00 	movl   $0x0,0xc01100b8
c010154f:	00 00 00 
c0101552:	c7 05 bc 00 11 c0 00 	movl   $0x0,0xc01100bc
c0101559:	00 00 00 
c010155c:	e9 2e 02 00 00       	jmp    c010178f <delete_PCB+0x3e5>
c0101561:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c0101566:	39 45 08             	cmp    %eax,0x8(%ebp)
c0101569:	75 43                	jne    c01015ae <delete_PCB+0x204>
c010156b:	8b 45 08             	mov    0x8(%ebp),%eax
c010156e:	c1 e0 02             	shl    $0x2,%eax
c0101571:	89 c2                	mov    %eax,%edx
c0101573:	c1 e2 04             	shl    $0x4,%edx
c0101576:	01 d0                	add    %edx,%eax
c0101578:	83 c0 30             	add    $0x30,%eax
c010157b:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101580:	8b 40 0c             	mov    0xc(%eax),%eax
c0101583:	8b 00                	mov    (%eax),%eax
c0101585:	a3 b8 00 11 c0       	mov    %eax,0xc01100b8
c010158a:	8b 45 08             	mov    0x8(%ebp),%eax
c010158d:	c1 e0 02             	shl    $0x2,%eax
c0101590:	89 c2                	mov    %eax,%edx
c0101592:	c1 e2 04             	shl    $0x4,%edx
c0101595:	01 d0                	add    %edx,%eax
c0101597:	83 c0 30             	add    $0x30,%eax
c010159a:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c010159f:	8b 40 0c             	mov    0xc(%eax),%eax
c01015a2:	c7 40 40 00 00 00 00 	movl   $0x0,0x40(%eax)
c01015a9:	e9 e1 01 00 00       	jmp    c010178f <delete_PCB+0x3e5>
c01015ae:	a1 bc 00 11 c0       	mov    0xc01100bc,%eax
c01015b3:	3b 45 08             	cmp    0x8(%ebp),%eax
c01015b6:	75 1e                	jne    c01015d6 <delete_PCB+0x22c>
c01015b8:	8b 45 08             	mov    0x8(%ebp),%eax
c01015bb:	c1 e0 02             	shl    $0x2,%eax
c01015be:	89 c2                	mov    %eax,%edx
c01015c0:	c1 e2 04             	shl    $0x4,%edx
c01015c3:	01 d0                	add    %edx,%eax
c01015c5:	83 c0 40             	add    $0x40,%eax
c01015c8:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01015cd:	8b 00                	mov    (%eax),%eax
c01015cf:	8b 00                	mov    (%eax),%eax
c01015d1:	a3 bc 00 11 c0       	mov    %eax,0xc01100bc
c01015d6:	8b 45 08             	mov    0x8(%ebp),%eax
c01015d9:	c1 e0 02             	shl    $0x2,%eax
c01015dc:	89 c2                	mov    %eax,%edx
c01015de:	c1 e2 04             	shl    $0x4,%edx
c01015e1:	01 d0                	add    %edx,%eax
c01015e3:	83 c0 40             	add    $0x40,%eax
c01015e6:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01015eb:	8b 00                	mov    (%eax),%eax
c01015ed:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01015f0:	8b 45 08             	mov    0x8(%ebp),%eax
c01015f3:	c1 e0 02             	shl    $0x2,%eax
c01015f6:	89 c2                	mov    %eax,%edx
c01015f8:	c1 e2 04             	shl    $0x4,%edx
c01015fb:	01 d0                	add    %edx,%eax
c01015fd:	83 c0 40             	add    $0x40,%eax
c0101600:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101605:	8b 10                	mov    (%eax),%edx
c0101607:	8b 45 08             	mov    0x8(%ebp),%eax
c010160a:	c1 e0 02             	shl    $0x2,%eax
c010160d:	89 c1                	mov    %eax,%ecx
c010160f:	c1 e1 04             	shl    $0x4,%ecx
c0101612:	01 c8                	add    %ecx,%eax
c0101614:	83 c0 30             	add    $0x30,%eax
c0101617:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c010161c:	8b 40 0c             	mov    0xc(%eax),%eax
c010161f:	89 42 3c             	mov    %eax,0x3c(%edx)
c0101622:	8b 45 08             	mov    0x8(%ebp),%eax
c0101625:	c1 e0 02             	shl    $0x2,%eax
c0101628:	89 c2                	mov    %eax,%edx
c010162a:	c1 e2 04             	shl    $0x4,%edx
c010162d:	01 d0                	add    %edx,%eax
c010162f:	83 c0 30             	add    $0x30,%eax
c0101632:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101637:	8b 40 0c             	mov    0xc(%eax),%eax
c010163a:	85 c0                	test   %eax,%eax
c010163c:	0f 84 4d 01 00 00    	je     c010178f <delete_PCB+0x3e5>
c0101642:	8b 45 08             	mov    0x8(%ebp),%eax
c0101645:	c1 e0 02             	shl    $0x2,%eax
c0101648:	89 c2                	mov    %eax,%edx
c010164a:	c1 e2 04             	shl    $0x4,%edx
c010164d:	01 d0                	add    %edx,%eax
c010164f:	83 c0 30             	add    $0x30,%eax
c0101652:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101657:	8b 40 0c             	mov    0xc(%eax),%eax
c010165a:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010165d:	89 50 40             	mov    %edx,0x40(%eax)
c0101660:	e9 2a 01 00 00       	jmp    c010178f <delete_PCB+0x3e5>
c0101665:	a1 10 5f 13 c0       	mov    0xc0135f10,%eax
c010166a:	83 e8 01             	sub    $0x1,%eax
c010166d:	a3 10 5f 13 c0       	mov    %eax,0xc0135f10
c0101672:	a1 10 5f 13 c0       	mov    0xc0135f10,%eax
c0101677:	85 c0                	test   %eax,%eax
c0101679:	75 19                	jne    c0101694 <delete_PCB+0x2ea>
c010167b:	c7 05 c0 00 11 c0 00 	movl   $0x0,0xc01100c0
c0101682:	00 00 00 
c0101685:	c7 05 c4 00 11 c0 00 	movl   $0x0,0xc01100c4
c010168c:	00 00 00 
c010168f:	e9 fb 00 00 00       	jmp    c010178f <delete_PCB+0x3e5>
c0101694:	a1 c0 00 11 c0       	mov    0xc01100c0,%eax
c0101699:	39 45 08             	cmp    %eax,0x8(%ebp)
c010169c:	75 43                	jne    c01016e1 <delete_PCB+0x337>
c010169e:	8b 45 08             	mov    0x8(%ebp),%eax
c01016a1:	c1 e0 02             	shl    $0x2,%eax
c01016a4:	89 c2                	mov    %eax,%edx
c01016a6:	c1 e2 04             	shl    $0x4,%edx
c01016a9:	01 d0                	add    %edx,%eax
c01016ab:	83 c0 30             	add    $0x30,%eax
c01016ae:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01016b3:	8b 40 0c             	mov    0xc(%eax),%eax
c01016b6:	8b 00                	mov    (%eax),%eax
c01016b8:	a3 c0 00 11 c0       	mov    %eax,0xc01100c0
c01016bd:	8b 45 08             	mov    0x8(%ebp),%eax
c01016c0:	c1 e0 02             	shl    $0x2,%eax
c01016c3:	89 c2                	mov    %eax,%edx
c01016c5:	c1 e2 04             	shl    $0x4,%edx
c01016c8:	01 d0                	add    %edx,%eax
c01016ca:	83 c0 30             	add    $0x30,%eax
c01016cd:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01016d2:	8b 40 0c             	mov    0xc(%eax),%eax
c01016d5:	c7 40 40 00 00 00 00 	movl   $0x0,0x40(%eax)
c01016dc:	e9 ae 00 00 00       	jmp    c010178f <delete_PCB+0x3e5>
c01016e1:	a1 c4 00 11 c0       	mov    0xc01100c4,%eax
c01016e6:	3b 45 08             	cmp    0x8(%ebp),%eax
c01016e9:	75 1e                	jne    c0101709 <delete_PCB+0x35f>
c01016eb:	8b 45 08             	mov    0x8(%ebp),%eax
c01016ee:	c1 e0 02             	shl    $0x2,%eax
c01016f1:	89 c2                	mov    %eax,%edx
c01016f3:	c1 e2 04             	shl    $0x4,%edx
c01016f6:	01 d0                	add    %edx,%eax
c01016f8:	83 c0 40             	add    $0x40,%eax
c01016fb:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101700:	8b 00                	mov    (%eax),%eax
c0101702:	8b 00                	mov    (%eax),%eax
c0101704:	a3 c4 00 11 c0       	mov    %eax,0xc01100c4
c0101709:	8b 45 08             	mov    0x8(%ebp),%eax
c010170c:	c1 e0 02             	shl    $0x2,%eax
c010170f:	89 c2                	mov    %eax,%edx
c0101711:	c1 e2 04             	shl    $0x4,%edx
c0101714:	01 d0                	add    %edx,%eax
c0101716:	83 c0 40             	add    $0x40,%eax
c0101719:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c010171e:	8b 00                	mov    (%eax),%eax
c0101720:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101723:	8b 45 08             	mov    0x8(%ebp),%eax
c0101726:	c1 e0 02             	shl    $0x2,%eax
c0101729:	89 c2                	mov    %eax,%edx
c010172b:	c1 e2 04             	shl    $0x4,%edx
c010172e:	01 d0                	add    %edx,%eax
c0101730:	83 c0 40             	add    $0x40,%eax
c0101733:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101738:	8b 10                	mov    (%eax),%edx
c010173a:	8b 45 08             	mov    0x8(%ebp),%eax
c010173d:	c1 e0 02             	shl    $0x2,%eax
c0101740:	89 c1                	mov    %eax,%ecx
c0101742:	c1 e1 04             	shl    $0x4,%ecx
c0101745:	01 c8                	add    %ecx,%eax
c0101747:	83 c0 30             	add    $0x30,%eax
c010174a:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c010174f:	8b 40 0c             	mov    0xc(%eax),%eax
c0101752:	89 42 3c             	mov    %eax,0x3c(%edx)
c0101755:	8b 45 08             	mov    0x8(%ebp),%eax
c0101758:	c1 e0 02             	shl    $0x2,%eax
c010175b:	89 c2                	mov    %eax,%edx
c010175d:	c1 e2 04             	shl    $0x4,%edx
c0101760:	01 d0                	add    %edx,%eax
c0101762:	83 c0 30             	add    $0x30,%eax
c0101765:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c010176a:	8b 40 0c             	mov    0xc(%eax),%eax
c010176d:	85 c0                	test   %eax,%eax
c010176f:	74 1e                	je     c010178f <delete_PCB+0x3e5>
c0101771:	8b 45 08             	mov    0x8(%ebp),%eax
c0101774:	c1 e0 02             	shl    $0x2,%eax
c0101777:	89 c2                	mov    %eax,%edx
c0101779:	c1 e2 04             	shl    $0x4,%edx
c010177c:	01 d0                	add    %edx,%eax
c010177e:	83 c0 30             	add    $0x30,%eax
c0101781:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101786:	8b 40 0c             	mov    0xc(%eax),%eax
c0101789:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010178c:	89 50 40             	mov    %edx,0x40(%eax)
c010178f:	c9                   	leave  
c0101790:	c3                   	ret    

c0101791 <reschedule>:
c0101791:	55                   	push   %ebp
c0101792:	89 e5                	mov    %esp,%ebp
c0101794:	83 ec 28             	sub    $0x28,%esp
c0101797:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c010179c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010179f:	a1 00 30 17 c0       	mov    0xc0173000,%eax
c01017a4:	83 f8 01             	cmp    $0x1,%eax
c01017a7:	75 46                	jne    c01017ef <reschedule+0x5e>
c01017a9:	a1 04 30 17 c0       	mov    0xc0173004,%eax
c01017ae:	85 c0                	test   %eax,%eax
c01017b0:	75 3d                	jne    c01017ef <reschedule+0x5e>
c01017b2:	b8 f8 5f 17 c0       	mov    $0xc0175ff8,%eax
c01017b7:	83 ec 0c             	sub    $0xc,%esp
c01017ba:	50                   	push   %eax
c01017bb:	e8 6d 16 00 00       	call   c0102e2d <set_tss>
c01017c0:	83 c4 10             	add    $0x10,%esp
c01017c3:	b8 00 70 13 c0       	mov    $0xc0137000,%eax
c01017c8:	05 00 00 00 40       	add    $0x40000000,%eax
c01017cd:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01017d0:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01017d3:	0f 22 d8             	mov    %eax,%cr3
c01017d6:	66 b8 23 00          	mov    $0x23,%ax
c01017da:	8e d8                	mov    %eax,%ds
c01017dc:	8e c0                	mov    %eax,%es
c01017de:	a1 44 5f 13 c0       	mov    0xc0135f44,%eax
c01017e3:	89 c4                	mov    %eax,%esp
c01017e5:	61                   	popa   
c01017e6:	83 c4 08             	add    $0x8,%esp
c01017e9:	cf                   	iret   
c01017ea:	e9 f0 01 00 00       	jmp    c01019df <reschedule+0x24e>
c01017ef:	a1 00 30 17 c0       	mov    0xc0173000,%eax
c01017f4:	83 f8 01             	cmp    $0x1,%eax
c01017f7:	0f 8e 94 00 00 00    	jle    c0101891 <reschedule+0x100>
c01017fd:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101800:	c1 e0 02             	shl    $0x2,%eax
c0101803:	89 c2                	mov    %eax,%edx
c0101805:	c1 e2 04             	shl    $0x4,%edx
c0101808:	01 d0                	add    %edx,%eax
c010180a:	83 c0 30             	add    $0x30,%eax
c010180d:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101812:	8b 40 0c             	mov    0xc(%eax),%eax
c0101815:	8b 40 08             	mov    0x8(%eax),%eax
c0101818:	c1 e0 0c             	shl    $0xc,%eax
c010181b:	05 00 50 17 c0       	add    $0xc0175000,%eax
c0101820:	05 f8 0f 00 00       	add    $0xff8,%eax
c0101825:	83 ec 0c             	sub    $0xc,%esp
c0101828:	50                   	push   %eax
c0101829:	e8 ff 15 00 00       	call   c0102e2d <set_tss>
c010182e:	83 c4 10             	add    $0x10,%esp
c0101831:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101834:	c1 e0 02             	shl    $0x2,%eax
c0101837:	89 c2                	mov    %eax,%edx
c0101839:	c1 e2 04             	shl    $0x4,%edx
c010183c:	01 d0                	add    %edx,%eax
c010183e:	83 c0 30             	add    $0x30,%eax
c0101841:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101846:	8b 40 0c             	mov    0xc(%eax),%eax
c0101849:	8b 40 08             	mov    0x8(%eax),%eax
c010184c:	c1 e0 0c             	shl    $0xc,%eax
c010184f:	05 00 70 13 c0       	add    $0xc0137000,%eax
c0101854:	05 00 00 00 40       	add    $0x40000000,%eax
c0101859:	89 45 e8             	mov    %eax,-0x18(%ebp)
c010185c:	8b 45 e8             	mov    -0x18(%ebp),%eax
c010185f:	0f 22 d8             	mov    %eax,%cr3
c0101862:	66 b8 23 00          	mov    $0x23,%ax
c0101866:	8e d8                	mov    %eax,%ds
c0101868:	8e c0                	mov    %eax,%es
c010186a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010186d:	c1 e0 02             	shl    $0x2,%eax
c0101870:	89 c2                	mov    %eax,%edx
c0101872:	c1 e2 04             	shl    $0x4,%edx
c0101875:	01 d0                	add    %edx,%eax
c0101877:	83 c0 30             	add    $0x30,%eax
c010187a:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c010187f:	8b 40 0c             	mov    0xc(%eax),%eax
c0101882:	8b 40 04             	mov    0x4(%eax),%eax
c0101885:	89 c4                	mov    %eax,%esp
c0101887:	61                   	popa   
c0101888:	83 c4 08             	add    $0x8,%esp
c010188b:	cf                   	iret   
c010188c:	e9 4e 01 00 00       	jmp    c01019df <reschedule+0x24e>
c0101891:	8b 0d b0 00 11 c0    	mov    0xc01100b0,%ecx
c0101897:	a1 b8 00 11 c0       	mov    0xc01100b8,%eax
c010189c:	c1 e0 02             	shl    $0x2,%eax
c010189f:	89 c2                	mov    %eax,%edx
c01018a1:	c1 e2 04             	shl    $0x4,%edx
c01018a4:	01 d0                	add    %edx,%eax
c01018a6:	8d 90 40 5f 13 c0    	lea    -0x3feca0c0(%eax),%edx
c01018ac:	89 c8                	mov    %ecx,%eax
c01018ae:	c1 e0 02             	shl    $0x2,%eax
c01018b1:	89 c1                	mov    %eax,%ecx
c01018b3:	c1 e1 04             	shl    $0x4,%ecx
c01018b6:	01 c8                	add    %ecx,%eax
c01018b8:	83 c0 30             	add    $0x30,%eax
c01018bb:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01018c0:	89 50 0c             	mov    %edx,0xc(%eax)
c01018c3:	8b 0d b8 00 11 c0    	mov    0xc01100b8,%ecx
c01018c9:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c01018ce:	c1 e0 02             	shl    $0x2,%eax
c01018d1:	89 c2                	mov    %eax,%edx
c01018d3:	c1 e2 04             	shl    $0x4,%edx
c01018d6:	01 d0                	add    %edx,%eax
c01018d8:	8d 90 40 5f 13 c0    	lea    -0x3feca0c0(%eax),%edx
c01018de:	89 c8                	mov    %ecx,%eax
c01018e0:	c1 e0 02             	shl    $0x2,%eax
c01018e3:	89 c1                	mov    %eax,%ecx
c01018e5:	c1 e1 04             	shl    $0x4,%ecx
c01018e8:	01 c8                	add    %ecx,%eax
c01018ea:	83 c0 40             	add    $0x40,%eax
c01018ed:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01018f2:	89 10                	mov    %edx,(%eax)
c01018f4:	a1 bc 00 11 c0       	mov    0xc01100bc,%eax
c01018f9:	a3 b4 00 11 c0       	mov    %eax,0xc01100b4
c01018fe:	c7 05 b8 00 11 c0 00 	movl   $0x0,0xc01100b8
c0101905:	00 00 00 
c0101908:	c7 05 bc 00 11 c0 00 	movl   $0x0,0xc01100bc
c010190f:	00 00 00 
c0101912:	8b 15 00 30 17 c0    	mov    0xc0173000,%edx
c0101918:	a1 04 30 17 c0       	mov    0xc0173004,%eax
c010191d:	01 d0                	add    %edx,%eax
c010191f:	a3 00 30 17 c0       	mov    %eax,0xc0173000
c0101924:	c7 05 04 30 17 c0 00 	movl   $0x0,0xc0173004
c010192b:	00 00 00 
c010192e:	c7 45 f4 40 5f 13 c0 	movl   $0xc0135f40,-0xc(%ebp)
c0101935:	eb 13                	jmp    c010194a <reschedule+0x1b9>
c0101937:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010193a:	c7 40 34 01 00 00 00 	movl   $0x1,0x34(%eax)
c0101941:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101944:	8b 40 3c             	mov    0x3c(%eax),%eax
c0101947:	89 45 f4             	mov    %eax,-0xc(%ebp)
c010194a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c010194e:	75 e7                	jne    c0101937 <reschedule+0x1a6>
c0101950:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101953:	c1 e0 02             	shl    $0x2,%eax
c0101956:	89 c2                	mov    %eax,%edx
c0101958:	c1 e2 04             	shl    $0x4,%edx
c010195b:	01 d0                	add    %edx,%eax
c010195d:	83 c0 30             	add    $0x30,%eax
c0101960:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101965:	8b 40 0c             	mov    0xc(%eax),%eax
c0101968:	8b 40 08             	mov    0x8(%eax),%eax
c010196b:	c1 e0 0c             	shl    $0xc,%eax
c010196e:	05 00 50 17 c0       	add    $0xc0175000,%eax
c0101973:	05 f8 0f 00 00       	add    $0xff8,%eax
c0101978:	83 ec 0c             	sub    $0xc,%esp
c010197b:	50                   	push   %eax
c010197c:	e8 ac 14 00 00       	call   c0102e2d <set_tss>
c0101981:	83 c4 10             	add    $0x10,%esp
c0101984:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101987:	c1 e0 02             	shl    $0x2,%eax
c010198a:	89 c2                	mov    %eax,%edx
c010198c:	c1 e2 04             	shl    $0x4,%edx
c010198f:	01 d0                	add    %edx,%eax
c0101991:	83 c0 30             	add    $0x30,%eax
c0101994:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101999:	8b 40 0c             	mov    0xc(%eax),%eax
c010199c:	8b 40 08             	mov    0x8(%eax),%eax
c010199f:	c1 e0 0c             	shl    $0xc,%eax
c01019a2:	05 00 70 13 c0       	add    $0xc0137000,%eax
c01019a7:	05 00 00 00 40       	add    $0x40000000,%eax
c01019ac:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01019af:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01019b2:	0f 22 d8             	mov    %eax,%cr3
c01019b5:	66 b8 23 00          	mov    $0x23,%ax
c01019b9:	8e d8                	mov    %eax,%ds
c01019bb:	8e c0                	mov    %eax,%es
c01019bd:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01019c0:	c1 e0 02             	shl    $0x2,%eax
c01019c3:	89 c2                	mov    %eax,%edx
c01019c5:	c1 e2 04             	shl    $0x4,%edx
c01019c8:	01 d0                	add    %edx,%eax
c01019ca:	83 c0 30             	add    $0x30,%eax
c01019cd:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01019d2:	8b 40 0c             	mov    0xc(%eax),%eax
c01019d5:	8b 40 04             	mov    0x4(%eax),%eax
c01019d8:	89 c4                	mov    %eax,%esp
c01019da:	61                   	popa   
c01019db:	83 c4 08             	add    $0x8,%esp
c01019de:	cf                   	iret   
c01019df:	c9                   	leave  
c01019e0:	c3                   	ret    

c01019e1 <time_treat>:
c01019e1:	55                   	push   %ebp
c01019e2:	89 e5                	mov    %esp,%ebp
c01019e4:	53                   	push   %ebx
c01019e5:	83 ec 14             	sub    $0x14,%esp
c01019e8:	a1 00 30 17 c0       	mov    0xc0173000,%eax
c01019ed:	83 f8 01             	cmp    $0x1,%eax
c01019f0:	0f 84 eb 00 00 00    	je     c0101ae1 <time_treat+0x100>
c01019f6:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c01019fb:	c1 e0 02             	shl    $0x2,%eax
c01019fe:	89 c2                	mov    %eax,%edx
c0101a00:	c1 e2 04             	shl    $0x4,%edx
c0101a03:	01 d0                	add    %edx,%eax
c0101a05:	83 c0 30             	add    $0x30,%eax
c0101a08:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101a0d:	8b 40 0c             	mov    0xc(%eax),%eax
c0101a10:	8b 50 38             	mov    0x38(%eax),%edx
c0101a13:	83 ea 01             	sub    $0x1,%edx
c0101a16:	89 50 38             	mov    %edx,0x38(%eax)
c0101a19:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101a1e:	c1 e0 02             	shl    $0x2,%eax
c0101a21:	89 c2                	mov    %eax,%edx
c0101a23:	c1 e2 04             	shl    $0x4,%edx
c0101a26:	01 d0                	add    %edx,%eax
c0101a28:	83 c0 30             	add    $0x30,%eax
c0101a2b:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101a30:	8b 40 0c             	mov    0xc(%eax),%eax
c0101a33:	8b 40 38             	mov    0x38(%eax),%eax
c0101a36:	85 c0                	test   %eax,%eax
c0101a38:	0f 85 2b 01 00 00    	jne    c0101b69 <time_treat+0x188>
c0101a3e:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101a43:	c1 e0 02             	shl    $0x2,%eax
c0101a46:	89 c2                	mov    %eax,%edx
c0101a48:	c1 e2 04             	shl    $0x4,%edx
c0101a4b:	01 d0                	add    %edx,%eax
c0101a4d:	83 c0 30             	add    $0x30,%eax
c0101a50:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101a55:	8b 40 0c             	mov    0xc(%eax),%eax
c0101a58:	8b 40 08             	mov    0x8(%eax),%eax
c0101a5b:	89 c3                	mov    %eax,%ebx
c0101a5d:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101a62:	c1 e0 02             	shl    $0x2,%eax
c0101a65:	89 c2                	mov    %eax,%edx
c0101a67:	c1 e2 04             	shl    $0x4,%edx
c0101a6a:	01 d0                	add    %edx,%eax
c0101a6c:	83 c0 30             	add    $0x30,%eax
c0101a6f:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101a74:	8b 40 0c             	mov    0xc(%eax),%eax
c0101a77:	8b 50 30             	mov    0x30(%eax),%edx
c0101a7a:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101a7f:	c1 e0 02             	shl    $0x2,%eax
c0101a82:	89 c1                	mov    %eax,%ecx
c0101a84:	c1 e1 04             	shl    $0x4,%ecx
c0101a87:	01 c8                	add    %ecx,%eax
c0101a89:	83 c0 30             	add    $0x30,%eax
c0101a8c:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101a91:	8b 40 0c             	mov    0xc(%eax),%eax
c0101a94:	83 c0 0c             	add    $0xc,%eax
c0101a97:	83 ec 08             	sub    $0x8,%esp
c0101a9a:	53                   	push   %ebx
c0101a9b:	52                   	push   %edx
c0101a9c:	68 c8 00 00 00       	push   $0xc8
c0101aa1:	50                   	push   %eax
c0101aa2:	ff 75 08             	pushl  0x8(%ebp)
c0101aa5:	6a 02                	push   $0x2
c0101aa7:	e8 2d f5 ff ff       	call   c0100fd9 <add_PCB>
c0101aac:	83 c4 20             	add    $0x20,%esp
c0101aaf:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101ab4:	c1 e0 02             	shl    $0x2,%eax
c0101ab7:	89 c2                	mov    %eax,%edx
c0101ab9:	c1 e2 04             	shl    $0x4,%edx
c0101abc:	01 d0                	add    %edx,%eax
c0101abe:	83 c0 30             	add    $0x30,%eax
c0101ac1:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101ac6:	8b 40 0c             	mov    0xc(%eax),%eax
c0101ac9:	8b 00                	mov    (%eax),%eax
c0101acb:	83 ec 0c             	sub    $0xc,%esp
c0101ace:	50                   	push   %eax
c0101acf:	e8 d6 f8 ff ff       	call   c01013aa <delete_PCB>
c0101ad4:	83 c4 10             	add    $0x10,%esp
c0101ad7:	e8 b5 fc ff ff       	call   c0101791 <reschedule>
c0101adc:	e9 88 00 00 00       	jmp    c0101b69 <time_treat+0x188>
c0101ae1:	8b 45 08             	mov    0x8(%ebp),%eax
c0101ae4:	8b 10                	mov    (%eax),%edx
c0101ae6:	89 15 00 51 13 c0    	mov    %edx,0xc0135100
c0101aec:	8b 50 04             	mov    0x4(%eax),%edx
c0101aef:	89 15 04 51 13 c0    	mov    %edx,0xc0135104
c0101af5:	8b 50 08             	mov    0x8(%eax),%edx
c0101af8:	89 15 08 51 13 c0    	mov    %edx,0xc0135108
c0101afe:	8b 50 0c             	mov    0xc(%eax),%edx
c0101b01:	89 15 0c 51 13 c0    	mov    %edx,0xc013510c
c0101b07:	8b 50 10             	mov    0x10(%eax),%edx
c0101b0a:	89 15 10 51 13 c0    	mov    %edx,0xc0135110
c0101b10:	8b 50 14             	mov    0x14(%eax),%edx
c0101b13:	89 15 14 51 13 c0    	mov    %edx,0xc0135114
c0101b19:	8b 50 18             	mov    0x18(%eax),%edx
c0101b1c:	89 15 18 51 13 c0    	mov    %edx,0xc0135118
c0101b22:	8b 50 1c             	mov    0x1c(%eax),%edx
c0101b25:	89 15 1c 51 13 c0    	mov    %edx,0xc013511c
c0101b2b:	8b 50 20             	mov    0x20(%eax),%edx
c0101b2e:	89 15 20 51 13 c0    	mov    %edx,0xc0135120
c0101b34:	8b 50 24             	mov    0x24(%eax),%edx
c0101b37:	89 15 24 51 13 c0    	mov    %edx,0xc0135124
c0101b3d:	8b 50 28             	mov    0x28(%eax),%edx
c0101b40:	89 15 28 51 13 c0    	mov    %edx,0xc0135128
c0101b46:	8b 50 2c             	mov    0x2c(%eax),%edx
c0101b49:	89 15 2c 51 13 c0    	mov    %edx,0xc013512c
c0101b4f:	8b 50 30             	mov    0x30(%eax),%edx
c0101b52:	89 15 30 51 13 c0    	mov    %edx,0xc0135130
c0101b58:	8b 50 34             	mov    0x34(%eax),%edx
c0101b5b:	89 15 34 51 13 c0    	mov    %edx,0xc0135134
c0101b61:	8b 40 38             	mov    0x38(%eax),%eax
c0101b64:	a3 38 51 13 c0       	mov    %eax,0xc0135138
c0101b69:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0101b70:	a1 10 5f 13 c0       	mov    0xc0135f10,%eax
c0101b75:	85 c0                	test   %eax,%eax
c0101b77:	0f 84 b7 00 00 00    	je     c0101c34 <time_treat+0x253>
c0101b7d:	a1 c0 00 11 c0       	mov    0xc01100c0,%eax
c0101b82:	c1 e0 02             	shl    $0x2,%eax
c0101b85:	89 c2                	mov    %eax,%edx
c0101b87:	c1 e2 04             	shl    $0x4,%edx
c0101b8a:	01 d0                	add    %edx,%eax
c0101b8c:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101b91:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101b94:	e9 91 00 00 00       	jmp    c0101c2a <time_treat+0x249>
c0101b99:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101b9c:	8b 40 38             	mov    0x38(%eax),%eax
c0101b9f:	8d 50 ff             	lea    -0x1(%eax),%edx
c0101ba2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101ba5:	89 50 38             	mov    %edx,0x38(%eax)
c0101ba8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101bab:	8b 40 38             	mov    0x38(%eax),%eax
c0101bae:	85 c0                	test   %eax,%eax
c0101bb0:	75 6f                	jne    c0101c21 <time_treat+0x240>
c0101bb2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101bb5:	8b 40 08             	mov    0x8(%eax),%eax
c0101bb8:	83 ec 08             	sub    $0x8,%esp
c0101bbb:	50                   	push   %eax
c0101bbc:	68 b5 37 10 c0       	push   $0xc01037b5
c0101bc1:	e8 de 11 00 00       	call   c0102da4 <printk>
c0101bc6:	83 c4 10             	add    $0x10,%esp
c0101bc9:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0101bd0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101bd3:	8b 40 08             	mov    0x8(%eax),%eax
c0101bd6:	89 c3                	mov    %eax,%ebx
c0101bd8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101bdb:	8b 50 30             	mov    0x30(%eax),%edx
c0101bde:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101be1:	8d 48 0c             	lea    0xc(%eax),%ecx
c0101be4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101be7:	8b 40 04             	mov    0x4(%eax),%eax
c0101bea:	83 ec 08             	sub    $0x8,%esp
c0101bed:	53                   	push   %ebx
c0101bee:	52                   	push   %edx
c0101bef:	68 c8 00 00 00       	push   $0xc8
c0101bf4:	51                   	push   %ecx
c0101bf5:	50                   	push   %eax
c0101bf6:	6a 02                	push   $0x2
c0101bf8:	e8 dc f3 ff ff       	call   c0100fd9 <add_PCB>
c0101bfd:	83 c4 20             	add    $0x20,%esp
c0101c00:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101c03:	8b 00                	mov    (%eax),%eax
c0101c05:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0101c08:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101c0b:	8b 40 3c             	mov    0x3c(%eax),%eax
c0101c0e:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101c11:	83 ec 0c             	sub    $0xc,%esp
c0101c14:	ff 75 ec             	pushl  -0x14(%ebp)
c0101c17:	e8 8e f7 ff ff       	call   c01013aa <delete_PCB>
c0101c1c:	83 c4 10             	add    $0x10,%esp
c0101c1f:	eb 09                	jmp    c0101c2a <time_treat+0x249>
c0101c21:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101c24:	8b 40 3c             	mov    0x3c(%eax),%eax
c0101c27:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101c2a:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0101c2e:	0f 85 65 ff ff ff    	jne    c0101b99 <time_treat+0x1b8>
c0101c34:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0101c38:	74 0f                	je     c0101c49 <time_treat+0x268>
c0101c3a:	a1 00 30 17 c0       	mov    0xc0173000,%eax
c0101c3f:	83 f8 01             	cmp    $0x1,%eax
c0101c42:	75 05                	jne    c0101c49 <time_treat+0x268>
c0101c44:	e8 48 fb ff ff       	call   c0101791 <reschedule>
c0101c49:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0101c4c:	c9                   	leave  
c0101c4d:	c3                   	ret    

c0101c4e <process_exit>:
c0101c4e:	55                   	push   %ebp
c0101c4f:	89 e5                	mov    %esp,%ebp
c0101c51:	83 ec 08             	sub    $0x8,%esp
c0101c54:	a1 00 30 17 c0       	mov    0xc0173000,%eax
c0101c59:	83 f8 01             	cmp    $0x1,%eax
c0101c5c:	75 15                	jne    c0101c73 <process_exit+0x25>
c0101c5e:	83 ec 0c             	sub    $0xc,%esp
c0101c61:	68 c9 37 10 c0       	push   $0xc01037c9
c0101c66:	e8 39 11 00 00       	call   c0102da4 <printk>
c0101c6b:	83 c4 10             	add    $0x10,%esp
c0101c6e:	e9 84 00 00 00       	jmp    c0101cf7 <process_exit+0xa9>
c0101c73:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101c78:	c1 e0 02             	shl    $0x2,%eax
c0101c7b:	89 c2                	mov    %eax,%edx
c0101c7d:	c1 e2 04             	shl    $0x4,%edx
c0101c80:	01 d0                	add    %edx,%eax
c0101c82:	83 c0 30             	add    $0x30,%eax
c0101c85:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101c8a:	8b 40 0c             	mov    0xc(%eax),%eax
c0101c8d:	8b 40 08             	mov    0x8(%eax),%eax
c0101c90:	83 ec 08             	sub    $0x8,%esp
c0101c93:	50                   	push   %eax
c0101c94:	68 dc 37 10 c0       	push   $0xc01037dc
c0101c99:	e8 06 11 00 00       	call   c0102da4 <printk>
c0101c9e:	83 c4 10             	add    $0x10,%esp
c0101ca1:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101ca6:	c1 e0 02             	shl    $0x2,%eax
c0101ca9:	89 c2                	mov    %eax,%edx
c0101cab:	c1 e2 04             	shl    $0x4,%edx
c0101cae:	01 d0                	add    %edx,%eax
c0101cb0:	83 c0 30             	add    $0x30,%eax
c0101cb3:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101cb8:	8b 40 0c             	mov    0xc(%eax),%eax
c0101cbb:	8b 40 08             	mov    0x8(%eax),%eax
c0101cbe:	83 ec 0c             	sub    $0xc,%esp
c0101cc1:	50                   	push   %eax
c0101cc2:	e8 9d f1 ff ff       	call   c0100e64 <free_a_pid>
c0101cc7:	83 c4 10             	add    $0x10,%esp
c0101cca:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101ccf:	c1 e0 02             	shl    $0x2,%eax
c0101cd2:	89 c2                	mov    %eax,%edx
c0101cd4:	c1 e2 04             	shl    $0x4,%edx
c0101cd7:	01 d0                	add    %edx,%eax
c0101cd9:	83 c0 30             	add    $0x30,%eax
c0101cdc:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101ce1:	8b 40 0c             	mov    0xc(%eax),%eax
c0101ce4:	8b 00                	mov    (%eax),%eax
c0101ce6:	83 ec 0c             	sub    $0xc,%esp
c0101ce9:	50                   	push   %eax
c0101cea:	e8 bb f6 ff ff       	call   c01013aa <delete_PCB>
c0101cef:	83 c4 10             	add    $0x10,%esp
c0101cf2:	e8 9a fa ff ff       	call   c0101791 <reschedule>
c0101cf7:	c9                   	leave  
c0101cf8:	c3                   	ret    

c0101cf9 <load_PCB>:
c0101cf9:	55                   	push   %ebp
c0101cfa:	89 e5                	mov    %esp,%ebp
c0101cfc:	83 ec 18             	sub    $0x18,%esp
c0101cff:	e8 0b f1 ff ff       	call   c0100e0f <get_free_pid>
c0101d04:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0101d07:	a1 04 10 1b c0       	mov    0xc01b1004,%eax
c0101d0c:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0101d0f:	c1 e2 0c             	shl    $0xc,%edx
c0101d12:	81 c2 00 70 13 c0    	add    $0xc0137000,%edx
c0101d18:	83 ec 04             	sub    $0x4,%esp
c0101d1b:	68 00 10 00 00       	push   $0x1000
c0101d20:	50                   	push   %eax
c0101d21:	52                   	push   %edx
c0101d22:	e8 a2 10 00 00       	call   c0102dc9 <my_memcpy>
c0101d27:	83 c4 10             	add    $0x10,%esp
c0101d2a:	c7 45 ec 00 04 00 00 	movl   $0x400,-0x14(%ebp)
c0101d31:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0101d38:	eb 1d                	jmp    c0101d57 <load_PCB+0x5e>
c0101d3a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101d3d:	0f b7 04 c5 44 10 1b 	movzwl -0x3fe4efbc(,%eax,8),%eax
c0101d44:	c0 
c0101d45:	8d 50 01             	lea    0x1(%eax),%edx
c0101d48:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101d4b:	66 89 14 c5 44 10 1b 	mov    %dx,-0x3fe4efbc(,%eax,8)
c0101d52:	c0 
c0101d53:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0101d57:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101d5a:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c0101d5d:	7c db                	jl     c0101d3a <load_PCB+0x41>
c0101d5f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101d62:	c1 e0 0c             	shl    $0xc,%eax
c0101d65:	05 00 70 13 c0       	add    $0xc0137000,%eax
c0101d6a:	83 ec 08             	sub    $0x8,%esp
c0101d6d:	50                   	push   %eax
c0101d6e:	ff 75 08             	pushl  0x8(%ebp)
c0101d71:	e8 63 ed ff ff       	call   c0100ad9 <load>
c0101d76:	83 c4 10             	add    $0x10,%esp
c0101d79:	89 c1                	mov    %eax,%ecx
c0101d7b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101d7e:	89 c2                	mov    %eax,%edx
c0101d80:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0101d87:	89 c2                	mov    %eax,%edx
c0101d89:	89 d0                	mov    %edx,%eax
c0101d8b:	c1 e0 04             	shl    $0x4,%eax
c0101d8e:	29 d0                	sub    %edx,%eax
c0101d90:	83 c0 20             	add    $0x20,%eax
c0101d93:	05 00 51 13 c0       	add    $0xc0135100,%eax
c0101d98:	89 48 08             	mov    %ecx,0x8(%eax)
c0101d9b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101d9e:	89 c2                	mov    %eax,%edx
c0101da0:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0101da7:	89 c2                	mov    %eax,%edx
c0101da9:	89 d0                	mov    %edx,%eax
c0101dab:	c1 e0 04             	shl    $0x4,%eax
c0101dae:	29 d0                	sub    %edx,%eax
c0101db0:	83 c0 20             	add    $0x20,%eax
c0101db3:	05 00 51 13 c0       	add    $0xc0135100,%eax
c0101db8:	c7 40 0c 1b 00 00 00 	movl   $0x1b,0xc(%eax)
c0101dbf:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101dc2:	89 c2                	mov    %eax,%edx
c0101dc4:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0101dcb:	89 c2                	mov    %eax,%edx
c0101dcd:	89 d0                	mov    %edx,%eax
c0101dcf:	c1 e0 04             	shl    $0x4,%eax
c0101dd2:	29 d0                	sub    %edx,%eax
c0101dd4:	83 c0 30             	add    $0x30,%eax
c0101dd7:	05 00 51 13 c0       	add    $0xc0135100,%eax
c0101ddc:	c7 00 02 02 00 00    	movl   $0x202,(%eax)
c0101de2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101de5:	89 c2                	mov    %eax,%edx
c0101de7:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0101dee:	89 c2                	mov    %eax,%edx
c0101df0:	89 d0                	mov    %edx,%eax
c0101df2:	c1 e0 04             	shl    $0x4,%eax
c0101df5:	29 d0                	sub    %edx,%eax
c0101df7:	83 c0 30             	add    $0x30,%eax
c0101dfa:	05 00 51 13 c0       	add    $0xc0135100,%eax
c0101dff:	c7 40 04 f0 ff 60 00 	movl   $0x60fff0,0x4(%eax)
c0101e06:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101e09:	89 c2                	mov    %eax,%edx
c0101e0b:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0101e12:	89 c2                	mov    %eax,%edx
c0101e14:	89 d0                	mov    %edx,%eax
c0101e16:	c1 e0 04             	shl    $0x4,%eax
c0101e19:	29 d0                	sub    %edx,%eax
c0101e1b:	83 c0 30             	add    $0x30,%eax
c0101e1e:	05 00 51 13 c0       	add    $0xc0135100,%eax
c0101e23:	c7 40 08 23 00 00 00 	movl   $0x23,0x8(%eax)
c0101e2a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0101e2d:	89 c2                	mov    %eax,%edx
c0101e2f:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0101e36:	89 c2                	mov    %eax,%edx
c0101e38:	89 d0                	mov    %edx,%eax
c0101e3a:	c1 e0 04             	shl    $0x4,%eax
c0101e3d:	29 d0                	sub    %edx,%eax
c0101e3f:	05 00 51 13 c0       	add    $0xc0135100,%eax
c0101e44:	83 ec 08             	sub    $0x8,%esp
c0101e47:	ff 75 f0             	pushl  -0x10(%ebp)
c0101e4a:	6a 00                	push   $0x0
c0101e4c:	68 c8 00 00 00       	push   $0xc8
c0101e51:	ff 75 0c             	pushl  0xc(%ebp)
c0101e54:	50                   	push   %eax
c0101e55:	6a 01                	push   $0x1
c0101e57:	e8 7d f1 ff ff       	call   c0100fd9 <add_PCB>
c0101e5c:	83 c4 20             	add    $0x20,%esp
c0101e5f:	c9                   	leave  
c0101e60:	c3                   	ret    

c0101e61 <my_sleep>:
c0101e61:	55                   	push   %ebp
c0101e62:	89 e5                	mov    %esp,%ebp
c0101e64:	53                   	push   %ebx
c0101e65:	83 ec 04             	sub    $0x4,%esp
c0101e68:	a1 00 30 17 c0       	mov    0xc0173000,%eax
c0101e6d:	83 f8 01             	cmp    $0x1,%eax
c0101e70:	75 15                	jne    c0101e87 <my_sleep+0x26>
c0101e72:	83 ec 0c             	sub    $0xc,%esp
c0101e75:	68 ed 37 10 c0       	push   $0xc01037ed
c0101e7a:	e8 25 0f 00 00       	call   c0102da4 <printk>
c0101e7f:	83 c4 10             	add    $0x10,%esp
c0101e82:	e9 cd 00 00 00       	jmp    c0101f54 <my_sleep+0xf3>
c0101e87:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101e8c:	c1 e0 02             	shl    $0x2,%eax
c0101e8f:	89 c2                	mov    %eax,%edx
c0101e91:	c1 e2 04             	shl    $0x4,%edx
c0101e94:	01 d0                	add    %edx,%eax
c0101e96:	83 c0 30             	add    $0x30,%eax
c0101e99:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101e9e:	8b 40 0c             	mov    0xc(%eax),%eax
c0101ea1:	8b 40 08             	mov    0x8(%eax),%eax
c0101ea4:	83 ec 04             	sub    $0x4,%esp
c0101ea7:	ff 75 08             	pushl  0x8(%ebp)
c0101eaa:	50                   	push   %eax
c0101eab:	68 09 38 10 c0       	push   $0xc0103809
c0101eb0:	e8 ef 0e 00 00       	call   c0102da4 <printk>
c0101eb5:	83 c4 10             	add    $0x10,%esp
c0101eb8:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101ebd:	c1 e0 02             	shl    $0x2,%eax
c0101ec0:	89 c2                	mov    %eax,%edx
c0101ec2:	c1 e2 04             	shl    $0x4,%edx
c0101ec5:	01 d0                	add    %edx,%eax
c0101ec7:	83 c0 30             	add    $0x30,%eax
c0101eca:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101ecf:	8b 40 0c             	mov    0xc(%eax),%eax
c0101ed2:	8b 40 08             	mov    0x8(%eax),%eax
c0101ed5:	89 c3                	mov    %eax,%ebx
c0101ed7:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101edc:	c1 e0 02             	shl    $0x2,%eax
c0101edf:	89 c2                	mov    %eax,%edx
c0101ee1:	c1 e2 04             	shl    $0x4,%edx
c0101ee4:	01 d0                	add    %edx,%eax
c0101ee6:	83 c0 30             	add    $0x30,%eax
c0101ee9:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101eee:	8b 40 0c             	mov    0xc(%eax),%eax
c0101ef1:	8b 50 30             	mov    0x30(%eax),%edx
c0101ef4:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101ef9:	c1 e0 02             	shl    $0x2,%eax
c0101efc:	89 c1                	mov    %eax,%ecx
c0101efe:	c1 e1 04             	shl    $0x4,%ecx
c0101f01:	01 c8                	add    %ecx,%eax
c0101f03:	83 c0 30             	add    $0x30,%eax
c0101f06:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101f0b:	8b 40 0c             	mov    0xc(%eax),%eax
c0101f0e:	83 c0 0c             	add    $0xc,%eax
c0101f11:	83 ec 08             	sub    $0x8,%esp
c0101f14:	53                   	push   %ebx
c0101f15:	52                   	push   %edx
c0101f16:	ff 75 08             	pushl  0x8(%ebp)
c0101f19:	50                   	push   %eax
c0101f1a:	ff 75 0c             	pushl  0xc(%ebp)
c0101f1d:	6a 03                	push   $0x3
c0101f1f:	e8 b5 f0 ff ff       	call   c0100fd9 <add_PCB>
c0101f24:	83 c4 20             	add    $0x20,%esp
c0101f27:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0101f2c:	c1 e0 02             	shl    $0x2,%eax
c0101f2f:	89 c2                	mov    %eax,%edx
c0101f31:	c1 e2 04             	shl    $0x4,%edx
c0101f34:	01 d0                	add    %edx,%eax
c0101f36:	83 c0 30             	add    $0x30,%eax
c0101f39:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0101f3e:	8b 40 0c             	mov    0xc(%eax),%eax
c0101f41:	8b 00                	mov    (%eax),%eax
c0101f43:	83 ec 0c             	sub    $0xc,%esp
c0101f46:	50                   	push   %eax
c0101f47:	e8 5e f4 ff ff       	call   c01013aa <delete_PCB>
c0101f4c:	83 c4 10             	add    $0x10,%esp
c0101f4f:	e8 3d f8 ff ff       	call   c0101791 <reschedule>
c0101f54:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0101f57:	c9                   	leave  
c0101f58:	c3                   	ret    

c0101f59 <my_fork>:
c0101f59:	55                   	push   %ebp
c0101f5a:	89 e5                	mov    %esp,%ebp
c0101f5c:	56                   	push   %esi
c0101f5d:	53                   	push   %ebx
c0101f5e:	83 ec 10             	sub    $0x10,%esp
c0101f61:	e8 a9 ee ff ff       	call   c0100e0f <get_free_pid>
c0101f66:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0101f69:	83 ec 08             	sub    $0x8,%esp
c0101f6c:	ff 75 f4             	pushl  -0xc(%ebp)
c0101f6f:	68 21 38 10 c0       	push   $0xc0103821
c0101f74:	e8 2b 0e 00 00       	call   c0102da4 <printk>
c0101f79:	83 c4 10             	add    $0x10,%esp
c0101f7c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101f7f:	c1 e0 02             	shl    $0x2,%eax
c0101f82:	89 c2                	mov    %eax,%edx
c0101f84:	c1 e2 04             	shl    $0x4,%edx
c0101f87:	29 c2                	sub    %eax,%edx
c0101f89:	89 d0                	mov    %edx,%eax
c0101f8b:	8d 90 00 51 13 c0    	lea    -0x3fecaf00(%eax),%edx
c0101f91:	8b 45 08             	mov    0x8(%ebp),%eax
c0101f94:	8b 08                	mov    (%eax),%ecx
c0101f96:	89 0a                	mov    %ecx,(%edx)
c0101f98:	8b 48 04             	mov    0x4(%eax),%ecx
c0101f9b:	89 4a 04             	mov    %ecx,0x4(%edx)
c0101f9e:	8b 48 08             	mov    0x8(%eax),%ecx
c0101fa1:	89 4a 08             	mov    %ecx,0x8(%edx)
c0101fa4:	8b 48 0c             	mov    0xc(%eax),%ecx
c0101fa7:	89 4a 0c             	mov    %ecx,0xc(%edx)
c0101faa:	8b 48 10             	mov    0x10(%eax),%ecx
c0101fad:	89 4a 10             	mov    %ecx,0x10(%edx)
c0101fb0:	8b 48 14             	mov    0x14(%eax),%ecx
c0101fb3:	89 4a 14             	mov    %ecx,0x14(%edx)
c0101fb6:	8b 48 18             	mov    0x18(%eax),%ecx
c0101fb9:	89 4a 18             	mov    %ecx,0x18(%edx)
c0101fbc:	8b 48 1c             	mov    0x1c(%eax),%ecx
c0101fbf:	89 4a 1c             	mov    %ecx,0x1c(%edx)
c0101fc2:	8b 48 20             	mov    0x20(%eax),%ecx
c0101fc5:	89 4a 20             	mov    %ecx,0x20(%edx)
c0101fc8:	8b 48 24             	mov    0x24(%eax),%ecx
c0101fcb:	89 4a 24             	mov    %ecx,0x24(%edx)
c0101fce:	8b 48 28             	mov    0x28(%eax),%ecx
c0101fd1:	89 4a 28             	mov    %ecx,0x28(%edx)
c0101fd4:	8b 48 2c             	mov    0x2c(%eax),%ecx
c0101fd7:	89 4a 2c             	mov    %ecx,0x2c(%edx)
c0101fda:	8b 48 30             	mov    0x30(%eax),%ecx
c0101fdd:	89 4a 30             	mov    %ecx,0x30(%edx)
c0101fe0:	8b 48 34             	mov    0x34(%eax),%ecx
c0101fe3:	89 4a 34             	mov    %ecx,0x34(%edx)
c0101fe6:	8b 40 38             	mov    0x38(%eax),%eax
c0101fe9:	89 42 38             	mov    %eax,0x38(%edx)
c0101fec:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0101fef:	89 c2                	mov    %eax,%edx
c0101ff1:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c0101ff8:	89 c2                	mov    %eax,%edx
c0101ffa:	89 d0                	mov    %edx,%eax
c0101ffc:	c1 e0 04             	shl    $0x4,%eax
c0101fff:	29 d0                	sub    %edx,%eax
c0102001:	83 c0 10             	add    $0x10,%eax
c0102004:	05 00 51 13 c0       	add    $0xc0135100,%eax
c0102009:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0102010:	a1 00 30 17 c0       	mov    0xc0173000,%eax
c0102015:	83 f8 01             	cmp    $0x1,%eax
c0102018:	75 1a                	jne    c0102034 <my_fork+0xdb>
c010201a:	83 ec 0c             	sub    $0xc,%esp
c010201d:	68 34 38 10 c0       	push   $0xc0103834
c0102022:	e8 7d 0d 00 00       	call   c0102da4 <printk>
c0102027:	83 c4 10             	add    $0x10,%esp
c010202a:	b8 00 00 00 00       	mov    $0x0,%eax
c010202f:	e9 03 01 00 00       	jmp    c0102137 <my_fork+0x1de>
c0102034:	a1 04 10 1b c0       	mov    0xc01b1004,%eax
c0102039:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010203c:	c1 e2 0c             	shl    $0xc,%edx
c010203f:	81 c2 00 70 13 c0    	add    $0xc0137000,%edx
c0102045:	83 ec 04             	sub    $0x4,%esp
c0102048:	68 00 10 00 00       	push   $0x1000
c010204d:	50                   	push   %eax
c010204e:	52                   	push   %edx
c010204f:	e8 75 0d 00 00       	call   c0102dc9 <my_memcpy>
c0102054:	83 c4 10             	add    $0x10,%esp
c0102057:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c010205c:	c1 e0 02             	shl    $0x2,%eax
c010205f:	89 c2                	mov    %eax,%edx
c0102061:	c1 e2 04             	shl    $0x4,%edx
c0102064:	01 d0                	add    %edx,%eax
c0102066:	83 c0 30             	add    $0x30,%eax
c0102069:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c010206e:	8b 40 0c             	mov    0xc(%eax),%eax
c0102071:	8b 58 08             	mov    0x8(%eax),%ebx
c0102074:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0102079:	c1 e0 02             	shl    $0x2,%eax
c010207c:	89 c2                	mov    %eax,%edx
c010207e:	c1 e2 04             	shl    $0x4,%edx
c0102081:	01 d0                	add    %edx,%eax
c0102083:	83 c0 30             	add    $0x30,%eax
c0102086:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c010208b:	8b 40 0c             	mov    0xc(%eax),%eax
c010208e:	8b 48 38             	mov    0x38(%eax),%ecx
c0102091:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c0102096:	c1 e0 02             	shl    $0x2,%eax
c0102099:	89 c2                	mov    %eax,%edx
c010209b:	c1 e2 04             	shl    $0x4,%edx
c010209e:	01 d0                	add    %edx,%eax
c01020a0:	83 c0 30             	add    $0x30,%eax
c01020a3:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01020a8:	8b 40 0c             	mov    0xc(%eax),%eax
c01020ab:	8d 70 0c             	lea    0xc(%eax),%esi
c01020ae:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01020b1:	89 c2                	mov    %eax,%edx
c01020b3:	8d 04 95 00 00 00 00 	lea    0x0(,%edx,4),%eax
c01020ba:	89 c2                	mov    %eax,%edx
c01020bc:	89 d0                	mov    %edx,%eax
c01020be:	c1 e0 04             	shl    $0x4,%eax
c01020c1:	29 d0                	sub    %edx,%eax
c01020c3:	05 00 51 13 c0       	add    $0xc0135100,%eax
c01020c8:	83 ec 08             	sub    $0x8,%esp
c01020cb:	ff 75 f4             	pushl  -0xc(%ebp)
c01020ce:	53                   	push   %ebx
c01020cf:	51                   	push   %ecx
c01020d0:	56                   	push   %esi
c01020d1:	50                   	push   %eax
c01020d2:	6a 01                	push   $0x1
c01020d4:	e8 00 ef ff ff       	call   c0100fd9 <add_PCB>
c01020d9:	83 c4 20             	add    $0x20,%esp
c01020dc:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c01020e1:	c1 e0 02             	shl    $0x2,%eax
c01020e4:	89 c2                	mov    %eax,%edx
c01020e6:	c1 e2 04             	shl    $0x4,%edx
c01020e9:	01 d0                	add    %edx,%eax
c01020eb:	83 c0 30             	add    $0x30,%eax
c01020ee:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c01020f3:	8b 40 0c             	mov    0xc(%eax),%eax
c01020f6:	8b 40 08             	mov    0x8(%eax),%eax
c01020f9:	c1 e0 0c             	shl    $0xc,%eax
c01020fc:	8d 90 00 70 13 c0    	lea    -0x3fec9000(%eax),%edx
c0102102:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102105:	c1 e0 0c             	shl    $0xc,%eax
c0102108:	05 00 70 13 c0       	add    $0xc0137000,%eax
c010210d:	83 ec 08             	sub    $0x8,%esp
c0102110:	52                   	push   %edx
c0102111:	50                   	push   %eax
c0102112:	e8 68 07 00 00       	call   c010287f <copy_pgdir>
c0102117:	83 c4 10             	add    $0x10,%esp
c010211a:	a1 b0 00 11 c0       	mov    0xc01100b0,%eax
c010211f:	c1 e0 02             	shl    $0x2,%eax
c0102122:	89 c2                	mov    %eax,%edx
c0102124:	c1 e2 04             	shl    $0x4,%edx
c0102127:	01 d0                	add    %edx,%eax
c0102129:	83 c0 30             	add    $0x30,%eax
c010212c:	05 40 5f 13 c0       	add    $0xc0135f40,%eax
c0102131:	8b 40 0c             	mov    0xc(%eax),%eax
c0102134:	8b 40 08             	mov    0x8(%eax),%eax
c0102137:	8d 65 f8             	lea    -0x8(%ebp),%esp
c010213a:	5b                   	pop    %ebx
c010213b:	5e                   	pop    %esi
c010213c:	5d                   	pop    %ebp
c010213d:	c3                   	ret    

c010213e <_paddr>:
c010213e:	55                   	push   %ebp
c010213f:	89 e5                	mov    %esp,%ebp
c0102141:	83 ec 08             	sub    $0x8,%esp
c0102144:	8b 45 10             	mov    0x10(%ebp),%eax
c0102147:	3d ff ff ff bf       	cmp    $0xbfffffff,%eax
c010214c:	77 16                	ja     c0102164 <_paddr+0x26>
c010214e:	ff 75 10             	pushl  0x10(%ebp)
c0102151:	68 70 38 10 c0       	push   $0xc0103870
c0102156:	ff 75 0c             	pushl  0xc(%ebp)
c0102159:	ff 75 08             	pushl  0x8(%ebp)
c010215c:	e8 43 0c 00 00       	call   c0102da4 <printk>
c0102161:	83 c4 10             	add    $0x10,%esp
c0102164:	8b 45 10             	mov    0x10(%ebp),%eax
c0102167:	05 00 00 00 40       	add    $0x40000000,%eax
c010216c:	c9                   	leave  
c010216d:	c3                   	ret    

c010216e <_kaddr>:
c010216e:	55                   	push   %ebp
c010216f:	89 e5                	mov    %esp,%ebp
c0102171:	83 ec 08             	sub    $0x8,%esp
c0102174:	8b 45 10             	mov    0x10(%ebp),%eax
c0102177:	c1 e8 0c             	shr    $0xc,%eax
c010217a:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c010217f:	76 13                	jbe    c0102194 <_kaddr+0x26>
c0102181:	83 ec 08             	sub    $0x8,%esp
c0102184:	ff 75 10             	pushl  0x10(%ebp)
c0102187:	68 94 38 10 c0       	push   $0xc0103894
c010218c:	e8 13 0c 00 00       	call   c0102da4 <printk>
c0102191:	83 c4 10             	add    $0x10,%esp
c0102194:	8b 45 10             	mov    0x10(%ebp),%eax
c0102197:	2d 00 00 00 40       	sub    $0x40000000,%eax
c010219c:	c9                   	leave  
c010219d:	c3                   	ret    

c010219e <page2pa>:
c010219e:	55                   	push   %ebp
c010219f:	89 e5                	mov    %esp,%ebp
c01021a1:	8b 45 08             	mov    0x8(%ebp),%eax
c01021a4:	ba 40 10 1b c0       	mov    $0xc01b1040,%edx
c01021a9:	29 d0                	sub    %edx,%eax
c01021ab:	c1 f8 03             	sar    $0x3,%eax
c01021ae:	c1 e0 0c             	shl    $0xc,%eax
c01021b1:	5d                   	pop    %ebp
c01021b2:	c3                   	ret    

c01021b3 <pa2page>:
c01021b3:	55                   	push   %ebp
c01021b4:	89 e5                	mov    %esp,%ebp
c01021b6:	83 ec 08             	sub    $0x8,%esp
c01021b9:	8b 45 08             	mov    0x8(%ebp),%eax
c01021bc:	c1 e8 0c             	shr    $0xc,%eax
c01021bf:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c01021c4:	76 10                	jbe    c01021d6 <pa2page+0x23>
c01021c6:	83 ec 0c             	sub    $0xc,%esp
c01021c9:	68 b8 38 10 c0       	push   $0xc01038b8
c01021ce:	e8 d1 0b 00 00       	call   c0102da4 <printk>
c01021d3:	83 c4 10             	add    $0x10,%esp
c01021d6:	8b 45 08             	mov    0x8(%ebp),%eax
c01021d9:	c1 e8 0c             	shr    $0xc,%eax
c01021dc:	c1 e0 03             	shl    $0x3,%eax
c01021df:	05 40 10 1b c0       	add    $0xc01b1040,%eax
c01021e4:	c9                   	leave  
c01021e5:	c3                   	ret    

c01021e6 <page2kva>:
c01021e6:	55                   	push   %ebp
c01021e7:	89 e5                	mov    %esp,%ebp
c01021e9:	83 ec 08             	sub    $0x8,%esp
c01021ec:	ff 75 08             	pushl  0x8(%ebp)
c01021ef:	e8 aa ff ff ff       	call   c010219e <page2pa>
c01021f4:	83 c4 04             	add    $0x4,%esp
c01021f7:	83 ec 04             	sub    $0x4,%esp
c01021fa:	50                   	push   %eax
c01021fb:	6a 52                	push   $0x52
c01021fd:	68 d7 38 10 c0       	push   $0xc01038d7
c0102202:	e8 67 ff ff ff       	call   c010216e <_kaddr>
c0102207:	83 c4 10             	add    $0x10,%esp
c010220a:	c9                   	leave  
c010220b:	c3                   	ret    

c010220c <mm_alloc>:
c010220c:	55                   	push   %ebp
c010220d:	89 e5                	mov    %esp,%ebp
c010220f:	83 ec 28             	sub    $0x28,%esp
c0102212:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102215:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102218:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010221b:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102220:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102223:	c7 45 e8 00 10 00 00 	movl   $0x1000,-0x18(%ebp)
c010222a:	8b 55 10             	mov    0x10(%ebp),%edx
c010222d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102230:	01 c2                	add    %eax,%edx
c0102232:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102235:	01 d0                	add    %edx,%eax
c0102237:	83 e8 01             	sub    $0x1,%eax
c010223a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c010223d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0102240:	ba 00 00 00 00       	mov    $0x0,%edx
c0102245:	f7 75 e8             	divl   -0x18(%ebp)
c0102248:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c010224b:	29 d0                	sub    %edx,%eax
c010224d:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0102250:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102253:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102256:	eb 2b                	jmp    c0102283 <mm_alloc+0x77>
c0102258:	83 ec 0c             	sub    $0xc,%esp
c010225b:	6a 00                	push   $0x0
c010225d:	e8 9c 01 00 00       	call   c01023fe <page_alloc>
c0102262:	83 c4 10             	add    $0x10,%esp
c0102265:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0102268:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010226b:	6a 07                	push   $0x7
c010226d:	50                   	push   %eax
c010226e:	ff 75 dc             	pushl  -0x24(%ebp)
c0102271:	ff 75 08             	pushl  0x8(%ebp)
c0102274:	e8 84 03 00 00       	call   c01025fd <page_insert>
c0102279:	83 c4 10             	add    $0x10,%esp
c010227c:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
c0102283:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102286:	3b 45 e0             	cmp    -0x20(%ebp),%eax
c0102289:	72 cd                	jb     c0102258 <mm_alloc+0x4c>
c010228b:	c9                   	leave  
c010228c:	c3                   	ret    

c010228d <init_kern_pgdir>:
c010228d:	55                   	push   %ebp
c010228e:	89 e5                	mov    %esp,%ebp
c0102290:	53                   	push   %ebx
c0102291:	83 ec 24             	sub    $0x24,%esp
c0102294:	c7 45 e8 00 20 11 c0 	movl   $0xc0112000,-0x18(%ebp)
c010229b:	c7 45 f0 00 30 11 c0 	movl   $0xc0113000,-0x10(%ebp)
c01022a2:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01022a9:	eb 3a                	jmp    c01022e5 <init_kern_pgdir+0x58>
c01022ab:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01022ae:	05 00 03 00 00       	add    $0x300,%eax
c01022b3:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01022ba:	8b 45 e8             	mov    -0x18(%ebp),%eax
c01022bd:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c01022c0:	83 ec 04             	sub    $0x4,%esp
c01022c3:	ff 75 f0             	pushl  -0x10(%ebp)
c01022c6:	6a 42                	push   $0x42
c01022c8:	68 e6 38 10 c0       	push   $0xc01038e6
c01022cd:	e8 6c fe ff ff       	call   c010213e <_paddr>
c01022d2:	83 c4 10             	add    $0x10,%esp
c01022d5:	83 c8 03             	or     $0x3,%eax
c01022d8:	89 03                	mov    %eax,(%ebx)
c01022da:	81 45 f0 00 10 00 00 	addl   $0x1000,-0x10(%ebp)
c01022e1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01022e5:	83 7d f4 1f          	cmpl   $0x1f,-0xc(%ebp)
c01022e9:	7e c0                	jle    c01022ab <init_kern_pgdir+0x1e>
c01022eb:	c7 45 ec 00 f0 ff 07 	movl   $0x7fff000,-0x14(%ebp)
c01022f2:	83 6d f0 04          	subl   $0x4,-0x10(%ebp)
c01022f6:	eb 18                	jmp    c0102310 <init_kern_pgdir+0x83>
c01022f8:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01022fb:	83 c8 07             	or     $0x7,%eax
c01022fe:	89 c2                	mov    %eax,%edx
c0102300:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102303:	89 10                	mov    %edx,(%eax)
c0102305:	83 6d f0 04          	subl   $0x4,-0x10(%ebp)
c0102309:	81 6d ec 00 10 00 00 	subl   $0x1000,-0x14(%ebp)
c0102310:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102314:	79 e2                	jns    c01022f8 <init_kern_pgdir+0x6b>
c0102316:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102319:	a3 04 10 1b c0       	mov    %eax,0xc01b1004
c010231e:	a1 04 10 1b c0       	mov    0xc01b1004,%eax
c0102323:	83 ec 04             	sub    $0x4,%esp
c0102326:	50                   	push   %eax
c0102327:	6a 4f                	push   $0x4f
c0102329:	68 e6 38 10 c0       	push   $0xc01038e6
c010232e:	e8 0b fe ff ff       	call   c010213e <_paddr>
c0102333:	83 c4 10             	add    $0x10,%esp
c0102336:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0102339:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c010233c:	0f 22 d8             	mov    %eax,%cr3
c010233f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102342:	c9                   	leave  
c0102343:	c3                   	ret    

c0102344 <page_init>:
c0102344:	55                   	push   %ebp
c0102345:	89 e5                	mov    %esp,%ebp
c0102347:	83 ec 18             	sub    $0x18,%esp
c010234a:	e8 3e ff ff ff       	call   c010228d <init_kern_pgdir>
c010234f:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
c0102356:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c010235d:	eb 11                	jmp    c0102370 <page_init+0x2c>
c010235f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102362:	66 c7 04 c5 44 10 1b 	movw   $0x1,-0x3fe4efbc(,%eax,8)
c0102369:	c0 01 00 
c010236c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102370:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102373:	3b 45 f4             	cmp    -0xc(%ebp),%eax
c0102376:	77 e7                	ja     c010235f <page_init+0x1b>
c0102378:	c7 45 f4 ff 7f 00 00 	movl   $0x7fff,-0xc(%ebp)
c010237f:	eb 31                	jmp    c01023b2 <page_init+0x6e>
c0102381:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102384:	66 c7 04 c5 44 10 1b 	movw   $0x0,-0x3fe4efbc(,%eax,8)
c010238b:	c0 00 00 
c010238e:	8b 15 00 10 11 c0    	mov    0xc0111000,%edx
c0102394:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102397:	89 14 c5 40 10 1b c0 	mov    %edx,-0x3fe4efc0(,%eax,8)
c010239e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01023a1:	c1 e0 03             	shl    $0x3,%eax
c01023a4:	05 40 10 1b c0       	add    $0xc01b1040,%eax
c01023a9:	a3 00 10 11 c0       	mov    %eax,0xc0111000
c01023ae:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
c01023b2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01023b5:	3b 45 f4             	cmp    -0xc(%ebp),%eax
c01023b8:	76 c7                	jbe    c0102381 <page_init+0x3d>
c01023ba:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
c01023c1:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01023c4:	05 ff f9 00 00       	add    $0xf9ff,%eax
c01023c9:	89 45 e8             	mov    %eax,-0x18(%ebp)
c01023cc:	8b 45 e8             	mov    -0x18(%ebp),%eax
c01023cf:	ba 00 00 00 00       	mov    $0x0,%edx
c01023d4:	f7 75 ec             	divl   -0x14(%ebp)
c01023d7:	8b 45 e8             	mov    -0x18(%ebp),%eax
c01023da:	29 d0                	sub    %edx,%eax
c01023dc:	89 c2                	mov    %eax,%edx
c01023de:	a1 04 10 1b c0       	mov    0xc01b1004,%eax
c01023e3:	83 ec 0c             	sub    $0xc,%esp
c01023e6:	6a 03                	push   $0x3
c01023e8:	68 00 00 0a 00       	push   $0xa0000
c01023ed:	52                   	push   %edx
c01023ee:	68 00 00 0a 00       	push   $0xa0000
c01023f3:	50                   	push   %eax
c01023f4:	e8 a1 01 00 00       	call   c010259a <boot_map_region>
c01023f9:	83 c4 20             	add    $0x20,%esp
c01023fc:	c9                   	leave  
c01023fd:	c3                   	ret    

c01023fe <page_alloc>:
c01023fe:	55                   	push   %ebp
c01023ff:	89 e5                	mov    %esp,%ebp
c0102401:	83 ec 18             	sub    $0x18,%esp
c0102404:	a1 00 10 11 c0       	mov    0xc0111000,%eax
c0102409:	89 45 f4             	mov    %eax,-0xc(%ebp)
c010240c:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102410:	75 07                	jne    c0102419 <page_alloc+0x1b>
c0102412:	b8 00 00 00 00       	mov    $0x0,%eax
c0102417:	eb 43                	jmp    c010245c <page_alloc+0x5e>
c0102419:	8b 45 08             	mov    0x8(%ebp),%eax
c010241c:	83 e0 01             	and    $0x1,%eax
c010241f:	85 c0                	test   %eax,%eax
c0102421:	74 21                	je     c0102444 <page_alloc+0x46>
c0102423:	83 ec 0c             	sub    $0xc,%esp
c0102426:	ff 75 f4             	pushl  -0xc(%ebp)
c0102429:	e8 b8 fd ff ff       	call   c01021e6 <page2kva>
c010242e:	83 c4 10             	add    $0x10,%esp
c0102431:	83 ec 04             	sub    $0x4,%esp
c0102434:	68 00 10 00 00       	push   $0x1000
c0102439:	6a 00                	push   $0x0
c010243b:	50                   	push   %eax
c010243c:	e8 a5 09 00 00       	call   c0102de6 <my_memset>
c0102441:	83 c4 10             	add    $0x10,%esp
c0102444:	a1 00 10 11 c0       	mov    0xc0111000,%eax
c0102449:	8b 00                	mov    (%eax),%eax
c010244b:	a3 00 10 11 c0       	mov    %eax,0xc0111000
c0102450:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102453:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0102459:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010245c:	c9                   	leave  
c010245d:	c3                   	ret    

c010245e <page_free>:
c010245e:	55                   	push   %ebp
c010245f:	89 e5                	mov    %esp,%ebp
c0102461:	8b 15 00 10 11 c0    	mov    0xc0111000,%edx
c0102467:	8b 45 08             	mov    0x8(%ebp),%eax
c010246a:	89 10                	mov    %edx,(%eax)
c010246c:	8b 45 08             	mov    0x8(%ebp),%eax
c010246f:	a3 00 10 11 c0       	mov    %eax,0xc0111000
c0102474:	5d                   	pop    %ebp
c0102475:	c3                   	ret    

c0102476 <page_decref>:
c0102476:	55                   	push   %ebp
c0102477:	89 e5                	mov    %esp,%ebp
c0102479:	8b 45 08             	mov    0x8(%ebp),%eax
c010247c:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102480:	8d 50 ff             	lea    -0x1(%eax),%edx
c0102483:	8b 45 08             	mov    0x8(%ebp),%eax
c0102486:	66 89 50 04          	mov    %dx,0x4(%eax)
c010248a:	8b 45 08             	mov    0x8(%ebp),%eax
c010248d:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102491:	66 85 c0             	test   %ax,%ax
c0102494:	75 0b                	jne    c01024a1 <page_decref+0x2b>
c0102496:	ff 75 08             	pushl  0x8(%ebp)
c0102499:	e8 c0 ff ff ff       	call   c010245e <page_free>
c010249e:	83 c4 04             	add    $0x4,%esp
c01024a1:	c9                   	leave  
c01024a2:	c3                   	ret    

c01024a3 <pgdir_walk>:
c01024a3:	55                   	push   %ebp
c01024a4:	89 e5                	mov    %esp,%ebp
c01024a6:	53                   	push   %ebx
c01024a7:	83 ec 14             	sub    $0x14,%esp
c01024aa:	8b 45 0c             	mov    0xc(%ebp),%eax
c01024ad:	c1 e8 16             	shr    $0x16,%eax
c01024b0:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01024b3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024b6:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01024bd:	8b 45 08             	mov    0x8(%ebp),%eax
c01024c0:	01 d0                	add    %edx,%eax
c01024c2:	8b 00                	mov    (%eax),%eax
c01024c4:	83 e0 01             	and    $0x1,%eax
c01024c7:	85 c0                	test   %eax,%eax
c01024c9:	74 31                	je     c01024fc <pgdir_walk+0x59>
c01024cb:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01024ce:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01024d5:	8b 45 08             	mov    0x8(%ebp),%eax
c01024d8:	01 d0                	add    %edx,%eax
c01024da:	8b 00                	mov    (%eax),%eax
c01024dc:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01024e1:	83 ec 04             	sub    $0x4,%esp
c01024e4:	50                   	push   %eax
c01024e5:	68 c8 00 00 00       	push   $0xc8
c01024ea:	68 e6 38 10 c0       	push   $0xc01038e6
c01024ef:	e8 7a fc ff ff       	call   c010216e <_kaddr>
c01024f4:	83 c4 10             	add    $0x10,%esp
c01024f7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01024fa:	eb 7c                	jmp    c0102578 <pgdir_walk+0xd5>
c01024fc:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0102500:	75 0a                	jne    c010250c <pgdir_walk+0x69>
c0102502:	b8 00 00 00 00       	mov    $0x0,%eax
c0102507:	e9 89 00 00 00       	jmp    c0102595 <pgdir_walk+0xf2>
c010250c:	83 ec 0c             	sub    $0xc,%esp
c010250f:	6a 01                	push   $0x1
c0102511:	e8 e8 fe ff ff       	call   c01023fe <page_alloc>
c0102516:	83 c4 10             	add    $0x10,%esp
c0102519:	89 45 ec             	mov    %eax,-0x14(%ebp)
c010251c:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102520:	75 07                	jne    c0102529 <pgdir_walk+0x86>
c0102522:	b8 00 00 00 00       	mov    $0x0,%eax
c0102527:	eb 6c                	jmp    c0102595 <pgdir_walk+0xf2>
c0102529:	83 ec 0c             	sub    $0xc,%esp
c010252c:	ff 75 ec             	pushl  -0x14(%ebp)
c010252f:	e8 b2 fc ff ff       	call   c01021e6 <page2kva>
c0102534:	83 c4 10             	add    $0x10,%esp
c0102537:	89 45 f4             	mov    %eax,-0xc(%ebp)
c010253a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010253d:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102541:	8d 50 01             	lea    0x1(%eax),%edx
c0102544:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102547:	66 89 50 04          	mov    %dx,0x4(%eax)
c010254b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010254e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102555:	8b 45 08             	mov    0x8(%ebp),%eax
c0102558:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c010255b:	83 ec 04             	sub    $0x4,%esp
c010255e:	ff 75 f4             	pushl  -0xc(%ebp)
c0102561:	68 d3 00 00 00       	push   $0xd3
c0102566:	68 e6 38 10 c0       	push   $0xc01038e6
c010256b:	e8 ce fb ff ff       	call   c010213e <_paddr>
c0102570:	83 c4 10             	add    $0x10,%esp
c0102573:	83 c8 07             	or     $0x7,%eax
c0102576:	89 03                	mov    %eax,(%ebx)
c0102578:	8b 45 0c             	mov    0xc(%ebp),%eax
c010257b:	c1 e8 0c             	shr    $0xc,%eax
c010257e:	25 ff 03 00 00       	and    $0x3ff,%eax
c0102583:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0102586:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102589:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102590:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102593:	01 d0                	add    %edx,%eax
c0102595:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102598:	c9                   	leave  
c0102599:	c3                   	ret    

c010259a <boot_map_region>:
c010259a:	55                   	push   %ebp
c010259b:	89 e5                	mov    %esp,%ebp
c010259d:	83 ec 18             	sub    $0x18,%esp
c01025a0:	8b 45 10             	mov    0x10(%ebp),%eax
c01025a3:	c1 e8 0c             	shr    $0xc,%eax
c01025a6:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01025a9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01025b0:	eb 41                	jmp    c01025f3 <boot_map_region+0x59>
c01025b2:	8b 45 0c             	mov    0xc(%ebp),%eax
c01025b5:	83 ec 04             	sub    $0x4,%esp
c01025b8:	6a 01                	push   $0x1
c01025ba:	50                   	push   %eax
c01025bb:	ff 75 08             	pushl  0x8(%ebp)
c01025be:	e8 e0 fe ff ff       	call   c01024a3 <pgdir_walk>
c01025c3:	83 c4 10             	add    $0x10,%esp
c01025c6:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01025c9:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c01025cd:	75 02                	jne    c01025d1 <boot_map_region+0x37>
c01025cf:	eb 2a                	jmp    c01025fb <boot_map_region+0x61>
c01025d1:	8b 45 18             	mov    0x18(%ebp),%eax
c01025d4:	0b 45 14             	or     0x14(%ebp),%eax
c01025d7:	83 c8 01             	or     $0x1,%eax
c01025da:	89 c2                	mov    %eax,%edx
c01025dc:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01025df:	89 10                	mov    %edx,(%eax)
c01025e1:	81 45 0c 00 10 00 00 	addl   $0x1000,0xc(%ebp)
c01025e8:	81 45 14 00 10 00 00 	addl   $0x1000,0x14(%ebp)
c01025ef:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01025f3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01025f6:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c01025f9:	7c b7                	jl     c01025b2 <boot_map_region+0x18>
c01025fb:	c9                   	leave  
c01025fc:	c3                   	ret    

c01025fd <page_insert>:
c01025fd:	55                   	push   %ebp
c01025fe:	89 e5                	mov    %esp,%ebp
c0102600:	83 ec 18             	sub    $0x18,%esp
c0102603:	83 ec 04             	sub    $0x4,%esp
c0102606:	6a 01                	push   $0x1
c0102608:	ff 75 10             	pushl  0x10(%ebp)
c010260b:	ff 75 08             	pushl  0x8(%ebp)
c010260e:	e8 90 fe ff ff       	call   c01024a3 <pgdir_walk>
c0102613:	83 c4 10             	add    $0x10,%esp
c0102616:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102619:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c010261d:	75 07                	jne    c0102626 <page_insert+0x29>
c010261f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0102624:	eb 75                	jmp    c010269b <page_insert+0x9e>
c0102626:	83 ec 0c             	sub    $0xc,%esp
c0102629:	ff 75 0c             	pushl  0xc(%ebp)
c010262c:	e8 6d fb ff ff       	call   c010219e <page2pa>
c0102631:	83 c4 10             	add    $0x10,%esp
c0102634:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102637:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010263a:	8b 00                	mov    (%eax),%eax
c010263c:	83 e0 01             	and    $0x1,%eax
c010263f:	85 c0                	test   %eax,%eax
c0102641:	74 32                	je     c0102675 <page_insert+0x78>
c0102643:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102646:	8b 00                	mov    (%eax),%eax
c0102648:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c010264d:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0102650:	75 12                	jne    c0102664 <page_insert+0x67>
c0102652:	8b 45 14             	mov    0x14(%ebp),%eax
c0102655:	0b 45 f0             	or     -0x10(%ebp),%eax
c0102658:	83 c8 01             	or     $0x1,%eax
c010265b:	89 c2                	mov    %eax,%edx
c010265d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102660:	89 10                	mov    %edx,(%eax)
c0102662:	eb 11                	jmp    c0102675 <page_insert+0x78>
c0102664:	83 ec 08             	sub    $0x8,%esp
c0102667:	ff 75 10             	pushl  0x10(%ebp)
c010266a:	ff 75 08             	pushl  0x8(%ebp)
c010266d:	e8 7a 00 00 00       	call   c01026ec <page_remove>
c0102672:	83 c4 10             	add    $0x10,%esp
c0102675:	8b 45 14             	mov    0x14(%ebp),%eax
c0102678:	0b 45 f0             	or     -0x10(%ebp),%eax
c010267b:	83 c8 01             	or     $0x1,%eax
c010267e:	89 c2                	mov    %eax,%edx
c0102680:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102683:	89 10                	mov    %edx,(%eax)
c0102685:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102688:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c010268c:	8d 50 01             	lea    0x1(%eax),%edx
c010268f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102692:	66 89 50 04          	mov    %dx,0x4(%eax)
c0102696:	b8 00 00 00 00       	mov    $0x0,%eax
c010269b:	c9                   	leave  
c010269c:	c3                   	ret    

c010269d <page_lookup>:
c010269d:	55                   	push   %ebp
c010269e:	89 e5                	mov    %esp,%ebp
c01026a0:	83 ec 18             	sub    $0x18,%esp
c01026a3:	83 ec 04             	sub    $0x4,%esp
c01026a6:	6a 00                	push   $0x0
c01026a8:	ff 75 0c             	pushl  0xc(%ebp)
c01026ab:	ff 75 08             	pushl  0x8(%ebp)
c01026ae:	e8 f0 fd ff ff       	call   c01024a3 <pgdir_walk>
c01026b3:	83 c4 10             	add    $0x10,%esp
c01026b6:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01026b9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c01026bd:	75 07                	jne    c01026c6 <page_lookup+0x29>
c01026bf:	b8 00 00 00 00       	mov    $0x0,%eax
c01026c4:	eb 24                	jmp    c01026ea <page_lookup+0x4d>
c01026c6:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c01026ca:	74 08                	je     c01026d4 <page_lookup+0x37>
c01026cc:	8b 45 10             	mov    0x10(%ebp),%eax
c01026cf:	8b 55 f4             	mov    -0xc(%ebp),%edx
c01026d2:	89 10                	mov    %edx,(%eax)
c01026d4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01026d7:	8b 00                	mov    (%eax),%eax
c01026d9:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01026de:	83 ec 0c             	sub    $0xc,%esp
c01026e1:	50                   	push   %eax
c01026e2:	e8 cc fa ff ff       	call   c01021b3 <pa2page>
c01026e7:	83 c4 10             	add    $0x10,%esp
c01026ea:	c9                   	leave  
c01026eb:	c3                   	ret    

c01026ec <page_remove>:
c01026ec:	55                   	push   %ebp
c01026ed:	89 e5                	mov    %esp,%ebp
c01026ef:	83 ec 18             	sub    $0x18,%esp
c01026f2:	8d 45 ec             	lea    -0x14(%ebp),%eax
c01026f5:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01026f8:	83 ec 04             	sub    $0x4,%esp
c01026fb:	ff 75 f4             	pushl  -0xc(%ebp)
c01026fe:	ff 75 0c             	pushl  0xc(%ebp)
c0102701:	ff 75 08             	pushl  0x8(%ebp)
c0102704:	e8 94 ff ff ff       	call   c010269d <page_lookup>
c0102709:	83 c4 10             	add    $0x10,%esp
c010270c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010270f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0102713:	74 2a                	je     c010273f <page_remove+0x53>
c0102715:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102718:	8b 00                	mov    (%eax),%eax
c010271a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0102720:	83 ec 0c             	sub    $0xc,%esp
c0102723:	ff 75 f0             	pushl  -0x10(%ebp)
c0102726:	e8 4b fd ff ff       	call   c0102476 <page_decref>
c010272b:	83 c4 10             	add    $0x10,%esp
c010272e:	83 ec 08             	sub    $0x8,%esp
c0102731:	ff 75 0c             	pushl  0xc(%ebp)
c0102734:	ff 75 08             	pushl  0x8(%ebp)
c0102737:	e8 05 00 00 00       	call   c0102741 <tlb_invalidate>
c010273c:	83 c4 10             	add    $0x10,%esp
c010273f:	c9                   	leave  
c0102740:	c3                   	ret    

c0102741 <tlb_invalidate>:
c0102741:	55                   	push   %ebp
c0102742:	89 e5                	mov    %esp,%ebp
c0102744:	83 ec 10             	sub    $0x10,%esp
c0102747:	8b 45 0c             	mov    0xc(%ebp),%eax
c010274a:	89 45 fc             	mov    %eax,-0x4(%ebp)
c010274d:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0102750:	0f 01 38             	invlpg (%eax)
c0102753:	c9                   	leave  
c0102754:	c3                   	ret    

c0102755 <free_pgdir>:
c0102755:	55                   	push   %ebp
c0102756:	89 e5                	mov    %esp,%ebp
c0102758:	83 ec 18             	sub    $0x18,%esp
c010275b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102762:	e9 09 01 00 00       	jmp    c0102870 <free_pgdir+0x11b>
c0102767:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010276a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102771:	8b 45 08             	mov    0x8(%ebp),%eax
c0102774:	01 d0                	add    %edx,%eax
c0102776:	8b 00                	mov    (%eax),%eax
c0102778:	83 e0 01             	and    $0x1,%eax
c010277b:	85 c0                	test   %eax,%eax
c010277d:	0f 84 e9 00 00 00    	je     c010286c <free_pgdir+0x117>
c0102783:	a1 04 10 1b c0       	mov    0xc01b1004,%eax
c0102788:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010278b:	c1 e2 02             	shl    $0x2,%edx
c010278e:	01 d0                	add    %edx,%eax
c0102790:	8b 00                	mov    (%eax),%eax
c0102792:	83 e0 01             	and    $0x1,%eax
c0102795:	85 c0                	test   %eax,%eax
c0102797:	74 05                	je     c010279e <free_pgdir+0x49>
c0102799:	e9 ce 00 00 00       	jmp    c010286c <free_pgdir+0x117>
c010279e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01027a1:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01027a8:	8b 45 08             	mov    0x8(%ebp),%eax
c01027ab:	01 d0                	add    %edx,%eax
c01027ad:	8b 00                	mov    (%eax),%eax
c01027af:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01027b4:	83 ec 04             	sub    $0x4,%esp
c01027b7:	50                   	push   %eax
c01027b8:	68 68 01 00 00       	push   $0x168
c01027bd:	68 e6 38 10 c0       	push   $0xc01038e6
c01027c2:	e8 a7 f9 ff ff       	call   c010216e <_kaddr>
c01027c7:	83 c4 10             	add    $0x10,%esp
c01027ca:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01027cd:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c01027d4:	eb 4a                	jmp    c0102820 <free_pgdir+0xcb>
c01027d6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01027d9:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01027e0:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01027e3:	01 d0                	add    %edx,%eax
c01027e5:	8b 00                	mov    (%eax),%eax
c01027e7:	83 e0 01             	and    $0x1,%eax
c01027ea:	85 c0                	test   %eax,%eax
c01027ec:	74 2e                	je     c010281c <free_pgdir+0xc7>
c01027ee:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01027f1:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01027f8:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01027fb:	01 d0                	add    %edx,%eax
c01027fd:	8b 00                	mov    (%eax),%eax
c01027ff:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102804:	83 ec 0c             	sub    $0xc,%esp
c0102807:	50                   	push   %eax
c0102808:	e8 a6 f9 ff ff       	call   c01021b3 <pa2page>
c010280d:	83 c4 10             	add    $0x10,%esp
c0102810:	83 ec 0c             	sub    $0xc,%esp
c0102813:	50                   	push   %eax
c0102814:	e8 5d fc ff ff       	call   c0102476 <page_decref>
c0102819:	83 c4 10             	add    $0x10,%esp
c010281c:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0102820:	81 7d f0 ff 03 00 00 	cmpl   $0x3ff,-0x10(%ebp)
c0102827:	7e ad                	jle    c01027d6 <free_pgdir+0x81>
c0102829:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010282c:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102833:	8b 45 08             	mov    0x8(%ebp),%eax
c0102836:	01 d0                	add    %edx,%eax
c0102838:	8b 00                	mov    (%eax),%eax
c010283a:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c010283f:	83 ec 0c             	sub    $0xc,%esp
c0102842:	50                   	push   %eax
c0102843:	e8 6b f9 ff ff       	call   c01021b3 <pa2page>
c0102848:	83 c4 10             	add    $0x10,%esp
c010284b:	83 ec 0c             	sub    $0xc,%esp
c010284e:	50                   	push   %eax
c010284f:	e8 22 fc ff ff       	call   c0102476 <page_decref>
c0102854:	83 c4 10             	add    $0x10,%esp
c0102857:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010285a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102861:	8b 45 08             	mov    0x8(%ebp),%eax
c0102864:	01 d0                	add    %edx,%eax
c0102866:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c010286c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102870:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
c0102877:	0f 8e ea fe ff ff    	jle    c0102767 <free_pgdir+0x12>
c010287d:	c9                   	leave  
c010287e:	c3                   	ret    

c010287f <copy_pgdir>:
c010287f:	55                   	push   %ebp
c0102880:	89 e5                	mov    %esp,%ebp
c0102882:	53                   	push   %ebx
c0102883:	83 ec 24             	sub    $0x24,%esp
c0102886:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c010288d:	e9 d8 01 00 00       	jmp    c0102a6a <copy_pgdir+0x1eb>
c0102892:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102895:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010289c:	8b 45 0c             	mov    0xc(%ebp),%eax
c010289f:	01 d0                	add    %edx,%eax
c01028a1:	8b 00                	mov    (%eax),%eax
c01028a3:	83 e0 01             	and    $0x1,%eax
c01028a6:	85 c0                	test   %eax,%eax
c01028a8:	0f 84 b8 01 00 00    	je     c0102a66 <copy_pgdir+0x1e7>
c01028ae:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01028b1:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01028b8:	8b 45 08             	mov    0x8(%ebp),%eax
c01028bb:	01 d0                	add    %edx,%eax
c01028bd:	8b 00                	mov    (%eax),%eax
c01028bf:	83 e0 01             	and    $0x1,%eax
c01028c2:	85 c0                	test   %eax,%eax
c01028c4:	74 05                	je     c01028cb <copy_pgdir+0x4c>
c01028c6:	e9 9b 01 00 00       	jmp    c0102a66 <copy_pgdir+0x1e7>
c01028cb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01028ce:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01028d5:	8b 45 0c             	mov    0xc(%ebp),%eax
c01028d8:	01 d0                	add    %edx,%eax
c01028da:	8b 00                	mov    (%eax),%eax
c01028dc:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01028e1:	83 ec 04             	sub    $0x4,%esp
c01028e4:	50                   	push   %eax
c01028e5:	68 7c 01 00 00       	push   $0x17c
c01028ea:	68 e6 38 10 c0       	push   $0xc01038e6
c01028ef:	e8 7a f8 ff ff       	call   c010216e <_kaddr>
c01028f4:	83 c4 10             	add    $0x10,%esp
c01028f7:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01028fa:	83 ec 0c             	sub    $0xc,%esp
c01028fd:	6a 01                	push   $0x1
c01028ff:	e8 fa fa ff ff       	call   c01023fe <page_alloc>
c0102904:	83 c4 10             	add    $0x10,%esp
c0102907:	89 45 e8             	mov    %eax,-0x18(%ebp)
c010290a:	8b 45 e8             	mov    -0x18(%ebp),%eax
c010290d:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c0102911:	8d 50 01             	lea    0x1(%eax),%edx
c0102914:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102917:	66 89 50 04          	mov    %dx,0x4(%eax)
c010291b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010291e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102925:	8b 45 08             	mov    0x8(%ebp),%eax
c0102928:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c010292b:	83 ec 0c             	sub    $0xc,%esp
c010292e:	ff 75 e8             	pushl  -0x18(%ebp)
c0102931:	e8 68 f8 ff ff       	call   c010219e <page2pa>
c0102936:	83 c4 10             	add    $0x10,%esp
c0102939:	89 c1                	mov    %eax,%ecx
c010293b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010293e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102945:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102948:	01 d0                	add    %edx,%eax
c010294a:	8b 00                	mov    (%eax),%eax
c010294c:	25 ff 0f 00 00       	and    $0xfff,%eax
c0102951:	09 c8                	or     %ecx,%eax
c0102953:	89 03                	mov    %eax,(%ebx)
c0102955:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102958:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010295f:	8b 45 08             	mov    0x8(%ebp),%eax
c0102962:	01 d0                	add    %edx,%eax
c0102964:	8b 00                	mov    (%eax),%eax
c0102966:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c010296b:	83 ec 04             	sub    $0x4,%esp
c010296e:	50                   	push   %eax
c010296f:	68 83 01 00 00       	push   $0x183
c0102974:	68 e6 38 10 c0       	push   $0xc01038e6
c0102979:	e8 f0 f7 ff ff       	call   c010216e <_kaddr>
c010297e:	83 c4 10             	add    $0x10,%esp
c0102981:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0102984:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c010298b:	e9 c9 00 00 00       	jmp    c0102a59 <copy_pgdir+0x1da>
c0102990:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102993:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010299a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010299d:	01 d0                	add    %edx,%eax
c010299f:	8b 00                	mov    (%eax),%eax
c01029a1:	83 e0 01             	and    $0x1,%eax
c01029a4:	85 c0                	test   %eax,%eax
c01029a6:	0f 84 a9 00 00 00    	je     c0102a55 <copy_pgdir+0x1d6>
c01029ac:	83 ec 0c             	sub    $0xc,%esp
c01029af:	6a 00                	push   $0x0
c01029b1:	e8 48 fa ff ff       	call   c01023fe <page_alloc>
c01029b6:	83 c4 10             	add    $0x10,%esp
c01029b9:	89 45 e8             	mov    %eax,-0x18(%ebp)
c01029bc:	8b 45 e8             	mov    -0x18(%ebp),%eax
c01029bf:	0f b7 40 04          	movzwl 0x4(%eax),%eax
c01029c3:	8d 50 01             	lea    0x1(%eax),%edx
c01029c6:	8b 45 e8             	mov    -0x18(%ebp),%eax
c01029c9:	66 89 50 04          	mov    %dx,0x4(%eax)
c01029cd:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01029d0:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01029d7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01029da:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c01029dd:	83 ec 0c             	sub    $0xc,%esp
c01029e0:	ff 75 e8             	pushl  -0x18(%ebp)
c01029e3:	e8 b6 f7 ff ff       	call   c010219e <page2pa>
c01029e8:	83 c4 10             	add    $0x10,%esp
c01029eb:	89 c1                	mov    %eax,%ecx
c01029ed:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01029f0:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01029f7:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01029fa:	01 d0                	add    %edx,%eax
c01029fc:	8b 00                	mov    (%eax),%eax
c01029fe:	25 ff 0f 00 00       	and    $0xfff,%eax
c0102a03:	09 c8                	or     %ecx,%eax
c0102a05:	89 03                	mov    %eax,(%ebx)
c0102a07:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102a0a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102a11:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102a14:	01 d0                	add    %edx,%eax
c0102a16:	8b 00                	mov    (%eax),%eax
c0102a18:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0102a1d:	83 ec 04             	sub    $0x4,%esp
c0102a20:	50                   	push   %eax
c0102a21:	68 89 01 00 00       	push   $0x189
c0102a26:	68 e6 38 10 c0       	push   $0xc01038e6
c0102a2b:	e8 3e f7 ff ff       	call   c010216e <_kaddr>
c0102a30:	83 c4 10             	add    $0x10,%esp
c0102a33:	89 c3                	mov    %eax,%ebx
c0102a35:	83 ec 0c             	sub    $0xc,%esp
c0102a38:	ff 75 e8             	pushl  -0x18(%ebp)
c0102a3b:	e8 a6 f7 ff ff       	call   c01021e6 <page2kva>
c0102a40:	83 c4 10             	add    $0x10,%esp
c0102a43:	83 ec 04             	sub    $0x4,%esp
c0102a46:	68 00 10 00 00       	push   $0x1000
c0102a4b:	53                   	push   %ebx
c0102a4c:	50                   	push   %eax
c0102a4d:	e8 77 03 00 00       	call   c0102dc9 <my_memcpy>
c0102a52:	83 c4 10             	add    $0x10,%esp
c0102a55:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0102a59:	81 7d f0 ff 03 00 00 	cmpl   $0x3ff,-0x10(%ebp)
c0102a60:	0f 8e 2a ff ff ff    	jle    c0102990 <copy_pgdir+0x111>
c0102a66:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102a6a:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
c0102a71:	0f 8e 1b fe ff ff    	jle    c0102892 <copy_pgdir+0x13>
c0102a77:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0102a7a:	c9                   	leave  
c0102a7b:	c3                   	ret    

c0102a7c <change>:
c0102a7c:	55                   	push   %ebp
c0102a7d:	89 e5                	mov    %esp,%ebp
c0102a7f:	53                   	push   %ebx
c0102a80:	83 c4 80             	add    $0xffffff80,%esp
c0102a83:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0102a8a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102a91:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a94:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102a97:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102a9b:	75 14                	jne    c0102ab1 <change+0x35>
c0102a9d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102aa0:	c6 00 30             	movb   $0x30,(%eax)
c0102aa3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102aa6:	83 c0 01             	add    $0x1,%eax
c0102aa9:	c6 00 00             	movb   $0x0,(%eax)
c0102aac:	e9 a5 00 00 00       	jmp    c0102b56 <change+0xda>
c0102ab1:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0102ab5:	79 1d                	jns    c0102ad4 <change+0x58>
c0102ab7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102aba:	8d 50 01             	lea    0x1(%eax),%edx
c0102abd:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0102ac0:	89 c2                	mov    %eax,%edx
c0102ac2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102ac5:	01 d0                	add    %edx,%eax
c0102ac7:	c6 00 2d             	movb   $0x2d,(%eax)
c0102aca:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102acd:	f7 d8                	neg    %eax
c0102acf:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102ad2:	eb 06                	jmp    c0102ada <change+0x5e>
c0102ad4:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102ad7:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102ada:	eb 40                	jmp    c0102b1c <change+0xa0>
c0102adc:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0102adf:	8d 41 01             	lea    0x1(%ecx),%eax
c0102ae2:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0102ae5:	8b 5d f0             	mov    -0x10(%ebp),%ebx
c0102ae8:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c0102aed:	89 d8                	mov    %ebx,%eax
c0102aef:	f7 e2                	mul    %edx
c0102af1:	c1 ea 03             	shr    $0x3,%edx
c0102af4:	89 d0                	mov    %edx,%eax
c0102af6:	c1 e0 02             	shl    $0x2,%eax
c0102af9:	01 d0                	add    %edx,%eax
c0102afb:	01 c0                	add    %eax,%eax
c0102afd:	29 c3                	sub    %eax,%ebx
c0102aff:	89 da                	mov    %ebx,%edx
c0102b01:	89 d0                	mov    %edx,%eax
c0102b03:	83 c0 30             	add    $0x30,%eax
c0102b06:	88 44 0d 88          	mov    %al,-0x78(%ebp,%ecx,1)
c0102b0a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102b0d:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c0102b12:	f7 e2                	mul    %edx
c0102b14:	89 d0                	mov    %edx,%eax
c0102b16:	c1 e8 03             	shr    $0x3,%eax
c0102b19:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102b1c:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0102b20:	75 ba                	jne    c0102adc <change+0x60>
c0102b22:	eb 21                	jmp    c0102b45 <change+0xc9>
c0102b24:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102b27:	8d 50 01             	lea    0x1(%eax),%edx
c0102b2a:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0102b2d:	89 c2                	mov    %eax,%edx
c0102b2f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102b32:	01 c2                	add    %eax,%edx
c0102b34:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
c0102b38:	8d 4d 88             	lea    -0x78(%ebp),%ecx
c0102b3b:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0102b3e:	01 c8                	add    %ecx,%eax
c0102b40:	0f b6 00             	movzbl (%eax),%eax
c0102b43:	88 02                	mov    %al,(%edx)
c0102b45:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
c0102b49:	75 d9                	jne    c0102b24 <change+0xa8>
c0102b4b:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102b4e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102b51:	01 d0                	add    %edx,%eax
c0102b53:	c6 00 00             	movb   $0x0,(%eax)
c0102b56:	83 ec 80             	sub    $0xffffff80,%esp
c0102b59:	5b                   	pop    %ebx
c0102b5a:	5d                   	pop    %ebp
c0102b5b:	c3                   	ret    

c0102b5c <change_x>:
c0102b5c:	55                   	push   %ebp
c0102b5d:	89 e5                	mov    %esp,%ebp
c0102b5f:	83 ec 70             	sub    $0x70,%esp
c0102b62:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0102b69:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0102b70:	8b 45 08             	mov    0x8(%ebp),%eax
c0102b73:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102b76:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102b7a:	75 11                	jne    c0102b8d <change_x+0x31>
c0102b7c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102b7f:	c6 00 30             	movb   $0x30,(%eax)
c0102b82:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102b85:	83 c0 01             	add    $0x1,%eax
c0102b88:	c6 00 00             	movb   $0x0,(%eax)
c0102b8b:	eb 7e                	jmp    c0102c0b <change_x+0xaf>
c0102b8d:	eb 42                	jmp    c0102bd1 <change_x+0x75>
c0102b8f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102b92:	83 e0 0f             	and    $0xf,%eax
c0102b95:	83 f8 09             	cmp    $0x9,%eax
c0102b98:	77 18                	ja     c0102bb2 <change_x+0x56>
c0102b9a:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0102b9d:	8d 50 01             	lea    0x1(%eax),%edx
c0102ba0:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0102ba3:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102ba6:	83 e2 0f             	and    $0xf,%edx
c0102ba9:	83 c2 30             	add    $0x30,%edx
c0102bac:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
c0102bb0:	eb 16                	jmp    c0102bc8 <change_x+0x6c>
c0102bb2:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0102bb5:	8d 50 01             	lea    0x1(%eax),%edx
c0102bb8:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0102bbb:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102bbe:	83 e2 0f             	and    $0xf,%edx
c0102bc1:	83 c2 37             	add    $0x37,%edx
c0102bc4:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
c0102bc8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102bcb:	c1 e8 04             	shr    $0x4,%eax
c0102bce:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102bd1:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102bd5:	75 b8                	jne    c0102b8f <change_x+0x33>
c0102bd7:	eb 21                	jmp    c0102bfa <change_x+0x9e>
c0102bd9:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0102bdc:	8d 50 01             	lea    0x1(%eax),%edx
c0102bdf:	89 55 f8             	mov    %edx,-0x8(%ebp)
c0102be2:	89 c2                	mov    %eax,%edx
c0102be4:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102be7:	01 c2                	add    %eax,%edx
c0102be9:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
c0102bed:	8d 4d 90             	lea    -0x70(%ebp),%ecx
c0102bf0:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0102bf3:	01 c8                	add    %ecx,%eax
c0102bf5:	0f b6 00             	movzbl (%eax),%eax
c0102bf8:	88 02                	mov    %al,(%edx)
c0102bfa:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
c0102bfe:	75 d9                	jne    c0102bd9 <change_x+0x7d>
c0102c00:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0102c03:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102c06:	01 d0                	add    %edx,%eax
c0102c08:	c6 00 00             	movb   $0x0,(%eax)
c0102c0b:	c9                   	leave  
c0102c0c:	c3                   	ret    

c0102c0d <v_fprintf>:
c0102c0d:	55                   	push   %ebp
c0102c0e:	89 e5                	mov    %esp,%ebp
c0102c10:	81 ec 88 00 00 00    	sub    $0x88,%esp
c0102c16:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102c19:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102c1c:	8b 45 10             	mov    0x10(%ebp),%eax
c0102c1f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102c22:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0102c29:	e9 61 01 00 00       	jmp    c0102d8f <v_fprintf+0x182>
c0102c2e:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0102c31:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102c34:	01 d0                	add    %edx,%eax
c0102c36:	0f b6 00             	movzbl (%eax),%eax
c0102c39:	3c 25                	cmp    $0x25,%al
c0102c3b:	74 27                	je     c0102c64 <v_fprintf+0x57>
c0102c3d:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0102c40:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102c43:	01 d0                	add    %edx,%eax
c0102c45:	0f b6 00             	movzbl (%eax),%eax
c0102c48:	88 45 eb             	mov    %al,-0x15(%ebp)
c0102c4b:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
c0102c4f:	83 ec 0c             	sub    $0xc,%esp
c0102c52:	50                   	push   %eax
c0102c53:	8b 45 08             	mov    0x8(%ebp),%eax
c0102c56:	ff d0                	call   *%eax
c0102c58:	83 c4 10             	add    $0x10,%esp
c0102c5b:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0102c5f:	e9 2b 01 00 00       	jmp    c0102d8f <v_fprintf+0x182>
c0102c64:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0102c68:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0102c6b:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102c6e:	01 d0                	add    %edx,%eax
c0102c70:	0f b6 00             	movzbl (%eax),%eax
c0102c73:	3c 25                	cmp    $0x25,%al
c0102c75:	75 16                	jne    c0102c8d <v_fprintf+0x80>
c0102c77:	83 ec 0c             	sub    $0xc,%esp
c0102c7a:	6a 25                	push   $0x25
c0102c7c:	8b 45 08             	mov    0x8(%ebp),%eax
c0102c7f:	ff d0                	call   *%eax
c0102c81:	83 c4 10             	add    $0x10,%esp
c0102c84:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0102c88:	e9 02 01 00 00       	jmp    c0102d8f <v_fprintf+0x182>
c0102c8d:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0102c90:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102c93:	01 d0                	add    %edx,%eax
c0102c95:	0f b6 00             	movzbl (%eax),%eax
c0102c98:	3c 63                	cmp    $0x63,%al
c0102c9a:	75 26                	jne    c0102cc2 <v_fprintf+0xb5>
c0102c9c:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0102ca0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102ca3:	0f b6 00             	movzbl (%eax),%eax
c0102ca6:	88 45 eb             	mov    %al,-0x15(%ebp)
c0102ca9:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
c0102cad:	83 ec 0c             	sub    $0xc,%esp
c0102cb0:	50                   	push   %eax
c0102cb1:	8b 45 08             	mov    0x8(%ebp),%eax
c0102cb4:	ff d0                	call   *%eax
c0102cb6:	83 c4 10             	add    $0x10,%esp
c0102cb9:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0102cbd:	e9 cd 00 00 00       	jmp    c0102d8f <v_fprintf+0x182>
c0102cc2:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0102cc5:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102cc8:	01 d0                	add    %edx,%eax
c0102cca:	0f b6 00             	movzbl (%eax),%eax
c0102ccd:	3c 64                	cmp    $0x64,%al
c0102ccf:	75 36                	jne    c0102d07 <v_fprintf+0xfa>
c0102cd1:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0102cd5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102cd8:	8b 00                	mov    (%eax),%eax
c0102cda:	83 ec 08             	sub    $0x8,%esp
c0102cdd:	8d 55 87             	lea    -0x79(%ebp),%edx
c0102ce0:	52                   	push   %edx
c0102ce1:	50                   	push   %eax
c0102ce2:	e8 95 fd ff ff       	call   c0102a7c <change>
c0102ce7:	83 c4 10             	add    $0x10,%esp
c0102cea:	83 ec 04             	sub    $0x4,%esp
c0102ced:	6a 00                	push   $0x0
c0102cef:	8d 45 87             	lea    -0x79(%ebp),%eax
c0102cf2:	50                   	push   %eax
c0102cf3:	ff 75 08             	pushl  0x8(%ebp)
c0102cf6:	e8 12 ff ff ff       	call   c0102c0d <v_fprintf>
c0102cfb:	83 c4 10             	add    $0x10,%esp
c0102cfe:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0102d02:	e9 88 00 00 00       	jmp    c0102d8f <v_fprintf+0x182>
c0102d07:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0102d0a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102d0d:	01 d0                	add    %edx,%eax
c0102d0f:	0f b6 00             	movzbl (%eax),%eax
c0102d12:	3c 78                	cmp    $0x78,%al
c0102d14:	75 33                	jne    c0102d49 <v_fprintf+0x13c>
c0102d16:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0102d1a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102d1d:	8b 00                	mov    (%eax),%eax
c0102d1f:	83 ec 08             	sub    $0x8,%esp
c0102d22:	8d 55 87             	lea    -0x79(%ebp),%edx
c0102d25:	52                   	push   %edx
c0102d26:	50                   	push   %eax
c0102d27:	e8 30 fe ff ff       	call   c0102b5c <change_x>
c0102d2c:	83 c4 10             	add    $0x10,%esp
c0102d2f:	83 ec 04             	sub    $0x4,%esp
c0102d32:	6a 00                	push   $0x0
c0102d34:	8d 45 87             	lea    -0x79(%ebp),%eax
c0102d37:	50                   	push   %eax
c0102d38:	ff 75 08             	pushl  0x8(%ebp)
c0102d3b:	e8 cd fe ff ff       	call   c0102c0d <v_fprintf>
c0102d40:	83 c4 10             	add    $0x10,%esp
c0102d43:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0102d47:	eb 46                	jmp    c0102d8f <v_fprintf+0x182>
c0102d49:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0102d4c:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102d4f:	01 d0                	add    %edx,%eax
c0102d51:	0f b6 00             	movzbl (%eax),%eax
c0102d54:	3c 73                	cmp    $0x73,%al
c0102d56:	75 20                	jne    c0102d78 <v_fprintf+0x16b>
c0102d58:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0102d5c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102d5f:	8b 00                	mov    (%eax),%eax
c0102d61:	83 ec 04             	sub    $0x4,%esp
c0102d64:	6a 00                	push   $0x0
c0102d66:	50                   	push   %eax
c0102d67:	ff 75 08             	pushl  0x8(%ebp)
c0102d6a:	e8 9e fe ff ff       	call   c0102c0d <v_fprintf>
c0102d6f:	83 c4 10             	add    $0x10,%esp
c0102d72:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0102d76:	eb 17                	jmp    c0102d8f <v_fprintf+0x182>
c0102d78:	83 ec 04             	sub    $0x4,%esp
c0102d7b:	6a 00                	push   $0x0
c0102d7d:	68 f8 38 10 c0       	push   $0xc01038f8
c0102d82:	ff 75 08             	pushl  0x8(%ebp)
c0102d85:	e8 83 fe ff ff       	call   c0102c0d <v_fprintf>
c0102d8a:	83 c4 10             	add    $0x10,%esp
c0102d8d:	eb 13                	jmp    c0102da2 <v_fprintf+0x195>
c0102d8f:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0102d92:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102d95:	01 d0                	add    %edx,%eax
c0102d97:	0f b6 00             	movzbl (%eax),%eax
c0102d9a:	84 c0                	test   %al,%al
c0102d9c:	0f 85 8c fe ff ff    	jne    c0102c2e <v_fprintf+0x21>
c0102da2:	c9                   	leave  
c0102da3:	c3                   	ret    

c0102da4 <printk>:
c0102da4:	55                   	push   %ebp
c0102da5:	89 e5                	mov    %esp,%ebp
c0102da7:	83 ec 18             	sub    $0x18,%esp
c0102daa:	8d 45 0c             	lea    0xc(%ebp),%eax
c0102dad:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102db0:	8b 45 08             	mov    0x8(%ebp),%eax
c0102db3:	83 ec 04             	sub    $0x4,%esp
c0102db6:	ff 75 f4             	pushl  -0xc(%ebp)
c0102db9:	50                   	push   %eax
c0102dba:	68 ff 33 10 c0       	push   $0xc01033ff
c0102dbf:	e8 49 fe ff ff       	call   c0102c0d <v_fprintf>
c0102dc4:	83 c4 10             	add    $0x10,%esp
c0102dc7:	c9                   	leave  
c0102dc8:	c3                   	ret    

c0102dc9 <my_memcpy>:
c0102dc9:	55                   	push   %ebp
c0102dca:	89 e5                	mov    %esp,%ebp
c0102dcc:	57                   	push   %edi
c0102dcd:	56                   	push   %esi
c0102dce:	53                   	push   %ebx
c0102dcf:	8b 45 10             	mov    0x10(%ebp),%eax
c0102dd2:	8b 55 0c             	mov    0xc(%ebp),%edx
c0102dd5:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0102dd8:	89 c1                	mov    %eax,%ecx
c0102dda:	89 d6                	mov    %edx,%esi
c0102ddc:	89 df                	mov    %ebx,%edi
c0102dde:	fc                   	cld    
c0102ddf:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0102de1:	5b                   	pop    %ebx
c0102de2:	5e                   	pop    %esi
c0102de3:	5f                   	pop    %edi
c0102de4:	5d                   	pop    %ebp
c0102de5:	c3                   	ret    

c0102de6 <my_memset>:
c0102de6:	55                   	push   %ebp
c0102de7:	89 e5                	mov    %esp,%ebp
c0102de9:	57                   	push   %edi
c0102dea:	53                   	push   %ebx
c0102deb:	8b 55 10             	mov    0x10(%ebp),%edx
c0102dee:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102df1:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0102df4:	89 d1                	mov    %edx,%ecx
c0102df6:	89 df                	mov    %ebx,%edi
c0102df8:	fc                   	cld    
c0102df9:	f3 aa                	rep stos %al,%es:(%edi)
c0102dfb:	5b                   	pop    %ebx
c0102dfc:	5f                   	pop    %edi
c0102dfd:	5d                   	pop    %ebp
c0102dfe:	c3                   	ret    

c0102dff <write_gdtr>:
c0102dff:	55                   	push   %ebp
c0102e00:	89 e5                	mov    %esp,%ebp
c0102e02:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102e05:	83 e8 01             	sub    $0x1,%eax
c0102e08:	66 a3 04 30 13 c0    	mov    %ax,0xc0133004
c0102e0e:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e11:	66 a3 06 30 13 c0    	mov    %ax,0xc0133006
c0102e17:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e1a:	c1 e8 10             	shr    $0x10,%eax
c0102e1d:	66 a3 08 30 13 c0    	mov    %ax,0xc0133008
c0102e23:	b8 04 30 13 c0       	mov    $0xc0133004,%eax
c0102e28:	0f 01 10             	lgdtl  (%eax)
c0102e2b:	5d                   	pop    %ebp
c0102e2c:	c3                   	ret    

c0102e2d <set_tss>:
c0102e2d:	55                   	push   %ebp
c0102e2e:	89 e5                	mov    %esp,%ebp
c0102e30:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e33:	a3 c4 10 1f c0       	mov    %eax,0xc01f10c4
c0102e38:	5d                   	pop    %ebp
c0102e39:	c3                   	ret    

c0102e3a <Makegdt>:
c0102e3a:	55                   	push   %ebp
c0102e3b:	89 e5                	mov    %esp,%ebp
c0102e3d:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e40:	c1 e8 0c             	shr    $0xc,%eax
c0102e43:	89 c2                	mov    %eax,%edx
c0102e45:	8b 45 18             	mov    0x18(%ebp),%eax
c0102e48:	66 89 14 c5 40 10 1f 	mov    %dx,-0x3fe0efc0(,%eax,8)
c0102e4f:	c0 
c0102e50:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102e53:	89 c2                	mov    %eax,%edx
c0102e55:	8b 45 18             	mov    0x18(%ebp),%eax
c0102e58:	66 89 14 c5 42 10 1f 	mov    %dx,-0x3fe0efbe(,%eax,8)
c0102e5f:	c0 
c0102e60:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102e63:	c1 e8 10             	shr    $0x10,%eax
c0102e66:	89 c2                	mov    %eax,%edx
c0102e68:	8b 45 18             	mov    0x18(%ebp),%eax
c0102e6b:	88 14 c5 44 10 1f c0 	mov    %dl,-0x3fe0efbc(,%eax,8)
c0102e72:	8b 45 10             	mov    0x10(%ebp),%eax
c0102e75:	83 e0 0f             	and    $0xf,%eax
c0102e78:	89 c2                	mov    %eax,%edx
c0102e7a:	8b 45 18             	mov    0x18(%ebp),%eax
c0102e7d:	89 d1                	mov    %edx,%ecx
c0102e7f:	83 e1 0f             	and    $0xf,%ecx
c0102e82:	0f b6 14 c5 45 10 1f 	movzbl -0x3fe0efbb(,%eax,8),%edx
c0102e89:	c0 
c0102e8a:	83 e2 f0             	and    $0xfffffff0,%edx
c0102e8d:	09 ca                	or     %ecx,%edx
c0102e8f:	88 14 c5 45 10 1f c0 	mov    %dl,-0x3fe0efbb(,%eax,8)
c0102e96:	8b 45 18             	mov    0x18(%ebp),%eax
c0102e99:	0f b6 14 c5 45 10 1f 	movzbl -0x3fe0efbb(,%eax,8),%edx
c0102ea0:	c0 
c0102ea1:	83 ca 10             	or     $0x10,%edx
c0102ea4:	88 14 c5 45 10 1f c0 	mov    %dl,-0x3fe0efbb(,%eax,8)
c0102eab:	8b 45 14             	mov    0x14(%ebp),%eax
c0102eae:	83 e0 03             	and    $0x3,%eax
c0102eb1:	89 c2                	mov    %eax,%edx
c0102eb3:	8b 45 18             	mov    0x18(%ebp),%eax
c0102eb6:	83 e2 03             	and    $0x3,%edx
c0102eb9:	89 d1                	mov    %edx,%ecx
c0102ebb:	c1 e1 05             	shl    $0x5,%ecx
c0102ebe:	0f b6 14 c5 45 10 1f 	movzbl -0x3fe0efbb(,%eax,8),%edx
c0102ec5:	c0 
c0102ec6:	83 e2 9f             	and    $0xffffff9f,%edx
c0102ec9:	09 ca                	or     %ecx,%edx
c0102ecb:	88 14 c5 45 10 1f c0 	mov    %dl,-0x3fe0efbb(,%eax,8)
c0102ed2:	8b 45 18             	mov    0x18(%ebp),%eax
c0102ed5:	0f b6 14 c5 45 10 1f 	movzbl -0x3fe0efbb(,%eax,8),%edx
c0102edc:	c0 
c0102edd:	83 ca 80             	or     $0xffffff80,%edx
c0102ee0:	88 14 c5 45 10 1f c0 	mov    %dl,-0x3fe0efbb(,%eax,8)
c0102ee7:	8b 45 08             	mov    0x8(%ebp),%eax
c0102eea:	c1 e8 1c             	shr    $0x1c,%eax
c0102eed:	83 e0 0f             	and    $0xf,%eax
c0102ef0:	89 c2                	mov    %eax,%edx
c0102ef2:	8b 45 18             	mov    0x18(%ebp),%eax
c0102ef5:	89 d1                	mov    %edx,%ecx
c0102ef7:	83 e1 0f             	and    $0xf,%ecx
c0102efa:	0f b6 14 c5 46 10 1f 	movzbl -0x3fe0efba(,%eax,8),%edx
c0102f01:	c0 
c0102f02:	83 e2 f0             	and    $0xfffffff0,%edx
c0102f05:	09 ca                	or     %ecx,%edx
c0102f07:	88 14 c5 46 10 1f c0 	mov    %dl,-0x3fe0efba(,%eax,8)
c0102f0e:	8b 45 18             	mov    0x18(%ebp),%eax
c0102f11:	0f b6 14 c5 46 10 1f 	movzbl -0x3fe0efba(,%eax,8),%edx
c0102f18:	c0 
c0102f19:	83 e2 ef             	and    $0xffffffef,%edx
c0102f1c:	88 14 c5 46 10 1f c0 	mov    %dl,-0x3fe0efba(,%eax,8)
c0102f23:	8b 45 18             	mov    0x18(%ebp),%eax
c0102f26:	0f b6 14 c5 46 10 1f 	movzbl -0x3fe0efba(,%eax,8),%edx
c0102f2d:	c0 
c0102f2e:	83 e2 df             	and    $0xffffffdf,%edx
c0102f31:	88 14 c5 46 10 1f c0 	mov    %dl,-0x3fe0efba(,%eax,8)
c0102f38:	8b 45 18             	mov    0x18(%ebp),%eax
c0102f3b:	0f b6 14 c5 46 10 1f 	movzbl -0x3fe0efba(,%eax,8),%edx
c0102f42:	c0 
c0102f43:	83 ca 40             	or     $0x40,%edx
c0102f46:	88 14 c5 46 10 1f c0 	mov    %dl,-0x3fe0efba(,%eax,8)
c0102f4d:	8b 45 18             	mov    0x18(%ebp),%eax
c0102f50:	0f b6 14 c5 46 10 1f 	movzbl -0x3fe0efba(,%eax,8),%edx
c0102f57:	c0 
c0102f58:	83 ca 80             	or     $0xffffff80,%edx
c0102f5b:	88 14 c5 46 10 1f c0 	mov    %dl,-0x3fe0efba(,%eax,8)
c0102f62:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102f65:	c1 e8 18             	shr    $0x18,%eax
c0102f68:	89 c2                	mov    %eax,%edx
c0102f6a:	8b 45 18             	mov    0x18(%ebp),%eax
c0102f6d:	88 14 c5 47 10 1f c0 	mov    %dl,-0x3fe0efb9(,%eax,8)
c0102f74:	5d                   	pop    %ebp
c0102f75:	c3                   	ret    

c0102f76 <Maketss>:
c0102f76:	55                   	push   %ebp
c0102f77:	89 e5                	mov    %esp,%ebp
c0102f79:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f7c:	89 c2                	mov    %eax,%edx
c0102f7e:	8b 45 18             	mov    0x18(%ebp),%eax
c0102f81:	66 89 14 c5 40 10 1f 	mov    %dx,-0x3fe0efc0(,%eax,8)
c0102f88:	c0 
c0102f89:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102f8c:	89 c2                	mov    %eax,%edx
c0102f8e:	8b 45 18             	mov    0x18(%ebp),%eax
c0102f91:	66 89 14 c5 42 10 1f 	mov    %dx,-0x3fe0efbe(,%eax,8)
c0102f98:	c0 
c0102f99:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102f9c:	c1 e8 10             	shr    $0x10,%eax
c0102f9f:	89 c2                	mov    %eax,%edx
c0102fa1:	8b 45 18             	mov    0x18(%ebp),%eax
c0102fa4:	88 14 c5 44 10 1f c0 	mov    %dl,-0x3fe0efbc(,%eax,8)
c0102fab:	8b 45 10             	mov    0x10(%ebp),%eax
c0102fae:	83 e0 0f             	and    $0xf,%eax
c0102fb1:	89 c2                	mov    %eax,%edx
c0102fb3:	8b 45 18             	mov    0x18(%ebp),%eax
c0102fb6:	89 d1                	mov    %edx,%ecx
c0102fb8:	83 e1 0f             	and    $0xf,%ecx
c0102fbb:	0f b6 14 c5 45 10 1f 	movzbl -0x3fe0efbb(,%eax,8),%edx
c0102fc2:	c0 
c0102fc3:	83 e2 f0             	and    $0xfffffff0,%edx
c0102fc6:	09 ca                	or     %ecx,%edx
c0102fc8:	88 14 c5 45 10 1f c0 	mov    %dl,-0x3fe0efbb(,%eax,8)
c0102fcf:	8b 45 18             	mov    0x18(%ebp),%eax
c0102fd2:	0f b6 14 c5 45 10 1f 	movzbl -0x3fe0efbb(,%eax,8),%edx
c0102fd9:	c0 
c0102fda:	83 e2 ef             	and    $0xffffffef,%edx
c0102fdd:	88 14 c5 45 10 1f c0 	mov    %dl,-0x3fe0efbb(,%eax,8)
c0102fe4:	8b 45 14             	mov    0x14(%ebp),%eax
c0102fe7:	83 e0 03             	and    $0x3,%eax
c0102fea:	89 c2                	mov    %eax,%edx
c0102fec:	8b 45 18             	mov    0x18(%ebp),%eax
c0102fef:	83 e2 03             	and    $0x3,%edx
c0102ff2:	89 d1                	mov    %edx,%ecx
c0102ff4:	c1 e1 05             	shl    $0x5,%ecx
c0102ff7:	0f b6 14 c5 45 10 1f 	movzbl -0x3fe0efbb(,%eax,8),%edx
c0102ffe:	c0 
c0102fff:	83 e2 9f             	and    $0xffffff9f,%edx
c0103002:	09 ca                	or     %ecx,%edx
c0103004:	88 14 c5 45 10 1f c0 	mov    %dl,-0x3fe0efbb(,%eax,8)
c010300b:	8b 45 18             	mov    0x18(%ebp),%eax
c010300e:	0f b6 14 c5 45 10 1f 	movzbl -0x3fe0efbb(,%eax,8),%edx
c0103015:	c0 
c0103016:	83 ca 80             	or     $0xffffff80,%edx
c0103019:	88 14 c5 45 10 1f c0 	mov    %dl,-0x3fe0efbb(,%eax,8)
c0103020:	8b 45 08             	mov    0x8(%ebp),%eax
c0103023:	c1 e8 10             	shr    $0x10,%eax
c0103026:	83 e0 0f             	and    $0xf,%eax
c0103029:	89 c2                	mov    %eax,%edx
c010302b:	8b 45 18             	mov    0x18(%ebp),%eax
c010302e:	89 d1                	mov    %edx,%ecx
c0103030:	83 e1 0f             	and    $0xf,%ecx
c0103033:	0f b6 14 c5 46 10 1f 	movzbl -0x3fe0efba(,%eax,8),%edx
c010303a:	c0 
c010303b:	83 e2 f0             	and    $0xfffffff0,%edx
c010303e:	09 ca                	or     %ecx,%edx
c0103040:	88 14 c5 46 10 1f c0 	mov    %dl,-0x3fe0efba(,%eax,8)
c0103047:	8b 45 18             	mov    0x18(%ebp),%eax
c010304a:	0f b6 14 c5 46 10 1f 	movzbl -0x3fe0efba(,%eax,8),%edx
c0103051:	c0 
c0103052:	83 e2 ef             	and    $0xffffffef,%edx
c0103055:	88 14 c5 46 10 1f c0 	mov    %dl,-0x3fe0efba(,%eax,8)
c010305c:	8b 45 18             	mov    0x18(%ebp),%eax
c010305f:	0f b6 14 c5 46 10 1f 	movzbl -0x3fe0efba(,%eax,8),%edx
c0103066:	c0 
c0103067:	83 e2 df             	and    $0xffffffdf,%edx
c010306a:	88 14 c5 46 10 1f c0 	mov    %dl,-0x3fe0efba(,%eax,8)
c0103071:	8b 45 18             	mov    0x18(%ebp),%eax
c0103074:	0f b6 14 c5 46 10 1f 	movzbl -0x3fe0efba(,%eax,8),%edx
c010307b:	c0 
c010307c:	83 ca 40             	or     $0x40,%edx
c010307f:	88 14 c5 46 10 1f c0 	mov    %dl,-0x3fe0efba(,%eax,8)
c0103086:	8b 45 18             	mov    0x18(%ebp),%eax
c0103089:	0f b6 14 c5 46 10 1f 	movzbl -0x3fe0efba(,%eax,8),%edx
c0103090:	c0 
c0103091:	83 ca 80             	or     $0xffffff80,%edx
c0103094:	88 14 c5 46 10 1f c0 	mov    %dl,-0x3fe0efba(,%eax,8)
c010309b:	8b 45 0c             	mov    0xc(%ebp),%eax
c010309e:	c1 e8 18             	shr    $0x18,%eax
c01030a1:	89 c2                	mov    %eax,%edx
c01030a3:	8b 45 18             	mov    0x18(%ebp),%eax
c01030a6:	88 14 c5 47 10 1f c0 	mov    %dl,-0x3fe0efb9(,%eax,8)
c01030ad:	5d                   	pop    %ebp
c01030ae:	c3                   	ret    

c01030af <init_seg>:
c01030af:	55                   	push   %ebp
c01030b0:	89 e5                	mov    %esp,%ebp
c01030b2:	83 ec 10             	sub    $0x10,%esp
c01030b5:	c7 05 00 30 13 c0 00 	movl   $0x0,0xc0133000
c01030bc:	00 00 00 
c01030bf:	6a 00                	push   $0x0
c01030c1:	6a 00                	push   $0x0
c01030c3:	6a 00                	push   $0x0
c01030c5:	6a 00                	push   $0x0
c01030c7:	6a 00                	push   $0x0
c01030c9:	e8 6c fd ff ff       	call   c0102e3a <Makegdt>
c01030ce:	83 c4 14             	add    $0x14,%esp
c01030d1:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c01030d6:	83 c0 01             	add    $0x1,%eax
c01030d9:	a3 00 30 13 c0       	mov    %eax,0xc0133000
c01030de:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c01030e3:	50                   	push   %eax
c01030e4:	6a 00                	push   $0x0
c01030e6:	6a 0a                	push   $0xa
c01030e8:	6a 00                	push   $0x0
c01030ea:	6a ff                	push   $0xffffffff
c01030ec:	e8 49 fd ff ff       	call   c0102e3a <Makegdt>
c01030f1:	83 c4 14             	add    $0x14,%esp
c01030f4:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c01030f9:	83 c0 01             	add    $0x1,%eax
c01030fc:	a3 00 30 13 c0       	mov    %eax,0xc0133000
c0103101:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c0103106:	50                   	push   %eax
c0103107:	6a 00                	push   $0x0
c0103109:	6a 02                	push   $0x2
c010310b:	6a 00                	push   $0x0
c010310d:	6a ff                	push   $0xffffffff
c010310f:	e8 26 fd ff ff       	call   c0102e3a <Makegdt>
c0103114:	83 c4 14             	add    $0x14,%esp
c0103117:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c010311c:	83 c0 01             	add    $0x1,%eax
c010311f:	a3 00 30 13 c0       	mov    %eax,0xc0133000
c0103124:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c0103129:	50                   	push   %eax
c010312a:	6a 03                	push   $0x3
c010312c:	6a 0a                	push   $0xa
c010312e:	6a 00                	push   $0x0
c0103130:	6a ff                	push   $0xffffffff
c0103132:	e8 03 fd ff ff       	call   c0102e3a <Makegdt>
c0103137:	83 c4 14             	add    $0x14,%esp
c010313a:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c010313f:	83 c0 01             	add    $0x1,%eax
c0103142:	a3 00 30 13 c0       	mov    %eax,0xc0133000
c0103147:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c010314c:	50                   	push   %eax
c010314d:	6a 03                	push   $0x3
c010314f:	6a 02                	push   $0x2
c0103151:	6a 00                	push   $0x0
c0103153:	6a ff                	push   $0xffffffff
c0103155:	e8 e0 fc ff ff       	call   c0102e3a <Makegdt>
c010315a:	83 c4 14             	add    $0x14,%esp
c010315d:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c0103162:	83 c0 01             	add    $0x1,%eax
c0103165:	a3 00 30 13 c0       	mov    %eax,0xc0133000
c010316a:	c7 05 c4 10 1f c0 00 	movl   $0x2f0000,0xc01f10c4
c0103171:	00 2f 00 
c0103174:	66 c7 05 c8 10 1f c0 	movw   $0x10,0xc01f10c8
c010317b:	10 00 
c010317d:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c0103182:	ba c0 10 1f c0       	mov    $0xc01f10c0,%edx
c0103187:	50                   	push   %eax
c0103188:	6a 00                	push   $0x0
c010318a:	6a 09                	push   $0x9
c010318c:	52                   	push   %edx
c010318d:	6a ff                	push   $0xffffffff
c010318f:	e8 e2 fd ff ff       	call   c0102f76 <Maketss>
c0103194:	83 c4 14             	add    $0x14,%esp
c0103197:	a1 00 30 13 c0       	mov    0xc0133000,%eax
c010319c:	83 c0 01             	add    $0x1,%eax
c010319f:	a3 00 30 13 c0       	mov    %eax,0xc0133000
c01031a4:	66 c7 05 1c 11 1f c0 	movw   $0x2b,0xc01f111c
c01031ab:	2b 00 
c01031ad:	66 b8 10 00          	mov    $0x10,%ax
c01031b1:	8e d8                	mov    %eax,%ds
c01031b3:	8e c0                	mov    %eax,%es
c01031b5:	8e d0                	mov    %eax,%ss
c01031b7:	68 80 00 00 00       	push   $0x80
c01031bc:	68 40 10 1f c0       	push   $0xc01f1040
c01031c1:	e8 39 fc ff ff       	call   c0102dff <write_gdtr>
c01031c6:	83 c4 08             	add    $0x8,%esp
c01031c9:	0f b7 05 1c 11 1f c0 	movzwl 0xc01f111c,%eax
c01031d0:	0f b7 c0             	movzwl %ax,%eax
c01031d3:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
c01031d7:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
c01031db:	0f 00 d8             	ltr    %ax
c01031de:	c9                   	leave  
c01031df:	c3                   	ret    

c01031e0 <get_free_sem>:
c01031e0:	55                   	push   %ebp
c01031e1:	89 e5                	mov    %esp,%ebp
c01031e3:	83 ec 18             	sub    $0x18,%esp
c01031e6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01031ed:	eb 37                	jmp    c0103226 <get_free_sem+0x46>
c01031ef:	8b 55 f4             	mov    -0xc(%ebp),%edx
c01031f2:	89 d0                	mov    %edx,%eax
c01031f4:	01 c0                	add    %eax,%eax
c01031f6:	01 d0                	add    %edx,%eax
c01031f8:	c1 e0 04             	shl    $0x4,%eax
c01031fb:	05 40 30 13 c0       	add    $0xc0133040,%eax
c0103200:	8b 00                	mov    (%eax),%eax
c0103202:	85 c0                	test   %eax,%eax
c0103204:	75 1c                	jne    c0103222 <get_free_sem+0x42>
c0103206:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0103209:	89 d0                	mov    %edx,%eax
c010320b:	01 c0                	add    %eax,%eax
c010320d:	01 d0                	add    %edx,%eax
c010320f:	c1 e0 04             	shl    $0x4,%eax
c0103212:	05 40 30 13 c0       	add    $0xc0133040,%eax
c0103217:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c010321d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103220:	eb 1c                	jmp    c010323e <get_free_sem+0x5e>
c0103222:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0103226:	83 7d f4 63          	cmpl   $0x63,-0xc(%ebp)
c010322a:	7e c3                	jle    c01031ef <get_free_sem+0xf>
c010322c:	83 ec 0c             	sub    $0xc,%esp
c010322f:	68 18 39 10 c0       	push   $0xc0103918
c0103234:	e8 6b fb ff ff       	call   c0102da4 <printk>
c0103239:	83 c4 10             	add    $0x10,%esp
c010323c:	eb fe                	jmp    c010323c <get_free_sem+0x5c>
c010323e:	c9                   	leave  
c010323f:	c3                   	ret    

c0103240 <sem_init>:
c0103240:	55                   	push   %ebp
c0103241:	89 e5                	mov    %esp,%ebp
c0103243:	83 ec 10             	sub    $0x10,%esp
c0103246:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c010324d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0103254:	eb 51                	jmp    c01032a7 <sem_init+0x67>
c0103256:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0103259:	89 d0                	mov    %edx,%eax
c010325b:	01 c0                	add    %eax,%eax
c010325d:	01 d0                	add    %edx,%eax
c010325f:	c1 e0 04             	shl    $0x4,%eax
c0103262:	05 40 30 13 c0       	add    $0xc0133040,%eax
c0103267:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c010326d:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0103270:	89 d0                	mov    %edx,%eax
c0103272:	01 c0                	add    %eax,%eax
c0103274:	01 d0                	add    %edx,%eax
c0103276:	c1 e0 04             	shl    $0x4,%eax
c0103279:	83 c0 20             	add    $0x20,%eax
c010327c:	05 40 30 13 c0       	add    $0xc0133040,%eax
c0103281:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0103288:	8b 55 fc             	mov    -0x4(%ebp),%edx
c010328b:	89 d0                	mov    %edx,%eax
c010328d:	01 c0                	add    %eax,%eax
c010328f:	01 d0                	add    %edx,%eax
c0103291:	c1 e0 04             	shl    $0x4,%eax
c0103294:	83 c0 20             	add    $0x20,%eax
c0103297:	05 40 30 13 c0       	add    $0xc0133040,%eax
c010329c:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c01032a3:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c01032a7:	83 7d fc 63          	cmpl   $0x63,-0x4(%ebp)
c01032ab:	7e a9                	jle    c0103256 <sem_init+0x16>
c01032ad:	c9                   	leave  
c01032ae:	c3                   	ret    

c01032af <sem_open>:
c01032af:	55                   	push   %ebp
c01032b0:	89 e5                	mov    %esp,%ebp
c01032b2:	83 ec 18             	sub    $0x18,%esp
c01032b5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01032bc:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01032c3:	eb 30                	jmp    c01032f5 <sem_open+0x46>
c01032c5:	8b 55 f4             	mov    -0xc(%ebp),%edx
c01032c8:	89 d0                	mov    %edx,%eax
c01032ca:	01 c0                	add    %eax,%eax
c01032cc:	01 d0                	add    %edx,%eax
c01032ce:	c1 e0 04             	shl    $0x4,%eax
c01032d1:	05 40 30 13 c0       	add    $0xc0133040,%eax
c01032d6:	83 c0 04             	add    $0x4,%eax
c01032d9:	83 ec 08             	sub    $0x8,%esp
c01032dc:	50                   	push   %eax
c01032dd:	ff 75 08             	pushl  0x8(%ebp)
c01032e0:	e8 79 01 00 00       	call   c010345e <my_strcmp>
c01032e5:	83 c4 10             	add    $0x10,%esp
c01032e8:	85 c0                	test   %eax,%eax
c01032ea:	75 05                	jne    c01032f1 <sem_open+0x42>
c01032ec:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01032ef:	eb 55                	jmp    c0103346 <sem_open+0x97>
c01032f1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01032f5:	83 7d f4 63          	cmpl   $0x63,-0xc(%ebp)
c01032f9:	7e ca                	jle    c01032c5 <sem_open+0x16>
c01032fb:	e8 e0 fe ff ff       	call   c01031e0 <get_free_sem>
c0103300:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0103303:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0103306:	89 d0                	mov    %edx,%eax
c0103308:	01 c0                	add    %eax,%eax
c010330a:	01 d0                	add    %edx,%eax
c010330c:	c1 e0 04             	shl    $0x4,%eax
c010330f:	05 40 30 13 c0       	add    $0xc0133040,%eax
c0103314:	83 c0 04             	add    $0x4,%eax
c0103317:	83 ec 04             	sub    $0x4,%esp
c010331a:	6a 1f                	push   $0x1f
c010331c:	ff 75 08             	pushl  0x8(%ebp)
c010331f:	50                   	push   %eax
c0103320:	e8 06 02 00 00       	call   c010352b <my_strcpy>
c0103325:	83 c4 10             	add    $0x10,%esp
c0103328:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010332b:	89 d0                	mov    %edx,%eax
c010332d:	01 c0                	add    %eax,%eax
c010332f:	01 d0                	add    %edx,%eax
c0103331:	c1 e0 04             	shl    $0x4,%eax
c0103334:	83 c0 20             	add    $0x20,%eax
c0103337:	8d 90 40 30 13 c0    	lea    -0x3feccfc0(%eax),%edx
c010333d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103340:	89 42 04             	mov    %eax,0x4(%edx)
c0103343:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103346:	c9                   	leave  
c0103347:	c3                   	ret    

c0103348 <inb>:
c0103348:	55                   	push   %ebp
c0103349:	89 e5                	mov    %esp,%ebp
c010334b:	83 ec 10             	sub    $0x10,%esp
c010334e:	8b 45 08             	mov    0x8(%ebp),%eax
c0103351:	89 c2                	mov    %eax,%edx
c0103353:	ec                   	in     (%dx),%al
c0103354:	88 45 ff             	mov    %al,-0x1(%ebp)
c0103357:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c010335b:	c9                   	leave  
c010335c:	c3                   	ret    

c010335d <outb>:
c010335d:	55                   	push   %ebp
c010335e:	89 e5                	mov    %esp,%ebp
c0103360:	83 ec 04             	sub    $0x4,%esp
c0103363:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103366:	88 45 fc             	mov    %al,-0x4(%ebp)
c0103369:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c010336d:	8b 55 08             	mov    0x8(%ebp),%edx
c0103370:	ee                   	out    %al,(%dx)
c0103371:	c9                   	leave  
c0103372:	c3                   	ret    

c0103373 <init_serial>:
c0103373:	55                   	push   %ebp
c0103374:	89 e5                	mov    %esp,%ebp
c0103376:	6a 00                	push   $0x0
c0103378:	68 f9 03 00 00       	push   $0x3f9
c010337d:	e8 db ff ff ff       	call   c010335d <outb>
c0103382:	83 c4 08             	add    $0x8,%esp
c0103385:	68 80 00 00 00       	push   $0x80
c010338a:	68 fb 03 00 00       	push   $0x3fb
c010338f:	e8 c9 ff ff ff       	call   c010335d <outb>
c0103394:	83 c4 08             	add    $0x8,%esp
c0103397:	6a 03                	push   $0x3
c0103399:	68 f8 03 00 00       	push   $0x3f8
c010339e:	e8 ba ff ff ff       	call   c010335d <outb>
c01033a3:	83 c4 08             	add    $0x8,%esp
c01033a6:	6a 00                	push   $0x0
c01033a8:	68 f9 03 00 00       	push   $0x3f9
c01033ad:	e8 ab ff ff ff       	call   c010335d <outb>
c01033b2:	83 c4 08             	add    $0x8,%esp
c01033b5:	6a 03                	push   $0x3
c01033b7:	68 fb 03 00 00       	push   $0x3fb
c01033bc:	e8 9c ff ff ff       	call   c010335d <outb>
c01033c1:	83 c4 08             	add    $0x8,%esp
c01033c4:	68 c7 00 00 00       	push   $0xc7
c01033c9:	68 fa 03 00 00       	push   $0x3fa
c01033ce:	e8 8a ff ff ff       	call   c010335d <outb>
c01033d3:	83 c4 08             	add    $0x8,%esp
c01033d6:	6a 0b                	push   $0xb
c01033d8:	68 fc 03 00 00       	push   $0x3fc
c01033dd:	e8 7b ff ff ff       	call   c010335d <outb>
c01033e2:	83 c4 08             	add    $0x8,%esp
c01033e5:	c9                   	leave  
c01033e6:	c3                   	ret    

c01033e7 <is_serial_idle>:
c01033e7:	55                   	push   %ebp
c01033e8:	89 e5                	mov    %esp,%ebp
c01033ea:	68 fd 03 00 00       	push   $0x3fd
c01033ef:	e8 54 ff ff ff       	call   c0103348 <inb>
c01033f4:	83 c4 04             	add    $0x4,%esp
c01033f7:	0f b6 c0             	movzbl %al,%eax
c01033fa:	83 e0 20             	and    $0x20,%eax
c01033fd:	c9                   	leave  
c01033fe:	c3                   	ret    

c01033ff <serial_out>:
c01033ff:	55                   	push   %ebp
c0103400:	89 e5                	mov    %esp,%ebp
c0103402:	83 ec 04             	sub    $0x4,%esp
c0103405:	8b 45 08             	mov    0x8(%ebp),%eax
c0103408:	88 45 fc             	mov    %al,-0x4(%ebp)
c010340b:	90                   	nop
c010340c:	e8 d6 ff ff ff       	call   c01033e7 <is_serial_idle>
c0103411:	85 c0                	test   %eax,%eax
c0103413:	74 f7                	je     c010340c <serial_out+0xd>
c0103415:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c0103419:	0f b6 c0             	movzbl %al,%eax
c010341c:	50                   	push   %eax
c010341d:	68 f8 03 00 00       	push   $0x3f8
c0103422:	e8 36 ff ff ff       	call   c010335d <outb>
c0103427:	83 c4 08             	add    $0x8,%esp
c010342a:	c9                   	leave  
c010342b:	c3                   	ret    

c010342c <my_strlen>:
c010342c:	55                   	push   %ebp
c010342d:	89 e5                	mov    %esp,%ebp
c010342f:	83 ec 10             	sub    $0x10,%esp
c0103432:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0103439:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0103440:	eb 08                	jmp    c010344a <my_strlen+0x1e>
c0103442:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c0103446:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c010344a:	8b 55 fc             	mov    -0x4(%ebp),%edx
c010344d:	8b 45 08             	mov    0x8(%ebp),%eax
c0103450:	01 d0                	add    %edx,%eax
c0103452:	0f b6 00             	movzbl (%eax),%eax
c0103455:	84 c0                	test   %al,%al
c0103457:	75 e9                	jne    c0103442 <my_strlen+0x16>
c0103459:	8b 45 f8             	mov    -0x8(%ebp),%eax
c010345c:	c9                   	leave  
c010345d:	c3                   	ret    

c010345e <my_strcmp>:
c010345e:	55                   	push   %ebp
c010345f:	89 e5                	mov    %esp,%ebp
c0103461:	83 ec 10             	sub    $0x10,%esp
c0103464:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c010346b:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0103472:	eb 4a                	jmp    c01034be <my_strcmp+0x60>
c0103474:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0103477:	8b 45 08             	mov    0x8(%ebp),%eax
c010347a:	01 d0                	add    %edx,%eax
c010347c:	0f b6 10             	movzbl (%eax),%edx
c010347f:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0103482:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103485:	01 c8                	add    %ecx,%eax
c0103487:	0f b6 00             	movzbl (%eax),%eax
c010348a:	38 c2                	cmp    %al,%dl
c010348c:	7d 09                	jge    c0103497 <my_strcmp+0x39>
c010348e:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%ebp)
c0103495:	eb 45                	jmp    c01034dc <my_strcmp+0x7e>
c0103497:	8b 55 f8             	mov    -0x8(%ebp),%edx
c010349a:	8b 45 08             	mov    0x8(%ebp),%eax
c010349d:	01 d0                	add    %edx,%eax
c010349f:	0f b6 10             	movzbl (%eax),%edx
c01034a2:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c01034a5:	8b 45 0c             	mov    0xc(%ebp),%eax
c01034a8:	01 c8                	add    %ecx,%eax
c01034aa:	0f b6 00             	movzbl (%eax),%eax
c01034ad:	38 c2                	cmp    %al,%dl
c01034af:	7e 09                	jle    c01034ba <my_strcmp+0x5c>
c01034b1:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
c01034b8:	eb 22                	jmp    c01034dc <my_strcmp+0x7e>
c01034ba:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c01034be:	8b 55 f8             	mov    -0x8(%ebp),%edx
c01034c1:	8b 45 08             	mov    0x8(%ebp),%eax
c01034c4:	01 d0                	add    %edx,%eax
c01034c6:	0f b6 00             	movzbl (%eax),%eax
c01034c9:	84 c0                	test   %al,%al
c01034cb:	74 0f                	je     c01034dc <my_strcmp+0x7e>
c01034cd:	8b 55 f8             	mov    -0x8(%ebp),%edx
c01034d0:	8b 45 0c             	mov    0xc(%ebp),%eax
c01034d3:	01 d0                	add    %edx,%eax
c01034d5:	0f b6 00             	movzbl (%eax),%eax
c01034d8:	84 c0                	test   %al,%al
c01034da:	75 98                	jne    c0103474 <my_strcmp+0x16>
c01034dc:	8b 55 f8             	mov    -0x8(%ebp),%edx
c01034df:	8b 45 08             	mov    0x8(%ebp),%eax
c01034e2:	01 d0                	add    %edx,%eax
c01034e4:	0f b6 00             	movzbl (%eax),%eax
c01034e7:	84 c0                	test   %al,%al
c01034e9:	75 16                	jne    c0103501 <my_strcmp+0xa3>
c01034eb:	8b 55 f8             	mov    -0x8(%ebp),%edx
c01034ee:	8b 45 0c             	mov    0xc(%ebp),%eax
c01034f1:	01 d0                	add    %edx,%eax
c01034f3:	0f b6 00             	movzbl (%eax),%eax
c01034f6:	84 c0                	test   %al,%al
c01034f8:	74 07                	je     c0103501 <my_strcmp+0xa3>
c01034fa:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%ebp)
c0103501:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0103504:	8b 45 08             	mov    0x8(%ebp),%eax
c0103507:	01 d0                	add    %edx,%eax
c0103509:	0f b6 00             	movzbl (%eax),%eax
c010350c:	84 c0                	test   %al,%al
c010350e:	74 16                	je     c0103526 <my_strcmp+0xc8>
c0103510:	8b 55 f8             	mov    -0x8(%ebp),%edx
c0103513:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103516:	01 d0                	add    %edx,%eax
c0103518:	0f b6 00             	movzbl (%eax),%eax
c010351b:	84 c0                	test   %al,%al
c010351d:	75 07                	jne    c0103526 <my_strcmp+0xc8>
c010351f:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
c0103526:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103529:	c9                   	leave  
c010352a:	c3                   	ret    

c010352b <my_strcpy>:
c010352b:	55                   	push   %ebp
c010352c:	89 e5                	mov    %esp,%ebp
c010352e:	83 ec 10             	sub    $0x10,%esp
c0103531:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0103538:	8b 45 10             	mov    0x10(%ebp),%eax
c010353b:	89 45 f8             	mov    %eax,-0x8(%ebp)
c010353e:	eb 2a                	jmp    c010356a <my_strcpy+0x3f>
c0103540:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0103543:	8b 45 08             	mov    0x8(%ebp),%eax
c0103546:	01 c2                	add    %eax,%edx
c0103548:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c010354b:	8b 45 0c             	mov    0xc(%ebp),%eax
c010354e:	01 c8                	add    %ecx,%eax
c0103550:	0f b6 00             	movzbl (%eax),%eax
c0103553:	88 02                	mov    %al,(%edx)
c0103555:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0103558:	8b 45 0c             	mov    0xc(%ebp),%eax
c010355b:	01 d0                	add    %edx,%eax
c010355d:	0f b6 00             	movzbl (%eax),%eax
c0103560:	84 c0                	test   %al,%al
c0103562:	75 02                	jne    c0103566 <my_strcpy+0x3b>
c0103564:	eb 11                	jmp    c0103577 <my_strcpy+0x4c>
c0103566:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c010356a:	8b 45 f8             	mov    -0x8(%ebp),%eax
c010356d:	8d 50 ff             	lea    -0x1(%eax),%edx
c0103570:	89 55 f8             	mov    %edx,-0x8(%ebp)
c0103573:	85 c0                	test   %eax,%eax
c0103575:	75 c9                	jne    c0103540 <my_strcpy+0x15>
c0103577:	8b 55 fc             	mov    -0x4(%ebp),%edx
c010357a:	8b 45 08             	mov    0x8(%ebp),%eax
c010357d:	01 d0                	add    %edx,%eax
c010357f:	c6 00 00             	movb   $0x0,(%eax)
c0103582:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103585:	c9                   	leave  
c0103586:	c3                   	ret    

c0103587 <init_timer>:
c0103587:	55                   	push   %ebp
c0103588:	89 e5                	mov    %esp,%ebp
c010358a:	83 ec 20             	sub    $0x20,%esp
c010358d:	c7 45 fc a9 04 00 00 	movl   $0x4a9,-0x4(%ebp)
c0103594:	c7 45 f8 43 00 00 00 	movl   $0x43,-0x8(%ebp)
c010359b:	c6 45 f7 34          	movb   $0x34,-0x9(%ebp)
c010359f:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c01035a3:	8b 55 f8             	mov    -0x8(%ebp),%edx
c01035a6:	ee                   	out    %al,(%dx)
c01035a7:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01035aa:	99                   	cltd   
c01035ab:	c1 ea 18             	shr    $0x18,%edx
c01035ae:	01 d0                	add    %edx,%eax
c01035b0:	0f b6 c0             	movzbl %al,%eax
c01035b3:	29 d0                	sub    %edx,%eax
c01035b5:	0f b6 c0             	movzbl %al,%eax
c01035b8:	c7 45 f0 40 00 00 00 	movl   $0x40,-0x10(%ebp)
c01035bf:	88 45 ef             	mov    %al,-0x11(%ebp)
c01035c2:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
c01035c6:	8b 55 f0             	mov    -0x10(%ebp),%edx
c01035c9:	ee                   	out    %al,(%dx)
c01035ca:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01035cd:	8d 90 ff 00 00 00    	lea    0xff(%eax),%edx
c01035d3:	85 c0                	test   %eax,%eax
c01035d5:	0f 48 c2             	cmovs  %edx,%eax
c01035d8:	c1 f8 08             	sar    $0x8,%eax
c01035db:	0f b6 c0             	movzbl %al,%eax
c01035de:	c7 45 e8 40 00 00 00 	movl   $0x40,-0x18(%ebp)
c01035e5:	88 45 e7             	mov    %al,-0x19(%ebp)
c01035e8:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
c01035ec:	8b 55 e8             	mov    -0x18(%ebp),%edx
c01035ef:	ee                   	out    %al,(%dx)
c01035f0:	c9                   	leave  
c01035f1:	c3                   	ret    
