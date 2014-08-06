.class public Lcom/google/android/apps/lightcycle/viewer/ThrowController;
.super Ljava/lang/Object;
.source "ThrowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;
    }
.end annotation


# instance fields
.field private mActiveThrowEvent:Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;

.field private mDragVelocity:Landroid/graphics/PointF;

.field private mLastDragVelocityTime:J

.field private mLastUserInputPosition:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mLastDragVelocityTime:J

    .line 56
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mLastUserInputPosition:Landroid/graphics/PointF;

    .line 57
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mDragVelocity:Landroid/graphics/PointF;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mActiveThrowEvent:Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;

    return-void
.end method

.method private static easeOut(D)D
    .locals 6
    .param p0, "value"    # D

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L

    .line 188
    sub-double v0, v4, p0

    const-wide/high16 v2, 0x4008000000000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v0, v4, v0

    return-wide v0
.end method

.method private declared-synchronized startThrow(Landroid/graphics/PointF;)Z
    .locals 8
    .param p1, "from"    # Landroid/graphics/PointF;

    .prologue
    const/high16 v7, 0x3e000000

    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mDragVelocity:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-double v3, v3

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mDragVelocity:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 172
    .local v0, "speed":D
    const-wide/high16 v3, 0x4059000000000000L

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_0

    .line 173
    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mDragVelocity:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v7

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mDragVelocity:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v7

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 175
    .local v2, "throwVector":Landroid/graphics/PointF;
    new-instance v3, Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;

    invoke-direct {v3, p1, v2}, Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mActiveThrowEvent:Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    const/4 v3, 0x1

    .line 178
    .end local v2    # "throwVector":Landroid/graphics/PointF;
    :goto_0
    monitor-exit p0

    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 168
    .end local v0    # "speed":D
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized getThrowDelta(Landroid/graphics/PointF;)Z
    .locals 11
    .param p1, "newPos"    # Landroid/graphics/PointF;

    .prologue
    const/4 v6, 0x0

    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mActiveThrowEvent:Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .line 152
    :goto_0
    monitor-exit p0

    return v6

    .line 134
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mActiveThrowEvent:Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;

    iget-wide v9, v9, Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;->startTime:J

    sub-long/2addr v7, v9

    long-to-double v0, v7

    .line 135
    .local v0, "dT":D
    const-wide v7, 0x41bdcd6500000000L

    div-double v4, v0, v7

    .line 136
    .local v4, "progress":D
    invoke-static {v4, v5}, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->easeOut(D)D

    move-result-wide v4

    .line 139
    const-wide/high16 v7, 0x3ff0000000000000L

    cmpl-double v7, v4, v7

    if-ltz v7, :cond_1

    .line 140
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mActiveThrowEvent:Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    .end local v0    # "dT":D
    .end local v4    # "progress":D
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 144
    .restart local v0    # "dT":D
    .restart local v4    # "progress":D
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mActiveThrowEvent:Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;

    iget-object v6, v6, Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;->from:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    float-to-double v6, v6

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mActiveThrowEvent:Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;

    iget-object v8, v8, Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;->throwVector:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    float-to-double v8, v8

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    double-to-float v2, v6

    .line 146
    .local v2, "newX":F
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mActiveThrowEvent:Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;

    iget-object v6, v6, Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;->from:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-double v6, v6

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mActiveThrowEvent:Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;

    iget-object v8, v8, Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;->throwVector:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    float-to-double v8, v8

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    double-to-float v3, v6

    .line 149
    .local v3, "newY":F
    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 150
    iput v3, p1, Landroid/graphics/PointF;->y:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public onPointerDown(FFJ)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "time"    # J

    .prologue
    .line 68
    iput-wide p3, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mLastDragVelocityTime:J

    .line 69
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mLastUserInputPosition:Landroid/graphics/PointF;

    .line 70
    return-void
.end method

.method public onPointerMove(FFJ)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "time"    # J

    .prologue
    const/high16 v5, 0x447a0000

    .line 102
    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mLastDragVelocityTime:J

    sub-long v0, p3, v2

    .line 109
    .local v0, "dt":J
    const-wide/16 v2, 0x32

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 119
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mDragVelocity:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mLastUserInputPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, p1, v3

    long-to-float v4, v0

    div-float v4, v5, v4

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 114
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mDragVelocity:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mLastUserInputPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, p2, v3

    long-to-float v4, v0

    div-float v4, v5, v4

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 116
    iput-wide p3, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mLastDragVelocityTime:J

    .line 117
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mLastUserInputPosition:Landroid/graphics/PointF;

    iput p1, v2, Landroid/graphics/PointF;->x:F

    .line 118
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mLastUserInputPosition:Landroid/graphics/PointF;

    iput p2, v2, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public onPointerUp(FFJ)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "time"    # J

    .prologue
    const/4 v4, 0x0

    .line 82
    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mLastDragVelocityTime:J

    sub-long v0, p3, v2

    .line 83
    .local v0, "dt":J
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 84
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v2}, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->startThrow(Landroid/graphics/PointF;)Z

    move-result v2

    .line 91
    :goto_0
    return v2

    .line 88
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mLastDragVelocityTime:J

    .line 89
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mLastUserInputPosition:Landroid/graphics/PointF;

    .line 90
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mDragVelocity:Landroid/graphics/PointF;

    .line 91
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized stopThrow()V
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->mActiveThrowEvent:Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
