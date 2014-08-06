.class public abstract Lcom/android/photos/data/SQLiteContentProvider;
.super Landroid/content/ContentProvider;
.source "SQLiteContentProvider.java"


# instance fields
.field private final mApplyingBatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mChangedUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/photos/data/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private applyingBatch()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/photos/data/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/photos/data/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v10, 0x0

    .line 207
    const/4 v7, 0x0

    .line 208
    .local v7, "ypCount":I
    const/4 v4, 0x0

    .line 209
    .local v4, "opCount":I
    const/4 v0, 0x0

    .line 210
    .local v0, "callerIsSyncAdapter":Z
    iget-object v8, p0, Lcom/android/photos/data/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 211
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 213
    :try_start_0
    iget-object v8, p0, Lcom/android/photos/data/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 215
    .local v3, "numOperations":I
    new-array v6, v3, [Landroid/content/ContentProviderResult;

    .line 216
    .local v6, "results":[Landroid/content/ContentProviderResult;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 217
    add-int/lit8 v4, v4, 0x1

    const/16 v8, 0x1f4

    if-lt v4, v8, :cond_0

    .line 218
    new-instance v8, Landroid/content/OperationApplicationException;

    const-string v9, "Too many content provider operations between yield points. The maximum number of operations per yield point is 500"

    invoke-direct {v8, v9, v7}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .end local v2    # "i":I
    .end local v3    # "numOperations":I
    .end local v6    # "results":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/android/photos/data/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 240
    invoke-virtual {p0, v0}, Lcom/android/photos/data/SQLiteContentProvider;->onEndTransaction(Z)Ljava/util/Set;

    throw v8

    .line 223
    .restart local v2    # "i":I
    .restart local v3    # "numOperations":I
    .restart local v6    # "results":[Landroid/content/ContentProviderResult;
    :cond_0
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentProviderOperation;

    .line 224
    .local v5, "operation":Landroid/content/ContentProviderOperation;
    if-nez v0, :cond_1

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/photos/data/SQLiteContentProvider;->isCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 225
    const/4 v0, 0x1

    .line 227
    :cond_1
    if-lez v2, :cond_2

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 228
    const/4 v4, 0x0

    .line 229
    const-wide/16 v8, 0xfa0

    invoke-virtual {v1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 230
    add-int/lit8 v7, v7, 0x1

    .line 233
    :cond_2
    invoke-virtual {v5, p0, v6, v2}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v8

    aput-object v8, v6, v2

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v5    # "operation":Landroid/content/ContentProviderOperation;
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    iget-object v8, p0, Lcom/android/photos/data/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 240
    invoke-virtual {p0, v0}, Lcom/android/photos/data/SQLiteContentProvider;->onEndTransaction(Z)Ljava/util/Set;

    return-object v6
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 139
    array-length v3, p2

    .line 140
    .local v3, "numValues":I
    invoke-virtual {p0, p1}, Lcom/android/photos/data/SQLiteContentProvider;->isCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v0

    .line 141
    .local v0, "callerIsSyncAdapter":Z
    iget-object v5, p0, Lcom/android/photos/data/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 142
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 144
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 146
    :try_start_0
    aget-object v5, p2, v2

    invoke-virtual {p0, p1, v5, v0}, Lcom/android/photos/data/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v4

    .line 147
    .local v4, "result":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v4    # "result":Landroid/net/Uri;
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/photos/data/SQLiteContentProvider;->onEndTransaction(Z)Ljava/util/Set;

    .line 155
    return v3

    .line 151
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 184
    const/4 v2, 0x0

    .line 185
    .local v2, "count":I
    invoke-virtual {p0, p1}, Lcom/android/photos/data/SQLiteContentProvider;->isCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v1

    .line 186
    .local v1, "callerIsSyncAdapter":Z
    invoke-direct {p0}, Lcom/android/photos/data/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 187
    .local v0, "applyingBatch":Z
    if-nez v0, :cond_0

    .line 188
    iget-object v4, p0, Lcom/android/photos/data/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 189
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 191
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/photos/data/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v2

    .line 192
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 197
    invoke-virtual {p0, v1}, Lcom/android/photos/data/SQLiteContentProvider;->onEndTransaction(Z)Ljava/util/Set;

    .line 201
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v2

    .line 194
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 199
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/photos/data/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v2

    goto :goto_0
.end method

.method public abstract deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
.end method

.method public getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/photos/data/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method public abstract getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 117
    const/4 v3, 0x0

    .line 118
    .local v3, "result":Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/android/photos/data/SQLiteContentProvider;->isCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v1

    .line 119
    .local v1, "callerIsSyncAdapter":Z
    invoke-direct {p0}, Lcom/android/photos/data/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 120
    .local v0, "applyingBatch":Z
    if-nez v0, :cond_0

    .line 121
    iget-object v4, p0, Lcom/android/photos/data/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 122
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 124
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/photos/data/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v3

    .line 125
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 130
    invoke-virtual {p0, v1}, Lcom/android/photos/data/SQLiteContentProvider;->onEndTransaction(Z)Ljava/util/Set;

    .line 134
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v3

    .line 127
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 132
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/photos/data/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public abstract insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
.end method

.method public isCallerSyncAdapter(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method protected notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "syncToNetwork"    # Z

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 260
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/photos/data/SQLiteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/photos/data/SQLiteContentProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/photos/data/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 58
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/photos/data/SQLiteContentProvider;->mChangedUris:Ljava/util/Set;

    .line 59
    const/4 v1, 0x1

    return v1
.end method

.method protected onEndTransaction(Z)Ljava/util/Set;
    .locals 7
    .param p1, "callerIsSyncAdapter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v6, p0, Lcom/android/photos/data/SQLiteContentProvider;->mChangedUris:Ljava/util/Set;

    monitor-enter v6

    .line 247
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/photos/data/SQLiteContentProvider;->mChangedUris:Ljava/util/Set;

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 248
    .local v0, "changed":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    iget-object v5, p0, Lcom/android/photos/data/SQLiteContentProvider;->mChangedUris:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 249
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-virtual {p0}, Lcom/android/photos/data/SQLiteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 251
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 252
    .local v4, "uri":Landroid/net/Uri;
    if-nez p1, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/photos/data/SQLiteContentProvider;->syncToNetwork(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 253
    .local v3, "syncToNetwork":Z
    :goto_1
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/photos/data/SQLiteContentProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 249
    .end local v0    # "changed":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "syncToNetwork":Z
    .end local v4    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 252
    .restart local v0    # "changed":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 255
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    return-object v0
.end method

.method protected postNotifyUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/photos/data/SQLiteContentProvider;->mChangedUris:Ljava/util/Set;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/photos/data/SQLiteContentProvider;->mChangedUris:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    monitor-exit v1

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/photos/data/SQLiteContentProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 65
    return-void
.end method

.method protected syncToNetwork(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 160
    const/4 v7, 0x0

    .line 161
    .local v7, "count":I
    invoke-virtual {p0, p1}, Lcom/android/photos/data/SQLiteContentProvider;->isCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v5

    .line 162
    .local v5, "callerIsSyncAdapter":Z
    invoke-direct {p0}, Lcom/android/photos/data/SQLiteContentProvider;->applyingBatch()Z

    move-result v6

    .line 163
    .local v6, "applyingBatch":Z
    if-nez v6, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/photos/data/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 165
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 167
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/photos/data/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v7

    .line 169
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 174
    invoke-virtual {p0, v5}, Lcom/android/photos/data/SQLiteContentProvider;->onEndTransaction(Z)Ljava/util/Set;

    .line 179
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v7

    .line 171
    .restart local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 176
    invoke-virtual/range {v0 .. v5}, Lcom/android/photos/data/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v7

    goto :goto_0
.end method

.method public abstract updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
.end method
