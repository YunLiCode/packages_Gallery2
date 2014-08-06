.class public Lcom/google/android/picasastore/FIFEUtil;
.super Ljava/lang/Object;
.source "FIFEUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasastore/FIFEUtil$1;,
        Lcom/google/android/picasastore/FIFEUtil$Splitter;,
        Lcom/google/android/picasastore/FIFEUtil$Joiner;
    }
.end annotation


# static fields
.field private static final FIFE_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern;

.field private static final JOIN_ON_SLASH:Lcom/google/android/picasastore/FIFEUtil$Joiner;

.field private static final SPLIT_ON_EQUALS:Lcom/google/android/picasastore/FIFEUtil$Splitter;

.field private static final SPLIT_ON_SLASH:Lcom/google/android/picasastore/FIFEUtil$Splitter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "="

    invoke-static {v0}, Lcom/google/android/picasastore/FIFEUtil$Splitter;->on(Ljava/lang/String;)Lcom/google/android/picasastore/FIFEUtil$Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasastore/FIFEUtil$Splitter;->omitEmptyStrings()Lcom/google/android/picasastore/FIFEUtil$Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasastore/FIFEUtil;->SPLIT_ON_EQUALS:Lcom/google/android/picasastore/FIFEUtil$Splitter;

    .line 23
    const-string v0, "/"

    invoke-static {v0}, Lcom/google/android/picasastore/FIFEUtil$Splitter;->on(Ljava/lang/String;)Lcom/google/android/picasastore/FIFEUtil$Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasastore/FIFEUtil$Splitter;->omitEmptyStrings()Lcom/google/android/picasastore/FIFEUtil$Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasastore/FIFEUtil;->SPLIT_ON_SLASH:Lcom/google/android/picasastore/FIFEUtil$Splitter;

    .line 25
    const-string v0, "/"

    invoke-static {v0}, Lcom/google/android/picasastore/FIFEUtil$Joiner;->on(Ljava/lang/String;)Lcom/google/android/picasastore/FIFEUtil$Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasastore/FIFEUtil;->JOIN_ON_SLASH:Lcom/google/android/picasastore/FIFEUtil$Joiner;

    .line 27
    const-string v0, "^((http(s)?):)?\\/\\/((((lh[3-6]\\.((ggpht)|(googleusercontent)|(google)))|([1-4]\\.bp\\.blogspot)|(bp[0-3]\\.blogger))\\.com)|(www\\.google\\.com\\/visualsearch\\/lh))\\/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasastore/FIFEUtil;->FIFE_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 297
    return-void
.end method

.method private static getContentImageUriOptions(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    .line 291
    sget-object v1, Lcom/google/android/picasastore/FIFEUtil;->SPLIT_ON_EQUALS:Lcom/google/android/picasastore/FIFEUtil$Splitter;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/picasastore/FIFEUtil$Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasastore/FIFEUtil;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 292
    .local v0, "splitPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getImageUriOptions(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    .line 144
    sget-object v3, Lcom/google/android/picasastore/FIFEUtil;->SPLIT_ON_SLASH:Lcom/google/android/picasastore/FIFEUtil$Splitter;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/picasastore/FIFEUtil$Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasastore/FIFEUtil;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 148
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 149
    .local v1, "numParts":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    add-int/lit8 v1, v1, -0x1

    .line 154
    :cond_0
    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    const/4 v3, 0x6

    if-gt v1, v3, :cond_1

    .line 156
    invoke-static {p0}, Lcom/google/android/picasastore/FIFEUtil;->getLegacyImageUriOptions(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "options":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 157
    .end local v2    # "options":Ljava/lang/String;
    :cond_1
    if-ne v1, v5, :cond_2

    .line 158
    invoke-static {p0}, Lcom/google/android/picasastore/FIFEUtil;->getContentImageUriOptions(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "options":Ljava/lang/String;
    goto :goto_0

    .line 161
    .end local v2    # "options":Ljava/lang/String;
    :cond_2
    const-string v2, ""

    .restart local v2    # "options":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getImageUrlOptions(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/picasastore/FIFEUtil;->getImageUriOptions(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLegacyImageUriOptions(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x4

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 259
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "path":Ljava/lang/String;
    sget-object v6, Lcom/google/android/picasastore/FIFEUtil;->SPLIT_ON_SLASH:Lcom/google/android/picasastore/FIFEUtil$Splitter;

    invoke-virtual {v6, v5}, Lcom/google/android/picasastore/FIFEUtil$Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/picasastore/FIFEUtil;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 262
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, "image"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 263
    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 266
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 267
    .local v4, "numParts":I
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 268
    .local v3, "isPathSlashTerminated":Z
    if-nez v3, :cond_1

    const/4 v6, 0x5

    if-ne v4, v6, :cond_1

    move v1, v2

    .line 270
    .local v1, "containsFilenameNoOptions":Z
    :goto_0
    if-ne v4, v9, :cond_2

    .line 273
    .local v2, "isBaseUrlFormat":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 274
    const-string v6, ""

    .line 281
    :goto_2
    return-object v6

    .end local v1    # "containsFilenameNoOptions":Z
    .end local v2    # "isBaseUrlFormat":Z
    :cond_1
    move v1, v7

    .line 268
    goto :goto_0

    .restart local v1    # "containsFilenameNoOptions":Z
    :cond_2
    move v2, v7

    .line 270
    goto :goto_1

    .line 277
    .restart local v2    # "isBaseUrlFormat":Z
    :cond_3
    if-nez v2, :cond_4

    .line 278
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_2

    .line 281
    :cond_4
    const-string v6, ""

    goto :goto_2
.end method

.method public static isFifeHostedUrl(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 173
    if-nez p0, :cond_0

    .line 174
    const/4 v1, 0x0

    .line 178
    :goto_0
    return v1

    .line 177
    :cond_0
    sget-object v1, Lcom/google/android/picasastore/FIFEUtil;->FIFE_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 178
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    goto :goto_0
.end method

.method private static newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v3, p0, Ljava/util/Collection;

    if-eqz v3, :cond_1

    move-object v0, p0

    .line 316
    check-cast v0, Ljava/util/Collection;

    .line 317
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 324
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :cond_0
    return-object v2

    .line 319
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 320
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static setContentImageUrlOptions(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p0, "options"    # Ljava/lang/String;
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 246
    sget-object v2, Lcom/google/android/picasastore/FIFEUtil;->SPLIT_ON_EQUALS:Lcom/google/android/picasastore/FIFEUtil$Splitter;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/picasastore/FIFEUtil$Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/picasastore/FIFEUtil;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 247
    .local v1, "splitPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public static setImageUriOptions(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p0, "options"    # Ljava/lang/String;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    .line 105
    sget-object v3, Lcom/google/android/picasastore/FIFEUtil;->SPLIT_ON_SLASH:Lcom/google/android/picasastore/FIFEUtil$Splitter;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/picasastore/FIFEUtil$Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasastore/FIFEUtil;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 109
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 110
    .local v2, "numParts":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    add-int/lit8 v2, v2, -0x1

    .line 115
    :cond_0
    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    const/4 v3, 0x6

    if-gt v2, v3, :cond_1

    .line 117
    invoke-static {p0, p1}, Lcom/google/android/picasastore/FIFEUtil;->setLegacyImageUrlOptions(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 124
    .local v1, "modifiedUri":Landroid/net/Uri;
    :goto_0
    return-object v1

    .line 118
    .end local v1    # "modifiedUri":Landroid/net/Uri;
    :cond_1
    if-ne v2, v5, :cond_2

    .line 119
    invoke-static {p0, p1}, Lcom/google/android/picasastore/FIFEUtil;->setContentImageUrlOptions(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "modifiedUri":Landroid/net/Uri;
    goto :goto_0

    .line 122
    .end local v1    # "modifiedUri":Landroid/net/Uri;
    :cond_2
    move-object v1, p1

    .restart local v1    # "modifiedUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public static setImageUrlOptions(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "options"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/picasastore/FIFEUtil;->setImageUriOptions(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static setLegacyImageUrlOptions(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 11
    .param p0, "options"    # Ljava/lang/String;
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x4

    const/4 v8, 0x0

    .line 199
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 200
    .local v6, "path":Ljava/lang/String;
    sget-object v7, Lcom/google/android/picasastore/FIFEUtil;->SPLIT_ON_SLASH:Lcom/google/android/picasastore/FIFEUtil$Splitter;

    invoke-virtual {v7, v6}, Lcom/google/android/picasastore/FIFEUtil$Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasastore/FIFEUtil;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 201
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 203
    .local v2, "hasImagePrefix":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "image"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 204
    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 205
    const/4 v2, 0x1

    .line 208
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 209
    .local v5, "numParts":I
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 210
    .local v4, "isPathSlashTerminated":Z
    if-nez v4, :cond_4

    const/4 v7, 0x5

    if-ne v5, v7, :cond_4

    move v1, v3

    .line 212
    .local v1, "containsFilenameNoOptions":Z
    :goto_0
    if-ne v5, v10, :cond_5

    .line 215
    .local v3, "isBaseUrlFormat":Z
    :goto_1
    if-eqz v1, :cond_1

    .line 216
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_1
    if-eqz v3, :cond_6

    .line 220
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :goto_2
    if-eqz v2, :cond_2

    .line 227
    const-string v7, "image"

    invoke-interface {v0, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 231
    :cond_2
    if-eqz v4, :cond_3

    .line 232
    const-string v7, ""

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/google/android/picasastore/FIFEUtil;->JOIN_ON_SLASH:Lcom/google/android/picasastore/FIFEUtil$Joiner;

    invoke-virtual {v9, v0}, Lcom/google/android/picasastore/FIFEUtil$Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    return-object v7

    .end local v1    # "containsFilenameNoOptions":Z
    .end local v3    # "isBaseUrlFormat":Z
    :cond_4
    move v1, v8

    .line 210
    goto :goto_0

    .restart local v1    # "containsFilenameNoOptions":Z
    :cond_5
    move v3, v8

    .line 212
    goto :goto_1

    .line 222
    .restart local v3    # "isBaseUrlFormat":Z
    :cond_6
    invoke-interface {v0, v10, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
