.class public Lcom/google/android/apps/lightcycle/math/PitchYaw;
.super Ljava/lang/Object;
.source "PitchYaw.java"


# instance fields
.field public final pitch:F

.field public final yaw:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "pitch"    # F
    .param p2, "yaw"    # F

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/google/android/apps/lightcycle/math/PitchYaw;->pitch:F

    .line 16
    iput p2, p0, Lcom/google/android/apps/lightcycle/math/PitchYaw;->yaw:F

    .line 17
    return-void
.end method
