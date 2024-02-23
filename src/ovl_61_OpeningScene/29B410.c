#include "common.h"
#include "29B410.h"
#include "process.h"

void func_800F65E0_29B410(void) {
    Vec3s sp18;
    Vec3s sp28;
    unkObjectStruct* temp_s0;

    func_80062450();
    D_800C5972 = 0;
    D_800C59A6 = -1;
    D_800F64F2 = 1;
    InitCameras(1);
    func_80029090(1);
    func_8001DE70(25);
    InitObjSystem(50, 20);
    func_80060088();
    func_8006CEA0();
    func_8005AD18();

    sp18 = D_800FD4A0;
    sp28 = D_800FD4AC;

    func_800FB670_2A04A0(&sp18, &sp28, 1200.0f);
    func_800FB7F8_2A0628(20.0f, 80.0f, 8000.0f);
    temp_s0 = func_8005D384(0x7FDA, 0, 0, -1, func_800FB810_2A0640);
    func_8005D8B8(temp_s0, 0xA0);
    func_800FB810_2A0640(temp_s0);
    func_80023448(3);
    func_800234B8(0, 0x78, 0x78, 0x78);
    func_800234B8(1, 0x40, 0x40, 0x60);
    func_80023504(1, 50.0f, 50.0f, 100.0f);
    func_800234B8(2, 0, 0, 0);
    func_800234B8(3, 0, 0, 0);
    D_800FD730[1] = InitProcess(&func_800FB86C_2A069C, 0x300, 0x2000, 0);
}

void func_800F6788_29B5B8(unkObjectStruct* arg0) {
    s32 pad[2]; //required to match stack alignment

    if (arg0->unk_4C[1] != 0) {
        arg0->unk_4C[1]--;
        return;
    }

    arg0->unk_4C[0]++;

    if (arg0->unk_4C[0] >= 7) {
        arg0->unk_4C[0] = 0;
    }

    arg0->unk_4C[1] = 0x50;

    func_800FBD48_2A0B78(D_80110460[0], D_80110448[arg0->unk_4C[0]] + 1, 40.0f);
}

unkObjectStruct* func_800F6804_29B634(unkGlobalStruct_00* arg0) {
    unkObjectStruct* temp_s0;

    temp_s0 = func_8005D384(0x1000, 0, 0, -1, &func_800F6788_29B5B8);
    func_8005D96C(temp_s0, 0, 0, 0);
    func_8005D97C(temp_s0, arg0->unk_18 + arg0->unk_0C, arg0->unk_1C + arg0->unk_10, arg0->unk_20.floatingPoint + arg0->unk_14);
    func_8005D95C(temp_s0, D_80110450->unk_0C, D_80110450->unk_10, D_80110450->unk_14);
    temp_s0->unk_4C[0] = 2;
    temp_s0->unk_4C[1] = 48;
    temp_s0->unk_50 = arg0;
    return temp_s0;
}

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800F68D4_29B704);

unkObjectStruct* func_800F69F0_29B820(void) {
    unkObjectStruct* temp_s0;
    unkOpeningScene_01** temp_s1;

    temp_s0 = func_8005D384(0x1000, 0, 0, -1, func_800F68D4_29B704);
    temp_s1 = &D_80110460[0];
    func_800A0E80(&temp_s1[0]->unk_18, D_800FD6D0, &temp_s1[0]->unk_0C);
    func_8005D96C(temp_s0, 0.0f, 0.0f, 0.0f);
    func_8005D97C(temp_s0, D_80110460[0]->unk_0C.x, D_80110460[0]->unk_0C.y, D_80110460[0]->unk_0C.z);
    func_8005D95C(temp_s0, D_80110460[0]->unk_18.x, D_80110460[0]->unk_18.y, D_80110460[0]->unk_18.z);

    temp_s0->unk_4C[0] = 6;
    temp_s0->unk_50 = temp_s1[0];

    return temp_s0;
}

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800F6AB8_29B8E8);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800F7E50_29CC80);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800F86D0_29D500);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800F8D3C_29DB6C);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800F916C_29DF9C);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800F983C_29E66C);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800F98F0_29E720);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FA990_29F7C0);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FAEFC_29FD2C);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FB358_2A0188);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FB40C_2A023C);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FB608_2A0438);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FB670_2A04A0);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FB79C_2A05CC);

extern Vec3f D_800FD6D0[];

void func_800FB7F8_2A0628(f32 x, f32 y, f32 z) {
    D_800FD6D0[3].x = x;
    D_800FD6D0[3].y = y;
    D_800FD6D0[3].z = z;
}

void func_800FB810_2A0640(unkObjectStruct* arg) {
    func_8001D494(0, D_800FD6D0[3].x, D_800FD6D0[3].y, D_800FD6D0[3].z);
    func_8001D420(0, &D_800FD6D0[0], &D_800FD6D0[1], &D_800FD6D0[2]);
    func_8001D57C(0);
}

void func_800FB864_2A0694(void) {
}

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FB86C_2A069C);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FB91C_2A074C);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FB97C_2A07AC);

s32 func_800FC394_2A11C4(s32);
void func_8004B1B8(void);

s32 func_800FBAC0_2A08F0(void) {
    func_800178A0(1);
    func_800FC394_2A11C4(0);
    LoadBackgroundData(&D_FE2310);
    func_8004B1B8();
    return 1;
}

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FBAFC_2A092C);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FBB94_2A09C4);

void func_800FBC9C_2A0ACC(void) {
    func_8004A140();
    func_80049F0C();
}

Object* func_800FBCC0_2A0AF0(s32 arg0, void* arg1) {
    Object* temp_v0;

    temp_v0 = CreateObject(arg0, arg1);
    func_80025F60(*temp_v0->unk_3C->unk_40, 0x800);
    func_80025F60(*temp_v0->unk_40->unk_40, 0x400);
    return temp_v0;
}


unkObjectStruct* func_800FBD14_2A0B44(unkObjectStruct* arg0, Vec3f* arg1, f32 arg2) {
    return func_8004E3E0(0, arg1, arg2, arg0);
}

void func_800FBD48_2A0B78(void* arg0, Vec3f* arg1, f32 arg2) {
    func_8004EE14(0, arg1, arg2, arg0);
}

s32 func_8004E184(void);                                  /* extern */

void func_800FBD7C_2A0BAC(void) {
    func_8004E184();
}

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FBD98_2A0BC8);

s32 func_800FBEA8_2A0CD8(unkOpeningScene_00* arg) {
    func_8002456C(arg->unk_00);
    if (arg->unk_0C != 0) {
        func_8002456C(arg->unk_08);
    }
    return 0;
}

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FBEEC_2A0D1C);

void func_800FC0BC_2A0EEC(unkObjectStruct* arg) {
    func_80064D38(arg->unk_00);
    func_80067704(arg->unk_02);
}

void func_800FC0EC_2A0F1C(unkObjectStruct* arg) {
    func_800674BC(arg->unk_00, 0, 0x8000);
}

void func_800FC110_2A0F40(unkObjectStruct* arg) {
    func_80067480(arg->unk_00, 0, 0x8000);
}

void func_800FC134_2A0F64(unkOpeningScene_00* arg) {
    func_800258EC(arg->unk_00, 4, 4);
    if (arg->unk_0C != 0) {
        func_800258EC(arg->unk_08, 4, 4);
    }
}

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FC17C_2A0FAC);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FC1F0_2A1020);

void func_800FC264_2A1094(unkOpeningScene_02* arg0, Vec3f* arg1) {
    func_800257E4(arg0->unk_00, arg1->x, arg1->y, arg1->z);
    func_800A0D00(++arg0, arg1->x, arg1->y, arg1->z);
}

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FC2B8_2A10E8);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FC394_2A11C4);

void func_800FC48C_2A12BC(f32 arg0, f32 arg1, f32 arg2) {
    func_800A0D00(&D_800FD6D0, arg0, arg1, arg2);
}

void func_800FC4C0_2A12F0(f32 arg0, f32 arg1, f32 arg2) {
    func_800A0D00(&D_800FD6DC, arg0, arg1, arg2);
}

void func_800FC4F4_2A1324(f32 arg0, f32 arg1, f32 arg2) {
    func_800A0D00(&D_800FD6E8, arg0, arg1, arg2);
}

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FC528_2A1358);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FC5CC_2A13FC);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FC6BC_2A14EC);

void func_800FC724_2A1554(void) {
    unkGlobalStruct_00* temp_s0;

    temp_s0 = &D_800FD702;
    func_8006EB40(temp_s0->unk_00);
    func_80070D90(temp_s0->unk_00);
}

void func_800FC758_2A1588(void) {
    func_800FC724_2A1554();
    SleepProcess(2);
}


INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FC77C_2A15AC);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FC850_2A1680);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FCAB0_2A18E0);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FCB9C_2A19CC);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FCC3C_2A1A6C);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FCD20_2A1B50);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FCDCC_2A1BFC);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FCE9C_2A1CCC);

void func_800FCECC_2A1CFC(u8 arg0, u8 arg1, u8 arg2, u8 arg3) {
    D_800FD780[2] = arg0;
    D_800FD780[3] = arg1;
    D_800FD780[4] = arg2;
    D_800FD780[5] = arg3;
}

extern f32 D_800FD794;

void func_800FCEE8_2A1D18(f32 arg0) {
    D_800FD794 = arg0;
}
