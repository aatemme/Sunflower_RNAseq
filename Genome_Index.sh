#PBS -S /bin/bash
#PBS -q batch
#PBS -N GenomeIndex
#PBS -l nodes=1:ppn=4
#PBS -l walltime=480:00:00
#PBS -l mem=50gb

#PBS -M dittmare@gmail.com
#PBS -m abe

cd /scratch/eld72413/Salty_Nut

module load STAR/2.6.1c-foss-2016b

/usr/local/apps/eb/STAR/2.6.1c-foss-2016b/bin/STAR --runThreadN 4 --runMode genomeGenerate --genomeDir /scratch/eld72413/XRQ_GenomeDir/GenomeDirNew --genomeFastaFiles /scratch/eld72413/XRQ_GenomeDir/XRQ_June2018.fa --sjdbGTFtagExonParentTranscript Parent --sjdbGTFfile /scratch/eld72413/XRQ_GenomeDir/FixedXRQ_June2018.gff3 --sjdbOverhang 74
