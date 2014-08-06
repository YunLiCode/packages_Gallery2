.class public Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WidgetDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$1;,
        Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "widgetType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "imageUri"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "photoBlob"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "albumPath"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "appWidgetId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "relativePath"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 97
    return-void
.end method

.method private restoreData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 150
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    .line 151
    .local v0, "entry":Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 152
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "appWidgetId"

    iget v4, v0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->widgetId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v3, "widgetType"

    iget v4, v0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    const-string v3, "imageUri"

    iget-object v4, v0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageUri:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v3, "photoBlob"

    iget-object v4, v0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageData:[B

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 156
    const-string v3, "albumPath"

    iget-object v4, v0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->albumPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v3, "widgets"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 161
    .end local v0    # "entry":Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 159
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 163
    return-void
.end method

.method private saveData(Landroid/database/sqlite/SQLiteDatabase;ILjava/util/ArrayList;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    const/4 v0, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 111
    if-gt p2, v6, :cond_3

    .line 112
    const-string v1, "photos"

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "appWidgetId"

    aput-object v0, v2, v4

    const-string v0, "photoBlob"

    aput-object v0, v2, v5

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 115
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 145
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    new-instance v9, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;-><init>(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$1;)V

    .line 119
    .local v9, "entry":Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    const/4 v0, 0x0

    iput v0, v9, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->type:I

    .line 120
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->widgetId:I

    .line 121
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v9, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageData:[B

    .line 122
    invoke-virtual {p3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 125
    .end local v9    # "entry":Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 127
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    if-ne p2, v0, :cond_0

    .line 128
    const-string v1, "photos"

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "appWidgetId"

    aput-object v0, v2, v4

    const-string v0, "photoBlob"

    aput-object v0, v2, v5

    const-string v0, "imageUri"

    aput-object v0, v2, v6

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 131
    .restart local v8    # "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 133
    :goto_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 134
    new-instance v9, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;-><init>(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$1;)V

    .line 135
    .restart local v9    # "entry":Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    const/4 v0, 0x0

    iput v0, v9, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->type:I

    .line 136
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->widgetId:I

    .line 137
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v9, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageData:[B

    .line 138
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageUri:Ljava/lang/String;

    .line 139
    invoke-virtual {p3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 142
    .end local v9    # "entry":Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    :catchall_1
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public deleteEntry(I)V
    .locals 7
    .param p1, "appWidgetId"    # I

    .prologue
    .line 302
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 303
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "widgets"

    const-string v3, "appWidgetId = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "PhotoDatabaseHelper"

    const-string v3, "Could not delete photo from database"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getEntries(I)Ljava/util/List;
    .locals 12
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 255
    const/4 v8, 0x0

    .line 257
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 258
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "widgets"

    sget-object v2, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->PROJECTION:[Ljava/lang/String;

    const-string v3, "widgetType = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 261
    if-nez v8, :cond_0

    .line 262
    const-string v1, "PhotoDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query fail: null cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v10, v11

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v10

    .line 265
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :try_start_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    new-instance v1, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;-><init>(Landroid/database/Cursor;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$1;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 270
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    :catch_0
    move-exception v9

    .line 271
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "PhotoDatabaseHelper"

    const-string v2, "Could not load widget from database"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v10, v11

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    :cond_1
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method public getEntry(I)Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    .locals 11
    .param p1, "appWidgetId"    # I

    .prologue
    const/4 v10, 0x0

    .line 234
    const/4 v8, 0x0

    .line 236
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 237
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "widgets"

    sget-object v2, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->PROJECTION:[Ljava/lang/String;

    const-string v3, "appWidgetId = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 240
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    :cond_0
    const-string v1, "PhotoDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query fail: empty cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appWidgetId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v1, v10

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v1

    .line 245
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v8, v2}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;-><init>(ILandroid/database/Cursor;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$1;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 246
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v9

    .line 247
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "PhotoDatabaseHelper"

    const-string v2, "Could not load photo from database"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v1, v10

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 101
    const-string v0, "CREATE TABLE widgets (appWidgetId INTEGER PRIMARY KEY, widgetType INTEGER DEFAULT 0, imageUri TEXT, albumPath TEXT, photoBlob BLOB, relativePath TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 167
    const/4 v2, 0x4

    if-ge p2, v2, :cond_0

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->saveData(Landroid/database/sqlite/SQLiteDatabase;ILjava/util/ArrayList;)V

    .line 172
    const-string v2, "PhotoDatabaseHelper"

    const-string v3, "destroying all old data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v2, "DROP TABLE IF EXISTS photos"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    const-string v2, "DROP TABLE IF EXISTS widgets"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 177
    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->restoreData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    .line 180
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    :cond_0
    const/4 v2, 0x5

    if-ge p2, v2, :cond_1

    .line 182
    :try_start_0
    const-string v2, "ALTER TABLE widgets ADD COLUMN relativePath TEXT"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_1
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "PhotoDatabaseHelper"

    const-string v3, "Failed to add the column for relative path."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPhoto(ILandroid/net/Uri;Landroid/graphics/Bitmap;)Z
    .locals 8
    .param p1, "appWidgetId"    # I
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 198
    :try_start_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    mul-int/lit8 v3, v6, 0x4

    .line 199
    .local v3, "size":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 200
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p3, v6, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 201
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 203
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 204
    .local v4, "values":Landroid/content/ContentValues;
    const-string v6, "appWidgetId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    const-string v6, "widgetType"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v6, "imageUri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v6, "photoBlob"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 209
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 210
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "widgets"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    const/4 v5, 0x1

    .line 214
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "size":I
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_0
    return v5

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Throwable;
    const-string v6, "PhotoDatabaseHelper"

    const-string v7, "set widget photo fail"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setWidget(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "albumPath"    # Ljava/lang/String;
    .param p4, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 220
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 221
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "appWidgetId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    const-string v2, "widgetType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    const-string v2, "albumPath"

    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v2, "relativePath"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "widgets"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    const/4 v2, 0x1

    .line 229
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return v2

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "PhotoDatabaseHelper"

    const-string v3, "set widget fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateEntry(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V
    .locals 5
    .param p1, "entry"    # Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    .prologue
    .line 282
    iget v2, p1, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->widgetId:I

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->deleteEntry(I)V

    .line 284
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 285
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "appWidgetId"

    iget v3, p1, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->widgetId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string v2, "widgetType"

    iget v3, p1, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    const-string v2, "albumPath"

    iget-object v3, p1, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->albumPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v2, "imageUri"

    iget-object v3, p1, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v2, "photoBlob"

    iget-object v3, p1, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageData:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 290
    const-string v2, "relativePath"

    iget-object v3, p1, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "widgets"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "PhotoDatabaseHelper"

    const-string v3, "set widget fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
