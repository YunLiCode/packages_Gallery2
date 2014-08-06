.class Lcom/android/gallery3d/app/PhotoPage$7;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->setupNfcBeamPush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$7;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;
    .locals 1
    .param p1, "event"    # Landroid/nfc/NfcEvent;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$7;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$3400(Lcom/android/gallery3d/app/PhotoPage;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
