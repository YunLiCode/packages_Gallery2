.class public Lcom/android/gallery3d/ingest/data/BitmapWithMetadata;
.super Ljava/lang/Object;
.source "BitmapWithMetadata.java"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public rotationDegrees:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotationDegrees"    # I

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/gallery3d/ingest/data/BitmapWithMetadata;->bitmap:Landroid/graphics/Bitmap;

    .line 27
    iput p2, p0, Lcom/android/gallery3d/ingest/data/BitmapWithMetadata;->rotationDegrees:I

    .line 28
    return-void
.end method
