% EEGLAB history file generated on the 14-May-2024
% ------------------------------------------------

for i = 1:12
    [ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
    filePath = sprintf('C:\\Users\\giuli\\Downloads\\bci_dataset\\%d\\%d\\Fatigue state.cnt', i, i);
    EEG = pop_loadcnt(filePath, 'dataformat', 'auto', 't1', 0, 'lddur', 300, 'memmapfile', '');
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 0,'setname','fatigue_sub1','gui','off'); 
    EEG=pop_chanedit(EEG, {'lookup','C:\\Users\\giuli\\Downloads\\eeglab_current\\eeglab2024.0\\plugins\\dipfit\\standard_BEM\\elec\\standard_1005.elc'});
    [ALLEEG, EEG, CURRENTSET] = eeg_store(ALLEEG, EEG, CURRENTSET);
    EEG = pop_resample( EEG, 500);
    EEG = pop_eegfiltnew(EEG, 'hicutoff',50,'plotfreqz',1);
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'setname','fatigue_sub1_lowpass1','gui','off'); 
    EEG = pop_eegfiltnew(EEG, 'locutoff',0.15,'plotfreqz',1);
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 2,'setname','fatigue_sub1_highpass1','gui','off'); 
    EEG = pop_eegfiltnew(EEG, 'hicutoff',40,'plotfreqz',1);
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 3,'setname','fatigue_sub1_lowpass2','gui','off'); 
    pop_eegplot( EEG, 1, 1, 1);
    EEG = pop_clean_rawdata(EEG, 'FlatlineCriterion',5,'ChannelCriterion',0.8,'LineNoiseCriterion',4,'Highpass','off','BurstCriterion',20,'WindowCriterion',0.25,'BurstRejection','on','Distance','Euclidian','WindowCriterionTolerances',[-Inf 7] );
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 4,'setname','fatigue_sub1_cleaned','gui','off'); 
    EEG = pop_interp(EEG, ALLEEG(4).chanlocs, 'spherical');
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 5,'setname','fatigue_sub1_interp','gui','off'); 
    pop_eegplot( EEG, 1, 1, 1);
    EEG = pop_reref( EEG, []);
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 6,'setname','fatigue_sub1_ref','gui','off'); 
    EEG = pop_runica(EEG, 'icatype', 'runica', 'extended',1,'rndreset','yes','interrupt','on','pca',32);
    [ALLEEG, EEG, CURRENTSET] = eeg_store(ALLEEG, EEG, CURRENTSET);
    pop_selectcomps(EEG, [1:32] );
    pop_prop( EEG, 0, 1, NaN, {'freqrange',[2 50] });
    figure; pop_spectopo(EEG, 0, [0  299999], 'EEG' , 'freq', [10], 'plotchan', 0, 'percent', 20, 'icacomps', [1:32], 'nicamaps', 5, 'freqrange',[2 25],'electrodes','off');
    pop_prop( EEG, 0, 1, NaN, {'freqrange',[2 50] });
    pop_eegplot( EEG, 0, 1, 1);
    EEG = pop_iclabel(EEG, 'default');
    [ALLEEG, EEG, CURRENTSET] = eeg_store(ALLEEG, EEG, CURRENTSET);
    EEG = pop_icflag(EEG, [NaN NaN;0.9 1;0.9 1;NaN NaN;NaN NaN;NaN NaN;NaN NaN]);
    [ALLEEG, EEG, CURRENTSET] = eeg_store(ALLEEG, EEG, CURRENTSET);
    EEG = pop_subcomp( EEG, [], 0);
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 7,'gui','off'); 
    samples = EEG.data;
    filename = sprintf('C:\\Users\\giuli\\Downloads\\bci_dataset\\%d\\%d\\Fatigue_state_Preprocessed.mat', i, i);
    save(filename, 'samples');
    eeglab redraw;
    [ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
    filePath = sprintf('C:\\Users\\giuli\\Downloads\\bci_dataset\\%d\\%d\\Normal state.cnt', i, i);
    EEG = pop_loadcnt(filePath, 'dataformat', 'auto', 't1', 0, 'lddur', 300, 'memmapfile', '');
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 0,'setname','fatigue_sub1','gui','off'); 
    EEG=pop_chanedit(EEG, {'lookup','C:\\Users\\giuli\\Downloads\\eeglab_current\\eeglab2024.0\\plugins\\dipfit\\standard_BEM\\elec\\standard_1005.elc'});
    [ALLEEG, EEG, CURRENTSET] = eeg_store(ALLEEG, EEG, CURRENTSET);
    EEG = pop_resample( EEG, 500);
    EEG = pop_eegfiltnew(EEG, 'hicutoff',50,'plotfreqz',1);
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'setname','fatigue_sub1_lowpass1','gui','off'); 
    EEG = pop_eegfiltnew(EEG, 'locutoff',0.15,'plotfreqz',1);
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 2,'setname','fatigue_sub1_highpass1','gui','off'); 
    EEG = pop_eegfiltnew(EEG, 'hicutoff',40,'plotfreqz',1);
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 3,'setname','fatigue_sub1_lowpass2','gui','off'); 
    pop_eegplot( EEG, 1, 1, 1);
    EEG = pop_clean_rawdata(EEG, 'FlatlineCriterion',5,'ChannelCriterion',0.8,'LineNoiseCriterion',4,'Highpass','off','BurstCriterion',20,'WindowCriterion',0.25,'BurstRejection','on','Distance','Euclidian','WindowCriterionTolerances',[-Inf 7] );
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 4,'setname','fatigue_sub1_cleaned','gui','off'); 
    EEG = pop_interp(EEG, ALLEEG(4).chanlocs, 'spherical');
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 5,'setname','fatigue_sub1_interp','gui','off'); 
    pop_eegplot( EEG, 1, 1, 1);
    EEG = pop_reref( EEG, []);
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 6,'setname','fatigue_sub1_ref','gui','off'); 
    EEG = pop_runica(EEG, 'icatype', 'runica', 'extended',1,'rndreset','yes','interrupt','on','pca',32);
    [ALLEEG, EEG, CURRENTSET] = eeg_store(ALLEEG, EEG, CURRENTSET);
    pop_selectcomps(EEG, [1:32] );
    pop_prop( EEG, 0, 1, NaN, {'freqrange',[2 50] });
    figure; pop_spectopo(EEG, 0, [0  299999], 'EEG' , 'freq', [10], 'plotchan', 0, 'percent', 20, 'icacomps', [1:32], 'nicamaps', 5, 'freqrange',[2 25],'electrodes','off');
    pop_prop( EEG, 0, 1, NaN, {'freqrange',[2 50] });
    pop_eegplot( EEG, 0, 1, 1);
    EEG = pop_iclabel(EEG, 'default');
    [ALLEEG, EEG, CURRENTSET] = eeg_store(ALLEEG, EEG, CURRENTSET);
    EEG = pop_icflag(EEG, [NaN NaN;0.9 1;0.9 1;NaN NaN;NaN NaN;NaN NaN;NaN NaN]);
    [ALLEEG, EEG, CURRENTSET] = eeg_store(ALLEEG, EEG, CURRENTSET);
    EEG = pop_subcomp( EEG, [], 0);
    [ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 7,'gui','off'); 
    samples = EEG.data;
    filename = sprintf('C:\\Users\\giuli\\Downloads\\bci_dataset\\%d\\%d\\Normal_state_Preprocessed.mat', i, i);
    save(filename, 'samples');
    eeglab redraw;
end