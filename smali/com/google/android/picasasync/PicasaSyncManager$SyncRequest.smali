.class Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;
.super Ljava/lang/Object;
.source "PicasaSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncRequest"
.end annotation


# instance fields
.field public account:Ljava/lang/String;

.field public state:Lcom/google/android/picasasync/SyncState;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V
    .locals 0
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/google/android/picasasync/SyncState;

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;->account:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;->state:Lcom/google/android/picasasync/SyncState;

    .line 94
    return-void
.end method
