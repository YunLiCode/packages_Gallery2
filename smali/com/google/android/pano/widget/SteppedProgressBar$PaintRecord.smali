.class Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;
.super Ljava/lang/Object;
.source "SteppedProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/SteppedProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaintRecord"
.end annotation


# instance fields
.field public allCapsOn:Z

.field public paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Z)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "allCapsOn"    # Z

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->paint:Landroid/graphics/Paint;

    .line 46
    iput-boolean p2, p0, Lcom/google/android/pano/widget/SteppedProgressBar$PaintRecord;->allCapsOn:Z

    .line 47
    return-void
.end method
