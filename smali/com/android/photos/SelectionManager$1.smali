.class Lcom/android/photos/SelectionManager$1;
.super Ljava/lang/Object;
.source "SelectionManager.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/photos/SelectionManager;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/SelectionManager;


# direct methods
.method constructor <init>(Lcom/android/photos/SelectionManager;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/photos/SelectionManager$1;->this$0:Lcom/android/photos/SelectionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;
    .locals 2
    .param p1, "arg0"    # Landroid/nfc/NfcEvent;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/photos/SelectionManager$1;->this$0:Lcom/android/photos/SelectionManager;

    # getter for: Lcom/android/photos/SelectionManager;->mCachedShareableUris:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/photos/SelectionManager;->access$000(Lcom/android/photos/SelectionManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/photos/SelectionManager$1;->this$0:Lcom/android/photos/SelectionManager;

    # getter for: Lcom/android/photos/SelectionManager;->mCachedShareableUris:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/photos/SelectionManager;->access$000(Lcom/android/photos/SelectionManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/photos/SelectionManager$1;->this$0:Lcom/android/photos/SelectionManager;

    # getter for: Lcom/android/photos/SelectionManager;->mCachedShareableUris:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/photos/SelectionManager;->access$000(Lcom/android/photos/SelectionManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    goto :goto_0
.end method
