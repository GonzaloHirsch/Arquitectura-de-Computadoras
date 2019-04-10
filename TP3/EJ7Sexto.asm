
EJ7Sexto:     formato del fichero elf32-i386


Desensamblado de la sección .init:

00001000 <_init>:
    1000:	53                   	push   ebx
    1001:	83 ec 08             	sub    esp,0x8
    1004:	e8 77 00 00 00       	call   1080 <__x86.get_pc_thunk.bx>
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

00001030 <__libc_start_main@plt>:
    1030:	ff a3 0c 00 00 00    	jmp    DWORD PTR [ebx+0xc]
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <.plt>

Desensamblado de la sección .text:

00001040 <_start>:
    1040:	31 ed                	xor    ebp,ebp
    1042:	5e                   	pop    esi
    1043:	89 e1                	mov    ecx,esp
    1045:	83 e4 f0             	and    esp,0xfffffff0
    1048:	50                   	push   eax
    1049:	54                   	push   esp
    104a:	52                   	push   edx
    104b:	e8 22 00 00 00       	call   1072 <_start+0x32>
    1050:	81 c3 b0 2f 00 00    	add    ebx,0x2fb0
    1056:	8d 83 00 d2 ff ff    	lea    eax,[ebx-0x2e00]
    105c:	50                   	push   eax
    105d:	8d 83 a0 d1 ff ff    	lea    eax,[ebx-0x2e60]
    1063:	50                   	push   eax
    1064:	51                   	push   ecx
    1065:	56                   	push   esi
    1066:	ff b3 f8 ff ff ff    	push   DWORD PTR [ebx-0x8]
    106c:	e8 bf ff ff ff       	call   1030 <__libc_start_main@plt>
    1071:	f4                   	hlt    
    1072:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
    1075:	c3                   	ret    
    1076:	66 90                	xchg   ax,ax
    1078:	66 90                	xchg   ax,ax
    107a:	66 90                	xchg   ax,ax
    107c:	66 90                	xchg   ax,ax
    107e:	66 90                	xchg   ax,ax

00001080 <__x86.get_pc_thunk.bx>:
    1080:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
    1083:	c3                   	ret    
    1084:	66 90                	xchg   ax,ax
    1086:	66 90                	xchg   ax,ax
    1088:	66 90                	xchg   ax,ax
    108a:	66 90                	xchg   ax,ax
    108c:	66 90                	xchg   ax,ax
    108e:	66 90                	xchg   ax,ax

00001090 <deregister_tm_clones>:
    1090:	e8 e4 00 00 00       	call   1179 <__x86.get_pc_thunk.dx>
    1095:	81 c2 6b 2f 00 00    	add    edx,0x2f6b
    109b:	8d 8a 18 00 00 00    	lea    ecx,[edx+0x18]
    10a1:	8d 82 18 00 00 00    	lea    eax,[edx+0x18]
    10a7:	39 c8                	cmp    eax,ecx
    10a9:	74 1d                	je     10c8 <deregister_tm_clones+0x38>
    10ab:	8b 82 ec ff ff ff    	mov    eax,DWORD PTR [edx-0x14]
    10b1:	85 c0                	test   eax,eax
    10b3:	74 13                	je     10c8 <deregister_tm_clones+0x38>
    10b5:	55                   	push   ebp
    10b6:	89 e5                	mov    ebp,esp
    10b8:	83 ec 14             	sub    esp,0x14
    10bb:	51                   	push   ecx
    10bc:	ff d0                	call   eax
    10be:	83 c4 10             	add    esp,0x10
    10c1:	c9                   	leave  
    10c2:	c3                   	ret    
    10c3:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
    10c7:	90                   	nop
    10c8:	c3                   	ret    
    10c9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

000010d0 <register_tm_clones>:
    10d0:	e8 a4 00 00 00       	call   1179 <__x86.get_pc_thunk.dx>
    10d5:	81 c2 2b 2f 00 00    	add    edx,0x2f2b
    10db:	55                   	push   ebp
    10dc:	89 e5                	mov    ebp,esp
    10de:	53                   	push   ebx
    10df:	8d 8a 18 00 00 00    	lea    ecx,[edx+0x18]
    10e5:	8d 82 18 00 00 00    	lea    eax,[edx+0x18]
    10eb:	83 ec 04             	sub    esp,0x4
    10ee:	29 c8                	sub    eax,ecx
    10f0:	c1 f8 02             	sar    eax,0x2
    10f3:	89 c3                	mov    ebx,eax
    10f5:	c1 eb 1f             	shr    ebx,0x1f
    10f8:	01 d8                	add    eax,ebx
    10fa:	d1 f8                	sar    eax,1
    10fc:	74 14                	je     1112 <register_tm_clones+0x42>
    10fe:	8b 92 fc ff ff ff    	mov    edx,DWORD PTR [edx-0x4]
    1104:	85 d2                	test   edx,edx
    1106:	74 0a                	je     1112 <register_tm_clones+0x42>
    1108:	83 ec 08             	sub    esp,0x8
    110b:	50                   	push   eax
    110c:	51                   	push   ecx
    110d:	ff d2                	call   edx
    110f:	83 c4 10             	add    esp,0x10
    1112:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
    1115:	c9                   	leave  
    1116:	c3                   	ret    
    1117:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
    111e:	66 90                	xchg   ax,ax

00001120 <__do_global_dtors_aux>:
    1120:	f3 0f 1e fb          	endbr32 
    1124:	55                   	push   ebp
    1125:	89 e5                	mov    ebp,esp
    1127:	53                   	push   ebx
    1128:	e8 53 ff ff ff       	call   1080 <__x86.get_pc_thunk.bx>
    112d:	81 c3 d3 2e 00 00    	add    ebx,0x2ed3
    1133:	83 ec 04             	sub    esp,0x4
    1136:	80 bb 20 00 00 00 00 	cmp    BYTE PTR [ebx+0x20],0x0
    113d:	75 28                	jne    1167 <__do_global_dtors_aux+0x47>
    113f:	8b 83 f0 ff ff ff    	mov    eax,DWORD PTR [ebx-0x10]
    1145:	85 c0                	test   eax,eax
    1147:	74 12                	je     115b <__do_global_dtors_aux+0x3b>
    1149:	83 ec 0c             	sub    esp,0xc
    114c:	ff b3 14 00 00 00    	push   DWORD PTR [ebx+0x14]
    1152:	ff 93 f0 ff ff ff    	call   DWORD PTR [ebx-0x10]
    1158:	83 c4 10             	add    esp,0x10
    115b:	e8 30 ff ff ff       	call   1090 <deregister_tm_clones>
    1160:	c6 83 20 00 00 00 01 	mov    BYTE PTR [ebx+0x20],0x1
    1167:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
    116a:	c9                   	leave  
    116b:	c3                   	ret    
    116c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00001170 <frame_dummy>:
    1170:	f3 0f 1e fb          	endbr32 
    1174:	e9 57 ff ff ff       	jmp    10d0 <register_tm_clones>

00001179 <__x86.get_pc_thunk.dx>:
    1179:	8b 14 24             	mov    edx,DWORD PTR [esp]
    117c:	c3                   	ret    

0000117d <main>:
    117d:	55                   	push   ebp
    117e:	89 e5                	mov    ebp,esp
    1180:	e8 0c 00 00 00       	call   1191 <__x86.get_pc_thunk.ax>
    1185:	05 7b 2e 00 00       	add    eax,0x2e7b
    118a:	b8 00 00 00 00       	mov    eax,0x0
    118f:	5d                   	pop    ebp
    1190:	c3                   	ret    

00001191 <__x86.get_pc_thunk.ax>:
    1191:	8b 04 24             	mov    eax,DWORD PTR [esp]
    1194:	c3                   	ret    
    1195:	66 90                	xchg   ax,ax
    1197:	66 90                	xchg   ax,ax
    1199:	66 90                	xchg   ax,ax
    119b:	66 90                	xchg   ax,ax
    119d:	66 90                	xchg   ax,ax
    119f:	90                   	nop

000011a0 <__libc_csu_init>:
    11a0:	55                   	push   ebp
    11a1:	57                   	push   edi
    11a2:	56                   	push   esi
    11a3:	53                   	push   ebx
    11a4:	e8 d7 fe ff ff       	call   1080 <__x86.get_pc_thunk.bx>
    11a9:	81 c3 57 2e 00 00    	add    ebx,0x2e57
    11af:	83 ec 0c             	sub    esp,0xc
    11b2:	8b 6c 24 28          	mov    ebp,DWORD PTR [esp+0x28]
    11b6:	e8 45 fe ff ff       	call   1000 <_init>
    11bb:	8d b3 f8 fe ff ff    	lea    esi,[ebx-0x108]
    11c1:	8d 83 f4 fe ff ff    	lea    eax,[ebx-0x10c]
    11c7:	29 c6                	sub    esi,eax
    11c9:	c1 fe 02             	sar    esi,0x2
    11cc:	74 1f                	je     11ed <__libc_csu_init+0x4d>
    11ce:	31 ff                	xor    edi,edi
    11d0:	83 ec 04             	sub    esp,0x4
    11d3:	55                   	push   ebp
    11d4:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
    11d8:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
    11dc:	ff 94 bb f4 fe ff ff 	call   DWORD PTR [ebx+edi*4-0x10c]
    11e3:	83 c7 01             	add    edi,0x1
    11e6:	83 c4 10             	add    esp,0x10
    11e9:	39 fe                	cmp    esi,edi
    11eb:	75 e3                	jne    11d0 <__libc_csu_init+0x30>
    11ed:	83 c4 0c             	add    esp,0xc
    11f0:	5b                   	pop    ebx
    11f1:	5e                   	pop    esi
    11f2:	5f                   	pop    edi
    11f3:	5d                   	pop    ebp
    11f4:	c3                   	ret    
    11f5:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
    11fc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00001200 <__libc_csu_fini>:
    1200:	c3                   	ret    

Desensamblado de la sección .fini:

00001204 <_fini>:
    1204:	53                   	push   ebx
    1205:	83 ec 08             	sub    esp,0x8
    1208:	e8 73 fe ff ff       	call   1080 <__x86.get_pc_thunk.bx>
    120d:	81 c3 f3 2d 00 00    	add    ebx,0x2df3
    1213:	83 c4 08             	add    esp,0x8
    1216:	5b                   	pop    ebx
    1217:	c3                   	ret    
