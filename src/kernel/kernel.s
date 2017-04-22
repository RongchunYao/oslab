
kernel:     file format elf32-i386


Disassembly of section .text:

00400000 <timer_event>:
  400000:	55                   	push   %ebp
  400001:	89 e5                	mov    %esp,%ebp
  400003:	a1 80 30 40 00       	mov    0x403080,%eax
  400008:	83 c0 01             	add    $0x1,%eax
  40000b:	a3 80 30 40 00       	mov    %eax,0x403080
  400010:	5d                   	pop    %ebp
  400011:	c3                   	ret    

00400012 <get_time>:
  400012:	55                   	push   %ebp
  400013:	89 e5                	mov    %esp,%ebp
  400015:	a1 80 30 40 00       	mov    0x403080,%eax
  40001a:	5d                   	pop    %ebp
  40001b:	c3                   	ret    

0040001c <time_pop>:
  40001c:	55                   	push   %ebp
  40001d:	89 e5                	mov    %esp,%ebp
  40001f:	a1 80 30 40 00       	mov    0x403080,%eax
  400024:	83 c0 01             	add    $0x1,%eax
  400027:	a3 80 30 40 00       	mov    %eax,0x403080
  40002c:	5d                   	pop    %ebp
  40002d:	c3                   	ret    

0040002e <press_key>:
  40002e:	55                   	push   %ebp
  40002f:	89 e5                	mov    %esp,%ebp
  400031:	83 ec 10             	sub    $0x10,%esp
  400034:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  40003b:	e9 91 00 00 00       	jmp    4000d1 <press_key+0xa3>
  400040:	8b 45 fc             	mov    -0x4(%ebp),%eax
  400043:	8b 04 85 00 30 40 00 	mov    0x403000(,%eax,4),%eax
  40004a:	3b 45 08             	cmp    0x8(%ebp),%eax
  40004d:	75 7e                	jne    4000cd <press_key+0x9f>
  40004f:	8b 45 fc             	mov    -0x4(%ebp),%eax
  400052:	c7 04 85 c0 30 40 00 	movl   $0x1,0x4030c0(,%eax,4)
  400059:	01 00 00 00 
  40005d:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  400061:	74 18                	je     40007b <press_key+0x4d>
  400063:	83 7d fc 12          	cmpl   $0x12,-0x4(%ebp)
  400067:	74 12                	je     40007b <press_key+0x4d>
  400069:	83 7d fc 03          	cmpl   $0x3,-0x4(%ebp)
  40006d:	74 0c                	je     40007b <press_key+0x4d>
  40006f:	83 7d fc 16          	cmpl   $0x16,-0x4(%ebp)
  400073:	74 06                	je     40007b <press_key+0x4d>
  400075:	83 7d fc 11          	cmpl   $0x11,-0x4(%ebp)
  400079:	75 52                	jne    4000cd <press_key+0x9f>
  40007b:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  40007f:	75 0f                	jne    400090 <press_key+0x62>
  400081:	a1 84 30 40 00       	mov    0x403084,%eax
  400086:	83 f8 03             	cmp    $0x3,%eax
  400089:	75 05                	jne    400090 <press_key+0x62>
  40008b:	e9 80 00 00 00       	jmp    400110 <press_key+0xe2>
  400090:	83 7d fc 03          	cmpl   $0x3,-0x4(%ebp)
  400094:	75 0b                	jne    4000a1 <press_key+0x73>
  400096:	a1 84 30 40 00       	mov    0x403084,%eax
  40009b:	85 c0                	test   %eax,%eax
  40009d:	75 02                	jne    4000a1 <press_key+0x73>
  40009f:	eb 6f                	jmp    400110 <press_key+0xe2>
  4000a1:	83 7d fc 12          	cmpl   $0x12,-0x4(%ebp)
  4000a5:	75 0c                	jne    4000b3 <press_key+0x85>
  4000a7:	a1 84 30 40 00       	mov    0x403084,%eax
  4000ac:	83 f8 16             	cmp    $0x16,%eax
  4000af:	75 02                	jne    4000b3 <press_key+0x85>
  4000b1:	eb 5d                	jmp    400110 <press_key+0xe2>
  4000b3:	83 7d fc 16          	cmpl   $0x16,-0x4(%ebp)
  4000b7:	75 0c                	jne    4000c5 <press_key+0x97>
  4000b9:	a1 84 30 40 00       	mov    0x403084,%eax
  4000be:	83 f8 12             	cmp    $0x12,%eax
  4000c1:	75 02                	jne    4000c5 <press_key+0x97>
  4000c3:	eb 4b                	jmp    400110 <press_key+0xe2>
  4000c5:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4000c8:	a3 84 30 40 00       	mov    %eax,0x403084
  4000cd:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  4000d1:	83 7d fc 19          	cmpl   $0x19,-0x4(%ebp)
  4000d5:	0f 8e 65 ff ff ff    	jle    400040 <press_key+0x12>
  4000db:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  4000e2:	eb 26                	jmp    40010a <press_key+0xdc>
  4000e4:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4000e7:	8b 04 85 00 30 40 00 	mov    0x403000(,%eax,4),%eax
  4000ee:	8b 55 08             	mov    0x8(%ebp),%edx
  4000f1:	83 c2 80             	add    $0xffffff80,%edx
  4000f4:	39 d0                	cmp    %edx,%eax
  4000f6:	75 0e                	jne    400106 <press_key+0xd8>
  4000f8:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4000fb:	c7 04 85 c0 30 40 00 	movl   $0x0,0x4030c0(,%eax,4)
  400102:	00 00 00 00 
  400106:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  40010a:	83 7d fc 19          	cmpl   $0x19,-0x4(%ebp)
  40010e:	7e d4                	jle    4000e4 <press_key+0xb6>
  400110:	c9                   	leave  
  400111:	c3                   	ret    

00400112 <last_key_code>:
  400112:	55                   	push   %ebp
  400113:	89 e5                	mov    %esp,%ebp
  400115:	a1 84 30 40 00       	mov    0x403084,%eax
  40011a:	5d                   	pop    %ebp
  40011b:	c3                   	ret    

0040011c <reset_last_key>:
  40011c:	55                   	push   %ebp
  40011d:	89 e5                	mov    %esp,%ebp
  40011f:	c7 05 84 30 40 00 00 	movl   $0x0,0x403084
  400126:	00 00 00 
  400129:	5d                   	pop    %ebp
  40012a:	c3                   	ret    

0040012b <keyboard_event>:
  40012b:	55                   	push   %ebp
  40012c:	89 e5                	mov    %esp,%ebp
  40012e:	ff 75 08             	pushl  0x8(%ebp)
  400131:	e8 f8 fe ff ff       	call   40002e <press_key>
  400136:	83 c4 04             	add    $0x4,%esp
  400139:	c9                   	leave  
  40013a:	c3                   	ret    

0040013b <disable_interrupt>:
  40013b:	55                   	push   %ebp
  40013c:	89 e5                	mov    %esp,%ebp
  40013e:	fa                   	cli    
  40013f:	5d                   	pop    %ebp
  400140:	c3                   	ret    

00400141 <main>:
  400141:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  400145:	83 e4 f0             	and    $0xfffffff0,%esp
  400148:	ff 71 fc             	pushl  -0x4(%ecx)
  40014b:	55                   	push   %ebp
  40014c:	89 e5                	mov    %esp,%ebp
  40014e:	51                   	push   %ecx
  40014f:	83 ec 04             	sub    $0x4,%esp
  400152:	fa                   	cli    
  400153:	e8 e3 ff ff ff       	call   40013b <disable_interrupt>
  400158:	e8 f7 00 00 00       	call   400254 <init_serial>
  40015d:	e8 ab 01 00 00       	call   40030d <init_timer>
  400162:	e8 f2 05 00 00       	call   400759 <init_intr>
  400167:	e8 2a 08 00 00       	call   400996 <init_idt>
  40016c:	e8 b7 04 00 00       	call   400628 <init_seg>
  400171:	bc 00 00 3f 00       	mov    $0x3f0000,%esp
  400176:	e8 cf 11 00 00       	call   40134a <load>
  40017b:	e8 98 13 00 00       	call   401518 <init_PCB>
  400180:	a1 c0 3a 40 00       	mov    0x403ac0,%eax
  400185:	a3 88 31 40 00       	mov    %eax,0x403188
  40018a:	c7 05 8c 31 40 00 1b 	movl   $0x1b,0x40318c
  400191:	00 00 00 
  400194:	c7 05 90 31 40 00 02 	movl   $0x202,0x403190
  40019b:	02 00 00 
  40019e:	c7 05 94 31 40 00 00 	movl   $0x1f0000,0x403194
  4001a5:	00 1f 00 
  4001a8:	c7 05 98 31 40 00 23 	movl   $0x23,0x403198
  4001af:	00 00 00 
  4001b2:	83 ec 04             	sub    $0x4,%esp
  4001b5:	6a 00                	push   $0x0
  4001b7:	6a 0a                	push   $0xa
  4001b9:	68 2c 1f 40 00       	push   $0x401f2c
  4001be:	ff 35 98 31 40 00    	pushl  0x403198
  4001c4:	ff 35 94 31 40 00    	pushl  0x403194
  4001ca:	ff 35 90 31 40 00    	pushl  0x403190
  4001d0:	ff 35 8c 31 40 00    	pushl  0x40318c
  4001d6:	ff 35 88 31 40 00    	pushl  0x403188
  4001dc:	ff 35 84 31 40 00    	pushl  0x403184
  4001e2:	ff 35 80 31 40 00    	pushl  0x403180
  4001e8:	ff 35 7c 31 40 00    	pushl  0x40317c
  4001ee:	ff 35 78 31 40 00    	pushl  0x403178
  4001f4:	ff 35 74 31 40 00    	pushl  0x403174
  4001fa:	ff 35 70 31 40 00    	pushl  0x403170
  400200:	ff 35 6c 31 40 00    	pushl  0x40316c
  400206:	ff 35 68 31 40 00    	pushl  0x403168
  40020c:	ff 35 64 31 40 00    	pushl  0x403164
  400212:	ff 35 60 31 40 00    	pushl  0x403160
  400218:	6a 02                	push   $0x2
  40021a:	e8 a2 13 00 00       	call   4015c1 <add_PCB>
  40021f:	83 c4 50             	add    $0x50,%esp
  400222:	e8 22 1a 00 00       	call   401c49 <reschedule>
  400227:	eb fe                	jmp    400227 <main+0xe6>

00400229 <inb>:
  400229:	55                   	push   %ebp
  40022a:	89 e5                	mov    %esp,%ebp
  40022c:	83 ec 10             	sub    $0x10,%esp
  40022f:	8b 45 08             	mov    0x8(%ebp),%eax
  400232:	89 c2                	mov    %eax,%edx
  400234:	ec                   	in     (%dx),%al
  400235:	88 45 ff             	mov    %al,-0x1(%ebp)
  400238:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  40023c:	c9                   	leave  
  40023d:	c3                   	ret    

0040023e <outb>:
  40023e:	55                   	push   %ebp
  40023f:	89 e5                	mov    %esp,%ebp
  400241:	83 ec 04             	sub    $0x4,%esp
  400244:	8b 45 0c             	mov    0xc(%ebp),%eax
  400247:	88 45 fc             	mov    %al,-0x4(%ebp)
  40024a:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  40024e:	8b 55 08             	mov    0x8(%ebp),%edx
  400251:	ee                   	out    %al,(%dx)
  400252:	c9                   	leave  
  400253:	c3                   	ret    

00400254 <init_serial>:
  400254:	55                   	push   %ebp
  400255:	89 e5                	mov    %esp,%ebp
  400257:	6a 00                	push   $0x0
  400259:	68 f9 03 00 00       	push   $0x3f9
  40025e:	e8 db ff ff ff       	call   40023e <outb>
  400263:	83 c4 08             	add    $0x8,%esp
  400266:	68 80 00 00 00       	push   $0x80
  40026b:	68 fb 03 00 00       	push   $0x3fb
  400270:	e8 c9 ff ff ff       	call   40023e <outb>
  400275:	83 c4 08             	add    $0x8,%esp
  400278:	6a 03                	push   $0x3
  40027a:	68 f8 03 00 00       	push   $0x3f8
  40027f:	e8 ba ff ff ff       	call   40023e <outb>
  400284:	83 c4 08             	add    $0x8,%esp
  400287:	6a 00                	push   $0x0
  400289:	68 f9 03 00 00       	push   $0x3f9
  40028e:	e8 ab ff ff ff       	call   40023e <outb>
  400293:	83 c4 08             	add    $0x8,%esp
  400296:	6a 03                	push   $0x3
  400298:	68 fb 03 00 00       	push   $0x3fb
  40029d:	e8 9c ff ff ff       	call   40023e <outb>
  4002a2:	83 c4 08             	add    $0x8,%esp
  4002a5:	68 c7 00 00 00       	push   $0xc7
  4002aa:	68 fa 03 00 00       	push   $0x3fa
  4002af:	e8 8a ff ff ff       	call   40023e <outb>
  4002b4:	83 c4 08             	add    $0x8,%esp
  4002b7:	6a 0b                	push   $0xb
  4002b9:	68 fc 03 00 00       	push   $0x3fc
  4002be:	e8 7b ff ff ff       	call   40023e <outb>
  4002c3:	83 c4 08             	add    $0x8,%esp
  4002c6:	c9                   	leave  
  4002c7:	c3                   	ret    

004002c8 <is_serial_idle>:
  4002c8:	55                   	push   %ebp
  4002c9:	89 e5                	mov    %esp,%ebp
  4002cb:	68 fd 03 00 00       	push   $0x3fd
  4002d0:	e8 54 ff ff ff       	call   400229 <inb>
  4002d5:	83 c4 04             	add    $0x4,%esp
  4002d8:	0f b6 c0             	movzbl %al,%eax
  4002db:	83 e0 20             	and    $0x20,%eax
  4002de:	c9                   	leave  
  4002df:	c3                   	ret    

004002e0 <serial_out>:
  4002e0:	55                   	push   %ebp
  4002e1:	89 e5                	mov    %esp,%ebp
  4002e3:	83 ec 04             	sub    $0x4,%esp
  4002e6:	8b 45 08             	mov    0x8(%ebp),%eax
  4002e9:	88 45 fc             	mov    %al,-0x4(%ebp)
  4002ec:	90                   	nop
  4002ed:	e8 d6 ff ff ff       	call   4002c8 <is_serial_idle>
  4002f2:	85 c0                	test   %eax,%eax
  4002f4:	74 f7                	je     4002ed <serial_out+0xd>
  4002f6:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  4002fa:	0f b6 c0             	movzbl %al,%eax
  4002fd:	50                   	push   %eax
  4002fe:	68 f8 03 00 00       	push   $0x3f8
  400303:	e8 36 ff ff ff       	call   40023e <outb>
  400308:	83 c4 08             	add    $0x8,%esp
  40030b:	c9                   	leave  
  40030c:	c3                   	ret    

0040030d <init_timer>:
  40030d:	55                   	push   %ebp
  40030e:	89 e5                	mov    %esp,%ebp
  400310:	83 ec 20             	sub    $0x20,%esp
  400313:	c7 45 fc a9 04 00 00 	movl   $0x4a9,-0x4(%ebp)
  40031a:	c7 45 f8 43 00 00 00 	movl   $0x43,-0x8(%ebp)
  400321:	c6 45 f7 34          	movb   $0x34,-0x9(%ebp)
  400325:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
  400329:	8b 55 f8             	mov    -0x8(%ebp),%edx
  40032c:	ee                   	out    %al,(%dx)
  40032d:	8b 45 fc             	mov    -0x4(%ebp),%eax
  400330:	99                   	cltd   
  400331:	c1 ea 18             	shr    $0x18,%edx
  400334:	01 d0                	add    %edx,%eax
  400336:	0f b6 c0             	movzbl %al,%eax
  400339:	29 d0                	sub    %edx,%eax
  40033b:	0f b6 c0             	movzbl %al,%eax
  40033e:	c7 45 f0 40 00 00 00 	movl   $0x40,-0x10(%ebp)
  400345:	88 45 ef             	mov    %al,-0x11(%ebp)
  400348:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
  40034c:	8b 55 f0             	mov    -0x10(%ebp),%edx
  40034f:	ee                   	out    %al,(%dx)
  400350:	8b 45 fc             	mov    -0x4(%ebp),%eax
  400353:	8d 90 ff 00 00 00    	lea    0xff(%eax),%edx
  400359:	85 c0                	test   %eax,%eax
  40035b:	0f 48 c2             	cmovs  %edx,%eax
  40035e:	c1 f8 08             	sar    $0x8,%eax
  400361:	0f b6 c0             	movzbl %al,%eax
  400364:	c7 45 e8 40 00 00 00 	movl   $0x40,-0x18(%ebp)
  40036b:	88 45 e7             	mov    %al,-0x19(%ebp)
  40036e:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  400372:	8b 55 e8             	mov    -0x18(%ebp),%edx
  400375:	ee                   	out    %al,(%dx)
  400376:	c9                   	leave  
  400377:	c3                   	ret    

00400378 <write_gdtr>:
  400378:	55                   	push   %ebp
  400379:	89 e5                	mov    %esp,%ebp
  40037b:	8b 45 0c             	mov    0xc(%ebp),%eax
  40037e:	83 e8 01             	sub    $0x1,%eax
  400381:	66 a3 2c 31 40 00    	mov    %ax,0x40312c
  400387:	8b 45 08             	mov    0x8(%ebp),%eax
  40038a:	66 a3 2e 31 40 00    	mov    %ax,0x40312e
  400390:	8b 45 08             	mov    0x8(%ebp),%eax
  400393:	c1 e8 10             	shr    $0x10,%eax
  400396:	66 a3 30 31 40 00    	mov    %ax,0x403130
  40039c:	b8 2c 31 40 00       	mov    $0x40312c,%eax
  4003a1:	0f 01 10             	lgdtl  (%eax)
  4003a4:	5d                   	pop    %ebp
  4003a5:	c3                   	ret    

004003a6 <set_tss>:
  4003a6:	55                   	push   %ebp
  4003a7:	89 e5                	mov    %esp,%ebp
  4003a9:	8b 45 08             	mov    0x8(%ebp),%eax
  4003ac:	a3 44 32 40 00       	mov    %eax,0x403244
  4003b1:	5d                   	pop    %ebp
  4003b2:	c3                   	ret    

004003b3 <Makegdt>:
  4003b3:	55                   	push   %ebp
  4003b4:	89 e5                	mov    %esp,%ebp
  4003b6:	8b 45 08             	mov    0x8(%ebp),%eax
  4003b9:	c1 e8 0c             	shr    $0xc,%eax
  4003bc:	89 c2                	mov    %eax,%edx
  4003be:	8b 45 18             	mov    0x18(%ebp),%eax
  4003c1:	66 89 14 c5 c0 31 40 	mov    %dx,0x4031c0(,%eax,8)
  4003c8:	00 
  4003c9:	8b 45 0c             	mov    0xc(%ebp),%eax
  4003cc:	89 c2                	mov    %eax,%edx
  4003ce:	8b 45 18             	mov    0x18(%ebp),%eax
  4003d1:	66 89 14 c5 c2 31 40 	mov    %dx,0x4031c2(,%eax,8)
  4003d8:	00 
  4003d9:	8b 45 0c             	mov    0xc(%ebp),%eax
  4003dc:	c1 e8 10             	shr    $0x10,%eax
  4003df:	89 c2                	mov    %eax,%edx
  4003e1:	8b 45 18             	mov    0x18(%ebp),%eax
  4003e4:	88 14 c5 c4 31 40 00 	mov    %dl,0x4031c4(,%eax,8)
  4003eb:	8b 45 10             	mov    0x10(%ebp),%eax
  4003ee:	83 e0 0f             	and    $0xf,%eax
  4003f1:	89 c2                	mov    %eax,%edx
  4003f3:	8b 45 18             	mov    0x18(%ebp),%eax
  4003f6:	89 d1                	mov    %edx,%ecx
  4003f8:	83 e1 0f             	and    $0xf,%ecx
  4003fb:	0f b6 14 c5 c5 31 40 	movzbl 0x4031c5(,%eax,8),%edx
  400402:	00 
  400403:	83 e2 f0             	and    $0xfffffff0,%edx
  400406:	09 ca                	or     %ecx,%edx
  400408:	88 14 c5 c5 31 40 00 	mov    %dl,0x4031c5(,%eax,8)
  40040f:	8b 45 18             	mov    0x18(%ebp),%eax
  400412:	0f b6 14 c5 c5 31 40 	movzbl 0x4031c5(,%eax,8),%edx
  400419:	00 
  40041a:	83 ca 10             	or     $0x10,%edx
  40041d:	88 14 c5 c5 31 40 00 	mov    %dl,0x4031c5(,%eax,8)
  400424:	8b 45 14             	mov    0x14(%ebp),%eax
  400427:	83 e0 03             	and    $0x3,%eax
  40042a:	89 c2                	mov    %eax,%edx
  40042c:	8b 45 18             	mov    0x18(%ebp),%eax
  40042f:	83 e2 03             	and    $0x3,%edx
  400432:	89 d1                	mov    %edx,%ecx
  400434:	c1 e1 05             	shl    $0x5,%ecx
  400437:	0f b6 14 c5 c5 31 40 	movzbl 0x4031c5(,%eax,8),%edx
  40043e:	00 
  40043f:	83 e2 9f             	and    $0xffffff9f,%edx
  400442:	09 ca                	or     %ecx,%edx
  400444:	88 14 c5 c5 31 40 00 	mov    %dl,0x4031c5(,%eax,8)
  40044b:	8b 45 18             	mov    0x18(%ebp),%eax
  40044e:	0f b6 14 c5 c5 31 40 	movzbl 0x4031c5(,%eax,8),%edx
  400455:	00 
  400456:	83 ca 80             	or     $0xffffff80,%edx
  400459:	88 14 c5 c5 31 40 00 	mov    %dl,0x4031c5(,%eax,8)
  400460:	8b 45 08             	mov    0x8(%ebp),%eax
  400463:	c1 e8 1c             	shr    $0x1c,%eax
  400466:	83 e0 0f             	and    $0xf,%eax
  400469:	89 c2                	mov    %eax,%edx
  40046b:	8b 45 18             	mov    0x18(%ebp),%eax
  40046e:	89 d1                	mov    %edx,%ecx
  400470:	83 e1 0f             	and    $0xf,%ecx
  400473:	0f b6 14 c5 c6 31 40 	movzbl 0x4031c6(,%eax,8),%edx
  40047a:	00 
  40047b:	83 e2 f0             	and    $0xfffffff0,%edx
  40047e:	09 ca                	or     %ecx,%edx
  400480:	88 14 c5 c6 31 40 00 	mov    %dl,0x4031c6(,%eax,8)
  400487:	8b 45 18             	mov    0x18(%ebp),%eax
  40048a:	0f b6 14 c5 c6 31 40 	movzbl 0x4031c6(,%eax,8),%edx
  400491:	00 
  400492:	83 e2 ef             	and    $0xffffffef,%edx
  400495:	88 14 c5 c6 31 40 00 	mov    %dl,0x4031c6(,%eax,8)
  40049c:	8b 45 18             	mov    0x18(%ebp),%eax
  40049f:	0f b6 14 c5 c6 31 40 	movzbl 0x4031c6(,%eax,8),%edx
  4004a6:	00 
  4004a7:	83 e2 df             	and    $0xffffffdf,%edx
  4004aa:	88 14 c5 c6 31 40 00 	mov    %dl,0x4031c6(,%eax,8)
  4004b1:	8b 45 18             	mov    0x18(%ebp),%eax
  4004b4:	0f b6 14 c5 c6 31 40 	movzbl 0x4031c6(,%eax,8),%edx
  4004bb:	00 
  4004bc:	83 ca 40             	or     $0x40,%edx
  4004bf:	88 14 c5 c6 31 40 00 	mov    %dl,0x4031c6(,%eax,8)
  4004c6:	8b 45 18             	mov    0x18(%ebp),%eax
  4004c9:	0f b6 14 c5 c6 31 40 	movzbl 0x4031c6(,%eax,8),%edx
  4004d0:	00 
  4004d1:	83 ca 80             	or     $0xffffff80,%edx
  4004d4:	88 14 c5 c6 31 40 00 	mov    %dl,0x4031c6(,%eax,8)
  4004db:	8b 45 0c             	mov    0xc(%ebp),%eax
  4004de:	c1 e8 18             	shr    $0x18,%eax
  4004e1:	89 c2                	mov    %eax,%edx
  4004e3:	8b 45 18             	mov    0x18(%ebp),%eax
  4004e6:	88 14 c5 c7 31 40 00 	mov    %dl,0x4031c7(,%eax,8)
  4004ed:	5d                   	pop    %ebp
  4004ee:	c3                   	ret    

004004ef <Maketss>:
  4004ef:	55                   	push   %ebp
  4004f0:	89 e5                	mov    %esp,%ebp
  4004f2:	8b 45 08             	mov    0x8(%ebp),%eax
  4004f5:	89 c2                	mov    %eax,%edx
  4004f7:	8b 45 18             	mov    0x18(%ebp),%eax
  4004fa:	66 89 14 c5 c0 31 40 	mov    %dx,0x4031c0(,%eax,8)
  400501:	00 
  400502:	8b 45 0c             	mov    0xc(%ebp),%eax
  400505:	89 c2                	mov    %eax,%edx
  400507:	8b 45 18             	mov    0x18(%ebp),%eax
  40050a:	66 89 14 c5 c2 31 40 	mov    %dx,0x4031c2(,%eax,8)
  400511:	00 
  400512:	8b 45 0c             	mov    0xc(%ebp),%eax
  400515:	c1 e8 10             	shr    $0x10,%eax
  400518:	89 c2                	mov    %eax,%edx
  40051a:	8b 45 18             	mov    0x18(%ebp),%eax
  40051d:	88 14 c5 c4 31 40 00 	mov    %dl,0x4031c4(,%eax,8)
  400524:	8b 45 10             	mov    0x10(%ebp),%eax
  400527:	83 e0 0f             	and    $0xf,%eax
  40052a:	89 c2                	mov    %eax,%edx
  40052c:	8b 45 18             	mov    0x18(%ebp),%eax
  40052f:	89 d1                	mov    %edx,%ecx
  400531:	83 e1 0f             	and    $0xf,%ecx
  400534:	0f b6 14 c5 c5 31 40 	movzbl 0x4031c5(,%eax,8),%edx
  40053b:	00 
  40053c:	83 e2 f0             	and    $0xfffffff0,%edx
  40053f:	09 ca                	or     %ecx,%edx
  400541:	88 14 c5 c5 31 40 00 	mov    %dl,0x4031c5(,%eax,8)
  400548:	8b 45 18             	mov    0x18(%ebp),%eax
  40054b:	0f b6 14 c5 c5 31 40 	movzbl 0x4031c5(,%eax,8),%edx
  400552:	00 
  400553:	83 e2 ef             	and    $0xffffffef,%edx
  400556:	88 14 c5 c5 31 40 00 	mov    %dl,0x4031c5(,%eax,8)
  40055d:	8b 45 14             	mov    0x14(%ebp),%eax
  400560:	83 e0 03             	and    $0x3,%eax
  400563:	89 c2                	mov    %eax,%edx
  400565:	8b 45 18             	mov    0x18(%ebp),%eax
  400568:	83 e2 03             	and    $0x3,%edx
  40056b:	89 d1                	mov    %edx,%ecx
  40056d:	c1 e1 05             	shl    $0x5,%ecx
  400570:	0f b6 14 c5 c5 31 40 	movzbl 0x4031c5(,%eax,8),%edx
  400577:	00 
  400578:	83 e2 9f             	and    $0xffffff9f,%edx
  40057b:	09 ca                	or     %ecx,%edx
  40057d:	88 14 c5 c5 31 40 00 	mov    %dl,0x4031c5(,%eax,8)
  400584:	8b 45 18             	mov    0x18(%ebp),%eax
  400587:	0f b6 14 c5 c5 31 40 	movzbl 0x4031c5(,%eax,8),%edx
  40058e:	00 
  40058f:	83 ca 80             	or     $0xffffff80,%edx
  400592:	88 14 c5 c5 31 40 00 	mov    %dl,0x4031c5(,%eax,8)
  400599:	8b 45 08             	mov    0x8(%ebp),%eax
  40059c:	c1 e8 10             	shr    $0x10,%eax
  40059f:	83 e0 0f             	and    $0xf,%eax
  4005a2:	89 c2                	mov    %eax,%edx
  4005a4:	8b 45 18             	mov    0x18(%ebp),%eax
  4005a7:	89 d1                	mov    %edx,%ecx
  4005a9:	83 e1 0f             	and    $0xf,%ecx
  4005ac:	0f b6 14 c5 c6 31 40 	movzbl 0x4031c6(,%eax,8),%edx
  4005b3:	00 
  4005b4:	83 e2 f0             	and    $0xfffffff0,%edx
  4005b7:	09 ca                	or     %ecx,%edx
  4005b9:	88 14 c5 c6 31 40 00 	mov    %dl,0x4031c6(,%eax,8)
  4005c0:	8b 45 18             	mov    0x18(%ebp),%eax
  4005c3:	0f b6 14 c5 c6 31 40 	movzbl 0x4031c6(,%eax,8),%edx
  4005ca:	00 
  4005cb:	83 e2 ef             	and    $0xffffffef,%edx
  4005ce:	88 14 c5 c6 31 40 00 	mov    %dl,0x4031c6(,%eax,8)
  4005d5:	8b 45 18             	mov    0x18(%ebp),%eax
  4005d8:	0f b6 14 c5 c6 31 40 	movzbl 0x4031c6(,%eax,8),%edx
  4005df:	00 
  4005e0:	83 e2 df             	and    $0xffffffdf,%edx
  4005e3:	88 14 c5 c6 31 40 00 	mov    %dl,0x4031c6(,%eax,8)
  4005ea:	8b 45 18             	mov    0x18(%ebp),%eax
  4005ed:	0f b6 14 c5 c6 31 40 	movzbl 0x4031c6(,%eax,8),%edx
  4005f4:	00 
  4005f5:	83 ca 40             	or     $0x40,%edx
  4005f8:	88 14 c5 c6 31 40 00 	mov    %dl,0x4031c6(,%eax,8)
  4005ff:	8b 45 18             	mov    0x18(%ebp),%eax
  400602:	0f b6 14 c5 c6 31 40 	movzbl 0x4031c6(,%eax,8),%edx
  400609:	00 
  40060a:	83 ca 80             	or     $0xffffff80,%edx
  40060d:	88 14 c5 c6 31 40 00 	mov    %dl,0x4031c6(,%eax,8)
  400614:	8b 45 0c             	mov    0xc(%ebp),%eax
  400617:	c1 e8 18             	shr    $0x18,%eax
  40061a:	89 c2                	mov    %eax,%edx
  40061c:	8b 45 18             	mov    0x18(%ebp),%eax
  40061f:	88 14 c5 c7 31 40 00 	mov    %dl,0x4031c7(,%eax,8)
  400626:	5d                   	pop    %ebp
  400627:	c3                   	ret    

00400628 <init_seg>:
  400628:	55                   	push   %ebp
  400629:	89 e5                	mov    %esp,%ebp
  40062b:	83 ec 10             	sub    $0x10,%esp
  40062e:	c7 05 28 31 40 00 00 	movl   $0x0,0x403128
  400635:	00 00 00 
  400638:	6a 00                	push   $0x0
  40063a:	6a 00                	push   $0x0
  40063c:	6a 00                	push   $0x0
  40063e:	6a 00                	push   $0x0
  400640:	6a 00                	push   $0x0
  400642:	e8 6c fd ff ff       	call   4003b3 <Makegdt>
  400647:	83 c4 14             	add    $0x14,%esp
  40064a:	a1 28 31 40 00       	mov    0x403128,%eax
  40064f:	83 c0 01             	add    $0x1,%eax
  400652:	a3 28 31 40 00       	mov    %eax,0x403128
  400657:	a1 28 31 40 00       	mov    0x403128,%eax
  40065c:	50                   	push   %eax
  40065d:	6a 00                	push   $0x0
  40065f:	6a 0a                	push   $0xa
  400661:	6a 00                	push   $0x0
  400663:	6a ff                	push   $0xffffffff
  400665:	e8 49 fd ff ff       	call   4003b3 <Makegdt>
  40066a:	83 c4 14             	add    $0x14,%esp
  40066d:	a1 28 31 40 00       	mov    0x403128,%eax
  400672:	83 c0 01             	add    $0x1,%eax
  400675:	a3 28 31 40 00       	mov    %eax,0x403128
  40067a:	a1 28 31 40 00       	mov    0x403128,%eax
  40067f:	50                   	push   %eax
  400680:	6a 00                	push   $0x0
  400682:	6a 02                	push   $0x2
  400684:	6a 00                	push   $0x0
  400686:	6a ff                	push   $0xffffffff
  400688:	e8 26 fd ff ff       	call   4003b3 <Makegdt>
  40068d:	83 c4 14             	add    $0x14,%esp
  400690:	a1 28 31 40 00       	mov    0x403128,%eax
  400695:	83 c0 01             	add    $0x1,%eax
  400698:	a3 28 31 40 00       	mov    %eax,0x403128
  40069d:	a1 28 31 40 00       	mov    0x403128,%eax
  4006a2:	50                   	push   %eax
  4006a3:	6a 03                	push   $0x3
  4006a5:	6a 0a                	push   $0xa
  4006a7:	6a 00                	push   $0x0
  4006a9:	6a ff                	push   $0xffffffff
  4006ab:	e8 03 fd ff ff       	call   4003b3 <Makegdt>
  4006b0:	83 c4 14             	add    $0x14,%esp
  4006b3:	a1 28 31 40 00       	mov    0x403128,%eax
  4006b8:	83 c0 01             	add    $0x1,%eax
  4006bb:	a3 28 31 40 00       	mov    %eax,0x403128
  4006c0:	a1 28 31 40 00       	mov    0x403128,%eax
  4006c5:	50                   	push   %eax
  4006c6:	6a 03                	push   $0x3
  4006c8:	6a 02                	push   $0x2
  4006ca:	6a 00                	push   $0x0
  4006cc:	6a ff                	push   $0xffffffff
  4006ce:	e8 e0 fc ff ff       	call   4003b3 <Makegdt>
  4006d3:	83 c4 14             	add    $0x14,%esp
  4006d6:	a1 28 31 40 00       	mov    0x403128,%eax
  4006db:	83 c0 01             	add    $0x1,%eax
  4006de:	a3 28 31 40 00       	mov    %eax,0x403128
  4006e3:	c7 05 44 32 40 00 00 	movl   $0x2f0000,0x403244
  4006ea:	00 2f 00 
  4006ed:	66 c7 05 48 32 40 00 	movw   $0x10,0x403248
  4006f4:	10 00 
  4006f6:	a1 28 31 40 00       	mov    0x403128,%eax
  4006fb:	ba 40 32 40 00       	mov    $0x403240,%edx
  400700:	50                   	push   %eax
  400701:	6a 00                	push   $0x0
  400703:	6a 09                	push   $0x9
  400705:	52                   	push   %edx
  400706:	6a ff                	push   $0xffffffff
  400708:	e8 e2 fd ff ff       	call   4004ef <Maketss>
  40070d:	83 c4 14             	add    $0x14,%esp
  400710:	a1 28 31 40 00       	mov    0x403128,%eax
  400715:	83 c0 01             	add    $0x1,%eax
  400718:	a3 28 31 40 00       	mov    %eax,0x403128
  40071d:	66 c7 05 9c 32 40 00 	movw   $0x2b,0x40329c
  400724:	2b 00 
  400726:	66 b8 10 00          	mov    $0x10,%ax
  40072a:	8e d8                	mov    %eax,%ds
  40072c:	8e c0                	mov    %eax,%es
  40072e:	8e d0                	mov    %eax,%ss
  400730:	68 80 00 00 00       	push   $0x80
  400735:	68 c0 31 40 00       	push   $0x4031c0
  40073a:	e8 39 fc ff ff       	call   400378 <write_gdtr>
  40073f:	83 c4 08             	add    $0x8,%esp
  400742:	0f b7 05 9c 32 40 00 	movzwl 0x40329c,%eax
  400749:	0f b7 c0             	movzwl %ax,%eax
  40074c:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
  400750:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
  400754:	0f 00 d8             	ltr    %ax
  400757:	c9                   	leave  
  400758:	c3                   	ret    

00400759 <init_intr>:
  400759:	55                   	push   %ebp
  40075a:	89 e5                	mov    %esp,%ebp
  40075c:	83 ec 70             	sub    $0x70,%esp
  40075f:	c7 45 fc 21 00 00 00 	movl   $0x21,-0x4(%ebp)
  400766:	c6 45 fb ff          	movb   $0xff,-0x5(%ebp)
  40076a:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
  40076e:	8b 55 fc             	mov    -0x4(%ebp),%edx
  400771:	ee                   	out    %al,(%dx)
  400772:	c7 45 f4 a1 00 00 00 	movl   $0xa1,-0xc(%ebp)
  400779:	c6 45 f3 ff          	movb   $0xff,-0xd(%ebp)
  40077d:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  400781:	8b 55 f4             	mov    -0xc(%ebp),%edx
  400784:	ee                   	out    %al,(%dx)
  400785:	c7 45 ec 20 00 00 00 	movl   $0x20,-0x14(%ebp)
  40078c:	c6 45 eb 11          	movb   $0x11,-0x15(%ebp)
  400790:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  400794:	8b 55 ec             	mov    -0x14(%ebp),%edx
  400797:	ee                   	out    %al,(%dx)
  400798:	c7 45 e4 21 00 00 00 	movl   $0x21,-0x1c(%ebp)
  40079f:	c6 45 e3 20          	movb   $0x20,-0x1d(%ebp)
  4007a3:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
  4007a7:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  4007aa:	ee                   	out    %al,(%dx)
  4007ab:	c7 45 dc 21 00 00 00 	movl   $0x21,-0x24(%ebp)
  4007b2:	c6 45 db 04          	movb   $0x4,-0x25(%ebp)
  4007b6:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
  4007ba:	8b 55 dc             	mov    -0x24(%ebp),%edx
  4007bd:	ee                   	out    %al,(%dx)
  4007be:	c7 45 d4 21 00 00 00 	movl   $0x21,-0x2c(%ebp)
  4007c5:	c6 45 d3 03          	movb   $0x3,-0x2d(%ebp)
  4007c9:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
  4007cd:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  4007d0:	ee                   	out    %al,(%dx)
  4007d1:	c7 45 cc a0 00 00 00 	movl   $0xa0,-0x34(%ebp)
  4007d8:	c6 45 cb 11          	movb   $0x11,-0x35(%ebp)
  4007dc:	0f b6 45 cb          	movzbl -0x35(%ebp),%eax
  4007e0:	8b 55 cc             	mov    -0x34(%ebp),%edx
  4007e3:	ee                   	out    %al,(%dx)
  4007e4:	c7 45 c4 a1 00 00 00 	movl   $0xa1,-0x3c(%ebp)
  4007eb:	c6 45 c3 28          	movb   $0x28,-0x3d(%ebp)
  4007ef:	0f b6 45 c3          	movzbl -0x3d(%ebp),%eax
  4007f3:	8b 55 c4             	mov    -0x3c(%ebp),%edx
  4007f6:	ee                   	out    %al,(%dx)
  4007f7:	c7 45 bc a1 00 00 00 	movl   $0xa1,-0x44(%ebp)
  4007fe:	c6 45 bb 02          	movb   $0x2,-0x45(%ebp)
  400802:	0f b6 45 bb          	movzbl -0x45(%ebp),%eax
  400806:	8b 55 bc             	mov    -0x44(%ebp),%edx
  400809:	ee                   	out    %al,(%dx)
  40080a:	c7 45 b4 a1 00 00 00 	movl   $0xa1,-0x4c(%ebp)
  400811:	c6 45 b3 03          	movb   $0x3,-0x4d(%ebp)
  400815:	0f b6 45 b3          	movzbl -0x4d(%ebp),%eax
  400819:	8b 55 b4             	mov    -0x4c(%ebp),%edx
  40081c:	ee                   	out    %al,(%dx)
  40081d:	c7 45 ac 20 00 00 00 	movl   $0x20,-0x54(%ebp)
  400824:	c6 45 ab 68          	movb   $0x68,-0x55(%ebp)
  400828:	0f b6 45 ab          	movzbl -0x55(%ebp),%eax
  40082c:	8b 55 ac             	mov    -0x54(%ebp),%edx
  40082f:	ee                   	out    %al,(%dx)
  400830:	c7 45 a4 20 00 00 00 	movl   $0x20,-0x5c(%ebp)
  400837:	c6 45 a3 0a          	movb   $0xa,-0x5d(%ebp)
  40083b:	0f b6 45 a3          	movzbl -0x5d(%ebp),%eax
  40083f:	8b 55 a4             	mov    -0x5c(%ebp),%edx
  400842:	ee                   	out    %al,(%dx)
  400843:	c7 45 9c a0 00 00 00 	movl   $0xa0,-0x64(%ebp)
  40084a:	c6 45 9b 68          	movb   $0x68,-0x65(%ebp)
  40084e:	0f b6 45 9b          	movzbl -0x65(%ebp),%eax
  400852:	8b 55 9c             	mov    -0x64(%ebp),%edx
  400855:	ee                   	out    %al,(%dx)
  400856:	c7 45 94 a0 00 00 00 	movl   $0xa0,-0x6c(%ebp)
  40085d:	c6 45 93 0a          	movb   $0xa,-0x6d(%ebp)
  400861:	0f b6 45 93          	movzbl -0x6d(%ebp),%eax
  400865:	8b 55 94             	mov    -0x6c(%ebp),%edx
  400868:	ee                   	out    %al,(%dx)
  400869:	c9                   	leave  
  40086a:	c3                   	ret    

0040086b <save_idt>:
  40086b:	55                   	push   %ebp
  40086c:	89 e5                	mov    %esp,%ebp
  40086e:	8b 45 0c             	mov    0xc(%ebp),%eax
  400871:	83 e8 01             	sub    $0x1,%eax
  400874:	66 a3 32 31 40 00    	mov    %ax,0x403132
  40087a:	8b 45 08             	mov    0x8(%ebp),%eax
  40087d:	66 a3 34 31 40 00    	mov    %ax,0x403134
  400883:	8b 45 08             	mov    0x8(%ebp),%eax
  400886:	c1 e8 10             	shr    $0x10,%eax
  400889:	66 a3 36 31 40 00    	mov    %ax,0x403136
  40088f:	b8 32 31 40 00       	mov    $0x403132,%eax
  400894:	0f 01 18             	lidtl  (%eax)
  400897:	5d                   	pop    %ebp
  400898:	c3                   	ret    

00400899 <set_intr>:
  400899:	55                   	push   %ebp
  40089a:	89 e5                	mov    %esp,%ebp
  40089c:	8b 45 10             	mov    0x10(%ebp),%eax
  40089f:	89 c2                	mov    %eax,%edx
  4008a1:	8b 45 08             	mov    0x8(%ebp),%eax
  4008a4:	66 89 10             	mov    %dx,(%eax)
  4008a7:	8b 45 0c             	mov    0xc(%ebp),%eax
  4008aa:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  4008b1:	8b 45 08             	mov    0x8(%ebp),%eax
  4008b4:	66 89 50 02          	mov    %dx,0x2(%eax)
  4008b8:	8b 45 08             	mov    0x8(%ebp),%eax
  4008bb:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  4008bf:	8b 45 08             	mov    0x8(%ebp),%eax
  4008c2:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  4008c6:	83 e2 f0             	and    $0xfffffff0,%edx
  4008c9:	83 ca 0e             	or     $0xe,%edx
  4008cc:	88 50 05             	mov    %dl,0x5(%eax)
  4008cf:	8b 45 08             	mov    0x8(%ebp),%eax
  4008d2:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  4008d6:	83 e2 ef             	and    $0xffffffef,%edx
  4008d9:	88 50 05             	mov    %dl,0x5(%eax)
  4008dc:	8b 45 14             	mov    0x14(%ebp),%eax
  4008df:	83 e0 03             	and    $0x3,%eax
  4008e2:	89 c2                	mov    %eax,%edx
  4008e4:	8b 45 08             	mov    0x8(%ebp),%eax
  4008e7:	83 e2 03             	and    $0x3,%edx
  4008ea:	89 d1                	mov    %edx,%ecx
  4008ec:	c1 e1 05             	shl    $0x5,%ecx
  4008ef:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  4008f3:	83 e2 9f             	and    $0xffffff9f,%edx
  4008f6:	09 ca                	or     %ecx,%edx
  4008f8:	88 50 05             	mov    %dl,0x5(%eax)
  4008fb:	8b 45 08             	mov    0x8(%ebp),%eax
  4008fe:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  400902:	83 ca 80             	or     $0xffffff80,%edx
  400905:	88 50 05             	mov    %dl,0x5(%eax)
  400908:	8b 45 10             	mov    0x10(%ebp),%eax
  40090b:	c1 e8 10             	shr    $0x10,%eax
  40090e:	89 c2                	mov    %eax,%edx
  400910:	8b 45 08             	mov    0x8(%ebp),%eax
  400913:	66 89 50 06          	mov    %dx,0x6(%eax)
  400917:	5d                   	pop    %ebp
  400918:	c3                   	ret    

00400919 <set_trap>:
  400919:	55                   	push   %ebp
  40091a:	89 e5                	mov    %esp,%ebp
  40091c:	8b 45 10             	mov    0x10(%ebp),%eax
  40091f:	89 c2                	mov    %eax,%edx
  400921:	8b 45 08             	mov    0x8(%ebp),%eax
  400924:	66 89 10             	mov    %dx,(%eax)
  400927:	8b 45 0c             	mov    0xc(%ebp),%eax
  40092a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  400931:	8b 45 08             	mov    0x8(%ebp),%eax
  400934:	66 89 50 02          	mov    %dx,0x2(%eax)
  400938:	8b 45 08             	mov    0x8(%ebp),%eax
  40093b:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  40093f:	8b 45 08             	mov    0x8(%ebp),%eax
  400942:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  400946:	83 ca 0f             	or     $0xf,%edx
  400949:	88 50 05             	mov    %dl,0x5(%eax)
  40094c:	8b 45 08             	mov    0x8(%ebp),%eax
  40094f:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  400953:	83 e2 ef             	and    $0xffffffef,%edx
  400956:	88 50 05             	mov    %dl,0x5(%eax)
  400959:	8b 45 14             	mov    0x14(%ebp),%eax
  40095c:	83 e0 03             	and    $0x3,%eax
  40095f:	89 c2                	mov    %eax,%edx
  400961:	8b 45 08             	mov    0x8(%ebp),%eax
  400964:	83 e2 03             	and    $0x3,%edx
  400967:	89 d1                	mov    %edx,%ecx
  400969:	c1 e1 05             	shl    $0x5,%ecx
  40096c:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  400970:	83 e2 9f             	and    $0xffffff9f,%edx
  400973:	09 ca                	or     %ecx,%edx
  400975:	88 50 05             	mov    %dl,0x5(%eax)
  400978:	8b 45 08             	mov    0x8(%ebp),%eax
  40097b:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  40097f:	83 ca 80             	or     $0xffffff80,%edx
  400982:	88 50 05             	mov    %dl,0x5(%eax)
  400985:	8b 45 10             	mov    0x10(%ebp),%eax
  400988:	c1 e8 10             	shr    $0x10,%eax
  40098b:	89 c2                	mov    %eax,%edx
  40098d:	8b 45 08             	mov    0x8(%ebp),%eax
  400990:	66 89 50 06          	mov    %dx,0x6(%eax)
  400994:	5d                   	pop    %ebp
  400995:	c3                   	ret    

00400996 <init_idt>:
  400996:	55                   	push   %ebp
  400997:	89 e5                	mov    %esp,%ebp
  400999:	83 ec 10             	sub    $0x10,%esp
  40099c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  4009a3:	eb 22                	jmp    4009c7 <init_idt+0x31>
  4009a5:	ba 33 0c 40 00       	mov    $0x400c33,%edx
  4009aa:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4009ad:	c1 e0 03             	shl    $0x3,%eax
  4009b0:	05 c0 32 40 00       	add    $0x4032c0,%eax
  4009b5:	6a 00                	push   $0x0
  4009b7:	52                   	push   %edx
  4009b8:	6a 01                	push   $0x1
  4009ba:	50                   	push   %eax
  4009bb:	e8 59 ff ff ff       	call   400919 <set_trap>
  4009c0:	83 c4 10             	add    $0x10,%esp
  4009c3:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  4009c7:	81 7d fc ff 00 00 00 	cmpl   $0xff,-0x4(%ebp)
  4009ce:	7e d5                	jle    4009a5 <init_idt+0xf>
  4009d0:	b8 99 0b 40 00       	mov    $0x400b99,%eax
  4009d5:	6a 00                	push   $0x0
  4009d7:	50                   	push   %eax
  4009d8:	6a 01                	push   $0x1
  4009da:	68 c0 32 40 00       	push   $0x4032c0
  4009df:	e8 35 ff ff ff       	call   400919 <set_trap>
  4009e4:	83 c4 10             	add    $0x10,%esp
  4009e7:	b8 a3 0b 40 00       	mov    $0x400ba3,%eax
  4009ec:	6a 00                	push   $0x0
  4009ee:	50                   	push   %eax
  4009ef:	6a 01                	push   $0x1
  4009f1:	68 c8 32 40 00       	push   $0x4032c8
  4009f6:	e8 1e ff ff ff       	call   400919 <set_trap>
  4009fb:	83 c4 10             	add    $0x10,%esp
  4009fe:	b8 ad 0b 40 00       	mov    $0x400bad,%eax
  400a03:	6a 00                	push   $0x0
  400a05:	50                   	push   %eax
  400a06:	6a 01                	push   $0x1
  400a08:	68 d0 32 40 00       	push   $0x4032d0
  400a0d:	e8 07 ff ff ff       	call   400919 <set_trap>
  400a12:	83 c4 10             	add    $0x10,%esp
  400a15:	b8 b7 0b 40 00       	mov    $0x400bb7,%eax
  400a1a:	6a 00                	push   $0x0
  400a1c:	50                   	push   %eax
  400a1d:	6a 01                	push   $0x1
  400a1f:	68 d8 32 40 00       	push   $0x4032d8
  400a24:	e8 f0 fe ff ff       	call   400919 <set_trap>
  400a29:	83 c4 10             	add    $0x10,%esp
  400a2c:	b8 be 0b 40 00       	mov    $0x400bbe,%eax
  400a31:	6a 00                	push   $0x0
  400a33:	50                   	push   %eax
  400a34:	6a 01                	push   $0x1
  400a36:	68 e0 32 40 00       	push   $0x4032e0
  400a3b:	e8 d9 fe ff ff       	call   400919 <set_trap>
  400a40:	83 c4 10             	add    $0x10,%esp
  400a43:	b8 c5 0b 40 00       	mov    $0x400bc5,%eax
  400a48:	6a 00                	push   $0x0
  400a4a:	50                   	push   %eax
  400a4b:	6a 01                	push   $0x1
  400a4d:	68 e8 32 40 00       	push   $0x4032e8
  400a52:	e8 c2 fe ff ff       	call   400919 <set_trap>
  400a57:	83 c4 10             	add    $0x10,%esp
  400a5a:	b8 cc 0b 40 00       	mov    $0x400bcc,%eax
  400a5f:	6a 00                	push   $0x0
  400a61:	50                   	push   %eax
  400a62:	6a 01                	push   $0x1
  400a64:	68 f0 32 40 00       	push   $0x4032f0
  400a69:	e8 ab fe ff ff       	call   400919 <set_trap>
  400a6e:	83 c4 10             	add    $0x10,%esp
  400a71:	b8 d3 0b 40 00       	mov    $0x400bd3,%eax
  400a76:	6a 00                	push   $0x0
  400a78:	50                   	push   %eax
  400a79:	6a 01                	push   $0x1
  400a7b:	68 f8 32 40 00       	push   $0x4032f8
  400a80:	e8 94 fe ff ff       	call   400919 <set_trap>
  400a85:	83 c4 10             	add    $0x10,%esp
  400a88:	b8 da 0b 40 00       	mov    $0x400bda,%eax
  400a8d:	6a 00                	push   $0x0
  400a8f:	50                   	push   %eax
  400a90:	6a 01                	push   $0x1
  400a92:	68 00 33 40 00       	push   $0x403300
  400a97:	e8 7d fe ff ff       	call   400919 <set_trap>
  400a9c:	83 c4 10             	add    $0x10,%esp
  400a9f:	b8 e1 0b 40 00       	mov    $0x400be1,%eax
  400aa4:	6a 00                	push   $0x0
  400aa6:	50                   	push   %eax
  400aa7:	6a 01                	push   $0x1
  400aa9:	68 08 33 40 00       	push   $0x403308
  400aae:	e8 66 fe ff ff       	call   400919 <set_trap>
  400ab3:	83 c4 10             	add    $0x10,%esp
  400ab6:	b8 e8 0b 40 00       	mov    $0x400be8,%eax
  400abb:	6a 00                	push   $0x0
  400abd:	50                   	push   %eax
  400abe:	6a 01                	push   $0x1
  400ac0:	68 10 33 40 00       	push   $0x403310
  400ac5:	e8 4f fe ff ff       	call   400919 <set_trap>
  400aca:	83 c4 10             	add    $0x10,%esp
  400acd:	b8 ef 0b 40 00       	mov    $0x400bef,%eax
  400ad2:	6a 00                	push   $0x0
  400ad4:	50                   	push   %eax
  400ad5:	6a 01                	push   $0x1
  400ad7:	68 18 33 40 00       	push   $0x403318
  400adc:	e8 38 fe ff ff       	call   400919 <set_trap>
  400ae1:	83 c4 10             	add    $0x10,%esp
  400ae4:	b8 f6 0b 40 00       	mov    $0x400bf6,%eax
  400ae9:	6a 00                	push   $0x0
  400aeb:	50                   	push   %eax
  400aec:	6a 01                	push   $0x1
  400aee:	68 20 33 40 00       	push   $0x403320
  400af3:	e8 21 fe ff ff       	call   400919 <set_trap>
  400af8:	83 c4 10             	add    $0x10,%esp
  400afb:	b8 fd 0b 40 00       	mov    $0x400bfd,%eax
  400b00:	6a 00                	push   $0x0
  400b02:	50                   	push   %eax
  400b03:	6a 01                	push   $0x1
  400b05:	68 28 33 40 00       	push   $0x403328
  400b0a:	e8 0a fe ff ff       	call   400919 <set_trap>
  400b0f:	83 c4 10             	add    $0x10,%esp
  400b12:	b8 04 0c 40 00       	mov    $0x400c04,%eax
  400b17:	6a 00                	push   $0x0
  400b19:	50                   	push   %eax
  400b1a:	6a 01                	push   $0x1
  400b1c:	68 30 33 40 00       	push   $0x403330
  400b21:	e8 f3 fd ff ff       	call   400919 <set_trap>
  400b26:	83 c4 10             	add    $0x10,%esp
  400b29:	b8 0b 0c 40 00       	mov    $0x400c0b,%eax
  400b2e:	6a 00                	push   $0x0
  400b30:	50                   	push   %eax
  400b31:	6a 01                	push   $0x1
  400b33:	68 c0 33 40 00       	push   $0x4033c0
  400b38:	e8 5c fd ff ff       	call   400899 <set_intr>
  400b3d:	83 c4 10             	add    $0x10,%esp
  400b40:	b8 15 0c 40 00       	mov    $0x400c15,%eax
  400b45:	6a 00                	push   $0x0
  400b47:	50                   	push   %eax
  400b48:	6a 01                	push   $0x1
  400b4a:	68 c8 33 40 00       	push   $0x4033c8
  400b4f:	e8 45 fd ff ff       	call   400899 <set_intr>
  400b54:	83 c4 10             	add    $0x10,%esp
  400b57:	b8 1f 0c 40 00       	mov    $0x400c1f,%eax
  400b5c:	6a 00                	push   $0x0
  400b5e:	50                   	push   %eax
  400b5f:	6a 01                	push   $0x1
  400b61:	68 30 34 40 00       	push   $0x403430
  400b66:	e8 2e fd ff ff       	call   400899 <set_intr>
  400b6b:	83 c4 10             	add    $0x10,%esp
  400b6e:	b8 29 0c 40 00       	mov    $0x400c29,%eax
  400b73:	6a 03                	push   $0x3
  400b75:	50                   	push   %eax
  400b76:	6a 01                	push   $0x1
  400b78:	68 c0 36 40 00       	push   $0x4036c0
  400b7d:	e8 97 fd ff ff       	call   400919 <set_trap>
  400b82:	83 c4 10             	add    $0x10,%esp
  400b85:	68 00 08 00 00       	push   $0x800
  400b8a:	68 c0 32 40 00       	push   $0x4032c0
  400b8f:	e8 d7 fc ff ff       	call   40086b <save_idt>
  400b94:	83 c4 08             	add    $0x8,%esp
  400b97:	c9                   	leave  
  400b98:	c3                   	ret    

00400b99 <vec0>:
  400b99:	fa                   	cli    
  400b9a:	6a 00                	push   $0x0
  400b9c:	6a 00                	push   $0x0
  400b9e:	e9 97 00 00 00       	jmp    400c3a <asm_do_irq>

00400ba3 <vec1>:
  400ba3:	fa                   	cli    
  400ba4:	6a 00                	push   $0x0
  400ba6:	6a 01                	push   $0x1
  400ba8:	e9 8d 00 00 00       	jmp    400c3a <asm_do_irq>

00400bad <vec2>:
  400bad:	fa                   	cli    
  400bae:	6a 00                	push   $0x0
  400bb0:	6a 02                	push   $0x2
  400bb2:	e9 83 00 00 00       	jmp    400c3a <asm_do_irq>

00400bb7 <vec3>:
  400bb7:	fa                   	cli    
  400bb8:	6a 00                	push   $0x0
  400bba:	6a 03                	push   $0x3
  400bbc:	eb 7c                	jmp    400c3a <asm_do_irq>

00400bbe <vec4>:
  400bbe:	fa                   	cli    
  400bbf:	6a 00                	push   $0x0
  400bc1:	6a 04                	push   $0x4
  400bc3:	eb 75                	jmp    400c3a <asm_do_irq>

00400bc5 <vec5>:
  400bc5:	fa                   	cli    
  400bc6:	6a 00                	push   $0x0
  400bc8:	6a 05                	push   $0x5
  400bca:	eb 6e                	jmp    400c3a <asm_do_irq>

00400bcc <vec6>:
  400bcc:	fa                   	cli    
  400bcd:	6a 00                	push   $0x0
  400bcf:	6a 06                	push   $0x6
  400bd1:	eb 67                	jmp    400c3a <asm_do_irq>

00400bd3 <vec7>:
  400bd3:	fa                   	cli    
  400bd4:	6a 00                	push   $0x0
  400bd6:	6a 07                	push   $0x7
  400bd8:	eb 60                	jmp    400c3a <asm_do_irq>

00400bda <vec8>:
  400bda:	fa                   	cli    
  400bdb:	6a 00                	push   $0x0
  400bdd:	6a 08                	push   $0x8
  400bdf:	eb 59                	jmp    400c3a <asm_do_irq>

00400be1 <vec9>:
  400be1:	fa                   	cli    
  400be2:	6a 00                	push   $0x0
  400be4:	6a 09                	push   $0x9
  400be6:	eb 52                	jmp    400c3a <asm_do_irq>

00400be8 <vec10>:
  400be8:	fa                   	cli    
  400be9:	6a 00                	push   $0x0
  400beb:	6a 0a                	push   $0xa
  400bed:	eb 4b                	jmp    400c3a <asm_do_irq>

00400bef <vec11>:
  400bef:	fa                   	cli    
  400bf0:	6a 00                	push   $0x0
  400bf2:	6a 0b                	push   $0xb
  400bf4:	eb 44                	jmp    400c3a <asm_do_irq>

00400bf6 <vec12>:
  400bf6:	fa                   	cli    
  400bf7:	6a 00                	push   $0x0
  400bf9:	6a 0c                	push   $0xc
  400bfb:	eb 3d                	jmp    400c3a <asm_do_irq>

00400bfd <vec13>:
  400bfd:	fa                   	cli    
  400bfe:	6a 00                	push   $0x0
  400c00:	6a 0d                	push   $0xd
  400c02:	eb 36                	jmp    400c3a <asm_do_irq>

00400c04 <vec14>:
  400c04:	fa                   	cli    
  400c05:	6a 00                	push   $0x0
  400c07:	6a 0e                	push   $0xe
  400c09:	eb 2f                	jmp    400c3a <asm_do_irq>

00400c0b <irq0>:
  400c0b:	fa                   	cli    
  400c0c:	6a 00                	push   $0x0
  400c0e:	68 e8 03 00 00       	push   $0x3e8
  400c13:	eb 25                	jmp    400c3a <asm_do_irq>

00400c15 <irq1>:
  400c15:	fa                   	cli    
  400c16:	6a 00                	push   $0x0
  400c18:	68 e9 03 00 00       	push   $0x3e9
  400c1d:	eb 1b                	jmp    400c3a <asm_do_irq>

00400c1f <irq14>:
  400c1f:	fa                   	cli    
  400c20:	6a 00                	push   $0x0
  400c22:	68 f6 03 00 00       	push   $0x3f6
  400c27:	eb 11                	jmp    400c3a <asm_do_irq>

00400c29 <syscall>:
  400c29:	fa                   	cli    
  400c2a:	6a 00                	push   $0x0
  400c2c:	68 80 00 00 00       	push   $0x80
  400c31:	eb 07                	jmp    400c3a <asm_do_irq>

00400c33 <irq_empty>:
  400c33:	fa                   	cli    
  400c34:	6a 00                	push   $0x0
  400c36:	6a ff                	push   $0xffffffff
  400c38:	eb 00                	jmp    400c3a <asm_do_irq>

00400c3a <asm_do_irq>:
  400c3a:	60                   	pusha  
  400c3b:	54                   	push   %esp
  400c3c:	e8 08 00 00 00       	call   400c49 <irq_handle>
  400c41:	83 c4 04             	add    $0x4,%esp
  400c44:	61                   	popa   
  400c45:	83 c4 08             	add    $0x8,%esp
  400c48:	cf                   	iret   

00400c49 <irq_handle>:
  400c49:	55                   	push   %ebp
  400c4a:	89 e5                	mov    %esp,%ebp
  400c4c:	83 ec 38             	sub    $0x38,%esp
  400c4f:	8b 45 08             	mov    0x8(%ebp),%eax
  400c52:	8b 40 20             	mov    0x20(%eax),%eax
  400c55:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  400c5a:	75 18                	jne    400c74 <irq_handle+0x2b>
  400c5c:	e8 9f f3 ff ff       	call   400000 <timer_event>
  400c61:	83 ec 0c             	sub    $0xc,%esp
  400c64:	ff 75 08             	pushl  0x8(%ebp)
  400c67:	e8 4e 11 00 00       	call   401dba <time_treat>
  400c6c:	83 c4 10             	add    $0x10,%esp
  400c6f:	e9 e0 01 00 00       	jmp    400e54 <irq_handle+0x20b>
  400c74:	8b 45 08             	mov    0x8(%ebp),%eax
  400c77:	8b 40 20             	mov    0x20(%eax),%eax
  400c7a:	3d e9 03 00 00       	cmp    $0x3e9,%eax
  400c7f:	75 7b                	jne    400cfc <irq_handle+0xb3>
  400c81:	c7 45 ec 60 00 00 00 	movl   $0x60,-0x14(%ebp)
  400c88:	8b 45 ec             	mov    -0x14(%ebp),%eax
  400c8b:	89 c2                	mov    %eax,%edx
  400c8d:	ec                   	in     (%dx),%al
  400c8e:	88 45 eb             	mov    %al,-0x15(%ebp)
  400c91:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  400c95:	0f b6 c0             	movzbl %al,%eax
  400c98:	89 45 f4             	mov    %eax,-0xc(%ebp)
  400c9b:	c7 45 e4 61 00 00 00 	movl   $0x61,-0x1c(%ebp)
  400ca2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  400ca5:	89 c2                	mov    %eax,%edx
  400ca7:	ec                   	in     (%dx),%al
  400ca8:	88 45 e3             	mov    %al,-0x1d(%ebp)
  400cab:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
  400caf:	0f b6 c0             	movzbl %al,%eax
  400cb2:	89 45 f0             	mov    %eax,-0x10(%ebp)
  400cb5:	8b 45 f0             	mov    -0x10(%ebp),%eax
  400cb8:	83 c8 80             	or     $0xffffff80,%eax
  400cbb:	0f b6 c0             	movzbl %al,%eax
  400cbe:	c7 45 dc 61 00 00 00 	movl   $0x61,-0x24(%ebp)
  400cc5:	88 45 db             	mov    %al,-0x25(%ebp)
  400cc8:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
  400ccc:	8b 55 dc             	mov    -0x24(%ebp),%edx
  400ccf:	ee                   	out    %al,(%dx)
  400cd0:	8b 45 f0             	mov    -0x10(%ebp),%eax
  400cd3:	0f b6 c0             	movzbl %al,%eax
  400cd6:	c7 45 d4 61 00 00 00 	movl   $0x61,-0x2c(%ebp)
  400cdd:	88 45 d3             	mov    %al,-0x2d(%ebp)
  400ce0:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
  400ce4:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  400ce7:	ee                   	out    %al,(%dx)
  400ce8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  400ceb:	83 ec 0c             	sub    $0xc,%esp
  400cee:	50                   	push   %eax
  400cef:	e8 37 f4 ff ff       	call   40012b <keyboard_event>
  400cf4:	83 c4 10             	add    $0x10,%esp
  400cf7:	e9 58 01 00 00       	jmp    400e54 <irq_handle+0x20b>
  400cfc:	8b 45 08             	mov    0x8(%ebp),%eax
  400cff:	8b 40 20             	mov    0x20(%eax),%eax
  400d02:	3d f6 03 00 00       	cmp    $0x3f6,%eax
  400d07:	0f 84 47 01 00 00    	je     400e54 <irq_handle+0x20b>
  400d0d:	8b 45 08             	mov    0x8(%ebp),%eax
  400d10:	8b 40 20             	mov    0x20(%eax),%eax
  400d13:	3d 80 00 00 00       	cmp    $0x80,%eax
  400d18:	0f 85 11 01 00 00    	jne    400e2f <irq_handle+0x1e6>
  400d1e:	8b 45 08             	mov    0x8(%ebp),%eax
  400d21:	8b 40 1c             	mov    0x1c(%eax),%eax
  400d24:	83 f8 01             	cmp    $0x1,%eax
  400d27:	75 26                	jne    400d4f <irq_handle+0x106>
  400d29:	8b 45 08             	mov    0x8(%ebp),%eax
  400d2c:	8b 40 10             	mov    0x10(%eax),%eax
  400d2f:	83 f8 01             	cmp    $0x1,%eax
  400d32:	0f 85 1c 01 00 00    	jne    400e54 <irq_handle+0x20b>
  400d38:	8b 45 08             	mov    0x8(%ebp),%eax
  400d3b:	8b 40 18             	mov    0x18(%eax),%eax
  400d3e:	83 ec 0c             	sub    $0xc,%esp
  400d41:	50                   	push   %eax
  400d42:	e8 37 04 00 00       	call   40117e <printk>
  400d47:	83 c4 10             	add    $0x10,%esp
  400d4a:	e9 05 01 00 00       	jmp    400e54 <irq_handle+0x20b>
  400d4f:	8b 45 08             	mov    0x8(%ebp),%eax
  400d52:	8b 40 1c             	mov    0x1c(%eax),%eax
  400d55:	83 f8 02             	cmp    $0x2,%eax
  400d58:	75 35                	jne    400d8f <irq_handle+0x146>
  400d5a:	8b 45 08             	mov    0x8(%ebp),%eax
  400d5d:	8b 40 10             	mov    0x10(%eax),%eax
  400d60:	85 c0                	test   %eax,%eax
  400d62:	75 12                	jne    400d76 <irq_handle+0x12d>
  400d64:	e8 a9 f2 ff ff       	call   400012 <get_time>
  400d69:	89 c2                	mov    %eax,%edx
  400d6b:	8b 45 08             	mov    0x8(%ebp),%eax
  400d6e:	89 50 1c             	mov    %edx,0x1c(%eax)
  400d71:	e9 de 00 00 00       	jmp    400e54 <irq_handle+0x20b>
  400d76:	8b 45 08             	mov    0x8(%ebp),%eax
  400d79:	8b 40 10             	mov    0x10(%eax),%eax
  400d7c:	83 f8 01             	cmp    $0x1,%eax
  400d7f:	0f 85 cf 00 00 00    	jne    400e54 <irq_handle+0x20b>
  400d85:	e8 92 f2 ff ff       	call   40001c <time_pop>
  400d8a:	e9 c5 00 00 00       	jmp    400e54 <irq_handle+0x20b>
  400d8f:	8b 45 08             	mov    0x8(%ebp),%eax
  400d92:	8b 40 1c             	mov    0x1c(%eax),%eax
  400d95:	83 f8 03             	cmp    $0x3,%eax
  400d98:	75 40                	jne    400dda <irq_handle+0x191>
  400d9a:	8b 45 08             	mov    0x8(%ebp),%eax
  400d9d:	8b 40 10             	mov    0x10(%eax),%eax
  400da0:	85 c0                	test   %eax,%eax
  400da2:	75 12                	jne    400db6 <irq_handle+0x16d>
  400da4:	e8 69 f3 ff ff       	call   400112 <last_key_code>
  400da9:	89 c2                	mov    %eax,%edx
  400dab:	8b 45 08             	mov    0x8(%ebp),%eax
  400dae:	89 50 1c             	mov    %edx,0x1c(%eax)
  400db1:	e9 9e 00 00 00       	jmp    400e54 <irq_handle+0x20b>
  400db6:	8b 45 08             	mov    0x8(%ebp),%eax
  400db9:	8b 40 10             	mov    0x10(%eax),%eax
  400dbc:	83 f8 01             	cmp    $0x1,%eax
  400dbf:	0f 85 8f 00 00 00    	jne    400e54 <irq_handle+0x20b>
  400dc5:	83 ec 0c             	sub    $0xc,%esp
  400dc8:	ff 75 08             	pushl  0x8(%ebp)
  400dcb:	e8 32 06 00 00       	call   401402 <print_tf>
  400dd0:	83 c4 10             	add    $0x10,%esp
  400dd3:	e8 44 f3 ff ff       	call   40011c <reset_last_key>
  400dd8:	eb 7a                	jmp    400e54 <irq_handle+0x20b>
  400dda:	8b 45 08             	mov    0x8(%ebp),%eax
  400ddd:	8b 40 1c             	mov    0x1c(%eax),%eax
  400de0:	83 f8 04             	cmp    $0x4,%eax
  400de3:	75 1e                	jne    400e03 <irq_handle+0x1ba>
  400de5:	8b 45 08             	mov    0x8(%ebp),%eax
  400de8:	8b 40 10             	mov    0x10(%eax),%eax
  400deb:	83 ec 04             	sub    $0x4,%esp
  400dee:	68 00 00 01 00       	push   $0x10000
  400df3:	50                   	push   %eax
  400df4:	68 00 00 0a 00       	push   $0xa0000
  400df9:	e8 a5 03 00 00       	call   4011a3 <my_memcpy>
  400dfe:	83 c4 10             	add    $0x10,%esp
  400e01:	eb 51                	jmp    400e54 <irq_handle+0x20b>
  400e03:	8b 45 08             	mov    0x8(%ebp),%eax
  400e06:	8b 40 1c             	mov    0x1c(%eax),%eax
  400e09:	83 f8 05             	cmp    $0x5,%eax
  400e0c:	75 07                	jne    400e15 <irq_handle+0x1cc>
  400e0e:	e8 a4 10 00 00       	call   401eb7 <process_exit>
  400e13:	eb 3f                	jmp    400e54 <irq_handle+0x20b>
  400e15:	8b 45 08             	mov    0x8(%ebp),%eax
  400e18:	8b 40 1c             	mov    0x1c(%eax),%eax
  400e1b:	83 f8 06             	cmp    $0x6,%eax
  400e1e:	75 34                	jne    400e54 <irq_handle+0x20b>
  400e20:	e8 e8 10 00 00       	call   401f0d <getpid>
  400e25:	89 c2                	mov    %eax,%edx
  400e27:	8b 45 08             	mov    0x8(%ebp),%eax
  400e2a:	89 50 1c             	mov    %edx,0x1c(%eax)
  400e2d:	eb 25                	jmp    400e54 <irq_handle+0x20b>
  400e2f:	83 ec 0c             	sub    $0xc,%esp
  400e32:	ff 75 08             	pushl  0x8(%ebp)
  400e35:	e8 c8 05 00 00       	call   401402 <print_tf>
  400e3a:	83 c4 10             	add    $0x10,%esp
  400e3d:	8b 45 08             	mov    0x8(%ebp),%eax
  400e40:	8b 40 20             	mov    0x20(%eax),%eax
  400e43:	83 ec 08             	sub    $0x8,%esp
  400e46:	50                   	push   %eax
  400e47:	68 34 1f 40 00       	push   $0x401f34
  400e4c:	e8 2d 03 00 00       	call   40117e <printk>
  400e51:	83 c4 10             	add    $0x10,%esp
  400e54:	c9                   	leave  
  400e55:	c3                   	ret    

00400e56 <change>:
  400e56:	55                   	push   %ebp
  400e57:	89 e5                	mov    %esp,%ebp
  400e59:	53                   	push   %ebx
  400e5a:	83 c4 80             	add    $0xffffff80,%esp
  400e5d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  400e64:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  400e6b:	8b 45 08             	mov    0x8(%ebp),%eax
  400e6e:	89 45 ec             	mov    %eax,-0x14(%ebp)
  400e71:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  400e75:	75 14                	jne    400e8b <change+0x35>
  400e77:	8b 45 0c             	mov    0xc(%ebp),%eax
  400e7a:	c6 00 30             	movb   $0x30,(%eax)
  400e7d:	8b 45 0c             	mov    0xc(%ebp),%eax
  400e80:	83 c0 01             	add    $0x1,%eax
  400e83:	c6 00 00             	movb   $0x0,(%eax)
  400e86:	e9 a5 00 00 00       	jmp    400f30 <change+0xda>
  400e8b:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  400e8f:	79 1d                	jns    400eae <change+0x58>
  400e91:	8b 45 f4             	mov    -0xc(%ebp),%eax
  400e94:	8d 50 01             	lea    0x1(%eax),%edx
  400e97:	89 55 f4             	mov    %edx,-0xc(%ebp)
  400e9a:	89 c2                	mov    %eax,%edx
  400e9c:	8b 45 0c             	mov    0xc(%ebp),%eax
  400e9f:	01 d0                	add    %edx,%eax
  400ea1:	c6 00 2d             	movb   $0x2d,(%eax)
  400ea4:	8b 45 ec             	mov    -0x14(%ebp),%eax
  400ea7:	f7 d8                	neg    %eax
  400ea9:	89 45 f0             	mov    %eax,-0x10(%ebp)
  400eac:	eb 06                	jmp    400eb4 <change+0x5e>
  400eae:	8b 45 ec             	mov    -0x14(%ebp),%eax
  400eb1:	89 45 f0             	mov    %eax,-0x10(%ebp)
  400eb4:	eb 40                	jmp    400ef6 <change+0xa0>
  400eb6:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  400eb9:	8d 41 01             	lea    0x1(%ecx),%eax
  400ebc:	89 45 f8             	mov    %eax,-0x8(%ebp)
  400ebf:	8b 5d f0             	mov    -0x10(%ebp),%ebx
  400ec2:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  400ec7:	89 d8                	mov    %ebx,%eax
  400ec9:	f7 e2                	mul    %edx
  400ecb:	c1 ea 03             	shr    $0x3,%edx
  400ece:	89 d0                	mov    %edx,%eax
  400ed0:	c1 e0 02             	shl    $0x2,%eax
  400ed3:	01 d0                	add    %edx,%eax
  400ed5:	01 c0                	add    %eax,%eax
  400ed7:	29 c3                	sub    %eax,%ebx
  400ed9:	89 da                	mov    %ebx,%edx
  400edb:	89 d0                	mov    %edx,%eax
  400edd:	83 c0 30             	add    $0x30,%eax
  400ee0:	88 44 0d 88          	mov    %al,-0x78(%ebp,%ecx,1)
  400ee4:	8b 45 f0             	mov    -0x10(%ebp),%eax
  400ee7:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  400eec:	f7 e2                	mul    %edx
  400eee:	89 d0                	mov    %edx,%eax
  400ef0:	c1 e8 03             	shr    $0x3,%eax
  400ef3:	89 45 f0             	mov    %eax,-0x10(%ebp)
  400ef6:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  400efa:	75 ba                	jne    400eb6 <change+0x60>
  400efc:	eb 21                	jmp    400f1f <change+0xc9>
  400efe:	8b 45 f4             	mov    -0xc(%ebp),%eax
  400f01:	8d 50 01             	lea    0x1(%eax),%edx
  400f04:	89 55 f4             	mov    %edx,-0xc(%ebp)
  400f07:	89 c2                	mov    %eax,%edx
  400f09:	8b 45 0c             	mov    0xc(%ebp),%eax
  400f0c:	01 c2                	add    %eax,%edx
  400f0e:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
  400f12:	8d 4d 88             	lea    -0x78(%ebp),%ecx
  400f15:	8b 45 f8             	mov    -0x8(%ebp),%eax
  400f18:	01 c8                	add    %ecx,%eax
  400f1a:	0f b6 00             	movzbl (%eax),%eax
  400f1d:	88 02                	mov    %al,(%edx)
  400f1f:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  400f23:	75 d9                	jne    400efe <change+0xa8>
  400f25:	8b 55 f4             	mov    -0xc(%ebp),%edx
  400f28:	8b 45 0c             	mov    0xc(%ebp),%eax
  400f2b:	01 d0                	add    %edx,%eax
  400f2d:	c6 00 00             	movb   $0x0,(%eax)
  400f30:	83 ec 80             	sub    $0xffffff80,%esp
  400f33:	5b                   	pop    %ebx
  400f34:	5d                   	pop    %ebp
  400f35:	c3                   	ret    

00400f36 <change_x>:
  400f36:	55                   	push   %ebp
  400f37:	89 e5                	mov    %esp,%ebp
  400f39:	83 ec 70             	sub    $0x70,%esp
  400f3c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  400f43:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  400f4a:	8b 45 08             	mov    0x8(%ebp),%eax
  400f4d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  400f50:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  400f54:	75 11                	jne    400f67 <change_x+0x31>
  400f56:	8b 45 0c             	mov    0xc(%ebp),%eax
  400f59:	c6 00 30             	movb   $0x30,(%eax)
  400f5c:	8b 45 0c             	mov    0xc(%ebp),%eax
  400f5f:	83 c0 01             	add    $0x1,%eax
  400f62:	c6 00 00             	movb   $0x0,(%eax)
  400f65:	eb 7e                	jmp    400fe5 <change_x+0xaf>
  400f67:	eb 42                	jmp    400fab <change_x+0x75>
  400f69:	8b 45 f4             	mov    -0xc(%ebp),%eax
  400f6c:	83 e0 0f             	and    $0xf,%eax
  400f6f:	83 f8 09             	cmp    $0x9,%eax
  400f72:	77 18                	ja     400f8c <change_x+0x56>
  400f74:	8b 45 fc             	mov    -0x4(%ebp),%eax
  400f77:	8d 50 01             	lea    0x1(%eax),%edx
  400f7a:	89 55 fc             	mov    %edx,-0x4(%ebp)
  400f7d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  400f80:	83 e2 0f             	and    $0xf,%edx
  400f83:	83 c2 30             	add    $0x30,%edx
  400f86:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
  400f8a:	eb 16                	jmp    400fa2 <change_x+0x6c>
  400f8c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  400f8f:	8d 50 01             	lea    0x1(%eax),%edx
  400f92:	89 55 fc             	mov    %edx,-0x4(%ebp)
  400f95:	8b 55 f4             	mov    -0xc(%ebp),%edx
  400f98:	83 e2 0f             	and    $0xf,%edx
  400f9b:	83 c2 37             	add    $0x37,%edx
  400f9e:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
  400fa2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  400fa5:	c1 e8 04             	shr    $0x4,%eax
  400fa8:	89 45 f4             	mov    %eax,-0xc(%ebp)
  400fab:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  400faf:	75 b8                	jne    400f69 <change_x+0x33>
  400fb1:	eb 21                	jmp    400fd4 <change_x+0x9e>
  400fb3:	8b 45 f8             	mov    -0x8(%ebp),%eax
  400fb6:	8d 50 01             	lea    0x1(%eax),%edx
  400fb9:	89 55 f8             	mov    %edx,-0x8(%ebp)
  400fbc:	89 c2                	mov    %eax,%edx
  400fbe:	8b 45 0c             	mov    0xc(%ebp),%eax
  400fc1:	01 c2                	add    %eax,%edx
  400fc3:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
  400fc7:	8d 4d 90             	lea    -0x70(%ebp),%ecx
  400fca:	8b 45 fc             	mov    -0x4(%ebp),%eax
  400fcd:	01 c8                	add    %ecx,%eax
  400fcf:	0f b6 00             	movzbl (%eax),%eax
  400fd2:	88 02                	mov    %al,(%edx)
  400fd4:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  400fd8:	75 d9                	jne    400fb3 <change_x+0x7d>
  400fda:	8b 55 f8             	mov    -0x8(%ebp),%edx
  400fdd:	8b 45 0c             	mov    0xc(%ebp),%eax
  400fe0:	01 d0                	add    %edx,%eax
  400fe2:	c6 00 00             	movb   $0x0,(%eax)
  400fe5:	c9                   	leave  
  400fe6:	c3                   	ret    

00400fe7 <v_fprintf>:
  400fe7:	55                   	push   %ebp
  400fe8:	89 e5                	mov    %esp,%ebp
  400fea:	81 ec 88 00 00 00    	sub    $0x88,%esp
  400ff0:	8b 45 0c             	mov    0xc(%ebp),%eax
  400ff3:	89 45 ec             	mov    %eax,-0x14(%ebp)
  400ff6:	8b 45 10             	mov    0x10(%ebp),%eax
  400ff9:	89 45 f4             	mov    %eax,-0xc(%ebp)
  400ffc:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  401003:	e9 61 01 00 00       	jmp    401169 <v_fprintf+0x182>
  401008:	8b 55 f0             	mov    -0x10(%ebp),%edx
  40100b:	8b 45 ec             	mov    -0x14(%ebp),%eax
  40100e:	01 d0                	add    %edx,%eax
  401010:	0f b6 00             	movzbl (%eax),%eax
  401013:	3c 25                	cmp    $0x25,%al
  401015:	74 27                	je     40103e <v_fprintf+0x57>
  401017:	8b 55 f0             	mov    -0x10(%ebp),%edx
  40101a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  40101d:	01 d0                	add    %edx,%eax
  40101f:	0f b6 00             	movzbl (%eax),%eax
  401022:	88 45 eb             	mov    %al,-0x15(%ebp)
  401025:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
  401029:	83 ec 0c             	sub    $0xc,%esp
  40102c:	50                   	push   %eax
  40102d:	8b 45 08             	mov    0x8(%ebp),%eax
  401030:	ff d0                	call   *%eax
  401032:	83 c4 10             	add    $0x10,%esp
  401035:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  401039:	e9 2b 01 00 00       	jmp    401169 <v_fprintf+0x182>
  40103e:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  401042:	8b 55 f0             	mov    -0x10(%ebp),%edx
  401045:	8b 45 ec             	mov    -0x14(%ebp),%eax
  401048:	01 d0                	add    %edx,%eax
  40104a:	0f b6 00             	movzbl (%eax),%eax
  40104d:	3c 25                	cmp    $0x25,%al
  40104f:	75 16                	jne    401067 <v_fprintf+0x80>
  401051:	83 ec 0c             	sub    $0xc,%esp
  401054:	6a 25                	push   $0x25
  401056:	8b 45 08             	mov    0x8(%ebp),%eax
  401059:	ff d0                	call   *%eax
  40105b:	83 c4 10             	add    $0x10,%esp
  40105e:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  401062:	e9 02 01 00 00       	jmp    401169 <v_fprintf+0x182>
  401067:	8b 55 f0             	mov    -0x10(%ebp),%edx
  40106a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  40106d:	01 d0                	add    %edx,%eax
  40106f:	0f b6 00             	movzbl (%eax),%eax
  401072:	3c 63                	cmp    $0x63,%al
  401074:	75 26                	jne    40109c <v_fprintf+0xb5>
  401076:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  40107a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40107d:	0f b6 00             	movzbl (%eax),%eax
  401080:	88 45 eb             	mov    %al,-0x15(%ebp)
  401083:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
  401087:	83 ec 0c             	sub    $0xc,%esp
  40108a:	50                   	push   %eax
  40108b:	8b 45 08             	mov    0x8(%ebp),%eax
  40108e:	ff d0                	call   *%eax
  401090:	83 c4 10             	add    $0x10,%esp
  401093:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  401097:	e9 cd 00 00 00       	jmp    401169 <v_fprintf+0x182>
  40109c:	8b 55 f0             	mov    -0x10(%ebp),%edx
  40109f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  4010a2:	01 d0                	add    %edx,%eax
  4010a4:	0f b6 00             	movzbl (%eax),%eax
  4010a7:	3c 64                	cmp    $0x64,%al
  4010a9:	75 36                	jne    4010e1 <v_fprintf+0xfa>
  4010ab:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  4010af:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4010b2:	8b 00                	mov    (%eax),%eax
  4010b4:	83 ec 08             	sub    $0x8,%esp
  4010b7:	8d 55 87             	lea    -0x79(%ebp),%edx
  4010ba:	52                   	push   %edx
  4010bb:	50                   	push   %eax
  4010bc:	e8 95 fd ff ff       	call   400e56 <change>
  4010c1:	83 c4 10             	add    $0x10,%esp
  4010c4:	83 ec 04             	sub    $0x4,%esp
  4010c7:	6a 00                	push   $0x0
  4010c9:	8d 45 87             	lea    -0x79(%ebp),%eax
  4010cc:	50                   	push   %eax
  4010cd:	ff 75 08             	pushl  0x8(%ebp)
  4010d0:	e8 12 ff ff ff       	call   400fe7 <v_fprintf>
  4010d5:	83 c4 10             	add    $0x10,%esp
  4010d8:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  4010dc:	e9 88 00 00 00       	jmp    401169 <v_fprintf+0x182>
  4010e1:	8b 55 f0             	mov    -0x10(%ebp),%edx
  4010e4:	8b 45 ec             	mov    -0x14(%ebp),%eax
  4010e7:	01 d0                	add    %edx,%eax
  4010e9:	0f b6 00             	movzbl (%eax),%eax
  4010ec:	3c 78                	cmp    $0x78,%al
  4010ee:	75 33                	jne    401123 <v_fprintf+0x13c>
  4010f0:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  4010f4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4010f7:	8b 00                	mov    (%eax),%eax
  4010f9:	83 ec 08             	sub    $0x8,%esp
  4010fc:	8d 55 87             	lea    -0x79(%ebp),%edx
  4010ff:	52                   	push   %edx
  401100:	50                   	push   %eax
  401101:	e8 30 fe ff ff       	call   400f36 <change_x>
  401106:	83 c4 10             	add    $0x10,%esp
  401109:	83 ec 04             	sub    $0x4,%esp
  40110c:	6a 00                	push   $0x0
  40110e:	8d 45 87             	lea    -0x79(%ebp),%eax
  401111:	50                   	push   %eax
  401112:	ff 75 08             	pushl  0x8(%ebp)
  401115:	e8 cd fe ff ff       	call   400fe7 <v_fprintf>
  40111a:	83 c4 10             	add    $0x10,%esp
  40111d:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  401121:	eb 46                	jmp    401169 <v_fprintf+0x182>
  401123:	8b 55 f0             	mov    -0x10(%ebp),%edx
  401126:	8b 45 ec             	mov    -0x14(%ebp),%eax
  401129:	01 d0                	add    %edx,%eax
  40112b:	0f b6 00             	movzbl (%eax),%eax
  40112e:	3c 73                	cmp    $0x73,%al
  401130:	75 20                	jne    401152 <v_fprintf+0x16b>
  401132:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  401136:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401139:	8b 00                	mov    (%eax),%eax
  40113b:	83 ec 04             	sub    $0x4,%esp
  40113e:	6a 00                	push   $0x0
  401140:	50                   	push   %eax
  401141:	ff 75 08             	pushl  0x8(%ebp)
  401144:	e8 9e fe ff ff       	call   400fe7 <v_fprintf>
  401149:	83 c4 10             	add    $0x10,%esp
  40114c:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  401150:	eb 17                	jmp    401169 <v_fprintf+0x182>
  401152:	83 ec 04             	sub    $0x4,%esp
  401155:	6a 00                	push   $0x0
  401157:	68 5c 1f 40 00       	push   $0x401f5c
  40115c:	ff 75 08             	pushl  0x8(%ebp)
  40115f:	e8 83 fe ff ff       	call   400fe7 <v_fprintf>
  401164:	83 c4 10             	add    $0x10,%esp
  401167:	eb 13                	jmp    40117c <v_fprintf+0x195>
  401169:	8b 55 f0             	mov    -0x10(%ebp),%edx
  40116c:	8b 45 ec             	mov    -0x14(%ebp),%eax
  40116f:	01 d0                	add    %edx,%eax
  401171:	0f b6 00             	movzbl (%eax),%eax
  401174:	84 c0                	test   %al,%al
  401176:	0f 85 8c fe ff ff    	jne    401008 <v_fprintf+0x21>
  40117c:	c9                   	leave  
  40117d:	c3                   	ret    

0040117e <printk>:
  40117e:	55                   	push   %ebp
  40117f:	89 e5                	mov    %esp,%ebp
  401181:	83 ec 18             	sub    $0x18,%esp
  401184:	8d 45 0c             	lea    0xc(%ebp),%eax
  401187:	89 45 f4             	mov    %eax,-0xc(%ebp)
  40118a:	8b 45 08             	mov    0x8(%ebp),%eax
  40118d:	83 ec 04             	sub    $0x4,%esp
  401190:	ff 75 f4             	pushl  -0xc(%ebp)
  401193:	50                   	push   %eax
  401194:	68 e0 02 40 00       	push   $0x4002e0
  401199:	e8 49 fe ff ff       	call   400fe7 <v_fprintf>
  40119e:	83 c4 10             	add    $0x10,%esp
  4011a1:	c9                   	leave  
  4011a2:	c3                   	ret    

004011a3 <my_memcpy>:
  4011a3:	55                   	push   %ebp
  4011a4:	89 e5                	mov    %esp,%ebp
  4011a6:	57                   	push   %edi
  4011a7:	56                   	push   %esi
  4011a8:	53                   	push   %ebx
  4011a9:	8b 45 10             	mov    0x10(%ebp),%eax
  4011ac:	8b 55 0c             	mov    0xc(%ebp),%edx
  4011af:	8b 5d 08             	mov    0x8(%ebp),%ebx
  4011b2:	89 c1                	mov    %eax,%ecx
  4011b4:	89 d6                	mov    %edx,%esi
  4011b6:	89 df                	mov    %ebx,%edi
  4011b8:	fc                   	cld    
  4011b9:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  4011bb:	5b                   	pop    %ebx
  4011bc:	5e                   	pop    %esi
  4011bd:	5f                   	pop    %edi
  4011be:	5d                   	pop    %ebp
  4011bf:	c3                   	ret    

004011c0 <my_memset>:
  4011c0:	55                   	push   %ebp
  4011c1:	89 e5                	mov    %esp,%ebp
  4011c3:	57                   	push   %edi
  4011c4:	53                   	push   %ebx
  4011c5:	8b 55 10             	mov    0x10(%ebp),%edx
  4011c8:	8b 45 0c             	mov    0xc(%ebp),%eax
  4011cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  4011ce:	89 d1                	mov    %edx,%ecx
  4011d0:	89 df                	mov    %ebx,%edi
  4011d2:	fc                   	cld    
  4011d3:	f3 aa                	rep stos %al,%es:(%edi)
  4011d5:	5b                   	pop    %ebx
  4011d6:	5f                   	pop    %edi
  4011d7:	5d                   	pop    %ebp
  4011d8:	c3                   	ret    

004011d9 <inb>:
  4011d9:	55                   	push   %ebp
  4011da:	89 e5                	mov    %esp,%ebp
  4011dc:	83 ec 10             	sub    $0x10,%esp
  4011df:	8b 45 08             	mov    0x8(%ebp),%eax
  4011e2:	89 c2                	mov    %eax,%edx
  4011e4:	ec                   	in     (%dx),%al
  4011e5:	88 45 ff             	mov    %al,-0x1(%ebp)
  4011e8:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  4011ec:	c9                   	leave  
  4011ed:	c3                   	ret    

004011ee <insl>:
  4011ee:	55                   	push   %ebp
  4011ef:	89 e5                	mov    %esp,%ebp
  4011f1:	57                   	push   %edi
  4011f2:	53                   	push   %ebx
  4011f3:	8b 55 08             	mov    0x8(%ebp),%edx
  4011f6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  4011f9:	8b 45 10             	mov    0x10(%ebp),%eax
  4011fc:	89 cb                	mov    %ecx,%ebx
  4011fe:	89 df                	mov    %ebx,%edi
  401200:	89 c1                	mov    %eax,%ecx
  401202:	fc                   	cld    
  401203:	f2 6d                	repnz insl (%dx),%es:(%edi)
  401205:	89 c8                	mov    %ecx,%eax
  401207:	89 fb                	mov    %edi,%ebx
  401209:	89 5d 0c             	mov    %ebx,0xc(%ebp)
  40120c:	89 45 10             	mov    %eax,0x10(%ebp)
  40120f:	5b                   	pop    %ebx
  401210:	5f                   	pop    %edi
  401211:	5d                   	pop    %ebp
  401212:	c3                   	ret    

00401213 <outb>:
  401213:	55                   	push   %ebp
  401214:	89 e5                	mov    %esp,%ebp
  401216:	83 ec 04             	sub    $0x4,%esp
  401219:	8b 45 0c             	mov    0xc(%ebp),%eax
  40121c:	88 45 fc             	mov    %al,-0x4(%ebp)
  40121f:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  401223:	8b 55 08             	mov    0x8(%ebp),%edx
  401226:	ee                   	out    %al,(%dx)
  401227:	c9                   	leave  
  401228:	c3                   	ret    

00401229 <waitdisk>:
  401229:	55                   	push   %ebp
  40122a:	89 e5                	mov    %esp,%ebp
  40122c:	90                   	nop
  40122d:	68 f7 01 00 00       	push   $0x1f7
  401232:	e8 a2 ff ff ff       	call   4011d9 <inb>
  401237:	83 c4 04             	add    $0x4,%esp
  40123a:	0f b6 c0             	movzbl %al,%eax
  40123d:	25 c0 00 00 00       	and    $0xc0,%eax
  401242:	83 f8 40             	cmp    $0x40,%eax
  401245:	75 e6                	jne    40122d <waitdisk+0x4>
  401247:	c9                   	leave  
  401248:	c3                   	ret    

00401249 <readsect>:
  401249:	55                   	push   %ebp
  40124a:	89 e5                	mov    %esp,%ebp
  40124c:	e8 d8 ff ff ff       	call   401229 <waitdisk>
  401251:	6a 01                	push   $0x1
  401253:	68 f2 01 00 00       	push   $0x1f2
  401258:	e8 b6 ff ff ff       	call   401213 <outb>
  40125d:	83 c4 08             	add    $0x8,%esp
  401260:	8b 45 0c             	mov    0xc(%ebp),%eax
  401263:	0f b6 c0             	movzbl %al,%eax
  401266:	50                   	push   %eax
  401267:	68 f3 01 00 00       	push   $0x1f3
  40126c:	e8 a2 ff ff ff       	call   401213 <outb>
  401271:	83 c4 08             	add    $0x8,%esp
  401274:	8b 45 0c             	mov    0xc(%ebp),%eax
  401277:	c1 e8 08             	shr    $0x8,%eax
  40127a:	0f b6 c0             	movzbl %al,%eax
  40127d:	50                   	push   %eax
  40127e:	68 f4 01 00 00       	push   $0x1f4
  401283:	e8 8b ff ff ff       	call   401213 <outb>
  401288:	83 c4 08             	add    $0x8,%esp
  40128b:	8b 45 0c             	mov    0xc(%ebp),%eax
  40128e:	c1 e8 10             	shr    $0x10,%eax
  401291:	0f b6 c0             	movzbl %al,%eax
  401294:	50                   	push   %eax
  401295:	68 f5 01 00 00       	push   $0x1f5
  40129a:	e8 74 ff ff ff       	call   401213 <outb>
  40129f:	83 c4 08             	add    $0x8,%esp
  4012a2:	8b 45 0c             	mov    0xc(%ebp),%eax
  4012a5:	c1 e8 18             	shr    $0x18,%eax
  4012a8:	83 c8 e0             	or     $0xffffffe0,%eax
  4012ab:	0f b6 c0             	movzbl %al,%eax
  4012ae:	50                   	push   %eax
  4012af:	68 f6 01 00 00       	push   $0x1f6
  4012b4:	e8 5a ff ff ff       	call   401213 <outb>
  4012b9:	83 c4 08             	add    $0x8,%esp
  4012bc:	6a 20                	push   $0x20
  4012be:	68 f7 01 00 00       	push   $0x1f7
  4012c3:	e8 4b ff ff ff       	call   401213 <outb>
  4012c8:	83 c4 08             	add    $0x8,%esp
  4012cb:	e8 59 ff ff ff       	call   401229 <waitdisk>
  4012d0:	68 80 00 00 00       	push   $0x80
  4012d5:	ff 75 08             	pushl  0x8(%ebp)
  4012d8:	68 f0 01 00 00       	push   $0x1f0
  4012dd:	e8 0c ff ff ff       	call   4011ee <insl>
  4012e2:	83 c4 0c             	add    $0xc,%esp
  4012e5:	c9                   	leave  
  4012e6:	c3                   	ret    

004012e7 <read_disk>:
  4012e7:	55                   	push   %ebp
  4012e8:	89 e5                	mov    %esp,%ebp
  4012ea:	83 ec 10             	sub    $0x10,%esp
  4012ed:	8b 55 0c             	mov    0xc(%ebp),%edx
  4012f0:	8b 45 08             	mov    0x8(%ebp),%eax
  4012f3:	01 d0                	add    %edx,%eax
  4012f5:	89 45 f8             	mov    %eax,-0x8(%ebp)
  4012f8:	8b 45 10             	mov    0x10(%ebp),%eax
  4012fb:	99                   	cltd   
  4012fc:	c1 ea 17             	shr    $0x17,%edx
  4012ff:	01 d0                	add    %edx,%eax
  401301:	25 ff 01 00 00       	and    $0x1ff,%eax
  401306:	29 d0                	sub    %edx,%eax
  401308:	f7 d8                	neg    %eax
  40130a:	01 45 08             	add    %eax,0x8(%ebp)
  40130d:	8b 45 10             	mov    0x10(%ebp),%eax
  401310:	8d 90 ff 01 00 00    	lea    0x1ff(%eax),%edx
  401316:	85 c0                	test   %eax,%eax
  401318:	0f 48 c2             	cmovs  %edx,%eax
  40131b:	c1 f8 09             	sar    $0x9,%eax
  40131e:	83 c0 01             	add    $0x1,%eax
  401321:	89 45 fc             	mov    %eax,-0x4(%ebp)
  401324:	eb 1a                	jmp    401340 <read_disk+0x59>
  401326:	8b 45 fc             	mov    -0x4(%ebp),%eax
  401329:	50                   	push   %eax
  40132a:	ff 75 08             	pushl  0x8(%ebp)
  40132d:	e8 17 ff ff ff       	call   401249 <readsect>
  401332:	83 c4 08             	add    $0x8,%esp
  401335:	81 45 08 00 02 00 00 	addl   $0x200,0x8(%ebp)
  40133c:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  401340:	8b 45 08             	mov    0x8(%ebp),%eax
  401343:	3b 45 f8             	cmp    -0x8(%ebp),%eax
  401346:	72 de                	jb     401326 <read_disk+0x3f>
  401348:	c9                   	leave  
  401349:	c3                   	ret    

0040134a <load>:
  40134a:	55                   	push   %ebp
  40134b:	89 e5                	mov    %esp,%ebp
  40134d:	83 ec 10             	sub    $0x10,%esp
  401350:	c7 45 f4 00 00 08 00 	movl   $0x80000,-0xc(%ebp)
  401357:	68 00 90 01 00       	push   $0x19000
  40135c:	68 00 10 00 00       	push   $0x1000
  401361:	ff 75 f4             	pushl  -0xc(%ebp)
  401364:	e8 7e ff ff ff       	call   4012e7 <read_disk>
  401369:	83 c4 0c             	add    $0xc,%esp
  40136c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40136f:	8b 50 1c             	mov    0x1c(%eax),%edx
  401372:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401375:	01 d0                	add    %edx,%eax
  401377:	89 45 fc             	mov    %eax,-0x4(%ebp)
  40137a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40137d:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
  401381:	0f b7 c0             	movzwl %ax,%eax
  401384:	c1 e0 05             	shl    $0x5,%eax
  401387:	89 c2                	mov    %eax,%edx
  401389:	8b 45 fc             	mov    -0x4(%ebp),%eax
  40138c:	01 d0                	add    %edx,%eax
  40138e:	89 45 f0             	mov    %eax,-0x10(%ebp)
  401391:	eb 5a                	jmp    4013ed <load+0xa3>
  401393:	8b 45 fc             	mov    -0x4(%ebp),%eax
  401396:	8b 40 04             	mov    0x4(%eax),%eax
  401399:	05 00 90 01 00       	add    $0x19000,%eax
  40139e:	89 c1                	mov    %eax,%ecx
  4013a0:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4013a3:	8b 40 10             	mov    0x10(%eax),%eax
  4013a6:	89 c2                	mov    %eax,%edx
  4013a8:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4013ab:	8b 40 0c             	mov    0xc(%eax),%eax
  4013ae:	51                   	push   %ecx
  4013af:	52                   	push   %edx
  4013b0:	50                   	push   %eax
  4013b1:	e8 31 ff ff ff       	call   4012e7 <read_disk>
  4013b6:	83 c4 0c             	add    $0xc,%esp
  4013b9:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4013bc:	8b 50 0c             	mov    0xc(%eax),%edx
  4013bf:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4013c2:	8b 40 10             	mov    0x10(%eax),%eax
  4013c5:	01 d0                	add    %edx,%eax
  4013c7:	89 45 f8             	mov    %eax,-0x8(%ebp)
  4013ca:	eb 0a                	jmp    4013d6 <load+0x8c>
  4013cc:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4013cf:	c6 00 00             	movb   $0x0,(%eax)
  4013d2:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  4013d6:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4013d9:	8b 50 0c             	mov    0xc(%eax),%edx
  4013dc:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4013df:	8b 40 14             	mov    0x14(%eax),%eax
  4013e2:	01 d0                	add    %edx,%eax
  4013e4:	3b 45 f8             	cmp    -0x8(%ebp),%eax
  4013e7:	77 e3                	ja     4013cc <load+0x82>
  4013e9:	83 45 fc 20          	addl   $0x20,-0x4(%ebp)
  4013ed:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4013f0:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  4013f3:	72 9e                	jb     401393 <load+0x49>
  4013f5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4013f8:	8b 40 18             	mov    0x18(%eax),%eax
  4013fb:	a3 c0 3a 40 00       	mov    %eax,0x403ac0
  401400:	c9                   	leave  
  401401:	c3                   	ret    

00401402 <print_tf>:
  401402:	55                   	push   %ebp
  401403:	89 e5                	mov    %esp,%ebp
  401405:	83 ec 08             	sub    $0x8,%esp
  401408:	8b 45 08             	mov    0x8(%ebp),%eax
  40140b:	8b 40 1c             	mov    0x1c(%eax),%eax
  40140e:	83 ec 08             	sub    $0x8,%esp
  401411:	50                   	push   %eax
  401412:	68 7c 1f 40 00       	push   $0x401f7c
  401417:	e8 62 fd ff ff       	call   40117e <printk>
  40141c:	83 c4 10             	add    $0x10,%esp
  40141f:	8b 45 08             	mov    0x8(%ebp),%eax
  401422:	8b 40 10             	mov    0x10(%eax),%eax
  401425:	83 ec 08             	sub    $0x8,%esp
  401428:	50                   	push   %eax
  401429:	68 83 1f 40 00       	push   $0x401f83
  40142e:	e8 4b fd ff ff       	call   40117e <printk>
  401433:	83 c4 10             	add    $0x10,%esp
  401436:	8b 45 08             	mov    0x8(%ebp),%eax
  401439:	8b 40 18             	mov    0x18(%eax),%eax
  40143c:	83 ec 08             	sub    $0x8,%esp
  40143f:	50                   	push   %eax
  401440:	68 8a 1f 40 00       	push   $0x401f8a
  401445:	e8 34 fd ff ff       	call   40117e <printk>
  40144a:	83 c4 10             	add    $0x10,%esp
  40144d:	8b 45 08             	mov    0x8(%ebp),%eax
  401450:	8b 40 14             	mov    0x14(%eax),%eax
  401453:	83 ec 08             	sub    $0x8,%esp
  401456:	50                   	push   %eax
  401457:	68 91 1f 40 00       	push   $0x401f91
  40145c:	e8 1d fd ff ff       	call   40117e <printk>
  401461:	83 c4 10             	add    $0x10,%esp
  401464:	8b 45 08             	mov    0x8(%ebp),%eax
  401467:	8b 00                	mov    (%eax),%eax
  401469:	83 ec 08             	sub    $0x8,%esp
  40146c:	50                   	push   %eax
  40146d:	68 98 1f 40 00       	push   $0x401f98
  401472:	e8 07 fd ff ff       	call   40117e <printk>
  401477:	83 c4 10             	add    $0x10,%esp
  40147a:	8b 45 08             	mov    0x8(%ebp),%eax
  40147d:	8b 40 34             	mov    0x34(%eax),%eax
  401480:	83 ec 08             	sub    $0x8,%esp
  401483:	50                   	push   %eax
  401484:	68 9f 1f 40 00       	push   $0x401f9f
  401489:	e8 f0 fc ff ff       	call   40117e <printk>
  40148e:	83 c4 10             	add    $0x10,%esp
  401491:	8b 45 08             	mov    0x8(%ebp),%eax
  401494:	8b 40 28             	mov    0x28(%eax),%eax
  401497:	83 ec 08             	sub    $0x8,%esp
  40149a:	50                   	push   %eax
  40149b:	68 a6 1f 40 00       	push   $0x401fa6
  4014a0:	e8 d9 fc ff ff       	call   40117e <printk>
  4014a5:	83 c4 10             	add    $0x10,%esp
  4014a8:	8b 45 08             	mov    0x8(%ebp),%eax
  4014ab:	8b 40 2c             	mov    0x2c(%eax),%eax
  4014ae:	83 ec 08             	sub    $0x8,%esp
  4014b1:	50                   	push   %eax
  4014b2:	68 ad 1f 40 00       	push   $0x401fad
  4014b7:	e8 c2 fc ff ff       	call   40117e <printk>
  4014bc:	83 c4 10             	add    $0x10,%esp
  4014bf:	c9                   	leave  
  4014c0:	c3                   	ret    

004014c1 <my_strcpy>:
  4014c1:	55                   	push   %ebp
  4014c2:	89 e5                	mov    %esp,%ebp
  4014c4:	83 ec 10             	sub    $0x10,%esp
  4014c7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  4014ce:	eb 2c                	jmp    4014fc <my_strcpy+0x3b>
  4014d0:	8b 55 fc             	mov    -0x4(%ebp),%edx
  4014d3:	8b 45 08             	mov    0x8(%ebp),%eax
  4014d6:	01 c2                	add    %eax,%edx
  4014d8:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  4014db:	8b 45 0c             	mov    0xc(%ebp),%eax
  4014de:	01 c8                	add    %ecx,%eax
  4014e0:	0f b6 00             	movzbl (%eax),%eax
  4014e3:	88 02                	mov    %al,(%edx)
  4014e5:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  4014e9:	83 7d fc 1d          	cmpl   $0x1d,-0x4(%ebp)
  4014ed:	75 0d                	jne    4014fc <my_strcpy+0x3b>
  4014ef:	8b 55 fc             	mov    -0x4(%ebp),%edx
  4014f2:	8b 45 08             	mov    0x8(%ebp),%eax
  4014f5:	01 d0                	add    %edx,%eax
  4014f7:	c6 00 00             	movb   $0x0,(%eax)
  4014fa:	eb 1a                	jmp    401516 <my_strcpy+0x55>
  4014fc:	8b 55 fc             	mov    -0x4(%ebp),%edx
  4014ff:	8b 45 0c             	mov    0xc(%ebp),%eax
  401502:	01 d0                	add    %edx,%eax
  401504:	0f b6 00             	movzbl (%eax),%eax
  401507:	84 c0                	test   %al,%al
  401509:	75 c5                	jne    4014d0 <my_strcpy+0xf>
  40150b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  40150e:	8b 45 08             	mov    0x8(%ebp),%eax
  401511:	01 d0                	add    %edx,%eax
  401513:	c6 00 00             	movb   $0x0,(%eax)
  401516:	c9                   	leave  
  401517:	c3                   	ret    

00401518 <init_PCB>:
  401518:	55                   	push   %ebp
  401519:	89 e5                	mov    %esp,%ebp
  40151b:	83 ec 10             	sub    $0x10,%esp
  40151e:	68 b3 1f 40 00       	push   $0x401fb3
  401523:	68 80 3b 40 00       	push   $0x403b80
  401528:	e8 94 ff ff ff       	call   4014c1 <my_strcpy>
  40152d:	83 c4 08             	add    $0x8,%esp
  401530:	c7 05 7c 3b 40 00 00 	movl   $0x0,0x403b7c
  401537:	00 00 00 
  40153a:	c7 05 a4 3b 40 00 00 	movl   $0x0,0x403ba4
  401541:	00 00 00 
  401544:	c7 05 b4 3b 40 00 00 	movl   $0x0,0x403bb4
  40154b:	00 00 00 
  40154e:	c7 05 b0 3b 40 00 00 	movl   $0x0,0x403bb0
  401555:	00 00 00 
  401558:	c7 05 a0 3b 40 00 01 	movl   $0x1,0x403ba0
  40155f:	00 00 00 
  401562:	c7 05 a8 3b 40 00 01 	movl   $0x1,0x403ba8
  401569:	00 00 00 
  40156c:	c7 05 ac 3b 40 00 0a 	movl   $0xa,0x403bac
  401573:	00 00 00 
  401576:	c7 05 b0 92 46 00 01 	movl   $0x1,0x4692b0
  40157d:	00 00 00 
  401580:	c7 05 b4 92 46 00 00 	movl   $0x0,0x4692b4
  401587:	00 00 00 
  40158a:	c7 05 00 3b 40 00 00 	movl   $0x0,0x403b00
  401591:	00 00 00 
  401594:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  40159b:	eb 1c                	jmp    4015b9 <init_PCB+0xa1>
  40159d:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4015a0:	8b 55 fc             	mov    -0x4(%ebp),%edx
  4015a3:	69 d2 78 20 00 00    	imul   $0x2078,%edx,%edx
  4015a9:	83 c2 30             	add    $0x30,%edx
  4015ac:	81 c2 40 3b 40 00    	add    $0x403b40,%edx
  4015b2:	89 42 0c             	mov    %eax,0xc(%edx)
  4015b5:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  4015b9:	83 7d fc 63          	cmpl   $0x63,-0x4(%ebp)
  4015bd:	7e de                	jle    40159d <init_PCB+0x85>
  4015bf:	c9                   	leave  
  4015c0:	c3                   	ret    

004015c1 <add_PCB>:
  4015c1:	55                   	push   %ebp
  4015c2:	89 e5                	mov    %esp,%ebp
  4015c4:	83 ec 18             	sub    $0x18,%esp
  4015c7:	8b 15 b0 92 46 00    	mov    0x4692b0,%edx
  4015cd:	a1 b4 92 46 00       	mov    0x4692b4,%eax
  4015d2:	01 c2                	add    %eax,%edx
  4015d4:	a1 00 3b 40 00       	mov    0x403b00,%eax
  4015d9:	01 d0                	add    %edx,%eax
  4015db:	83 f8 32             	cmp    $0x32,%eax
  4015de:	75 1b                	jne    4015fb <add_PCB+0x3a>
  4015e0:	83 ec 0c             	sub    $0xc,%esp
  4015e3:	68 b8 1f 40 00       	push   $0x401fb8
  4015e8:	e8 91 fb ff ff       	call   40117e <printk>
  4015ed:	83 c4 10             	add    $0x10,%esp
  4015f0:	fb                   	sti    
  4015f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4015f6:	e9 55 03 00 00       	jmp    401950 <add_PCB+0x38f>
  4015fb:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  401602:	eb 1d                	jmp    401621 <add_PCB+0x60>
  401604:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401607:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  40160d:	83 c0 60             	add    $0x60,%eax
  401610:	05 40 3b 40 00       	add    $0x403b40,%eax
  401615:	8b 00                	mov    (%eax),%eax
  401617:	85 c0                	test   %eax,%eax
  401619:	75 02                	jne    40161d <add_PCB+0x5c>
  40161b:	eb 0a                	jmp    401627 <add_PCB+0x66>
  40161d:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  401621:	83 7d f4 63          	cmpl   $0x63,-0xc(%ebp)
  401625:	7e dd                	jle    401604 <add_PCB+0x43>
  401627:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40162a:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401630:	83 c0 60             	add    $0x60,%eax
  401633:	05 40 3b 40 00       	add    $0x403b40,%eax
  401638:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  40163e:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
  401642:	0f 85 80 00 00 00    	jne    4016c8 <add_PCB+0x107>
  401648:	a1 3c 31 40 00       	mov    0x40313c,%eax
  40164d:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401653:	05 40 3b 40 00       	add    $0x403b40,%eax
  401658:	89 45 f0             	mov    %eax,-0x10(%ebp)
  40165b:	a1 3c 31 40 00       	mov    0x40313c,%eax
  401660:	8b 55 f4             	mov    -0xc(%ebp),%edx
  401663:	69 d2 78 20 00 00    	imul   $0x2078,%edx,%edx
  401669:	81 c2 40 3b 40 00    	add    $0x403b40,%edx
  40166f:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401675:	83 c0 70             	add    $0x70,%eax
  401678:	05 40 3b 40 00       	add    $0x403b40,%eax
  40167d:	89 10                	mov    %edx,(%eax)
  40167f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401682:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401688:	83 c0 70             	add    $0x70,%eax
  40168b:	8d 90 40 3b 40 00    	lea    0x403b40(%eax),%edx
  401691:	8b 45 f0             	mov    -0x10(%ebp),%eax
  401694:	89 42 04             	mov    %eax,0x4(%edx)
  401697:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40169a:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  4016a0:	83 c0 70             	add    $0x70,%eax
  4016a3:	05 40 3b 40 00       	add    $0x403b40,%eax
  4016a8:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  4016ae:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4016b1:	a3 3c 31 40 00       	mov    %eax,0x40313c
  4016b6:	a1 b0 92 46 00       	mov    0x4692b0,%eax
  4016bb:	83 c0 01             	add    $0x1,%eax
  4016be:	a3 b0 92 46 00       	mov    %eax,0x4692b0
  4016c3:	e9 b6 01 00 00       	jmp    40187e <add_PCB+0x2bd>
  4016c8:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
  4016cc:	0f 85 da 00 00 00    	jne    4017ac <add_PCB+0x1eb>
  4016d2:	a1 b4 92 46 00       	mov    0x4692b4,%eax
  4016d7:	85 c0                	test   %eax,%eax
  4016d9:	75 51                	jne    40172c <add_PCB+0x16b>
  4016db:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4016de:	a3 40 31 40 00       	mov    %eax,0x403140
  4016e3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4016e6:	a3 44 31 40 00       	mov    %eax,0x403144
  4016eb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4016ee:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  4016f4:	83 c0 70             	add    $0x70,%eax
  4016f7:	05 40 3b 40 00       	add    $0x403b40,%eax
  4016fc:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  401703:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401706:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  40170c:	83 c0 70             	add    $0x70,%eax
  40170f:	05 40 3b 40 00       	add    $0x403b40,%eax
  401714:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  40171a:	a1 b4 92 46 00       	mov    0x4692b4,%eax
  40171f:	83 c0 01             	add    $0x1,%eax
  401722:	a3 b4 92 46 00       	mov    %eax,0x4692b4
  401727:	e9 52 01 00 00       	jmp    40187e <add_PCB+0x2bd>
  40172c:	a1 44 31 40 00       	mov    0x403144,%eax
  401731:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401737:	05 40 3b 40 00       	add    $0x403b40,%eax
  40173c:	89 45 f0             	mov    %eax,-0x10(%ebp)
  40173f:	a1 44 31 40 00       	mov    0x403144,%eax
  401744:	8b 55 f4             	mov    -0xc(%ebp),%edx
  401747:	69 d2 78 20 00 00    	imul   $0x2078,%edx,%edx
  40174d:	81 c2 40 3b 40 00    	add    $0x403b40,%edx
  401753:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401759:	83 c0 70             	add    $0x70,%eax
  40175c:	05 40 3b 40 00       	add    $0x403b40,%eax
  401761:	89 10                	mov    %edx,(%eax)
  401763:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401766:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  40176c:	83 c0 70             	add    $0x70,%eax
  40176f:	8d 90 40 3b 40 00    	lea    0x403b40(%eax),%edx
  401775:	8b 45 f0             	mov    -0x10(%ebp),%eax
  401778:	89 42 04             	mov    %eax,0x4(%edx)
  40177b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40177e:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401784:	83 c0 70             	add    $0x70,%eax
  401787:	05 40 3b 40 00       	add    $0x403b40,%eax
  40178c:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  401792:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401795:	a3 44 31 40 00       	mov    %eax,0x403144
  40179a:	a1 b4 92 46 00       	mov    0x4692b4,%eax
  40179f:	83 c0 01             	add    $0x1,%eax
  4017a2:	a3 b4 92 46 00       	mov    %eax,0x4692b4
  4017a7:	e9 d2 00 00 00       	jmp    40187e <add_PCB+0x2bd>
  4017ac:	a1 00 3b 40 00       	mov    0x403b00,%eax
  4017b1:	85 c0                	test   %eax,%eax
  4017b3:	75 4e                	jne    401803 <add_PCB+0x242>
  4017b5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4017b8:	a3 48 31 40 00       	mov    %eax,0x403148
  4017bd:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4017c0:	a3 4c 31 40 00       	mov    %eax,0x40314c
  4017c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4017c8:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  4017ce:	83 c0 70             	add    $0x70,%eax
  4017d1:	05 40 3b 40 00       	add    $0x403b40,%eax
  4017d6:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  4017dd:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4017e0:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  4017e6:	83 c0 70             	add    $0x70,%eax
  4017e9:	05 40 3b 40 00       	add    $0x403b40,%eax
  4017ee:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  4017f4:	a1 00 3b 40 00       	mov    0x403b00,%eax
  4017f9:	83 c0 01             	add    $0x1,%eax
  4017fc:	a3 00 3b 40 00       	mov    %eax,0x403b00
  401801:	eb 7b                	jmp    40187e <add_PCB+0x2bd>
  401803:	a1 4c 31 40 00       	mov    0x40314c,%eax
  401808:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  40180e:	05 40 3b 40 00       	add    $0x403b40,%eax
  401813:	89 45 f0             	mov    %eax,-0x10(%ebp)
  401816:	a1 4c 31 40 00       	mov    0x40314c,%eax
  40181b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  40181e:	69 d2 78 20 00 00    	imul   $0x2078,%edx,%edx
  401824:	81 c2 40 3b 40 00    	add    $0x403b40,%edx
  40182a:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401830:	83 c0 70             	add    $0x70,%eax
  401833:	05 40 3b 40 00       	add    $0x403b40,%eax
  401838:	89 10                	mov    %edx,(%eax)
  40183a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40183d:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401843:	83 c0 70             	add    $0x70,%eax
  401846:	8d 90 40 3b 40 00    	lea    0x403b40(%eax),%edx
  40184c:	8b 45 f0             	mov    -0x10(%ebp),%eax
  40184f:	89 42 04             	mov    %eax,0x4(%edx)
  401852:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401855:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  40185b:	83 c0 70             	add    $0x70,%eax
  40185e:	05 40 3b 40 00       	add    $0x403b40,%eax
  401863:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  401869:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40186c:	a3 4c 31 40 00       	mov    %eax,0x40314c
  401871:	a1 00 3b 40 00       	mov    0x403b00,%eax
  401876:	83 c0 01             	add    $0x1,%eax
  401879:	a3 00 3b 40 00       	mov    %eax,0x403b00
  40187e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401881:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401887:	83 c0 40             	add    $0x40,%eax
  40188a:	05 40 3b 40 00       	add    $0x403b40,%eax
  40188f:	83 ec 08             	sub    $0x8,%esp
  401892:	ff 75 48             	pushl  0x48(%ebp)
  401895:	50                   	push   %eax
  401896:	e8 26 fc ff ff       	call   4014c1 <my_strcpy>
  40189b:	83 c4 10             	add    $0x10,%esp
  40189e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4018a1:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  4018a7:	83 c0 60             	add    $0x60,%eax
  4018aa:	8d 90 40 3b 40 00    	lea    0x403b40(%eax),%edx
  4018b0:	8b 45 4c             	mov    0x4c(%ebp),%eax
  4018b3:	89 42 0c             	mov    %eax,0xc(%edx)
  4018b6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4018b9:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  4018bf:	83 c0 60             	add    $0x60,%eax
  4018c2:	8d 90 40 3b 40 00    	lea    0x403b40(%eax),%edx
  4018c8:	8b 45 08             	mov    0x8(%ebp),%eax
  4018cb:	89 42 08             	mov    %eax,0x8(%edx)
  4018ce:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4018d1:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  4018d7:	05 40 3b 40 00       	add    $0x403b40,%eax
  4018dc:	8b 55 0c             	mov    0xc(%ebp),%edx
  4018df:	89 10                	mov    %edx,(%eax)
  4018e1:	8b 55 10             	mov    0x10(%ebp),%edx
  4018e4:	89 50 04             	mov    %edx,0x4(%eax)
  4018e7:	8b 55 14             	mov    0x14(%ebp),%edx
  4018ea:	89 50 08             	mov    %edx,0x8(%eax)
  4018ed:	8b 55 18             	mov    0x18(%ebp),%edx
  4018f0:	89 50 0c             	mov    %edx,0xc(%eax)
  4018f3:	8b 55 1c             	mov    0x1c(%ebp),%edx
  4018f6:	89 50 10             	mov    %edx,0x10(%eax)
  4018f9:	8b 55 20             	mov    0x20(%ebp),%edx
  4018fc:	89 50 14             	mov    %edx,0x14(%eax)
  4018ff:	8b 55 24             	mov    0x24(%ebp),%edx
  401902:	89 50 18             	mov    %edx,0x18(%eax)
  401905:	8b 55 28             	mov    0x28(%ebp),%edx
  401908:	89 50 1c             	mov    %edx,0x1c(%eax)
  40190b:	8b 55 2c             	mov    0x2c(%ebp),%edx
  40190e:	89 50 20             	mov    %edx,0x20(%eax)
  401911:	8b 55 30             	mov    0x30(%ebp),%edx
  401914:	89 50 24             	mov    %edx,0x24(%eax)
  401917:	8b 55 34             	mov    0x34(%ebp),%edx
  40191a:	89 50 28             	mov    %edx,0x28(%eax)
  40191d:	8b 55 38             	mov    0x38(%ebp),%edx
  401920:	89 50 2c             	mov    %edx,0x2c(%eax)
  401923:	8b 55 3c             	mov    0x3c(%ebp),%edx
  401926:	89 50 30             	mov    %edx,0x30(%eax)
  401929:	8b 55 40             	mov    0x40(%ebp),%edx
  40192c:	89 50 34             	mov    %edx,0x34(%eax)
  40192f:	8b 55 44             	mov    0x44(%ebp),%edx
  401932:	89 50 38             	mov    %edx,0x38(%eax)
  401935:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401938:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  40193e:	83 c0 60             	add    $0x60,%eax
  401941:	8d 90 40 3b 40 00    	lea    0x403b40(%eax),%edx
  401947:	8b 45 50             	mov    0x50(%ebp),%eax
  40194a:	89 42 04             	mov    %eax,0x4(%edx)
  40194d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401950:	c9                   	leave  
  401951:	c3                   	ret    

00401952 <delete_PCB>:
  401952:	55                   	push   %ebp
  401953:	89 e5                	mov    %esp,%ebp
  401955:	83 ec 18             	sub    $0x18,%esp
  401958:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  40195c:	75 15                	jne    401973 <delete_PCB+0x21>
  40195e:	83 ec 0c             	sub    $0xc,%esp
  401961:	68 cc 1f 40 00       	push   $0x401fcc
  401966:	e8 13 f8 ff ff       	call   40117e <printk>
  40196b:	83 c4 10             	add    $0x10,%esp
  40196e:	e9 d4 02 00 00       	jmp    401c47 <delete_PCB+0x2f5>
  401973:	8b 45 08             	mov    0x8(%ebp),%eax
  401976:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  40197c:	83 c0 60             	add    $0x60,%eax
  40197f:	05 40 3b 40 00       	add    $0x403b40,%eax
  401984:	8b 00                	mov    (%eax),%eax
  401986:	85 c0                	test   %eax,%eax
  401988:	75 15                	jne    40199f <delete_PCB+0x4d>
  40198a:	83 ec 0c             	sub    $0xc,%esp
  40198d:	68 ef 1f 40 00       	push   $0x401fef
  401992:	e8 e7 f7 ff ff       	call   40117e <printk>
  401997:	83 c4 10             	add    $0x10,%esp
  40199a:	e9 a8 02 00 00       	jmp    401c47 <delete_PCB+0x2f5>
  40199f:	8b 45 08             	mov    0x8(%ebp),%eax
  4019a2:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  4019a8:	83 c0 60             	add    $0x60,%eax
  4019ab:	05 40 3b 40 00       	add    $0x403b40,%eax
  4019b0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  4019b6:	8b 45 08             	mov    0x8(%ebp),%eax
  4019b9:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  4019bf:	83 c0 60             	add    $0x60,%eax
  4019c2:	05 40 3b 40 00       	add    $0x403b40,%eax
  4019c7:	8b 40 08             	mov    0x8(%eax),%eax
  4019ca:	83 f8 01             	cmp    $0x1,%eax
  4019cd:	0f 85 c0 00 00 00    	jne    401a93 <delete_PCB+0x141>
  4019d3:	a1 3c 31 40 00       	mov    0x40313c,%eax
  4019d8:	3b 45 08             	cmp    0x8(%ebp),%eax
  4019db:	75 49                	jne    401a26 <delete_PCB+0xd4>
  4019dd:	8b 45 08             	mov    0x8(%ebp),%eax
  4019e0:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  4019e6:	83 c0 70             	add    $0x70,%eax
  4019e9:	05 40 3b 40 00       	add    $0x403b40,%eax
  4019ee:	8b 40 04             	mov    0x4(%eax),%eax
  4019f1:	8b 40 3c             	mov    0x3c(%eax),%eax
  4019f4:	a3 3c 31 40 00       	mov    %eax,0x40313c
  4019f9:	8b 45 08             	mov    0x8(%ebp),%eax
  4019fc:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401a02:	83 c0 70             	add    $0x70,%eax
  401a05:	05 40 3b 40 00       	add    $0x403b40,%eax
  401a0a:	8b 40 04             	mov    0x4(%eax),%eax
  401a0d:	8b 55 08             	mov    0x8(%ebp),%edx
  401a10:	69 d2 78 20 00 00    	imul   $0x2078,%edx,%edx
  401a16:	83 c2 70             	add    $0x70,%edx
  401a19:	81 c2 40 3b 40 00    	add    $0x403b40,%edx
  401a1f:	8b 12                	mov    (%edx),%edx
  401a21:	89 50 70             	mov    %edx,0x70(%eax)
  401a24:	eb 5b                	jmp    401a81 <delete_PCB+0x12f>
  401a26:	8b 45 08             	mov    0x8(%ebp),%eax
  401a29:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401a2f:	83 c0 70             	add    $0x70,%eax
  401a32:	05 40 3b 40 00       	add    $0x403b40,%eax
  401a37:	8b 40 04             	mov    0x4(%eax),%eax
  401a3a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401a3d:	8b 45 08             	mov    0x8(%ebp),%eax
  401a40:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401a46:	83 c0 70             	add    $0x70,%eax
  401a49:	05 40 3b 40 00       	add    $0x403b40,%eax
  401a4e:	8b 40 04             	mov    0x4(%eax),%eax
  401a51:	8b 55 08             	mov    0x8(%ebp),%edx
  401a54:	69 d2 78 20 00 00    	imul   $0x2078,%edx,%edx
  401a5a:	83 c2 70             	add    $0x70,%edx
  401a5d:	81 c2 40 3b 40 00    	add    $0x403b40,%edx
  401a63:	8b 12                	mov    (%edx),%edx
  401a65:	89 50 70             	mov    %edx,0x70(%eax)
  401a68:	8b 45 08             	mov    0x8(%ebp),%eax
  401a6b:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401a71:	83 c0 70             	add    $0x70,%eax
  401a74:	05 40 3b 40 00       	add    $0x403b40,%eax
  401a79:	8b 00                	mov    (%eax),%eax
  401a7b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  401a7e:	89 50 74             	mov    %edx,0x74(%eax)
  401a81:	a1 b0 92 46 00       	mov    0x4692b0,%eax
  401a86:	83 e8 01             	sub    $0x1,%eax
  401a89:	a3 b0 92 46 00       	mov    %eax,0x4692b0
  401a8e:	e9 b4 01 00 00       	jmp    401c47 <delete_PCB+0x2f5>
  401a93:	8b 45 08             	mov    0x8(%ebp),%eax
  401a96:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401a9c:	83 c0 60             	add    $0x60,%eax
  401a9f:	05 40 3b 40 00       	add    $0x403b40,%eax
  401aa4:	8b 40 08             	mov    0x8(%eax),%eax
  401aa7:	83 f8 02             	cmp    $0x2,%eax
  401aaa:	0f 85 d0 00 00 00    	jne    401b80 <delete_PCB+0x22e>
  401ab0:	a1 b4 92 46 00       	mov    0x4692b4,%eax
  401ab5:	83 e8 01             	sub    $0x1,%eax
  401ab8:	a3 b4 92 46 00       	mov    %eax,0x4692b4
  401abd:	a1 b4 92 46 00       	mov    0x4692b4,%eax
  401ac2:	85 c0                	test   %eax,%eax
  401ac4:	75 19                	jne    401adf <delete_PCB+0x18d>
  401ac6:	c7 05 40 31 40 00 00 	movl   $0x0,0x403140
  401acd:	00 00 00 
  401ad0:	c7 05 44 31 40 00 00 	movl   $0x0,0x403144
  401ad7:	00 00 00 
  401ada:	e9 68 01 00 00       	jmp    401c47 <delete_PCB+0x2f5>
  401adf:	a1 44 31 40 00       	mov    0x403144,%eax
  401ae4:	3b 45 08             	cmp    0x8(%ebp),%eax
  401ae7:	75 1c                	jne    401b05 <delete_PCB+0x1b3>
  401ae9:	8b 45 08             	mov    0x8(%ebp),%eax
  401aec:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401af2:	83 c0 70             	add    $0x70,%eax
  401af5:	05 40 3b 40 00       	add    $0x403b40,%eax
  401afa:	8b 40 04             	mov    0x4(%eax),%eax
  401afd:	8b 40 3c             	mov    0x3c(%eax),%eax
  401b00:	a3 44 31 40 00       	mov    %eax,0x403144
  401b05:	8b 45 08             	mov    0x8(%ebp),%eax
  401b08:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401b0e:	83 c0 70             	add    $0x70,%eax
  401b11:	05 40 3b 40 00       	add    $0x403b40,%eax
  401b16:	8b 40 04             	mov    0x4(%eax),%eax
  401b19:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401b1c:	8b 45 08             	mov    0x8(%ebp),%eax
  401b1f:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401b25:	83 c0 70             	add    $0x70,%eax
  401b28:	05 40 3b 40 00       	add    $0x403b40,%eax
  401b2d:	8b 40 04             	mov    0x4(%eax),%eax
  401b30:	8b 55 08             	mov    0x8(%ebp),%edx
  401b33:	69 d2 78 20 00 00    	imul   $0x2078,%edx,%edx
  401b39:	83 c2 70             	add    $0x70,%edx
  401b3c:	81 c2 40 3b 40 00    	add    $0x403b40,%edx
  401b42:	8b 12                	mov    (%edx),%edx
  401b44:	89 50 70             	mov    %edx,0x70(%eax)
  401b47:	8b 45 08             	mov    0x8(%ebp),%eax
  401b4a:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401b50:	83 c0 70             	add    $0x70,%eax
  401b53:	05 40 3b 40 00       	add    $0x403b40,%eax
  401b58:	8b 00                	mov    (%eax),%eax
  401b5a:	85 c0                	test   %eax,%eax
  401b5c:	0f 84 e5 00 00 00    	je     401c47 <delete_PCB+0x2f5>
  401b62:	8b 45 08             	mov    0x8(%ebp),%eax
  401b65:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401b6b:	83 c0 70             	add    $0x70,%eax
  401b6e:	05 40 3b 40 00       	add    $0x403b40,%eax
  401b73:	8b 00                	mov    (%eax),%eax
  401b75:	8b 55 f4             	mov    -0xc(%ebp),%edx
  401b78:	89 50 74             	mov    %edx,0x74(%eax)
  401b7b:	e9 c7 00 00 00       	jmp    401c47 <delete_PCB+0x2f5>
  401b80:	a1 00 3b 40 00       	mov    0x403b00,%eax
  401b85:	83 e8 01             	sub    $0x1,%eax
  401b88:	a3 00 3b 40 00       	mov    %eax,0x403b00
  401b8d:	a1 00 3b 40 00       	mov    0x403b00,%eax
  401b92:	85 c0                	test   %eax,%eax
  401b94:	75 19                	jne    401baf <delete_PCB+0x25d>
  401b96:	c7 05 48 31 40 00 00 	movl   $0x0,0x403148
  401b9d:	00 00 00 
  401ba0:	c7 05 4c 31 40 00 00 	movl   $0x0,0x40314c
  401ba7:	00 00 00 
  401baa:	e9 98 00 00 00       	jmp    401c47 <delete_PCB+0x2f5>
  401baf:	a1 4c 31 40 00       	mov    0x40314c,%eax
  401bb4:	3b 45 08             	cmp    0x8(%ebp),%eax
  401bb7:	75 1c                	jne    401bd5 <delete_PCB+0x283>
  401bb9:	8b 45 08             	mov    0x8(%ebp),%eax
  401bbc:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401bc2:	83 c0 70             	add    $0x70,%eax
  401bc5:	05 40 3b 40 00       	add    $0x403b40,%eax
  401bca:	8b 40 04             	mov    0x4(%eax),%eax
  401bcd:	8b 40 3c             	mov    0x3c(%eax),%eax
  401bd0:	a3 4c 31 40 00       	mov    %eax,0x40314c
  401bd5:	8b 45 08             	mov    0x8(%ebp),%eax
  401bd8:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401bde:	83 c0 70             	add    $0x70,%eax
  401be1:	05 40 3b 40 00       	add    $0x403b40,%eax
  401be6:	8b 40 04             	mov    0x4(%eax),%eax
  401be9:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401bec:	8b 45 08             	mov    0x8(%ebp),%eax
  401bef:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401bf5:	83 c0 70             	add    $0x70,%eax
  401bf8:	05 40 3b 40 00       	add    $0x403b40,%eax
  401bfd:	8b 40 04             	mov    0x4(%eax),%eax
  401c00:	8b 55 08             	mov    0x8(%ebp),%edx
  401c03:	69 d2 78 20 00 00    	imul   $0x2078,%edx,%edx
  401c09:	83 c2 70             	add    $0x70,%edx
  401c0c:	81 c2 40 3b 40 00    	add    $0x403b40,%edx
  401c12:	8b 12                	mov    (%edx),%edx
  401c14:	89 50 70             	mov    %edx,0x70(%eax)
  401c17:	8b 45 08             	mov    0x8(%ebp),%eax
  401c1a:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401c20:	83 c0 70             	add    $0x70,%eax
  401c23:	05 40 3b 40 00       	add    $0x403b40,%eax
  401c28:	8b 00                	mov    (%eax),%eax
  401c2a:	85 c0                	test   %eax,%eax
  401c2c:	74 19                	je     401c47 <delete_PCB+0x2f5>
  401c2e:	8b 45 08             	mov    0x8(%ebp),%eax
  401c31:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401c37:	83 c0 70             	add    $0x70,%eax
  401c3a:	05 40 3b 40 00       	add    $0x403b40,%eax
  401c3f:	8b 00                	mov    (%eax),%eax
  401c41:	8b 55 f4             	mov    -0xc(%ebp),%edx
  401c44:	89 50 74             	mov    %edx,0x74(%eax)
  401c47:	c9                   	leave  
  401c48:	c3                   	ret    

00401c49 <reschedule>:
  401c49:	55                   	push   %ebp
  401c4a:	89 e5                	mov    %esp,%ebp
  401c4c:	83 ec 18             	sub    $0x18,%esp
  401c4f:	a1 38 31 40 00       	mov    0x403138,%eax
  401c54:	89 45 f0             	mov    %eax,-0x10(%ebp)
  401c57:	a1 b0 92 46 00       	mov    0x4692b0,%eax
  401c5c:	83 f8 01             	cmp    $0x1,%eax
  401c5f:	75 0b                	jne    401c6c <reschedule+0x23>
  401c61:	a1 b4 92 46 00       	mov    0x4692b4,%eax
  401c66:	85 c0                	test   %eax,%eax
  401c68:	75 02                	jne    401c6c <reschedule+0x23>
  401c6a:	eb fe                	jmp    401c6a <reschedule+0x21>
  401c6c:	a1 b0 92 46 00       	mov    0x4692b0,%eax
  401c71:	83 f8 01             	cmp    $0x1,%eax
  401c74:	7e 4e                	jle    401cc4 <reschedule+0x7b>
  401c76:	8b 45 f0             	mov    -0x10(%ebp),%eax
  401c79:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401c7f:	83 c0 70             	add    $0x70,%eax
  401c82:	05 40 3b 40 00       	add    $0x403b40,%eax
  401c87:	8b 00                	mov    (%eax),%eax
  401c89:	83 c0 78             	add    $0x78,%eax
  401c8c:	05 f8 1f 00 00       	add    $0x1ff8,%eax
  401c91:	83 ec 0c             	sub    $0xc,%esp
  401c94:	50                   	push   %eax
  401c95:	e8 0c e7 ff ff       	call   4003a6 <set_tss>
  401c9a:	83 c4 10             	add    $0x10,%esp
  401c9d:	66 b8 23 00          	mov    $0x23,%ax
  401ca1:	8e d8                	mov    %eax,%ds
  401ca3:	8e c0                	mov    %eax,%es
  401ca5:	8b 45 f0             	mov    -0x10(%ebp),%eax
  401ca8:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401cae:	83 c0 70             	add    $0x70,%eax
  401cb1:	05 40 3b 40 00       	add    $0x403b40,%eax
  401cb6:	8b 00                	mov    (%eax),%eax
  401cb8:	89 c4                	mov    %eax,%esp
  401cba:	61                   	popa   
  401cbb:	83 c4 08             	add    $0x8,%esp
  401cbe:	cf                   	iret   
  401cbf:	e9 f4 00 00 00       	jmp    401db8 <reschedule+0x16f>
  401cc4:	a1 38 31 40 00       	mov    0x403138,%eax
  401cc9:	8b 15 40 31 40 00    	mov    0x403140,%edx
  401ccf:	69 d2 78 20 00 00    	imul   $0x2078,%edx,%edx
  401cd5:	81 c2 40 3b 40 00    	add    $0x403b40,%edx
  401cdb:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401ce1:	83 c0 70             	add    $0x70,%eax
  401ce4:	05 40 3b 40 00       	add    $0x403b40,%eax
  401ce9:	89 10                	mov    %edx,(%eax)
  401ceb:	a1 40 31 40 00       	mov    0x403140,%eax
  401cf0:	8b 15 38 31 40 00    	mov    0x403138,%edx
  401cf6:	69 d2 78 20 00 00    	imul   $0x2078,%edx,%edx
  401cfc:	81 c2 40 3b 40 00    	add    $0x403b40,%edx
  401d02:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401d08:	83 c0 70             	add    $0x70,%eax
  401d0b:	05 40 3b 40 00       	add    $0x403b40,%eax
  401d10:	89 50 04             	mov    %edx,0x4(%eax)
  401d13:	a1 44 31 40 00       	mov    0x403144,%eax
  401d18:	a3 3c 31 40 00       	mov    %eax,0x40313c
  401d1d:	c7 05 40 31 40 00 00 	movl   $0x0,0x403140
  401d24:	00 00 00 
  401d27:	c7 05 44 31 40 00 00 	movl   $0x0,0x403144
  401d2e:	00 00 00 
  401d31:	8b 15 b0 92 46 00    	mov    0x4692b0,%edx
  401d37:	a1 b4 92 46 00       	mov    0x4692b4,%eax
  401d3c:	01 d0                	add    %edx,%eax
  401d3e:	a3 b0 92 46 00       	mov    %eax,0x4692b0
  401d43:	c7 05 b4 92 46 00 00 	movl   $0x0,0x4692b4
  401d4a:	00 00 00 
  401d4d:	c7 45 f4 40 3b 40 00 	movl   $0x403b40,-0xc(%ebp)
  401d54:	eb 13                	jmp    401d69 <reschedule+0x120>
  401d56:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401d59:	c7 40 68 01 00 00 00 	movl   $0x1,0x68(%eax)
  401d60:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401d63:	8b 40 70             	mov    0x70(%eax),%eax
  401d66:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401d69:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  401d6d:	75 e7                	jne    401d56 <reschedule+0x10d>
  401d6f:	8b 45 f0             	mov    -0x10(%ebp),%eax
  401d72:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401d78:	83 c0 70             	add    $0x70,%eax
  401d7b:	05 40 3b 40 00       	add    $0x403b40,%eax
  401d80:	8b 00                	mov    (%eax),%eax
  401d82:	83 c0 78             	add    $0x78,%eax
  401d85:	05 f8 1f 00 00       	add    $0x1ff8,%eax
  401d8a:	83 ec 0c             	sub    $0xc,%esp
  401d8d:	50                   	push   %eax
  401d8e:	e8 13 e6 ff ff       	call   4003a6 <set_tss>
  401d93:	83 c4 10             	add    $0x10,%esp
  401d96:	66 b8 23 00          	mov    $0x23,%ax
  401d9a:	8e d8                	mov    %eax,%ds
  401d9c:	8e c0                	mov    %eax,%es
  401d9e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  401da1:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401da7:	83 c0 70             	add    $0x70,%eax
  401daa:	05 40 3b 40 00       	add    $0x403b40,%eax
  401daf:	8b 00                	mov    (%eax),%eax
  401db1:	89 c4                	mov    %eax,%esp
  401db3:	61                   	popa   
  401db4:	83 c4 08             	add    $0x8,%esp
  401db7:	cf                   	iret   
  401db8:	c9                   	leave  
  401db9:	c3                   	ret    

00401dba <time_treat>:
  401dba:	55                   	push   %ebp
  401dbb:	89 e5                	mov    %esp,%ebp
  401dbd:	83 ec 08             	sub    $0x8,%esp
  401dc0:	a1 b0 92 46 00       	mov    0x4692b0,%eax
  401dc5:	83 f8 01             	cmp    $0x1,%eax
  401dc8:	0f 84 e7 00 00 00    	je     401eb5 <time_treat+0xfb>
  401dce:	a1 38 31 40 00       	mov    0x403138,%eax
  401dd3:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401dd9:	83 c0 70             	add    $0x70,%eax
  401ddc:	05 40 3b 40 00       	add    $0x403b40,%eax
  401de1:	8b 00                	mov    (%eax),%eax
  401de3:	8b 50 6c             	mov    0x6c(%eax),%edx
  401de6:	83 ea 01             	sub    $0x1,%edx
  401de9:	89 50 6c             	mov    %edx,0x6c(%eax)
  401dec:	a1 38 31 40 00       	mov    0x403138,%eax
  401df1:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401df7:	83 c0 70             	add    $0x70,%eax
  401dfa:	05 40 3b 40 00       	add    $0x403b40,%eax
  401dff:	8b 00                	mov    (%eax),%eax
  401e01:	8b 40 6c             	mov    0x6c(%eax),%eax
  401e04:	85 c0                	test   %eax,%eax
  401e06:	0f 85 a9 00 00 00    	jne    401eb5 <time_treat+0xfb>
  401e0c:	a1 38 31 40 00       	mov    0x403138,%eax
  401e11:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401e17:	83 c0 70             	add    $0x70,%eax
  401e1a:	05 40 3b 40 00       	add    $0x403b40,%eax
  401e1f:	8b 00                	mov    (%eax),%eax
  401e21:	8b 40 64             	mov    0x64(%eax),%eax
  401e24:	8b 15 38 31 40 00    	mov    0x403138,%edx
  401e2a:	69 d2 78 20 00 00    	imul   $0x2078,%edx,%edx
  401e30:	83 c2 70             	add    $0x70,%edx
  401e33:	81 c2 40 3b 40 00    	add    $0x403b40,%edx
  401e39:	8b 12                	mov    (%edx),%edx
  401e3b:	83 c2 40             	add    $0x40,%edx
  401e3e:	83 ec 04             	sub    $0x4,%esp
  401e41:	50                   	push   %eax
  401e42:	6a 0a                	push   $0xa
  401e44:	52                   	push   %edx
  401e45:	8b 45 08             	mov    0x8(%ebp),%eax
  401e48:	ff 70 38             	pushl  0x38(%eax)
  401e4b:	ff 70 34             	pushl  0x34(%eax)
  401e4e:	ff 70 30             	pushl  0x30(%eax)
  401e51:	ff 70 2c             	pushl  0x2c(%eax)
  401e54:	ff 70 28             	pushl  0x28(%eax)
  401e57:	ff 70 24             	pushl  0x24(%eax)
  401e5a:	ff 70 20             	pushl  0x20(%eax)
  401e5d:	ff 70 1c             	pushl  0x1c(%eax)
  401e60:	ff 70 18             	pushl  0x18(%eax)
  401e63:	ff 70 14             	pushl  0x14(%eax)
  401e66:	ff 70 10             	pushl  0x10(%eax)
  401e69:	ff 70 0c             	pushl  0xc(%eax)
  401e6c:	ff 70 08             	pushl  0x8(%eax)
  401e6f:	ff 70 04             	pushl  0x4(%eax)
  401e72:	ff 30                	pushl  (%eax)
  401e74:	6a 02                	push   $0x2
  401e76:	e8 46 f7 ff ff       	call   4015c1 <add_PCB>
  401e7b:	83 c4 50             	add    $0x50,%esp
  401e7e:	83 ec 0c             	sub    $0xc,%esp
  401e81:	ff 75 08             	pushl  0x8(%ebp)
  401e84:	e8 79 f5 ff ff       	call   401402 <print_tf>
  401e89:	83 c4 10             	add    $0x10,%esp
  401e8c:	a1 38 31 40 00       	mov    0x403138,%eax
  401e91:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401e97:	83 c0 70             	add    $0x70,%eax
  401e9a:	05 40 3b 40 00       	add    $0x403b40,%eax
  401e9f:	8b 00                	mov    (%eax),%eax
  401ea1:	8b 40 3c             	mov    0x3c(%eax),%eax
  401ea4:	83 ec 0c             	sub    $0xc,%esp
  401ea7:	50                   	push   %eax
  401ea8:	e8 a5 fa ff ff       	call   401952 <delete_PCB>
  401ead:	83 c4 10             	add    $0x10,%esp
  401eb0:	e8 94 fd ff ff       	call   401c49 <reschedule>
  401eb5:	c9                   	leave  
  401eb6:	c3                   	ret    

00401eb7 <process_exit>:
  401eb7:	55                   	push   %ebp
  401eb8:	89 e5                	mov    %esp,%ebp
  401eba:	83 ec 08             	sub    $0x8,%esp
  401ebd:	a1 38 31 40 00       	mov    0x403138,%eax
  401ec2:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401ec8:	83 c0 70             	add    $0x70,%eax
  401ecb:	05 40 3b 40 00       	add    $0x403b40,%eax
  401ed0:	8b 00                	mov    (%eax),%eax
  401ed2:	8b 40 3c             	mov    0x3c(%eax),%eax
  401ed5:	83 ec 0c             	sub    $0xc,%esp
  401ed8:	50                   	push   %eax
  401ed9:	e8 74 fa ff ff       	call   401952 <delete_PCB>
  401ede:	83 c4 10             	add    $0x10,%esp
  401ee1:	e8 63 fd ff ff       	call   401c49 <reschedule>
  401ee6:	c9                   	leave  
  401ee7:	c3                   	ret    

00401ee8 <debug>:
  401ee8:	55                   	push   %ebp
  401ee9:	89 e5                	mov    %esp,%ebp
  401eeb:	83 ec 08             	sub    $0x8,%esp
  401eee:	8b 15 b4 92 46 00    	mov    0x4692b4,%edx
  401ef4:	a1 b0 92 46 00       	mov    0x4692b0,%eax
  401ef9:	83 ec 04             	sub    $0x4,%esp
  401efc:	52                   	push   %edx
  401efd:	50                   	push   %eax
  401efe:	68 0d 20 40 00       	push   $0x40200d
  401f03:	e8 76 f2 ff ff       	call   40117e <printk>
  401f08:	83 c4 10             	add    $0x10,%esp
  401f0b:	c9                   	leave  
  401f0c:	c3                   	ret    

00401f0d <getpid>:
  401f0d:	55                   	push   %ebp
  401f0e:	89 e5                	mov    %esp,%ebp
  401f10:	a1 38 31 40 00       	mov    0x403138,%eax
  401f15:	69 c0 78 20 00 00    	imul   $0x2078,%eax,%eax
  401f1b:	83 c0 70             	add    $0x70,%eax
  401f1e:	05 40 3b 40 00       	add    $0x403b40,%eax
  401f23:	8b 00                	mov    (%eax),%eax
  401f25:	8b 40 3c             	mov    0x3c(%eax),%eax
  401f28:	5d                   	pop    %ebp
  401f29:	c3                   	ret    
