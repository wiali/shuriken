/*
  This file is part of Shuriken Beat Slicer.

  Copyright (C) 2014, 2015 Andrew M Taylor <a.m.taylor303@gmail.com>

  This program is free software; you can redistribute it and/or
  modify it under the terms of the GNU General Public License
  as published by the Free Software Foundation; either version 2
  of the License, or (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program. If not, see <https://www.gnu.org/licenses/>
  or write to the Free Software Foundation, Inc., 51 Franklin Street,
  Fifth Floor, Boston, MA  02110-1301, USA.

*/

#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QList>
#include <QUndoStack>
#include <QActionGroup>
#include "JuceHeader.h"
#include "samplebuffer.h"
#include "optionsdialog.h"
#include "audiofilehandler.h"
#include "sampleraudiosource.h"
#include "rubberbandaudiosource.h"
#include "wavegraphicsscene.h"
#include "slicepointitem.h"
#include "audioanalyser.h"
#include "waveformitem.h"
#include "helpform.h"
#include "exportdialog.h"
#include "nsmlistenerthread.h"
#include "jackoutputsdialog.h"


namespace Ui
{
    class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

    friend class EnableSelectiveTSCommand;
    friend class DisableSelectiveTSCommand;
    friend class PasteWaveformItemCommand;
    friend class DeleteWaveformItemCommand;
    friend class MoveWaveformItemCommand;
    friend class SliceCommand;
    friend class UnsliceCommand;
    friend class GlobalTimeStretchCommand;
    friend class RenderTimeStretchCommand;
    friend class SelectiveTimeStretchCommand;

public:
    MainWindow( QWidget* parent = NULL );
    ~MainWindow();

protected:
    void changeEvent( QEvent* event );
    void closeEvent( QCloseEvent* event );
    void keyPressEvent( QKeyEvent* event );
    void wheelEvent( QWheelEvent* event );

private:
    void initialiseAudio();
    void setUpSampler();
    void tearDownSampler();

    void setupUI();
    void enableUI();
    void disableUI();

    void connectWaveformToMainWindow( SharedWaveformItem item );

    void getDetectionSettings( AudioAnalyser::DetectionSettings& settings );

    void closeProject();

    void saveProject( QString filePath, bool isNsmSessionExport = false );
    void openProject( QString filePath );
    void importAudioFile( QString filePath );
    void exportAs( QString tempDirPath,
                   QString outputDirPath,
                   QString samplesDirPath,
                   QString fileName,
                   int exportType,
                   int sndFileFormat,
                   int outputSampleRate,
                   int numSamplesToExport );

    void saveProjectDialog();
    void openProjectDialog();
    void importAudioFileDialog();
    void exportAsDialog();

    void addPathToRecentProjects( QString filePath );

    bool isSelectiveTimeStretchInUse() const;
    QUndoCommand* createRenderCommand( QUndoCommand* parent = NULL );

    // Pass sample buffers to the sampler audio source, preserving current envelope settings
    void resetSamples();

    void copySelectedSamplesToClipboard();


    Ui::MainWindow* m_ui; // "Go to slot..." in Qt Designer won't work if this is changed to ScopedPointer<Ui::MainWindow>

    QActionGroup* m_interactionGroup;
    QList<QAction*> m_recentProjectsActions;

    enum LengthUnits { UNITS_BARS, UNITS_BEATS };

    WaveGraphicsScene* m_graphicsScene;

    OptionsDialog* m_optionsDialog;
    ScopedPointer<HelpForm> m_helpForm;
    ExportDialog* m_exportDialog;

    AudioDeviceManager m_deviceManager;
    AudioFileHandler m_fileHandler;

    SharedSampleHeader m_sampleHeader;
    QList<SharedSampleBuffer> m_sampleBufferList;

    ScopedPointer<SamplerAudioSource> m_samplerAudioSource;
    ScopedPointer<RubberbandAudioSource> m_rubberbandAudioSource;
    AudioSourcePlayer m_audioSourcePlayer;

    QString m_lastOpenedImportDir;
    QString m_lastOpenedProjDir;
    QString m_currentProjectFilePath;

    QUndoStack m_undoStack;

    qreal m_appliedBPM;

    bool m_isProjectOpen;

    ScopedPointer<NsmListenerThread> m_nsmThread;

    // Internal "clipboard"
    QList<SharedSampleBuffer> m_copiedSampleBuffers;
    SamplerAudioSource::EnvelopeSettings m_copiedEnvelopes;
    QList<qreal> m_copiedNoteTimeRatios;

private:
    // Make sure window isn't larger than desktop
    static void setMaxWindowSize( QWidget* window );

    // Centre window in desktop
    static void centreWindow( QWidget* window );

private slots:
    // Automatically connected...
    void on_actionPaste_triggered();
    void on_actionCopy_triggered();
    void on_actionJack_Outputs_triggered();
    void on_checkBox_OneShot_toggled( bool isChecked );
    void on_dial_Release_valueChanged( int value );
    void on_doubleSpinBox_Release_valueChanged( double value );
    void on_dial_Attack_valueChanged( int value );
    void on_doubleSpinBox_Attack_valueChanged( double value );
    void on_toolButton_RightArrow_clicked();
    void on_toolButton_LeftArrow_clicked();
    void on_comboBox_SnapValues_activated( int index );
    void on_comboBox_TimeSigNumerator_activated( QString text );
    void on_pushButton_TimestretchOptions_clicked();
    void on_actionSelective_Time_Stretch_triggered( bool isChecked );
    void on_actionAudition_triggered();
    void on_actionMulti_Select_triggered();
    void on_actionSelect_Move_triggered();
    void on_pushButton_Apply_clicked();
    void on_actionZoom_Original_triggered();
    void on_actionZoom_Out_triggered();
    void on_actionZoom_In_triggered();
    void on_pushButton_Loop_clicked( bool isChecked );
    void on_pushButton_PlayStop_clicked();
    void on_checkBox_PitchCorrection_toggled( bool isChecked );
    void on_checkBox_TimeStretch_toggled( bool isChecked );
    void on_doubleSpinBox_NewBPM_valueChanged( double newBPM );
    void on_doubleSpinBox_OriginalBPM_valueChanged( double originalBPM );
    void on_pushButton_CalcBPM_clicked();
    void on_pushButton_Find_clicked();
    void on_horizontalSlider_Threshold_valueChanged( int value );
    void on_pushButton_Slice_clicked( bool isChecked );
    void on_actionNormalise_triggered();
    void on_actionApply_Gain_Ramp_triggered();
    void on_actionApply_Gain_triggered();
    void on_actionSelect_None_triggered();
    void on_actionSelect_All_triggered();
    void on_actionAbout_triggered();
    void on_actionHelp_triggered();
    void on_actionOptions_triggered();
    void on_actionReverse_triggered();
    void on_actionDelete_triggered();
    void on_actionAdd_Slice_Point_triggered();
    void on_actionQuit_triggered();
    void on_actionExport_As_triggered();
    void on_actionImport_Audio_File_triggered();
    void on_actionClose_Project_triggered();
    void on_actionSave_As_triggered();
    void on_actionSave_Project_triggered();
    void on_actionOpen_Project_triggered();

    // Programmatically connected...
    void recordWaveformItemMove( QList<int> oldOrderPositions, int numPlacesMoved );

    void recordSlicePointItemMove( SharedSlicePointItem slicePoint,
                                   int orderPos,
                                   int numFramesFromPrevSlicePoint,
                                   int numFramesToNextSlicePoint,
                                   int oldFrameNum );

    void playSample( const WaveformItem* waveformItem, QPointF mouseScenePos );

    void stopPlayback();

    void resetPlayStopButtonIcon();

    void disableZoomIn();
    void disableZoomOut();

    void enableRealtimeControls( bool isEnabled );

    // Tear down and set up sampler, preserving current envelope settings if possible
    void recreateSampler();

    void enableEditActions();
    void enableSaveAction();

    void updateUndoText( QString text );
    void updateRedoText( QString text );

    void notifyNsmOfUnsavedChanges( bool isClean );

    void enableJackOutputsAction( bool isJackAudioEnabled );

    void openRecentProject();

private:
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR( MainWindow );
};

#endif // MAINWINDOW_H
