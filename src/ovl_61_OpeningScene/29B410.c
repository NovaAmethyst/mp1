#include "common.h"
#include "29B410.h"
#include "process.h"
#include "PR/gu.h"

void func_800F65E0_29B410(void) {
    Vec3f sp18;
    Vec3f sp28;
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

    func_800FBD48_2A0B78(D_80110460[0], &D_80110448[arg0->unk_4C[0]]->coords,
                         40.0f);
}

unkObjectStruct* func_800F6804_29B634(Object* arg0) {
    unkObjectStruct* temp_s0;

    temp_s0 = func_8005D384(0x1000, 0, 0, -1, &func_800F6788_29B5B8);
    func_8005D96C(temp_s0, 0, 0, 0);
    func_8005D97C(temp_s0, arg0->unk_18.x + arg0->coords.x,
                  arg0->unk_18.y + arg0->coords.y,
                  arg0->unk_18.z + arg0->coords.z);
    func_8005D95C(temp_s0, D_80110448[2]->coords.x, D_80110448[2]->coords.y,
                  D_80110448[2]->coords.z);
    temp_s0->unk_4C[0] = 2;
    temp_s0->unk_4C[1] = 48;
    temp_s0->unk_50 = arg0;
    return temp_s0;
}

void func_800F68D4_29B704(unkObjectStruct* arg) {
    f32 temp_f22;
    f32 temp_f24;

    temp_f24 = arg->unk_24;
    temp_f24 = (1.0f < temp_f24) ? temp_f24 - 1.0f : temp_f24;

    temp_f22 = func_800AEAC0(temp_f24 * 360.0f) * 45;
    D_80110448[6]->unk_18.x = func_800AEFD0(temp_f22) * arg->unk_18 +
                              func_800AEAC0(temp_f22) * arg->unk_20;
    D_80110448[6]->unk_18.y = D_80110448[6]->coords.y;
    D_80110448[6]->unk_18.z = -arg->unk_18 * func_800AEAC0(temp_f22) +
                              arg->unk_20 * func_800AEFD0(temp_f22);

    temp_f24 += 0.05f;
    arg->unk_24 = temp_f24;
}

unkObjectStruct* func_800F69F0_29B820(void) {
    unkObjectStruct* temp_s0;
    Object** temp_s1;

    temp_s0 = func_8005D384(0x1000, 0, 0, -1, func_800F68D4_29B704);
    temp_s1 = &D_80110448[6];
    func_800A0E80(&temp_s1[0]->unk_18, D_800FD6D0, &temp_s1[0]->coords);
    func_8005D96C(temp_s0, 0.0f, 0.0f, 0.0f);
    func_8005D97C(temp_s0, D_80110448[6]->coords.x, D_80110448[6]->coords.y,
                  D_80110448[6]->coords.z);
    func_8005D95C(temp_s0, D_80110448[6]->unk_18.x, D_80110448[6]->unk_18.y,
                  D_80110448[6]->unk_18.z);

    temp_s0->unk_4C[0] = 6;
    temp_s0->unk_50 = temp_s1[0];

    return temp_s0;
}

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800F6AB8_29B8E8);

void func_800F7E50_29CC80(void) {
    Vec3f sp20;
    Vec3f sp30;
    Vec3f sp40;
    Vec3f sp50;
    Vec3f sp60;
    Vec3f sp70;
    Mat4 sp80;
    Vec3f spC0;
    Vec3f spD0;
    Vec3f spE0;
    Vec3f spF0;
    Vec3f sp100;
    Vec3f sp110;
    Vec3f sp120;
    Vec3f sp130;
    Vec3f sp140[6];
    Vec3f sp188;
    char pad[104];
    Vec3f sp200;
    Vec3f sp210;
    Vec3f sp220;
    Vec3f sp230;
    Object* temp_s0;
    Vec3f* temp_s2;
    f32 temp_f20;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f4;
    s32 var_s0;
    s32 var_s1;

    spC0 = D_800FD508;
    spD0 = D_800FD514;
    spE0 = D_800FD4D0;
    spF0 = D_800FD520;
    temp_f1 = 175.0f;

    func_800FB79C_2A05CC(&spC0, &spD0, &spE0);
    func_8003E5E0(D_8011045C[0]);
    func_8003E5E0(D_8011045C[-1]);
    func_8003E5E0(D_8011045C[-2]);
    func_800A0D50((Vec3f* ) &D_8011045C[-1]->xScale, &spF0);
    func_800A0D50(&sp20, &spC0);

    sp20.y = 0.0f;
    func_800A0D50(&D_8011045C[1]->coords, &sp20);

    for (var_s1 = 0; var_s1 < 6; ++var_s1) {
        func_800A0D50(&sp20, &spC0);
        sp20.y = 0.0f;
        func_800A0D50(&sp30, &spD0);
        sp30.y = 0.0f;
        func_800A0D00(&sp70, sp30.x - sp20.x, 0.0f, sp30.z - sp20.z);
        guNormalize(&sp70.x, &sp70.y, &sp70.z);
        func_800A0D00(&sp50,
                      temp_f1 * sp70.x,
                      temp_f1 * sp70.y,
                      temp_f1 * sp70.z);
        guRotateF(sp80, (var_s1 * 360.0f) / 6.0f, 0.0f, 1.0f, 0.0f);
        guMtxXFMF(sp80, sp50.x, sp50.y, sp50.z, &sp60.x, &sp60.y, &sp60.z);
        func_800A0D00(&sp40, sp60.x + sp20.x, sp60.y + sp20.y, sp60.z + sp20.z);
        func_800A0D50(&D_80110448[var_s1]->coords, &sp40);
        func_800A0E80(&D_80110448[var_s1]->unk_18,
                      D_800FD6D0,
                      &D_80110448[var_s1]->coords);
    }

    sp200 = D_800FD52C;
    func_800FB7F8_2A0628(30.0f, 200.0f, 10000.0f);
    func_800FC48C_2A12BC(sp200.x, sp200.y, sp200.z);
    temp_s0 = D_80110460[0];
    temp_s0->coords.y = 0.0f;
    func_800FC4C0_2A12F0(temp_s0->coords.x, 100.0f, temp_s0->coords.z);
    func_8003E5E0(D_80110460[0]);
    func_800A0E80(&D_80110460[0]->unk_18, &sp200, &D_80110460[0]->coords);
    sp230 = D_800FD538;

    func_8003E8B8(D_80110460[-4], 4, 0, 8, 2U);
    func_8003E8B8(D_80110460[-2], 3, 0, 8, 2U);
    func_8003E8B8(D_80110460[-6], 3, 0, 8, 2U);
    func_8003E81C(D_80110460[-5], 3, 2U);
    func_8003E8B8(D_80110460[-1], 6, 0, 8, 2U);
    func_8003E8B8(D_80110460[-3], 5, 0, 8, 2U);
    func_8003E8B8(D_80110460[0], 0, 0, 8, 2U);
    *D_800FD740 = func_800FCB9C_2A19CC(0x10);
    SleepProcess(8);

    for (var_s1 = 0; var_s1 < 6; ++var_s1) {
        func_800A0D50(&sp140[var_s1], &D_80110448[var_s1]->coords);
    }

    func_800A0D50(&sp188, &D_80110460[0]->coords);

    for (var_s1 = 0; var_s1 < 0x51; ++var_s1) {
        temp_f20 = var_s1 * 0.0125f;
        for (var_s0 = 0; var_s0 < 6; ++var_s0) {
            func_800A0D50(&sp100, &sp140[var_s0]);
            func_800A0D50(&sp110, &sp188);
            func_800A0D00(&sp120,
                          temp_f20 * (sp110.x - sp100.x) + sp100.x,
                          temp_f20 * (sp110.y - sp100.y) + sp100.y,
                          temp_f20 * (sp110.z - sp100.z) + sp100.z);
            func_800A0D50(&D_80110448[var_s0]->coords, &sp120);
        }
        if (temp_f20 > 0.6f) {
            break;
        }
        SleepProcess(0);
    }

    SleepProcess(0x28);
    func_8005D718(*D_800FD740);
    func_8002456C(D_800FD780.unk_00);
    func_800A0D50(&sp210, D_800FD6D0);
    func_800A0D50(&sp220, &D_800FD6DC);
    func_8003E8B8(D_80110460[0], 1, 0, 8, 2U);

    for (var_s1 = 0; var_s1 < 6; ++var_s1) {
        func_8003E8B8(D_80110448[var_s1], -1, 0, 8, 2U);
    }

    func_800FC5CC_2A13FC((void* )0x43C, 1);

    for (var_s1 = 0; var_s1 < 0x28; ++var_s1) {
        temp_f20 = var_s1 * 0.025f;
        D_80110460[0]->unk_30 = temp_f20 * sp230.y;
        func_800A0D50(&sp110, &D_80110460[0]->coords);

        for (var_s0 = 0; var_s0 < 6; ++var_s0) {
            func_800A0D50(&sp100, &sp140[var_s0]);
            temp_s2 = &sp120;
            temp_f4 = 0.6f - temp_f20 * 0.3f;
            func_800A0D00(temp_s2,
                          temp_f4 * (sp110.x - sp100.x) + sp100.x,
                          sp100.y,
                          temp_f4 * (sp110.z - sp100.z) + sp100.z);
            func_800A0D50(&D_80110448[var_s0]->coords, &sp120);
        }

        func_800A0D50(&sp100, &D_80110460[0]->coords);
        sp100.y += 30.0f;
        func_800A0D50(&sp110, &sp100);
        temp_f2 = sp110.y + D_80110460[0]->unk_30;
        sp110.y = temp_f2;
        func_800A0D00(&D_800FD6DC, sp110.x, temp_f2 + 50.0f, sp110.z);
        func_800FC2B8_2A10E8(&sp210, &sp230, temp_f20, &sp130);
        func_800A0D00(D_800FD6D0, sp130.x, sp130.y, sp130.z);
        SleepProcess(0);
    }

    D_8011033C[0] = func_800F69F0_29B820();
    SleepProcess(0x64);
    func_8005D718(D_8011033C[0]);
    D_8011033C[0] = NULL;

    for (var_s1 = 0; var_s1 < 6; ++var_s1) {
        func_8003E81C(D_80110448[var_s1], -1, 2U);
    }

    func_8003E81C(D_80110460[0], -1, 2U);
}

#ifdef NON_MATCHING // matching but missing nop
void func_800F86D0_29D500(void) {
    Vec3f sp20;
    Vec3f sp30;
    Vec3f sp40;
    Vec3f sp50;
    Vec3f sp60;
    Vec3f sp70;
    Vec3f sp80;
    Mat4 sp90;
    Vec3f spD0;
    Vec3f spE0;
    f32 temp_f0;
    f32 temp_f1;
    s32 i;

    sp80 = D_800FD4DC;
    temp_f1 = 200.0f;
    spD0 = D_800FD544;
    spE0 = D_800FD4E8;
    func_800FC48C_2A12BC(spD0.x, spD0.y, spD0.z);
    func_800FC4C0_2A12F0(spE0.x, spE0.y, spE0.z);
    func_800FC4F4_2A1324(0.0f, 1.0f, 0.0f);
    func_800FB7F8_2A0628(45.0f, 10.0f, 8000.0f);
    func_800A0D50(&D_80110460[0]->coords, &sp80);
    func_800A0D00(&sp40, -D_800FD6D0[0].x, D_800FD6D0[0].y, -D_800FD6D0[0].z);
    func_800A0E80(&D_80110460[0]->unk_18, &sp40, &D_80110460[0]->coords);
    for (i = 0; i < 6; ++i) {
        func_800A0D50(&sp20, &sp80);
        sp20.y = 0.0f;
        func_800A0D50(&sp30, D_800FD6D0);
        sp30.y = 0.0f;
        func_800A0D00(&sp70, sp30.x - sp20.x, 0.0f, sp30.z - sp20.z);
        guNormalize(&sp70.x, &sp70.y, &sp70.z);
        func_800A0D00(&sp50, temp_f1 * sp70.x, temp_f1 * sp70.y, temp_f1 * sp70.z);
        guRotateF(sp90, i * 180.0f / 6.0f + 90.0f + 22.5f, 0.0f, 1.0f, 0.0f);
        guMtxXFMF(sp90, sp50.x, sp50.y, sp50.z, &sp60.x, &sp60.y, &sp60.z);
        func_800A0D00(&sp40, sp60.x + sp20.x, sp60.y + sp20.y, sp60.z + sp20.z);
        func_800A0D50(&D_80110448[i]->coords, &sp40);
        func_800A0E80(&D_80110448[i]->unk_18, &D_80110448[6]->coords, &D_80110448[i]->coords);
    }
    for (i = 0; i < 6; ++i) {
        if (i - 2 >= 2U) {
            func_800A0D50(&sp40, &D_80110448[2]->coords);
            func_800A0E80(&D_80110448[i]->unk_18, &sp40, &D_80110448[i]->coords);
        }
    }
    func_800A0E80(&D_80110448[2]->unk_18, &D_80110448[5]->coords, &D_80110448[2]->coords);
    func_800A0E80(&D_80110448[3]->unk_18, &D_80110448[0]->coords, &D_80110448[3]->coords);
    func_800A0D00(&D_80110448[6]->coords, 0.0f, 0.0f, 300.0f);
    func_8003E8B8(D_80110448[6], 4, 0x14, 0, 0U);
    for (i = 0xF; i < 0x1F; ++i) {
        temp_f0 = 1 - (i / 30.0f) * (i / 30.0f);
        D_80110460[0]->coords.y = 0.0f;
        D_80110460[0]->unk_30 = temp_f0 * 80.0f * 5.0f;
        SleepProcess(0);
    }
    D_80110460[0]->coords.y = -13.333334f;
    func_800FC724_2A1554();
    func_8003E8B8(D_80110460[0], -1, 0x14, 0, 2U);
    for (i = 0; i < 6; ++i) {
        func_800FBD48_2A0B78(D_80110448[i], &D_80110448[6]->coords, 10.0f);
    }
    func_8003E8B8(D_80110448[2], 0, 0, 0xA, 2U);
    func_8003E8B8(D_80110448[4], 0, 0, 0xA, 2U);
    func_8003E8B8(D_80110448[0], 0, 0, 0xA, 2U);
    func_8003E8B8(D_80110448[1], 0, 0, 0xA, 2U);
    func_8003E8B8(D_80110448[3], 5, 0, 0xA, 2U);
    func_8003E8B8(D_80110448[5], 7, 0, 0xA, 2U);
    SleepProcess(1);
    D_80110460[0]->coords.y = 0.0f;
    SleepProcess(1);
    func_8004F00C(D_80110448[6], 4.0f, -1.2f);
    SleepProcess(8);
    func_8003E8B8(D_80110448[2], -1, 0, 0x14, 2U);
    func_8003E8B8(D_80110448[4], -1, 0, 0x14, 2U);
    func_8003E8B8(D_80110448[0], -1, 0, 0x14, 2U);
    func_8003E8B8(D_80110448[1], -1, 0, 0x14, 2U);
    func_8003E8B8(D_80110448[3], -1, 0, 0x14, 2U);
    func_8003E8B8(D_80110448[5], -1, 0, 0x14, 2U);
    SleepProcess(0x28);
    func_800FC6BC_2A14EC((void* )0x43D, 0x78);
}
#else
INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800F86D0_29D500);
#endif

void func_800F8D3C_29DB6C(void) {
    Vec3f sp18;
    Vec3f sp28;
    Vec3f sp38;
    Vec3f sp48;
    Vec3f sp58;
    Vec3f sp68;
    Vec3f sp78;
    f32 temp_f20;
    s32 i;

    sp18 = D_800FD550;
    sp28 = D_800FD55C;
    sp38 = D_800FD4D0;
    sp48 = D_800FD568;

    func_800FC48C_2A12BC(sp18.x, sp18.y, sp18.z);
    func_800FC4C0_2A12F0(sp28.x, sp28.y, sp28.z);
    func_800FC4F4_2A1324(0.0f, 1.0f, 0.0f);
    func_800FB7F8_2A0628(30.0f, 10.0f, 8000.0f);

    for (i = 0; i < 6; ++i) {
        func_8003E664(*(i + D_80110448));
    }

    func_800A0D50(&D_80110448[6]->coords, &sp48);
    func_800A0E80(&D_80110448[6]->unk_18, D_800FD6D0, &D_80110448[6]->coords);
    func_800A0D50(&sp78, &D_80110448[6]->coords);
    func_800A0D00(&sp58, D_80110448[6]->coords.x - D_800FD6D0[0].x, 0.0f,
                  D_80110448[6]->coords.z - D_800FD6D0[0].z);
    func_800A14F0(&sp68, &sp58, &sp38);
    guNormalize(&sp68.x, &sp68.y, &sp68.z);

    func_8003E8B8(D_80110448[6], -1, 0, 8, 2U);
    SleepProcess(8);

    func_800A0D50(&sp58, D_800FD6D0);
    func_800FBD48_2A0B78(D_80110448[6], &sp58, 20.0f);
    SleepProcess(0x1E);

    temp_f20 = 50.0f;
    func_800A0D00(&sp58, sp68.x * temp_f20 + sp78.x, sp68.y * temp_f20 + sp78.y,
                  sp68.z * temp_f20 + sp78.z);
    func_800FBD48_2A0B78(D_80110448[6], &sp58, 20.0f);
    SleepProcess(0x14);

    func_8003E8B8(D_80110448[6], 2, 0, 8, 2U);
    func_800FBD14_2A0B44(D_80110448[6], &sp58, 50.0f);
    SleepProcess(0xA);

    func_800FC5CC_2A13FC((void* )0x43E, 0);
    SleepProcess(0x28);

    temp_f20 = -50.0f;
    func_800A0D00(&sp58, sp68.x * temp_f20 + sp78.x, sp68.y * temp_f20 + sp78.y,
                  sp68.z * temp_f20 + sp78.z);
    func_800FBD48_2A0B78(D_80110448[6], &sp58, 20.0f);
    SleepProcess(0x14);

    func_8003E8B8(D_80110448[6], 2, 0, 8, 2U);
    func_800FBD14_2A0B44(D_80110448[6], &sp58, 100.0f);
    SleepProcess(0x28);

    func_800FC724_2A1554();
    SleepProcess(0x3C);

    func_800FC5CC_2A13FC((void* )0x43F, 0);
    temp_f20 = 0.0f;
    func_800A0D00(&sp58, sp68.x * temp_f20 + sp78.x, sp68.y * temp_f20 + sp78.y,
                  sp68.z * temp_f20 + sp78.z);
    func_800FBD48_2A0B78(D_80110448[6], &sp58, 20.0f);
    SleepProcess(0x14);

    func_8003E8B8(D_80110448[6], 2, 0, 8, 2U);
    func_800FBD14_2A0B44(D_80110448[6], &sp58, 50.0f);
    SleepProcess(0x32);

    func_8003E81C(D_80110448[6], -1, 2U);
}

void func_800F916C_29DF9C(void) {
    unkOpeningScene_04 sp18;
    unkOpeningScene_04 sp30;
    Vec3f sp48;
    s32 sp58[2];
    f32 temp_f20;
    s32 var_s0;
    s32 var_s1;
    s32 var_s2;
    char pad[8];

    func_800A0D00(&D_80110448[2]->coords, 75.0f, 0.0f, 0.0f);
    func_800A0D00(&D_80110448[4]->coords, -375.0f, 0.0f, 0.0f);
    func_800A0D00(&D_80110448[0]->coords, 225.0f, 0.0f, 0.0f);
    func_800A0D00(&D_80110448[1]->coords, 375.0f, 0.0f, 0.0f);
    func_800A0D00(&D_80110448[5]->coords, -225.0f, 0.0f, 0.0f);
    func_800A0D00(&D_80110448[3]->coords, -75.0f, 0.0f, 0.0f);
    func_800A0D00(&D_80110448[6]->coords, 0.0f, 0.0f, -600.0f);
    func_8003E664(D_80110448[6]);
    for (var_s0 = 0; var_s0 < 6; ++var_s0) {
        func_8003E5E0(D_80110448[var_s0]);
    }
    sp18 = D_800FD574;
    sp30 = D_800FD58C;
    sp48 = D_800FD4D0;
    func_800FB79C_2A05CC(&sp18.unk_00, &sp30.unk_00, &sp48);
    D_800FD050 = 1;
    for (var_s0 = 0; var_s0 < 6; ++var_s0) {
        func_800A0D00(&sp58[0], 0.0f, 0.0f, 0.0f);
        func_800A0D00(&D_80110448[var_s0]->unk_18, 0.0f, 0.0f, 1.0f);
    }
    func_8003E81C(D_80110448[4], 4, 2U);
    func_8003E81C(D_80110448[5], 5, 2U);
    func_8003E81C(D_80110448[3], 3, 2U);
    func_8003E81C(D_80110448[1], -1, 2U);
    var_s2 = 0x78;
    for (var_s0 = 0; var_s0 < var_s2; ++var_s0) {
        temp_f20 = var_s0 * 0.0013888889f;
        SleepProcess(0);
        func_800FC2B8_2A10E8(&sp18.unk_00, &sp18.unk_0C, temp_f20, &D_800FD6D0[0]);
        func_800FC2B8_2A10E8(&sp30.unk_00, &sp30.unk_0C, temp_f20, &D_800FD6D0[1]);
        if (var_s0 == 0x64) {
            func_8003E8B8(D_80110448[4], -1, 0, 0x14, 2U);
        }
    }
    var_s1 = var_s2;
    var_s2 = 0xF0;
    var_s0 = var_s1;
    while (var_s0 < var_s2) {
        temp_f20 = var_s0 * 0.0013888889f;
        SleepProcess(0);
        func_800FC2B8_2A10E8(&sp18.unk_00, &sp18.unk_0C, temp_f20, &D_800FD6D0[0]);
        func_800FC2B8_2A10E8(&sp30.unk_00, &sp30.unk_0C, temp_f20, &D_800FD6D0[1]);
        if (var_s0 == var_s2 - 4) {
            func_800FC724_2A1554();
        }
        ++var_s0;
    }
    func_800FC5CC_2A13FC((void* )0x440, 0);
    var_s1 = var_s2;
    var_s2 = 0x168;
    var_s0 = var_s1;
    while (var_s0 < var_s2) {
        temp_f20 = var_s0 * 0.0013888889f;
        SleepProcess(0);
        func_800FC2B8_2A10E8(&sp18.unk_00, &sp18.unk_0C, temp_f20, &D_800FD6D0[0]);
        func_800FC2B8_2A10E8(&sp30.unk_00, &sp30.unk_0C, temp_f20, &D_800FD6D0[1]);
        if (var_s0 == var_s1 + 0x46) {
            func_8003E8B8(D_80110448[2], 5, 0, 8, 2U);
            func_8003E8B8(D_80110448[1], 6, 0, 8, 2U);
        }
        if (var_s0 == var_s2 - 4) {
            func_800FC724_2A1554();
        }
        ++var_s0;
    }
    func_800FC5CC_2A13FC((void* )0x441, 0);
    func_8003E8B8(D_80110448[2], -1, 0, 0x14, 2U);
    func_8003E8B8(D_80110448[1], -1, 0, 0x10, 2U);
    var_s1 = var_s2;
    var_s2 = 0x258;
    var_s0 = var_s1;
    while (var_s0 < var_s2) {
        temp_f20 = var_s0 * 0.0013888889f;
        SleepProcess(0);
        func_800FC2B8_2A10E8(&sp18.unk_00, &sp18.unk_0C, temp_f20, &D_800FD6D0[0]);
        func_800FC2B8_2A10E8(&sp30.unk_00, &sp30.unk_0C, temp_f20, &D_800FD6D0[1]);
        if (var_s0 == var_s1 + 0x28) {
            func_800FC724_2A1554();
            func_8003E8B8(D_80110448[0], 5, 0, 8, 2U);
            func_8003E8B8(D_80110448[1], 6, 0, 0x14, 2U);
        }
        if (var_s0 == var_s1 + 0x6E) {
            func_8003E8B8(D_80110448[0], -1, 0, 0x28, 2U);
            func_8003E8B8(D_80110448[1], -1, 0, 0x10, 2U);
        }
        if (var_s0 == var_s1 + 0xAA) {
            func_8003E8B8(D_80110448[1], 8, 0, 0x14, 2U);
        }
        if (var_s0 == var_s2 - 0x10) {
            func_8003E8B8(D_80110448[1], -1, 0, 0x10, 2U);
        }
        var_s0 += 1;
    }
    SleepProcess(0x19);
    SleepProcess(0xF);
    func_800FC5CC_2A13FC((void* )0x443, 0);
    SleepProcess(0x28);
    func_800FC724_2A1554();
    func_8003E8B8(D_80110448[1], 4, 0, 8, 2U);
    SleepProcess(0x3C);
    D_800FD740[0] = func_800FCD20_2A1B50(0x28);
    SleepProcess(0x28);
    func_8005D718(D_800FD740[0]);
    func_8002456C(D_800FD780.unk_00);
}

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800F983C_29E66C);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800F98F0_29E720);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FA990_29F7C0);

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FAEFC_29FD2C);

void func_800FB358_2A0188(void) {
    u16 temp_v0;
    f32 temp_f20;
    f32 temp_f24;

    temp_v0 = LoadFormFile(0x9001A, 0x299);
    D_800FD708 = temp_v0;
    func_80026040(temp_v0);
    func_80025F10(D_800FD708, 1);

    temp_f20 = 0.0f;
    temp_f24 = temp_f20;

    while (1) {
        SleepProcess(0);
        func_80027C1C(D_800FD708, temp_f24, temp_f20, 0x20, 0x20);
        temp_f20 += 0.5f;
    }
}

INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FB40C_2A023C);

void func_800FB608_2A0438(void) {
    s32 i;

    EndProcess(D_800FD730[0]);
    func_8002456C(D_800FD708);

    for (i = 0; i < 6; ++i) {
        func_8002456C(D_800FD710[i]);
    }
}

#ifdef NON_MATCHING // issue with nops with or without the --vr4300mul-off flag
void func_800FB670_2A04A0(Vec3f* arg0, Vec3f* arg1, f32 arg2) {
    func_800FC48C_2A12BC(func_800AEAC0(arg0->y) * func_800AEFD0(arg0->z) * arg2 + arg1->x,
                         -func_800AEAC0(arg0->x) * arg2 + arg1->y,
                         func_800AEFD0(arg0->y) * func_800AEFD0(arg0->x) * arg2 + arg1->z);
    func_800FC4C0_2A12F0(arg1->x, arg1->y, arg1->z);
    func_800FC4F4_2A1324(func_800AEAC0(arg0->y) * func_800AEAC0(arg0->x),
                         func_800AEFD0(arg0->x),
                         func_800AEFD0(arg0->y) * func_800AEAC0(arg0->x));
}
#else
INCLUDE_ASM(s32, "ovl_61_OpeningScene/29B410", func_800FB670_2A04A0);
#endif

void func_800FB79C_2A05CC(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2) {
    func_800FC48C_2A12BC(arg0->x, arg0->y, arg0->z);
    func_800FC4C0_2A12F0(arg1->x, arg1->y, arg1->z);
    func_800FC4F4_2A1324(arg2->x, arg2->y, arg2->z);
}

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

void func_800FB91C_2A074C(void) {
    if (func_80072718() != 0) {
        return;
    }
    func_80070ED4();
    func_800FBB94_2A09C4();
    func_800FBC9C_2A0ACC();
    func_800FC394_2A11C4(1);
    D_800F5144 = 1;
    func_8005E044(0x67, 1, 0x91);
}

void func_800FB97C_2A07AC(unkObjectStruct* arg) {
    s32 i;
    s32 temp_s1;
    Process* temp_a0;

    temp_s1 = 0;
    if (func_80072718() == 0) {
        if (D_800C572F == 0) {
            arg->unk_24 -= 1.0f;
            for (i = 0; i < 4; ++i) {
                if (func_800141FC(i) == 0) {
                    continue;
                }
                if (D_800F5460[i] & 0x1000) {
                    D_800FD738 = 1;
                    temp_s1 = 1;
                }
                break;
            }
        }
        if (D_800FD738) {
            if (!temp_s1) {
                func_80072724(0xFF, 0xFF, 0xFF);
            } else {
                func_80072724(0, 0, 0);
                func_800601D4(0x50);
                func_800726AC(0, 0x28);
            }
            temp_a0 = D_800FD730[1];
            temp_a0->stat &= 0xFFFE;
            EndProcess(temp_a0);
            arg->func_ptr = &func_800FB91C_2A074C;
        }
    }
}

s32 func_800FBAC0_2A08F0(void) {
    func_800178A0(1);
    func_800FC394_2A11C4(0);
    LoadBackgroundData(&D_FE2310);
    func_8004B1B8();
    return 1;
}

s32 func_800FBAFC_2A092C(void) {
    s32 i;

    func_8003DAA8();
    func_8004FB14();
    func_8004E154();
    func_8004F2AC();
    func_8004F548();

    for (i = 0; i < 16; ++i) {
        D_801102B8[i] = -1;
        D_80110300[i] = NULL;
        D_80110448[i] = NULL;
        D_80110400[i] = NULL;
    }
    return 16;
}

void func_800FBB94_2A09C4(void) {
    s32 i;

    func_800FBD7C_2A0BAC();
    for (i = 0; i < 16; ++i) {
        if (D_801102B8[i] != -1) {
            func_8002456C(D_801102B8[i]);
            D_801102B8[i] = -1;
        }
        if (D_80110300[i] != NULL) {
            func_8005D718(D_80110300[i]);
            D_80110300[i] = NULL;
        }
        if (D_80110448[i] != NULL) {
            DestroyObject(D_80110448[i]);
            D_80110448[i] = NULL;
        }
        if (D_80110400[i] != NULL) {
            func_800427D4(D_80110400[i]);
            D_80110400[i] = NULL;
        }
    }
}

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

unkObjectStruct* func_800FBD14_2A0B44(Object* arg0, Vec3f* arg1, f32 arg2) {
    return func_8004E3E0(0, arg1, arg2, arg0);
}

void func_800FBD48_2A0B78(void* arg0, Vec3f* arg1, f32 arg2) {
    func_8004EE14(0, arg1, arg2, arg0);
}

void func_800FBD7C_2A0BAC(void) {
    func_8004E184();
}

s16 func_800FBD98_2A0BC8(unkOpeningScene_00* arg0, s32 arg1, s32 arg2,
                         Vec3f* arg3, s32 arg4) {
    Vec3f sp10;
    Vec3f sp20;
    u16 temp_s3;

    temp_s3 = arg4;
    sp10 = D_800FD520;
    sp20 = D_800FD4DC;
    arg0->unk_00 = LoadFormFile(arg1, 0x2A9);
    arg0->unk_04 = arg0;

    if (arg4 & 2) {
        func_80025F60(arg0[1].unk_00, 0x800);
        arg0[1].unk_00 = LoadFormFile(0x20, 0x629);
        arg0[1].unk_04 = arg0 + 1;
    } else {
        arg0[1].unk_00 = -1;
        arg0[1].unk_04 = NULL;
    }

    func_800FC17C_2A0FAC(arg0, arg3);
    func_800FC1F0_2A1020(arg0, &sp10);
    func_800FC264_2A1094(arg0, &sp20);

    if (temp_s3 & 1) {
        func_80025B34(arg0->unk_00);
    }

    return arg0->unk_00;
}

s32 func_800FBEA8_2A0CD8(unkOpeningScene_00* arg) {
    func_8002456C(arg->unk_00);
    if (arg[1].unk_04 != 0) {
        func_8002456C(arg[1].unk_00);
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
    if (arg[1].unk_04 != 0) {
        func_800258EC(arg[1].unk_00, 4, 4);
    }
}

void func_800FC17C_2A0FAC(unkOpeningScene_00* arg0, Vec3f* arg1) {
    func_80025798(arg0->unk_00, arg1->x, arg1->y, arg1->z);
    func_800A0D00(arg0 + 2, arg1->x, arg1->y, arg1->z);

    if (arg0[1].unk_00 != -1) {
        func_80025798(arg0[1].unk_00, arg1->x, arg1->y, arg1->z);
    }
}

void func_800FC1F0_2A1020(unkOpeningScene_00* arg0, Vec3f* arg1) {
    func_80025830(arg0->unk_00, arg1->x, arg1->y, arg1->z);
    func_800A0D00(arg0 + 5, arg1->x, arg1->y, arg1->z);

    if (arg0[1].unk_00 != -1) {
        func_80025830(arg0[1].unk_00, arg1->x, arg1->y, arg1->z);
    }
}

void func_800FC264_2A1094(unkOpeningScene_00* arg0, Vec3f* arg1) {
    func_800257E4(arg0->unk_00, arg1->x, arg1->y, arg1->z);
    func_800A0D00(&arg0[3].unk_04, arg1->x, arg1->y, arg1->z);
}

void func_800FC2B8_2A10E8(Vec3f* arg0, Vec3f* arg1, f32 arg2, void* arg3) {
    Vec3f sp10;

    if (1.0f < arg2) {
        arg2 = 1.0f;
    }

    func_800A0D00(&sp10, arg1->x - arg0->x, arg1->y - arg0->y,
                  arg1->z - arg0->z);
    func_800A0D00(arg3, sp10.x * arg2 + arg0->x, sp10.y * arg2 + arg0->y,
                  sp10.z * arg2 + arg0->z);
}

void func_800FC394_2A11C4(s32 arg) {
    switch (arg) {
    case 0:
        func_80017660(0, 0.0f, 50.0f, 320.0f, 170.0f);
        func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 432.0f, 511.0f);
        break;
    case 1:
        func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
        func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
        break;
    default:
        func_80017660(0, 0.0f, 24.0f, 320.0f, 196.0f);
        func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 432.0f, 511.0f);
        break;
    }
}

void func_800FC48C_2A12BC(f32 arg0, f32 arg1, f32 arg2) {
    func_800A0D00(&D_800FD6D0, arg0, arg1, arg2);
}

void func_800FC4C0_2A12F0(f32 arg0, f32 arg1, f32 arg2) {
    func_800A0D00(&D_800FD6DC, arg0, arg1, arg2);
}

void func_800FC4F4_2A1324(f32 arg0, f32 arg1, f32 arg2) {
    func_800A0D00(&D_800FD6E8, arg0, arg1, arg2);
}

s32 func_800FC528_2A1358(s16 arg0, s16 arg1, s32 arg2, s32 arg3) {
    s32 temp_s0;

    temp_s0 = func_8006D010(arg0, arg1, 11 * arg2 + 8, 14 * arg3 + 6, 0, 0);
    func_8006E070(temp_s0, 0);
    func_8006E154(temp_s0, 0xC8);
    func_800717C0(temp_s0);
    return temp_s0;
}

void func_800FC5CC_2A13FC(void* arg0, s32 arg1) {
    D_800FD700 = func_800FC528_2A1358(0x18, 0xB4, 0x18, 0x2);
    func_8006E2B8(D_800FD702[0], 0, 0, 0);
    func_800714F0(D_800FD702[0], 0xFF, 0xFF, 0xFF);
    func_8006E154(D_800FD702[0], 0);
    func_8006E288(D_800FD702[0], 7);
    LoadStringIntoWindow(D_800FD702[0], arg0, -1, -1);

    if (arg1 == -1) {
        while (func_8006FCC0(D_800FD702[0]) != 0) {
            SleepVProcess();
        }
    } else if (arg1 > 0) {
        SleepProcess(arg1);
    }
}

void func_800FC6BC_2A14EC(void* arg0, s32 arg1) {
    func_800FC5CC_2A13FC(arg0, 0);
    if (arg1 == 0) {
        while (func_8006FCC0(D_800FD702[0]) != 0) {
            SleepVProcess();
        }
    } else {
        SleepProcess(arg1);
    }
    func_800FC758_2A1588();
}

void func_800FC724_2A1554(void) {
    func_8006EB40(D_800FD702[0]);
    func_80070D90(D_800FD702[0]);
}

void func_800FC758_2A1588(void) {
    func_800FC724_2A1554();
    SleepProcess(2);
}

void func_800FC77C_2A15AC(Vec3f* arg0, f32* arg1, f32 arg2, Vec3f* arg3) {
    Mat4 sp10;
    s32 i;

    for (i = 0; i < 4; ++i) {
        sp10[0][i] = arg0[i].x;
        sp10[1][i] = arg0[i].y;
        sp10[2][i] = arg0[i].z;
        sp10[3][i] = arg1[i];
    }
    arg3->x = func_80022D9C(sp10[0], sp10[3], arg2);
    arg3->y = func_80022D9C(sp10[1], sp10[3], arg2);
    arg3->z = func_80022D9C(sp10[2], sp10[3], arg2);
}

void func_800FC850_2A1680(s16 arg0, f32 arg1, f32 arg2, Vec3f* arg3) {
    Vec3f sp10[4];
    f32 sp40[4];
    f32 temp_f20;
    s32 temp_a0;
    unk2C0C0StructA0* temp_a2;
    s32 temp_v1_2;
    s32 var_s1;
    unk2C0C0StructC0* temp_v1;

    temp_v1 = D_800F2B7C[arg0].unk_6C;
    temp_a2 = &temp_v1->unk_78[1];
    temp_a0 = temp_v1->unk_6E;
    temp_v1_2 = temp_a0 - 3;
    temp_f20 = arg1 / (f32) temp_v1_2;
    var_s1 = (s32) (arg2 / temp_f20);
    if ((var_s1 + 1) >= temp_v1_2) {
        var_s1 = temp_a0 - 4;
    } else if (var_s1 < 0) {
        var_s1 = -1;
    }

    func_800A0D00(&sp10[0],
                  (f32) temp_a2[var_s1 - 1].unk_00,
                  (f32) temp_a2[var_s1 - 1].unk_02,
                  (f32) temp_a2[var_s1 - 1].unk_04);
    sp40[0] = temp_f20 * (f32) (var_s1 - 1);
    func_800A0D00(&sp10[1],
                  (f32) temp_a2[var_s1].unk_00,
                  (f32) temp_a2[var_s1].unk_02,
                  (f32) temp_a2[var_s1].unk_04);
    sp40[1] = temp_f20 * (f32) var_s1;
    func_800A0D00(&sp10[2],
                  (f32) temp_a2[var_s1 + 1].unk_00,
                  (f32) temp_a2[var_s1 + 1].unk_02,
                  (f32) temp_a2[var_s1 + 1].unk_04);
    sp40[2] = temp_f20 * (f32) (var_s1 + 1);
    func_800A0D00(&sp10[3],
                  (f32) temp_a2[var_s1 + 2].unk_00,
                  (f32) temp_a2[var_s1 + 2].unk_02,
                  (f32) temp_a2[var_s1 + 2].unk_04);
    sp40[3] = temp_f20 * (f32) (var_s1 + 2);
    func_800FC77C_2A15AC(&sp10[0], &sp40[0], arg2, arg3);
}

void func_800FCAB0_2A18E0(unkObjectStruct* arg) {
    f32 temp_f2;
    f32 temp_f20;
    f32 temp_f22;

    temp_f20 = arg->unk_24;
    temp_f22 = arg->unk_28;
    temp_f2 = temp_f20 / temp_f22;
    if (temp_f2 < 0.0f) {
        temp_f2 = 0.0f;
    }
    temp_f2 *= 255;
    func_800FCECC_2A1CFC(0, 0, 0, temp_f2);

    temp_f20 -= 1;
    if (temp_f20 < 0.0f) {
        temp_f20 = 0.0f;
    }
    arg->unk_24 = temp_f20;
}

unkObjectStruct* func_800FCB9C_2A19CC(s32 arg0) {
    f32 temp_f0;
    s16 temp_s2;
    unkObjectStruct* temp_v0;

    temp_s2 = func_800FCE9C_2A1CCC();
    func_800FCECC_2A1CFC(0U, 0U, 0U, 0xFFU);
    temp_v0 = func_8005D384(0x1000, 0U, 0U, -1, func_800FCAB0_2A18E0);
    temp_f0 = (f32) arg0;
    func_8005D96C(temp_v0, temp_f0, temp_f0, 0.0f);
    D_800FD780.unk_00 = temp_s2;
    return temp_v0;
}

void func_800FCC3C_2A1A6C(unkObjectStruct* arg) {
    f32 temp_f2;
    f32 temp_f20;
    f32 temp_f22;

    temp_f20 = arg->unk_24;
    temp_f22 = arg->unk_28;
    temp_f2 = temp_f20 / temp_f22;
    if (temp_f22 < temp_f2) {
        temp_f2 = temp_f22;
    }

    temp_f2 *= 255.0f;
    func_800FCECC_2A1CFC(0, 0, 0, temp_f2);

    temp_f20 += 1.0f;
    if (temp_f22 < temp_f20) {
        temp_f20 = temp_f22;
    }
    arg->unk_24 = temp_f20;
}

unkObjectStruct* func_800FCD20_2A1B50(s32 arg0) {
    s16 temp_s2;
    unkObjectStruct* temp_v0;

    temp_s2 = func_800FCE9C_2A1CCC();
    func_800FCECC_2A1CFC(0U, 0U, 0U, 0xFFU);
    func_800FCEE8_2A1D18(0.0f);
    temp_v0 = func_8005D384(0x1000, 0U, 0U, -1, func_800FCC3C_2A1A6C);
    func_8005D96C(temp_v0, 0.0f, (f32) arg0, 0.0f);
    D_800FD780.unk_00 = temp_s2;
    return temp_v0;
}

void func_800FCDCC_2A1BFC(unkOpeningScene_01** arg0) {
    unkOpeningScene_01* temp_v1;

    temp_v1 = arg0[0]++;
    temp_v1->unk_00 = 0xDE000000;
    temp_v1->unk_04 = &D_800FD450;

    temp_v1 = arg0[0]++;
    temp_v1->unk_00 = 0xE200001C;
    temp_v1->unk_04 = (void* )0x5041C8;

    temp_v1 = arg0[0]++;
    temp_v1->unk_00 = 0xFCFFFFFF;
    temp_v1->unk_04 = (void* )0xFFFDF6FB;

    temp_v1 = arg0[0]++;
    temp_v1->unk_00 = 0xFA000000;
    temp_v1->unk_04 = (void* ) ((D_800FD780.unk_02[0] << 0x18) |
                                (D_800FD780.unk_02[1] << 0x10) |
                                (D_800FD780.unk_02[2] << 8) |
                                D_800FD780.unk_02[3]);

    temp_v1 = arg0[0]++;
    temp_v1->unk_00 = 0xF65003C0;
    temp_v1->unk_04 = NULL;
}

s16 func_800FCE9C_2A1CCC(void) {
    return func_8002451C(0, &func_800FCDCC_2A1BFC, 2);
}

void func_800FCECC_2A1CFC(u8 arg0, u8 arg1, u8 arg2, u8 arg3) {
    D_800FD780.unk_02[0] = arg0;
    D_800FD780.unk_02[1] = arg1;
    D_800FD780.unk_02[2] = arg2;
    D_800FD780.unk_02[3] = arg3;
}

void func_800FCEE8_2A1D18(f32 arg0) {
    D_800FD794 = arg0;
}
