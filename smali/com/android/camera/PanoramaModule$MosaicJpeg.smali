.class Lcom/android/camera/PanoramaModule$MosaicJpeg;
.super Ljava/lang/Object;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MosaicJpeg"
.end annotation


# instance fields
.field public final data:[B

.field public final height:I

.field public final isValid:Z

.field final synthetic this$0:Lcom/android/camera/PanoramaModule;

.field public final width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/PanoramaModule;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->data:[B

    .line 193
    iput v1, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->width:I

    .line 194
    iput v1, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->height:I

    .line 195
    iput-boolean v1, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->isValid:Z

    .line 196
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/PanoramaModule;[BII)V
    .locals 1
    .param p2, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->data:[B

    .line 186
    iput p3, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->width:I

    .line 187
    iput p4, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->height:I

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->isValid:Z

    .line 189
    return-void
.end method
