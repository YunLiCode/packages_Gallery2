.class Lcom/android/gallery3d/app/MoviePlayer$5;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;->setOnSystemUiVisibilityChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$5;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$5;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    # getter for: Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$700(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v1

    xor-int v0, v1, p1

    .line 220
    .local v0, "diff":I
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$5;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    # setter for: Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I
    invoke-static {v1, p1}, Lcom/android/gallery3d/app/MoviePlayer;->access$702(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 221
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$5;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    # getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    .line 225
    :cond_0
    return-void
.end method
