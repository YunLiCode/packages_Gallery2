.class public Lcom/android/gallery3d/app/VideoUtils;
.super Ljava/lang/Object;
.source "VideoUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctTimeToSyncSample(Lcom/googlecode/mp4parser/authoring/Track;DZ)D
    .locals 21
    .param p0, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p1, "cutHere"    # D
    .param p3, "next"    # Z

    .prologue
    .line 297
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [D

    move-object/from16 v16, v0

    .line 298
    .local v16, "timeOfSyncSamples":[D
    const-wide/16 v3, 0x0

    .line 299
    .local v3, "currentSample":J
    const-wide/16 v5, 0x0

    .line 300
    .local v5, "currentTime":D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    .line 301
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 302
    .local v7, "entry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    int-to-long v0, v10

    move-wide/from16 v17, v0

    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-gez v17, :cond_1

    .line 303
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v17

    const-wide/16 v18, 0x1

    add-long v18, v18, v3

    invoke-static/range {v17 .. v19}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v17

    if-ltz v17, :cond_0

    .line 306
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v17

    const-wide/16 v18, 0x1

    add-long v18, v18, v3

    invoke-static/range {v17 .. v19}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v17

    aput-wide v5, v16, v17

    .line 309
    :cond_0
    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    add-double v5, v5, v17

    .line 311
    const-wide/16 v17, 0x1

    add-long v3, v3, v17

    .line 302
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 300
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 314
    .end local v7    # "entry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    .end local v10    # "j":I
    :cond_2
    const-wide/16 v12, 0x0

    .line 315
    .local v12, "previous":D
    move-object/from16 v2, v16

    .local v2, "arr$":[D
    array-length v11, v2

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-ge v9, v11, :cond_5

    aget-wide v14, v2, v9

    .line 316
    .local v14, "timeOfSyncSample":D
    cmpl-double v17, v14, p1

    if-lez v17, :cond_4

    .line 317
    if-eqz p3, :cond_3

    .line 325
    .end local v14    # "timeOfSyncSample":D
    :goto_3
    return-wide v14

    .restart local v14    # "timeOfSyncSample":D
    :cond_3
    move-wide v14, v12

    .line 320
    goto :goto_3

    .line 323
    :cond_4
    move-wide v12, v14

    .line 315
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 325
    .end local v14    # "timeOfSyncSample":D
    :cond_5
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget-wide v14, v16, v17

    goto :goto_3
.end method

.method private static genVideoUsingMuxer(Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 25
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;
    .param p2, "startMs"    # I
    .param p3, "endMs"    # I
    .param p4, "useAudio"    # Z
    .param p5, "useVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v9, Landroid/media/MediaExtractor;

    invoke-direct {v9}, Landroid/media/MediaExtractor;-><init>()V

    .line 132
    .local v9, "extractor":Landroid/media/MediaExtractor;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v19

    .line 138
    .local v19, "trackCount":I
    new-instance v14, Landroid/media/MediaMuxer;

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-direct {v14, v0, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 142
    .local v14, "muxer":Landroid/media/MediaMuxer;
    new-instance v12, Ljava/util/HashMap;

    move/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 144
    .local v12, "indexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v4, -0x1

    .line 145
    .local v4, "bufferSize":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v11, v0, :cond_3

    .line 146
    invoke-virtual {v9, v11}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v10

    .line 147
    .local v10, "format":Landroid/media/MediaFormat;
    const-string v21, "mime"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 149
    .local v13, "mime":Ljava/lang/String;
    const/16 v18, 0x0

    .line 151
    .local v18, "selectCurrentTrack":Z
    const-string v21, "audio/"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    if-eqz p4, :cond_2

    .line 152
    const/16 v18, 0x1

    .line 157
    :cond_0
    :goto_1
    if-eqz v18, :cond_1

    .line 158
    invoke-virtual {v9, v11}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 159
    invoke-virtual {v14, v10}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v8

    .line 160
    .local v8, "dstIndex":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v21, "max-input-size"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 162
    const-string v21, "max-input-size"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v15

    .line 163
    .local v15, "newSize":I
    if-le v15, v4, :cond_1

    move v4, v15

    .line 145
    .end local v8    # "dstIndex":I
    .end local v15    # "newSize":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 153
    :cond_2
    const-string v21, "video/"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    if-eqz p5, :cond_0

    .line 154
    const/16 v18, 0x1

    goto :goto_1

    .line 168
    .end local v10    # "format":Landroid/media/MediaFormat;
    .end local v13    # "mime":Ljava/lang/String;
    .end local v18    # "selectCurrentTrack":Z
    :cond_3
    if-gez v4, :cond_4

    .line 169
    const/high16 v4, 0x100000

    .line 173
    :cond_4
    new-instance v17, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v17 .. v17}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 174
    .local v17, "retrieverSrc":Landroid/media/MediaMetadataRetriever;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 175
    const/16 v21, 0x18

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, "degreesString":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 178
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 179
    .local v5, "degrees":I
    if-ltz v5, :cond_5

    .line 180
    invoke-virtual {v14, v5}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 184
    .end local v5    # "degrees":I
    :cond_5
    if-lez p2, :cond_6

    .line 185
    move/from16 v0, p2

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const/16 v23, 0x2

    move-wide/from16 v0, v21

    move/from16 v2, v23

    invoke-virtual {v9, v0, v1, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 191
    :cond_6
    const/16 v16, 0x0

    .line 192
    .local v16, "offset":I
    const/16 v20, -0x1

    .line 193
    .local v20, "trackIndex":I
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 194
    .local v7, "dstBuf":Ljava/nio/ByteBuffer;
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 196
    .local v3, "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    invoke-virtual {v14}, Landroid/media/MediaMuxer;->start()V

    .line 198
    :goto_2
    move/from16 v0, v16

    iput v0, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 199
    move/from16 v0, v16

    invoke-virtual {v9, v7, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 200
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v21, v0

    if-gez v21, :cond_7

    .line 201
    const-string v21, "VideoUtils"

    const-string v22, "Saw input EOS."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 220
    :goto_3
    invoke-virtual {v14}, Landroid/media/MediaMuxer;->stop()V

    .line 221
    invoke-virtual {v14}, Landroid/media/MediaMuxer;->release()V

    .line 222
    return-void

    .line 205
    :cond_7
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v21

    move-wide/from16 v0, v21

    iput-wide v0, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 206
    if-lez p3, :cond_8

    iget-wide v0, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v21, v0

    move/from16 v0, p3

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    cmp-long v21, v21, v23

    if-lez v21, :cond_8

    .line 207
    const-string v21, "VideoUtils"

    const-string v22, "The current sample is over the trim end time."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 210
    :cond_8
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 211
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v20

    .line 213
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v14, v0, v7, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 215
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_2
.end method

.method public static startMute(Ljava/lang/String;Lcom/android/gallery3d/util/SaveVideoFileInfo;)V
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "dstFileInfo"    # Lcom/android/gallery3d/util/SaveVideoFileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 60
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_MUXER:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p1, Lcom/android/gallery3d/util/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/app/VideoUtils;->genVideoUsingMuxer(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {p0, p1}, Lcom/android/gallery3d/app/VideoUtils;->startMuteUsingMp4Parser(Ljava/lang/String;Lcom/android/gallery3d/util/SaveVideoFileInfo;)V

    goto :goto_0
.end method

.method private static startMuteUsingMp4Parser(Ljava/lang/String;Lcom/android/gallery3d/util/SaveVideoFileInfo;)V
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "dstFileInfo"    # Lcom/android/gallery3d/util/SaveVideoFileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p1, Lcom/android/gallery3d/util/SaveVideoFileInfo;->mFile:Ljava/io/File;

    .line 84
    .local v0, "dst":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v4, "src":Ljava/io/File;
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v3, v4, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    .local v3, "randomAccessFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-static {v7}, Lcom/googlecode/mp4parser/authoring/container/mp4/MovieCreator;->build(Ljava/nio/channels/ReadableByteChannel;)Lcom/googlecode/mp4parser/authoring/Movie;

    move-result-object v2

    .line 89
    .local v2, "movie":Lcom/googlecode/mp4parser/authoring/Movie;
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v6

    .line 90
    .local v6, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Track;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v2, v7}, Lcom/googlecode/mp4parser/authoring/Movie;->setTracks(Ljava/util/List;)V

    .line 92
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/mp4parser/authoring/Track;

    .line 93
    .local v5, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v7

    const-string v8, "vide"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 94
    invoke-virtual {v2, v5}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    goto :goto_0

    .line 97
    .end local v5    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    :cond_1
    invoke-static {v0, v2}, Lcom/android/gallery3d/app/VideoUtils;->writeMovieIntoFile(Ljava/io/File;Lcom/googlecode/mp4parser/authoring/Movie;)V

    .line 98
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 99
    return-void
.end method

.method public static startTrim(Ljava/io/File;Ljava/io/File;II)V
    .locals 6
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;
    .param p2, "startMs"    # I
    .param p3, "endMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 73
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_MUXER:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/app/VideoUtils;->genVideoUsingMuxer(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/gallery3d/app/VideoUtils;->trimUsingMp4Parser(Ljava/io/File;Ljava/io/File;II)V

    goto :goto_0
.end method

.method private static trimUsingMp4Parser(Ljava/io/File;Ljava/io/File;II)V
    .locals 28
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;
    .param p2, "startMs"    # I
    .param p3, "endMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v19, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    .local v19, "randomAccessFile":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-static {v2}, Lcom/googlecode/mp4parser/authoring/container/mp4/MovieCreator;->build(Ljava/nio/channels/ReadableByteChannel;)Lcom/googlecode/mp4parser/authoring/Movie;

    move-result-object v18

    .line 231
    .local v18, "movie":Lcom/googlecode/mp4parser/authoring/Movie;
    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v23

    .line 232
    .local v23, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Track;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/authoring/Movie;->setTracks(Ljava/util/List;)V

    .line 234
    move/from16 v0, p2

    div-int/lit16 v2, v0, 0x3e8

    int-to-double v0, v2

    move-wide/from16 v20, v0

    .line 235
    .local v20, "startTime":D
    move/from16 v0, p3

    div-int/lit16 v2, v0, 0x3e8

    int-to-double v12, v2

    .line 237
    .local v12, "endTime":D
    const/16 v22, 0x0

    .line 242
    .local v22, "timeCorrected":Z
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/authoring/Track;

    .line 243
    .local v3, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 244
    if-eqz v22, :cond_1

    .line 250
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v24, "The startTime has already been corrected by another track with SyncSample. Not Supported."

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_1
    const/4 v2, 0x0

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1, v2}, Lcom/android/gallery3d/app/VideoUtils;->correctTimeToSyncSample(Lcom/googlecode/mp4parser/authoring/Track;DZ)D

    move-result-wide v20

    .line 255
    const/4 v2, 0x1

    invoke-static {v3, v12, v13, v2}, Lcom/android/gallery3d/app/VideoUtils;->correctTimeToSyncSample(Lcom/googlecode/mp4parser/authoring/Track;DZ)D

    move-result-wide v12

    .line 256
    const/16 v22, 0x1

    goto :goto_0

    .line 260
    .end local v3    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    :cond_2
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/authoring/Track;

    .line 261
    .restart local v3    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    const-wide/16 v8, 0x0

    .line 262
    .local v8, "currentSample":J
    const-wide/16 v10, 0x0

    .line 263
    .local v10, "currentTime":D
    const-wide/16 v4, -0x1

    .line 264
    .local v4, "startSample":J
    const-wide/16 v6, -0x1

    .line 266
    .local v6, "endSample":J
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_5

    .line 267
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 268
    .local v14, "entry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_3
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual {v14}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v26

    cmp-long v2, v24, v26

    if-gez v2, :cond_4

    .line 272
    cmpg-double v2, v10, v20

    if-gtz v2, :cond_3

    .line 274
    move-wide v4, v8

    .line 276
    :cond_3
    cmpg-double v2, v10, v12

    if-gtz v2, :cond_4

    .line 279
    move-wide v6, v8

    .line 284
    invoke-virtual {v14}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    add-double v10, v10, v24

    .line 286
    const-wide/16 v24, 0x1

    add-long v8, v8, v24

    .line 268
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 266
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 289
    .end local v14    # "entry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    .end local v17    # "j":I
    :cond_5
    new-instance v2, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;

    invoke-direct/range {v2 .. v7}, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;-><init>(Lcom/googlecode/mp4parser/authoring/Track;JJ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    goto :goto_1

    .line 291
    .end local v3    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    .end local v4    # "startSample":J
    .end local v6    # "endSample":J
    .end local v8    # "currentSample":J
    .end local v10    # "currentTime":D
    .end local v15    # "i":I
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/VideoUtils;->writeMovieIntoFile(Ljava/io/File;Lcom/googlecode/mp4parser/authoring/Movie;)V

    .line 292
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V

    .line 293
    return-void
.end method

.method private static writeMovieIntoFile(Ljava/io/File;Lcom/googlecode/mp4parser/authoring/Movie;)V
    .locals 4
    .param p0, "dst"    # Ljava/io/File;
    .param p1, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 107
    :cond_0
    new-instance v3, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v3}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    invoke-virtual {v3, p1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/IsoFile;

    move-result-object v2

    .line 108
    .local v2, "out":Lcom/coremedia/iso/IsoFile;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 109
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 110
    .local v0, "fc":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2, v0}, Lcom/coremedia/iso/IsoFile;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 112
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 113
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 114
    return-void
.end method
