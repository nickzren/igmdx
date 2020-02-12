package org.igmdx.service;

import model.Gene;

/**
 *
 * @author nick
 */
public interface OutputService {

    public Gene[] getGene(String gene);
    
    public Gene[] getAllGenes();
}
