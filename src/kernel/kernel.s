
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
  400158:	e8 00 01 00 00       	call   40025d <init_serial>
  40015d:	e8 b4 01 00 00       	call   400316 <init_timer>
  400162:	e8 fb 05 00 00       	call   400762 <init_intr>
  400167:	e8 33 08 00 00       	call   40099f <init_idt>
  40016c:	e8 c0 04 00 00       	call   400631 <init_seg>
  400171:	bc 00 00 2f 00       	mov    $0x2f0000,%esp
  400176:	e8 a9 13 00 00       	call   401524 <init_PCB>
  40017b:	83 ec 0c             	sub    $0xc,%esp
  40017e:	68 00 90 01 00       	push   $0x19000
  400183:	e8 bd 11 00 00       	call   401345 <load>
  400188:	83 c4 10             	add    $0x10,%esp
  40018b:	a3 c8 31 40 00       	mov    %eax,0x4031c8
  400190:	c7 05 cc 31 40 00 1b 	movl   $0x1b,0x4031cc
  400197:	00 00 00 
  40019a:	c7 05 d0 31 40 00 02 	movl   $0x202,0x4031d0
  4001a1:	02 00 00 
  4001a4:	c7 05 d4 31 40 00 00 	movl   $0x1f0000,0x4031d4
  4001ab:	00 1f 00 
  4001ae:	c7 05 d8 31 40 00 23 	movl   $0x23,0x4031d8
  4001b5:	00 00 00 
  4001b8:	83 ec 0c             	sub    $0xc,%esp
  4001bb:	68 00 20 03 00       	push   $0x32000
  4001c0:	e8 80 11 00 00       	call   401345 <load>
  4001c5:	83 c4 10             	add    $0x10,%esp
  4001c8:	a3 88 31 40 00       	mov    %eax,0x403188
  4001cd:	c7 05 8c 31 40 00 1b 	movl   $0x1b,0x40318c
  4001d4:	00 00 00 
  4001d7:	c7 05 90 31 40 00 02 	movl   $0x202,0x403190
  4001de:	02 00 00 
  4001e1:	c7 05 94 31 40 00 00 	movl   $0x500000,0x403194
  4001e8:	00 50 00 
  4001eb:	c7 05 98 31 40 00 23 	movl   $0x23,0x403198
  4001f2:	00 00 00 
  4001f5:	83 ec 0c             	sub    $0xc,%esp
  4001f8:	6a 00                	push   $0x0
  4001fa:	6a 0a                	push   $0xa
  4001fc:	68 d4 1f 40 00       	push   $0x401fd4
  400201:	68 a0 31 40 00       	push   $0x4031a0
  400206:	6a 01                	push   $0x1
  400208:	e8 c0 13 00 00       	call   4015cd <add_PCB>
  40020d:	83 c4 20             	add    $0x20,%esp
  400210:	83 ec 0c             	sub    $0xc,%esp
  400213:	6a 00                	push   $0x0
  400215:	6a 0a                	push   $0xa
  400217:	68 d9 1f 40 00       	push   $0x401fd9
  40021c:	68 60 31 40 00       	push   $0x403160
  400221:	6a 01                	push   $0x1
  400223:	e8 a5 13 00 00       	call   4015cd <add_PCB>
  400228:	83 c4 20             	add    $0x20,%esp
  40022b:	e8 b0 1a 00 00       	call   401ce0 <reschedule>
  400230:	eb fe                	jmp    400230 <main+0xef>

00400232 <inb>:
  400232:	55                   	push   %ebp
  400233:	89 e5                	mov    %esp,%ebp
  400235:	83 ec 10             	sub    $0x10,%esp
  400238:	8b 45 08             	mov    0x8(%ebp),%eax
  40023b:	89 c2                	mov    %eax,%edx
  40023d:	ec                   	in     (%dx),%al
  40023e:	88 45 ff             	mov    %al,-0x1(%ebp)
  400241:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  400245:	c9                   	leave  
  400246:	c3                   	ret    

00400247 <outb>:
  400247:	55                   	push   %ebp
  400248:	89 e5                	mov    %esp,%ebp
  40024a:	83 ec 04             	sub    $0x4,%esp
  40024d:	8b 45 0c             	mov    0xc(%ebp),%eax
  400250:	88 45 fc             	mov    %al,-0x4(%ebp)
  400253:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  400257:	8b 55 08             	mov    0x8(%ebp),%edx
  40025a:	ee                   	out    %al,(%dx)
  40025b:	c9                   	leave  
  40025c:	c3                   	ret    

0040025d <init_serial>:
  40025d:	55                   	push   %ebp
  40025e:	89 e5                	mov    %esp,%ebp
  400260:	6a 00                	push   $0x0
  400262:	68 f9 03 00 00       	push   $0x3f9
  400267:	e8 db ff ff ff       	call   400247 <outb>
  40026c:	83 c4 08             	add    $0x8,%esp
  40026f:	68 80 00 00 00       	push   $0x80
  400274:	68 fb 03 00 00       	push   $0x3fb
  400279:	e8 c9 ff ff ff       	call   400247 <outb>
  40027e:	83 c4 08             	add    $0x8,%esp
  400281:	6a 03                	push   $0x3
  400283:	68 f8 03 00 00       	push   $0x3f8
  400288:	e8 ba ff ff ff       	call   400247 <outb>
  40028d:	83 c4 08             	add    $0x8,%esp
  400290:	6a 00                	push   $0x0
  400292:	68 f9 03 00 00       	push   $0x3f9
  400297:	e8 ab ff ff ff       	call   400247 <outb>
  40029c:	83 c4 08             	add    $0x8,%esp
  40029f:	6a 03                	push   $0x3
  4002a1:	68 fb 03 00 00       	push   $0x3fb
  4002a6:	e8 9c ff ff ff       	call   400247 <outb>
  4002ab:	83 c4 08             	add    $0x8,%esp
  4002ae:	68 c7 00 00 00       	push   $0xc7
  4002b3:	68 fa 03 00 00       	push   $0x3fa
  4002b8:	e8 8a ff ff ff       	call   400247 <outb>
  4002bd:	83 c4 08             	add    $0x8,%esp
  4002c0:	6a 0b                	push   $0xb
  4002c2:	68 fc 03 00 00       	push   $0x3fc
  4002c7:	e8 7b ff ff ff       	call   400247 <outb>
  4002cc:	83 c4 08             	add    $0x8,%esp
  4002cf:	c9                   	leave  
  4002d0:	c3                   	ret    

004002d1 <is_serial_idle>:
  4002d1:	55                   	push   %ebp
  4002d2:	89 e5                	mov    %esp,%ebp
  4002d4:	68 fd 03 00 00       	push   $0x3fd
  4002d9:	e8 54 ff ff ff       	call   400232 <inb>
  4002de:	83 c4 04             	add    $0x4,%esp
  4002e1:	0f b6 c0             	movzbl %al,%eax
  4002e4:	83 e0 20             	and    $0x20,%eax
  4002e7:	c9                   	leave  
  4002e8:	c3                   	ret    

004002e9 <serial_out>:
  4002e9:	55                   	push   %ebp
  4002ea:	89 e5                	mov    %esp,%ebp
  4002ec:	83 ec 04             	sub    $0x4,%esp
  4002ef:	8b 45 08             	mov    0x8(%ebp),%eax
  4002f2:	88 45 fc             	mov    %al,-0x4(%ebp)
  4002f5:	90                   	nop
  4002f6:	e8 d6 ff ff ff       	call   4002d1 <is_serial_idle>
  4002fb:	85 c0                	test   %eax,%eax
  4002fd:	74 f7                	je     4002f6 <serial_out+0xd>
  4002ff:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  400303:	0f b6 c0             	movzbl %al,%eax
  400306:	50                   	push   %eax
  400307:	68 f8 03 00 00       	push   $0x3f8
  40030c:	e8 36 ff ff ff       	call   400247 <outb>
  400311:	83 c4 08             	add    $0x8,%esp
  400314:	c9                   	leave  
  400315:	c3                   	ret    

00400316 <init_timer>:
  400316:	55                   	push   %ebp
  400317:	89 e5                	mov    %esp,%ebp
  400319:	83 ec 20             	sub    $0x20,%esp
  40031c:	c7 45 fc a9 04 00 00 	movl   $0x4a9,-0x4(%ebp)
  400323:	c7 45 f8 43 00 00 00 	movl   $0x43,-0x8(%ebp)
  40032a:	c6 45 f7 34          	movb   $0x34,-0x9(%ebp)
  40032e:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
  400332:	8b 55 f8             	mov    -0x8(%ebp),%edx
  400335:	ee                   	out    %al,(%dx)
  400336:	8b 45 fc             	mov    -0x4(%ebp),%eax
  400339:	99                   	cltd   
  40033a:	c1 ea 18             	shr    $0x18,%edx
  40033d:	01 d0                	add    %edx,%eax
  40033f:	0f b6 c0             	movzbl %al,%eax
  400342:	29 d0                	sub    %edx,%eax
  400344:	0f b6 c0             	movzbl %al,%eax
  400347:	c7 45 f0 40 00 00 00 	movl   $0x40,-0x10(%ebp)
  40034e:	88 45 ef             	mov    %al,-0x11(%ebp)
  400351:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
  400355:	8b 55 f0             	mov    -0x10(%ebp),%edx
  400358:	ee                   	out    %al,(%dx)
  400359:	8b 45 fc             	mov    -0x4(%ebp),%eax
  40035c:	8d 90 ff 00 00 00    	lea    0xff(%eax),%edx
  400362:	85 c0                	test   %eax,%eax
  400364:	0f 48 c2             	cmovs  %edx,%eax
  400367:	c1 f8 08             	sar    $0x8,%eax
  40036a:	0f b6 c0             	movzbl %al,%eax
  40036d:	c7 45 e8 40 00 00 00 	movl   $0x40,-0x18(%ebp)
  400374:	88 45 e7             	mov    %al,-0x19(%ebp)
  400377:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  40037b:	8b 55 e8             	mov    -0x18(%ebp),%edx
  40037e:	ee                   	out    %al,(%dx)
  40037f:	c9                   	leave  
  400380:	c3                   	ret    

00400381 <write_gdtr>:
  400381:	55                   	push   %ebp
  400382:	89 e5                	mov    %esp,%ebp
  400384:	8b 45 0c             	mov    0xc(%ebp),%eax
  400387:	83 e8 01             	sub    $0x1,%eax
  40038a:	66 a3 2c 31 40 00    	mov    %ax,0x40312c
  400390:	8b 45 08             	mov    0x8(%ebp),%eax
  400393:	66 a3 2e 31 40 00    	mov    %ax,0x40312e
  400399:	8b 45 08             	mov    0x8(%ebp),%eax
  40039c:	c1 e8 10             	shr    $0x10,%eax
  40039f:	66 a3 30 31 40 00    	mov    %ax,0x403130
  4003a5:	b8 2c 31 40 00       	mov    $0x40312c,%eax
  4003aa:	0f 01 10             	lgdtl  (%eax)
  4003ad:	5d                   	pop    %ebp
  4003ae:	c3                   	ret    

004003af <set_tss>:
  4003af:	55                   	push   %ebp
  4003b0:	89 e5                	mov    %esp,%ebp
  4003b2:	8b 45 08             	mov    0x8(%ebp),%eax
  4003b5:	a3 84 32 40 00       	mov    %eax,0x403284
  4003ba:	5d                   	pop    %ebp
  4003bb:	c3                   	ret    

004003bc <Makegdt>:
  4003bc:	55                   	push   %ebp
  4003bd:	89 e5                	mov    %esp,%ebp
  4003bf:	8b 45 08             	mov    0x8(%ebp),%eax
  4003c2:	c1 e8 0c             	shr    $0xc,%eax
  4003c5:	89 c2                	mov    %eax,%edx
  4003c7:	8b 45 18             	mov    0x18(%ebp),%eax
  4003ca:	66 89 14 c5 00 32 40 	mov    %dx,0x403200(,%eax,8)
  4003d1:	00 
  4003d2:	8b 45 0c             	mov    0xc(%ebp),%eax
  4003d5:	89 c2                	mov    %eax,%edx
  4003d7:	8b 45 18             	mov    0x18(%ebp),%eax
  4003da:	66 89 14 c5 02 32 40 	mov    %dx,0x403202(,%eax,8)
  4003e1:	00 
  4003e2:	8b 45 0c             	mov    0xc(%ebp),%eax
  4003e5:	c1 e8 10             	shr    $0x10,%eax
  4003e8:	89 c2                	mov    %eax,%edx
  4003ea:	8b 45 18             	mov    0x18(%ebp),%eax
  4003ed:	88 14 c5 04 32 40 00 	mov    %dl,0x403204(,%eax,8)
  4003f4:	8b 45 10             	mov    0x10(%ebp),%eax
  4003f7:	83 e0 0f             	and    $0xf,%eax
  4003fa:	89 c2                	mov    %eax,%edx
  4003fc:	8b 45 18             	mov    0x18(%ebp),%eax
  4003ff:	89 d1                	mov    %edx,%ecx
  400401:	83 e1 0f             	and    $0xf,%ecx
  400404:	0f b6 14 c5 05 32 40 	movzbl 0x403205(,%eax,8),%edx
  40040b:	00 
  40040c:	83 e2 f0             	and    $0xfffffff0,%edx
  40040f:	09 ca                	or     %ecx,%edx
  400411:	88 14 c5 05 32 40 00 	mov    %dl,0x403205(,%eax,8)
  400418:	8b 45 18             	mov    0x18(%ebp),%eax
  40041b:	0f b6 14 c5 05 32 40 	movzbl 0x403205(,%eax,8),%edx
  400422:	00 
  400423:	83 ca 10             	or     $0x10,%edx
  400426:	88 14 c5 05 32 40 00 	mov    %dl,0x403205(,%eax,8)
  40042d:	8b 45 14             	mov    0x14(%ebp),%eax
  400430:	83 e0 03             	and    $0x3,%eax
  400433:	89 c2                	mov    %eax,%edx
  400435:	8b 45 18             	mov    0x18(%ebp),%eax
  400438:	83 e2 03             	and    $0x3,%edx
  40043b:	89 d1                	mov    %edx,%ecx
  40043d:	c1 e1 05             	shl    $0x5,%ecx
  400440:	0f b6 14 c5 05 32 40 	movzbl 0x403205(,%eax,8),%edx
  400447:	00 
  400448:	83 e2 9f             	and    $0xffffff9f,%edx
  40044b:	09 ca                	or     %ecx,%edx
  40044d:	88 14 c5 05 32 40 00 	mov    %dl,0x403205(,%eax,8)
  400454:	8b 45 18             	mov    0x18(%ebp),%eax
  400457:	0f b6 14 c5 05 32 40 	movzbl 0x403205(,%eax,8),%edx
  40045e:	00 
  40045f:	83 ca 80             	or     $0xffffff80,%edx
  400462:	88 14 c5 05 32 40 00 	mov    %dl,0x403205(,%eax,8)
  400469:	8b 45 08             	mov    0x8(%ebp),%eax
  40046c:	c1 e8 1c             	shr    $0x1c,%eax
  40046f:	83 e0 0f             	and    $0xf,%eax
  400472:	89 c2                	mov    %eax,%edx
  400474:	8b 45 18             	mov    0x18(%ebp),%eax
  400477:	89 d1                	mov    %edx,%ecx
  400479:	83 e1 0f             	and    $0xf,%ecx
  40047c:	0f b6 14 c5 06 32 40 	movzbl 0x403206(,%eax,8),%edx
  400483:	00 
  400484:	83 e2 f0             	and    $0xfffffff0,%edx
  400487:	09 ca                	or     %ecx,%edx
  400489:	88 14 c5 06 32 40 00 	mov    %dl,0x403206(,%eax,8)
  400490:	8b 45 18             	mov    0x18(%ebp),%eax
  400493:	0f b6 14 c5 06 32 40 	movzbl 0x403206(,%eax,8),%edx
  40049a:	00 
  40049b:	83 e2 ef             	and    $0xffffffef,%edx
  40049e:	88 14 c5 06 32 40 00 	mov    %dl,0x403206(,%eax,8)
  4004a5:	8b 45 18             	mov    0x18(%ebp),%eax
  4004a8:	0f b6 14 c5 06 32 40 	movzbl 0x403206(,%eax,8),%edx
  4004af:	00 
  4004b0:	83 e2 df             	and    $0xffffffdf,%edx
  4004b3:	88 14 c5 06 32 40 00 	mov    %dl,0x403206(,%eax,8)
  4004ba:	8b 45 18             	mov    0x18(%ebp),%eax
  4004bd:	0f b6 14 c5 06 32 40 	movzbl 0x403206(,%eax,8),%edx
  4004c4:	00 
  4004c5:	83 ca 40             	or     $0x40,%edx
  4004c8:	88 14 c5 06 32 40 00 	mov    %dl,0x403206(,%eax,8)
  4004cf:	8b 45 18             	mov    0x18(%ebp),%eax
  4004d2:	0f b6 14 c5 06 32 40 	movzbl 0x403206(,%eax,8),%edx
  4004d9:	00 
  4004da:	83 ca 80             	or     $0xffffff80,%edx
  4004dd:	88 14 c5 06 32 40 00 	mov    %dl,0x403206(,%eax,8)
  4004e4:	8b 45 0c             	mov    0xc(%ebp),%eax
  4004e7:	c1 e8 18             	shr    $0x18,%eax
  4004ea:	89 c2                	mov    %eax,%edx
  4004ec:	8b 45 18             	mov    0x18(%ebp),%eax
  4004ef:	88 14 c5 07 32 40 00 	mov    %dl,0x403207(,%eax,8)
  4004f6:	5d                   	pop    %ebp
  4004f7:	c3                   	ret    

004004f8 <Maketss>:
  4004f8:	55                   	push   %ebp
  4004f9:	89 e5                	mov    %esp,%ebp
  4004fb:	8b 45 08             	mov    0x8(%ebp),%eax
  4004fe:	89 c2                	mov    %eax,%edx
  400500:	8b 45 18             	mov    0x18(%ebp),%eax
  400503:	66 89 14 c5 00 32 40 	mov    %dx,0x403200(,%eax,8)
  40050a:	00 
  40050b:	8b 45 0c             	mov    0xc(%ebp),%eax
  40050e:	89 c2                	mov    %eax,%edx
  400510:	8b 45 18             	mov    0x18(%ebp),%eax
  400513:	66 89 14 c5 02 32 40 	mov    %dx,0x403202(,%eax,8)
  40051a:	00 
  40051b:	8b 45 0c             	mov    0xc(%ebp),%eax
  40051e:	c1 e8 10             	shr    $0x10,%eax
  400521:	89 c2                	mov    %eax,%edx
  400523:	8b 45 18             	mov    0x18(%ebp),%eax
  400526:	88 14 c5 04 32 40 00 	mov    %dl,0x403204(,%eax,8)
  40052d:	8b 45 10             	mov    0x10(%ebp),%eax
  400530:	83 e0 0f             	and    $0xf,%eax
  400533:	89 c2                	mov    %eax,%edx
  400535:	8b 45 18             	mov    0x18(%ebp),%eax
  400538:	89 d1                	mov    %edx,%ecx
  40053a:	83 e1 0f             	and    $0xf,%ecx
  40053d:	0f b6 14 c5 05 32 40 	movzbl 0x403205(,%eax,8),%edx
  400544:	00 
  400545:	83 e2 f0             	and    $0xfffffff0,%edx
  400548:	09 ca                	or     %ecx,%edx
  40054a:	88 14 c5 05 32 40 00 	mov    %dl,0x403205(,%eax,8)
  400551:	8b 45 18             	mov    0x18(%ebp),%eax
  400554:	0f b6 14 c5 05 32 40 	movzbl 0x403205(,%eax,8),%edx
  40055b:	00 
  40055c:	83 e2 ef             	and    $0xffffffef,%edx
  40055f:	88 14 c5 05 32 40 00 	mov    %dl,0x403205(,%eax,8)
  400566:	8b 45 14             	mov    0x14(%ebp),%eax
  400569:	83 e0 03             	and    $0x3,%eax
  40056c:	89 c2                	mov    %eax,%edx
  40056e:	8b 45 18             	mov    0x18(%ebp),%eax
  400571:	83 e2 03             	and    $0x3,%edx
  400574:	89 d1                	mov    %edx,%ecx
  400576:	c1 e1 05             	shl    $0x5,%ecx
  400579:	0f b6 14 c5 05 32 40 	movzbl 0x403205(,%eax,8),%edx
  400580:	00 
  400581:	83 e2 9f             	and    $0xffffff9f,%edx
  400584:	09 ca                	or     %ecx,%edx
  400586:	88 14 c5 05 32 40 00 	mov    %dl,0x403205(,%eax,8)
  40058d:	8b 45 18             	mov    0x18(%ebp),%eax
  400590:	0f b6 14 c5 05 32 40 	movzbl 0x403205(,%eax,8),%edx
  400597:	00 
  400598:	83 ca 80             	or     $0xffffff80,%edx
  40059b:	88 14 c5 05 32 40 00 	mov    %dl,0x403205(,%eax,8)
  4005a2:	8b 45 08             	mov    0x8(%ebp),%eax
  4005a5:	c1 e8 10             	shr    $0x10,%eax
  4005a8:	83 e0 0f             	and    $0xf,%eax
  4005ab:	89 c2                	mov    %eax,%edx
  4005ad:	8b 45 18             	mov    0x18(%ebp),%eax
  4005b0:	89 d1                	mov    %edx,%ecx
  4005b2:	83 e1 0f             	and    $0xf,%ecx
  4005b5:	0f b6 14 c5 06 32 40 	movzbl 0x403206(,%eax,8),%edx
  4005bc:	00 
  4005bd:	83 e2 f0             	and    $0xfffffff0,%edx
  4005c0:	09 ca                	or     %ecx,%edx
  4005c2:	88 14 c5 06 32 40 00 	mov    %dl,0x403206(,%eax,8)
  4005c9:	8b 45 18             	mov    0x18(%ebp),%eax
  4005cc:	0f b6 14 c5 06 32 40 	movzbl 0x403206(,%eax,8),%edx
  4005d3:	00 
  4005d4:	83 e2 ef             	and    $0xffffffef,%edx
  4005d7:	88 14 c5 06 32 40 00 	mov    %dl,0x403206(,%eax,8)
  4005de:	8b 45 18             	mov    0x18(%ebp),%eax
  4005e1:	0f b6 14 c5 06 32 40 	movzbl 0x403206(,%eax,8),%edx
  4005e8:	00 
  4005e9:	83 e2 df             	and    $0xffffffdf,%edx
  4005ec:	88 14 c5 06 32 40 00 	mov    %dl,0x403206(,%eax,8)
  4005f3:	8b 45 18             	mov    0x18(%ebp),%eax
  4005f6:	0f b6 14 c5 06 32 40 	movzbl 0x403206(,%eax,8),%edx
  4005fd:	00 
  4005fe:	83 ca 40             	or     $0x40,%edx
  400601:	88 14 c5 06 32 40 00 	mov    %dl,0x403206(,%eax,8)
  400608:	8b 45 18             	mov    0x18(%ebp),%eax
  40060b:	0f b6 14 c5 06 32 40 	movzbl 0x403206(,%eax,8),%edx
  400612:	00 
  400613:	83 ca 80             	or     $0xffffff80,%edx
  400616:	88 14 c5 06 32 40 00 	mov    %dl,0x403206(,%eax,8)
  40061d:	8b 45 0c             	mov    0xc(%ebp),%eax
  400620:	c1 e8 18             	shr    $0x18,%eax
  400623:	89 c2                	mov    %eax,%edx
  400625:	8b 45 18             	mov    0x18(%ebp),%eax
  400628:	88 14 c5 07 32 40 00 	mov    %dl,0x403207(,%eax,8)
  40062f:	5d                   	pop    %ebp
  400630:	c3                   	ret    

00400631 <init_seg>:
  400631:	55                   	push   %ebp
  400632:	89 e5                	mov    %esp,%ebp
  400634:	83 ec 10             	sub    $0x10,%esp
  400637:	c7 05 28 31 40 00 00 	movl   $0x0,0x403128
  40063e:	00 00 00 
  400641:	6a 00                	push   $0x0
  400643:	6a 00                	push   $0x0
  400645:	6a 00                	push   $0x0
  400647:	6a 00                	push   $0x0
  400649:	6a 00                	push   $0x0
  40064b:	e8 6c fd ff ff       	call   4003bc <Makegdt>
  400650:	83 c4 14             	add    $0x14,%esp
  400653:	a1 28 31 40 00       	mov    0x403128,%eax
  400658:	83 c0 01             	add    $0x1,%eax
  40065b:	a3 28 31 40 00       	mov    %eax,0x403128
  400660:	a1 28 31 40 00       	mov    0x403128,%eax
  400665:	50                   	push   %eax
  400666:	6a 00                	push   $0x0
  400668:	6a 0a                	push   $0xa
  40066a:	6a 00                	push   $0x0
  40066c:	6a ff                	push   $0xffffffff
  40066e:	e8 49 fd ff ff       	call   4003bc <Makegdt>
  400673:	83 c4 14             	add    $0x14,%esp
  400676:	a1 28 31 40 00       	mov    0x403128,%eax
  40067b:	83 c0 01             	add    $0x1,%eax
  40067e:	a3 28 31 40 00       	mov    %eax,0x403128
  400683:	a1 28 31 40 00       	mov    0x403128,%eax
  400688:	50                   	push   %eax
  400689:	6a 00                	push   $0x0
  40068b:	6a 02                	push   $0x2
  40068d:	6a 00                	push   $0x0
  40068f:	6a ff                	push   $0xffffffff
  400691:	e8 26 fd ff ff       	call   4003bc <Makegdt>
  400696:	83 c4 14             	add    $0x14,%esp
  400699:	a1 28 31 40 00       	mov    0x403128,%eax
  40069e:	83 c0 01             	add    $0x1,%eax
  4006a1:	a3 28 31 40 00       	mov    %eax,0x403128
  4006a6:	a1 28 31 40 00       	mov    0x403128,%eax
  4006ab:	50                   	push   %eax
  4006ac:	6a 03                	push   $0x3
  4006ae:	6a 0a                	push   $0xa
  4006b0:	6a 00                	push   $0x0
  4006b2:	6a ff                	push   $0xffffffff
  4006b4:	e8 03 fd ff ff       	call   4003bc <Makegdt>
  4006b9:	83 c4 14             	add    $0x14,%esp
  4006bc:	a1 28 31 40 00       	mov    0x403128,%eax
  4006c1:	83 c0 01             	add    $0x1,%eax
  4006c4:	a3 28 31 40 00       	mov    %eax,0x403128
  4006c9:	a1 28 31 40 00       	mov    0x403128,%eax
  4006ce:	50                   	push   %eax
  4006cf:	6a 03                	push   $0x3
  4006d1:	6a 02                	push   $0x2
  4006d3:	6a 00                	push   $0x0
  4006d5:	6a ff                	push   $0xffffffff
  4006d7:	e8 e0 fc ff ff       	call   4003bc <Makegdt>
  4006dc:	83 c4 14             	add    $0x14,%esp
  4006df:	a1 28 31 40 00       	mov    0x403128,%eax
  4006e4:	83 c0 01             	add    $0x1,%eax
  4006e7:	a3 28 31 40 00       	mov    %eax,0x403128
  4006ec:	c7 05 84 32 40 00 00 	movl   $0x2f0000,0x403284
  4006f3:	00 2f 00 
  4006f6:	66 c7 05 88 32 40 00 	movw   $0x10,0x403288
  4006fd:	10 00 
  4006ff:	a1 28 31 40 00       	mov    0x403128,%eax
  400704:	ba 80 32 40 00       	mov    $0x403280,%edx
  400709:	50                   	push   %eax
  40070a:	6a 00                	push   $0x0
  40070c:	6a 09                	push   $0x9
  40070e:	52                   	push   %edx
  40070f:	6a ff                	push   $0xffffffff
  400711:	e8 e2 fd ff ff       	call   4004f8 <Maketss>
  400716:	83 c4 14             	add    $0x14,%esp
  400719:	a1 28 31 40 00       	mov    0x403128,%eax
  40071e:	83 c0 01             	add    $0x1,%eax
  400721:	a3 28 31 40 00       	mov    %eax,0x403128
  400726:	66 c7 05 dc 32 40 00 	movw   $0x2b,0x4032dc
  40072d:	2b 00 
  40072f:	66 b8 10 00          	mov    $0x10,%ax
  400733:	8e d8                	mov    %eax,%ds
  400735:	8e c0                	mov    %eax,%es
  400737:	8e d0                	mov    %eax,%ss
  400739:	68 80 00 00 00       	push   $0x80
  40073e:	68 00 32 40 00       	push   $0x403200
  400743:	e8 39 fc ff ff       	call   400381 <write_gdtr>
  400748:	83 c4 08             	add    $0x8,%esp
  40074b:	0f b7 05 dc 32 40 00 	movzwl 0x4032dc,%eax
  400752:	0f b7 c0             	movzwl %ax,%eax
  400755:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
  400759:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
  40075d:	0f 00 d8             	ltr    %ax
  400760:	c9                   	leave  
  400761:	c3                   	ret    

00400762 <init_intr>:
  400762:	55                   	push   %ebp
  400763:	89 e5                	mov    %esp,%ebp
  400765:	83 ec 70             	sub    $0x70,%esp
  400768:	c7 45 fc 21 00 00 00 	movl   $0x21,-0x4(%ebp)
  40076f:	c6 45 fb ff          	movb   $0xff,-0x5(%ebp)
  400773:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
  400777:	8b 55 fc             	mov    -0x4(%ebp),%edx
  40077a:	ee                   	out    %al,(%dx)
  40077b:	c7 45 f4 a1 00 00 00 	movl   $0xa1,-0xc(%ebp)
  400782:	c6 45 f3 ff          	movb   $0xff,-0xd(%ebp)
  400786:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  40078a:	8b 55 f4             	mov    -0xc(%ebp),%edx
  40078d:	ee                   	out    %al,(%dx)
  40078e:	c7 45 ec 20 00 00 00 	movl   $0x20,-0x14(%ebp)
  400795:	c6 45 eb 11          	movb   $0x11,-0x15(%ebp)
  400799:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  40079d:	8b 55 ec             	mov    -0x14(%ebp),%edx
  4007a0:	ee                   	out    %al,(%dx)
  4007a1:	c7 45 e4 21 00 00 00 	movl   $0x21,-0x1c(%ebp)
  4007a8:	c6 45 e3 20          	movb   $0x20,-0x1d(%ebp)
  4007ac:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
  4007b0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  4007b3:	ee                   	out    %al,(%dx)
  4007b4:	c7 45 dc 21 00 00 00 	movl   $0x21,-0x24(%ebp)
  4007bb:	c6 45 db 04          	movb   $0x4,-0x25(%ebp)
  4007bf:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
  4007c3:	8b 55 dc             	mov    -0x24(%ebp),%edx
  4007c6:	ee                   	out    %al,(%dx)
  4007c7:	c7 45 d4 21 00 00 00 	movl   $0x21,-0x2c(%ebp)
  4007ce:	c6 45 d3 03          	movb   $0x3,-0x2d(%ebp)
  4007d2:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
  4007d6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  4007d9:	ee                   	out    %al,(%dx)
  4007da:	c7 45 cc a0 00 00 00 	movl   $0xa0,-0x34(%ebp)
  4007e1:	c6 45 cb 11          	movb   $0x11,-0x35(%ebp)
  4007e5:	0f b6 45 cb          	movzbl -0x35(%ebp),%eax
  4007e9:	8b 55 cc             	mov    -0x34(%ebp),%edx
  4007ec:	ee                   	out    %al,(%dx)
  4007ed:	c7 45 c4 a1 00 00 00 	movl   $0xa1,-0x3c(%ebp)
  4007f4:	c6 45 c3 28          	movb   $0x28,-0x3d(%ebp)
  4007f8:	0f b6 45 c3          	movzbl -0x3d(%ebp),%eax
  4007fc:	8b 55 c4             	mov    -0x3c(%ebp),%edx
  4007ff:	ee                   	out    %al,(%dx)
  400800:	c7 45 bc a1 00 00 00 	movl   $0xa1,-0x44(%ebp)
  400807:	c6 45 bb 02          	movb   $0x2,-0x45(%ebp)
  40080b:	0f b6 45 bb          	movzbl -0x45(%ebp),%eax
  40080f:	8b 55 bc             	mov    -0x44(%ebp),%edx
  400812:	ee                   	out    %al,(%dx)
  400813:	c7 45 b4 a1 00 00 00 	movl   $0xa1,-0x4c(%ebp)
  40081a:	c6 45 b3 03          	movb   $0x3,-0x4d(%ebp)
  40081e:	0f b6 45 b3          	movzbl -0x4d(%ebp),%eax
  400822:	8b 55 b4             	mov    -0x4c(%ebp),%edx
  400825:	ee                   	out    %al,(%dx)
  400826:	c7 45 ac 20 00 00 00 	movl   $0x20,-0x54(%ebp)
  40082d:	c6 45 ab 68          	movb   $0x68,-0x55(%ebp)
  400831:	0f b6 45 ab          	movzbl -0x55(%ebp),%eax
  400835:	8b 55 ac             	mov    -0x54(%ebp),%edx
  400838:	ee                   	out    %al,(%dx)
  400839:	c7 45 a4 20 00 00 00 	movl   $0x20,-0x5c(%ebp)
  400840:	c6 45 a3 0a          	movb   $0xa,-0x5d(%ebp)
  400844:	0f b6 45 a3          	movzbl -0x5d(%ebp),%eax
  400848:	8b 55 a4             	mov    -0x5c(%ebp),%edx
  40084b:	ee                   	out    %al,(%dx)
  40084c:	c7 45 9c a0 00 00 00 	movl   $0xa0,-0x64(%ebp)
  400853:	c6 45 9b 68          	movb   $0x68,-0x65(%ebp)
  400857:	0f b6 45 9b          	movzbl -0x65(%ebp),%eax
  40085b:	8b 55 9c             	mov    -0x64(%ebp),%edx
  40085e:	ee                   	out    %al,(%dx)
  40085f:	c7 45 94 a0 00 00 00 	movl   $0xa0,-0x6c(%ebp)
  400866:	c6 45 93 0a          	movb   $0xa,-0x6d(%ebp)
  40086a:	0f b6 45 93          	movzbl -0x6d(%ebp),%eax
  40086e:	8b 55 94             	mov    -0x6c(%ebp),%edx
  400871:	ee                   	out    %al,(%dx)
  400872:	c9                   	leave  
  400873:	c3                   	ret    

00400874 <save_idt>:
  400874:	55                   	push   %ebp
  400875:	89 e5                	mov    %esp,%ebp
  400877:	8b 45 0c             	mov    0xc(%ebp),%eax
  40087a:	83 e8 01             	sub    $0x1,%eax
  40087d:	66 a3 32 31 40 00    	mov    %ax,0x403132
  400883:	8b 45 08             	mov    0x8(%ebp),%eax
  400886:	66 a3 34 31 40 00    	mov    %ax,0x403134
  40088c:	8b 45 08             	mov    0x8(%ebp),%eax
  40088f:	c1 e8 10             	shr    $0x10,%eax
  400892:	66 a3 36 31 40 00    	mov    %ax,0x403136
  400898:	b8 32 31 40 00       	mov    $0x403132,%eax
  40089d:	0f 01 18             	lidtl  (%eax)
  4008a0:	5d                   	pop    %ebp
  4008a1:	c3                   	ret    

004008a2 <set_intr>:
  4008a2:	55                   	push   %ebp
  4008a3:	89 e5                	mov    %esp,%ebp
  4008a5:	8b 45 10             	mov    0x10(%ebp),%eax
  4008a8:	89 c2                	mov    %eax,%edx
  4008aa:	8b 45 08             	mov    0x8(%ebp),%eax
  4008ad:	66 89 10             	mov    %dx,(%eax)
  4008b0:	8b 45 0c             	mov    0xc(%ebp),%eax
  4008b3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  4008ba:	8b 45 08             	mov    0x8(%ebp),%eax
  4008bd:	66 89 50 02          	mov    %dx,0x2(%eax)
  4008c1:	8b 45 08             	mov    0x8(%ebp),%eax
  4008c4:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  4008c8:	8b 45 08             	mov    0x8(%ebp),%eax
  4008cb:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  4008cf:	83 e2 f0             	and    $0xfffffff0,%edx
  4008d2:	83 ca 0e             	or     $0xe,%edx
  4008d5:	88 50 05             	mov    %dl,0x5(%eax)
  4008d8:	8b 45 08             	mov    0x8(%ebp),%eax
  4008db:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  4008df:	83 e2 ef             	and    $0xffffffef,%edx
  4008e2:	88 50 05             	mov    %dl,0x5(%eax)
  4008e5:	8b 45 14             	mov    0x14(%ebp),%eax
  4008e8:	83 e0 03             	and    $0x3,%eax
  4008eb:	89 c2                	mov    %eax,%edx
  4008ed:	8b 45 08             	mov    0x8(%ebp),%eax
  4008f0:	83 e2 03             	and    $0x3,%edx
  4008f3:	89 d1                	mov    %edx,%ecx
  4008f5:	c1 e1 05             	shl    $0x5,%ecx
  4008f8:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  4008fc:	83 e2 9f             	and    $0xffffff9f,%edx
  4008ff:	09 ca                	or     %ecx,%edx
  400901:	88 50 05             	mov    %dl,0x5(%eax)
  400904:	8b 45 08             	mov    0x8(%ebp),%eax
  400907:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  40090b:	83 ca 80             	or     $0xffffff80,%edx
  40090e:	88 50 05             	mov    %dl,0x5(%eax)
  400911:	8b 45 10             	mov    0x10(%ebp),%eax
  400914:	c1 e8 10             	shr    $0x10,%eax
  400917:	89 c2                	mov    %eax,%edx
  400919:	8b 45 08             	mov    0x8(%ebp),%eax
  40091c:	66 89 50 06          	mov    %dx,0x6(%eax)
  400920:	5d                   	pop    %ebp
  400921:	c3                   	ret    

00400922 <set_trap>:
  400922:	55                   	push   %ebp
  400923:	89 e5                	mov    %esp,%ebp
  400925:	8b 45 10             	mov    0x10(%ebp),%eax
  400928:	89 c2                	mov    %eax,%edx
  40092a:	8b 45 08             	mov    0x8(%ebp),%eax
  40092d:	66 89 10             	mov    %dx,(%eax)
  400930:	8b 45 0c             	mov    0xc(%ebp),%eax
  400933:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  40093a:	8b 45 08             	mov    0x8(%ebp),%eax
  40093d:	66 89 50 02          	mov    %dx,0x2(%eax)
  400941:	8b 45 08             	mov    0x8(%ebp),%eax
  400944:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  400948:	8b 45 08             	mov    0x8(%ebp),%eax
  40094b:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  40094f:	83 ca 0f             	or     $0xf,%edx
  400952:	88 50 05             	mov    %dl,0x5(%eax)
  400955:	8b 45 08             	mov    0x8(%ebp),%eax
  400958:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  40095c:	83 e2 ef             	and    $0xffffffef,%edx
  40095f:	88 50 05             	mov    %dl,0x5(%eax)
  400962:	8b 45 14             	mov    0x14(%ebp),%eax
  400965:	83 e0 03             	and    $0x3,%eax
  400968:	89 c2                	mov    %eax,%edx
  40096a:	8b 45 08             	mov    0x8(%ebp),%eax
  40096d:	83 e2 03             	and    $0x3,%edx
  400970:	89 d1                	mov    %edx,%ecx
  400972:	c1 e1 05             	shl    $0x5,%ecx
  400975:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  400979:	83 e2 9f             	and    $0xffffff9f,%edx
  40097c:	09 ca                	or     %ecx,%edx
  40097e:	88 50 05             	mov    %dl,0x5(%eax)
  400981:	8b 45 08             	mov    0x8(%ebp),%eax
  400984:	0f b6 50 05          	movzbl 0x5(%eax),%edx
  400988:	83 ca 80             	or     $0xffffff80,%edx
  40098b:	88 50 05             	mov    %dl,0x5(%eax)
  40098e:	8b 45 10             	mov    0x10(%ebp),%eax
  400991:	c1 e8 10             	shr    $0x10,%eax
  400994:	89 c2                	mov    %eax,%edx
  400996:	8b 45 08             	mov    0x8(%ebp),%eax
  400999:	66 89 50 06          	mov    %dx,0x6(%eax)
  40099d:	5d                   	pop    %ebp
  40099e:	c3                   	ret    

0040099f <init_idt>:
  40099f:	55                   	push   %ebp
  4009a0:	89 e5                	mov    %esp,%ebp
  4009a2:	83 ec 10             	sub    $0x10,%esp
  4009a5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  4009ac:	eb 22                	jmp    4009d0 <init_idt+0x31>
  4009ae:	ba 3c 0c 40 00       	mov    $0x400c3c,%edx
  4009b3:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4009b6:	c1 e0 03             	shl    $0x3,%eax
  4009b9:	05 00 33 40 00       	add    $0x403300,%eax
  4009be:	6a 00                	push   $0x0
  4009c0:	52                   	push   %edx
  4009c1:	6a 01                	push   $0x1
  4009c3:	50                   	push   %eax
  4009c4:	e8 59 ff ff ff       	call   400922 <set_trap>
  4009c9:	83 c4 10             	add    $0x10,%esp
  4009cc:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  4009d0:	81 7d fc ff 00 00 00 	cmpl   $0xff,-0x4(%ebp)
  4009d7:	7e d5                	jle    4009ae <init_idt+0xf>
  4009d9:	b8 a2 0b 40 00       	mov    $0x400ba2,%eax
  4009de:	6a 00                	push   $0x0
  4009e0:	50                   	push   %eax
  4009e1:	6a 01                	push   $0x1
  4009e3:	68 00 33 40 00       	push   $0x403300
  4009e8:	e8 35 ff ff ff       	call   400922 <set_trap>
  4009ed:	83 c4 10             	add    $0x10,%esp
  4009f0:	b8 ac 0b 40 00       	mov    $0x400bac,%eax
  4009f5:	6a 00                	push   $0x0
  4009f7:	50                   	push   %eax
  4009f8:	6a 01                	push   $0x1
  4009fa:	68 08 33 40 00       	push   $0x403308
  4009ff:	e8 1e ff ff ff       	call   400922 <set_trap>
  400a04:	83 c4 10             	add    $0x10,%esp
  400a07:	b8 b6 0b 40 00       	mov    $0x400bb6,%eax
  400a0c:	6a 00                	push   $0x0
  400a0e:	50                   	push   %eax
  400a0f:	6a 01                	push   $0x1
  400a11:	68 10 33 40 00       	push   $0x403310
  400a16:	e8 07 ff ff ff       	call   400922 <set_trap>
  400a1b:	83 c4 10             	add    $0x10,%esp
  400a1e:	b8 c0 0b 40 00       	mov    $0x400bc0,%eax
  400a23:	6a 00                	push   $0x0
  400a25:	50                   	push   %eax
  400a26:	6a 01                	push   $0x1
  400a28:	68 18 33 40 00       	push   $0x403318
  400a2d:	e8 f0 fe ff ff       	call   400922 <set_trap>
  400a32:	83 c4 10             	add    $0x10,%esp
  400a35:	b8 c7 0b 40 00       	mov    $0x400bc7,%eax
  400a3a:	6a 00                	push   $0x0
  400a3c:	50                   	push   %eax
  400a3d:	6a 01                	push   $0x1
  400a3f:	68 20 33 40 00       	push   $0x403320
  400a44:	e8 d9 fe ff ff       	call   400922 <set_trap>
  400a49:	83 c4 10             	add    $0x10,%esp
  400a4c:	b8 ce 0b 40 00       	mov    $0x400bce,%eax
  400a51:	6a 00                	push   $0x0
  400a53:	50                   	push   %eax
  400a54:	6a 01                	push   $0x1
  400a56:	68 28 33 40 00       	push   $0x403328
  400a5b:	e8 c2 fe ff ff       	call   400922 <set_trap>
  400a60:	83 c4 10             	add    $0x10,%esp
  400a63:	b8 d5 0b 40 00       	mov    $0x400bd5,%eax
  400a68:	6a 00                	push   $0x0
  400a6a:	50                   	push   %eax
  400a6b:	6a 01                	push   $0x1
  400a6d:	68 30 33 40 00       	push   $0x403330
  400a72:	e8 ab fe ff ff       	call   400922 <set_trap>
  400a77:	83 c4 10             	add    $0x10,%esp
  400a7a:	b8 dc 0b 40 00       	mov    $0x400bdc,%eax
  400a7f:	6a 00                	push   $0x0
  400a81:	50                   	push   %eax
  400a82:	6a 01                	push   $0x1
  400a84:	68 38 33 40 00       	push   $0x403338
  400a89:	e8 94 fe ff ff       	call   400922 <set_trap>
  400a8e:	83 c4 10             	add    $0x10,%esp
  400a91:	b8 e3 0b 40 00       	mov    $0x400be3,%eax
  400a96:	6a 00                	push   $0x0
  400a98:	50                   	push   %eax
  400a99:	6a 01                	push   $0x1
  400a9b:	68 40 33 40 00       	push   $0x403340
  400aa0:	e8 7d fe ff ff       	call   400922 <set_trap>
  400aa5:	83 c4 10             	add    $0x10,%esp
  400aa8:	b8 ea 0b 40 00       	mov    $0x400bea,%eax
  400aad:	6a 00                	push   $0x0
  400aaf:	50                   	push   %eax
  400ab0:	6a 01                	push   $0x1
  400ab2:	68 48 33 40 00       	push   $0x403348
  400ab7:	e8 66 fe ff ff       	call   400922 <set_trap>
  400abc:	83 c4 10             	add    $0x10,%esp
  400abf:	b8 f1 0b 40 00       	mov    $0x400bf1,%eax
  400ac4:	6a 00                	push   $0x0
  400ac6:	50                   	push   %eax
  400ac7:	6a 01                	push   $0x1
  400ac9:	68 50 33 40 00       	push   $0x403350
  400ace:	e8 4f fe ff ff       	call   400922 <set_trap>
  400ad3:	83 c4 10             	add    $0x10,%esp
  400ad6:	b8 f8 0b 40 00       	mov    $0x400bf8,%eax
  400adb:	6a 00                	push   $0x0
  400add:	50                   	push   %eax
  400ade:	6a 01                	push   $0x1
  400ae0:	68 58 33 40 00       	push   $0x403358
  400ae5:	e8 38 fe ff ff       	call   400922 <set_trap>
  400aea:	83 c4 10             	add    $0x10,%esp
  400aed:	b8 ff 0b 40 00       	mov    $0x400bff,%eax
  400af2:	6a 00                	push   $0x0
  400af4:	50                   	push   %eax
  400af5:	6a 01                	push   $0x1
  400af7:	68 60 33 40 00       	push   $0x403360
  400afc:	e8 21 fe ff ff       	call   400922 <set_trap>
  400b01:	83 c4 10             	add    $0x10,%esp
  400b04:	b8 06 0c 40 00       	mov    $0x400c06,%eax
  400b09:	6a 00                	push   $0x0
  400b0b:	50                   	push   %eax
  400b0c:	6a 01                	push   $0x1
  400b0e:	68 68 33 40 00       	push   $0x403368
  400b13:	e8 0a fe ff ff       	call   400922 <set_trap>
  400b18:	83 c4 10             	add    $0x10,%esp
  400b1b:	b8 0d 0c 40 00       	mov    $0x400c0d,%eax
  400b20:	6a 00                	push   $0x0
  400b22:	50                   	push   %eax
  400b23:	6a 01                	push   $0x1
  400b25:	68 70 33 40 00       	push   $0x403370
  400b2a:	e8 f3 fd ff ff       	call   400922 <set_trap>
  400b2f:	83 c4 10             	add    $0x10,%esp
  400b32:	b8 14 0c 40 00       	mov    $0x400c14,%eax
  400b37:	6a 00                	push   $0x0
  400b39:	50                   	push   %eax
  400b3a:	6a 01                	push   $0x1
  400b3c:	68 00 34 40 00       	push   $0x403400
  400b41:	e8 5c fd ff ff       	call   4008a2 <set_intr>
  400b46:	83 c4 10             	add    $0x10,%esp
  400b49:	b8 1e 0c 40 00       	mov    $0x400c1e,%eax
  400b4e:	6a 00                	push   $0x0
  400b50:	50                   	push   %eax
  400b51:	6a 01                	push   $0x1
  400b53:	68 08 34 40 00       	push   $0x403408
  400b58:	e8 45 fd ff ff       	call   4008a2 <set_intr>
  400b5d:	83 c4 10             	add    $0x10,%esp
  400b60:	b8 28 0c 40 00       	mov    $0x400c28,%eax
  400b65:	6a 00                	push   $0x0
  400b67:	50                   	push   %eax
  400b68:	6a 01                	push   $0x1
  400b6a:	68 70 34 40 00       	push   $0x403470
  400b6f:	e8 2e fd ff ff       	call   4008a2 <set_intr>
  400b74:	83 c4 10             	add    $0x10,%esp
  400b77:	b8 32 0c 40 00       	mov    $0x400c32,%eax
  400b7c:	6a 03                	push   $0x3
  400b7e:	50                   	push   %eax
  400b7f:	6a 01                	push   $0x1
  400b81:	68 00 37 40 00       	push   $0x403700
  400b86:	e8 97 fd ff ff       	call   400922 <set_trap>
  400b8b:	83 c4 10             	add    $0x10,%esp
  400b8e:	68 00 08 00 00       	push   $0x800
  400b93:	68 00 33 40 00       	push   $0x403300
  400b98:	e8 d7 fc ff ff       	call   400874 <save_idt>
  400b9d:	83 c4 08             	add    $0x8,%esp
  400ba0:	c9                   	leave  
  400ba1:	c3                   	ret    

00400ba2 <vec0>:
  400ba2:	fa                   	cli    
  400ba3:	6a 00                	push   $0x0
  400ba5:	6a 00                	push   $0x0
  400ba7:	e9 97 00 00 00       	jmp    400c43 <asm_do_irq>

00400bac <vec1>:
  400bac:	fa                   	cli    
  400bad:	6a 00                	push   $0x0
  400baf:	6a 01                	push   $0x1
  400bb1:	e9 8d 00 00 00       	jmp    400c43 <asm_do_irq>

00400bb6 <vec2>:
  400bb6:	fa                   	cli    
  400bb7:	6a 00                	push   $0x0
  400bb9:	6a 02                	push   $0x2
  400bbb:	e9 83 00 00 00       	jmp    400c43 <asm_do_irq>

00400bc0 <vec3>:
  400bc0:	fa                   	cli    
  400bc1:	6a 00                	push   $0x0
  400bc3:	6a 03                	push   $0x3
  400bc5:	eb 7c                	jmp    400c43 <asm_do_irq>

00400bc7 <vec4>:
  400bc7:	fa                   	cli    
  400bc8:	6a 00                	push   $0x0
  400bca:	6a 04                	push   $0x4
  400bcc:	eb 75                	jmp    400c43 <asm_do_irq>

00400bce <vec5>:
  400bce:	fa                   	cli    
  400bcf:	6a 00                	push   $0x0
  400bd1:	6a 05                	push   $0x5
  400bd3:	eb 6e                	jmp    400c43 <asm_do_irq>

00400bd5 <vec6>:
  400bd5:	fa                   	cli    
  400bd6:	6a 00                	push   $0x0
  400bd8:	6a 06                	push   $0x6
  400bda:	eb 67                	jmp    400c43 <asm_do_irq>

00400bdc <vec7>:
  400bdc:	fa                   	cli    
  400bdd:	6a 00                	push   $0x0
  400bdf:	6a 07                	push   $0x7
  400be1:	eb 60                	jmp    400c43 <asm_do_irq>

00400be3 <vec8>:
  400be3:	fa                   	cli    
  400be4:	6a 00                	push   $0x0
  400be6:	6a 08                	push   $0x8
  400be8:	eb 59                	jmp    400c43 <asm_do_irq>

00400bea <vec9>:
  400bea:	fa                   	cli    
  400beb:	6a 00                	push   $0x0
  400bed:	6a 09                	push   $0x9
  400bef:	eb 52                	jmp    400c43 <asm_do_irq>

00400bf1 <vec10>:
  400bf1:	fa                   	cli    
  400bf2:	6a 00                	push   $0x0
  400bf4:	6a 0a                	push   $0xa
  400bf6:	eb 4b                	jmp    400c43 <asm_do_irq>

00400bf8 <vec11>:
  400bf8:	fa                   	cli    
  400bf9:	6a 00                	push   $0x0
  400bfb:	6a 0b                	push   $0xb
  400bfd:	eb 44                	jmp    400c43 <asm_do_irq>

00400bff <vec12>:
  400bff:	fa                   	cli    
  400c00:	6a 00                	push   $0x0
  400c02:	6a 0c                	push   $0xc
  400c04:	eb 3d                	jmp    400c43 <asm_do_irq>

00400c06 <vec13>:
  400c06:	fa                   	cli    
  400c07:	6a 00                	push   $0x0
  400c09:	6a 0d                	push   $0xd
  400c0b:	eb 36                	jmp    400c43 <asm_do_irq>

00400c0d <vec14>:
  400c0d:	fa                   	cli    
  400c0e:	6a 00                	push   $0x0
  400c10:	6a 0e                	push   $0xe
  400c12:	eb 2f                	jmp    400c43 <asm_do_irq>

00400c14 <irq0>:
  400c14:	fa                   	cli    
  400c15:	6a 00                	push   $0x0
  400c17:	68 e8 03 00 00       	push   $0x3e8
  400c1c:	eb 25                	jmp    400c43 <asm_do_irq>

00400c1e <irq1>:
  400c1e:	fa                   	cli    
  400c1f:	6a 00                	push   $0x0
  400c21:	68 e9 03 00 00       	push   $0x3e9
  400c26:	eb 1b                	jmp    400c43 <asm_do_irq>

00400c28 <irq14>:
  400c28:	fa                   	cli    
  400c29:	6a 00                	push   $0x0
  400c2b:	68 f6 03 00 00       	push   $0x3f6
  400c30:	eb 11                	jmp    400c43 <asm_do_irq>

00400c32 <syscall>:
  400c32:	fa                   	cli    
  400c33:	6a 00                	push   $0x0
  400c35:	68 80 00 00 00       	push   $0x80
  400c3a:	eb 07                	jmp    400c43 <asm_do_irq>

00400c3c <irq_empty>:
  400c3c:	fa                   	cli    
  400c3d:	6a 00                	push   $0x0
  400c3f:	6a ff                	push   $0xffffffff
  400c41:	eb 00                	jmp    400c43 <asm_do_irq>

00400c43 <asm_do_irq>:
  400c43:	60                   	pusha  
  400c44:	54                   	push   %esp
  400c45:	e8 08 00 00 00       	call   400c52 <irq_handle>
  400c4a:	83 c4 04             	add    $0x4,%esp
  400c4d:	61                   	popa   
  400c4e:	83 c4 08             	add    $0x8,%esp
  400c51:	cf                   	iret   

00400c52 <irq_handle>:
  400c52:	55                   	push   %ebp
  400c53:	89 e5                	mov    %esp,%ebp
  400c55:	83 ec 38             	sub    $0x38,%esp
  400c58:	8b 45 08             	mov    0x8(%ebp),%eax
  400c5b:	8b 40 20             	mov    0x20(%eax),%eax
  400c5e:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  400c63:	75 18                	jne    400c7d <irq_handle+0x2b>
  400c65:	e8 96 f3 ff ff       	call   400000 <timer_event>
  400c6a:	83 ec 0c             	sub    $0xc,%esp
  400c6d:	ff 75 08             	pushl  0x8(%ebp)
  400c70:	e8 09 12 00 00       	call   401e7e <time_treat>
  400c75:	83 c4 10             	add    $0x10,%esp
  400c78:	e9 d2 01 00 00       	jmp    400e4f <irq_handle+0x1fd>
  400c7d:	8b 45 08             	mov    0x8(%ebp),%eax
  400c80:	8b 40 20             	mov    0x20(%eax),%eax
  400c83:	3d e9 03 00 00       	cmp    $0x3e9,%eax
  400c88:	75 7b                	jne    400d05 <irq_handle+0xb3>
  400c8a:	c7 45 ec 60 00 00 00 	movl   $0x60,-0x14(%ebp)
  400c91:	8b 45 ec             	mov    -0x14(%ebp),%eax
  400c94:	89 c2                	mov    %eax,%edx
  400c96:	ec                   	in     (%dx),%al
  400c97:	88 45 eb             	mov    %al,-0x15(%ebp)
  400c9a:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  400c9e:	0f b6 c0             	movzbl %al,%eax
  400ca1:	89 45 f4             	mov    %eax,-0xc(%ebp)
  400ca4:	c7 45 e4 61 00 00 00 	movl   $0x61,-0x1c(%ebp)
  400cab:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  400cae:	89 c2                	mov    %eax,%edx
  400cb0:	ec                   	in     (%dx),%al
  400cb1:	88 45 e3             	mov    %al,-0x1d(%ebp)
  400cb4:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
  400cb8:	0f b6 c0             	movzbl %al,%eax
  400cbb:	89 45 f0             	mov    %eax,-0x10(%ebp)
  400cbe:	8b 45 f0             	mov    -0x10(%ebp),%eax
  400cc1:	83 c8 80             	or     $0xffffff80,%eax
  400cc4:	0f b6 c0             	movzbl %al,%eax
  400cc7:	c7 45 dc 61 00 00 00 	movl   $0x61,-0x24(%ebp)
  400cce:	88 45 db             	mov    %al,-0x25(%ebp)
  400cd1:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
  400cd5:	8b 55 dc             	mov    -0x24(%ebp),%edx
  400cd8:	ee                   	out    %al,(%dx)
  400cd9:	8b 45 f0             	mov    -0x10(%ebp),%eax
  400cdc:	0f b6 c0             	movzbl %al,%eax
  400cdf:	c7 45 d4 61 00 00 00 	movl   $0x61,-0x2c(%ebp)
  400ce6:	88 45 d3             	mov    %al,-0x2d(%ebp)
  400ce9:	0f b6 45 d3          	movzbl -0x2d(%ebp),%eax
  400ced:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  400cf0:	ee                   	out    %al,(%dx)
  400cf1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  400cf4:	83 ec 0c             	sub    $0xc,%esp
  400cf7:	50                   	push   %eax
  400cf8:	e8 2e f4 ff ff       	call   40012b <keyboard_event>
  400cfd:	83 c4 10             	add    $0x10,%esp
  400d00:	e9 4a 01 00 00       	jmp    400e4f <irq_handle+0x1fd>
  400d05:	8b 45 08             	mov    0x8(%ebp),%eax
  400d08:	8b 40 20             	mov    0x20(%eax),%eax
  400d0b:	3d f6 03 00 00       	cmp    $0x3f6,%eax
  400d10:	0f 84 39 01 00 00    	je     400e4f <irq_handle+0x1fd>
  400d16:	8b 45 08             	mov    0x8(%ebp),%eax
  400d19:	8b 40 20             	mov    0x20(%eax),%eax
  400d1c:	3d 80 00 00 00       	cmp    $0x80,%eax
  400d21:	0f 85 03 01 00 00    	jne    400e2a <irq_handle+0x1d8>
  400d27:	8b 45 08             	mov    0x8(%ebp),%eax
  400d2a:	8b 40 1c             	mov    0x1c(%eax),%eax
  400d2d:	83 f8 01             	cmp    $0x1,%eax
  400d30:	75 26                	jne    400d58 <irq_handle+0x106>
  400d32:	8b 45 08             	mov    0x8(%ebp),%eax
  400d35:	8b 40 10             	mov    0x10(%eax),%eax
  400d38:	83 f8 01             	cmp    $0x1,%eax
  400d3b:	0f 85 0e 01 00 00    	jne    400e4f <irq_handle+0x1fd>
  400d41:	8b 45 08             	mov    0x8(%ebp),%eax
  400d44:	8b 40 18             	mov    0x18(%eax),%eax
  400d47:	83 ec 0c             	sub    $0xc,%esp
  400d4a:	50                   	push   %eax
  400d4b:	e8 29 04 00 00       	call   401179 <printk>
  400d50:	83 c4 10             	add    $0x10,%esp
  400d53:	e9 f7 00 00 00       	jmp    400e4f <irq_handle+0x1fd>
  400d58:	8b 45 08             	mov    0x8(%ebp),%eax
  400d5b:	8b 40 1c             	mov    0x1c(%eax),%eax
  400d5e:	83 f8 02             	cmp    $0x2,%eax
  400d61:	75 35                	jne    400d98 <irq_handle+0x146>
  400d63:	8b 45 08             	mov    0x8(%ebp),%eax
  400d66:	8b 40 10             	mov    0x10(%eax),%eax
  400d69:	85 c0                	test   %eax,%eax
  400d6b:	75 12                	jne    400d7f <irq_handle+0x12d>
  400d6d:	e8 a0 f2 ff ff       	call   400012 <get_time>
  400d72:	89 c2                	mov    %eax,%edx
  400d74:	8b 45 08             	mov    0x8(%ebp),%eax
  400d77:	89 50 1c             	mov    %edx,0x1c(%eax)
  400d7a:	e9 d0 00 00 00       	jmp    400e4f <irq_handle+0x1fd>
  400d7f:	8b 45 08             	mov    0x8(%ebp),%eax
  400d82:	8b 40 10             	mov    0x10(%eax),%eax
  400d85:	83 f8 01             	cmp    $0x1,%eax
  400d88:	0f 85 c1 00 00 00    	jne    400e4f <irq_handle+0x1fd>
  400d8e:	e8 89 f2 ff ff       	call   40001c <time_pop>
  400d93:	e9 b7 00 00 00       	jmp    400e4f <irq_handle+0x1fd>
  400d98:	8b 45 08             	mov    0x8(%ebp),%eax
  400d9b:	8b 40 1c             	mov    0x1c(%eax),%eax
  400d9e:	83 f8 03             	cmp    $0x3,%eax
  400da1:	75 32                	jne    400dd5 <irq_handle+0x183>
  400da3:	8b 45 08             	mov    0x8(%ebp),%eax
  400da6:	8b 40 10             	mov    0x10(%eax),%eax
  400da9:	85 c0                	test   %eax,%eax
  400dab:	75 12                	jne    400dbf <irq_handle+0x16d>
  400dad:	e8 60 f3 ff ff       	call   400112 <last_key_code>
  400db2:	89 c2                	mov    %eax,%edx
  400db4:	8b 45 08             	mov    0x8(%ebp),%eax
  400db7:	89 50 1c             	mov    %edx,0x1c(%eax)
  400dba:	e9 90 00 00 00       	jmp    400e4f <irq_handle+0x1fd>
  400dbf:	8b 45 08             	mov    0x8(%ebp),%eax
  400dc2:	8b 40 10             	mov    0x10(%eax),%eax
  400dc5:	83 f8 01             	cmp    $0x1,%eax
  400dc8:	0f 85 81 00 00 00    	jne    400e4f <irq_handle+0x1fd>
  400dce:	e8 49 f3 ff ff       	call   40011c <reset_last_key>
  400dd3:	eb 7a                	jmp    400e4f <irq_handle+0x1fd>
  400dd5:	8b 45 08             	mov    0x8(%ebp),%eax
  400dd8:	8b 40 1c             	mov    0x1c(%eax),%eax
  400ddb:	83 f8 04             	cmp    $0x4,%eax
  400dde:	75 1e                	jne    400dfe <irq_handle+0x1ac>
  400de0:	8b 45 08             	mov    0x8(%ebp),%eax
  400de3:	8b 40 10             	mov    0x10(%eax),%eax
  400de6:	83 ec 04             	sub    $0x4,%esp
  400de9:	68 00 00 01 00       	push   $0x10000
  400dee:	50                   	push   %eax
  400def:	68 00 00 0a 00       	push   $0xa0000
  400df4:	e8 a5 03 00 00       	call   40119e <my_memcpy>
  400df9:	83 c4 10             	add    $0x10,%esp
  400dfc:	eb 51                	jmp    400e4f <irq_handle+0x1fd>
  400dfe:	8b 45 08             	mov    0x8(%ebp),%eax
  400e01:	8b 40 1c             	mov    0x1c(%eax),%eax
  400e04:	83 f8 05             	cmp    $0x5,%eax
  400e07:	75 07                	jne    400e10 <irq_handle+0x1be>
  400e09:	e8 49 11 00 00       	call   401f57 <process_exit>
  400e0e:	eb 3f                	jmp    400e4f <irq_handle+0x1fd>
  400e10:	8b 45 08             	mov    0x8(%ebp),%eax
  400e13:	8b 40 1c             	mov    0x1c(%eax),%eax
  400e16:	83 f8 06             	cmp    $0x6,%eax
  400e19:	75 34                	jne    400e4f <irq_handle+0x1fd>
  400e1b:	e8 92 11 00 00       	call   401fb2 <getpid>
  400e20:	89 c2                	mov    %eax,%edx
  400e22:	8b 45 08             	mov    0x8(%ebp),%eax
  400e25:	89 50 1c             	mov    %edx,0x1c(%eax)
  400e28:	eb 25                	jmp    400e4f <irq_handle+0x1fd>
  400e2a:	83 ec 0c             	sub    $0xc,%esp
  400e2d:	ff 75 08             	pushl  0x8(%ebp)
  400e30:	e8 c2 05 00 00       	call   4013f7 <print_tf>
  400e35:	83 c4 10             	add    $0x10,%esp
  400e38:	8b 45 08             	mov    0x8(%ebp),%eax
  400e3b:	8b 40 20             	mov    0x20(%eax),%eax
  400e3e:	83 ec 08             	sub    $0x8,%esp
  400e41:	50                   	push   %eax
  400e42:	68 e0 1f 40 00       	push   $0x401fe0
  400e47:	e8 2d 03 00 00       	call   401179 <printk>
  400e4c:	83 c4 10             	add    $0x10,%esp
  400e4f:	c9                   	leave  
  400e50:	c3                   	ret    

00400e51 <change>:
  400e51:	55                   	push   %ebp
  400e52:	89 e5                	mov    %esp,%ebp
  400e54:	53                   	push   %ebx
  400e55:	83 c4 80             	add    $0xffffff80,%esp
  400e58:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  400e5f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  400e66:	8b 45 08             	mov    0x8(%ebp),%eax
  400e69:	89 45 ec             	mov    %eax,-0x14(%ebp)
  400e6c:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  400e70:	75 14                	jne    400e86 <change+0x35>
  400e72:	8b 45 0c             	mov    0xc(%ebp),%eax
  400e75:	c6 00 30             	movb   $0x30,(%eax)
  400e78:	8b 45 0c             	mov    0xc(%ebp),%eax
  400e7b:	83 c0 01             	add    $0x1,%eax
  400e7e:	c6 00 00             	movb   $0x0,(%eax)
  400e81:	e9 a5 00 00 00       	jmp    400f2b <change+0xda>
  400e86:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  400e8a:	79 1d                	jns    400ea9 <change+0x58>
  400e8c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  400e8f:	8d 50 01             	lea    0x1(%eax),%edx
  400e92:	89 55 f4             	mov    %edx,-0xc(%ebp)
  400e95:	89 c2                	mov    %eax,%edx
  400e97:	8b 45 0c             	mov    0xc(%ebp),%eax
  400e9a:	01 d0                	add    %edx,%eax
  400e9c:	c6 00 2d             	movb   $0x2d,(%eax)
  400e9f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  400ea2:	f7 d8                	neg    %eax
  400ea4:	89 45 f0             	mov    %eax,-0x10(%ebp)
  400ea7:	eb 06                	jmp    400eaf <change+0x5e>
  400ea9:	8b 45 ec             	mov    -0x14(%ebp),%eax
  400eac:	89 45 f0             	mov    %eax,-0x10(%ebp)
  400eaf:	eb 40                	jmp    400ef1 <change+0xa0>
  400eb1:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  400eb4:	8d 41 01             	lea    0x1(%ecx),%eax
  400eb7:	89 45 f8             	mov    %eax,-0x8(%ebp)
  400eba:	8b 5d f0             	mov    -0x10(%ebp),%ebx
  400ebd:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  400ec2:	89 d8                	mov    %ebx,%eax
  400ec4:	f7 e2                	mul    %edx
  400ec6:	c1 ea 03             	shr    $0x3,%edx
  400ec9:	89 d0                	mov    %edx,%eax
  400ecb:	c1 e0 02             	shl    $0x2,%eax
  400ece:	01 d0                	add    %edx,%eax
  400ed0:	01 c0                	add    %eax,%eax
  400ed2:	29 c3                	sub    %eax,%ebx
  400ed4:	89 da                	mov    %ebx,%edx
  400ed6:	89 d0                	mov    %edx,%eax
  400ed8:	83 c0 30             	add    $0x30,%eax
  400edb:	88 44 0d 88          	mov    %al,-0x78(%ebp,%ecx,1)
  400edf:	8b 45 f0             	mov    -0x10(%ebp),%eax
  400ee2:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
  400ee7:	f7 e2                	mul    %edx
  400ee9:	89 d0                	mov    %edx,%eax
  400eeb:	c1 e8 03             	shr    $0x3,%eax
  400eee:	89 45 f0             	mov    %eax,-0x10(%ebp)
  400ef1:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  400ef5:	75 ba                	jne    400eb1 <change+0x60>
  400ef7:	eb 21                	jmp    400f1a <change+0xc9>
  400ef9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  400efc:	8d 50 01             	lea    0x1(%eax),%edx
  400eff:	89 55 f4             	mov    %edx,-0xc(%ebp)
  400f02:	89 c2                	mov    %eax,%edx
  400f04:	8b 45 0c             	mov    0xc(%ebp),%eax
  400f07:	01 c2                	add    %eax,%edx
  400f09:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
  400f0d:	8d 4d 88             	lea    -0x78(%ebp),%ecx
  400f10:	8b 45 f8             	mov    -0x8(%ebp),%eax
  400f13:	01 c8                	add    %ecx,%eax
  400f15:	0f b6 00             	movzbl (%eax),%eax
  400f18:	88 02                	mov    %al,(%edx)
  400f1a:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  400f1e:	75 d9                	jne    400ef9 <change+0xa8>
  400f20:	8b 55 f4             	mov    -0xc(%ebp),%edx
  400f23:	8b 45 0c             	mov    0xc(%ebp),%eax
  400f26:	01 d0                	add    %edx,%eax
  400f28:	c6 00 00             	movb   $0x0,(%eax)
  400f2b:	83 ec 80             	sub    $0xffffff80,%esp
  400f2e:	5b                   	pop    %ebx
  400f2f:	5d                   	pop    %ebp
  400f30:	c3                   	ret    

00400f31 <change_x>:
  400f31:	55                   	push   %ebp
  400f32:	89 e5                	mov    %esp,%ebp
  400f34:	83 ec 70             	sub    $0x70,%esp
  400f37:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  400f3e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  400f45:	8b 45 08             	mov    0x8(%ebp),%eax
  400f48:	89 45 f4             	mov    %eax,-0xc(%ebp)
  400f4b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  400f4f:	75 11                	jne    400f62 <change_x+0x31>
  400f51:	8b 45 0c             	mov    0xc(%ebp),%eax
  400f54:	c6 00 30             	movb   $0x30,(%eax)
  400f57:	8b 45 0c             	mov    0xc(%ebp),%eax
  400f5a:	83 c0 01             	add    $0x1,%eax
  400f5d:	c6 00 00             	movb   $0x0,(%eax)
  400f60:	eb 7e                	jmp    400fe0 <change_x+0xaf>
  400f62:	eb 42                	jmp    400fa6 <change_x+0x75>
  400f64:	8b 45 f4             	mov    -0xc(%ebp),%eax
  400f67:	83 e0 0f             	and    $0xf,%eax
  400f6a:	83 f8 09             	cmp    $0x9,%eax
  400f6d:	77 18                	ja     400f87 <change_x+0x56>
  400f6f:	8b 45 fc             	mov    -0x4(%ebp),%eax
  400f72:	8d 50 01             	lea    0x1(%eax),%edx
  400f75:	89 55 fc             	mov    %edx,-0x4(%ebp)
  400f78:	8b 55 f4             	mov    -0xc(%ebp),%edx
  400f7b:	83 e2 0f             	and    $0xf,%edx
  400f7e:	83 c2 30             	add    $0x30,%edx
  400f81:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
  400f85:	eb 16                	jmp    400f9d <change_x+0x6c>
  400f87:	8b 45 fc             	mov    -0x4(%ebp),%eax
  400f8a:	8d 50 01             	lea    0x1(%eax),%edx
  400f8d:	89 55 fc             	mov    %edx,-0x4(%ebp)
  400f90:	8b 55 f4             	mov    -0xc(%ebp),%edx
  400f93:	83 e2 0f             	and    $0xf,%edx
  400f96:	83 c2 37             	add    $0x37,%edx
  400f99:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
  400f9d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  400fa0:	c1 e8 04             	shr    $0x4,%eax
  400fa3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  400fa6:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  400faa:	75 b8                	jne    400f64 <change_x+0x33>
  400fac:	eb 21                	jmp    400fcf <change_x+0x9e>
  400fae:	8b 45 f8             	mov    -0x8(%ebp),%eax
  400fb1:	8d 50 01             	lea    0x1(%eax),%edx
  400fb4:	89 55 f8             	mov    %edx,-0x8(%ebp)
  400fb7:	89 c2                	mov    %eax,%edx
  400fb9:	8b 45 0c             	mov    0xc(%ebp),%eax
  400fbc:	01 c2                	add    %eax,%edx
  400fbe:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
  400fc2:	8d 4d 90             	lea    -0x70(%ebp),%ecx
  400fc5:	8b 45 fc             	mov    -0x4(%ebp),%eax
  400fc8:	01 c8                	add    %ecx,%eax
  400fca:	0f b6 00             	movzbl (%eax),%eax
  400fcd:	88 02                	mov    %al,(%edx)
  400fcf:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  400fd3:	75 d9                	jne    400fae <change_x+0x7d>
  400fd5:	8b 55 f8             	mov    -0x8(%ebp),%edx
  400fd8:	8b 45 0c             	mov    0xc(%ebp),%eax
  400fdb:	01 d0                	add    %edx,%eax
  400fdd:	c6 00 00             	movb   $0x0,(%eax)
  400fe0:	c9                   	leave  
  400fe1:	c3                   	ret    

00400fe2 <v_fprintf>:
  400fe2:	55                   	push   %ebp
  400fe3:	89 e5                	mov    %esp,%ebp
  400fe5:	81 ec 88 00 00 00    	sub    $0x88,%esp
  400feb:	8b 45 0c             	mov    0xc(%ebp),%eax
  400fee:	89 45 ec             	mov    %eax,-0x14(%ebp)
  400ff1:	8b 45 10             	mov    0x10(%ebp),%eax
  400ff4:	89 45 f4             	mov    %eax,-0xc(%ebp)
  400ff7:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  400ffe:	e9 61 01 00 00       	jmp    401164 <v_fprintf+0x182>
  401003:	8b 55 f0             	mov    -0x10(%ebp),%edx
  401006:	8b 45 ec             	mov    -0x14(%ebp),%eax
  401009:	01 d0                	add    %edx,%eax
  40100b:	0f b6 00             	movzbl (%eax),%eax
  40100e:	3c 25                	cmp    $0x25,%al
  401010:	74 27                	je     401039 <v_fprintf+0x57>
  401012:	8b 55 f0             	mov    -0x10(%ebp),%edx
  401015:	8b 45 ec             	mov    -0x14(%ebp),%eax
  401018:	01 d0                	add    %edx,%eax
  40101a:	0f b6 00             	movzbl (%eax),%eax
  40101d:	88 45 eb             	mov    %al,-0x15(%ebp)
  401020:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
  401024:	83 ec 0c             	sub    $0xc,%esp
  401027:	50                   	push   %eax
  401028:	8b 45 08             	mov    0x8(%ebp),%eax
  40102b:	ff d0                	call   *%eax
  40102d:	83 c4 10             	add    $0x10,%esp
  401030:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  401034:	e9 2b 01 00 00       	jmp    401164 <v_fprintf+0x182>
  401039:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  40103d:	8b 55 f0             	mov    -0x10(%ebp),%edx
  401040:	8b 45 ec             	mov    -0x14(%ebp),%eax
  401043:	01 d0                	add    %edx,%eax
  401045:	0f b6 00             	movzbl (%eax),%eax
  401048:	3c 25                	cmp    $0x25,%al
  40104a:	75 16                	jne    401062 <v_fprintf+0x80>
  40104c:	83 ec 0c             	sub    $0xc,%esp
  40104f:	6a 25                	push   $0x25
  401051:	8b 45 08             	mov    0x8(%ebp),%eax
  401054:	ff d0                	call   *%eax
  401056:	83 c4 10             	add    $0x10,%esp
  401059:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  40105d:	e9 02 01 00 00       	jmp    401164 <v_fprintf+0x182>
  401062:	8b 55 f0             	mov    -0x10(%ebp),%edx
  401065:	8b 45 ec             	mov    -0x14(%ebp),%eax
  401068:	01 d0                	add    %edx,%eax
  40106a:	0f b6 00             	movzbl (%eax),%eax
  40106d:	3c 63                	cmp    $0x63,%al
  40106f:	75 26                	jne    401097 <v_fprintf+0xb5>
  401071:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  401075:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401078:	0f b6 00             	movzbl (%eax),%eax
  40107b:	88 45 eb             	mov    %al,-0x15(%ebp)
  40107e:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
  401082:	83 ec 0c             	sub    $0xc,%esp
  401085:	50                   	push   %eax
  401086:	8b 45 08             	mov    0x8(%ebp),%eax
  401089:	ff d0                	call   *%eax
  40108b:	83 c4 10             	add    $0x10,%esp
  40108e:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  401092:	e9 cd 00 00 00       	jmp    401164 <v_fprintf+0x182>
  401097:	8b 55 f0             	mov    -0x10(%ebp),%edx
  40109a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  40109d:	01 d0                	add    %edx,%eax
  40109f:	0f b6 00             	movzbl (%eax),%eax
  4010a2:	3c 64                	cmp    $0x64,%al
  4010a4:	75 36                	jne    4010dc <v_fprintf+0xfa>
  4010a6:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  4010aa:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4010ad:	8b 00                	mov    (%eax),%eax
  4010af:	83 ec 08             	sub    $0x8,%esp
  4010b2:	8d 55 87             	lea    -0x79(%ebp),%edx
  4010b5:	52                   	push   %edx
  4010b6:	50                   	push   %eax
  4010b7:	e8 95 fd ff ff       	call   400e51 <change>
  4010bc:	83 c4 10             	add    $0x10,%esp
  4010bf:	83 ec 04             	sub    $0x4,%esp
  4010c2:	6a 00                	push   $0x0
  4010c4:	8d 45 87             	lea    -0x79(%ebp),%eax
  4010c7:	50                   	push   %eax
  4010c8:	ff 75 08             	pushl  0x8(%ebp)
  4010cb:	e8 12 ff ff ff       	call   400fe2 <v_fprintf>
  4010d0:	83 c4 10             	add    $0x10,%esp
  4010d3:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  4010d7:	e9 88 00 00 00       	jmp    401164 <v_fprintf+0x182>
  4010dc:	8b 55 f0             	mov    -0x10(%ebp),%edx
  4010df:	8b 45 ec             	mov    -0x14(%ebp),%eax
  4010e2:	01 d0                	add    %edx,%eax
  4010e4:	0f b6 00             	movzbl (%eax),%eax
  4010e7:	3c 78                	cmp    $0x78,%al
  4010e9:	75 33                	jne    40111e <v_fprintf+0x13c>
  4010eb:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  4010ef:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4010f2:	8b 00                	mov    (%eax),%eax
  4010f4:	83 ec 08             	sub    $0x8,%esp
  4010f7:	8d 55 87             	lea    -0x79(%ebp),%edx
  4010fa:	52                   	push   %edx
  4010fb:	50                   	push   %eax
  4010fc:	e8 30 fe ff ff       	call   400f31 <change_x>
  401101:	83 c4 10             	add    $0x10,%esp
  401104:	83 ec 04             	sub    $0x4,%esp
  401107:	6a 00                	push   $0x0
  401109:	8d 45 87             	lea    -0x79(%ebp),%eax
  40110c:	50                   	push   %eax
  40110d:	ff 75 08             	pushl  0x8(%ebp)
  401110:	e8 cd fe ff ff       	call   400fe2 <v_fprintf>
  401115:	83 c4 10             	add    $0x10,%esp
  401118:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  40111c:	eb 46                	jmp    401164 <v_fprintf+0x182>
  40111e:	8b 55 f0             	mov    -0x10(%ebp),%edx
  401121:	8b 45 ec             	mov    -0x14(%ebp),%eax
  401124:	01 d0                	add    %edx,%eax
  401126:	0f b6 00             	movzbl (%eax),%eax
  401129:	3c 73                	cmp    $0x73,%al
  40112b:	75 20                	jne    40114d <v_fprintf+0x16b>
  40112d:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  401131:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401134:	8b 00                	mov    (%eax),%eax
  401136:	83 ec 04             	sub    $0x4,%esp
  401139:	6a 00                	push   $0x0
  40113b:	50                   	push   %eax
  40113c:	ff 75 08             	pushl  0x8(%ebp)
  40113f:	e8 9e fe ff ff       	call   400fe2 <v_fprintf>
  401144:	83 c4 10             	add    $0x10,%esp
  401147:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
  40114b:	eb 17                	jmp    401164 <v_fprintf+0x182>
  40114d:	83 ec 04             	sub    $0x4,%esp
  401150:	6a 00                	push   $0x0
  401152:	68 08 20 40 00       	push   $0x402008
  401157:	ff 75 08             	pushl  0x8(%ebp)
  40115a:	e8 83 fe ff ff       	call   400fe2 <v_fprintf>
  40115f:	83 c4 10             	add    $0x10,%esp
  401162:	eb 13                	jmp    401177 <v_fprintf+0x195>
  401164:	8b 55 f0             	mov    -0x10(%ebp),%edx
  401167:	8b 45 ec             	mov    -0x14(%ebp),%eax
  40116a:	01 d0                	add    %edx,%eax
  40116c:	0f b6 00             	movzbl (%eax),%eax
  40116f:	84 c0                	test   %al,%al
  401171:	0f 85 8c fe ff ff    	jne    401003 <v_fprintf+0x21>
  401177:	c9                   	leave  
  401178:	c3                   	ret    

00401179 <printk>:
  401179:	55                   	push   %ebp
  40117a:	89 e5                	mov    %esp,%ebp
  40117c:	83 ec 18             	sub    $0x18,%esp
  40117f:	8d 45 0c             	lea    0xc(%ebp),%eax
  401182:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401185:	8b 45 08             	mov    0x8(%ebp),%eax
  401188:	83 ec 04             	sub    $0x4,%esp
  40118b:	ff 75 f4             	pushl  -0xc(%ebp)
  40118e:	50                   	push   %eax
  40118f:	68 e9 02 40 00       	push   $0x4002e9
  401194:	e8 49 fe ff ff       	call   400fe2 <v_fprintf>
  401199:	83 c4 10             	add    $0x10,%esp
  40119c:	c9                   	leave  
  40119d:	c3                   	ret    

0040119e <my_memcpy>:
  40119e:	55                   	push   %ebp
  40119f:	89 e5                	mov    %esp,%ebp
  4011a1:	57                   	push   %edi
  4011a2:	56                   	push   %esi
  4011a3:	53                   	push   %ebx
  4011a4:	8b 45 10             	mov    0x10(%ebp),%eax
  4011a7:	8b 55 0c             	mov    0xc(%ebp),%edx
  4011aa:	8b 5d 08             	mov    0x8(%ebp),%ebx
  4011ad:	89 c1                	mov    %eax,%ecx
  4011af:	89 d6                	mov    %edx,%esi
  4011b1:	89 df                	mov    %ebx,%edi
  4011b3:	fc                   	cld    
  4011b4:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  4011b6:	5b                   	pop    %ebx
  4011b7:	5e                   	pop    %esi
  4011b8:	5f                   	pop    %edi
  4011b9:	5d                   	pop    %ebp
  4011ba:	c3                   	ret    

004011bb <my_memset>:
  4011bb:	55                   	push   %ebp
  4011bc:	89 e5                	mov    %esp,%ebp
  4011be:	57                   	push   %edi
  4011bf:	53                   	push   %ebx
  4011c0:	8b 55 10             	mov    0x10(%ebp),%edx
  4011c3:	8b 45 0c             	mov    0xc(%ebp),%eax
  4011c6:	8b 5d 08             	mov    0x8(%ebp),%ebx
  4011c9:	89 d1                	mov    %edx,%ecx
  4011cb:	89 df                	mov    %ebx,%edi
  4011cd:	fc                   	cld    
  4011ce:	f3 aa                	rep stos %al,%es:(%edi)
  4011d0:	5b                   	pop    %ebx
  4011d1:	5f                   	pop    %edi
  4011d2:	5d                   	pop    %ebp
  4011d3:	c3                   	ret    

004011d4 <inb>:
  4011d4:	55                   	push   %ebp
  4011d5:	89 e5                	mov    %esp,%ebp
  4011d7:	83 ec 10             	sub    $0x10,%esp
  4011da:	8b 45 08             	mov    0x8(%ebp),%eax
  4011dd:	89 c2                	mov    %eax,%edx
  4011df:	ec                   	in     (%dx),%al
  4011e0:	88 45 ff             	mov    %al,-0x1(%ebp)
  4011e3:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  4011e7:	c9                   	leave  
  4011e8:	c3                   	ret    

004011e9 <insl>:
  4011e9:	55                   	push   %ebp
  4011ea:	89 e5                	mov    %esp,%ebp
  4011ec:	57                   	push   %edi
  4011ed:	53                   	push   %ebx
  4011ee:	8b 55 08             	mov    0x8(%ebp),%edx
  4011f1:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  4011f4:	8b 45 10             	mov    0x10(%ebp),%eax
  4011f7:	89 cb                	mov    %ecx,%ebx
  4011f9:	89 df                	mov    %ebx,%edi
  4011fb:	89 c1                	mov    %eax,%ecx
  4011fd:	fc                   	cld    
  4011fe:	f2 6d                	repnz insl (%dx),%es:(%edi)
  401200:	89 c8                	mov    %ecx,%eax
  401202:	89 fb                	mov    %edi,%ebx
  401204:	89 5d 0c             	mov    %ebx,0xc(%ebp)
  401207:	89 45 10             	mov    %eax,0x10(%ebp)
  40120a:	5b                   	pop    %ebx
  40120b:	5f                   	pop    %edi
  40120c:	5d                   	pop    %ebp
  40120d:	c3                   	ret    

0040120e <outb>:
  40120e:	55                   	push   %ebp
  40120f:	89 e5                	mov    %esp,%ebp
  401211:	83 ec 04             	sub    $0x4,%esp
  401214:	8b 45 0c             	mov    0xc(%ebp),%eax
  401217:	88 45 fc             	mov    %al,-0x4(%ebp)
  40121a:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  40121e:	8b 55 08             	mov    0x8(%ebp),%edx
  401221:	ee                   	out    %al,(%dx)
  401222:	c9                   	leave  
  401223:	c3                   	ret    

00401224 <waitdisk>:
  401224:	55                   	push   %ebp
  401225:	89 e5                	mov    %esp,%ebp
  401227:	90                   	nop
  401228:	68 f7 01 00 00       	push   $0x1f7
  40122d:	e8 a2 ff ff ff       	call   4011d4 <inb>
  401232:	83 c4 04             	add    $0x4,%esp
  401235:	0f b6 c0             	movzbl %al,%eax
  401238:	25 c0 00 00 00       	and    $0xc0,%eax
  40123d:	83 f8 40             	cmp    $0x40,%eax
  401240:	75 e6                	jne    401228 <waitdisk+0x4>
  401242:	c9                   	leave  
  401243:	c3                   	ret    

00401244 <readsect>:
  401244:	55                   	push   %ebp
  401245:	89 e5                	mov    %esp,%ebp
  401247:	e8 d8 ff ff ff       	call   401224 <waitdisk>
  40124c:	6a 01                	push   $0x1
  40124e:	68 f2 01 00 00       	push   $0x1f2
  401253:	e8 b6 ff ff ff       	call   40120e <outb>
  401258:	83 c4 08             	add    $0x8,%esp
  40125b:	8b 45 0c             	mov    0xc(%ebp),%eax
  40125e:	0f b6 c0             	movzbl %al,%eax
  401261:	50                   	push   %eax
  401262:	68 f3 01 00 00       	push   $0x1f3
  401267:	e8 a2 ff ff ff       	call   40120e <outb>
  40126c:	83 c4 08             	add    $0x8,%esp
  40126f:	8b 45 0c             	mov    0xc(%ebp),%eax
  401272:	c1 e8 08             	shr    $0x8,%eax
  401275:	0f b6 c0             	movzbl %al,%eax
  401278:	50                   	push   %eax
  401279:	68 f4 01 00 00       	push   $0x1f4
  40127e:	e8 8b ff ff ff       	call   40120e <outb>
  401283:	83 c4 08             	add    $0x8,%esp
  401286:	8b 45 0c             	mov    0xc(%ebp),%eax
  401289:	c1 e8 10             	shr    $0x10,%eax
  40128c:	0f b6 c0             	movzbl %al,%eax
  40128f:	50                   	push   %eax
  401290:	68 f5 01 00 00       	push   $0x1f5
  401295:	e8 74 ff ff ff       	call   40120e <outb>
  40129a:	83 c4 08             	add    $0x8,%esp
  40129d:	8b 45 0c             	mov    0xc(%ebp),%eax
  4012a0:	c1 e8 18             	shr    $0x18,%eax
  4012a3:	83 c8 e0             	or     $0xffffffe0,%eax
  4012a6:	0f b6 c0             	movzbl %al,%eax
  4012a9:	50                   	push   %eax
  4012aa:	68 f6 01 00 00       	push   $0x1f6
  4012af:	e8 5a ff ff ff       	call   40120e <outb>
  4012b4:	83 c4 08             	add    $0x8,%esp
  4012b7:	6a 20                	push   $0x20
  4012b9:	68 f7 01 00 00       	push   $0x1f7
  4012be:	e8 4b ff ff ff       	call   40120e <outb>
  4012c3:	83 c4 08             	add    $0x8,%esp
  4012c6:	e8 59 ff ff ff       	call   401224 <waitdisk>
  4012cb:	68 80 00 00 00       	push   $0x80
  4012d0:	ff 75 08             	pushl  0x8(%ebp)
  4012d3:	68 f0 01 00 00       	push   $0x1f0
  4012d8:	e8 0c ff ff ff       	call   4011e9 <insl>
  4012dd:	83 c4 0c             	add    $0xc,%esp
  4012e0:	c9                   	leave  
  4012e1:	c3                   	ret    

004012e2 <read_disk>:
  4012e2:	55                   	push   %ebp
  4012e3:	89 e5                	mov    %esp,%ebp
  4012e5:	83 ec 10             	sub    $0x10,%esp
  4012e8:	8b 55 0c             	mov    0xc(%ebp),%edx
  4012eb:	8b 45 08             	mov    0x8(%ebp),%eax
  4012ee:	01 d0                	add    %edx,%eax
  4012f0:	89 45 f8             	mov    %eax,-0x8(%ebp)
  4012f3:	8b 45 10             	mov    0x10(%ebp),%eax
  4012f6:	99                   	cltd   
  4012f7:	c1 ea 17             	shr    $0x17,%edx
  4012fa:	01 d0                	add    %edx,%eax
  4012fc:	25 ff 01 00 00       	and    $0x1ff,%eax
  401301:	29 d0                	sub    %edx,%eax
  401303:	f7 d8                	neg    %eax
  401305:	01 45 08             	add    %eax,0x8(%ebp)
  401308:	8b 45 10             	mov    0x10(%ebp),%eax
  40130b:	8d 90 ff 01 00 00    	lea    0x1ff(%eax),%edx
  401311:	85 c0                	test   %eax,%eax
  401313:	0f 48 c2             	cmovs  %edx,%eax
  401316:	c1 f8 09             	sar    $0x9,%eax
  401319:	83 c0 01             	add    $0x1,%eax
  40131c:	89 45 fc             	mov    %eax,-0x4(%ebp)
  40131f:	eb 1a                	jmp    40133b <read_disk+0x59>
  401321:	8b 45 fc             	mov    -0x4(%ebp),%eax
  401324:	50                   	push   %eax
  401325:	ff 75 08             	pushl  0x8(%ebp)
  401328:	e8 17 ff ff ff       	call   401244 <readsect>
  40132d:	83 c4 08             	add    $0x8,%esp
  401330:	81 45 08 00 02 00 00 	addl   $0x200,0x8(%ebp)
  401337:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  40133b:	8b 45 08             	mov    0x8(%ebp),%eax
  40133e:	3b 45 f8             	cmp    -0x8(%ebp),%eax
  401341:	72 de                	jb     401321 <read_disk+0x3f>
  401343:	c9                   	leave  
  401344:	c3                   	ret    

00401345 <load>:
  401345:	55                   	push   %ebp
  401346:	89 e5                	mov    %esp,%ebp
  401348:	83 ec 10             	sub    $0x10,%esp
  40134b:	c7 45 f4 00 00 08 00 	movl   $0x80000,-0xc(%ebp)
  401352:	8b 45 08             	mov    0x8(%ebp),%eax
  401355:	50                   	push   %eax
  401356:	68 00 10 00 00       	push   $0x1000
  40135b:	ff 75 f4             	pushl  -0xc(%ebp)
  40135e:	e8 7f ff ff ff       	call   4012e2 <read_disk>
  401363:	83 c4 0c             	add    $0xc,%esp
  401366:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401369:	8b 50 1c             	mov    0x1c(%eax),%edx
  40136c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40136f:	01 d0                	add    %edx,%eax
  401371:	89 45 fc             	mov    %eax,-0x4(%ebp)
  401374:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401377:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
  40137b:	0f b7 c0             	movzwl %ax,%eax
  40137e:	c1 e0 05             	shl    $0x5,%eax
  401381:	89 c2                	mov    %eax,%edx
  401383:	8b 45 fc             	mov    -0x4(%ebp),%eax
  401386:	01 d0                	add    %edx,%eax
  401388:	89 45 f0             	mov    %eax,-0x10(%ebp)
  40138b:	eb 5a                	jmp    4013e7 <load+0xa2>
  40138d:	8b 45 fc             	mov    -0x4(%ebp),%eax
  401390:	8b 50 04             	mov    0x4(%eax),%edx
  401393:	8b 45 08             	mov    0x8(%ebp),%eax
  401396:	01 d0                	add    %edx,%eax
  401398:	89 c1                	mov    %eax,%ecx
  40139a:	8b 45 fc             	mov    -0x4(%ebp),%eax
  40139d:	8b 40 10             	mov    0x10(%eax),%eax
  4013a0:	89 c2                	mov    %eax,%edx
  4013a2:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4013a5:	8b 40 0c             	mov    0xc(%eax),%eax
  4013a8:	51                   	push   %ecx
  4013a9:	52                   	push   %edx
  4013aa:	50                   	push   %eax
  4013ab:	e8 32 ff ff ff       	call   4012e2 <read_disk>
  4013b0:	83 c4 0c             	add    $0xc,%esp
  4013b3:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4013b6:	8b 50 0c             	mov    0xc(%eax),%edx
  4013b9:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4013bc:	8b 40 10             	mov    0x10(%eax),%eax
  4013bf:	01 d0                	add    %edx,%eax
  4013c1:	89 45 f8             	mov    %eax,-0x8(%ebp)
  4013c4:	eb 0a                	jmp    4013d0 <load+0x8b>
  4013c6:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4013c9:	c6 00 00             	movb   $0x0,(%eax)
  4013cc:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  4013d0:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4013d3:	8b 50 0c             	mov    0xc(%eax),%edx
  4013d6:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4013d9:	8b 40 14             	mov    0x14(%eax),%eax
  4013dc:	01 d0                	add    %edx,%eax
  4013de:	3b 45 f8             	cmp    -0x8(%ebp),%eax
  4013e1:	77 e3                	ja     4013c6 <load+0x81>
  4013e3:	83 45 fc 20          	addl   $0x20,-0x4(%ebp)
  4013e7:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4013ea:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  4013ed:	72 9e                	jb     40138d <load+0x48>
  4013ef:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4013f2:	8b 40 18             	mov    0x18(%eax),%eax
  4013f5:	c9                   	leave  
  4013f6:	c3                   	ret    

004013f7 <print_tf>:
  4013f7:	55                   	push   %ebp
  4013f8:	89 e5                	mov    %esp,%ebp
  4013fa:	83 ec 08             	sub    $0x8,%esp
  4013fd:	8b 45 08             	mov    0x8(%ebp),%eax
  401400:	8b 40 1c             	mov    0x1c(%eax),%eax
  401403:	83 ec 08             	sub    $0x8,%esp
  401406:	50                   	push   %eax
  401407:	68 28 20 40 00       	push   $0x402028
  40140c:	e8 68 fd ff ff       	call   401179 <printk>
  401411:	83 c4 10             	add    $0x10,%esp
  401414:	8b 45 08             	mov    0x8(%ebp),%eax
  401417:	8b 40 10             	mov    0x10(%eax),%eax
  40141a:	83 ec 08             	sub    $0x8,%esp
  40141d:	50                   	push   %eax
  40141e:	68 2f 20 40 00       	push   $0x40202f
  401423:	e8 51 fd ff ff       	call   401179 <printk>
  401428:	83 c4 10             	add    $0x10,%esp
  40142b:	8b 45 08             	mov    0x8(%ebp),%eax
  40142e:	8b 40 18             	mov    0x18(%eax),%eax
  401431:	83 ec 08             	sub    $0x8,%esp
  401434:	50                   	push   %eax
  401435:	68 36 20 40 00       	push   $0x402036
  40143a:	e8 3a fd ff ff       	call   401179 <printk>
  40143f:	83 c4 10             	add    $0x10,%esp
  401442:	8b 45 08             	mov    0x8(%ebp),%eax
  401445:	8b 40 14             	mov    0x14(%eax),%eax
  401448:	83 ec 08             	sub    $0x8,%esp
  40144b:	50                   	push   %eax
  40144c:	68 3d 20 40 00       	push   $0x40203d
  401451:	e8 23 fd ff ff       	call   401179 <printk>
  401456:	83 c4 10             	add    $0x10,%esp
  401459:	8b 45 08             	mov    0x8(%ebp),%eax
  40145c:	8b 00                	mov    (%eax),%eax
  40145e:	83 ec 08             	sub    $0x8,%esp
  401461:	50                   	push   %eax
  401462:	68 44 20 40 00       	push   $0x402044
  401467:	e8 0d fd ff ff       	call   401179 <printk>
  40146c:	83 c4 10             	add    $0x10,%esp
  40146f:	8b 45 08             	mov    0x8(%ebp),%eax
  401472:	8b 40 34             	mov    0x34(%eax),%eax
  401475:	83 ec 08             	sub    $0x8,%esp
  401478:	50                   	push   %eax
  401479:	68 4b 20 40 00       	push   $0x40204b
  40147e:	e8 f6 fc ff ff       	call   401179 <printk>
  401483:	83 c4 10             	add    $0x10,%esp
  401486:	8b 45 08             	mov    0x8(%ebp),%eax
  401489:	8b 40 08             	mov    0x8(%eax),%eax
  40148c:	83 ec 08             	sub    $0x8,%esp
  40148f:	50                   	push   %eax
  401490:	68 52 20 40 00       	push   $0x402052
  401495:	e8 df fc ff ff       	call   401179 <printk>
  40149a:	83 c4 10             	add    $0x10,%esp
  40149d:	8b 45 08             	mov    0x8(%ebp),%eax
  4014a0:	8b 40 28             	mov    0x28(%eax),%eax
  4014a3:	83 ec 08             	sub    $0x8,%esp
  4014a6:	50                   	push   %eax
  4014a7:	68 59 20 40 00       	push   $0x402059
  4014ac:	e8 c8 fc ff ff       	call   401179 <printk>
  4014b1:	83 c4 10             	add    $0x10,%esp
  4014b4:	8b 45 08             	mov    0x8(%ebp),%eax
  4014b7:	8b 40 2c             	mov    0x2c(%eax),%eax
  4014ba:	83 ec 08             	sub    $0x8,%esp
  4014bd:	50                   	push   %eax
  4014be:	68 60 20 40 00       	push   $0x402060
  4014c3:	e8 b1 fc ff ff       	call   401179 <printk>
  4014c8:	83 c4 10             	add    $0x10,%esp
  4014cb:	c9                   	leave  
  4014cc:	c3                   	ret    

004014cd <my_strcpy>:
  4014cd:	55                   	push   %ebp
  4014ce:	89 e5                	mov    %esp,%ebp
  4014d0:	83 ec 10             	sub    $0x10,%esp
  4014d3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  4014da:	eb 2c                	jmp    401508 <my_strcpy+0x3b>
  4014dc:	8b 55 fc             	mov    -0x4(%ebp),%edx
  4014df:	8b 45 08             	mov    0x8(%ebp),%eax
  4014e2:	01 c2                	add    %eax,%edx
  4014e4:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  4014e7:	8b 45 0c             	mov    0xc(%ebp),%eax
  4014ea:	01 c8                	add    %ecx,%eax
  4014ec:	0f b6 00             	movzbl (%eax),%eax
  4014ef:	88 02                	mov    %al,(%edx)
  4014f1:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  4014f5:	83 7d fc 1d          	cmpl   $0x1d,-0x4(%ebp)
  4014f9:	75 0d                	jne    401508 <my_strcpy+0x3b>
  4014fb:	8b 55 fc             	mov    -0x4(%ebp),%edx
  4014fe:	8b 45 08             	mov    0x8(%ebp),%eax
  401501:	01 d0                	add    %edx,%eax
  401503:	c6 00 00             	movb   $0x0,(%eax)
  401506:	eb 1a                	jmp    401522 <my_strcpy+0x55>
  401508:	8b 55 fc             	mov    -0x4(%ebp),%edx
  40150b:	8b 45 0c             	mov    0xc(%ebp),%eax
  40150e:	01 d0                	add    %edx,%eax
  401510:	0f b6 00             	movzbl (%eax),%eax
  401513:	84 c0                	test   %al,%al
  401515:	75 c5                	jne    4014dc <my_strcpy+0xf>
  401517:	8b 55 fc             	mov    -0x4(%ebp),%edx
  40151a:	8b 45 08             	mov    0x8(%ebp),%eax
  40151d:	01 d0                	add    %edx,%eax
  40151f:	c6 00 00             	movb   $0x0,(%eax)
  401522:	c9                   	leave  
  401523:	c3                   	ret    

00401524 <init_PCB>:
  401524:	55                   	push   %ebp
  401525:	89 e5                	mov    %esp,%ebp
  401527:	83 ec 10             	sub    $0x10,%esp
  40152a:	68 66 20 40 00       	push   $0x402066
  40152f:	68 88 3b 40 00       	push   $0x403b88
  401534:	e8 94 ff ff ff       	call   4014cd <my_strcpy>
  401539:	83 c4 08             	add    $0x8,%esp
  40153c:	c7 05 84 3b 40 00 00 	movl   $0x0,0x403b84
  401543:	00 00 00 
  401546:	c7 05 ac 3b 40 00 00 	movl   $0x0,0x403bac
  40154d:	00 00 00 
  401550:	c7 05 bc 3b 40 00 00 	movl   $0x0,0x403bbc
  401557:	00 00 00 
  40155a:	c7 05 b8 3b 40 00 00 	movl   $0x0,0x403bb8
  401561:	00 00 00 
  401564:	c7 05 a8 3b 40 00 01 	movl   $0x1,0x403ba8
  40156b:	00 00 00 
  40156e:	c7 05 b0 3b 40 00 01 	movl   $0x1,0x403bb0
  401575:	00 00 00 
  401578:	c7 05 b4 3b 40 00 0a 	movl   $0xa,0x403bb4
  40157f:	00 00 00 
  401582:	c7 05 80 0a 44 00 01 	movl   $0x1,0x440a80
  401589:	00 00 00 
  40158c:	c7 05 84 0a 44 00 00 	movl   $0x0,0x440a84
  401593:	00 00 00 
  401596:	c7 05 40 3b 40 00 00 	movl   $0x0,0x403b40
  40159d:	00 00 00 
  4015a0:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  4015a7:	eb 1c                	jmp    4015c5 <init_PCB+0xa1>
  4015a9:	8b 55 fc             	mov    -0x4(%ebp),%edx
  4015ac:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4015af:	c1 e0 06             	shl    $0x6,%eax
  4015b2:	89 c1                	mov    %eax,%ecx
  4015b4:	c1 e1 06             	shl    $0x6,%ecx
  4015b7:	01 c8                	add    %ecx,%eax
  4015b9:	05 80 3b 40 00       	add    $0x403b80,%eax
  4015be:	89 50 04             	mov    %edx,0x4(%eax)
  4015c1:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  4015c5:	83 7d fc 3b          	cmpl   $0x3b,-0x4(%ebp)
  4015c9:	7e de                	jle    4015a9 <init_PCB+0x85>
  4015cb:	c9                   	leave  
  4015cc:	c3                   	ret    

004015cd <add_PCB>:
  4015cd:	55                   	push   %ebp
  4015ce:	89 e5                	mov    %esp,%ebp
  4015d0:	83 ec 18             	sub    $0x18,%esp
  4015d3:	8b 15 80 0a 44 00    	mov    0x440a80,%edx
  4015d9:	a1 84 0a 44 00       	mov    0x440a84,%eax
  4015de:	01 c2                	add    %eax,%edx
  4015e0:	a1 40 3b 40 00       	mov    0x403b40,%eax
  4015e5:	01 d0                	add    %edx,%eax
  4015e7:	83 f8 3c             	cmp    $0x3c,%eax
  4015ea:	75 1b                	jne    401607 <add_PCB+0x3a>
  4015ec:	83 ec 0c             	sub    $0xc,%esp
  4015ef:	68 6b 20 40 00       	push   $0x40206b
  4015f4:	e8 80 fb ff ff       	call   401179 <printk>
  4015f9:	83 c4 10             	add    $0x10,%esp
  4015fc:	fb                   	sti    
  4015fd:	b8 00 00 00 00       	mov    $0x0,%eax
  401602:	e9 7f 03 00 00       	jmp    401986 <add_PCB+0x3b9>
  401607:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  40160e:	eb 22                	jmp    401632 <add_PCB+0x65>
  401610:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401613:	c1 e0 06             	shl    $0x6,%eax
  401616:	89 c2                	mov    %eax,%edx
  401618:	c1 e2 06             	shl    $0x6,%edx
  40161b:	01 d0                	add    %edx,%eax
  40161d:	83 c0 20             	add    $0x20,%eax
  401620:	05 80 3b 40 00       	add    $0x403b80,%eax
  401625:	8b 40 08             	mov    0x8(%eax),%eax
  401628:	85 c0                	test   %eax,%eax
  40162a:	75 02                	jne    40162e <add_PCB+0x61>
  40162c:	eb 0a                	jmp    401638 <add_PCB+0x6b>
  40162e:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  401632:	83 7d f4 3b          	cmpl   $0x3b,-0xc(%ebp)
  401636:	7e d8                	jle    401610 <add_PCB+0x43>
  401638:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40163b:	c1 e0 06             	shl    $0x6,%eax
  40163e:	89 c2                	mov    %eax,%edx
  401640:	c1 e2 06             	shl    $0x6,%edx
  401643:	01 d0                	add    %edx,%eax
  401645:	83 c0 20             	add    $0x20,%eax
  401648:	05 80 3b 40 00       	add    $0x403b80,%eax
  40164d:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
  401654:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
  401658:	0f 85 99 00 00 00    	jne    4016f7 <add_PCB+0x12a>
  40165e:	a1 3c 31 40 00       	mov    0x40313c,%eax
  401663:	c1 e0 06             	shl    $0x6,%eax
  401666:	89 c2                	mov    %eax,%edx
  401668:	c1 e2 06             	shl    $0x6,%edx
  40166b:	01 d0                	add    %edx,%eax
  40166d:	05 80 3b 40 00       	add    $0x403b80,%eax
  401672:	89 45 f0             	mov    %eax,-0x10(%ebp)
  401675:	8b 0d 3c 31 40 00    	mov    0x40313c,%ecx
  40167b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40167e:	c1 e0 06             	shl    $0x6,%eax
  401681:	89 c2                	mov    %eax,%edx
  401683:	c1 e2 06             	shl    $0x6,%edx
  401686:	01 d0                	add    %edx,%eax
  401688:	8d 90 80 3b 40 00    	lea    0x403b80(%eax),%edx
  40168e:	89 c8                	mov    %ecx,%eax
  401690:	c1 e0 06             	shl    $0x6,%eax
  401693:	89 c1                	mov    %eax,%ecx
  401695:	c1 e1 06             	shl    $0x6,%ecx
  401698:	01 c8                	add    %ecx,%eax
  40169a:	83 c0 30             	add    $0x30,%eax
  40169d:	05 80 3b 40 00       	add    $0x403b80,%eax
  4016a2:	89 50 08             	mov    %edx,0x8(%eax)
  4016a5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4016a8:	c1 e0 06             	shl    $0x6,%eax
  4016ab:	89 c2                	mov    %eax,%edx
  4016ad:	c1 e2 06             	shl    $0x6,%edx
  4016b0:	01 d0                	add    %edx,%eax
  4016b2:	83 c0 30             	add    $0x30,%eax
  4016b5:	8d 90 80 3b 40 00    	lea    0x403b80(%eax),%edx
  4016bb:	8b 45 f0             	mov    -0x10(%ebp),%eax
  4016be:	89 42 0c             	mov    %eax,0xc(%edx)
  4016c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4016c4:	c1 e0 06             	shl    $0x6,%eax
  4016c7:	89 c2                	mov    %eax,%edx
  4016c9:	c1 e2 06             	shl    $0x6,%edx
  4016cc:	01 d0                	add    %edx,%eax
  4016ce:	83 c0 30             	add    $0x30,%eax
  4016d1:	05 80 3b 40 00       	add    $0x403b80,%eax
  4016d6:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
  4016dd:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4016e0:	a3 3c 31 40 00       	mov    %eax,0x40313c
  4016e5:	a1 80 0a 44 00       	mov    0x440a80,%eax
  4016ea:	83 c0 01             	add    $0x1,%eax
  4016ed:	a3 80 0a 44 00       	mov    %eax,0x440a80
  4016f2:	e9 fd 01 00 00       	jmp    4018f4 <add_PCB+0x327>
  4016f7:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
  4016fb:	0f 85 fc 00 00 00    	jne    4017fd <add_PCB+0x230>
  401701:	a1 84 0a 44 00       	mov    0x440a84,%eax
  401706:	85 c0                	test   %eax,%eax
  401708:	75 5a                	jne    401764 <add_PCB+0x197>
  40170a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40170d:	a3 40 31 40 00       	mov    %eax,0x403140
  401712:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401715:	a3 44 31 40 00       	mov    %eax,0x403144
  40171a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40171d:	c1 e0 06             	shl    $0x6,%eax
  401720:	89 c2                	mov    %eax,%edx
  401722:	c1 e2 06             	shl    $0x6,%edx
  401725:	01 d0                	add    %edx,%eax
  401727:	83 c0 30             	add    $0x30,%eax
  40172a:	05 80 3b 40 00       	add    $0x403b80,%eax
  40172f:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
  401736:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401739:	c1 e0 06             	shl    $0x6,%eax
  40173c:	89 c2                	mov    %eax,%edx
  40173e:	c1 e2 06             	shl    $0x6,%edx
  401741:	01 d0                	add    %edx,%eax
  401743:	83 c0 30             	add    $0x30,%eax
  401746:	05 80 3b 40 00       	add    $0x403b80,%eax
  40174b:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
  401752:	a1 84 0a 44 00       	mov    0x440a84,%eax
  401757:	83 c0 01             	add    $0x1,%eax
  40175a:	a3 84 0a 44 00       	mov    %eax,0x440a84
  40175f:	e9 90 01 00 00       	jmp    4018f4 <add_PCB+0x327>
  401764:	a1 44 31 40 00       	mov    0x403144,%eax
  401769:	c1 e0 06             	shl    $0x6,%eax
  40176c:	89 c2                	mov    %eax,%edx
  40176e:	c1 e2 06             	shl    $0x6,%edx
  401771:	01 d0                	add    %edx,%eax
  401773:	05 80 3b 40 00       	add    $0x403b80,%eax
  401778:	89 45 f0             	mov    %eax,-0x10(%ebp)
  40177b:	8b 0d 44 31 40 00    	mov    0x403144,%ecx
  401781:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401784:	c1 e0 06             	shl    $0x6,%eax
  401787:	89 c2                	mov    %eax,%edx
  401789:	c1 e2 06             	shl    $0x6,%edx
  40178c:	01 d0                	add    %edx,%eax
  40178e:	8d 90 80 3b 40 00    	lea    0x403b80(%eax),%edx
  401794:	89 c8                	mov    %ecx,%eax
  401796:	c1 e0 06             	shl    $0x6,%eax
  401799:	89 c1                	mov    %eax,%ecx
  40179b:	c1 e1 06             	shl    $0x6,%ecx
  40179e:	01 c8                	add    %ecx,%eax
  4017a0:	83 c0 30             	add    $0x30,%eax
  4017a3:	05 80 3b 40 00       	add    $0x403b80,%eax
  4017a8:	89 50 08             	mov    %edx,0x8(%eax)
  4017ab:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4017ae:	c1 e0 06             	shl    $0x6,%eax
  4017b1:	89 c2                	mov    %eax,%edx
  4017b3:	c1 e2 06             	shl    $0x6,%edx
  4017b6:	01 d0                	add    %edx,%eax
  4017b8:	83 c0 30             	add    $0x30,%eax
  4017bb:	8d 90 80 3b 40 00    	lea    0x403b80(%eax),%edx
  4017c1:	8b 45 f0             	mov    -0x10(%ebp),%eax
  4017c4:	89 42 0c             	mov    %eax,0xc(%edx)
  4017c7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4017ca:	c1 e0 06             	shl    $0x6,%eax
  4017cd:	89 c2                	mov    %eax,%edx
  4017cf:	c1 e2 06             	shl    $0x6,%edx
  4017d2:	01 d0                	add    %edx,%eax
  4017d4:	83 c0 30             	add    $0x30,%eax
  4017d7:	05 80 3b 40 00       	add    $0x403b80,%eax
  4017dc:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
  4017e3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4017e6:	a3 44 31 40 00       	mov    %eax,0x403144
  4017eb:	a1 84 0a 44 00       	mov    0x440a84,%eax
  4017f0:	83 c0 01             	add    $0x1,%eax
  4017f3:	a3 84 0a 44 00       	mov    %eax,0x440a84
  4017f8:	e9 f7 00 00 00       	jmp    4018f4 <add_PCB+0x327>
  4017fd:	a1 40 3b 40 00       	mov    0x403b40,%eax
  401802:	85 c0                	test   %eax,%eax
  401804:	75 5a                	jne    401860 <add_PCB+0x293>
  401806:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401809:	a3 48 31 40 00       	mov    %eax,0x403148
  40180e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401811:	a3 4c 31 40 00       	mov    %eax,0x40314c
  401816:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401819:	c1 e0 06             	shl    $0x6,%eax
  40181c:	89 c2                	mov    %eax,%edx
  40181e:	c1 e2 06             	shl    $0x6,%edx
  401821:	01 d0                	add    %edx,%eax
  401823:	83 c0 30             	add    $0x30,%eax
  401826:	05 80 3b 40 00       	add    $0x403b80,%eax
  40182b:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
  401832:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401835:	c1 e0 06             	shl    $0x6,%eax
  401838:	89 c2                	mov    %eax,%edx
  40183a:	c1 e2 06             	shl    $0x6,%edx
  40183d:	01 d0                	add    %edx,%eax
  40183f:	83 c0 30             	add    $0x30,%eax
  401842:	05 80 3b 40 00       	add    $0x403b80,%eax
  401847:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
  40184e:	a1 40 3b 40 00       	mov    0x403b40,%eax
  401853:	83 c0 01             	add    $0x1,%eax
  401856:	a3 40 3b 40 00       	mov    %eax,0x403b40
  40185b:	e9 94 00 00 00       	jmp    4018f4 <add_PCB+0x327>
  401860:	a1 4c 31 40 00       	mov    0x40314c,%eax
  401865:	c1 e0 06             	shl    $0x6,%eax
  401868:	89 c2                	mov    %eax,%edx
  40186a:	c1 e2 06             	shl    $0x6,%edx
  40186d:	01 d0                	add    %edx,%eax
  40186f:	05 80 3b 40 00       	add    $0x403b80,%eax
  401874:	89 45 f0             	mov    %eax,-0x10(%ebp)
  401877:	8b 0d 4c 31 40 00    	mov    0x40314c,%ecx
  40187d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401880:	c1 e0 06             	shl    $0x6,%eax
  401883:	89 c2                	mov    %eax,%edx
  401885:	c1 e2 06             	shl    $0x6,%edx
  401888:	01 d0                	add    %edx,%eax
  40188a:	8d 90 80 3b 40 00    	lea    0x403b80(%eax),%edx
  401890:	89 c8                	mov    %ecx,%eax
  401892:	c1 e0 06             	shl    $0x6,%eax
  401895:	89 c1                	mov    %eax,%ecx
  401897:	c1 e1 06             	shl    $0x6,%ecx
  40189a:	01 c8                	add    %ecx,%eax
  40189c:	83 c0 30             	add    $0x30,%eax
  40189f:	05 80 3b 40 00       	add    $0x403b80,%eax
  4018a4:	89 50 08             	mov    %edx,0x8(%eax)
  4018a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4018aa:	c1 e0 06             	shl    $0x6,%eax
  4018ad:	89 c2                	mov    %eax,%edx
  4018af:	c1 e2 06             	shl    $0x6,%edx
  4018b2:	01 d0                	add    %edx,%eax
  4018b4:	83 c0 30             	add    $0x30,%eax
  4018b7:	8d 90 80 3b 40 00    	lea    0x403b80(%eax),%edx
  4018bd:	8b 45 f0             	mov    -0x10(%ebp),%eax
  4018c0:	89 42 0c             	mov    %eax,0xc(%edx)
  4018c3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4018c6:	c1 e0 06             	shl    $0x6,%eax
  4018c9:	89 c2                	mov    %eax,%edx
  4018cb:	c1 e2 06             	shl    $0x6,%edx
  4018ce:	01 d0                	add    %edx,%eax
  4018d0:	83 c0 30             	add    $0x30,%eax
  4018d3:	05 80 3b 40 00       	add    $0x403b80,%eax
  4018d8:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
  4018df:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4018e2:	a3 4c 31 40 00       	mov    %eax,0x40314c
  4018e7:	a1 40 3b 40 00       	mov    0x403b40,%eax
  4018ec:	83 c0 01             	add    $0x1,%eax
  4018ef:	a3 40 3b 40 00       	mov    %eax,0x403b40
  4018f4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4018f7:	c1 e0 06             	shl    $0x6,%eax
  4018fa:	89 c2                	mov    %eax,%edx
  4018fc:	c1 e2 06             	shl    $0x6,%edx
  4018ff:	01 d0                	add    %edx,%eax
  401901:	05 80 3b 40 00       	add    $0x403b80,%eax
  401906:	83 c0 08             	add    $0x8,%eax
  401909:	83 ec 08             	sub    $0x8,%esp
  40190c:	ff 75 10             	pushl  0x10(%ebp)
  40190f:	50                   	push   %eax
  401910:	e8 b8 fb ff ff       	call   4014cd <my_strcpy>
  401915:	83 c4 10             	add    $0x10,%esp
  401918:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40191b:	c1 e0 06             	shl    $0x6,%eax
  40191e:	89 c2                	mov    %eax,%edx
  401920:	c1 e2 06             	shl    $0x6,%edx
  401923:	01 d0                	add    %edx,%eax
  401925:	83 c0 30             	add    $0x30,%eax
  401928:	8d 90 80 3b 40 00    	lea    0x403b80(%eax),%edx
  40192e:	8b 45 14             	mov    0x14(%ebp),%eax
  401931:	89 42 04             	mov    %eax,0x4(%edx)
  401934:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401937:	c1 e0 06             	shl    $0x6,%eax
  40193a:	89 c2                	mov    %eax,%edx
  40193c:	c1 e2 06             	shl    $0x6,%edx
  40193f:	01 d0                	add    %edx,%eax
  401941:	83 c0 30             	add    $0x30,%eax
  401944:	8d 90 80 3b 40 00    	lea    0x403b80(%eax),%edx
  40194a:	8b 45 08             	mov    0x8(%ebp),%eax
  40194d:	89 02                	mov    %eax,(%edx)
  40194f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401952:	c1 e0 06             	shl    $0x6,%eax
  401955:	89 c2                	mov    %eax,%edx
  401957:	c1 e2 06             	shl    $0x6,%edx
  40195a:	01 d0                	add    %edx,%eax
  40195c:	8d 90 80 3b 40 00    	lea    0x403b80(%eax),%edx
  401962:	8b 45 0c             	mov    0xc(%ebp),%eax
  401965:	89 02                	mov    %eax,(%edx)
  401967:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40196a:	c1 e0 06             	shl    $0x6,%eax
  40196d:	89 c2                	mov    %eax,%edx
  40196f:	c1 e2 06             	shl    $0x6,%edx
  401972:	01 d0                	add    %edx,%eax
  401974:	83 c0 20             	add    $0x20,%eax
  401977:	8d 90 80 3b 40 00    	lea    0x403b80(%eax),%edx
  40197d:	8b 45 18             	mov    0x18(%ebp),%eax
  401980:	89 42 0c             	mov    %eax,0xc(%edx)
  401983:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401986:	c9                   	leave  
  401987:	c3                   	ret    

00401988 <delete_PCB>:
  401988:	55                   	push   %ebp
  401989:	89 e5                	mov    %esp,%ebp
  40198b:	83 ec 18             	sub    $0x18,%esp
  40198e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  401992:	75 15                	jne    4019a9 <delete_PCB+0x21>
  401994:	83 ec 0c             	sub    $0xc,%esp
  401997:	68 80 20 40 00       	push   $0x402080
  40199c:	e8 d8 f7 ff ff       	call   401179 <printk>
  4019a1:	83 c4 10             	add    $0x10,%esp
  4019a4:	e9 35 03 00 00       	jmp    401cde <delete_PCB+0x356>
  4019a9:	8b 45 08             	mov    0x8(%ebp),%eax
  4019ac:	c1 e0 06             	shl    $0x6,%eax
  4019af:	89 c2                	mov    %eax,%edx
  4019b1:	c1 e2 06             	shl    $0x6,%edx
  4019b4:	01 d0                	add    %edx,%eax
  4019b6:	83 c0 20             	add    $0x20,%eax
  4019b9:	05 80 3b 40 00       	add    $0x403b80,%eax
  4019be:	8b 40 08             	mov    0x8(%eax),%eax
  4019c1:	85 c0                	test   %eax,%eax
  4019c3:	75 15                	jne    4019da <delete_PCB+0x52>
  4019c5:	83 ec 0c             	sub    $0xc,%esp
  4019c8:	68 a3 20 40 00       	push   $0x4020a3
  4019cd:	e8 a7 f7 ff ff       	call   401179 <printk>
  4019d2:	83 c4 10             	add    $0x10,%esp
  4019d5:	e9 04 03 00 00       	jmp    401cde <delete_PCB+0x356>
  4019da:	8b 45 08             	mov    0x8(%ebp),%eax
  4019dd:	c1 e0 06             	shl    $0x6,%eax
  4019e0:	89 c2                	mov    %eax,%edx
  4019e2:	c1 e2 06             	shl    $0x6,%edx
  4019e5:	01 d0                	add    %edx,%eax
  4019e7:	83 c0 20             	add    $0x20,%eax
  4019ea:	05 80 3b 40 00       	add    $0x403b80,%eax
  4019ef:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
  4019f6:	8b 45 08             	mov    0x8(%ebp),%eax
  4019f9:	c1 e0 06             	shl    $0x6,%eax
  4019fc:	89 c2                	mov    %eax,%edx
  4019fe:	c1 e2 06             	shl    $0x6,%edx
  401a01:	01 d0                	add    %edx,%eax
  401a03:	83 c0 30             	add    $0x30,%eax
  401a06:	05 80 3b 40 00       	add    $0x403b80,%eax
  401a0b:	8b 00                	mov    (%eax),%eax
  401a0d:	83 f8 01             	cmp    $0x1,%eax
  401a10:	0f 85 dd 00 00 00    	jne    401af3 <delete_PCB+0x16b>
  401a16:	a1 3c 31 40 00       	mov    0x40313c,%eax
  401a1b:	3b 45 08             	cmp    0x8(%ebp),%eax
  401a1e:	75 55                	jne    401a75 <delete_PCB+0xed>
  401a20:	8b 45 08             	mov    0x8(%ebp),%eax
  401a23:	c1 e0 06             	shl    $0x6,%eax
  401a26:	89 c2                	mov    %eax,%edx
  401a28:	c1 e2 06             	shl    $0x6,%edx
  401a2b:	01 d0                	add    %edx,%eax
  401a2d:	83 c0 30             	add    $0x30,%eax
  401a30:	05 80 3b 40 00       	add    $0x403b80,%eax
  401a35:	8b 40 0c             	mov    0xc(%eax),%eax
  401a38:	8b 40 04             	mov    0x4(%eax),%eax
  401a3b:	a3 3c 31 40 00       	mov    %eax,0x40313c
  401a40:	8b 45 08             	mov    0x8(%ebp),%eax
  401a43:	c1 e0 06             	shl    $0x6,%eax
  401a46:	89 c2                	mov    %eax,%edx
  401a48:	c1 e2 06             	shl    $0x6,%edx
  401a4b:	01 d0                	add    %edx,%eax
  401a4d:	83 c0 30             	add    $0x30,%eax
  401a50:	05 80 3b 40 00       	add    $0x403b80,%eax
  401a55:	8b 50 0c             	mov    0xc(%eax),%edx
  401a58:	8b 45 08             	mov    0x8(%ebp),%eax
  401a5b:	c1 e0 06             	shl    $0x6,%eax
  401a5e:	89 c1                	mov    %eax,%ecx
  401a60:	c1 e1 06             	shl    $0x6,%ecx
  401a63:	01 c8                	add    %ecx,%eax
  401a65:	83 c0 30             	add    $0x30,%eax
  401a68:	05 80 3b 40 00       	add    $0x403b80,%eax
  401a6d:	8b 40 08             	mov    0x8(%eax),%eax
  401a70:	89 42 38             	mov    %eax,0x38(%edx)
  401a73:	eb 6c                	jmp    401ae1 <delete_PCB+0x159>
  401a75:	8b 45 08             	mov    0x8(%ebp),%eax
  401a78:	c1 e0 06             	shl    $0x6,%eax
  401a7b:	89 c2                	mov    %eax,%edx
  401a7d:	c1 e2 06             	shl    $0x6,%edx
  401a80:	01 d0                	add    %edx,%eax
  401a82:	83 c0 30             	add    $0x30,%eax
  401a85:	05 80 3b 40 00       	add    $0x403b80,%eax
  401a8a:	8b 40 0c             	mov    0xc(%eax),%eax
  401a8d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401a90:	8b 45 08             	mov    0x8(%ebp),%eax
  401a93:	c1 e0 06             	shl    $0x6,%eax
  401a96:	89 c2                	mov    %eax,%edx
  401a98:	c1 e2 06             	shl    $0x6,%edx
  401a9b:	01 d0                	add    %edx,%eax
  401a9d:	83 c0 30             	add    $0x30,%eax
  401aa0:	05 80 3b 40 00       	add    $0x403b80,%eax
  401aa5:	8b 50 0c             	mov    0xc(%eax),%edx
  401aa8:	8b 45 08             	mov    0x8(%ebp),%eax
  401aab:	c1 e0 06             	shl    $0x6,%eax
  401aae:	89 c1                	mov    %eax,%ecx
  401ab0:	c1 e1 06             	shl    $0x6,%ecx
  401ab3:	01 c8                	add    %ecx,%eax
  401ab5:	83 c0 30             	add    $0x30,%eax
  401ab8:	05 80 3b 40 00       	add    $0x403b80,%eax
  401abd:	8b 40 08             	mov    0x8(%eax),%eax
  401ac0:	89 42 38             	mov    %eax,0x38(%edx)
  401ac3:	8b 45 08             	mov    0x8(%ebp),%eax
  401ac6:	c1 e0 06             	shl    $0x6,%eax
  401ac9:	89 c2                	mov    %eax,%edx
  401acb:	c1 e2 06             	shl    $0x6,%edx
  401ace:	01 d0                	add    %edx,%eax
  401ad0:	83 c0 30             	add    $0x30,%eax
  401ad3:	05 80 3b 40 00       	add    $0x403b80,%eax
  401ad8:	8b 40 08             	mov    0x8(%eax),%eax
  401adb:	8b 55 f4             	mov    -0xc(%ebp),%edx
  401ade:	89 50 3c             	mov    %edx,0x3c(%eax)
  401ae1:	a1 80 0a 44 00       	mov    0x440a80,%eax
  401ae6:	83 e8 01             	sub    $0x1,%eax
  401ae9:	a3 80 0a 44 00       	mov    %eax,0x440a80
  401aee:	e9 eb 01 00 00       	jmp    401cde <delete_PCB+0x356>
  401af3:	8b 45 08             	mov    0x8(%ebp),%eax
  401af6:	c1 e0 06             	shl    $0x6,%eax
  401af9:	89 c2                	mov    %eax,%edx
  401afb:	c1 e2 06             	shl    $0x6,%edx
  401afe:	01 d0                	add    %edx,%eax
  401b00:	83 c0 30             	add    $0x30,%eax
  401b03:	05 80 3b 40 00       	add    $0x403b80,%eax
  401b08:	8b 00                	mov    (%eax),%eax
  401b0a:	83 f8 02             	cmp    $0x2,%eax
  401b0d:	0f 85 ea 00 00 00    	jne    401bfd <delete_PCB+0x275>
  401b13:	a1 84 0a 44 00       	mov    0x440a84,%eax
  401b18:	83 e8 01             	sub    $0x1,%eax
  401b1b:	a3 84 0a 44 00       	mov    %eax,0x440a84
  401b20:	a1 84 0a 44 00       	mov    0x440a84,%eax
  401b25:	85 c0                	test   %eax,%eax
  401b27:	75 19                	jne    401b42 <delete_PCB+0x1ba>
  401b29:	c7 05 40 31 40 00 00 	movl   $0x0,0x403140
  401b30:	00 00 00 
  401b33:	c7 05 44 31 40 00 00 	movl   $0x0,0x403144
  401b3a:	00 00 00 
  401b3d:	e9 9c 01 00 00       	jmp    401cde <delete_PCB+0x356>
  401b42:	a1 44 31 40 00       	mov    0x403144,%eax
  401b47:	3b 45 08             	cmp    0x8(%ebp),%eax
  401b4a:	75 20                	jne    401b6c <delete_PCB+0x1e4>
  401b4c:	8b 45 08             	mov    0x8(%ebp),%eax
  401b4f:	c1 e0 06             	shl    $0x6,%eax
  401b52:	89 c2                	mov    %eax,%edx
  401b54:	c1 e2 06             	shl    $0x6,%edx
  401b57:	01 d0                	add    %edx,%eax
  401b59:	83 c0 30             	add    $0x30,%eax
  401b5c:	05 80 3b 40 00       	add    $0x403b80,%eax
  401b61:	8b 40 0c             	mov    0xc(%eax),%eax
  401b64:	8b 40 04             	mov    0x4(%eax),%eax
  401b67:	a3 44 31 40 00       	mov    %eax,0x403144
  401b6c:	8b 45 08             	mov    0x8(%ebp),%eax
  401b6f:	c1 e0 06             	shl    $0x6,%eax
  401b72:	89 c2                	mov    %eax,%edx
  401b74:	c1 e2 06             	shl    $0x6,%edx
  401b77:	01 d0                	add    %edx,%eax
  401b79:	83 c0 30             	add    $0x30,%eax
  401b7c:	05 80 3b 40 00       	add    $0x403b80,%eax
  401b81:	8b 40 0c             	mov    0xc(%eax),%eax
  401b84:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401b87:	8b 45 08             	mov    0x8(%ebp),%eax
  401b8a:	c1 e0 06             	shl    $0x6,%eax
  401b8d:	89 c2                	mov    %eax,%edx
  401b8f:	c1 e2 06             	shl    $0x6,%edx
  401b92:	01 d0                	add    %edx,%eax
  401b94:	83 c0 30             	add    $0x30,%eax
  401b97:	05 80 3b 40 00       	add    $0x403b80,%eax
  401b9c:	8b 50 0c             	mov    0xc(%eax),%edx
  401b9f:	8b 45 08             	mov    0x8(%ebp),%eax
  401ba2:	c1 e0 06             	shl    $0x6,%eax
  401ba5:	89 c1                	mov    %eax,%ecx
  401ba7:	c1 e1 06             	shl    $0x6,%ecx
  401baa:	01 c8                	add    %ecx,%eax
  401bac:	83 c0 30             	add    $0x30,%eax
  401baf:	05 80 3b 40 00       	add    $0x403b80,%eax
  401bb4:	8b 40 08             	mov    0x8(%eax),%eax
  401bb7:	89 42 38             	mov    %eax,0x38(%edx)
  401bba:	8b 45 08             	mov    0x8(%ebp),%eax
  401bbd:	c1 e0 06             	shl    $0x6,%eax
  401bc0:	89 c2                	mov    %eax,%edx
  401bc2:	c1 e2 06             	shl    $0x6,%edx
  401bc5:	01 d0                	add    %edx,%eax
  401bc7:	83 c0 30             	add    $0x30,%eax
  401bca:	05 80 3b 40 00       	add    $0x403b80,%eax
  401bcf:	8b 40 08             	mov    0x8(%eax),%eax
  401bd2:	85 c0                	test   %eax,%eax
  401bd4:	0f 84 04 01 00 00    	je     401cde <delete_PCB+0x356>
  401bda:	8b 45 08             	mov    0x8(%ebp),%eax
  401bdd:	c1 e0 06             	shl    $0x6,%eax
  401be0:	89 c2                	mov    %eax,%edx
  401be2:	c1 e2 06             	shl    $0x6,%edx
  401be5:	01 d0                	add    %edx,%eax
  401be7:	83 c0 30             	add    $0x30,%eax
  401bea:	05 80 3b 40 00       	add    $0x403b80,%eax
  401bef:	8b 40 08             	mov    0x8(%eax),%eax
  401bf2:	8b 55 f4             	mov    -0xc(%ebp),%edx
  401bf5:	89 50 3c             	mov    %edx,0x3c(%eax)
  401bf8:	e9 e1 00 00 00       	jmp    401cde <delete_PCB+0x356>
  401bfd:	a1 40 3b 40 00       	mov    0x403b40,%eax
  401c02:	83 e8 01             	sub    $0x1,%eax
  401c05:	a3 40 3b 40 00       	mov    %eax,0x403b40
  401c0a:	a1 40 3b 40 00       	mov    0x403b40,%eax
  401c0f:	85 c0                	test   %eax,%eax
  401c11:	75 19                	jne    401c2c <delete_PCB+0x2a4>
  401c13:	c7 05 48 31 40 00 00 	movl   $0x0,0x403148
  401c1a:	00 00 00 
  401c1d:	c7 05 4c 31 40 00 00 	movl   $0x0,0x40314c
  401c24:	00 00 00 
  401c27:	e9 b2 00 00 00       	jmp    401cde <delete_PCB+0x356>
  401c2c:	a1 4c 31 40 00       	mov    0x40314c,%eax
  401c31:	3b 45 08             	cmp    0x8(%ebp),%eax
  401c34:	75 20                	jne    401c56 <delete_PCB+0x2ce>
  401c36:	8b 45 08             	mov    0x8(%ebp),%eax
  401c39:	c1 e0 06             	shl    $0x6,%eax
  401c3c:	89 c2                	mov    %eax,%edx
  401c3e:	c1 e2 06             	shl    $0x6,%edx
  401c41:	01 d0                	add    %edx,%eax
  401c43:	83 c0 30             	add    $0x30,%eax
  401c46:	05 80 3b 40 00       	add    $0x403b80,%eax
  401c4b:	8b 40 0c             	mov    0xc(%eax),%eax
  401c4e:	8b 40 04             	mov    0x4(%eax),%eax
  401c51:	a3 4c 31 40 00       	mov    %eax,0x40314c
  401c56:	8b 45 08             	mov    0x8(%ebp),%eax
  401c59:	c1 e0 06             	shl    $0x6,%eax
  401c5c:	89 c2                	mov    %eax,%edx
  401c5e:	c1 e2 06             	shl    $0x6,%edx
  401c61:	01 d0                	add    %edx,%eax
  401c63:	83 c0 30             	add    $0x30,%eax
  401c66:	05 80 3b 40 00       	add    $0x403b80,%eax
  401c6b:	8b 40 0c             	mov    0xc(%eax),%eax
  401c6e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401c71:	8b 45 08             	mov    0x8(%ebp),%eax
  401c74:	c1 e0 06             	shl    $0x6,%eax
  401c77:	89 c2                	mov    %eax,%edx
  401c79:	c1 e2 06             	shl    $0x6,%edx
  401c7c:	01 d0                	add    %edx,%eax
  401c7e:	83 c0 30             	add    $0x30,%eax
  401c81:	05 80 3b 40 00       	add    $0x403b80,%eax
  401c86:	8b 50 0c             	mov    0xc(%eax),%edx
  401c89:	8b 45 08             	mov    0x8(%ebp),%eax
  401c8c:	c1 e0 06             	shl    $0x6,%eax
  401c8f:	89 c1                	mov    %eax,%ecx
  401c91:	c1 e1 06             	shl    $0x6,%ecx
  401c94:	01 c8                	add    %ecx,%eax
  401c96:	83 c0 30             	add    $0x30,%eax
  401c99:	05 80 3b 40 00       	add    $0x403b80,%eax
  401c9e:	8b 40 08             	mov    0x8(%eax),%eax
  401ca1:	89 42 38             	mov    %eax,0x38(%edx)
  401ca4:	8b 45 08             	mov    0x8(%ebp),%eax
  401ca7:	c1 e0 06             	shl    $0x6,%eax
  401caa:	89 c2                	mov    %eax,%edx
  401cac:	c1 e2 06             	shl    $0x6,%edx
  401caf:	01 d0                	add    %edx,%eax
  401cb1:	83 c0 30             	add    $0x30,%eax
  401cb4:	05 80 3b 40 00       	add    $0x403b80,%eax
  401cb9:	8b 40 08             	mov    0x8(%eax),%eax
  401cbc:	85 c0                	test   %eax,%eax
  401cbe:	74 1e                	je     401cde <delete_PCB+0x356>
  401cc0:	8b 45 08             	mov    0x8(%ebp),%eax
  401cc3:	c1 e0 06             	shl    $0x6,%eax
  401cc6:	89 c2                	mov    %eax,%edx
  401cc8:	c1 e2 06             	shl    $0x6,%edx
  401ccb:	01 d0                	add    %edx,%eax
  401ccd:	83 c0 30             	add    $0x30,%eax
  401cd0:	05 80 3b 40 00       	add    $0x403b80,%eax
  401cd5:	8b 40 08             	mov    0x8(%eax),%eax
  401cd8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  401cdb:	89 50 3c             	mov    %edx,0x3c(%eax)
  401cde:	c9                   	leave  
  401cdf:	c3                   	ret    

00401ce0 <reschedule>:
  401ce0:	55                   	push   %ebp
  401ce1:	89 e5                	mov    %esp,%ebp
  401ce3:	83 ec 18             	sub    $0x18,%esp
  401ce6:	a1 38 31 40 00       	mov    0x403138,%eax
  401ceb:	89 45 f0             	mov    %eax,-0x10(%ebp)
  401cee:	a1 80 0a 44 00       	mov    0x440a80,%eax
  401cf3:	83 f8 01             	cmp    $0x1,%eax
  401cf6:	75 0b                	jne    401d03 <reschedule+0x23>
  401cf8:	a1 84 0a 44 00       	mov    0x440a84,%eax
  401cfd:	85 c0                	test   %eax,%eax
  401cff:	75 02                	jne    401d03 <reschedule+0x23>
  401d01:	eb fe                	jmp    401d01 <reschedule+0x21>
  401d03:	a1 80 0a 44 00       	mov    0x440a80,%eax
  401d08:	83 f8 01             	cmp    $0x1,%eax
  401d0b:	7e 5a                	jle    401d67 <reschedule+0x87>
  401d0d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  401d10:	c1 e0 06             	shl    $0x6,%eax
  401d13:	89 c2                	mov    %eax,%edx
  401d15:	c1 e2 06             	shl    $0x6,%edx
  401d18:	01 d0                	add    %edx,%eax
  401d1a:	83 c0 30             	add    $0x30,%eax
  401d1d:	05 80 3b 40 00       	add    $0x403b80,%eax
  401d22:	8b 40 08             	mov    0x8(%eax),%eax
  401d25:	83 c0 40             	add    $0x40,%eax
  401d28:	05 f8 0f 00 00       	add    $0xff8,%eax
  401d2d:	83 ec 0c             	sub    $0xc,%esp
  401d30:	50                   	push   %eax
  401d31:	e8 79 e6 ff ff       	call   4003af <set_tss>
  401d36:	83 c4 10             	add    $0x10,%esp
  401d39:	66 b8 23 00          	mov    $0x23,%ax
  401d3d:	8e d8                	mov    %eax,%ds
  401d3f:	8e c0                	mov    %eax,%es
  401d41:	8b 45 f0             	mov    -0x10(%ebp),%eax
  401d44:	c1 e0 06             	shl    $0x6,%eax
  401d47:	89 c2                	mov    %eax,%edx
  401d49:	c1 e2 06             	shl    $0x6,%edx
  401d4c:	01 d0                	add    %edx,%eax
  401d4e:	83 c0 30             	add    $0x30,%eax
  401d51:	05 80 3b 40 00       	add    $0x403b80,%eax
  401d56:	8b 40 08             	mov    0x8(%eax),%eax
  401d59:	8b 00                	mov    (%eax),%eax
  401d5b:	89 c4                	mov    %eax,%esp
  401d5d:	61                   	popa   
  401d5e:	83 c4 08             	add    $0x8,%esp
  401d61:	cf                   	iret   
  401d62:	e9 15 01 00 00       	jmp    401e7c <reschedule+0x19c>
  401d67:	8b 0d 38 31 40 00    	mov    0x403138,%ecx
  401d6d:	a1 40 31 40 00       	mov    0x403140,%eax
  401d72:	c1 e0 06             	shl    $0x6,%eax
  401d75:	89 c2                	mov    %eax,%edx
  401d77:	c1 e2 06             	shl    $0x6,%edx
  401d7a:	01 d0                	add    %edx,%eax
  401d7c:	8d 90 80 3b 40 00    	lea    0x403b80(%eax),%edx
  401d82:	89 c8                	mov    %ecx,%eax
  401d84:	c1 e0 06             	shl    $0x6,%eax
  401d87:	89 c1                	mov    %eax,%ecx
  401d89:	c1 e1 06             	shl    $0x6,%ecx
  401d8c:	01 c8                	add    %ecx,%eax
  401d8e:	83 c0 30             	add    $0x30,%eax
  401d91:	05 80 3b 40 00       	add    $0x403b80,%eax
  401d96:	89 50 08             	mov    %edx,0x8(%eax)
  401d99:	8b 0d 40 31 40 00    	mov    0x403140,%ecx
  401d9f:	a1 38 31 40 00       	mov    0x403138,%eax
  401da4:	c1 e0 06             	shl    $0x6,%eax
  401da7:	89 c2                	mov    %eax,%edx
  401da9:	c1 e2 06             	shl    $0x6,%edx
  401dac:	01 d0                	add    %edx,%eax
  401dae:	8d 90 80 3b 40 00    	lea    0x403b80(%eax),%edx
  401db4:	89 c8                	mov    %ecx,%eax
  401db6:	c1 e0 06             	shl    $0x6,%eax
  401db9:	89 c1                	mov    %eax,%ecx
  401dbb:	c1 e1 06             	shl    $0x6,%ecx
  401dbe:	01 c8                	add    %ecx,%eax
  401dc0:	83 c0 30             	add    $0x30,%eax
  401dc3:	05 80 3b 40 00       	add    $0x403b80,%eax
  401dc8:	89 50 0c             	mov    %edx,0xc(%eax)
  401dcb:	a1 44 31 40 00       	mov    0x403144,%eax
  401dd0:	a3 3c 31 40 00       	mov    %eax,0x40313c
  401dd5:	c7 05 40 31 40 00 00 	movl   $0x0,0x403140
  401ddc:	00 00 00 
  401ddf:	c7 05 44 31 40 00 00 	movl   $0x0,0x403144
  401de6:	00 00 00 
  401de9:	8b 15 80 0a 44 00    	mov    0x440a80,%edx
  401def:	a1 84 0a 44 00       	mov    0x440a84,%eax
  401df4:	01 d0                	add    %edx,%eax
  401df6:	a3 80 0a 44 00       	mov    %eax,0x440a80
  401dfb:	c7 05 84 0a 44 00 00 	movl   $0x0,0x440a84
  401e02:	00 00 00 
  401e05:	c7 45 f4 80 3b 40 00 	movl   $0x403b80,-0xc(%ebp)
  401e0c:	eb 13                	jmp    401e21 <reschedule+0x141>
  401e0e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401e11:	c7 40 30 01 00 00 00 	movl   $0x1,0x30(%eax)
  401e18:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401e1b:	8b 40 38             	mov    0x38(%eax),%eax
  401e1e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401e21:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  401e25:	75 e7                	jne    401e0e <reschedule+0x12e>
  401e27:	8b 45 f0             	mov    -0x10(%ebp),%eax
  401e2a:	c1 e0 06             	shl    $0x6,%eax
  401e2d:	89 c2                	mov    %eax,%edx
  401e2f:	c1 e2 06             	shl    $0x6,%edx
  401e32:	01 d0                	add    %edx,%eax
  401e34:	83 c0 30             	add    $0x30,%eax
  401e37:	05 80 3b 40 00       	add    $0x403b80,%eax
  401e3c:	8b 40 08             	mov    0x8(%eax),%eax
  401e3f:	83 c0 40             	add    $0x40,%eax
  401e42:	05 f8 0f 00 00       	add    $0xff8,%eax
  401e47:	83 ec 0c             	sub    $0xc,%esp
  401e4a:	50                   	push   %eax
  401e4b:	e8 5f e5 ff ff       	call   4003af <set_tss>
  401e50:	83 c4 10             	add    $0x10,%esp
  401e53:	66 b8 23 00          	mov    $0x23,%ax
  401e57:	8e d8                	mov    %eax,%ds
  401e59:	8e c0                	mov    %eax,%es
  401e5b:	8b 45 f0             	mov    -0x10(%ebp),%eax
  401e5e:	c1 e0 06             	shl    $0x6,%eax
  401e61:	89 c2                	mov    %eax,%edx
  401e63:	c1 e2 06             	shl    $0x6,%edx
  401e66:	01 d0                	add    %edx,%eax
  401e68:	83 c0 30             	add    $0x30,%eax
  401e6b:	05 80 3b 40 00       	add    $0x403b80,%eax
  401e70:	8b 40 08             	mov    0x8(%eax),%eax
  401e73:	8b 00                	mov    (%eax),%eax
  401e75:	89 c4                	mov    %eax,%esp
  401e77:	61                   	popa   
  401e78:	83 c4 08             	add    $0x8,%esp
  401e7b:	cf                   	iret   
  401e7c:	c9                   	leave  
  401e7d:	c3                   	ret    

00401e7e <time_treat>:
  401e7e:	55                   	push   %ebp
  401e7f:	89 e5                	mov    %esp,%ebp
  401e81:	83 ec 08             	sub    $0x8,%esp
  401e84:	a1 80 0a 44 00       	mov    0x440a80,%eax
  401e89:	83 f8 01             	cmp    $0x1,%eax
  401e8c:	0f 84 c3 00 00 00    	je     401f55 <time_treat+0xd7>
  401e92:	a1 38 31 40 00       	mov    0x403138,%eax
  401e97:	c1 e0 06             	shl    $0x6,%eax
  401e9a:	89 c2                	mov    %eax,%edx
  401e9c:	c1 e2 06             	shl    $0x6,%edx
  401e9f:	01 d0                	add    %edx,%eax
  401ea1:	83 c0 30             	add    $0x30,%eax
  401ea4:	05 80 3b 40 00       	add    $0x403b80,%eax
  401ea9:	8b 40 08             	mov    0x8(%eax),%eax
  401eac:	8b 50 34             	mov    0x34(%eax),%edx
  401eaf:	83 ea 01             	sub    $0x1,%edx
  401eb2:	89 50 34             	mov    %edx,0x34(%eax)
  401eb5:	a1 38 31 40 00       	mov    0x403138,%eax
  401eba:	c1 e0 06             	shl    $0x6,%eax
  401ebd:	89 c2                	mov    %eax,%edx
  401ebf:	c1 e2 06             	shl    $0x6,%edx
  401ec2:	01 d0                	add    %edx,%eax
  401ec4:	83 c0 30             	add    $0x30,%eax
  401ec7:	05 80 3b 40 00       	add    $0x403b80,%eax
  401ecc:	8b 40 08             	mov    0x8(%eax),%eax
  401ecf:	8b 40 34             	mov    0x34(%eax),%eax
  401ed2:	85 c0                	test   %eax,%eax
  401ed4:	75 7f                	jne    401f55 <time_treat+0xd7>
  401ed6:	a1 38 31 40 00       	mov    0x403138,%eax
  401edb:	c1 e0 06             	shl    $0x6,%eax
  401ede:	89 c2                	mov    %eax,%edx
  401ee0:	c1 e2 06             	shl    $0x6,%edx
  401ee3:	01 d0                	add    %edx,%eax
  401ee5:	83 c0 30             	add    $0x30,%eax
  401ee8:	05 80 3b 40 00       	add    $0x403b80,%eax
  401eed:	8b 40 08             	mov    0x8(%eax),%eax
  401ef0:	8b 50 2c             	mov    0x2c(%eax),%edx
  401ef3:	a1 38 31 40 00       	mov    0x403138,%eax
  401ef8:	c1 e0 06             	shl    $0x6,%eax
  401efb:	89 c1                	mov    %eax,%ecx
  401efd:	c1 e1 06             	shl    $0x6,%ecx
  401f00:	01 c8                	add    %ecx,%eax
  401f02:	83 c0 30             	add    $0x30,%eax
  401f05:	05 80 3b 40 00       	add    $0x403b80,%eax
  401f0a:	8b 40 08             	mov    0x8(%eax),%eax
  401f0d:	83 c0 08             	add    $0x8,%eax
  401f10:	83 ec 0c             	sub    $0xc,%esp
  401f13:	52                   	push   %edx
  401f14:	68 a0 0f 00 00       	push   $0xfa0
  401f19:	50                   	push   %eax
  401f1a:	ff 75 08             	pushl  0x8(%ebp)
  401f1d:	6a 02                	push   $0x2
  401f1f:	e8 a9 f6 ff ff       	call   4015cd <add_PCB>
  401f24:	83 c4 20             	add    $0x20,%esp
  401f27:	a1 38 31 40 00       	mov    0x403138,%eax
  401f2c:	c1 e0 06             	shl    $0x6,%eax
  401f2f:	89 c2                	mov    %eax,%edx
  401f31:	c1 e2 06             	shl    $0x6,%edx
  401f34:	01 d0                	add    %edx,%eax
  401f36:	83 c0 30             	add    $0x30,%eax
  401f39:	05 80 3b 40 00       	add    $0x403b80,%eax
  401f3e:	8b 40 08             	mov    0x8(%eax),%eax
  401f41:	8b 40 04             	mov    0x4(%eax),%eax
  401f44:	83 ec 0c             	sub    $0xc,%esp
  401f47:	50                   	push   %eax
  401f48:	e8 3b fa ff ff       	call   401988 <delete_PCB>
  401f4d:	83 c4 10             	add    $0x10,%esp
  401f50:	e8 8b fd ff ff       	call   401ce0 <reschedule>
  401f55:	c9                   	leave  
  401f56:	c3                   	ret    

00401f57 <process_exit>:
  401f57:	55                   	push   %ebp
  401f58:	89 e5                	mov    %esp,%ebp
  401f5a:	83 ec 08             	sub    $0x8,%esp
  401f5d:	a1 38 31 40 00       	mov    0x403138,%eax
  401f62:	c1 e0 06             	shl    $0x6,%eax
  401f65:	89 c2                	mov    %eax,%edx
  401f67:	c1 e2 06             	shl    $0x6,%edx
  401f6a:	01 d0                	add    %edx,%eax
  401f6c:	83 c0 30             	add    $0x30,%eax
  401f6f:	05 80 3b 40 00       	add    $0x403b80,%eax
  401f74:	8b 40 08             	mov    0x8(%eax),%eax
  401f77:	8b 40 04             	mov    0x4(%eax),%eax
  401f7a:	83 ec 0c             	sub    $0xc,%esp
  401f7d:	50                   	push   %eax
  401f7e:	e8 05 fa ff ff       	call   401988 <delete_PCB>
  401f83:	83 c4 10             	add    $0x10,%esp
  401f86:	e8 55 fd ff ff       	call   401ce0 <reschedule>
  401f8b:	c9                   	leave  
  401f8c:	c3                   	ret    

00401f8d <debug>:
  401f8d:	55                   	push   %ebp
  401f8e:	89 e5                	mov    %esp,%ebp
  401f90:	83 ec 08             	sub    $0x8,%esp
  401f93:	8b 15 84 0a 44 00    	mov    0x440a84,%edx
  401f99:	a1 80 0a 44 00       	mov    0x440a80,%eax
  401f9e:	83 ec 04             	sub    $0x4,%esp
  401fa1:	52                   	push   %edx
  401fa2:	50                   	push   %eax
  401fa3:	68 c1 20 40 00       	push   $0x4020c1
  401fa8:	e8 cc f1 ff ff       	call   401179 <printk>
  401fad:	83 c4 10             	add    $0x10,%esp
  401fb0:	c9                   	leave  
  401fb1:	c3                   	ret    

00401fb2 <getpid>:
  401fb2:	55                   	push   %ebp
  401fb3:	89 e5                	mov    %esp,%ebp
  401fb5:	a1 38 31 40 00       	mov    0x403138,%eax
  401fba:	c1 e0 06             	shl    $0x6,%eax
  401fbd:	89 c2                	mov    %eax,%edx
  401fbf:	c1 e2 06             	shl    $0x6,%edx
  401fc2:	01 d0                	add    %edx,%eax
  401fc4:	83 c0 30             	add    $0x30,%eax
  401fc7:	05 80 3b 40 00       	add    $0x403b80,%eax
  401fcc:	8b 40 08             	mov    0x8(%eax),%eax
  401fcf:	8b 40 04             	mov    0x4(%eax),%eax
  401fd2:	5d                   	pop    %ebp
  401fd3:	c3                   	ret    
