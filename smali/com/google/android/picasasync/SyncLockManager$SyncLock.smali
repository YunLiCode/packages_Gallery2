.class public Lcom/google/android/picasasync/SyncLockManager$SyncLock;
.super Ljava/lang/Object;
.source "SyncLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/SyncLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncLock"
.end annotation


# instance fields
.field private mKey:Ljava/lang/Object;

.field private mType:I

.field final synthetic this$0:Lcom/google/android/picasasync/SyncLockManager;


# direct methods
.method private constructor <init>(Lcom/google/android/picasasync/SyncLockManager;ILjava/lang/Object;)V
    .locals 0
    .param p2, "type"    # I
    .param p3, "key"    # Ljava/lang/Object;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->this$0:Lcom/google/android/picasasync/SyncLockManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p2, p0, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->mType:I

    .line 50
    iput-object p3, p0, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->mKey:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/picasasync/SyncLockManager;ILjava/lang/Object;Lcom/google/android/picasasync/SyncLockManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/picasasync/SyncLockManager;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Lcom/google/android/picasasync/SyncLockManager$1;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;-><init>(Lcom/google/android/picasasync/SyncLockManager;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 60
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/google/android/picasasync/SyncLockManager$SyncLock;

    if-nez v2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 61
    check-cast v0, Lcom/google/android/picasasync/SyncLockManager$SyncLock;

    .line 62
    .local v0, "lock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    iget v2, v0, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->mType:I

    iget v3, p0, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->mType:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->mKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->mType:I

    iget-object v1, p0, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->mKey:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->this$0:Lcom/google/android/picasasync/SyncLockManager;

    # getter for: Lcom/google/android/picasasync/SyncLockManager;->mLocks:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/google/android/picasasync/SyncLockManager;->access$100(Lcom/google/android/picasasync/SyncLockManager;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->this$0:Lcom/google/android/picasasync/SyncLockManager;

    # getter for: Lcom/google/android/picasasync/SyncLockManager;->mLocks:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/google/android/picasasync/SyncLockManager;->access$100(Lcom/google/android/picasasync/SyncLockManager;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 68
    iget-object v0, p0, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->this$0:Lcom/google/android/picasasync/SyncLockManager;

    # getter for: Lcom/google/android/picasasync/SyncLockManager;->mLocks:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/google/android/picasasync/SyncLockManager;->access$100(Lcom/google/android/picasasync/SyncLockManager;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 69
    monitor-exit v1

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
