.class final Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;
.super Ljava/lang/Object;
.source "SteppedProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/SteppedProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Defaults"
.end annotation


# instance fields
.field public final ACTIVE_INDICATOR_CENTER_CUT_RADIUS:F

.field public final ACTIVE_INDICATOR_RADIUS:F

.field public final DISTANCE_TEXT_TO_LINE:F

.field public final INACTIVE_INDICATOR_RADIUS:F

.field public final LABEL_WIDTH_MAX:F

.field public final LINE_WIDTH:F

.field public final STEP_SEPARATION:F


# direct methods
.method public constructor <init>(FFFFFFF)V
    .locals 0
    .param p1, "stepSeparation"    # F
    .param p2, "activeIndicatorRadius"    # F
    .param p3, "inactiveIndicatorRadius"    # F
    .param p4, "distanceBtwTextAndLine"    # F
    .param p5, "lineWidth"    # F
    .param p6, "activeIndicatorCenter"    # F
    .param p7, "labelWidth"    # F

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->STEP_SEPARATION:F

    .line 63
    iput p2, p0, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->ACTIVE_INDICATOR_RADIUS:F

    .line 64
    iput p3, p0, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->INACTIVE_INDICATOR_RADIUS:F

    .line 65
    iput p4, p0, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->DISTANCE_TEXT_TO_LINE:F

    .line 66
    iput p5, p0, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->LINE_WIDTH:F

    .line 67
    iput p6, p0, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->ACTIVE_INDICATOR_CENTER_CUT_RADIUS:F

    .line 68
    iput p7, p0, Lcom/google/android/pano/widget/SteppedProgressBar$Defaults;->LABEL_WIDTH_MAX:F

    .line 69
    return-void
.end method
