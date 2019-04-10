
EJ7Tercero:     formato del fichero elf32-i386


Desensamblado de la sección .init:

00001000 <_init>:
    1000:	53                   	push   ebx
    1001:	83 ec 08             	sub    esp,0x8
    1004:	e8 87 00 00 00       	call   1090 <__x86.get_pc_thunk.bx>
    1009:	81 c3 f7 2f 00 00    	add    ebx,0x2ff7
    100f:	8b 83 f4 ff ff ff    	mov    eax,DWORD PTR [ebx-0xc]
    1015:	85 c0                	test   eax,eax
    1017:	74 02                	je     101b <_init+0x1b>
    1019:	ff d0                	call   eax
    101b:	83 c4 08             	add    esp,0x8
    101e:	5b                   	pop    ebx
    101f:	c3                   	ret    

Desensamblado de la sección .plt:

00001020 <.plt>:
    1020:	ff b3 04 00 00 00    	push   DWORD PTR [ebx+0x4]
    1026:	ff a3 08 00 00 00    	jmp    DWORD PTR [ebx+0x8]
    102c:	00 00                	add    BYTE PTR [eax],al
	...

00001030 <__stack_chk_fail@plt>:
    1030:	ff a3 0c 00 00 00    	jmp    DWORD PTR [ebx+0xc]
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <.plt>

00001040 <__libc_start_main@plt>:
    1040:	ff a3 10 00 00 00    	jmp    DWORD PTR [ebx+0x10]
    1046:	68 08 00 00 00       	push   0x8
    104b:	e9 d0 ff ff ff       	jmp    1020 <.plt>

Desensamblado de la sección .text:

00001050 <_start>:
    1050:	31 ed                	xor    ebp,ebp
    1052:	5e                   	pop    esi
    1053:	89 e1                	mov    ecx,esp
    1055:	83 e4 f0             	and    esp,0xfffffff0
    1058:	50                   	push   eax
    1059:	54                   	push   esp
    105a:	52                   	push   edx
    105b:	e8 22 00 00 00       	call   1082 <_start+0x32>
    1060:	81 c3 a0 2f 00 00    	add    ebx,0x2fa0
    1066:	8d 83 40 d2 ff ff    	lea    eax,[ebx-0x2dc0]
    106c:	50                   	push   eax
    106d:	8d 83 e0 d1 ff ff    	lea    eax,[ebx-0x2e20]
    1073:	50                   	push   eax
    1074:	51                   	push   ecx
    1075:	56                   	push   esi
    1076:	ff b3 f8 ff ff ff    	push   DWORD PTR [ebx-0x8]
    107c:	e8 bf ff ff ff       	call   1040 <__libc_start_main@plt>
    1081:	f4                   	hlt    
    1082:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
    1085:	c3                   	ret    
    1086:	66 90                	xchg   ax,ax
    1088:	66 90                	xchg   ax,ax
    108a:	66 90                	xchg   ax,ax
    108c:	66 90                	xchg   ax,ax
    108e:	66 90                	xchg   ax,ax

00001090 <__x86.get_pc_thunk.bx>:
    1090:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
    1093:	c3                   	ret    
    1094:	66 90                	xchg   ax,ax
    1096:	66 90                	xchg   ax,ax
    1098:	66 90                	xchg   ax,ax
    109a:	66 90                	xchg   ax,ax
    109c:	66 90                	xchg   ax,ax
    109e:	66 90                	xchg   ax,ax

000010a0 <deregister_tm_clones>:
    10a0:	e8 e4 00 00 00       	call   1189 <__x86.get_pc_thunk.dx>
    10a5:	81 c2 5b 2f 00 00    	add    edx,0x2f5b
    10ab:	8d 8a 1c 00 00 00    	lea    ecx,[edx+0x1c]
    10b1:	8d 82 1c 00 00 00    	lea    eax,[edx+0x1c]
    10b7:	39 c8                	cmp    eax,ecx
    10b9:	74 1d                	je     10d8 <deregister_tm_clones+0x38>
    10bb:	8b 82 ec ff ff ff    	mov    eax,DWORD PTR [edx-0x14]
    10c1:	85 c0                	test   eax,eax
    10c3:	74 13                	je     10d8 <deregister_tm_clones+0x38>
    10c5:	55                   	push   ebp
    10c6:	89 e5                	mov    ebp,esp
    10c8:	83 ec 14             	sub    esp,0x14
    10cb:	51                   	push   ecx
    10cc:	ff d0                	call   eax
    10ce:	83 c4 10             	add    esp,0x10
    10d1:	c9                   	leave  
    10d2:	c3                   	ret    
    10d3:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
    10d7:	90                   	nop
    10d8:	c3                   	ret    
    10d9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

000010e0 <register_tm_clones>:
    10e0:	e8 a4 00 00 00       	call   1189 <__x86.get_pc_thunk.dx>
    10e5:	81 c2 1b 2f 00 00    	add    edx,0x2f1b
    10eb:	55                   	push   ebp
    10ec:	89 e5                	mov    ebp,esp
    10ee:	53                   	push   ebx
    10ef:	8d 8a 1c 00 00 00    	lea    ecx,[edx+0x1c]
    10f5:	8d 82 1c 00 00 00    	lea    eax,[edx+0x1c]
    10fb:	83 ec 04             	sub    esp,0x4
    10fe:	29 c8                	sub    eax,ecx
    1100:	c1 f8 02             	sar    eax,0x2
    1103:	89 c3                	mov    ebx,eax
    1105:	c1 eb 1f             	shr    ebx,0x1f
    1108:	01 d8                	add    eax,ebx
    110a:	d1 f8                	sar    eax,1
    110c:	74 14                	je     1122 <register_tm_clones+0x42>
    110e:	8b 92 fc ff ff ff    	mov    edx,DWORD PTR [edx-0x4]
    1114:	85 d2                	test   edx,edx
    1116:	74 0a                	je     1122 <register_tm_clones+0x42>
    1118:	83 ec 08             	sub    esp,0x8
    111b:	50                   	push   eax
    111c:	51                   	push   ecx
    111d:	ff d2                	call   edx
    111f:	83 c4 10             	add    esp,0x10
    1122:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
    1125:	c9                   	leave  
    1126:	c3                   	ret    
    1127:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
    112e:	66 90                	xchg   ax,ax

00001130 <__do_global_dtors_aux>:
    1130:	f3 0f 1e fb          	endbr32 
    1134:	55                   	push   ebp
    1135:	89 e5                	mov    ebp,esp
    1137:	53                   	push   ebx
    1138:	e8 53 ff ff ff       	call   1090 <__x86.get_pc_thunk.bx>
    113d:	81 c3 c3 2e 00 00    	add    ebx,0x2ec3
    1143:	83 ec 04             	sub    esp,0x4
    1146:	80 bb 1c 00 00 00 00 	cmp    BYTE PTR [ebx+0x1c],0x0
    114d:	75 28                	jne    1177 <__do_global_dtors_aux+0x47>
    114f:	8b 83 f0 ff ff ff    	mov    eax,DWORD PTR [ebx-0x10]
    1155:	85 c0                	test   eax,eax
    1157:	74 12                	je     116b <__do_global_dtors_aux+0x3b>
    1159:	83 ec 0c             	sub    esp,0xc
    115c:	ff b3 18 00 00 00    	push   DWORD PTR [ebx+0x18]
    1162:	ff 93 f0 ff ff ff    	call   DWORD PTR [ebx-0x10]
    1168:	83 c4 10             	add    esp,0x10
    116b:	e8 30 ff ff ff       	call   10a0 <deregister_tm_clones>
    1170:	c6 83 1c 00 00 00 01 	mov    BYTE PTR [ebx+0x1c],0x1
    1177:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
    117a:	c9                   	leave  
    117b:	c3                   	ret    
    117c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00001180 <frame_dummy>:
    1180:	f3 0f 1e fb          	endbr32 
    1184:	e9 57 ff ff ff       	jmp    10e0 <register_tm_clones>

00001189 <__x86.get_pc_thunk.dx>:
    1189:	8b 14 24             	mov    edx,DWORD PTR [esp]
    118c:	c3                   	ret    

0000118d <main>:
    118d:	55                   	push   ebp
    118e:	89 e5                	mov    ebp,esp
    1190:	83 e4 f0             	and    esp,0xfffffff0
    1193:	83 ec 60             	sub    esp,0x60
    1196:	e8 32 00 00 00       	call   11cd <__x86.get_pc_thunk.ax>
    119b:	05 65 2e 00 00       	add    eax,0x2e65
    11a0:	65 a1 14 00 00 00    	mov    eax,gs:0x14
    11a6:	89 44 24 5c          	mov    DWORD PTR [esp+0x5c],eax
    11aa:	31 c0                	xor    eax,eax
    11ac:	c7 44 24 34 1e 00 00 	mov    DWORD PTR [esp+0x34],0x1e
    11b3:	00 
    11b4:	b8 00 00 00 00       	mov    eax,0x0
    11b9:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]
    11bd:	65 33 15 14 00 00 00 	xor    edx,DWORD PTR gs:0x14
    11c4:	74 05                	je     11cb <main+0x3e>
    11c6:	e8 85 00 00 00       	call   1250 <__stack_chk_fail_local>
    11cb:	c9                   	leave  
    11cc:	c3                   	ret    

000011cd <__x86.get_pc_thunk.ax>:
    11cd:	8b 04 24             	mov    eax,DWORD PTR [esp]
    11d0:	c3                   	ret    
    11d1:	66 90                	xchg   ax,ax
    11d3:	66 90                	xchg   ax,ax
    11d5:	66 90                	xchg   ax,ax
    11d7:	66 90                	xchg   ax,ax
    11d9:	66 90                	xchg   ax,ax
    11db:	66 90                	xchg   ax,ax
    11dd:	66 90                	xchg   ax,ax
    11df:	90                   	nop

000011e0 <__libc_csu_init>:
    11e0:	55                   	push   ebp
    11e1:	57                   	push   edi
    11e2:	56                   	push   esi
    11e3:	53                   	push   ebx
    11e4:	e8 a7 fe ff ff       	call   1090 <__x86.get_pc_thunk.bx>
    11e9:	81 c3 17 2e 00 00    	add    ebx,0x2e17
    11ef:	83 ec 0c             	sub    esp,0xc
    11f2:	8b 6c 24 28          	mov    ebp,DWORD PTR [esp+0x28]
    11f6:	e8 05 fe ff ff       	call   1000 <_init>
    11fb:	8d b3 f8 fe ff ff    	lea    esi,[ebx-0x108]
    1201:	8d 83 f4 fe ff ff    	lea    eax,[ebx-0x10c]
    1207:	29 c6                	sub    esi,eax
    1209:	c1 fe 02             	sar    esi,0x2
    120c:	74 1f                	je     122d <__libc_csu_init+0x4d>
    120e:	31 ff                	xor    edi,edi
    1210:	83 ec 04             	sub    esp,0x4
    1213:	55                   	push   ebp
    1214:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
    1218:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
    121c:	ff 94 bb f4 fe ff ff 	call   DWORD PTR [ebx+edi*4-0x10c]
    1223:	83 c7 01             	add    edi,0x1
    1226:	83 c4 10             	add    esp,0x10
    1229:	39 fe                	cmp    esi,edi
    122b:	75 e3                	jne    1210 <__libc_csu_init+0x30>
    122d:	83 c4 0c             	add    esp,0xc
    1230:	5b                   	pop    ebx
    1231:	5e                   	pop    esi
    1232:	5f                   	pop    edi
    1233:	5d                   	pop    ebp
    1234:	c3                   	ret    
    1235:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
    123c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00001240 <__libc_csu_fini>:
    1240:	c3                   	ret    
    1241:	66 90                	xchg   ax,ax
    1243:	66 90                	xchg   ax,ax
    1245:	66 90                	xchg   ax,ax
    1247:	66 90                	xchg   ax,ax
    1249:	66 90                	xchg   ax,ax
    124b:	66 90                	xchg   ax,ax
    124d:	66 90                	xchg   ax,ax
    124f:	90                   	nop

00001250 <__stack_chk_fail_local>:
    1250:	53                   	push   ebx
    1251:	e8 3a fe ff ff       	call   1090 <__x86.get_pc_thunk.bx>
    1256:	81 c3 aa 2d 00 00    	add    ebx,0x2daa
    125c:	83 ec 08             	sub    esp,0x8
    125f:	e8 cc fd ff ff       	call   1030 <__stack_chk_fail@plt>

Desensamblado de la sección .fini:

00001264 <_fini>:
    1264:	53                   	push   ebx
    1265:	83 ec 08             	sub    esp,0x8
    1268:	e8 23 fe ff ff       	call   1090 <__x86.get_pc_thunk.bx>
    126d:	81 c3 93 2d 00 00    	add    ebx,0x2d93
    1273:	83 c4 08             	add    esp,0x8
    1276:	5b                   	pop    ebx
    1277:	c3                   	ret    
