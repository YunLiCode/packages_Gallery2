.class Lcom/android/photos/canvas/DisplayedAlbumsActivity$2;
.super Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;
.source "DisplayedAlbumsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/photos/canvas/DisplayedAlbumsActivity;->setContentFragmentImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/canvas/DisplayedAlbumsActivity;

.field final synthetic val$iconImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/photos/canvas/DisplayedAlbumsActivity;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity$2;->this$0:Lcom/android/photos/canvas/DisplayedAlbumsActivity;

    iput-object p2, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity$2;->val$iconImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapRetrieved(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity$2;->val$iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 296
    iget-object v0, p0, Lcom/android/photos/canvas/DisplayedAlbumsActivity$2;->val$iconImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    return-void
.end method
