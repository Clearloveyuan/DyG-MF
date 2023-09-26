function [Z1]=run_DYNMOGA(fileClasses,fileEdges)
% The following code and comments have been written by Yu-Ru Lin. 
% We added the call to our program run_DYNMOEAmain(W_Cube,nbCluster)
% and the function gen_syn_fileInput(T,fileClasses,fileEdges) in order to
% test DYNMOGA by giving "fileClasses" and "fileEdges" as input
% containing couples (node classLabel) and (node1 node2), respectively, that list for
% each node the cluster label it belongs to, and the list of edges of a
% network. 

%if no input file is given, the function gen_syn2.m, written by Yu-Ru Lin, 
%generates Newman's benchmark as described below 
% 
% Clara Pizzuti November 2016

%fI you want the FacetNet software, please contact Dr. Yu-Ru Lin.


%  run the evolutionary SNMF with Newman's generator
%   The scrip first generates synthetic dataset by Newman's generator (50
%   timesteps). 
%   The results are saved in *.mat.
%   The code for NCut clustering (case 1) and evolutionary spectral
%   clustering (case 3) is not included. Please contact Dr. Yun Chi if you
%   need the code.
%
% See also gen_syn2, computePerformance, run_snmfEvol

% Author: Yu-Ru Lin <yu-ru.lin@asu.edu> and Yun Chi <ychi@sv.nec-labs.com>,
% November 2008
 



marksize = 20;
fontsize = 20;
linewidth = 5;

%zs: average number of edges of a node connecting to other clusters,
%          e.g., 3, 6, 10
%       ncs: number of nodes (divided by 3) that switch
%          membership at each time step, e.g., 1

 %zs = [4 5 6]';
 %ncs = [1 2 3]';
  
%alphas = 0:0.1:1;



zs = [5]';
ncs = [1]';

alpha = 0.8;

for k1 = 1:1:size(zs,1)
    for k2 = 1:1:size(ncs,1)

        CA1 = [];
        CR1 = [];
        CP1 = [];
        CF1 = [];
        CN1 = []; %NMI
        
%         CA2 = [];
%         CR2 = [];
%         CP2 = [];
%         CF2 = [];
%         CN2 = [];
%         
%         CA3 = [];
%         CR3 = [];
%         CP3 = [];
%         CF3 = [];
%         CN3 = [];
%        
%         CA4 = [];
%         CR4 = [];
%         CP4 = [];
%         CF4 = [];
%         CN4 = [];
        

        allCA1 = [];
        allCR1 = [];
        allCP1 = [];
        allCF1 = [];
        allCN1 = [];
       
%         allCA2 = [];
%         allCR2 = [];
%         allCP2 = [];
%         allCF2 = [];
%         allCN2 = [];
%         
%         allCA3 = [];
%         allCR3 = [];
%         allCP3 = [];
%         allCF3 = [];
%         allCN3 = [];
%         
%         allCA4 = [];
%         allCR4 = [];
%         allCP4 = [];
%         allCF4 = [];
%         allCN4 = [];
%        

        cc = 'bgrcmyk';

        %nbTime = 50; % number of timesteps
        nbTime =3; 
        T = nbTime;
        
        %for alpha=alphas
            %total_iteration = 50; % number of runs
            total_iteration = 5; 
            for k = 1:1:total_iteration
                
                if (nargin == 2)
                    %in this case give the file names containing cluster
                    %label for each node and list of edges
                    [blogSize nbCluster fname]= gen_syn_fileInput(T,fileClasses,fileEdges)
                 else
                
                nbCluster = 4;
                
                blogSize = 1000; %number of nodes
                fprintf('\niteration: %d',k);
               
                %set the random seeds
                randn('state',k*1000);
                rand('state',k*1000);

                %generate the raw data
                
                z = zs(k1)
                nbChange = ncs(k2) %nbChange: number of nodes (divided by 3) that switch
                                               %membership at each time step, e.g., 1
                
                state = 10*k;
                avgDegree = 20;
                %avgDegree = 16;
                
                 
               
                    
%facciamo la prova con generazione synthetic
                   [nbCluster fname] = gen_syn2(T,z,nbChange,state,blogSize,avgDegree);
                
                %gen_syn2(T,z,nbChange,state,blogSize,avgDegree);
%                 fname = ['syn_T_' int2str(T) '_z_' int2str(z) ...
%                     '_nC_' int2str(nbChange) '_bS_' int2str(blogSize) ...
%                     '_aD_' int2str(avgDegree) ...
%                     '.mat'];
                
                 end

                eval(['load ' fname]);

                
                %case 1, the DYNMOGA case
                %case 1, the DYNMOGA case
                %set parameters for GAs
                gen=10; %set the number of generations
                popSize=10; % set population size
                CrossoverFraction=0.8; %set crossover fraction
                mutationRate=0.2; %set mutation rate
                
               
               
                Z1 = run_DYNMOEAmain(W_Cube,nbCluster,gen,popSize,CrossoverFraction,mutationRate);
                allZ1{k} = Z1;
                [CA1, CR1, CP1, CF1, CN1] = computePerformance(Z1,GT_Cube);
                allCA1 = [allCA1; CA1'];
                allCR1 = [allCR1; CR1'];
                allCP1 = [allCP1; CP1'];
                allCF1 = [allCF1; CF1'];
                allCN1 = [allCN1; CN1'];
              

                Z0 = zeros(blogSize,nbCluster);
                for j = 1:1:nbCluster
                    Z0(find(Z1(:,1)==j),j) = 1;
                end
                

                %case 2, the SNMF case
%                 fprintf('\nrun SNMF... ');
%                 randn('state',k*1000);
%                 rand('state',k*1000);
%                    % Z2 = run_snmfEvol(W_Cube,6,0);
%                 Z2 = run_snmfEvol(W_Cube,nbCluster,0);
%                 allZ2{k} = Z2;
%                 [CA2, CR2, CP2, CF2,CN2,CM2] = computePerformance(Z2,GT_Cube);
%                 allCA2 = [allCA2; CA2'];
%                 allCR2 = [allCR2; CR2'];
%                 allCP2 = [allCP2; CP2'];
%                 allCF2 = [allCF2; CF2'];
%                 allCN2 = [allCN2; CN2'];
                %allCM2 = [allCM2; CM2'];

                %{
                %case 3, the NC-based PCQ case
                %set the random seeds
                randn('state',k*1000);
                rand('state',k*1000);
                Z3 = nc_pcq(W_Cube,nbCluster,alpha);
                allZ3{k} = Z3;
                [CA3, CR3, CP3, CF3] = computePerformance(Z3,GT_Cube);
                allCA3 = [allCA3; CA3'];
                allCR3 = [allCR3; CR3'];
                allCP3 = [allCP3; CP3'];
                allCF3 = [allCF3; CF3'];
                %}

                %case 4, the FacetNet case
                %set the random seeds
%                 fprintf('\nrun SNMF_EVOL... ');
%                 randn('state',k*1000);
%                 rand('state',k*1000);
%                 lambda = 1 - alpha;
%                     %Z4 = run_snmfEvol(W_Cube,8,lambda);
%                 Z4 = run_snmfEvol(W_Cube,nbCluster,lambda);
%                 allZ4{k} = Z4;
%                 [CA4, CR4, CP4, CF4, CN4,CM4] = computePerformance(Z4,GT_Cube);
%                 allCA4 = [allCA4; CA4'];
%                 allCR4 = [allCR4; CR4'];
%                 allCP4 = [allCP4; CP4'];
%                 allCF4 = [allCF4; CF4'];
%                  allCN4 = [allCN4; CN4'];
                % allCM4 = [allCM4; CM4'];
            end %of the iteration on k

            
            if (nargin == 2)
                    fname = ['result_T_' int2str(T)  ...
                '_bS_' int2str(blogSize) ...
                '.mat'];
                 else
            fname = ['result_T_' int2str(T) '_z_' int2str(z) ...
                '_nC_' int2str(nbChange) '_bS_' int2str(blogSize) ...
                '_aD_' int2str(avgDegree) ...
                '_alpha_' num2str(alpha) ...
                '.mat'];
            end
            
            eval(['save ' fname]);
        
       % end % alpha
        %
         figure(1)
         clf
         hold on
         tt = mean(allCA1,1);
         plot(tt,'b--*');
         %tt = mean(allCA2,1);
         %plot(tt,'r-*');
        % tt = mean(allCA3,1);
        % plot(tt,'g-*');
         %tt = mean(allCA4,1);
         %plot(tt,'k-o');
        % legend('DYNMOGA','EvolSpec','FacetNet');
         %legend('DYNMOGA','FacetNet'); %use this legend if you run also
         %FacetNet
         legend('DYNMOGA');
         xlabel('Time Steps','fontsize',fontsize);
         ylabel('Error','fontsize',fontsize);
         title('Error over Time','fontsize',fontsize);
        
         set(gca,'fontsize',marksize)
         linehandler=get(gca,'Children');
         set(linehandler, 'MarkerSize', marksize, 'LineWidth', linewidth);
        
         
         figure(2)
         clf
         hold on
         tt = mean(allCN1,1);
         plot(tt,'b--*');
         L=tt;
         %tt = mean(allCN2,1);
         %plot(tt,'r-*');
        % tt = mean(allCR3,1);
        % plot(tt,'g-*');
         %tt = mean(allCN4,1);
         %plot(tt,'k-o');
         %legend('DYNMOGA','FacetNet');
         legend('DYNMOGA');
         xlabel('Time Steps','fontsize',fontsize);
         ylabel('Normalized Mutual Information','fontsize',fontsize);
         title(' Normalized Mutual Information over Time','fontsize',fontsize);
        %
         set(gca,'fontsize',marksize)
         linehandler=get(gca,'Children');
     %   set(linehandler, 'MarkerSize', marksize, 'LineWidth', linewidth);
        
    end
end
end
