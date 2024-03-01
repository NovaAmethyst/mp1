#include "common.h"

typedef struct unkOpeningScene_00 {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ char unk_02[2];
    /* 0x04 */ void* unk_04;
} unkOpeningScene_00; // sizeof 0x08

typedef struct unkOpeningScene_01 {
    /* 0x00 */ s32 unk_00;
    /* 0x04 */ void* unk_04;
} unkOpeningScene_01; // sizeof 0x08

typedef struct unkOpeningScene_02 {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ u8 unk_02[4];
} unkOpeningScene_02;

void func_800F65E0_29B410(void);
void func_800F6788_29B5B8(unkObjectStruct*);
unkObjectStruct* func_800F6804_29B634(Object*);
void func_800F68D4_29B704(unkObjectStruct*);
unkObjectStruct* func_800F69F0_29B820(void);
void func_800F8D3C_29DB6C(void);
void func_800FB358_2A0188(void);
void func_800FB608_2A0438(void);
void func_800FB670_2A04A0(Vec3s*, Vec3s*, f32);
void func_800FB79C_2A05CC(Vec3f*, Vec3f*, Vec3f*);
void func_800FB7F8_2A0628(f32, f32, f32);
void func_800FB810_2A0640(unkObjectStruct*);
void func_800FB864_2A0694(void);
void func_800FB86C_2A069C(void);
void func_800FB97C_2A07AC(unkObjectStruct*);
s32 func_800FBAC0_2A08F0(void);
s32 func_800FBAFC_2A092C(void);
void func_800FBB94_2A09C4(void);
void func_800FBC9C_2A0ACC(void);
Object* func_800FBCC0_2A0AF0(s32, void*);
unkObjectStruct* func_800FBD14_2A0B44(Object*, Vec3f*, f32);
void func_800FBD48_2A0B78(void*, Vec3f*, f32);
void func_800FBD7C_2A0BAC(void);
s16 func_800FBD98_2A0BC8(unkOpeningScene_00*, s32, s32, Vec3f*, s32);
s32 func_800FBEA8_2A0CD8(unkOpeningScene_00*);
void func_800FC0BC_2A0EEC(unkObjectStruct*);
void func_800FC0EC_2A0F1C(unkObjectStruct*);
void func_800FC110_2A0F40(unkObjectStruct*);
void func_800FC134_2A0F64(unkOpeningScene_00*);
void func_800FC17C_2A0FAC(unkOpeningScene_00* arg0, Vec3f* arg1);
void func_800FC1F0_2A1020(unkOpeningScene_00* arg0, Vec3f* arg1);
void func_800FC264_2A1094(unkOpeningScene_00* arg0, Vec3f* arg1);
void func_800FC2B8_2A10E8(Vec3f*, Vec3f*, f32, void*);
void func_800FC394_2A11C4(s32);
void func_800FC48C_2A12BC(f32, f32, f32);
void func_800FC4C0_2A12F0(f32, f32, f32);
void func_800FC4F4_2A1324(f32, f32, f32);
s32 func_800FC528_2A1358(s16, s16, s32, s32);
void func_800FC5CC_2A13FC(void*, s32);
void func_800FC6BC_2A14EC(void*, s32);
void func_800FC724_2A1554(void);
void func_800FC758_2A1588(void);
void func_800FCAB0_2A18E0(unkObjectStruct*);
unkObjectStruct* func_800FCB9C_2A19CC(s32);
void func_800FCC3C_2A1A6C(unkObjectStruct*);
unkObjectStruct* func_800FCD20_2A1B50(s32);
void func_800FCDCC_2A1BFC(unkOpeningScene_01**);
s16 func_800FCE9C_2A1CCC(void);
void func_800FCECC_2A1CFC(u8, u8, u8, u8);
void func_800FCEE8_2A1D18(f32);

// extern functions
void guNormalize(Vec3f*, f32*, f32*);
u32 func_800141FC(s16);
s16 func_8002451C(s32, void*, s32);
void func_8004B1B8(void);
s32 func_8004E184(void);
void func_8004E154(void);
void func_8004F548(void);
void func_8004FB14(void);
void func_8006E288(s16, s8);
void func_8006E2B8(s16, u8, u8, u8);
void func_800714F0(s16, u8, u8, u8);

extern u8 D_800C572F;
extern s16 D_800C5972;
extern s16 D_800C59A6;
extern u16 D_800F5460[];
extern s8 D_800F64F2;
extern s32 D_800FD450;
extern Vec3s D_800FD4A0;
extern Vec3s D_800FD4AC;
extern Vec3f D_800FD4D0;
extern Vec3f D_800FD4DC;
extern Vec3f D_800FD520;
extern Vec3f D_800FD550;
extern Vec3f D_800FD55C;
extern Vec3f D_800FD568;
extern Vec3f D_800FD6D0[];
extern unkGlobalStruct_00 D_800FD6DC; // Need to check type
extern unkGlobalStruct_00 D_800FD6E8; // Need to check type
extern s32 D_800FD700;
extern s16 D_800FD702[]; // Need to check type
extern u16 D_800FD708;
extern s16 D_800FD710[];
extern Process* D_800FD730[];
extern s32 D_800FD738;
extern unkOpeningScene_02 D_800FD780;
extern f32 D_800FD794;
extern s32 D_801102B8[];
extern void* D_80110300[];
extern void* D_80110400[];
extern Object* D_80110448[];
extern unkGlobalStruct_00* D_80110450;
extern Object* D_80110460[];
