#include "common.h"

typedef struct unkOpeningScene_00 {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ char unk_02[6];
    /* 0x08 */ s16 unk_08;
    /* 0x0A */ char unk_0A[2];
    /* 0x0C */ s32 unk_0C;
} unkOpeningScene_00;

typedef struct unkOpeningScene_01 {
    /* 0x00 */ char unk_00[0x0C];
    /* 0x0C */ Vec3f unk_0C;
    /* 0x18 */ Vec3f unk_18;
} unkOpeningScene_01;

void func_800FB670_2A04A0(Vec3s*, Vec3s*, f32);
void func_800FB7F8_2A0628(f32, f32, f32);
void func_800FB810_2A0640(unkObjectStruct*);
void func_800F68D4_29B704(unkObjectStruct*);
extern s16 D_800C5972;
extern s16 D_800C59A6;
extern s8 D_800F64F2;
extern Vec3s D_800FD4A0;
extern Vec3s D_800FD4AC;
extern Process* D_800FD730[];
void func_800FB86C_2A069C(void);
void func_800FBD48_2A0B78(void*, Vec3f*, f32);
extern Vec3f* D_80110448[];
extern unkGlobalStruct_00* D_80110450;
extern unkOpeningScene_01* D_80110460[];
void func_800F6788_29B5B8(unkObjectStruct*);
extern u8 D_800FD780[];
extern Vec3f D_800FD6D0[]; // Need to check type
extern unkGlobalStruct_00 D_800FD6DC; // Need to check type
extern unkGlobalStruct_00 D_800FD6E8; // Need to check type
extern unkGlobalStruct_00 D_800FD702; // Need to check type
