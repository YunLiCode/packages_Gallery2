.class Lcom/google/android/picasasync/PicasaSyncHelper$3;
.super Ljava/lang/Object;
.source "PicasaSyncHelper.java"

# interfaces
.implements Lcom/google/android/picasasync/PicasaApi$EntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasasync/PicasaSyncHelper;->syncPhotosForUploadLocked(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mKey:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

.field final synthetic this$0:Lcom/google/android/picasasync/PicasaSyncHelper;

.field final synthetic val$context:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic val$entries:Ljava/util/ArrayList;

.field final synthetic val$userId:J


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/PicasaSyncHelper;Ljava/util/ArrayList;JLandroid/database/sqlite/SQLiteDatabase;Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;)V
    .locals 1

    .prologue
    .line 687
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->this$0:Lcom/google/android/picasasync/PicasaSyncHelper;

    iput-object p2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->val$entries:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->val$userId:J

    iput-object p5, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->val$context:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 688
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    invoke-direct {v0}, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->mKey:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    return-void
.end method


# virtual methods
.method public handleEntry(Landroid/content/ContentValues;)V
    .locals 12
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    .line 692
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->mKey:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    const-string v6, "_id"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->updateId(J)Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    move-result-object v2

    .line 694
    .local v2, "key":Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->val$entries:Ljava/util/ArrayList;

    invoke-static {v4, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 695
    .local v1, "index":I
    if-ltz v1, :cond_3

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->val$entries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    move-object v3, v4

    .line 696
    .local v3, "metadata":Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    :goto_0
    const-string v4, "date_updated"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 697
    .local v0, "dateEdited":Ljava/lang/Long;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    iget-wide v6, v3, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->dateEdited:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-gez v4, :cond_1

    .line 700
    :cond_0
    const-string v4, "user_id"

    iget-wide v6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->val$userId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 701
    if-nez v3, :cond_4

    .line 702
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    # getter for: Lcom/google/android/picasasync/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/PicasaSyncHelper;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 707
    :goto_1
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->val$context:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    iget-object v4, v4, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v4, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numUpdates:J

    .line 710
    :cond_1
    if-eqz v3, :cond_2

    iput-boolean v11, v3, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->survived:Z

    .line 711
    :cond_2
    return-void

    .end local v0    # "dateEdited":Ljava/lang/Long;
    .end local v3    # "metadata":Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    :cond_3
    move-object v3, v5

    .line 695
    goto :goto_0

    .line 704
    .restart local v0    # "dateEdited":Ljava/lang/Long;
    .restart local v3    # "metadata":Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    :cond_4
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    # getter for: Lcom/google/android/picasasync/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/PicasaSyncHelper;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_id=?"

    new-array v7, v11, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-wide v9, v3, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method
