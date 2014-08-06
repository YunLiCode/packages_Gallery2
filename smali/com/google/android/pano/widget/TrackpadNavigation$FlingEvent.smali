.class public Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;
.super Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;
.source "TrackpadNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/TrackpadNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlingEvent"
.end annotation


# instance fields
.field public final direction:I

.field public final sensitivityX:F

.field public final sensitivityY:F

.field public final velocityX:F

.field public final velocityY:F

.field public final xSwipes:I

.field public final xSwipesLastDirection:I

.field public final ySwipes:I

.field public final ySwipesLastDirection:I


# direct methods
.method public constructor <init>(FFIIFFII)V
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "xSwipes"    # I
    .param p4, "ySwipes"    # I
    .param p5, "sensitivityX"    # F
    .param p6, "sensitivityY"    # F
    .param p7, "xSwipesLastDirection"    # I
    .param p8, "ySwipesLastDirection"    # I

    .prologue
    .line 95
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;-><init>(I)V

    .line 96
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->velocityX:F

    .line 97
    iput p2, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->velocityY:F

    .line 98
    iput p3, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->xSwipes:I

    .line 99
    iput p4, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->ySwipes:I

    .line 100
    iput p7, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->xSwipesLastDirection:I

    .line 101
    iput p8, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->ySwipesLastDirection:I

    .line 102
    iput p5, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->sensitivityX:F

    .line 103
    iput p6, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->sensitivityY:F

    .line 104
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->getDirection()I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->direction:I

    .line 105
    return-void
.end method

.method private getDirection()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v3, 0x82

    const/16 v1, 0x42

    const/16 v2, 0x21

    const/16 v0, 0x11

    .line 108
    iget v4, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->velocityX:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->sensitivityX:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->velocityY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->sensitivityY:F

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_7

    .line 109
    iget v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->xSwipesLastDirection:I

    if-lez v2, :cond_2

    .line 110
    # getter for: Lcom/google/android/pano/widget/TrackpadNavigation;->sInverseX:Z
    invoke-static {}, Lcom/google/android/pano/widget/TrackpadNavigation;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 110
    goto :goto_0

    .line 111
    :cond_2
    iget v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->xSwipesLastDirection:I

    if-gez v2, :cond_4

    .line 112
    # getter for: Lcom/google/android/pano/widget/TrackpadNavigation;->sInverseX:Z
    invoke-static {}, Lcom/google/android/pano/widget/TrackpadNavigation;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    .line 114
    :cond_4
    iget v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->velocityX:F

    cmpl-float v2, v2, v7

    if-ltz v2, :cond_5

    .line 115
    # getter for: Lcom/google/android/pano/widget/TrackpadNavigation;->sInverseX:Z
    invoke-static {}, Lcom/google/android/pano/widget/TrackpadNavigation;->access$000()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 117
    :cond_5
    # getter for: Lcom/google/android/pano/widget/TrackpadNavigation;->sInverseX:Z
    invoke-static {}, Lcom/google/android/pano/widget/TrackpadNavigation;->access$000()Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_6
    move v1, v0

    goto :goto_2

    .line 120
    :cond_7
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->ySwipesLastDirection:I

    if-lez v0, :cond_9

    .line 121
    # getter for: Lcom/google/android/pano/widget/TrackpadNavigation;->sInverseY:Z
    invoke-static {}, Lcom/google/android/pano/widget/TrackpadNavigation;->access$100()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_0

    .line 122
    :cond_9
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->ySwipesLastDirection:I

    if-gez v0, :cond_b

    .line 123
    # getter for: Lcom/google/android/pano/widget/TrackpadNavigation;->sInverseY:Z
    invoke-static {}, Lcom/google/android/pano/widget/TrackpadNavigation;->access$100()Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_3
    move v0, v3

    goto :goto_0

    :cond_a
    move v3, v2

    goto :goto_3

    .line 125
    :cond_b
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->velocityY:F

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_d

    .line 126
    # getter for: Lcom/google/android/pano/widget/TrackpadNavigation;->sInverseY:Z
    invoke-static {}, Lcom/google/android/pano/widget/TrackpadNavigation;->access$100()Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_4
    move v0, v2

    goto :goto_0

    :cond_c
    move v2, v3

    goto :goto_4

    .line 128
    :cond_d
    # getter for: Lcom/google/android/pano/widget/TrackpadNavigation;->sInverseY:Z
    invoke-static {}, Lcom/google/android/pano/widget/TrackpadNavigation;->access$100()Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_5
    move v0, v3

    goto :goto_0

    :cond_e
    move v3, v2

    goto :goto_5
.end method
